Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C996B7CB45E
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxh-0006bI-8f;
	Mon, 16 Oct 2023 20:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwR-0006Vl-4N
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gXwo5POojlfzHGFPYZRyYtvPtwVY0DoWyticsN4hNno=; b=dFOeEbEQvexQvFFjtCzOtZmkVv
 tocngvYlQ7+HlsckYKbK4hcZWkp2AhPpD8BJL5Y49J3VUuSbJwxdutuzEphYvtd0nuczy+PWCw4/K
 BqXJNle1ROWg8eUqtj7aBkAbY2MXe1Uc7kkIFqOJKkV47zzTo+VyzbKZ8QypX6lb8MVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gXwo5POojlfzHGFPYZRyYtvPtwVY0DoWyticsN4hNno=; b=BcYfHoUROI3l7RM11B/se8sv/H
 O9ud+74mjB6QqhhYF+rRZ92IHjInGxDTP69KGrcmg9o/CNaiPxkhCsMwaqDLranNRyPPBBhOanjVc
 YOo7akpIhk5P2YyobpjYTvfr0vvpDoTmAMat+OWL7cOh+KYCUM8WpR5Gm1UHp2R8spxs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063s-1S for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=gXwo5POojlfzHGFPYZRyYtvPtwVY0DoWyticsN4hNno=; b=jvapso4hnLBZ129A2I9r/MGoKu
 +fqKNQfCcpXIuIuyTQQNA+A36skRya7TK5BhzgF8xsazEhoyKTQqOaUTkA3PHxYt9xEmUWPN2Pl3T
 Rzphl65eC1qmrCQsUtYaKLgpH25fAoALpbfd2Swh62Qz3t5hWRp9x6vPgV01VaLbI8tbsiHLyyqhM
 xJxTwsMq5E+AdLHZ04jSpHMVyEq8PU2sokmJlU1JPiUxBMe53V5cNv8V+hHMfdMmTqP1ptNECh4YF
 KO2+TwroNrv/AzDzSw8KUZVVf5CaQqLFyG0Hii58+7Z5n6Utg/rnELb4an9J19N+65kHVvCg0fMca
 +AATcieA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvr-0085cL-1I; Mon, 16 Oct 2023 20:11:19 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:07 +0100
Message-Id: <20231016201114.1928083-21-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use the folio API throughout,
 saving six hidden calls to compound_head().
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/ntfs3/file.c
 | 31 ++++++++++++++++ 1 file changed, 16 insertions(+), 15 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qsTwE-00063s-1S
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 20/27] ntfs3: Convert ntfs_zero_range()
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

Use the folio API throughout, saving six hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ntfs3/file.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/fs/ntfs3/file.c b/fs/ntfs3/file.c
index ad4a70b5d432..135af3340a19 100644
--- a/fs/ntfs3/file.c
+++ b/fs/ntfs3/file.c
@@ -187,7 +187,7 @@ static int ntfs_zero_range(struct inode *inode, u64 vbo, u64 vbo_to)
 	struct buffer_head *head, *bh;
 	u32 bh_next, bh_off, to;
 	sector_t iblock;
-	struct page *page;
+	struct folio *folio;
 
 	for (; idx < idx_end; idx += 1, from = 0) {
 		page_off = (loff_t)idx << PAGE_SHIFT;
@@ -195,16 +195,17 @@ static int ntfs_zero_range(struct inode *inode, u64 vbo, u64 vbo_to)
 						       PAGE_SIZE;
 		iblock = page_off >> inode->i_blkbits;
 
-		page = find_or_create_page(mapping, idx,
-					   mapping_gfp_constraint(mapping,
-								  ~__GFP_FS));
-		if (!page)
-			return -ENOMEM;
+		folio = __filemap_get_folio(mapping, idx,
+				FGP_LOCK | FGP_ACCESSED | FGP_CREAT,
+				mapping_gfp_constraint(mapping, ~__GFP_FS));
+		if (IS_ERR(folio))
+			return PTR_ERR(folio);
 
-		if (!page_has_buffers(page))
-			create_empty_buffers(page, blocksize, 0);
+		head = folio_buffers(folio);
+		if (!head)
+			head = folio_create_empty_buffers(folio, blocksize, 0);
 
-		bh = head = page_buffers(page);
+		bh = head;
 		bh_off = 0;
 		do {
 			bh_next = bh_off + blocksize;
@@ -220,14 +221,14 @@ static int ntfs_zero_range(struct inode *inode, u64 vbo, u64 vbo_to)
 			}
 
 			/* Ok, it's mapped. Make sure it's up-to-date. */
-			if (PageUptodate(page))
+			if (folio_test_uptodate(folio))
 				set_buffer_uptodate(bh);
 
 			if (!buffer_uptodate(bh)) {
 				err = bh_read(bh, 0);
 				if (err < 0) {
-					unlock_page(page);
-					put_page(page);
+					folio_unlock(folio);
+					folio_put(folio);
 					goto out;
 				}
 			}
@@ -237,10 +238,10 @@ static int ntfs_zero_range(struct inode *inode, u64 vbo, u64 vbo_to)
 		} while (bh_off = bh_next, iblock += 1,
 			 head != (bh = bh->b_this_page));
 
-		zero_user_segment(page, from, to);
+		folio_zero_segment(folio, from, to);
 
-		unlock_page(page);
-		put_page(page);
+		folio_unlock(folio);
+		folio_put(folio);
 		cond_resched();
 	}
 out:
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
