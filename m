Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2057A5B04
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGr-0007q6-7F;
	Tue, 19 Sep 2023 07:35:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiR-0005GN-PU
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1TQFktAQGh0zDqA+GJQVLyWb3smQ1H0QN8aDeY770F0=; b=M/SwTWWRNsCOJ12YXV42lEHH7T
 ynQJCocR0LSu4uSROueWXm1ucv38Ex+sJ/4OatFGVh4J8JRTLKGDBc8pXyAf1aJhE4AMj10rxTp2K
 lNMH0nX2VUHfpRkG9d+pvjdbeh0uJYKn6h2qiNhEnga8bMjTNuXZWb+pw+0IpZpE1NMw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1TQFktAQGh0zDqA+GJQVLyWb3smQ1H0QN8aDeY770F0=; b=R1mXw7HZzDMcrZNeFfV0kZHCkf
 6Wkx/LH4iCTNhisRS6E/QsU4cE4/lOy8uz+/12GwQ9a3EDIURSTuEardjyiLkGAqm/OYIee1/NOlI
 uIoNP770GBQMrdBxV2YK6Rj2Wp1dVYy1hFoyKHGZeMBwLqPiP5751ak9AVvAlckB4l9I=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiM-00E5fv-VU for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=1TQFktAQGh0zDqA+GJQVLyWb3smQ1H0QN8aDeY770F0=; b=PxHiF6cktFd/+CJWwFu4VfrtIM
 PU0/626kh0C0ccZjcHWLIbaeSrDKQSavppRX9DRoE01nHmzI0HlowA9/DqHak5U+KPUXKjQOdJsMs
 ZdwfK6M84AaKO9czXr1z7XfamvIK16jDsF+5FVERFeDeCp8meD7EpMpnB1ZpZfBurluqv/wWqIQ9i
 QrQ+B/blKNm3erh45AQnHTEWTOxqp2w0H0iFhdgfFEPkO9daOJuNfy5L7uoCrQdv+ULCTdbsbDSn0
 VsYB0iwbBHo3ho/jG4t1edo/ibYE4JPT0lVSSVCNpJvJ4DFaYIkEKiH/kWvwbRREVnyH8qtiMOMoD
 4z+k4GNw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi3-00FFl8-RD; Tue, 19 Sep 2023 04:51:39 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:22 +0100
Message-Id: <20230919045135.3635437-14-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove a number of folio->page->folio conversions.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/nilfs2/mdt.c | 16
 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1qiSiM-00E5fv-VU
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 13/26] nilfs2: Convert
 nilfs_mdt_get_frozen_buffer to use a folio
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
 fs/nilfs2/mdt.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/fs/nilfs2/mdt.c b/fs/nilfs2/mdt.c
index 11b7cf4acc92..7b754e6494d7 100644
--- a/fs/nilfs2/mdt.c
+++ b/fs/nilfs2/mdt.c
@@ -592,17 +592,19 @@ nilfs_mdt_get_frozen_buffer(struct inode *inode, struct buffer_head *bh)
 {
 	struct nilfs_shadow_map *shadow = NILFS_MDT(inode)->mi_shadow;
 	struct buffer_head *bh_frozen = NULL;
-	struct page *page;
+	struct folio *folio;
 	int n;
 
-	page = find_lock_page(shadow->inode->i_mapping, bh->b_folio->index);
-	if (page) {
-		if (page_has_buffers(page)) {
+	folio = filemap_lock_folio(shadow->inode->i_mapping,
+			bh->b_folio->index);
+	if (!IS_ERR(folio)) {
+		bh_frozen = folio_buffers(folio);
+		if (bh_frozen) {
 			n = bh_offset(bh) >> inode->i_blkbits;
-			bh_frozen = nilfs_page_get_nth_block(page, n);
+			bh_frozen = get_nth_bh(bh_frozen, n);
 		}
-		unlock_page(page);
-		put_page(page);
+		folio_unlock(folio);
+		folio_put(folio);
 	}
 	return bh_frozen;
 }
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
