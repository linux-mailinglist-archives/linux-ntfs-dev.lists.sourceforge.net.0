Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C53D7CB451
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxd-0006Wq-NN;
	Mon, 16 Oct 2023 20:13:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwG-0006VG-K5
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oWqn2JXFKP4TLO9EIFStc+ZKIjdbaY7Lskcv1xTeMOQ=; b=CF/1r1aLlwbzXZyHJOptW5mYPE
 z6SLexyz7F7Ps8quteNnV2yW4oz+2Lw350uYiu3vVEZ5SjP25qhXsZiesG627JiDiGg1d0gngirsw
 j+LK6c2QM2fFwO6T/W+3WL5j4/Pv0CoFKGQthw7uCy6n3PmYFKHt9rkvMVAETsRe6TgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oWqn2JXFKP4TLO9EIFStc+ZKIjdbaY7Lskcv1xTeMOQ=; b=PabIUI+yRoUdJG0tCeXejsnW+Q
 6ZIW+0fofGKcfrNoHpgWIKpltA86ix9nVWTE85cpLZjxgFpSFmvWTRD/6FUY6ZE25mLr+0Q/5Ztmp
 PvmhSZbn5QrsgH84MrA4NX/hrVN8VxwPN3qpj/MbRwymmu/WDYadtVLLtdfXFSkl4r24=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwC-00H4wh-1R for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=oWqn2JXFKP4TLO9EIFStc+ZKIjdbaY7Lskcv1xTeMOQ=; b=XgF2LHYyFYj9Silu4DTI6Jb+wI
 7S9nhoWN66LOn+Rfb6K+sBhOfU3VhpvXHa9P8+zTX5j0KmQEeTSGHNCREGJGaYMSkVAnDWmMEn6C5
 +Mt13RnLUw55kRTGG1PaECz0gzT+9tpmxPPsasOHuo2D2zkicFr5Tfelmpc0wm0F6/B6pMZcSgs+p
 JYPw5sIxZOepG9MEVyJ+BRmQBv9YNrAsraxb1RoeKPegGVnd7yx6WtPkx7UO8K+VcG6Cqlg9pnyUw
 3C86CPWTo1X2bVzt0tMFwzFJbqQfzyfRyLWDvcDtJH4MbsUbcq7l1pkTnRjut2d5RsPHXxhdDpDJ6
 HvEgR2lg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvr-0085cs-JA; Mon, 16 Oct 2023 20:11:19 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:11 +0100
Message-Id: <20231016201114.1928083-25-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Switch to the folio APIs,
 saving one folio->page->folio conversion.
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/ufs/inode.c
 | 25 ++++++++++++ 1 file changed, 12 insertions(+), 13 deletions(-) 
 Content analysis details:   (1.1 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qsTwC-00H4wh-1R
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 24/27] ufs: Use ufs_get_locked_folio()
 in ufs_alloc_lastblock()
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

Switch to the folio APIs, saving one folio->page->folio conversion.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ufs/inode.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/fs/ufs/inode.c b/fs/ufs/inode.c
index 338e4b97312f..ebce93b08281 100644
--- a/fs/ufs/inode.c
+++ b/fs/ufs/inode.c
@@ -1063,7 +1063,7 @@ static int ufs_alloc_lastblock(struct inode *inode, loff_t size)
 	struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 	unsigned i, end;
 	sector_t lastfrag;
-	struct page *lastpage;
+	struct folio *folio;
 	struct buffer_head *bh;
 	u64 phys64;
 
@@ -1074,18 +1074,17 @@ static int ufs_alloc_lastblock(struct inode *inode, loff_t size)
 
 	lastfrag--;
 
-	lastpage = ufs_get_locked_page(mapping, lastfrag >>
+	folio = ufs_get_locked_folio(mapping, lastfrag >>
 				       (PAGE_SHIFT - inode->i_blkbits));
-       if (IS_ERR(lastpage)) {
-               err = -EIO;
-               goto out;
-       }
-
-       end = lastfrag & ((1 << (PAGE_SHIFT - inode->i_blkbits)) - 1);
-       bh = page_buffers(lastpage);
-       for (i = 0; i < end; ++i)
-               bh = bh->b_this_page;
+	if (IS_ERR(folio)) {
+		err = -EIO;
+		goto out;
+	}
 
+	end = lastfrag & ((1 << (PAGE_SHIFT - inode->i_blkbits)) - 1);
+	bh = folio_buffers(folio);
+	for (i = 0; i < end; ++i)
+		bh = bh->b_this_page;
 
        err = ufs_getfrag_block(inode, lastfrag, bh, 1);
 
@@ -1101,7 +1100,7 @@ static int ufs_alloc_lastblock(struct inode *inode, loff_t size)
 		*/
 	       set_buffer_uptodate(bh);
 	       mark_buffer_dirty(bh);
-	       set_page_dirty(lastpage);
+		folio_mark_dirty(folio);
        }
 
        if (lastfrag >= UFS_IND_FRAGMENT) {
@@ -1119,7 +1118,7 @@ static int ufs_alloc_lastblock(struct inode *inode, loff_t size)
 	       }
        }
 out_unlock:
-       ufs_put_locked_page(lastpage);
+       ufs_put_locked_folio(folio);
 out:
        return err;
 }
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
