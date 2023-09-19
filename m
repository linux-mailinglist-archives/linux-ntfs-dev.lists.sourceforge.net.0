Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A827A5B00
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGp-0007oh-5M;
	Tue, 19 Sep 2023 07:35:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiQ-0006FS-07
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kMS4yLjT+MvyIpz+8c4RceJl7Cq4cP3Nn5r0TL01AkM=; b=kZElRcnLwF9FtR2Tw8luPIo7gh
 XLYP21lFmQLnS3LsC52sU+ttZH0PkUyDHLJMuJRL2YLHyvTkTVVmOM3B0ptuENPUOMsw0eKXJ2Q13
 hVg8mTb9sHbtBhETwB2A7se3kKIzL9b6FvLH9ZwTmuaonXdYqrmEYxJ+ZGfmcF1QQKIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kMS4yLjT+MvyIpz+8c4RceJl7Cq4cP3Nn5r0TL01AkM=; b=UXB/xog9LfX3t1EQVd0HEdNndn
 tgdxzTLMPujQ6mKbzZXgHyr3CyNXdoPcUnKvJ/RrwWM60yumv0jpfdXLdp0xDPLtcPdCNcxeu3D9p
 OXe/2oU8EqYWm0d4ysVrW554MaOs3HedN4UVubuhUAE2RTQ2KqEc682WSMqGeHC16TR0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiM-00E5fw-VZ for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=kMS4yLjT+MvyIpz+8c4RceJl7Cq4cP3Nn5r0TL01AkM=; b=Gna+Nrs1iPcm3EFwmrZCisgDxF
 l/i6DX/38hzEhDl9on1LFmpXrAhYPkJ5V68yiyuA6l9UXILvc1gxtibKrQVGRHVjtcJ7wlOPBIjF/
 RB863lpp0nbBCdecrYesQv5ZVNHxIbcU4YA93VliccoRmRKwHiwSVU/2W7GWOwSnoUv87Wf/Fu+QB
 0Pazbp+1rvyhhansi50qiEWNHRJjK+BlvES+cklfcW7GFI2NZrJn3ltjIvvYHY48plSGJXXuCfbc1
 WvU6ahflCYXK976m0N50npcMtfyQ9uXq7UW4cKM2QBUoxvrPS9TW3v+mLG7WppG4FIu6/uwVYWiQL
 CJe5pF5g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi3-00FFl0-Jt; Tue, 19 Sep 2023 04:51:39 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:21 +0100
Message-Id: <20230919045135.3635437-13-willy@infradead.org>
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
 Content preview: Remove a number of folio->page->folio conversions.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/nilfs2/mdt.c | 30
 ++++++++++++++
 1 file changed, 14 insertions(+), 16 deletions(-) 
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
X-Headers-End: 1qiSiM-00E5fw-VZ
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 12/26] nilfs2: Convert
 nilfs_mdt_forget_block() to use a folio
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

Remove a number of folio->page->folio conversions.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/nilfs2/mdt.c | 30 ++++++++++++++----------------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/fs/nilfs2/mdt.c b/fs/nilfs2/mdt.c
index db2260d6e44d..11b7cf4acc92 100644
--- a/fs/nilfs2/mdt.c
+++ b/fs/nilfs2/mdt.c
@@ -356,30 +356,28 @@ int nilfs_mdt_delete_block(struct inode *inode, unsigned long block)
  */
 int nilfs_mdt_forget_block(struct inode *inode, unsigned long block)
 {
-	pgoff_t index = (pgoff_t)block >>
-		(PAGE_SHIFT - inode->i_blkbits);
-	struct page *page;
-	unsigned long first_block;
+	pgoff_t index = block >> (PAGE_SHIFT - inode->i_blkbits);
+	struct folio *folio;
+	struct buffer_head *bh;
 	int ret = 0;
 	int still_dirty;
 
-	page = find_lock_page(inode->i_mapping, index);
-	if (!page)
+	folio = filemap_lock_folio(inode->i_mapping, index);
+	if (IS_ERR(folio))
 		return -ENOENT;
 
-	wait_on_page_writeback(page);
+	folio_wait_writeback(folio);
 
-	first_block = (unsigned long)index <<
-		(PAGE_SHIFT - inode->i_blkbits);
-	if (page_has_buffers(page)) {
-		struct buffer_head *bh;
-
-		bh = nilfs_page_get_nth_block(page, block - first_block);
+	bh = folio_buffers(folio);
+	if (bh) {
+		unsigned long first_block = index <<
+				(PAGE_SHIFT - inode->i_blkbits);
+		bh = get_nth_bh(bh, block - first_block);
 		nilfs_forget_buffer(bh);
 	}
-	still_dirty = PageDirty(page);
-	unlock_page(page);
-	put_page(page);
+	still_dirty = folio_test_dirty(folio);
+	folio_unlock(folio);
+	folio_put(folio);
 
 	if (still_dirty ||
 	    invalidate_inode_pages2_range(inode->i_mapping, index, index) != 0)
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
