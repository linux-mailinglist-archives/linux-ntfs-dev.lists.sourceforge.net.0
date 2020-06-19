Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF4B20042E
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Jun 2020 10:38:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jmCXp-0008CY-QZ; Fri, 19 Jun 2020 08:38:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1jmAUA-0008RK-48
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Jun 2020 06:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U+XtLWpHPp9STA62dagelcykteGUqdAd/GAg50BIhdU=; b=LmxrNhsDhdG4mp4XrHqO4iwDuJ
 FILFglGxQShfHVe3b1MYHWRC9B4FUSdsLlBMUYa4ulu6e2xk1/WP1fLvE4daeW02rY4mL1dooQ8KH
 hgsKHYsQsr4YbP85AWZa6/FUtyaw2Vtou0yieAITRFnpRSYSJy/ysu0RIOVLXxNhVe3U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U+XtLWpHPp9STA62dagelcykteGUqdAd/GAg50BIhdU=; b=B
 bnshYilKJKB/EVgtsX2BnlEF7kH1ceTPVEcrYiqxaMeAKEeewbmRfwIruX4orMHUJd1gD47gTXHB3
 a2R00QYf6Bk5z8wjSrO8IcoXMyYBv/d2737Qn6Lv1UO3EP7LKTPgvuD0a496cCZWd2/nSf8SW8Dzl
 40m1oyHuTeAo/t8k=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jmAU8-008eOp-07
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Jun 2020 06:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=U+XtLWpHPp9STA62dagelcykteGUqdAd/GAg50BIhdU=; b=TbEJ3ffF0kJIocQBwOa24HmyE4
 oMV5vl7GwSYxs+Fb/R4EXWkrdh/ZouwrOTUyBd7BevL5i3XsqShCdxXQn5+u23f0l7kOHs8eYSkOd
 AEpR32vxNzUHuwuXlQwOO8xz3F0Ub8zThpMSALDhlDBoc4Z44eBXOrsAzBTt2edwyza3PFJ9UpO9b
 WIKCUE07lCKZk1hB+Yyrof3oTUn7S/kSJWzKxwj/HGoY8GlurNvoLPxMoht/jz6tDI8alGI6aaVW/
 JLJX3GA4vaeHoCRShYqHcx8xyXiVf4ZKbnQVwinNK2NMJbOqxH7TbNk6Cc+Mprm0OgVG7DTJtuAo5
 fv0EUKqw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmATu-0002k2-Au; Fri, 19 Jun 2020 06:26:30 +0000
To: LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <b7762026-6390-128d-a253-9b66f8f43708@infradead.org>
Date: Thu, 18 Jun 2020 23:26:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jmAU8-008eOp-07
X-Mailman-Approved-At: Fri, 19 Jun 2020 08:38:39 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: delete extraneous semicolons
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

--- linux-next-20200617.orig/fs/ntfs/lcnalloc.c
+++ linux-next-20200617/fs/ntfs/lcnalloc.c
@@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *ni,
 		}
 		/* We have freed @to_free real clusters. */
 		real_freed = to_free;
-	};
+	}
 	/* Go to the next run and adjust the number of clusters left to free. */
 	++rl;
 	if (count >= 0)
--- linux-next-20200617.orig/fs/ntfs/super.c
+++ linux-next-20200617/fs/ntfs/super.c
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
