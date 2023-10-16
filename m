Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 815977CB45D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxg-0006au-V6;
	Mon, 16 Oct 2023 20:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwP-0006QD-1Y
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1MRD3/MDyXo+/XqOlq/B5TtIgREACynS4klWCDOin7o=; b=H0HO72UjGWXclY/XsDTQC89v1L
 pESW6ZnevbeX2+gjhVV4TMdCjCBLZwtktIJxnF9rtN7pnhtje4yyml++Do/XCUfAqezvBYVObvyj5
 iGXk99jEYz7IVDRGIhuXkdKpROkHoB3sCi9OT2sXB577kVqlfPdKIml9snpti97It7CE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1MRD3/MDyXo+/XqOlq/B5TtIgREACynS4klWCDOin7o=; b=P5slyyBIWr55jBewamNLpQEn2r
 2sEz7yggbkoHicK8DZL67OqDjIax8XBdjY5UtW5SHGUoJJZ5aXu5OD37GHdGn+4DSSarpOylhjgNd
 uNwYdruciZehiD9Bwd3egIMug6Nvt+18YWA2pjpzRsrUmNRFJ6Y8S4pGEXzTFoO0ZLgc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063t-1R for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=1MRD3/MDyXo+/XqOlq/B5TtIgREACynS4klWCDOin7o=; b=F6beEH1hsFbpnEX6mH5J+/m/Qg
 WzIDy18lFCUyXAfnl6LKWrxfsN1CiVBS7YS8hD7F75LWuAQhlPSvLtE7Vf1rCMud58l8hopJpm5X3
 XmfJaHI5B0GjIw1LoCheBWV5ZliP1tGc0zB/95whyQxPLSOJv3StefjuPAMOv6BRoI2/QbR2sVj69
 5ZwdtrWaAnQYpANja0fycQcWPpgPSsiT8RR9tFk1uU6UyLYXe6ev4C46Ku9N33dOJs2gi/El0sXPM
 QyzxkoGusiCPgWiddmYkFKFpavqEWcra1cT6cu8NY5yGvyOH3EMQ8VodshzLkg3CrJrb3faXplMbU
 ne7P8hjQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085av-GT; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:56 +0100
Message-Id: <20231016201114.1928083-10-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove several folio->page->folio conversions. Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> Reviewed-by: Andreas Gruenbacher
 <agruenba@redhat.com> --- fs/gfs2/quota.c | 37 +++++++++++++++++++ 1 file
 changed, 19 in [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1qsTwE-00063t-1R
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 09/27] gfs2: Convert
 gfs2_write_buf_to_page() to use a folio
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

Remove several folio->page->folio conversions.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Andreas Gruenbacher <agruenba@redhat.com>
---
 fs/gfs2/quota.c | 37 +++++++++++++++++++------------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/fs/gfs2/quota.c b/fs/gfs2/quota.c
index 6affd261a754..e45654ee4f4d 100644
--- a/fs/gfs2/quota.c
+++ b/fs/gfs2/quota.c
@@ -760,7 +760,7 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
 	struct gfs2_inode *ip = GFS2_I(sdp->sd_quota_inode);
 	struct inode *inode = &ip->i_inode;
 	struct address_space *mapping = inode->i_mapping;
-	struct page *page;
+	struct folio *folio;
 	struct buffer_head *bh;
 	u64 blk;
 	unsigned bsize = sdp->sd_sb.sb_bsize, bnum = 0, boff = 0;
@@ -769,15 +769,15 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
 	blk = index << (PAGE_SHIFT - sdp->sd_sb.sb_bsize_shift);
 	boff = off % bsize;
 
-	page = grab_cache_page(mapping, index);
-	if (!page)
-		return -ENOMEM;
-	if (!page_has_buffers(page))
-		create_empty_buffers(page, bsize, 0);
+	folio = filemap_grab_folio(mapping, index);
+	if (IS_ERR(folio))
+		return PTR_ERR(folio);
+	bh = folio_buffers(folio);
+	if (!bh)
+		bh = folio_create_empty_buffers(folio, bsize, 0);
 
-	bh = page_buffers(page);
-	for(;;) {
-		/* Find the beginning block within the page */
+	for (;;) {
+		/* Find the beginning block within the folio */
 		if (pg_off >= ((bnum * bsize) + bsize)) {
 			bh = bh->b_this_page;
 			bnum++;
@@ -790,9 +790,10 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
 				goto unlock_out;
 			/* If it's a newly allocated disk block, zero it */
 			if (buffer_new(bh))
-				zero_user(page, bnum * bsize, bh->b_size);
+				folio_zero_range(folio, bnum * bsize,
+						bh->b_size);
 		}
-		if (PageUptodate(page))
+		if (folio_test_uptodate(folio))
 			set_buffer_uptodate(bh);
 		if (bh_read(bh, REQ_META | REQ_PRIO) < 0)
 			goto unlock_out;
@@ -808,17 +809,17 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
 		break;
 	}
 
-	/* Write to the page, now that we have setup the buffer(s) */
-	memcpy_to_page(page, off, buf, bytes);
-	flush_dcache_page(page);
-	unlock_page(page);
-	put_page(page);
+	/* Write to the folio, now that we have setup the buffer(s) */
+	memcpy_to_folio(folio, off, buf, bytes);
+	flush_dcache_folio(folio);
+	folio_unlock(folio);
+	folio_put(folio);
 
 	return 0;
 
 unlock_out:
-	unlock_page(page);
-	put_page(page);
+	folio_unlock(folio);
+	folio_put(folio);
 	return -EIO;
 }
 
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
