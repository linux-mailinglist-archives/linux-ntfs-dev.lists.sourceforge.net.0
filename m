Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 625897CB43D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxU-0006Se-FZ;
	Mon, 16 Oct 2023 20:13:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwD-00041P-SQ
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wsr22ZpjWpe8fxWjxYKfzNniRcYvF9L97ZdEJ2FF4/Y=; b=Z4ymRqg8v0OqtcuU6HorIY/shB
 ppnlxueI9Sxjz7kmeUTGH1w37O2sy+V4OZXv6ndJthyUnhQCXVN3oXLdHN6y3d7Dy9RVmAToH4k5e
 AisrxioSHW9SUipHod1raLrpxG06PBwseS7xsJTJLHobi/cHRUYdyQfXn8+9cE/x9xGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wsr22ZpjWpe8fxWjxYKfzNniRcYvF9L97ZdEJ2FF4/Y=; b=iAiAE/Dc62kXbJcKHlCbXzleGZ
 A2o3/KpMJNMnYm3N1aa2e3x/UsGyjLJwJKdsD+Zt7vUv5DLHvHYGyHghJrSSMzt5GVeKc1JVo32aq
 n48dtO27+mxS4BG9DlWJ0RUbiWydtAzTmgoZKJjRDTfXtoaztQ3v/0uYf8B2kQSePDRg=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwB-00H4wf-Da for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Wsr22ZpjWpe8fxWjxYKfzNniRcYvF9L97ZdEJ2FF4/Y=; b=gBrYfkQP4sfJfcJbui9LmC5G8s
 einGaU3FDrywjShBva2hxLnsFzqDYa7vYj1+IcO2HDWUft+0XMxopO/ZLqNGjj+DbrwbsSK3dcWzK
 6Sl7FsaYl0HLwHN7hRzckFX9/vZKlNx9eXotFlnsTqd5wjuemKfmExYprBYZa1aGyzk8xEQK8XGwz
 lKjjlJY1Q8P9exmchQygQ4JM6u/QtujFU4AParKGhEPz7dMBNOCUxVprUxNxde98iF43uezdzLWPf
 r1Ph+Z69O00vmSlJ/4p0ZIxv76vbqYpjnMfc58p3CsAc2F4xdBDQwf2QtSAVsUaPEddhiQAszwJ9c
 oFXt2sMw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvq-0085bs-Ju; Mon, 16 Oct 2023 20:11:18 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:04 +0100
Message-Id: <20231016201114.1928083-18-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The caller already has the folio, so pass it in and use the
 folio API throughout saving five hidden calls to compound_head().
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/ntfs/aops.c | 44
 +++++++++++++++++++
 1 file changed, 19 insertions(+), 25 deletions(-) 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qsTwB-00H4wf-Da
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 17/27] ntfs: Convert ntfs_read_block()
 to use a folio
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

The caller already has the folio, so pass it in and use the folio API
throughout saving five hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ntfs/aops.c | 44 +++++++++++++++++++-------------------------
 1 file changed, 19 insertions(+), 25 deletions(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 4e158bce4192..d66a9f5ffde9 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -145,13 +145,12 @@ static void ntfs_end_buffer_async_read(struct buffer_head *bh, int uptodate)
 }
 
 /**
- * ntfs_read_block - fill a @page of an address space with data
- * @page:	page cache page to fill with data
+ * ntfs_read_block - fill a @folio of an address space with data
+ * @folio:	page cache folio to fill with data
  *
- * Fill the page @page of the address space belonging to the @page->host inode.
  * We read each buffer asynchronously and when all buffers are read in, our io
  * completion handler ntfs_end_buffer_read_async(), if required, automatically
- * applies the mst fixups to the page before finally marking it uptodate and
+ * applies the mst fixups to the folio before finally marking it uptodate and
  * unlocking it.
  *
  * We only enforce allocated_size limit because i_size is checked for in
@@ -161,7 +160,7 @@ static void ntfs_end_buffer_async_read(struct buffer_head *bh, int uptodate)
  *
  * Contains an adapted version of fs/buffer.c::block_read_full_folio().
  */
