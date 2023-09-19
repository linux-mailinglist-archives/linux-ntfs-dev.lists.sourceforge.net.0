Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B09B77A5B06
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGs-0007r1-Os;
	Tue, 19 Sep 2023 07:35:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiQ-0006FZ-If
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTqAHAx4qqR4Q7lC+S6uqhCRiwzNekbkPxfVngkIgDU=; b=CHPYJX8rows6Hq33gVMkujEq+n
 gBTZMpyUai5cPxuyGE4Ava5+G/Pvo1Mhpd8QHnWhTq5DJlgyvhKKykxpZkc/LJWzeKypvpTkgw2u+
 vXQxE2TsswGCgFK2YJaUFYdy8eiTyXYbNA7ccVddQ31oAiu/Qcnjup+DlJe5tx0BMO9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KTqAHAx4qqR4Q7lC+S6uqhCRiwzNekbkPxfVngkIgDU=; b=bY37dRP00yGzPn60FG438vWUwD
 ebJEsatQzRiCDNR9oF2KNZ+bEIJO+2Z7Aibq+lNDbwZLwiqTjn2s+r0aWPgFq/8oHH8jXFVUrjmu+
 MSS5BiR6C/K0YZz7fsoV1Hwy6/27HFWSSEElVtKwUM+6k2nvORl+L5tdDZC+1weBGdB0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiM-00E5g6-VE for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=KTqAHAx4qqR4Q7lC+S6uqhCRiwzNekbkPxfVngkIgDU=; b=AU5Z4AMyf6mpWfFk9NA31PWFC5
 Tk+/Pyt5xDRXP/Taop02KykNz9y2fANjDGQo+2O8yWE8MAlmRELgS+f0CfR/jYdYHN6NFURRAjeEH
 GQiTWmhg2dqfIdmIkTNlegKupk6QYJ/p0ivqAScVOihZ3z28I/rpbKUSRIRcCXRrHrSVNbWSP4Vts
 aihO5zsN3wRKtWQ3wK6HJL9ILP9rJEGPKa9xdpxVX2PtUg+V+AWMMHTnIH0UFZOOLV8qG73SsoHCo
 +lnV6FSOsmKOFtEcGrNE1rYEosO3mtftsKn0BM3GTJWT+O452u3k6tbWzyBBZR103V2BXE2ZHodbY
 /frRETPQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi5-00FFme-Eb; Tue, 19 Sep 2023 04:51:41 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:34 +0100
Message-Id: <20230919045135.3635437-26-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Both callers are now converted to ufs_get_locked_folio().
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/ufs/util.c
 | 9 --------- fs/ufs/util.h | 7 ------- 2 files changed, 16 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
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
X-Headers-End: 1qiSiM-00E5g6-VE
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 25/26] ufs: Remove ufs_get_locked_page()
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

Both callers are now converted to ufs_get_locked_folio().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ufs/util.c | 9 ---------
 fs/ufs/util.h | 7 -------
 2 files changed, 16 deletions(-)

diff --git a/fs/ufs/util.c b/fs/ufs/util.c
index 151b400cb3b6..d32de30009a0 100644
--- a/fs/ufs/util.c
+++ b/fs/ufs/util.c
@@ -229,15 +229,6 @@ ufs_set_inode_dev(struct super_block *sb, struct ufs_inode_info *ufsi, dev_t dev
 		ufsi->i_u1.i_data[0] = cpu_to_fs32(sb, fs32);
 }
 
-struct page *ufs_get_locked_page(struct address_space *mapping, pgoff_t index)
-{
-	struct folio *folio = ufs_get_locked_folio(mapping, index);
-
-	if (folio)
-		return folio_file_page(folio, index);
-	return NULL;
-}
-
 /**
  * ufs_get_locked_folio() - locate, pin and lock a pagecache folio, if not exist
  * read it from disk.
diff --git a/fs/ufs/util.h b/fs/ufs/util.h
index 62542561d150..0ecd2ed792f5 100644
--- a/fs/ufs/util.h
+++ b/fs/ufs/util.h
@@ -273,7 +273,6 @@ extern void _ubh_ubhcpymem_(struct ufs_sb_private_info *, unsigned char *, struc
 extern void _ubh_memcpyubh_(struct ufs_sb_private_info *, struct ufs_buffer_head *, unsigned char *, unsigned);
 
 /* This functions works with cache pages*/
-struct page *ufs_get_locked_page(struct address_space *mapping, pgoff_t index);
 struct folio *ufs_get_locked_folio(struct address_space *mapping, pgoff_t index);
 static inline void ufs_put_locked_folio(struct folio *folio)
 {
@@ -281,12 +280,6 @@ static inline void ufs_put_locked_folio(struct folio *folio)
        folio_put(folio);
 }
 
-static inline void ufs_put_locked_page(struct page *page)
-{
-	ufs_put_locked_folio(page_folio(page));
-}
-
-
 /*
  * macros and inline function to get important structures from ufs_sb_private_info
  */
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
