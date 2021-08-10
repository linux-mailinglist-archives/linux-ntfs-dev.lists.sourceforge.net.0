Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 037EB3E7CD7
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 17:52:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDU2q-0000x8-5J; Tue, 10 Aug 2021 15:52:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+52179d7ae0ad25a87438+6561+infradead.org+hch@casper.srs.infradead.org>)
 id 1mDU2Z-0000wn-RF
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:51:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QlWw4HkDy5SAmkfrpc0mwZV7UjMebgqtnRR8/HWQxmk=; b=bWYSeEfeq8BNmwbHjIbzDePOqk
 Gxo9e0r9OA4QYkyeGeahSjQ08VB48Ljt25LaDVTrT2JCL6NqvZESZ5q5ttqCcblYNMKNPcbcPkDK4
 AaSHxLHcleXX5dBNIDCmEuHPsi5aQJ/G4AE7woQhMOZjUz/+ap5VDufXuuXmwnq2p7UM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QlWw4HkDy5SAmkfrpc0mwZV7UjMebgqtnRR8/HWQxmk=; b=QuhNnuDy3sbo5OxF91PEcd+ah4
 4n2a0pocVtFGiUJF51vO3jnkUtAxXwdYWtr2cUEk49qmP2tjdtSOHvk+2c0cRlQYkAsTqwCqRBkr5
 /uf7rMX65P2KHQwtpkU1mo8VbLiwzOTtizHdkKdF91DX1G0V1PxFpJla3ZAFRBL1HWm0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDU2R-0021Hi-No
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:51:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=QlWw4HkDy5SAmkfrpc0mwZV7UjMebgqtnRR8/HWQxmk=; b=PVGigAGcwUI+QHwHRB0vYyQH1Q
 KklGjuGhGSV4919sBOMK3Fr4Y0/z0yzMkSEKR+9mYZDDvA2EniwedJONHYQ6jxPO2a9wuWnDmfLXa
 0HOwTrF7vJPZCMNBtWJG/YOl9FeY0rTfIxoXAWKgQNSLhGjz6ubkMRrw1heI/XX4SR7RBV23bby1x
 V+o3dpzzSA4Va/TLTT1WNotu2qOW/UIc44m/LH3aMfRIefnjDzecl6Un621VMMF7eWh/25MD8dqlK
 JKmmEQ5HpdI7Q/htOkTku6Qi3n848uiVuLJSTuqpz0S/aflwdA05oLWPdYtaCYOM0hkETUkz8k5QG
 oqezCzzw==;
Received: from 089144200071.atnat0009.highway.a1.net ([89.144.200.71]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDU0g-00CInx-TV; Tue, 10 Aug 2021 15:49:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 10 Aug 2021 17:45:12 +0200
Message-Id: <20210810154512.1809898-5-hch@lst.de>
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
X-Headers-End: 1mDU2R-0021Hi-No
Subject: [Linux-NTFS-Dev] [PATCH 4/4] block: pass a gendisk to
 bdev_resize_partition
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

bdev_resize_partition can only operate on the whole device.  Make that clear
by passing a gendisk instead of a block_device.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk.h             |  4 ++--
 block/ioctl.c           |  2 +-
 block/partitions/core.c | 12 ++++++------
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/block/blk.h b/block/blk.h
index 21c441eb6773..db6f82bbb683 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -350,8 +350,8 @@ void blk_free_ext_minor(unsigned int minor);
 int bdev_add_partition(struct gendisk *disk, int partno, sector_t start,
 		sector_t length);
 int bdev_del_partition(struct gendisk *disk, int partno);
-int bdev_resize_partition(struct block_device *bdev, int partno,
-		sector_t start, sector_t length);
+int bdev_resize_partition(struct gendisk *disk, int partno, sector_t start,
+		sector_t length);
 
 int bio_add_hw_page(struct request_queue *q, struct bio *bio,
 		struct page *page, unsigned int len, unsigned int offset,
diff --git a/block/ioctl.c b/block/ioctl.c
index 8f57b276b2f1..eb0491e90b9a 100644
--- a/block/ioctl.c
+++ b/block/ioctl.c
@@ -43,7 +43,7 @@ static int blkpg_do_ioctl(struct block_device *bdev,
 			return -EINVAL;
 		return bdev_add_partition(disk, p.pno, start, length);
 	case BLKPG_RESIZE_PARTITION:
-		return bdev_resize_partition(bdev, p.pno, start, length);
+		return bdev_resize_partition(disk, p.pno, start, length);
 	default:
 		return -EINVAL;
 	}
diff --git a/block/partitions/core.c b/block/partitions/core.c
index 679bbe82a227..6462d983cb3a 100644
--- a/block/partitions/core.c
+++ b/block/partitions/core.c
@@ -497,14 +497,14 @@ int bdev_del_partition(struct gendisk *disk, int partno)
 	return ret;
 }
 
-int bdev_resize_partition(struct block_device *bdev, int partno,
-		sector_t start, sector_t length)
+int bdev_resize_partition(struct gendisk *disk, int partno, sector_t start,
+		sector_t length)
 {
 	struct block_device *part = NULL;
 	int ret = -ENXIO;
 
-	mutex_lock(&bdev->bd_disk->open_mutex);
-	part = xa_load(&bdev->bd_disk->part_tbl, partno);
+	mutex_lock(&disk->open_mutex);
+	part = xa_load(&disk->part_tbl, partno);
 	if (!part)
 		goto out_unlock;
 
@@ -513,14 +513,14 @@ int bdev_resize_partition(struct block_device *bdev, int partno,
 		goto out_unlock;
 
 	ret = -EBUSY;
-	if (partition_overlaps(bdev->bd_disk, start, length, partno))
+	if (partition_overlaps(disk, start, length, partno))
 		goto out_unlock;
 
 	bdev_set_nr_sectors(part, length);
 
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
