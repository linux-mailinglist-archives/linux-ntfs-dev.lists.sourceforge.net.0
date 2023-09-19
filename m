Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C44A47A5B11
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGx-0007vi-RB;
	Tue, 19 Sep 2023 07:35:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiS-0005Gf-SS
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pZNvvzzb8w2vdFH9XpjAcLrT4q6laln9GH3DKBbL5lk=; b=dp28IhFKg02xtgfvAW0M5IDY0l
 /iVcvMWmLUZd1n6K1Ah5uzL3XCpvt9KxxwaXyIuSokbbybpsepOuGTC0YWEzpxC2AYUAR2rn9CADk
 PAKNFgjsM+Q762FdRrwo3ehQy7rT48ixalCtZOQkK0SUB4wvdnhzz34IrB5lUI4CK8KU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pZNvvzzb8w2vdFH9XpjAcLrT4q6laln9GH3DKBbL5lk=; b=WZFja57icxxarJRYSiB77EO2Cl
 0ykCvZIynwwpB6Ah9/OOdUYj+1Z+tb0qYaaxJ+3Xqdudtf35pi1Z65Gf/IMT11RuQxi3WYTOPdjX1
 kTEZYR9Rw2E7LuydVySgxp2b0LwI4/FeUBoqa6CpfJ4pgup1Jy0puQafkguaIye4uzrk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiQ-00084U-Gs for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=pZNvvzzb8w2vdFH9XpjAcLrT4q6laln9GH3DKBbL5lk=; b=vlHuFO3J5hTc0bA9Y5eZsBGTUR
 gIOokCz7IVLf8s9nb1CBtsPw4gYX8HsPRNyEkacAQL0BEaXuYi4W2E/fpL9QuwlajtlmT++3kY4C/
 JI+8DQUdEY3kgmUq6I0GOCUijjI3lrcOTGdz+b91Ld2VQAJd4d9JgWqhJv+tXvtUNQqKJUsT9Qnrp
 UWfEVLRs2HnkJveuwkXhz38ERzovHe6GR+SUmi8hiT6s1DG9pFBOfBnA4WNAacKceLtHFTsobRu0Q
 gCkWduE1kfBuReaCTnb7P6VxZxCvLoRs69GVk6bYbJDaUMNfmgBVpsUNUzWqiFWAIM54eceNmXt0O
 YKcB2s/g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi5-00FFmI-3U; Tue, 19 Sep 2023 04:51:41 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:31 +0100
Message-Id: <20230919045135.3635437-23-willy@infradead.org>
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
 Content preview: Convert the _page variants to call them. Saves a few hidden
 calls to compound_head(). Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 --- fs/ufs/util.c | 43 +++++++++++++++++++++++++ fs/ufs/util.h | 13
 +++++++++---- 2 files changed, 34 insertions(+), 22 d [...] 
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
X-Headers-End: 1qiSiQ-00084U-Gs
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 22/26] ufs: Add ufs_get_locked_folio and
 ufs_put_locked_folio
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

Convert the _page variants to call them.  Saves a few hidden calls to
compound_head().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/ufs/util.c | 43 +++++++++++++++++++++++++------------------
 fs/ufs/util.h | 13 +++++++++----
 2 files changed, 34 insertions(+), 22 deletions(-)

diff --git a/fs/ufs/util.c b/fs/ufs/util.c
index 08ddf41eaaad..151b400cb3b6 100644
--- a/fs/ufs/util.c
+++ b/fs/ufs/util.c
@@ -229,43 +229,50 @@ ufs_set_inode_dev(struct super_block *sb, struct ufs_inode_info *ufsi, dev_t dev
 		ufsi->i_u1.i_data[0] = cpu_to_fs32(sb, fs32);
 }
 
+struct page *ufs_get_locked_page(struct address_space *mapping, pgoff_t index)
+{
+	struct folio *folio = ufs_get_locked_folio(mapping, index);
+
+	if (folio)
+		return folio_file_page(folio, index);
+	return NULL;
+}
+
 /**
- * ufs_get_locked_page() - locate, pin and lock a pagecache page, if not exist
+ * ufs_get_locked_folio() - locate, pin and lock a pagecache folio, if not exist
  * read it from disk.
  * @mapping: the address_space to search
  * @index: the page index
  *
- * Locates the desired pagecache page, if not exist we'll read it,
+ * Locates the desired pagecache folio, if not exist we'll read it,
  * locks it, increments its reference
  * count and returns its address.
  *
  */
-
-struct page *ufs_get_locked_page(struct address_space *mapping,
+struct folio *ufs_get_locked_folio(struct address_space *mapping,
 				 pgoff_t index)
 {
 	struct inode *inode = mapping->host;
-	struct page *page = find_lock_page(mapping, index);
-	if (!page) {
-		page = read_mapping_page(mapping, index, NULL);
+	struct folio *folio = filemap_lock_folio(mapping, index);
+	if (!folio) {
+		folio = read_mapping_folio(mapping, index, NULL);
 
-		if (IS_ERR(page)) {
-			printk(KERN_ERR "ufs_change_blocknr: "
-			       "read_mapping_page error: ino %lu, index: %lu\n",
+		if (IS_ERR(folio)) {
+			printk(KERN_ERR "ufs_change_blocknr: read_mapping_folio error: ino %lu, index: %lu\n",
 			       mapping->host->i_ino, index);
-			return page;
+			return folio;
 		}
 
-		lock_page(page);
+		folio_lock(folio);
 
-		if (unlikely(page->mapping == NULL)) {
+		if (unlikely(folio->mapping == NULL)) {
 			/* Truncate got there first */
-			unlock_page(page);
-			put_page(page);
+			folio_unlock(folio);
+			folio_put(folio);
 			return NULL;
 		}
 	}
-	if (!page_has_buffers(page))
-		create_empty_buffers(page, 1 << inode->i_blkbits, 0);
-	return page;
+	if (!folio_buffers(folio))
+		folio_create_empty_buffers(folio, 1 << inode->i_blkbits, 0);
+	return folio;
 }
diff --git a/fs/ufs/util.h b/fs/ufs/util.h
index 89247193d96d..62542561d150 100644
--- a/fs/ufs/util.h
+++ b/fs/ufs/util.h
@@ -273,12 +273,17 @@ extern void _ubh_ubhcpymem_(struct ufs_sb_private_info *, unsigned char *, struc
 extern void _ubh_memcpyubh_(struct ufs_sb_private_info *, struct ufs_buffer_head *, unsigned char *, unsigned);
 
 /* This functions works with cache pages*/
-extern struct page *ufs_get_locked_page(struct address_space *mapping,
-					pgoff_t index);
+struct page *ufs_get_locked_page(struct address_space *mapping, pgoff_t index);
+struct folio *ufs_get_locked_folio(struct address_space *mapping, pgoff_t index);
+static inline void ufs_put_locked_folio(struct folio *folio)
+{
+       folio_unlock(folio);
+       folio_put(folio);
+}
+
 static inline void ufs_put_locked_page(struct page *page)
 {
-       unlock_page(page);
-       put_page(page);
+	ufs_put_locked_folio(page_folio(page));
 }
 
 
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
