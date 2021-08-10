Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A893E7CC7
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 17:50:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDU1O-0006Nh-91; Tue, 10 Aug 2021 15:50:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+52179d7ae0ad25a87438+6561+infradead.org+hch@casper.srs.infradead.org>)
 id 1mDU1M-0006LZ-6j
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ucVRByIrD+SeMuRdpyzbI33hXitcQChEIrjKgqdl5j0=; b=NBHcNyii8R+Ddqn4WI0l8c10ym
 cCpSHrcc8lzxDwHOG/mUEIv2gShX1MlyhLn6URfnArlNFF703UDqKDVR73pkmBJ9a/Bg5WimypijC
 DUFsrZLuhABXitQN1HrJY0zuQyO/B0BJU8PrWNKRAotDsxBDNMcehKkbP09rSoCu6db0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ucVRByIrD+SeMuRdpyzbI33hXitcQChEIrjKgqdl5j0=; b=fiCMODIVAPzr2UySt+ntDJ4CZV
 M8RbnxkkKRNlMQw2SrfHDqPqB51remroDpi/zhV9L3ANT1rFy7hDzi4HRHJmMquqMc10apAPBipbc
 4d8i9bNOLK3LOpMOCyMmBwxubeX0tyz/4xzEdeeTqgAkGnRsVCogkq3x+4Y+f2QxFURM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDU17-0000Pq-Bw
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ucVRByIrD+SeMuRdpyzbI33hXitcQChEIrjKgqdl5j0=; b=dZlqGpvGTuDDU3Qi9OUosHkE/n
 14reCvJuq8o0cZMtIDrF08aBLrpGqrBqBIhielCGsrOEQKp6zl7g0bmTY+968nTon+/HdTobFVHp5
 imaVaspjkR2Alavk4VJqhxNLcO4fo1oplNhJy6DVKLDJ81IEY4fa4NjQSR9M9Dxlly0GWIkUALllg
 5gl2/iaYuaVS+hbhaYrEyd5m6pimA+KPqTAJJ7odHSTTRaiFtZ/aYcT6I3Llxmsojpdd0rIlUfDNY
 4YqTmQfK8A8jxzkKLlmnaVP2Pr071Zz95OxkHGZhvnQ17e1lYUjpZFQEcnh4GHNb/HUP12ck8UHkZ
 8y2EwwWQ==;
Received: from 089144200071.atnat0009.highway.a1.net ([89.144.200.71]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDTzE-00CIiy-5f; Tue, 10 Aug 2021 15:48:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 10 Aug 2021 17:45:11 +0200
Message-Id: <20210810154512.1809898-4-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210810154512.1809898-1-hch@lst.de>
References: <20210810154512.1809898-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDU17-0000Pq-Bw
Subject: [Linux-NTFS-Dev] [PATCH 3/4] block: pass a gendisk to
 bdev_del_partition
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
Cc: linux-s390@vger.kernel.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Davidlohr Bueso <dave@stgolabs.net>, linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>, linux-block@vger.kernel.org,
 linux-efi@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

bdev_del_partition can only operate on the whole device.  Make that clear
by passing a gendisk instead of a block_device.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk.h             | 2 +-
 block/ioctl.c           | 2 +-
 block/partitions/core.c | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/block/blk.h b/block/blk.h
index c0486f609978..21c441eb6773 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -349,7 +349,7 @@ void blk_free_ext_minor(unsigned int minor);
 #define ADDPART_FLAG_WHOLEDISK	2
 int bdev_add_partition(struct gendisk *disk, int partno, sector_t start,
 		sector_t length);
-int bdev_del_partition(struct block_device *bdev, int partno);
+int bdev_del_partition(struct gendisk *disk, int partno);
 int bdev_resize_partition(struct block_device *bdev, int partno,
 		sector_t start, sector_t length);
 
diff --git a/block/ioctl.c b/block/ioctl.c
index 36e0ec76b3b2..8f57b276b2f1 100644
--- a/block/ioctl.c
+++ b/block/ioctl.c
@@ -31,7 +31,7 @@ static int blkpg_do_ioctl(struct block_device *bdev,
 		return -EINVAL;
 
 	if (op == BLKPG_DEL_PARTITION)
-		return bdev_del_partition(bdev, p.pno);
+		return bdev_del_partition(disk, p.pno);
 
 	start = p.start >> SECTOR_SHIFT;
 	length = p.length >> SECTOR_SHIFT;
diff --git a/block/partitions/core.c b/block/partitions/core.c
index af450931322d..679bbe82a227 100644
--- a/block/partitions/core.c
+++ b/block/partitions/core.c
@@ -476,13 +476,13 @@ int bdev_add_partition(struct gendisk *disk, int partno, sector_t start,
 	return ret;
 }
 
-int bdev_del_partition(struct block_device *bdev, int partno)
+int bdev_del_partition(struct gendisk *disk, int partno)
 {
 	struct block_device *part = NULL;
 	int ret = -ENXIO;
 
-	mutex_lock(&bdev->bd_disk->open_mutex);
-	part = xa_load(&bdev->bd_disk->part_tbl, partno);
+	mutex_lock(&disk->open_mutex);
+	part = xa_load(&disk->part_tbl, partno);
 	if (!part)
 		goto out_unlock;
 
@@ -493,7 +493,7 @@ int bdev_del_partition(struct block_device *bdev, int partno)
 	delete_partition(part);
 	ret = 0;
 out_unlock:
-	mutex_unlock(&bdev->bd_disk->open_mutex);
+	mutex_unlock(&disk->open_mutex);
 	return ret;
 }
 
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
