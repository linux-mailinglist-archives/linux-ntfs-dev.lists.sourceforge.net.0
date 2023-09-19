Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5027A5B12
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGy-0007wC-7K;
	Tue, 19 Sep 2023 07:35:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiQ-0005z3-W8
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nn49zhyNHPgIpcVy2aSu2Q0z0MIvIhPW+uoAmC4xRJ0=; b=NaGUEvSz41N7allZoXvXFZMh2l
 jLySTWgWA/AiWu+5qmD78PY7RWq0mp3zCPOu+IQAJPeherIL/9bPnkwj92QVvr0cVjXeuoMqbyAYo
 CQ1KsFDWmDzCkqCX1Slfu7m2QTX++RZnsmQL7tiNofURei1t2EYmVLXlGylZr54S5kdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nn49zhyNHPgIpcVy2aSu2Q0z0MIvIhPW+uoAmC4xRJ0=; b=hvWqlhvGCqekElEcMK1XhYe1lU
 RLceurIwp3nKe9RhCywGz4H7y/4M0OnSkQAF64PK6tSh71SO/Qv0Wm7OgPUlUo5QzhnaslDXUt4pL
 PGf4r9fnzoRBJSUvBRinn5eK6TfyYCm3sOre/dBTt3N9NJM5YwTrXo5PXsi/Uz4v0zOo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiQ-00084S-GO for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=nn49zhyNHPgIpcVy2aSu2Q0z0MIvIhPW+uoAmC4xRJ0=; b=FVGqFUs028vfrWO+d/FHjCaphn
 n06sJI4jKCLqX6uoLpaRD8rvlcRFKOJPoUovTRyG3FmyJTkYD2FNFX95w6lBwjyenRg5KkNBuGga+
 H49myEKqRTu53DaRAVE6bJNCKFF7Zbm9sBYYnhIFNTWh/YoayttlLeGVPdCqODsTo2AGrXMn6K2ta
 97SYm4etClBlfS66CJ5/nC1iKtXoSjytcMX1zQSJcWOdcdVZ0fP0qBx3REhNdHEclF14K6Iwb8Je0
 Z6mRfRZI2jbft/BjC/WkP1UYXRoyxUsiAdGETCKMZvY53Q3r+i4LhkUliJH2GExU+AbjFklQ5+Q6u
 Ql9LVBVA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi4-00FFm8-U3; Tue, 19 Sep 2023 04:51:41 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:30 +0100
Message-Id: <20230919045135.3635437-22-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Convert the incoming page to a folio and then use it
 throughout
 the writeback path. This definitely isn't enough to support large folios,
 but I don't expect reiserfs to gain support for those before i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qiSiQ-00084S-GO
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 21/26] reiserfs: Convert writepage to use a
 folio
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

