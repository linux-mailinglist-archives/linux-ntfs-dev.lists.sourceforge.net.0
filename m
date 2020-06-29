Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E67F20DD2B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 29 Jun 2020 23:41:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jq1Wi-0007ql-Aw; Mon, 29 Jun 2020 21:41:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1jpxeI-0006Fc-Ot
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 29 Jun 2020 17:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oxs4z7Z79Co1vJxi157TWwSOkUasU+//trUBVUDxZkM=; b=hbazMKg83I1ywet85flc5gDNBF
 qT83aS/wKHHzDBQE6zX9B7JiqjgLBFEBUM2aCBPSzKkWCSxb+TL4SJa3s10V5/En0LxqfHFknIRKD
 i30k7Zc0gmtj1WrBOcRgLdMraz8TF2RCDhsjUNgQNgl7OADA0bhkBpcLcDjBp/Izh/XU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oxs4z7Z79Co1vJxi157TWwSOkUasU+//trUBVUDxZkM=; b=f
 WdjlLVTAgTgNefHM5c4gMRSfs8YhjkB2krnBRLqY1fcgZf1OTvW2vMSzBviz+MN/uRqRj62vgdxo1
 cKOwyQwZ5200m+EVzm8pHiKrG0OdXu9GXyhvATgbkfBQZ/UOQyFIxuahHBWc8BCvdFAWYdDWt1/gv
 gNnAM6cEfFZ81K2k=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jpxeC-006MFn-OW
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 29 Jun 2020 17:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=oxs4z7Z79Co1vJxi157TWwSOkUasU+//trUBVUDxZkM=; b=HKltuita8+l7k0bQRtgFFH+toD
 D7fXyqyUnOnObLeoLbQbA2O39DGmNDHVM9B9dzVc9vKllt9x/rNmDLOp0jTztpKk63B4hIwhzu8/y
 qJArKaHYD64incweeiOJuwLHzsJfZ0ZGDbPDOlba3cb5eoXBgiTQzC741M3JbRU6AWZ8oHHh0USx+
 /1ToDMNn9ysYxl8XPW3uolbHBJ9dBv4skaZIH6ziXkU4XTkTuYXjHR4Xtm20DIMrYxFDcM2u6+FIa
 9NEpO94W5S2d2cTTaKW/bu/Yvf3LKK/9N4N3xykzSGsyhbZRS7sILCNsaVFtnuQSY2RIb7JFik+uv
 nmQJyUpA==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jpxFT-0002Yy-Ur; Mon, 29 Jun 2020 17:07:16 +0000
To: Anton Altaparmakov <anton@tuxera.com>,
 linux-ntfs-dev@lists.sourceforge.net, Al Viro <viro@ZenIV.linux.org.uk>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <ff7e2edd-e30b-2d61-c6fa-87cd06dcf231@infradead.org>
Date: Mon, 29 Jun 2020 10:07:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jpxeC-006MFn-OW
X-Mailman-Approved-At: Mon, 29 Jun 2020 21:41:19 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: remove extraneous semicolons
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
Cc: Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Randy Dunlap <rdunlap@infradead.org>

Coccinelle scripts report:

fs/ntfs/lcnalloc.c:902:2-3: Unneeded semicolon
fs/ntfs/super.c:1615:2-3: Unneeded semicolon
fs/ntfs/super.c:1684:2-3: Unneeded semicolon

so remove the extraneous semicolons.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
---
 fs/ntfs/lcnalloc.c |    2 +-
 fs/ntfs/super.c    |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

--- linux-next-20200629.orig/fs/ntfs/lcnalloc.c
+++ linux-next-20200629/fs/ntfs/lcnalloc.c
@@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *ni,
 		}
 		/* We have freed @to_free real clusters. */
 		real_freed = to_free;
-	};
+	}
 	/* Go to the next run and adjust the number of clusters left to free. */
 	++rl;
 	if (count >= 0)
--- linux-next-20200629.orig/fs/ntfs/super.c
+++ linux-next-20200629/fs/ntfs/super.c
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
