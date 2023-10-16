Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 330DC7CB457
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxf-0006Z9-NN;
	Mon, 16 Oct 2023 20:13:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwQ-0006Vf-AG
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DldHNSAIwDA0NK3BnRq3sFTgOXsGThrmmCtWcfiCecQ=; b=ehIzwMzllQHBCAWBC3NBvGe5jd
 gh4jfFijSV7ANVCv0wMwoj0uiyD3zxk/LgZEMmTvMmciTs7F9jXLBKWJGg9JO5HWBFy0wiBzaa1Zs
 dZOFvhPfrB/UjAN7dhZtZEUjTfiznsETQP7KRrrq6T/LBdPEIoxnNNxhs3vKTBDpbxpo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DldHNSAIwDA0NK3BnRq3sFTgOXsGThrmmCtWcfiCecQ=; b=cXe3D+es8oMbTDwxPgis1sZnUD
 AAFkFTJOSC/kb1+LS2pHHUULAGOQVoBZs92OxCoS4p7etWCmgT+vcz1zjJ2Q3V4p4uREYp2s4F/HU
 fRye5fNXP0IigEAOWaoJkvgVxiFZ6e42ohOrF6pTArozImK5yeJIEYqp22OjAESalhDc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063k-1Q for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=DldHNSAIwDA0NK3BnRq3sFTgOXsGThrmmCtWcfiCecQ=; b=LbBGYz3ijw9HZLmYD1FK68VsKn
 9lkLcjfnwOxts9sRe1eiKLwhR2mVK93Zj2K1mav4r+wBDgOk5zZLpUUlAMhjNvd6yZuXMn5TlW9e7
 D1ZebvowctrS+pZpuJNbA7zRydEzzy9IKk3LCaSEqiksqBwoiCoQx6RhoJ4BRw76ioWqa/u1E6vkz
 2Ch3mL/2sutgWka/bGlWAebVaOd4DPfEWuM9sradV7is6XRwNHhD+acJvExVQuAoaeo5xIqas2rhu
 r6M3OjNjzfqlYmX5ukaU+SVDne4XUv3J3zK7HzCQAJAjwEyz2CtyNvwE8W1UYwMf/u2H9Zf1Egw67
 3EsN2r9w==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvo-0085aS-LS; Mon, 16 Oct 2023 20:11:16 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:10:48 +0100
Message-Id: <20231016201114.1928083-2-willy@infradead.org>
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
 Content preview: Rename grow_dev_page() to grow_dev_folio() and make it return
 a bool. Document what that bool means; it's more subtle than it first appears.
 Also rename the 'failed' label to 'unlock' beacuse it's not [...] 
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
X-Headers-End: 1qsTwE-00063k-1Q
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 01/27] buffer: Return bool from
 grow_dev_folio()
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

Rename grow_dev_page() to grow_dev_folio() and make it return a bool.
Document what that bool means; it's more subtle than it first appears.
Also rename the 'failed' label to 'unlock' beacuse it's not exactly
'failed'.  It just hasn't succeeded.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/buffer.c | 39 ++++++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index b33cc74e9649..dec41d84044b 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -1024,24 +1024,26 @@ static sector_t folio_init_buffers(struct folio *folio,
 }
 
 /*
- * Create the page-cache page that contains the requested block.
+ * Create the page-cache folio that contains the requested block.
  *
  * This is used purely for blockdev mappings.
+ *
+ * Returns false if we have a 'permanent' failure.  Returns true if
+ * we succeeded, or the caller should retry.
  */
-static int
-grow_dev_page(struct block_device *bdev, sector_t block,
+static bool grow_dev_folio(struct block_device *bdev, sector_t block,
 	      pgoff_t index, int size, int sizebits, gfp_t gfp)
 {
 	struct inode *inode = bdev->bd_inode;
 	struct folio *folio;
 	struct buffer_head *bh;
 	sector_t end_block;
-	int ret = 0;
+	bool ret;
 
 	folio = __filemap_get_folio(inode->i_mapping, index,
 			FGP_LOCK | FGP_ACCESSED | FGP_CREAT, gfp);
 	if (IS_ERR(folio))
-		return PTR_ERR(folio);
+		return false;
 
 	bh = folio_buffers(folio);
 	if (bh) {
@@ -1050,14 +1052,17 @@ grow_dev_page(struct block_device *bdev, sector_t block,
 					(sector_t)index << sizebits, size);
 			goto done;
 		}
+
+		/* Caller should retry if this call fails */
+		ret = true;
 		if (!try_to_free_buffers(folio))
-			goto failed;
+			goto unlock;
 	}
 
-	ret = -ENOMEM;
+	ret = false;
 	bh = folio_alloc_buffers(folio, size, gfp | __GFP_ACCOUNT);
 	if (!bh)
-		goto failed;
+		goto unlock;
 
 	/*
 	 * Link the folio to the buffers and initialise them.  Take the
@@ -1070,19 +1075,19 @@ grow_dev_page(struct block_device *bdev, sector_t block,
 			(sector_t)index << sizebits, size);
 	spin_unlock(&inode->i_mapping->private_lock);
 done:
-	ret = (block < end_block) ? 1 : -ENXIO;
-failed:
+	ret = block < end_block;
+unlock:
 	folio_unlock(folio);
 	folio_put(folio);
 	return ret;
 }
 
 /*
- * Create buffers for the specified block device block's page.  If
- * that page was dirty, the buffers are set dirty also.
+ * Create buffers for the specified block device block's folio.  If
+ * that folio was dirty, the buffers are set dirty also.
  */
-static int
-grow_buffers(struct block_device *bdev, sector_t block, int size, gfp_t gfp)
+static bool grow_buffers(struct block_device *bdev, sector_t block,
+		int size, gfp_t gfp)
 {
 	pgoff_t index;
 	int sizebits;
@@ -1099,11 +1104,11 @@ grow_buffers(struct block_device *bdev, sector_t block, int size, gfp_t gfp)
 			"device %pg\n",
 			__func__, (unsigned long long)block,
 			bdev);
-		return -EIO;
+		return false;
 	}
 
-	/* Create a page with the proper size buffers.. */
-	return grow_dev_page(bdev, block, index, size, sizebits, gfp);
+	/* Create a folio with the proper size buffers.. */
+	return grow_dev_folio(bdev, block, index, size, sizebits, gfp);
 }
 
 static struct buffer_head *
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
