Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1750C7A5B01
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGo-0007oO-Bs;
	Tue, 19 Sep 2023 07:35:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiO-0005yS-S8
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3+ygHFl8VBE//i+jIFbzwz27nrHn7+CKZunR4nMah8o=; b=k+RuxA3jhUqngwe67LPGBUopXc
 2zt/ZhtQnt6MuFEsY9XlWUmrcbcLKokPuJeKxqI0uTQlIa7NxbN4NEFwMMjgsCbL//6u5850ii+Tz
 oXPB/3qrR8WOTe+7GMDJGuguzqIm5nns0jPNF/Yw253kK1zL24xpXcBpbPa44hCubErI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3+ygHFl8VBE//i+jIFbzwz27nrHn7+CKZunR4nMah8o=; b=dOKtAfvwCdv9ThmtpZb4aT8I7H
 3NrvMaeRZwrSTQHspddSGHyDETTElTteoW6ZBHy8ogsEjo4W9F2a479PTOVEHRqrKvAu7HF+kPp3q
 6O8sJtw7UuOpxJ5R9QqAmatbObruz+g9Foh77hFpqk66qlv00gItZxqZBORrtAWYHM+k=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiM-00E5fq-Np for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3+ygHFl8VBE//i+jIFbzwz27nrHn7+CKZunR4nMah8o=; b=a0R1TMwjL7kTjAJn7QXnrOIurK
 Jk/KsvVgMWmyNgxqWN5vSm+fsVeErc+p2SA6/+JKtl/gEKJ+0QYncbcX+TH5IXWFm1kSYWvPuG2ip
 OajcUmwdb2Q1jdRy96OBqSI9A3X6nYI2Gne1jBNmqMZ6G5e8vDS82vesYeCBU0BKkKmDnaXSuLJHc
 F7rpZc3aYOtL9zGBN5ZI0SUwLCUcCJ640FT9Vttt57wR7CXyJ/CsYUcOsChqRuHWhIJUulzwRwF2F
 onoE1mEjpIOAFxCaBkVNUPExG2E40+aJJmfa3dlcBJgvTjZj82jejSKPCVarzwlrbvnhwKs75NSoo
 nKz21X2g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi3-00FFkV-21; Tue, 19 Sep 2023 04:51:39 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:17 +0100
Message-Id: <20230919045135.3635437-9-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove several folio->page->folio conversions. Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/gfs2/quota.c | 37
 +++++++++++++++++++
 1 file changed, 19 insertions(+), 18 deletions(-) 
 Content analysis details:   (1.1 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qiSiM-00E5fq-Np
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:39 +0000
Subject: [Linux-ntfs-dev] [PATCH 08/26] gfs2: Convert
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
---
 fs/gfs2/quota.c | 37 +++++++++++++++++++------------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/fs/gfs2/quota.c b/fs/gfs2/quota.c
index 171b2713d2e5..0ee4865ebdca 100644
--- a/fs/gfs2/quota.c
+++ b/fs/gfs2/quota.c
@@ -736,7 +736,7 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
 	struct gfs2_inode *ip = GFS2_I(sdp->sd_quota_inode);
 	struct inode *inode = &ip->i_inode;
 	struct address_space *mapping = inode->i_mapping;
-	struct page *page;
+	struct folio *folio;
 	struct buffer_head *bh;
 	u64 blk;
 	unsigned bsize = sdp->sd_sb.sb_bsize, bnum = 0, boff = 0;
@@ -745,15 +745,15 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
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
@@ -766,9 +766,10 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
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
@@ -784,17 +785,17 @@ static int gfs2_write_buf_to_page(struct gfs2_sbd *sdp, unsigned long index,
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
