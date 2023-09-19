Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3607A5B18
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVH0-0007yt-PC;
	Tue, 19 Sep 2023 07:35:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiV-0006GG-92
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L+I9DvSof6rF0/+WfFEflzRDNGmPAVF9Uq3AN/O81lI=; b=eXRERKyAEr8tnYRy8FPt1Lz1y5
 L84ulX3Ia1FI1q7kjcVQjFvfwm5b9oKEOxblNKUjNaYhFBiO0hR+yPp2zJAzFAnaEKGA5H53GXvSo
 kHPc+I59u7SYxFzWaaTVCEPV5Gkdiw7wem1Vydl15DoUtFYb6Iy+603Ud/C2Ni3BWMtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L+I9DvSof6rF0/+WfFEflzRDNGmPAVF9Uq3AN/O81lI=; b=MpcfZPd2IhZCLmtT85STugQxpc
 NK6AFu450qZwCYcguXC9uLqjP+7fhC/X4TxYO8D50iqxzQcxk6j7PlrSJF6j4Nd0ABvfq41OO4R72
 HiVss0kOm96JoG6AHsbEPuA/8SBRhFwfitaZwUEtUBknbdVEZI7mTQ0Ydg6Dn977x9q0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiU-00E5gl-Mi for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=L+I9DvSof6rF0/+WfFEflzRDNGmPAVF9Uq3AN/O81lI=; b=ZoolnVe9feCT2roK+dhk59/hXY
 cLI5lMgwQqWFbGiz9gIVEo4N4j6jhdyd6QmFIGOnzhoqFR7+/lQXH9aqYzakU0QQ5iJE7isb//mwr
 6QPxcIpH7vIbJc5WWq659v5+WaJWEMGjbQY8Jb3devyaanuVVW1I9jdEqRFuo1cK1WbJw/Z2P4dYe
 b1JJTAoBgefsiiZD5lyAvr+OSD1s30EXeaDKfZOO/S7TQ23el7XPbweZDrNaEtcUglnIu4baYOV0g
 di5K5ozKnSP3g5HoCVIvCZCDFqf54XIxoTP7qBccZbF9s0aCMTj5r0hmqO6LbIGKuCMvuYrUE6FSH
 iwZCXvQA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi2-00FFkP-EH; Tue, 19 Sep 2023 04:51:38 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:14 +0100
Message-Id: <20230919045135.3635437-6-willy@infradead.org>
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
 Content preview:  Use the folio APIs,
 removing numerous hidden calls to compound_head().
 Also remove the stale comment about the page being looked up if it's NULL.
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/gfs2/bmap.c
 | 48 +++++++++++++++++++++++ 1 file changed, 23 insertions(+), 25 deletions(-)
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
X-Headers-End: 1qiSiU-00E5gl-Mi
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 05/26] gfs2: Convert inode unstuffing to
 use a folio
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

Use the folio APIs, removing numerous hidden calls to compound_head().
Also remove the stale comment about the page being looked up if it's NULL.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/gfs2/bmap.c | 48 +++++++++++++++++++++++-------------------------
 1 file changed, 23 insertions(+), 25 deletions(-)

diff --git a/fs/gfs2/bmap.c b/fs/gfs2/bmap.c
index ef7017fb6951..247d2c16593c 100644
--- a/fs/gfs2/bmap.c
+++ b/fs/gfs2/bmap.c
@@ -43,53 +43,51 @@ struct metapath {
 static int punch_hole(struct gfs2_inode *ip, u64 offset, u64 length);
 
 /**
- * gfs2_unstuffer_page - unstuff a stuffed inode into a block cached by a page
+ * gfs2_unstuffer_folio - unstuff a stuffed inode into a block cached by a folio
  * @ip: the inode
  * @dibh: the dinode buffer
  * @block: the block number that was allocated
- * @page: The (optional) page. This is looked up if @page is NULL
+ * @folio: The folio.
  *
  * Returns: errno
  */
-
-static int gfs2_unstuffer_page(struct gfs2_inode *ip, struct buffer_head *dibh,
-			       u64 block, struct page *page)
+static int gfs2_unstuffer_folio(struct gfs2_inode *ip, struct buffer_head *dibh,
+			       u64 block, struct folio *folio)
 {
 	struct inode *inode = &ip->i_inode;
 
-	if (!PageUptodate(page)) {
-		void *kaddr = kmap(page);
+	if (!folio_test_uptodate(folio)) {
+		void *kaddr = kmap_local_folio(folio, 0);
 		u64 dsize = i_size_read(inode);
  
 		memcpy(kaddr, dibh->b_data + sizeof(struct gfs2_dinode), dsize);
-		memset(kaddr + dsize, 0, PAGE_SIZE - dsize);
-		kunmap(page);
+		memset(kaddr + dsize, 0, folio_size(folio) - dsize);
+		kunmap_local(kaddr);
 
-		SetPageUptodate(page);
+		folio_mark_uptodate(folio);
 	}
 
 	if (gfs2_is_jdata(ip)) {
-		struct buffer_head *bh;
+		struct buffer_head *bh = folio_buffers(folio);
 
-		if (!page_has_buffers(page))
-			create_empty_buffers(page, BIT(inode->i_blkbits),
-					     BIT(BH_Uptodate));
+		if (!bh)
+			bh = folio_create_empty_buffers(folio,
+				BIT(inode->i_blkbits), BIT(BH_Uptodate));
 
-		bh = page_buffers(page);
 		if (!buffer_mapped(bh))
 			map_bh(bh, inode->i_sb, block);
 
 		set_buffer_uptodate(bh);
 		gfs2_trans_add_data(ip->i_gl, bh);
 	} else {
-		set_page_dirty(page);
+		folio_mark_dirty(folio);
 		gfs2_ordered_add_inode(ip);
 	}
 
 	return 0;
 }
 
-static int __gfs2_unstuff_inode(struct gfs2_inode *ip, struct page *page)
+static int __gfs2_unstuff_inode(struct gfs2_inode *ip, struct folio *folio)
 {
 	struct buffer_head *bh, *dibh;
 	struct gfs2_dinode *di;
@@ -118,7 +116,7 @@ static int __gfs2_unstuff_inode(struct gfs2_inode *ip, struct page *page)
 					      dibh, sizeof(struct gfs2_dinode));
 			brelse(bh);
 		} else {
-			error = gfs2_unstuffer_page(ip, dibh, block, page);
+			error = gfs2_unstuffer_folio(ip, dibh, block, folio);
 			if (error)
 				goto out_brelse;
 		}
@@ -157,17 +155,17 @@ static int __gfs2_unstuff_inode(struct gfs2_inode *ip, struct page *page)
 int gfs2_unstuff_dinode(struct gfs2_inode *ip)
 {
 	struct inode *inode = &ip->i_inode;
-	struct page *page;
+	struct folio *folio;
 	int error;
 
 	down_write(&ip->i_rw_mutex);
-	page = grab_cache_page(inode->i_mapping, 0);
-	error = -ENOMEM;
-	if (!page)
+	folio = filemap_grab_folio(inode->i_mapping, 0);
+	error = PTR_ERR(folio);
+	if (IS_ERR(folio))
 		goto out;
-	error = __gfs2_unstuff_inode(ip, page);
-	unlock_page(page);
-	put_page(page);
+	error = __gfs2_unstuff_inode(ip, folio);
+	folio_unlock(folio);
+	folio_put(folio);
 out:
 	up_write(&ip->i_rw_mutex);
 	return error;
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
