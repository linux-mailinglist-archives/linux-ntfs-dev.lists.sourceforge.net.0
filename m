Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 563C47CB449
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxV-0006UA-TZ;
	Mon, 16 Oct 2023 20:13:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwF-00041i-NW
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mUIK9nBwhAI9Ryy/+0vVqkN8LwxEIln+yTemaK9zJBo=; b=f5byGHISLyKjlT/B2iO+Iwt3QM
 OCWzturB2QyJIlpz4RKK85IKMamrC++BP8ecjecFygq27F94k5xHrBBn8MDcJ02P0kWW+VDetDKJC
 DqqGyoHa62GsENItDhb4DpV54Lz5y0iFossNolWPozdtIuvrj86irujtjJ5kKgxV9O/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mUIK9nBwhAI9Ryy/+0vVqkN8LwxEIln+yTemaK9zJBo=; b=YEVU8FATVifE4lV/q2UZXfxmFO
 9+vH1IEjw6gPoUaDA7a6UHHAl0jrty1s2PvsZ8R5v8HTQlWn0wFsnLYASH/VjhVC/GryoXgzOi9et
 Skp6kaqAJZQpF1GFJVHhEHSZ5jaAqNwsBdGZTwiAn4nV6pIWAQMB/kiC+RGkhkNtwWKI=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwC-00H4wk-4D for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=mUIK9nBwhAI9Ryy/+0vVqkN8LwxEIln+yTemaK9zJBo=; b=B+GlRioYNmeYvG4yzAvGbAV781
 F+G7VQqsop6vEVTkB2N/9IRAC+b3I9QGtXyU3FDR6O7Op1I7/FV5sir1YuPG8ox133s3C6PYNc+Fu
 2TS1jzq3LSyq29zz12aDl+3LZfQS++8IkDcNOo1IznSF+6OigiahHw8yFL7Zwg3zZz6YuWDaGiOPJ
 DHg/Qy6Nq/Ajn9BVTw7QpDWYDJRi8Ev03+h9K1z4pGFqvUwuJFy08imY/iFoWk9PyLlasGh+5/226
 +dfNLVu37Js+UunnA87mo1Jg6qmIlj8ST7V1xEpHcBDhQ1i00gGkiy8nxNjkqAFUM6nFeC4tMR3+M
 QIAWS5bQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvr-0085d0-Ne; Mon, 16 Oct 2023 20:11:19 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:12 +0100
Message-Id: <20231016201114.1928083-26-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
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
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qsTwC-00H4wk-4D
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 25/27] ufs;
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
