Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9157A5B15
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGz-0007xR-Ga;
	Tue, 19 Sep 2023 07:35:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiT-0005Gl-7y
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mUIK9nBwhAI9Ryy/+0vVqkN8LwxEIln+yTemaK9zJBo=; b=nNz672QPqwrKXcEJANcD73DYaz
 yfri0HkJ40tJ6Hj+8XZgUl/JP8G34byA3A3uebMWmiWQmy+auHRrtrr+NpBEVRwpjZtrxpuTdyYTc
 ooR8XqzzDqoVeocv3HS6/fNS2JGtCU78xLPRXEVO8xHdR/WDUOyBIkzL1hZBELs9PNjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mUIK9nBwhAI9Ryy/+0vVqkN8LwxEIln+yTemaK9zJBo=; b=hl/Wfnu72YZGSf4klbvQMZiCCn
 WItVGbjFOzCmpSW/Pwg7EmLnOpAdcz6F84Rd4skVKrHgyv3ZpaL0sHOxlZe9eYKSXwFVAElU2YAZI
 uD+r1A6PG1ghjhi+Yxtm9wd1977bnZmLamMf99/A+Fpa0FxGZe0A1Sl1nyjfojUWVyO0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiQ-00084T-GX for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=mUIK9nBwhAI9Ryy/+0vVqkN8LwxEIln+yTemaK9zJBo=; b=guUpDLzG8BlfE6Tit98RP1DNJN
 2xpezrbA4qawVoCg32DiMzru0nETB8nlQsYcPHxd06GVGgkXsPn8bW2jhgacbhaCXKjXs44p+5OMS
 lADgbnPbkK/TFHG9timsYL9oMFJQwLqNU1E1aLYhncIE83OmsIX+OdljfOxFpJItsWxbWeCp7jRQA
 ncHE9NSRASSjbEl6PUk7N1TLV17gzcAUHRPH4Rmw/C+jUBS5GPUkm8MedchaZucpSKqQQ8XrF3aOZ
 M2bHEuZYfIl/3Bo5OxYX+1v+5yF5lXXTN95tAsAfemC1RL5FCQs3HStRTH1FEcWXVirR2f+L+UybJ
 LV/2XX4w==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi5-00FFmW-B1; Tue, 19 Sep 2023 04:51:41 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:33 +0100
Message-Id: <20230919045135.3635437-25-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Convert the locked_page argument to a folio, then use folios
 throughout. Saves three hidden calls to compound_head(). Signed-off-by:
 Matthew
 Wilcox (Oracle) <willy@infradead.org> --- fs/ufs/balloc.c | 20 +++++++++
 1 file changed, 9 insertions(+), 11 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1qiSiQ-00084T-GX
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 24/26] ufs;
 Convert ufs_change_blocknr() to use folios
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Convert the locked_page argument to a folio, then use folios throughout.
Saves three hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ufs/balloc.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/fs/ufs/balloc.c b/fs/ufs/balloc.c
index 2436e3f82147..53c11be2b2c1 100644
--- a/fs/ufs/balloc.c
+++ b/fs/ufs/balloc.c
@@ -240,6 +240,7 @@ static void ufs_change_blocknr(struct inode *inode, sector_t beg,
 			       unsigned int count, sector_t oldb,
 			       sector_t newb, struct page *locked_page)
 {
+	struct folio *folio, *locked_folio = page_folio(locked_page);
 	const unsigned blks_per_page =
 		1 << (PAGE_SHIFT - inode->i_blkbits);
 	const unsigned mask = blks_per_page - 1;
@@ -247,42 +248,39 @@ static void ufs_change_blocknr(struct inode *inode, sector_t beg,
 	pgoff_t index, cur_index, last_index;
 	unsigned pos, j, lblock;
 	sector_t end, i;
-	struct page *page;
 	struct buffer_head *head, *bh;
 
 	UFSD("ENTER, ino %lu, count %u, oldb %llu, newb %llu\n",
 	      inode->i_ino, count,
 	     (unsigned long long)oldb, (unsigned long long)newb);
 
-	BUG_ON(!locked_page);
-	BUG_ON(!PageLocked(locked_page));
+	BUG_ON(!folio_test_locked(locked_folio));
 
-	cur_index = locked_page->index;
+	cur_index = locked_folio->index;
 	end = count + beg;
 	last_index = end >> (PAGE_SHIFT - inode->i_blkbits);
 	for (i = beg; i < end; i = (i | mask) + 1) {
 		index = i >> (PAGE_SHIFT - inode->i_blkbits);
 
 		if (likely(cur_index != index)) {
-			page = ufs_get_locked_page(mapping, index);
-			if (!page)/* it was truncated */
+			folio = ufs_get_locked_folio(mapping, index);
+			if (!folio) /* it was truncated */
 				continue;
-			if (IS_ERR(page)) {/* or EIO */
+			if (IS_ERR(folio)) {/* or EIO */
 				ufs_error(inode->i_sb, __func__,
 					  "read of page %llu failed\n",
 					  (unsigned long long)index);
 				continue;
 			}
 		} else
-			page = locked_page;
+			folio = locked_folio;
 
-		head = page_buffers(page);
+		head = folio_buffers(folio);
 		bh = head;
 		pos = i & mask;
 		for (j = 0; j < pos; ++j)
 			bh = bh->b_this_page;
 
-
 		if (unlikely(index == last_index))
 			lblock = end & mask;
 		else
@@ -313,7 +311,7 @@ static void ufs_change_blocknr(struct inode *inode, sector_t beg,
 		} while (bh != head);
 
 		if (likely(cur_index != index))
-			ufs_put_locked_page(page);
+			ufs_put_locked_folio(folio);
  	}
 	UFSD("EXIT\n");
 }
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
