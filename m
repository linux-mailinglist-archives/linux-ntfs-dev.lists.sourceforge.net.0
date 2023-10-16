Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEDD7CB452
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxe-0006XN-2s;
	Mon, 16 Oct 2023 20:13:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwH-0006VR-8L
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uRYwye2tS2VKcBuJRmgCvN2KUM2u4JgvivY1TEOS98E=; b=ZsHA/CM1GEr98y+yCKy9RGc/BV
 cCr6kHCQDIPKMDfSm1I0vzrUFxw6WqE8TmDEWtyLS2lfaYLQ53j+nlbW+fQcBIDJgsz5fntSFlEcn
 y2zJCassC1+aUnVKvNcjc0mWp2DJ5a4A665Cn2WKQ2KmjRATRY+NpZTdUNLYPdbsizPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uRYwye2tS2VKcBuJRmgCvN2KUM2u4JgvivY1TEOS98E=; b=YBjaLEVxpMo7FxmKpIynZBfZ2Z
 ePCNYUtlRj4BU0rt+xPEwMkiLKz4tQUuY2I1W0oZVIWPR1nYcs8e2exu8jSaXXlSFz6vWkXWm8cUA
 HkCdL+1Smat1axjOLjoUFT2+8W2hhrSBO14YQ09keEnxNLTcCxSNo2AN1ym7UWmgbAWU=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwD-00H4wj-Si for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=uRYwye2tS2VKcBuJRmgCvN2KUM2u4JgvivY1TEOS98E=; b=IvedTuBNDiadfAJVjuQlYJbb4B
 KmeqvJPgZuAUxOvSLTvscBsaOsG1BrvGiX+0gd2qH0H1eC/O6Bv4xu5d5HdSdg0xqTce4I2jrxpSb
 hlAW4f+qsw9TA5ump6FTVG28aNbp2EGxy5W+DpaHt+aWqvjyMuDC+F7FEUEBVF12N/UObw5aJFbL+
 x8ILnbo8oVMNp/6FKkjCFtdu0kmxeDfzHweamKvMF1mYMBMHj24QgsaTkiWALjcV+BSyZRXd5zHny
 ZS+kalvqG5pYR9p+nRRSBPpOpyccaX77Gdto7mHFtMkdoubqdFj1kAz1unMSv4Zj262LCGIYJRgL+
 fmFLWTEg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvr-0085cR-5C; Mon, 16 Oct 2023 20:11:19 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:08 +0100
Message-Id: <20231016201114.1928083-22-willy@infradead.org>
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
 Content preview: Convert the page argument to a folio and then use the folio
 APIs throughout. Replaces three hidden calls to compound_head() with one
 explicit one. Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
 --- fs/ocfs2/aops.c | 19 ++++++++++--------- 1 file changed, 10 insertions(+), 
 9 deletions(-) 
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
X-Headers-End: 1qsTwD-00H4wj-Si
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 21/27] ocfs2: Convert
 ocfs2_map_page_blocks to use a folio
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

Convert the page argument to a folio and then use the folio APIs
throughout.  Replaces three hidden calls to compound_head() with one
explicit one.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ocfs2/aops.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/fs/ocfs2/aops.c b/fs/ocfs2/aops.c
index 6ab03494fc6e..001ad1d288ec 100644
--- a/fs/ocfs2/aops.c
+++ b/fs/ocfs2/aops.c
@@ -568,10 +568,10 @@ static void ocfs2_clear_page_regions(struct page *page,
  * read-in the blocks at the tail of our file. Avoid reading them by
  * testing i_size against each block offset.
  */
-static int ocfs2_should_read_blk(struct inode *inode, struct page *page,
+static int ocfs2_should_read_blk(struct inode *inode, struct folio *folio,
 				 unsigned int block_start)
 {
-	u64 offset = page_offset(page) + block_start;
+	u64 offset = folio_pos(folio) + block_start;
 
 	if (ocfs2_sparse_alloc(OCFS2_SB(inode->i_sb)))
 		return 1;
@@ -593,15 +593,16 @@ int ocfs2_map_page_blocks(struct page *page, u64 *p_blkno,
 			  struct inode *inode, unsigned int from,
 			  unsigned int to, int new)
 {
+	struct folio *folio = page_folio(page);
 	int ret = 0;
 	struct buffer_head *head, *bh, *wait[2], **wait_bh = wait;
 	unsigned int block_end, block_start;
 	unsigned int bsize = i_blocksize(inode);
 
-	if (!page_has_buffers(page))
-		create_empty_buffers(page, bsize, 0);
+	head = folio_buffers(folio);
+	if (!head)
+		head = folio_create_empty_buffers(folio, bsize, 0);
 
-	head = page_buffers(page);
 	for (bh = head, block_start = 0; bh != head || !block_start;
 	     bh = bh->b_this_page, block_start += bsize) {
 		block_end = block_start + bsize;
@@ -613,7 +614,7 @@ int ocfs2_map_page_blocks(struct page *page, u64 *p_blkno,
 		 * they may belong to unallocated clusters.
 		 */
 		if (block_start >= to || block_end <= from) {
-			if (PageUptodate(page))
+			if (folio_test_uptodate(folio))
 				set_buffer_uptodate(bh);
 			continue;
 		}
@@ -630,11 +631,11 @@ int ocfs2_map_page_blocks(struct page *page, u64 *p_blkno,
 			clean_bdev_bh_alias(bh);
 		}
 
-		if (PageUptodate(page)) {
+		if (folio_test_uptodate(folio)) {
 			set_buffer_uptodate(bh);
 		} else if (!buffer_uptodate(bh) && !buffer_delay(bh) &&
 			   !buffer_new(bh) &&
-			   ocfs2_should_read_blk(inode, page, block_start) &&
+			   ocfs2_should_read_blk(inode, folio, block_start) &&
 			   (block_start < from || block_end > to)) {
 			bh_read_nowait(bh, 0);
 			*wait_bh++=bh;
@@ -668,7 +669,7 @@ int ocfs2_map_page_blocks(struct page *page, u64 *p_blkno,
 		if (block_start >= to)
 			break;
 
-		zero_user(page, block_start, bh->b_size);
+		folio_zero_range(folio, block_start, bh->b_size);
 		set_buffer_uptodate(bh);
 		mark_buffer_dirty(bh);
 
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
