Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF3C7A5B0C
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGu-0007su-ST;
	Tue, 19 Sep 2023 07:35:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiS-0005GT-8j
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PtzeHJtzB8Xd695+Qb2V5yYYQNsOpQ3Yl0mwaGuBV/4=; b=jHhfK99YaDASncG9OXmLHVCO9K
 gaWbdBP2a2rn7c00/Wu5MENNPBZPQ9Exixy5+tuFJX38wHpE9MBEQSvT5Pv4vjO+hlLIH2B1SD71F
 mQaI1lDgx+cXMr+0JgLc+XXS3zYeMcCKrm2mrORtP1bW0RQhe/iSZr/L9eZnBjvYSOFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PtzeHJtzB8Xd695+Qb2V5yYYQNsOpQ3Yl0mwaGuBV/4=; b=Bx9Y846fafU0mE/AjMybro655n
 vnboAZsy6v/QzA3zVgMmiLXhtCZhtm+06KmLkhwC6dG1ssGvvqaEtTU59CcUO2UAc+mbvtqeElkgj
 77SXfmPcnrqdMUgNCZ9Da2wPzQFFe8xbREBg9AWuZLmuB525AuhQa9S4CaE9/f/ZT61Q=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiN-00084A-0M for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=PtzeHJtzB8Xd695+Qb2V5yYYQNsOpQ3Yl0mwaGuBV/4=; b=QTFrpw3bHURLE6EYb/R+wluNva
 FnBtPTD1w+5XMNC7zEhc9bao72bgXNpxKd9qDjhuUyi1OuP6S2MMpTObEptvPQkhWhifCbXvosRRU
 e8lQf84HnBxa1MgfnDbHOnH/NdKVSKXT9I1ZfvD/Yk4oywa3zMeniEGFTRzWVl47KpSohjCj0nWeQ
 KMTRaC5Exg3bFQFNKJH7wxQjQzaewJnEQmEGfJuzU4j/MZpiupUYbK/JOi51oS+Otgux4g8Yb+Qav
 1tTYnMC0HU19LUaCIHSlX1Doe6hKM9E7DF14ZicqYzh3cMxcMxgkZBmcxG54de+EwiKG/t7IMORtB
 5T5MdMFw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi3-00FFki-6d; Tue, 19 Sep 2023 04:51:39 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:18 +0100
Message-Id: <20230919045135.3635437-10-willy@infradead.org>
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
 Content preview: Remove a number of folio->page->folio conversions.
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/nilfs2/mdt.c | 20
 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-) 
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
X-Headers-End: 1qiSiN-00084A-0M
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 09/26] nilfs2: Convert
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
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Remove a number of folio->page->folio conversions.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
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
