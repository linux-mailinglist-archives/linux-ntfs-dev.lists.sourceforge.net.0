Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EBE7CB45C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxg-0006aV-LF;
	Mon, 16 Oct 2023 20:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwQ-00031v-Oq
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+TzVgId1jqCDDfMgeb9joeaqRyXGlOXTb427eLXo+nM=; b=MnlKdsa1bEzr3/QInS1cZMUJO2
 h65vvbAae7acmouQsk7dzXP+iGfPfEEB1cgOsWYJfZpShdRC+fbUd7GvcslnMhqHFQMr5+5DK1jlM
 B0l5We5OZ2FfxybCbMYaPb8yV0kjcpAzfwVcdpbdjhhYgR/h/TuCTOhVt4IG+1ZwPRX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+TzVgId1jqCDDfMgeb9joeaqRyXGlOXTb427eLXo+nM=; b=N43wFUX+BWXmg52YgI+kdTg3gA
 B0NEK56+XFOXgkYDmygnewZqjm/1DspVeAsKuKn39ovPLR8BuBIL+aHS0nh5lmxdYGQtci2zvmdq1
 kNmgTSXWisPIQqz7m/gqYfz6G9DxGxp2TEWBPv75NJpYSbElWLpjbEzTCvCmnT1EblDo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063w-1O for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=+TzVgId1jqCDDfMgeb9joeaqRyXGlOXTb427eLXo+nM=; b=ARI10CJ76QxL1jRsJIHG5ZCDeB
 uheFpCFmr9g/LYv/NxEJd9ysDQSiosCZOUQt/iYLYHSalrRhu7vs8M/JfZP4p9UxZ6Oaglk5IACSj
 KE1sybHOP6NcGyPTQSEdBFm77oMCS7RKOXk3Qb7R0GBF4ThuKvcQKuYzT0SR9biRp7ugcMfXlV5Ge
 gm5yysrbN39FGTZ/I019lbl8W0fQ4Hp16NoZBjH/vDzacMyEXbIgIvWJL9yJhbQQz7j9h55IQvZqU
 q37RxSUraAjjDWLtDyc/BJvpFxgrfLfeUEjn91i3BY3pUZ4fiEj3ybV8mwM2E+stOr365gBRzQ1Ha
 dc9v6GcQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085aa-00; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:51 +0100
Message-Id: <20231016201114.1928083-5-willy@infradead.org>
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
 Content preview: Remove an unnecessary folio->page->folio conversion and take
 advantage of the new return value from folio_create_empty_buffers().
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> Reviewed-by: Pankaj Raghav
 <p.raghav@samsung.com> --- fs/ext4/inode.c | 14 +++++---------
 fs/ext4/move_extent.c | 11 +++++------ 2 files ch [...] 
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
X-Headers-End: 1qsTwE-00063w-1O
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 04/27] ext4: Convert to
 folio_create_empty_buffers
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

Remove an unnecessary folio->page->folio conversion and take advantage
of the new return value from folio_create_empty_buffers().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Pankaj Raghav <p.raghav@samsung.com>
---
 fs/ext4/inode.c       | 14 +++++---------
 fs/ext4/move_extent.c | 11 +++++------
 2 files changed, 10 insertions(+), 15 deletions(-)

diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
index a6838f54ae91..31c8f2641870 100644
--- a/fs/ext4/inode.c
+++ b/fs/ext4/inode.c
@@ -1032,10 +1032,8 @@ static int ext4_block_write_begin(struct folio *folio, loff_t pos, unsigned len,
 	BUG_ON(from > to);
 
 	head = folio_buffers(folio);
-	if (!head) {
-		create_empty_buffers(&folio->page, blocksize, 0);
-		head = folio_buffers(folio);
-	}
+	if (!head)
+		head = folio_create_empty_buffers(folio, blocksize, 0);
 	bbits = ilog2(blocksize);
 	block = (sector_t)folio->index << (PAGE_SHIFT - bbits);
 
@@ -1165,7 +1163,7 @@ static int ext4_write_begin(struct file *file, struct address_space *mapping,
 	 * starting the handle.
 	 */
 	if (!folio_buffers(folio))
-		create_empty_buffers(&folio->page, inode->i_sb->s_blocksize, 0);
+		folio_create_empty_buffers(folio, inode->i_sb->s_blocksize, 0);
 
 	folio_unlock(folio);
 
@@ -3655,10 +3653,8 @@ static int __ext4_block_zero_page_range(handle_t *handle,
 	iblock = index << (PAGE_SHIFT - inode->i_sb->s_blocksize_bits);
 
 	bh = folio_buffers(folio);
-	if (!bh) {
-		create_empty_buffers(&folio->page, blocksize, 0);
-		bh = folio_buffers(folio);
-	}
+	if (!bh)
+		bh = folio_create_empty_buffers(folio, blocksize, 0);
 
 	/* Find the buffer that contains "offset" */
 	pos = blocksize;
diff --git a/fs/ext4/move_extent.c b/fs/ext4/move_extent.c
index 18a9e7c47975..7fe448fb948b 100644
--- a/fs/ext4/move_extent.c
+++ b/fs/ext4/move_extent.c
@@ -183,10 +183,8 @@ mext_page_mkuptodate(struct folio *folio, unsigned from, unsigned to)
 
 	blocksize = i_blocksize(inode);
 	head = folio_buffers(folio);
-	if (!head) {
-		create_empty_buffers(&folio->page, blocksize, 0);
-		head = folio_buffers(folio);
-	}
+	if (!head)
+		head = folio_create_empty_buffers(folio, blocksize, 0);
 
 	block = (sector_t)folio->index << (PAGE_SHIFT - inode->i_blkbits);
 	for (bh = head, block_start = 0; bh != head || !block_start;
@@ -380,9 +378,10 @@ move_extent_per_page(struct file *o_filp, struct inode *donor_inode,
 	}
 	/* Perform all necessary steps similar write_begin()/write_end()
 	 * but keeping in mind that i_size will not change */
-	if (!folio_buffers(folio[0]))
-		create_empty_buffers(&folio[0]->page, 1 << orig_inode->i_blkbits, 0);
 	bh = folio_buffers(folio[0]);
+	if (!bh)
+		bh = folio_create_empty_buffers(folio[0],
+				1 << orig_inode->i_blkbits, 0);
 	for (i = 0; i < data_offset_in_page; i++)
 		bh = bh->b_this_page;
 	for (i = 0; i < block_len_in_page; i++) {
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