Convert the incoming page to a folio and then use it throughout the
writeback path.  This definitely isn't enough to support large folios, but
I don't expect reiserfs to gain support for those before it is removed.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/reiserfs/inode.c | 80 ++++++++++++++++++++++-----------------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/fs/reiserfs/inode.c b/fs/reiserfs/inode.c
index 86e55d4bb10d..d9737235b8e0 100644
--- a/fs/reiserfs/inode.c
+++ b/fs/reiserfs/inode.c
@@ -2507,10 +2507,10 @@ static int map_block_for_writepage(struct inode *inode,
  * start/recovery path as __block_write_full_folio, along with special
  * code to handle reiserfs tails.
  */
-static int reiserfs_write_full_page(struct page *page,
+static int reiserfs_write_full_folio(struct folio *folio,
 				    struct writeback_control *wbc)
 {
-	struct inode *inode = page->mapping->host;
+	struct inode *inode = folio->mapping->host;
 	unsigned long end_index = inode->i_size >> PAGE_SHIFT;
 	int error = 0;
 	unsigned long block;
@@ -2518,7 +2518,7 @@ static int reiserfs_write_full_page(struct page *page,
 	struct buffer_head *head, *bh;
 	int partial = 0;
 	int nr = 0;
-	int checked = PageChecked(page);
+	int checked = folio_test_checked(folio);
 	struct reiserfs_transaction_handle th;
 	struct super_block *s = inode->i_sb;
 	int bh_per_page = PAGE_SIZE / s->s_blocksize;
@@ -2526,47 +2526,46 @@ static int reiserfs_write_full_page(struct page *page,
 
 	/* no logging allowed when nonblocking or from PF_MEMALLOC */
 	if (checked && (current->flags & PF_MEMALLOC)) {
-		redirty_page_for_writepage(wbc, page);
-		unlock_page(page);
+		folio_redirty_for_writepage(wbc, folio);
+		folio_unlock(folio);
 		return 0;
 	}
 
 	/*
-	 * The page dirty bit is cleared before writepage is called, which
+	 * The folio dirty bit is cleared before writepage is called, which
 	 * means we have to tell create_empty_buffers to make dirty buffers
-	 * The page really should be up to date at this point, so tossing
+	 * The folio really should be up to date at this point, so tossing
 	 * in the BH_Uptodate is just a sanity check.
 	 */
-	if (!page_has_buffers(page)) {
-		create_empty_buffers(page, s->s_blocksize,
+	head = folio_buffers(folio);
+	if (!head)
+		head = folio_create_empty_buffers(folio, s->s_blocksize,
 				     (1 << BH_Dirty) | (1 << BH_Uptodate));
-	}
-	head = page_buffers(page);
 
 	/*
-	 * last page in the file, zero out any contents past the
+	 * last folio in the file, zero out any contents past the
 	 * last byte in the file
 	 */
-	if (page->index >= end_index) {
+	if (folio->index >= end_index) {
 		unsigned last_offset;
 
 		last_offset = inode->i_size & (PAGE_SIZE - 1);
-		/* no file contents in this page */
-		if (page->index >= end_index + 1 || !last_offset) {
-			unlock_page(page);
+		/* no file contents in this folio */
+		if (folio->index >= end_index + 1 || !last_offset) {
+			folio_unlock(folio);
 			return 0;
 		}
-		zero_user_segment(page, last_offset, PAGE_SIZE);
+		folio_zero_segment(folio, last_offset, folio_size(folio));
 	}
 	bh = head;
-	block = page->index << (PAGE_SHIFT - s->s_blocksize_bits);
+	block = folio->index << (PAGE_SHIFT - s->s_blocksize_bits);
 	last_block = (i_size_read(inode) - 1) >> inode->i_blkbits;
 	/* first map all the buffers, logging any direct items we find */
 	do {
 		if (block > last_block) {
 			/*
 			 * This can happen when the block size is less than
-			 * the page size.  The corresponding bytes in the page
+			 * the folio size.  The corresponding bytes in the folio
 			 * were zero filled above
 			 */
 			clear_buffer_dirty(bh);
@@ -2593,7 +2592,7 @@ static int reiserfs_write_full_page(struct page *page,
 	 * blocks we're going to log
 	 */
 	if (checked) {
-		ClearPageChecked(page);
+		folio_clear_checked(folio);
 		reiserfs_write_lock(s);
 		error = journal_begin(&th, s, bh_per_page + 1);
 		if (error) {
@@ -2602,7 +2601,7 @@ static int reiserfs_write_full_page(struct page *page,
 		}
 		reiserfs_update_inode_transaction(inode);
 	}
-	/* now go through and lock any dirty buffers on the page */
+	/* now go through and lock any dirty buffers on the folio */
 	do {
 		get_bh(bh);
 		if (!buffer_mapped(bh))
@@ -2623,7 +2622,7 @@ static int reiserfs_write_full_page(struct page *page,
 			lock_buffer(bh);
 		} else {
 			if (!trylock_buffer(bh)) {
-				redirty_page_for_writepage(wbc, page);
+				folio_redirty_for_writepage(wbc, folio);
 				continue;
 			}
 		}
@@ -2640,13 +2639,13 @@ static int reiserfs_write_full_page(struct page *page,
 		if (error)
 			goto fail;
 	}
-	BUG_ON(PageWriteback(page));
-	set_page_writeback(page);
-	unlock_page(page);
+	BUG_ON(folio_test_writeback(folio));
+	folio_start_writeback(folio);
+	folio_unlock(folio);
 
 	/*
-	 * since any buffer might be the only dirty buffer on the page,
-	 * the first submit_bh can bring the page out of writeback.
+	 * since any buffer might be the only dirty buffer on the folio,
+	 * the first submit_bh can bring the folio out of writeback.
 	 * be careful with the buffers.
 	 */
 	do {
@@ -2663,10 +2662,10 @@ static int reiserfs_write_full_page(struct page *page,
 done:
 	if (nr == 0) {
 		/*
-		 * if this page only had a direct item, it is very possible for
+		 * if this folio only had a direct item, it is very possible for
 		 * no io to be required without there being an error.  Or,
 		 * someone else could have locked them and sent them down the
-		 * pipe without locking the page
+		 * pipe without locking the folio
 		 */
 		bh = head;
 		do {
@@ -2677,18 +2676,18 @@ static int reiserfs_write_full_page(struct page *page,
 			bh = bh->b_this_page;
 		} while (bh != head);
 		if (!partial)
-			SetPageUptodate(page);
-		end_page_writeback(page);
+			folio_mark_uptodate(folio);
+		folio_end_writeback(folio);
 	}
 	return error;
 
 fail:
 	/*
 	 * catches various errors, we need to make sure any valid dirty blocks
-	 * get to the media.  The page is currently locked and not marked for
+	 * get to the media.  The folio is currently locked and not marked for
 	 * writeback
 	 */
-	ClearPageUptodate(page);
+	folio_clear_uptodate(folio);
 	bh = head;
 	do {
 		get_bh(bh);
@@ -2698,16 +2697,16 @@ static int reiserfs_write_full_page(struct page *page,
 		} else {
 			/*
 			 * clear any dirty bits that might have come from
-			 * getting attached to a dirty page
+			 * getting attached to a dirty folio
 			 */
 			clear_buffer_dirty(bh);
 		}
 		bh = bh->b_this_page;
 	} while (bh != head);
-	SetPageError(page);
-	BUG_ON(PageWriteback(page));
-	set_page_writeback(page);
-	unlock_page(page);
+	folio_set_error(folio);
+	BUG_ON(folio_test_writeback(folio));
+	folio_start_writeback(folio);
+	folio_unlock(folio);
 	do {
 		struct buffer_head *next = bh->b_this_page;
 		if (buffer_async_write(bh)) {
@@ -2728,9 +2727,10 @@ static int reiserfs_read_folio(struct file *f, struct folio *folio)
 
 static int reiserfs_writepage(struct page *page, struct writeback_control *wbc)
 {
-	struct inode *inode = page->mapping->host;
+	struct folio *folio = page_folio(page);
+	struct inode *inode = folio->mapping->host;
 	reiserfs_wait_on_write_block(inode->i_sb);
-	return reiserfs_write_full_page(page, wbc);
+	return reiserfs_write_full_folio(folio, wbc);
 }
 
 static void reiserfs_truncate_failed_write(struct inode *inode)
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
