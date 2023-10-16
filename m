Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4C87CB43A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxT-0006SA-RY;
	Mon, 16 Oct 2023 20:13:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwF-00031K-H5
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hkFmO69yPLA3lrHUTcCDRb/XpyIM9MLoIhqVDeYMT6U=; b=a517dry13kopN3W/zojM/2g1ZZ
 H454PSyZMjBFa1PWi9ktuj1zTrMggIhsJyXr6y3SJoxuxcafsrdj5aKatI/bCTw1dZLBdXb7foKgT
 z023glPIWctDElCOLpOiicWPyv9MYm6mHAEL3vMIj75OxnuNv+QE3fk+n5ReXM3Of2Gk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hkFmO69yPLA3lrHUTcCDRb/XpyIM9MLoIhqVDeYMT6U=; b=QZnyElWu1IHdeK8oF0YvWKtL38
 OatsGpuiNueSlsQMoj4nn3heIw93YqfGMIPjES5lfjvHq0kMUukx68KTTCH+TZVNT2v3+wdoqZXu2
 8CASTg55WEdwJ04rsA+/UktDk4+UeDF/tpCRv2sXDGf88IkhaljRKWaK79gXaotdpv5M=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwB-00H4wd-DU for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=hkFmO69yPLA3lrHUTcCDRb/XpyIM9MLoIhqVDeYMT6U=; b=dyibn8wk9YnVZbYsz3Lm7UaEUX
 3cvmVMuAX8fTYmL+3PgVglDlVv5YZOzlVEwnLwnLGPDbS7yvvcDCQt0sbhvRLALYwrvW3IPHd8fj8
 YN2jxmzcOTAZt/CDrVVxW8+E7sp6Hi8ApI1CoOQA7MqtpadNHUzSaqo0MQWtiT2PfUd6MlheSZfBF
 21aGISlFg5iTBUfA6Dg2JzDKM7gslD0mYyzgSZj2Deq+c+UpmxTgF6sKufuZQNxuhzsVoqBxqGO6I
 N7HPIl9G0hTKsqYFq8mJzQPJ/JOmdKn7rEvcF0pnmtDESno9U7x2sImjw7qPiLdUFeqjS13rH+rYQ
 oqNJZ3ZQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085b4-KM; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:57 +0100
Message-Id: <20231016201114.1928083-11-willy@infradead.org>
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
 Content preview: Remove a number of folio->page->folio conversions.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> Acked-by: Ryusuke Konishi
 <konishi.ryusuke@gmail.com>
 --- fs/nilfs2/mdt.c | 20 +++++++++++--------- 1 file changed, 11 insertions(+),
 9 del [...] 
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
X-Headers-End: 1qsTwB-00H4wd-DU
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 10/27] nilfs2: Convert
 nilfs_mdt_freeze_buffer to use a folio
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

Remove a number of folio->page->folio conversions.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>
---
 fs/nilfs2/mdt.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/fs/nilfs2/mdt.c b/fs/nilfs2/mdt.c
index 19c8158605ed..db2260d6e44d 100644
--- a/fs/nilfs2/mdt.c
+++ b/fs/nilfs2/mdt.c
@@ -560,17 +560,19 @@ int nilfs_mdt_freeze_buffer(struct inode *inode, struct buffer_head *bh)
 {
 	struct nilfs_shadow_map *shadow = NILFS_MDT(inode)->mi_shadow;
 	struct buffer_head *bh_frozen;
-	struct page *page;
+	struct folio *folio;
 	int blkbits = inode->i_blkbits;
 
-	page = grab_cache_page(shadow->inode->i_mapping, bh->b_folio->index);
-	if (!page)
-		return -ENOMEM;
+	folio = filemap_grab_folio(shadow->inode->i_mapping,
+			bh->b_folio->index);
+	if (IS_ERR(folio))
+		return PTR_ERR(folio);
 
-	if (!page_has_buffers(page))
-		create_empty_buffers(page, 1 << blkbits, 0);
+	bh_frozen = folio_buffers(folio);
+	if (!bh_frozen)
+		bh_frozen = folio_create_empty_buffers(folio, 1 << blkbits, 0);
 
-	bh_frozen = nilfs_page_get_nth_block(page, bh_offset(bh) >> blkbits);
+	bh_frozen = get_nth_bh(bh_frozen, bh_offset(bh) >> blkbits);
 
 	if (!buffer_uptodate(bh_frozen))
 		nilfs_copy_buffer(bh_frozen, bh);
@@ -582,8 +584,8 @@ int nilfs_mdt_freeze_buffer(struct inode *inode, struct buffer_head *bh)
 		brelse(bh_frozen); /* already frozen */
 	}
 
-	unlock_page(page);
-	put_page(page);
+	folio_unlock(folio);
+	folio_put(folio);
 	return 0;
 }
 
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