-static int ntfs_read_block(struct page *page)
+static int ntfs_read_block(struct folio *folio)
 {
 	loff_t i_size;
 	VCN vcn;
@@ -178,7 +177,7 @@ static int ntfs_read_block(struct page *page)
 	int i, nr;
 	unsigned char blocksize_bits;
 
-	vi = page->mapping->host;
+	vi = folio->mapping->host;
 	ni = NTFS_I(vi);
 	vol = ni->vol;
 
@@ -188,15 +187,10 @@ static int ntfs_read_block(struct page *page)
 	blocksize = vol->sb->s_blocksize;
 	blocksize_bits = vol->sb->s_blocksize_bits;
 
-	if (!page_has_buffers(page)) {
-		create_empty_buffers(page, blocksize, 0);
-		if (unlikely(!page_has_buffers(page))) {
-			unlock_page(page);
-			return -ENOMEM;
-		}
-	}
-	bh = head = page_buffers(page);
-	BUG_ON(!bh);
+	head = folio_buffers(folio);
+	if (!head)
+		head = folio_create_empty_buffers(folio, blocksize, 0);
+	bh = head;
 
 	/*
 	 * We may be racing with truncate.  To avoid some of the problems we
@@ -205,11 +199,11 @@ static int ntfs_read_block(struct page *page)
 	 * may leave some buffers unmapped which are now allocated.  This is
 	 * not a problem since these buffers will just get mapped when a write
 	 * occurs.  In case of a shrinking truncate, we will detect this later
-	 * on due to the runlist being incomplete and if the page is being
+	 * on due to the runlist being incomplete and if the folio is being
 	 * fully truncated, truncate will throw it away as soon as we unlock
 	 * it so no need to worry what we do with it.
 	 */
-	iblock = (s64)page->index << (PAGE_SHIFT - blocksize_bits);
+	iblock = (s64)folio->index << (PAGE_SHIFT - blocksize_bits);
 	read_lock_irqsave(&ni->size_lock, flags);
 	lblock = (ni->allocated_size + blocksize - 1) >> blocksize_bits;
 	init_size = ni->initialized_size;
@@ -221,7 +215,7 @@ static int ntfs_read_block(struct page *page)
 	}
 	zblock = (init_size + blocksize - 1) >> blocksize_bits;
 
-	/* Loop through all the buffers in the page. */
+	/* Loop through all the buffers in the folio. */
 	rl = NULL;
 	nr = i = 0;
 	do {
@@ -299,7 +293,7 @@ static int ntfs_read_block(struct page *page)
 			if (!err)
 				err = -EIO;
 			bh->b_blocknr = -1;
-			SetPageError(page);
+			folio_set_error(folio);
 			ntfs_error(vol->sb, "Failed to read from inode 0x%lx, "
 					"attribute type 0x%x, vcn 0x%llx, "
 					"offset 0x%x because its location on "
@@ -312,13 +306,13 @@ static int ntfs_read_block(struct page *page)
 		/*
 		 * Either iblock was outside lblock limits or
 		 * ntfs_rl_vcn_to_lcn() returned error.  Just zero that portion
-		 * of the page and set the buffer uptodate.
+		 * of the folio and set the buffer uptodate.
 		 */
 handle_hole:
 		bh->b_blocknr = -1UL;
 		clear_buffer_mapped(bh);
 handle_zblock:
-		zero_user(page, i * blocksize, blocksize);
+		folio_zero_range(folio, i * blocksize, blocksize);
 		if (likely(!err))
 			set_buffer_uptodate(bh);
 	} while (i++, iblock++, (bh = bh->b_this_page) != head);
@@ -349,11 +343,11 @@ static int ntfs_read_block(struct page *page)
 		return 0;
 	}
 	/* No i/o was scheduled on any of the buffers. */
-	if (likely(!PageError(page)))
-		SetPageUptodate(page);
+	if (likely(!folio_test_error(folio)))
+		folio_mark_uptodate(folio);
 	else /* Signal synchronous i/o error. */
 		nr = -EIO;
-	unlock_page(page);
+	folio_unlock(folio);
 	return nr;
 }
 
@@ -433,7 +427,7 @@ static int ntfs_read_folio(struct file *file, struct folio *folio)
 	/* NInoNonResident() == NInoIndexAllocPresent() */
 	if (NInoNonResident(ni)) {
 		/* Normal, non-resident data stream. */
-		return ntfs_read_block(page);
+		return ntfs_read_block(folio);
 	}
 	/*
 	 * Attribute is resident, implying it is not compressed or encrypted.
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
