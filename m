Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 309A07CB43B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxS-0006S0-0a;
	Mon, 16 Oct 2023 20:12:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwE-00031E-LG
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fHCsSWRUgDBNiwaJwQche5AKchlaxIaHTN5XktltH8A=; b=ZpxGHUGIeTUWnKhClIWatl7lNq
 mLrAbDJ/Gw4p3UB16qjdfiHtJ6ieSIiRZEpQF5isrtkU6aK8e+Tj14rPWna746Za9tLSQQ4wpqrvk
 iJudJq/aU/0mmjc98uANqJl+DxR1qXtsLXSZMIo9+7rBtnubXicMQhkpAoCrGGnCjfR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fHCsSWRUgDBNiwaJwQche5AKchlaxIaHTN5XktltH8A=; b=PdTmZ+Llau8A7trYV4jbOWnaxv
 r212rh2zqNSqwNYVUz8C0h/t33zJWEXGlIZTl4tethkTSN072b7BHw4UyHuALfReuDR0/Vp1y9UoT
 iBmjUIwbN9xM8Bbtm/od1GoEe0po2rdT/Lf3eqeFOOQ5UwZx15jZ5qDyWTrLYGlGtxdk=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwB-00H4wc-Ae for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=fHCsSWRUgDBNiwaJwQche5AKchlaxIaHTN5XktltH8A=; b=ldsGSnfH8krk8MAnKmgCzBDhIt
 xlw0zw05IgJ1MjU0N/FlXSalhrKzPcCDZ2IM1mjF9rwPS47kR+Pl2dCNRPiPh6/+k49SBFoyG5S/g
 ssrZr4uqgQLTP/0Xqf13vulo7Y3R5z4HBEySLjbJMTHghtc3gsSBDtaWah79sdtXqJ3ItCMwOMkK/
 QMDo/UVx4shqGWFSTOa3W9ZglknNXgUL9Pp8MwP68136sgksh8HJMvZhc2KFUKTKmu3uwl+MJEj0q
 jtGCG0Xk7LBRYg60wInVzNmFmGbrckEyydxXHXsykZq8UTWZf2Ds9hQHNFwQ5Rh+nCev+V6UMzl7J
 vqvy7rVQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085bG-U8; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:59 +0100
Message-Id: <20231016201114.1928083-13-willy@infradead.org>
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
 Content preview:  Both callers already have a folio, so pass it in and use it
 directly. Removes a lot of hidden calls to compound_head(). Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> Acked-by: Ryusuke Konishi
 <konishi.ryusuke@gmail.com>
 --- fs/nilfs2/page.c | 50 +++++++++++++++++++++++++ mm/util.c [...] 
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
X-Headers-End: 1qsTwB-00H4wc-Ae
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 12/27] nilfs2: Convert nilfs_copy_page()
 to nilfs_copy_folio()
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
 ntfs3@lists.linux.dev, Ryusuke Konishi <konishi.ryusuke@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Both callers already have a folio, so pass it in and use it directly.
Removes a lot of hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>
---
 fs/nilfs2/page.c | 50 +++++++++++++++++++++++++-----------------------
 mm/util.c        |  1 +
 2 files changed, 27 insertions(+), 24 deletions(-)

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
diff --git a/mm/util.c b/mm/util.c
index 6eddd891198e..aa01f6ea5a75 100644
--- a/mm/util.c
+++ b/mm/util.c
@@ -799,6 +799,7 @@ void folio_copy(struct folio *dst, struct folio *src)
 		cond_resched();
 	}
 }
+EXPORT_SYMBOL(folio_copy);
 
 int sysctl_overcommit_memory __read_mostly = OVERCOMMIT_GUESS;
 int sysctl_overcommit_ratio __read_mostly = 50;
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
