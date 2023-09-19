Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E99127A5B14
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGz-0007x5-2H;
	Tue, 19 Sep 2023 07:35:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiR-0006G3-NG
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+YBw7XPXspc4BRLBjqz7GsBiioMj9hvjismckYKmXec=; b=Tgx1ina/HRS62znzaYVnnq+z9O
 WzEoKwSZVxWJFCczaQhpdmwV/PYfYgZbrU0EZQRGkt6g11ptwSzCVu2SuY5u0rew9Diba51CBmiDm
 Ljx4YQwlkzbKmGQ7o5YeEiikBvJGyR7q7MqDFbfUyz6OrC0ZCkh7SCUP83N3KPW7p8sQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+YBw7XPXspc4BRLBjqz7GsBiioMj9hvjismckYKmXec=; b=OPDADfohFvtl9d6YpPfuIonxLo
 x6afZghS7MrTTBmipog+iExz8loVmjq+ocxfpNjRJLXTIbloXCJM6Mvf23d/SI9eSBilVMrbHSYfj
 FsrpyGLgPhxD+Zr3o0L3wsk2UfjkU45EuwmnvSrRXA70X26ia4gCY6bMB/Sy4meDXvak=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiN-00084L-UH for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=+YBw7XPXspc4BRLBjqz7GsBiioMj9hvjismckYKmXec=; b=ppqszN0mwK3zh8tqbJY6MTDvp5
 1CXrtZ4Q5igFYGx08wqB2yE98fW3BmAfa/tahG6/6/qv9PAL2aa1qXz11Q9wixYhw6OxTnNX+fHvx
 ByRhoZvIe7OJqxH05vG0XbFwaGiIPhGEuPNuSDZF/76Ymv3o5RIHS6WaKbEHyAu3Y68KPLr25svdz
 1Yo/gYYlS00JhJNZX8N+9jcTanYB+r+TAN6/bm4YfQneF/p5g45HTNdCMB1Qp0rdr9Pv8dm1xOG76
 kOJUy7xcIIenqEGYDUjfx2QfJGRFEmU0j8CaZb9v3TQa4rLAjp5NuBDiDXpipKitTDq81NA45aTIg
 AKVLYGeQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi3-00FFku-Fy; Tue, 19 Sep 2023 04:51:39 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:20 +0100
Message-Id: <20230919045135.3635437-12-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Both callers already have a folio, so pass it in and use it
 directly. Removes a lot of hidden calls to compound_head(). Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/nilfs2/page.c | 50
 +++++++++++++++++++++++++
 1 file changed, 26 insertions(+), 24 deletions(-) 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qiSiN-00084L-UH
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 11/26] nilfs2: Convert nilfs_copy_page() to
 nilfs_copy_folio()
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

Both callers already have a folio, so pass it in and use it directly.
Removes a lot of hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/nilfs2/page.c | 50 +++++++++++++++++++++++++-----------------------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/fs/nilfs2/page.c b/fs/nilfs2/page.c
index 1c075bd906c9..696215d899bf 100644
--- a/fs/nilfs2/page.c
+++ b/fs/nilfs2/page.c
@@ -184,30 +184,32 @@ void nilfs_page_bug(struct page *page)
 }
 
 /**
- * nilfs_copy_page -- copy the page with buffers
- * @dst: destination page
- * @src: source page
- * @copy_dirty: flag whether to copy dirty states on the page's buffer heads.
+ * nilfs_copy_folio -- copy the folio with buffers
+ * @dst: destination folio
+ * @src: source folio
+ * @copy_dirty: flag whether to copy dirty states on the folio's buffer heads.
  *
- * This function is for both data pages and btnode pages.  The dirty flag
- * should be treated by caller.  The page must not be under i/o.
- * Both src and dst page must be locked
+ * This function is for both data folios and btnode folios.  The dirty flag
+ * should be treated by caller.  The folio must not be under i/o.
+ * Both src and dst folio must be locked
  */
-static void nilfs_copy_page(struct page *dst, struct page *src, int copy_dirty)
+static void nilfs_copy_folio(struct folio *dst, struct folio *src,
+		bool copy_dirty)
 {
 	struct buffer_head *dbh, *dbufs, *sbh;
 	unsigned long mask = NILFS_BUFFER_INHERENT_BITS;
 
-	BUG_ON(PageWriteback(dst));
+	BUG_ON(folio_test_writeback(dst));
 
-	sbh = page_buffers(src);
-	if (!page_has_buffers(dst))
-		create_empty_buffers(dst, sbh->b_size, 0);
+	sbh = folio_buffers(src);
+	dbh = folio_buffers(dst);
+	if (!dbh)
+		dbh = folio_create_empty_buffers(dst, sbh->b_size, 0);
 
 	if (copy_dirty)
 		mask |= BIT(BH_Dirty);
 
-	dbh = dbufs = page_buffers(dst);
+	dbufs = dbh;
 	do {
 		lock_buffer(sbh);
 		lock_buffer(dbh);
@@ -218,16 +220,16 @@ static void nilfs_copy_page(struct page *dst, struct page *src, int copy_dirty)
 		dbh = dbh->b_this_page;
 	} while (dbh != dbufs);
 
-	copy_highpage(dst, src);
+	folio_copy(dst, src);
 
-	if (PageUptodate(src) && !PageUptodate(dst))
-		SetPageUptodate(dst);
-	else if (!PageUptodate(src) && PageUptodate(dst))
-		ClearPageUptodate(dst);
-	if (PageMappedToDisk(src) && !PageMappedToDisk(dst))
-		SetPageMappedToDisk(dst);
-	else if (!PageMappedToDisk(src) && PageMappedToDisk(dst))
-		ClearPageMappedToDisk(dst);
+	if (folio_test_uptodate(src) && !folio_test_uptodate(dst))
+		folio_mark_uptodate(dst);
+	else if (!folio_test_uptodate(src) && folio_test_uptodate(dst))
+		folio_clear_uptodate(dst);
+	if (folio_test_mappedtodisk(src) && !folio_test_mappedtodisk(dst))
+		folio_set_mappedtodisk(dst);
+	else if (!folio_test_mappedtodisk(src) && folio_test_mappedtodisk(dst))
+		folio_clear_mappedtodisk(dst);
 
 	do {
 		unlock_buffer(sbh);
@@ -269,7 +271,7 @@ int nilfs_copy_dirty_pages(struct address_space *dmap,
 			NILFS_PAGE_BUG(&folio->page,
 				       "found empty page in dat page cache");
 
-		nilfs_copy_page(&dfolio->page, &folio->page, 1);
+		nilfs_copy_folio(dfolio, folio, true);
 		filemap_dirty_folio(folio_mapping(dfolio), dfolio);
 
 		folio_unlock(dfolio);
@@ -314,7 +316,7 @@ void nilfs_copy_back_pages(struct address_space *dmap,
 		if (!IS_ERR(dfolio)) {
 			/* overwrite existing folio in the destination cache */
 			WARN_ON(folio_test_dirty(dfolio));
-			nilfs_copy_page(&dfolio->page, &folio->page, 0);
+			nilfs_copy_folio(dfolio, folio, false);
 			folio_unlock(dfolio);
 			folio_put(dfolio);
 			/* Do we not need to remove folio from smap here? */
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
