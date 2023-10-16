Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D094D7CB45B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxg-0006a1-Ao;
	Mon, 16 Oct 2023 20:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwP-00042R-Lf
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTqAHAx4qqR4Q7lC+S6uqhCRiwzNekbkPxfVngkIgDU=; b=apDNkrKmQsq6NP3dvzfm8my3Q9
 yR1nW+r/W3S20EEp4SauJxn7mo5FKwq94Oj/yXKwm34PKx90zWGzuBf+Xml+sZ7cwFWD3xOMjKrFf
 Fg+9E/qz9h4EiIDx3ak4Ri0Pltq2WOxXkbyg159hzPAPB1iieDYSGICQ4Qu/05Q+iWvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KTqAHAx4qqR4Q7lC+S6uqhCRiwzNekbkPxfVngkIgDU=; b=C/Z+ZlhGYYtaWPnqYGn3VbS7Mz
 MRMYJqPB7tIueYdeuXhJD1ALKDYq+yT0uzLioch26Gqd4HGGSimmQUh6CdlQAXakI7fwBHFK3KjwT
 NvOuvYXdQfaka543m4FZraJLIsqgmND9ZDYhxUTTXW/GU6jQfcH5JEajDSloJLVPii9E=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063r-1P for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=KTqAHAx4qqR4Q7lC+S6uqhCRiwzNekbkPxfVngkIgDU=; b=oPrQiDiDtUSjcl7PYLALSNO31D
 tai/aAqnPkJqG9xIbE6VBzUOe9q+haAYB4LglJras5A5+bAxN3QzOzePxanCXEAlaXdeEUiJBIt7T
 /SGZx6Vvf2oYhevTsxYwsIWPQeeRSDH/we5DiG19qhilObY32oOh8aOoYikY435BSYLvTqYL9R1EL
 RwJfYWz8xhlJICtpDXsQL/HeteEVcd/TKwygC3YxrTHffYxLkK3NBPc0gk4L8MLv3e2+oUY5xpFhQ
 QAc4NQ+PY3hOwkl7WC7EwWKPVx3OQ8DJKab9JK2tpc7InYDh0wb7ZOakhSBhPJ5s7Obo4bqKoc5H/
 cq9kWq9Q==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvr-0085d9-S5; Mon, 16 Oct 2023 20:11:19 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:13 +0100
Message-Id: <20231016201114.1928083-27-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qsTwE-00063r-1P
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 26/27] ufs: Remove ufs_get_locked_page()
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
