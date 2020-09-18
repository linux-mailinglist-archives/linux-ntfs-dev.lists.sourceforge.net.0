Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB51C26F604
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Sep 2020 08:41:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kJA5M-0001Da-CB; Fri, 18 Sep 2020 06:41:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1kJ55C-0001Oa-MY
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 01:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pf8sGJi3GTL/XA1LmGKqZqDEtcNgbydr7OLlpO9nbMU=; b=jNUk8TCDfAbK7h1GG2oHl16Glb
 lAfgPzkz6rd5gQUypGTWe/t1DjGUxrdDiCNPD3dC6ym7fI00SN5xfN+ZqdTjmQuftHIHTN7djTK/U
 RD0CY4yd7g9mCWCXYtb69mXLPk53gH1ZKDrfkv2osAHENXbEBgAyk1nKS8DP24iXY//4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pf8sGJi3GTL/XA1LmGKqZqDEtcNgbydr7OLlpO9nbMU=; b=U
 AUppvACCzScJherGtbIVaTyI417ZudN7Iusyig9hH7Oyh6kIqK3eKKhs4mNs2cROQnoRLS3Uj+O+r
 OGtlYNbFStdHkVSqp+ZvsZhaJz05Dro3uQhepxT6W1zj45ffjzjhAMPDEoPEN3FwmoelhAI3TLQW7
 Y2+w8TpCe9rqUvNA=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ554-00EwRI-Oz
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 01:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=pf8sGJi3GTL/XA1LmGKqZqDEtcNgbydr7OLlpO9nbMU=; b=ck9FapdJeNSbBflKZdwpcNqs8I
 LhBNuGV7eKX00VofYUdBoBjXgwhMRT2XDZ2lvGXZAxLs8wHNgXQWajNPtXCq7uqXLQMubMwvwHcop
 NpoewbCCSDGObM6C99M9nUOSBKDgVJiwVXFgiyVXzfJOvleDurUCiSkeoGTLR9u7RsD1z/wdTo8aW
 W+RkdCkYQBGJV1cgtfSOJjep4Rt0LpZBY8cOvQk19LotK6EFcYJfeA1GJ7AldCQa+Gjwn3KXf2Ish
 Nbx79Rzz0oGgtDI+r7Mu9XmpS/2BhVMrkSTv7nh3TOjaYH9H/+BI0LTnzO/jCGqDd+KBP3eiQzTaM
 sjzwxy0w==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJ54p-0007th-0c; Fri, 18 Sep 2020 01:20:39 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Thu, 17 Sep 2020 18:20:34 -0700
Message-Id: <20200918012034.6305-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kJ554-00EwRI-Oz
X-Mailman-Approved-At: Fri, 18 Sep 2020 06:41:32 +0000
Subject: [Linux-NTFS-Dev] [PATCH RESEND] ntfs: drop unneeded semi-colons
X-BeenThere: linux-ntfs-dev@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "Discussion related to Linux NTFS development."
 <linux-ntfs-dev.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux-ntfs-dev>, 
 <mailto:linux-ntfs-dev-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux-ntfs-dev>
List-Post: <mailto:linux-ntfs-dev@lists.sourceforge.net>
List-Help: <mailto:linux-ntfs-dev-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev>, 
 <mailto:linux-ntfs-dev-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Coccinelle scripts report:

fs/ntfs/lcnalloc.c:902:2-3: Unneeded semicolon
fs/ntfs/super.c:1615:2-3: Unneeded semicolon
fs/ntfs/super.c:1684:2-3: Unneeded semicolon

so remove the extraneous semicolons.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: Andrew Morton <akpm@linux-foundation.org>
---
Adding Andrew to recipients, otherwise this patch is lost/ignored.

 fs/ntfs/lcnalloc.c |    2 +-
 fs/ntfs/super.c    |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

--- linux-next-20200917.orig/fs/ntfs/lcnalloc.c
+++ linux-next-20200917/fs/ntfs/lcnalloc.c
@@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *ni,
 		}
 		/* We have freed @to_free real clusters. */
 		real_freed = to_free;
-	};
+	}
 	/* Go to the next run and adjust the number of clusters left to free. */
 	++rl;
 	if (count >= 0)
--- linux-next-20200917.orig/fs/ntfs/super.c
+++ linux-next-20200917/fs/ntfs/super.c
@@ -1612,7 +1612,7 @@ read_partial_attrdef_page:
 		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
@@ -1681,7 +1681,7 @@ read_partial_upcase_page:
 		memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
