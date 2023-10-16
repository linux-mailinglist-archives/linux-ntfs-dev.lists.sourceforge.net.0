Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7502F7CB460
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxh-0006cE-Vg;
	Mon, 16 Oct 2023 20:13:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwQ-00042Z-9n
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eaiCDWjet90GQNy1+yChdRMV1jDPIZJLwvtj63jJ5Tg=; b=F3RyNHz+1f/dJuApUPFPtJPFbP
 P7IRwtKXU31cY+2iRU5Wgse6Ti5rZAjnumCqTH/XEozYAfZOlUwOAqGNBwcHUy5JzVvscCB/BwtcY
 2ZioPK86AjMHHv/TDY6MNffelzZOgcPTwVOKN7zz9yf5AmWarINfhAt73pAIA1MYoiao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eaiCDWjet90GQNy1+yChdRMV1jDPIZJLwvtj63jJ5Tg=; b=Pi4ssiGXAlQkoKuGKPlYy2Cqg1
 4/HfDZU4ZxngcvctT2PtHPXy+lEqXPDEX77udU11J8nlVEV+MxwpPUT+VTbuRlk2JfgnXwXHaA0Pv
 fre1eyatptjMYJBo6YykSKGo7eMpvw1ZCFR5pd7/3vIVWAEFR9Ut3R1WQ7eNzCEHfSCA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063o-1S for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=eaiCDWjet90GQNy1+yChdRMV1jDPIZJLwvtj63jJ5Tg=; b=IPeWfE1a6pKBalmfulbCgDbLgg
 naLgWrsTqg99WBPVv0Q/JmcFdOaWg7RiFZpXT1cOMbq+kj9bfUSJckIFLDnZt5vgqFTPPkZJ/bFmi
 kgDL2YNFlqp4BVZaCKESR/jzRc0krGNFv3EtNSfKxaw2AhGVu48YgrC7eNEzCPvaPmXylnPBaslG4
 lD+pkR0VvDZN0716ag7k3r9tJl4vPJYzLkqOge7IUbtFFhaY5RfLEhkvsZ5jT4aKnqcs/oX+OnJFh
 eybeC+CJE0K3Dk9WTIVz53Eg/jBPggPxuHtAUMq5e+r4XzuJ5idWf5UpiqQT5IWTnoKd2hDO8ivVO
 ay39jQyg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvq-0085bS-5a; Mon, 16 Oct 2023 20:11:18 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:01 +0100
Message-Id: <20231016201114.1928083-15-willy@infradead.org>
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
 Content preview: Remove a number of folio->page->folio conversions.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> Acked-by: Ryusuke Konishi
 <konishi.ryusuke@gmail.com>
 --- fs/nilfs2/mdt.c | 16 +++++++++------- 1 file changed, 9 insertions(+),
 7 deletion [...] 
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
X-Headers-End: 1qsTwE-00063o-1S
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 14/27] nilfs2: Convert
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
 ntfs3@lists.linux.dev, Ryusuke Konishi <konishi.ryusuke@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Remove a number of folio->page->folio conversions.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>
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
