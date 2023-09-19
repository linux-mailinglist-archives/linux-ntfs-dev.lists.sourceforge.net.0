Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA66D7A5B09
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGu-0007sC-0K;
	Tue, 19 Sep 2023 07:35:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiR-0000Rw-Ta
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2AizBRSvoAwMQss5U4Q6NQxeqUYZOASj4Ibiz5oNoKg=; b=Nx58voagrU7ayQBdPJVuSN80Q4
 KKeMDa30KYONBW5g6VMx69Y/JymD9PSti9CJnl8zorecFTYazZj8VPliSgn363gOSRRvkY02tH+UN
 l8+cQIwsI6Zxmzg6z9t+IhHbapR5jLHBodW1pN7ca69PBNxvFQ+bhfizty1ZCpcbi2wI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2AizBRSvoAwMQss5U4Q6NQxeqUYZOASj4Ibiz5oNoKg=; b=aG1QS+RsvZI5+EUqLFHOFDgkX9
 3d9pOLCWyVFTZemMR4XYEkiHQMKnEh2SnlyBqB3cDDUQbhJPIuxPIkFUpCI8pNS8ds8wg/jZ/PRSo
 /jZIj3bCJHwRa3ohTJfVZDyvPEou40DCgr0qk7qDDa4BAfJwklnYg1YFRmqdZAnV0b8c=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiO-00E5gO-GV for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=2AizBRSvoAwMQss5U4Q6NQxeqUYZOASj4Ibiz5oNoKg=; b=V2znE11QCzbIBsv3LQLxDWkQUk
 BVxYADbK8OVLuf3nE1HOQqQse9s2EvFGORQoD/7LhWbIX2cSA77t3Xbl9ctOdtZxfybufcDiRWt1r
 wDKrQx2nxuWEuoGZxd2kg+z3WXHcEIm9dOvaQtPP/lGgLhjKRt1AM+V4c1WriiJTkHwoWguEQJdbS
 pj4ycdFA4+K/yxTHLUNzBfw9PV7DrBmLorm45J/jqnu52fctRy3XQ/TXsNgT/+0+ENSEfad0GDs9w
 tCMk9cEJOyPK5sl0Yria+Idg6hFCFnRZFNpa4B6JFw7QfKMoy8hG9+MiNZlHLzHNOAR+fwcfIAAhD
 HEaW+hFw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi2-00FFkL-8r; Tue, 19 Sep 2023 04:51:38 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:12 +0100
Message-Id: <20230919045135.3635437-4-willy@infradead.org>
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
 Content preview: Remove an unnecessary folio->page->folio conversion and take
 advantage of the new return value from folio_create_empty_buffers().
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/ext4/inode.c | 14
 +++++---------
 fs/ext4/move_extent.c | 11 +++++------ 2 files changed, 10 insertions(+),
 15 deletions(-) 
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
X-Headers-End: 1qiSiO-00E5gO-GV
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:41 +0000
Subject: [Linux-ntfs-dev] [PATCH 03/26] ext4: Convert to
 folio_create_empty_buffers
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

Remove an unnecessary folio->page->folio conversion and take advantage
of the new return value from folio_create_empty_buffers().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ext4/inode.c       | 14 +++++---------
 fs/ext4/move_extent.c | 11 +++++------
 2 files changed, 10 insertions(+), 15 deletions(-)

diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
index 4ce35f1c8b0a..8e431ff2fd95 100644
--- a/fs/ext4/inode.c
+++ b/fs/ext4/inode.c
@@ -1020,10 +1020,8 @@ static int ext4_block_write_begin(struct folio *folio, loff_t pos, unsigned len,
 	BUG_ON(from > to);
 
 	head = folio_buffers(folio);
-	if (!head) {
-		create_empty_buffers(&folio->page, blocksize, 0);
-		head = folio_buffers(folio);
-	}
+	if (!head)
+		head = folio_create_empty_buffers(folio, blocksize, 0);
 	bbits = ilog2(blocksize);
 	block = (sector_t)folio->index << (PAGE_SHIFT - bbits);
 
@@ -1153,7 +1151,7 @@ static int ext4_write_begin(struct file *file, struct address_space *mapping,
 	 * starting the handle.
 	 */
 	if (!folio_buffers(folio))
-		create_empty_buffers(&folio->page, inode->i_sb->s_blocksize, 0);
+		folio_create_empty_buffers(folio, inode->i_sb->s_blocksize, 0);
 
 	folio_unlock(folio);
 
@@ -3643,10 +3641,8 @@ static int __ext4_block_zero_page_range(handle_t *handle,
 	iblock = index << (PAGE_SHIFT - inode->i_sb->s_blocksize_bits);
 
 	bh = folio_buffers(folio);
-	if (!bh) {
-		create_empty_buffers(&folio->page, blocksize, 0);
-		bh = folio_buffers(folio);
-	}
+	if (!bh)
+		bh = folio_create_empty_buffers(folio, blocksize, 0);
 
 	/* Find the buffer that contains "offset" */
 	pos = blocksize;
diff --git a/fs/ext4/move_extent.c b/fs/ext4/move_extent.c
index 18a9e7c47975..7fe448fb948b 100644
--- a/fs/ext4/move_extent.c
+++ b/fs/ext4/move_extent.c
@@ -183,10 +183,8 @@ mext_page_mkuptodate(struct folio *folio, unsigned from, unsigned to)
 
 	blocksize = i_blocksize(inode);
 	head = folio_buffers(folio);
-	if (!head) {
-		create_empty_buffers(&folio->page, blocksize, 0);
-		head = folio_buffers(folio);
-	}
+	if (!head)
+		head = folio_create_empty_buffers(folio, blocksize, 0);
 
 	block = (sector_t)folio->index << (PAGE_SHIFT - inode->i_blkbits);
 	for (bh = head, block_start = 0; bh != head || !block_start;
@@ -380,9 +378,10 @@ move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
 	}
 	/* Perform all necessary steps similar write_begin()/write_end()
 	 * but keeping in mind that i_size will not change */
-	if (!folio_buffers(folio[0]))
-		create_empty_buffers(&folio[0]->page, 1 << orig_inode->i_blkbits, 0);
 	bh = folio_buffers(folio[0]);
+	if (!bh)
+		bh = folio_create_empty_buffers(folio[0],
+				1 << orig_inode->i_blkbits, 0);
 	for (i = 0; i < data_offset_in_page; i++)
 		bh = bh->b_this_page;
 	for (i = 0; i < block_len_in_page; i++) {
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
