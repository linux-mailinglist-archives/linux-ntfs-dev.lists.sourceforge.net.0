Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1752A7A5B19
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVH1-0007zO-AH;
	Tue, 19 Sep 2023 07:35:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiZ-0005Gt-AA
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AQlSme5gfgF1PuSREZ2XhDo5ATTymBH433vqXKy6HYA=; b=Rctb3rt4hPZ0o2vA5ekl9DfAob
 AWt4BliLBrvM4mmGptoI/zn4Wh4L2zYJ1W1GsfglU30EGepv0Y03/egeXQ6FyqclGsj7b2VzMzdJ8
 0oF2Cq4qt5TFO15TSDBlY12KOtWua2dXAtIdQ3WynD+MvsnvBBPEhtAQnS9AvlS7e6Rw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AQlSme5gfgF1PuSREZ2XhDo5ATTymBH433vqXKy6HYA=; b=VGxIWpqPq2DT776kcZMdqigZpj
 TE/zvupwJhDZL2AMr2XvFpo5Vu1sZDku77F/p1vA4fwjp1mivtS619LjZslS1RDqrAHBFyxwCWf+C
 z/m58Qz7hxijdKZZoWLWvp3PMkNtWnCZ4oV74bsQMO8PaHbzGKyMM1Z3A3PhvzSKG+Ok=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiX-00085W-3P for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=AQlSme5gfgF1PuSREZ2XhDo5ATTymBH433vqXKy6HYA=; b=JJppl7UiNVc9XOSJeWze4h14kq
 Juko1qtn8fJ4aHHuB7zu5C4R7OyJGaSJnUSgzpdxkZ+dqLlTOFpqyWhefQbRcNpLhpNLmvQltWSAn
 C7ZpO0FcFmc1xx7X5C4bcbD0FKdTf9sXQRQ+banVLKDHHuO/w3zdBvtlLbwI5sFdJ5HPdJW1F9QVO
 mtSFcSTpG0CM2ReAEuaIBc5UyqeV1+Jb/9DXQhP8hsSjdzGEM2kI/a0JqyP6E6v8V4SgKBYUkTGWg
 INxIijyxrRagUGRekiCKh78YPLq80p8LPEtBi1aM3YXPnXLahkvXsgQbtM+jDe7ms5QM2kyjHITyA
 rDOz3Q6Q==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi2-00FFkT-Va; Tue, 19 Sep 2023 04:51:39 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:16 +0100
Message-Id: <20230919045135.3635437-8-willy@infradead.org>
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
 Content preview:  Use the folio APIs,
 saving four hidden calls to compound_head().
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> ---
 fs/gfs2/meta_io.c
 | 22 ++++++++ 1 file changed, 8 insertions(+), 14 deletions(-) 
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
X-Headers-End: 1qiSiX-00085W-3P
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 07/26] gfs2;
 Convert gfs2_getjdatabuf to use a folio
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

Use the folio APIs, saving four hidden calls to compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/gfs2/meta_io.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/fs/gfs2/meta_io.c b/fs/gfs2/meta_io.c
index f1fac1b45059..b28196015543 100644
--- a/fs/gfs2/meta_io.c
+++ b/fs/gfs2/meta_io.c
@@ -400,26 +400,20 @@ static struct buffer_head *gfs2_getjdatabuf(struct gfs2_inode *ip, u64 blkno)
 {
 	struct address_space *mapping = ip->i_inode.i_mapping;
 	struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
-	struct page *page;
+	struct folio *folio;
 	struct buffer_head *bh;
 	unsigned int shift = PAGE_SHIFT - sdp->sd_sb.sb_bsize_shift;
 	unsigned long index = blkno >> shift; /* convert block to page */
 	unsigned int bufnum = blkno - (index << shift);
 
-	page = find_get_page_flags(mapping, index, FGP_LOCK|FGP_ACCESSED);
-	if (!page)
-		return NULL;
-	if (!page_has_buffers(page)) {
-		unlock_page(page);
-		put_page(page);
+	folio = __filemap_get_folio(mapping, index, FGP_LOCK | FGP_ACCESSED, 0);
+	if (IS_ERR(folio))
 		return NULL;
-	}
-	/* Locate header for our buffer within our page */
-	for (bh = page_buffers(page); bufnum--; bh = bh->b_this_page)
-		/* Do nothing */;
-	get_bh(bh);
-	unlock_page(page);
-	put_page(page);
+	bh = folio_buffers(folio);
+	if (bh)
+		get_nth_bh(bh, bufnum);
+	folio_unlock(folio);
+	folio_put(folio);
 	return bh;
 }
 
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
