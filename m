Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 864087CB44F
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxc-0006Vv-Rb;
	Mon, 16 Oct 2023 20:13:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwI-0006Pu-0y
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cRIJK0L477qKsa1RgyOitdDzKo1JzlVVyIWmDMpqQlE=; b=fvyZ43CdPmu9q2KgzjjiGtvtFr
 i14dYxmbLL3y8iw8Ce8bWEktCtJywXG8pGERMi3Kk4+2dqj++n2b/7Ai0Ykm7PVRAqdwFhK5wJSe8
 PwmySrPP6AcGHaAIEIpVYL6oDkRW1wn5x9KD7YAd6yS4glwRt7uOczYTURwf+mV/gi48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cRIJK0L477qKsa1RgyOitdDzKo1JzlVVyIWmDMpqQlE=; b=SrzPR3AVuJ94NKBBTwBO7BTHDu
 mXrdza3owB2G4dJm7K25hn/s3OR5oiOT6hahX8e6MVxdp0OqWFqvqp3LnXq3vYysLOCTxd4poumlp
 XyabWmcY5cVY3WQrOChjRs0fnIW7iwP8aoCLxQp2qA+rmoaYKivXJbIP7Veao6pUcvw0=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwF-00H4x3-Vn for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=cRIJK0L477qKsa1RgyOitdDzKo1JzlVVyIWmDMpqQlE=; b=LjMtLS0ERzR4VCVVkxcf6vJ6LF
 Px6ulMUEkd6ZzHya8NiEL8edOoEoQJS8UZaUMcRwm8/nxOrAgs8OInub+7LrICNMHwVoLkrKiLDeL
 WdPjzpRvQOduk3ZJ9Wmd6SM/9p9ijGVC0fPPgI3XzMrLB9cZTLWcsnxnMkZ513AZLCsHS4PDRRXuw
 iOhiosd1Fn/3UFBJRKKc/ZGH5PyR9rYwGeowOhAE72JA5BGVqC+NR4WHjeGfRegkTPt5GnIaVH+kr
 hVRJwvb+ezVoszgMrk+Z71lO+vnB7FOy2vsaFbg0BJ4Y2pbucq4kYMHJDgqLcPwrqP3JpAtOs43VA
 d79x7hXw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085ae-58; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:53 +0100
Message-Id: <20231016201114.1928083-7-willy@infradead.org>
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
 Content preview:  Use the folio APIs,
 removing numerous hidden calls to compound_head().
 Also remove the stale comment about the page being looked up if it's NULL.
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> Reviewed-by:
 Andreas Gruenbacher <agruenba@redhat.com> --- fs/gfs2/bmap.c | 48
 +++++++++++++++++++++++ 1 file chan [...] 
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
X-Headers-End: 1qsTwF-00H4x3-Vn
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 06/27] gfs2: Convert inode unstuffing to
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
 Andreas Gruenbacher <agruenba@redhat.com>,
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
Reviewed-by: Andreas Gruenbacher <agruenba@redhat.com>
---
 fs/gfs2/bmap.c | 48 +++++++++++++++++++++++-------------------------
 1 file changed, 23 insertions(+), 25 deletions(-)

diff --git a/fs/gfs2/bmap.c b/fs/gfs2/bmap.c
index f1d92e4d1538..f7ea1af9d842 100644
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
