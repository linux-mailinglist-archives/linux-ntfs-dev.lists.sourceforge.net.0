Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E92653E7CC2
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 17:49:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDU0Q-0000uX-Q4; Tue, 10 Aug 2021 15:49:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+52179d7ae0ad25a87438+6561+infradead.org+hch@casper.srs.infradead.org>)
 id 1mDU0O-0000uQ-Jr
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RqFe/g2/KiqMEzYa3YxMw+ZiuYDIebvOLsET3nSOnoA=; b=Efb5YD3h0oC0EsqJvHN7Zy5qyQ
 eRqNgqliCtcJly2Po6VHHshVXycXhS6JkZ3s6VZ5Tt9sxbRJI4VClkmuJLsHEiLMO7yMxYokmrbvK
 7UFZj1NFOmWbpfI6bP8CaAyF54fbOUG22HArrrzciekgIuEpPEpIiCnKmFKcFse+0q9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RqFe/g2/KiqMEzYa3YxMw+ZiuYDIebvOLsET3nSOnoA=; b=Qs6rwg53cxpzPQAbkXUBw8ghgM
 6HECwk+o/HvWcFyzIGN9SlCLPeUeZWZDvuvyzlTmRA0aBEpJ6XfEpjtJzgjisoky6BGoEp/IDFtof
 llaOJ/KBaQaZkK9YaOrvlrM827HtTJPuLiQSBixnpB4B+BLr94/5AHYr0+Zt5w8+rqsQ=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDU0M-0021AS-Rs
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=RqFe/g2/KiqMEzYa3YxMw+ZiuYDIebvOLsET3nSOnoA=; b=Y5hI8bLkVG3+X1nQIxykYV7G3x
 xOoulSJx9mS3F5k6vE+uj6RhgiNwmyW6tLqxZ1te3PMmLvxIU5/F6vj1o+OAu0HFUYc8OXsxwFLUJ
 LWCVDePASgjY76Iiqew9GJsELwcGbY6XpxDJHD9Kpn8q89gK5U0ZMTwZkUqSALKNY5p5gWeXYPJ36
 7j/I++I4T/tVx9OIU838eWYMIeMnNhrrHkV/zOr/vXIKnqhBkc8fugrKlWNykWS0Qy3I03cgYhyBz
 mbkR7bUwe85SAV6D3O8WzAWM96UBMRU5wgsAZ28CMdMg9cgLK5xN6U3CPshHgFeKaB0S5kxsDpCQj
 rzDILvNQ==;
Received: from 089144200071.atnat0009.highway.a1.net ([89.144.200.71]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDTy9-00CIfM-AD; Tue, 10 Aug 2021 15:47:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 10 Aug 2021 17:45:10 +0200
Message-Id: <20210810154512.1809898-3-hch@lst.de>
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
X-Headers-End: 1mDU0M-0021AS-Rs
Subject: [Linux-NTFS-Dev] [PATCH 2/4] block: pass a gendisk to
 bdev_add_partition
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

bdev_add_partition can only operate on the whole device.  Make that clear
by passing a gendisk instead of a block_device.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/blk.h             | 4 ++--
 block/ioctl.c           | 3 ++-
 block/partitions/core.c | 5 ++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/block/blk.h b/block/blk.h
index 56f33fbcde59..c0486f609978 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -347,8 +347,8 @@ void blk_free_ext_minor(unsigned int minor);
 #define ADDPART_FLAG_NONE	0
 #define ADDPART_FLAG_RAID	1
 #define ADDPART_FLAG_WHOLEDISK	2
-int bdev_add_partition(struct block_device *bdev, int partno,
-		sector_t start, sector_t length);
+int bdev_add_partition(struct gendisk *disk, int partno, sector_t start,
+		sector_t length);
 int bdev_del_partition(struct block_device *bdev, int partno);
 int bdev_resize_partition(struct block_device *bdev, int partno,
 		sector_t start, sector_t length);
diff --git a/block/ioctl.c b/block/ioctl.c
index fff161eaab42..36e0ec76b3b2 100644
--- a/block/ioctl.c
+++ b/block/ioctl.c
@@ -16,6 +16,7 @@
 static int blkpg_do_ioctl(struct block_device *bdev,
 			  struct blkpg_partition __user *upart, int op)
 {
+	struct gendisk *disk = bdev->bd_disk;
 	struct blkpg_partition p;
 	long long start, length;
 
@@ -40,7 +41,7 @@ static int blkpg_do_ioctl(struct block_device *bdev,
 		/* check if partition is aligned to blocksize */
 		if (p.start & (bdev_logical_block_size(bdev) - 1))
 			return -EINVAL;
-		return bdev_add_partition(bdev, p.pno, start, length);
+		return bdev_add_partition(disk, p.pno, start, length);
 	case BLKPG_RESIZE_PARTITION:
 		return bdev_resize_partition(bdev, p.pno, start, length);
 	default:
diff --git a/block/partitions/core.c b/block/partitions/core.c
index c1b66d07ff19..af450931322d 100644
--- a/block/partitions/core.c
+++ b/block/partitions/core.c
@@ -451,11 +451,10 @@ static bool partition_overlaps(struct gendisk *disk, sector_t start,
 	return overlap;
 }
 
-int bdev_add_partition(struct block_device *bdev, int partno,
-		sector_t start, sector_t length)
+int bdev_add_partition(struct gendisk *disk, int partno, sector_t start,
+		sector_t length)
 {
 	struct block_device *part;
-	struct gendisk *disk = bdev->bd_disk;
 	int ret;
 
 	mutex_lock(&disk->open_mutex);
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
