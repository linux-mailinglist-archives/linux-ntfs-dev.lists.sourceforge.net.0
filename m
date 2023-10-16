Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D06DD7CB456
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxf-0006Yl-DI;
	Mon, 16 Oct 2023 20:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwP-00031p-V9
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wNJ6b01vEtFMSPcOquC5V/v8dm5R6nJkPliQzhkY6h8=; b=coA6MH3Bb7nQUE8n8UG7920wY7
 1BlLf1ms+Nh02KAmLhsvWqKi7EbWbRHKeXL91BIkEJvu6TX3iIVvpu1AhentAaOR6zcr+1Ib89TC5
 20YDUTcNUcfKl3sm9ruD08YYhoaTgaxfe8194JhnLuP0ra66B9j+WwMRobukSTr2Tg40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wNJ6b01vEtFMSPcOquC5V/v8dm5R6nJkPliQzhkY6h8=; b=MxdbBtila5Eum+nGCxbRlzPgf9
 h2Be8f9uusOLPB0A6q4105qG0mSqHDdieYnv6M0aFH2GPdRS+3NE3CNtTOL5hMxr7gXk/4yjd3/UE
 SkqLgpao9fNzMgUdkK2Jd5ORRFLzqbDoh71r3x7cMBUn2gmZopf5ZorJUpOLwU1PSs8Q=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063n-1Q for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=wNJ6b01vEtFMSPcOquC5V/v8dm5R6nJkPliQzhkY6h8=; b=wFCkULMjXDtf6VBDU0ratgV1wJ
 XXz8QdpLn71DnWCQNUHkvC2z6lMX2mtfoIlnuM7DRNPEQqxoMN8z/T7zr9yIzHqjb+4Ci2l6mG/g6
 +8IF0oeP4lVAsdPIicw46Ih6TxgW95+0aqORvtej8Dbl2apjcV7S/zdlDIkEs+Ii5mA69YlyfOPlJ
 pH8zQpWVPIViHAlgz1qNKS88BRxnkCAohcoEqzw+FLRQB+GeyEnnxEcGz3QwbcPGUDkzUK6PLzV5z
 QlYnAxCq8pzNo6nJlTao0cjMXhX4IYjkOZej0brAiLVimSWFd+0wuE184BBeqNZfbckNkA39/H779
 LRMVPZhg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085ai-BR; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:55 +0100
Message-Id: <20231016201114.1928083-9-willy@infradead.org>
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
 Content preview:  Use the folio APIs,
 saving four hidden calls to compound_head().
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> Reviewed-by:
 Andreas Gruenbacher <agruenba@redhat.com> --- fs/gfs2/meta_io.c | 22 ++++++++
 1 file changed, 8 insertions(+), 1 [...] 
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
X-Headers-End: 1qsTwE-00063n-1Q
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 08/27] gfs2: Convert gfs2_getjdatabuf to
 use a folio
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
 Andreas Gruenbacher <agruenba@redhat.com>,
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
Reviewed-by: Andreas Gruenbacher <agruenba@redhat.com>
---
 fs/gfs2/meta_io.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/fs/gfs2/meta_io.c b/fs/gfs2/meta_io.c
index f1fac1b45059..f6d40d51f5ed 100644
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
+		bh = get_nth_bh(bh, bufnum);
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
