Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6E67CB458
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxg-0006Za-1A;
	Mon, 16 Oct 2023 20:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwO-0006Q6-7T
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5zWLpgCpPdJ2OPyT7ybTpYNCwh68G15oM+bmUL5Qut4=; b=XjQeiXn2uNtqpNSoxnen6uHZD9
 vZF/OvNMJ0yP3+hmfWa2JeGq/RLOMybD+SsUduNSZYOtGaltwpMs6Uq4M0cpQgZdJr3W7qEI0ervE
 0g+A1+xfUWGd2b68wDEMXjz8Uiwsf2h3ryGdBBnwNFrCHmV9PDob3Vk8Pm0aa3aKLrT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5zWLpgCpPdJ2OPyT7ybTpYNCwh68G15oM+bmUL5Qut4=; b=WYyUzl+55pj145k4JWvgMpKjec
 SADt0S+rYIPq8bE2ZXJ8yCT4WzbCeQX3SyzUMdxPlINiDrm2lfJ7iakySNkM4CRwu66Db+Stapbqb
 8+PLVBqoJu66V0rAjlYU719js4YoqUkv2UE7LyKPXOTxWWDXGuD+C6qxCx0P/RYCT1Vs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00064D-1W for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5zWLpgCpPdJ2OPyT7ybTpYNCwh68G15oM+bmUL5Qut4=; b=Cm2/6geygP8ZUrICSnQ8OvqL6x
 VIA3Zg5qgrfDLu//yeF2ucQMzFl7gvU4owiaM10L4uVEb9eU/u734bScQAKRaJTsfr6x+9xOYYeFj
 hLR54mpl1vQKk+XGT2pRrVEzPK9cWhbHcqDNc8XG1zrm3sMq2c4MU/FgkRgdZTRRuxRURoXTXPIGH
 wtXKayQ3kcdVe38fW2sAB6je4GpBoAKQiCPSNIKUajYpnWsDIHwqfcDxP0vzo29+ikrjYO99Wn7Rf
 fqDzW3TnjHGr3z+EE8+spbeIFkmdjkOpEKgydANNzprLs5Kajry6ouFuN4oRJZSpu8fnRMzU7Hadx
 D3CcqJrQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvp-0085ac-2Q; Mon, 16 Oct 2023 20:11:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:52 +0100
Message-Id: <20231016201114.1928083-6-willy@infradead.org>
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
 Content preview:  Extract this useful helper from nilfs_page_get_nth_block()
 Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> Acked-by: Ryusuke
 Konishi <konishi.ryusuke@gmail.com> --- fs/nilfs2/page.h | 7 +------
 include/linux/buffer_head.h | 22 +++++++++++++++++++ [...] 
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
X-Headers-End: 1qsTwE-00064D-1W
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 05/27] buffer: Add get_nth_bh()
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

Extract this useful helper from nilfs_page_get_nth_block()

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>
---
 fs/nilfs2/page.h            |  7 +------
 include/linux/buffer_head.h | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/fs/nilfs2/page.h b/fs/nilfs2/page.h
index 21ddcdd4d63e..344d71942d36 100644
--- a/fs/nilfs2/page.h
+++ b/fs/nilfs2/page.h
@@ -55,12 +55,7 @@ unsigned long nilfs_find_uncommitted_extent(struct inode *inode,
 static inline struct buffer_head *
 nilfs_page_get_nth_block(struct page *page, unsigned int count)
 {
-	struct buffer_head *bh = page_buffers(page);
-
-	while (count-- > 0)
-		bh = bh->b_this_page;
-	get_bh(bh);
-	return bh;
+	return get_nth_bh(page_buffers(page), count);
 }
 
 #endif /* _NILFS_PAGE_H */
diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
index 1001244a8941..3d85a0cf0ca5 100644
--- a/include/linux/buffer_head.h
+++ b/include/linux/buffer_head.h
@@ -457,6 +457,28 @@ __bread(struct block_device *bdev, sector_t block, unsigned size)
 	return __bread_gfp(bdev, block, size, __GFP_MOVABLE);
 }
 
+/**
+ * get_nth_bh - Get a reference on the n'th buffer after this one.
+ * @bh: The buffer to start counting from.
+ * @count: How many buffers to skip.
+ *
+ * This is primarily useful for finding the nth buffer in a folio; in
+ * that case you pass the head buffer and the byte offset in the folio
+ * divided by the block size.  It can be used for other purposes, but
+ * it will wrap at the end of the folio rather than returning NULL or
+ * proceeding to the next folio for you.
+ *
+ * Return: The requested buffer with an elevated refcount.
+ */
+static inline __must_check
+struct buffer_head *get_nth_bh(struct buffer_head *bh, unsigned int count)
+{
+	while (count--)
+		bh = bh->b_this_page;
+	get_bh(bh);
+	return bh;
+}
+
 bool block_dirty_folio(struct address_space *mapping, struct folio *folio);
 
 #ifdef CONFIG_BUFFER_HEAD
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
