Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF6F3E7CBC
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 17:48:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDTzG-0006CP-R2; Tue, 10 Aug 2021 15:48:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+52179d7ae0ad25a87438+6561+infradead.org+hch@casper.srs.infradead.org>)
 id 1mDTzF-0006CI-Pr
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t/VKtxldSRem8dGQuM+T1B908c+NjtH85ZLyIIKyayU=; b=bbFeSWi3KNt1/RI2UTPiSfrIts
 dPWLypw7qD3HypK0yJx405/a2ewpIdhraGPszb1r1kDQ1+AVCwnhmvLoujOiW73BNalxaQsFyfDed
 A5aTxjV1aDufaZMaLowqZMSlFxfDSK2E6FyrKJfc13wZZHx7aIFIOx1XW+0y18NCYmRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t/VKtxldSRem8dGQuM+T1B908c+NjtH85ZLyIIKyayU=; b=OTd5usNnzMFJQfe++GIKWO0qIE
 dzSH7uMlrBkrVrVLQ4UOPLkGUIxisXdmMskYehJYWh493Q1ZnHp2gO/hOnH0Fre/G0LfPySCH9V+Z
 yKYmCp4QjFZwp80euUUOk+k2OZnNo7lVfOgZcHgYrLODePwCy0fbwAr28G+k3lTIOFi0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDTz4-0000D5-Tz
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=t/VKtxldSRem8dGQuM+T1B908c+NjtH85ZLyIIKyayU=; b=B1aJWcWlpj5flxOOQUATyXgDH1
 U/73IFW6SS0s4r3Livn4IxA4yccCqaWcd9oqI5M7/GwMuHX+cm3oJiDburYM8eq0yfWelVLsKnm2L
 2gRI0xQeWWQpdTOZS+/ECqrfAbgY9WKSXOEfNQw0xKx6gXCReIKg88z48VOWmgHfLO4NQmsPSJDnB
 RrCr1kwYADNp4Q71ODpBoSIghQmrQztSxZAnlYyF/yD+5td0RfcE02EDspADgMzkZInB3RAHn1w0a
 +Jz7NVMqsC+r0Y61xcK3OcdyNCyax8G0E+VxFIIThFxKVf4Su9jb3Qep6aiCs+Mz26VPfC1M6b1JF
 DMCmb1fg==;
Received: from 089144200071.atnat0009.highway.a1.net ([89.144.200.71]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDTxL-00CIcZ-EF; Tue, 10 Aug 2021 15:46:41 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 10 Aug 2021 17:45:09 +0200
Message-Id: <20210810154512.1809898-2-hch@lst.de>
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
X-Headers-End: 1mDTz4-0000D5-Tz
Subject: [Linux-NTFS-Dev] [PATCH 1/4] block: store a gendisk in struct
 parsed_partitions
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

Partition scanning only happens on the whole device, so pass a
struct gendisk instead of the whole device block_device to the scanners.
This allows to simplify printing the device name in various places as the
disk name is available in disk->name.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/partitions/acorn.c   |  4 ++--
 block/partitions/aix.c     | 20 ++------------------
 block/partitions/amiga.c   |  7 +++----
 block/partitions/atari.c   |  4 ++--
 block/partitions/check.h   |  2 +-
 block/partitions/cmdline.c |  6 ++----
 block/partitions/core.c    |  6 +++---
 block/partitions/efi.c     | 36 +++++++++++++++++-------------------
 block/partitions/ibm.c     |  4 ++--
 block/partitions/ldm.c     | 18 +++++++++---------
 block/partitions/mac.c     |  2 +-
 block/partitions/msdos.c   |  6 ++++--
 block/partitions/sgi.c     |  5 ++---
 block/partitions/sun.c     |  5 ++---
 14 files changed, 52 insertions(+), 73 deletions(-)

diff --git a/block/partitions/acorn.c b/block/partitions/acorn.c
index c64c57b958bf..2c381c694c57 100644
--- a/block/partitions/acorn.c
+++ b/block/partitions/acorn.c
@@ -275,7 +275,7 @@ int adfspart_check_ADFS(struct parsed_partitions *state)
 	/*
 	 * Work out start of non-adfs partition.
 	 */
-	nr_sects = (state->bdev->bd_inode->i_size >> 9) - start_sect;
+	nr_sects = get_capacity(state->disk) - start_sect;
 
 	if (start_sect) {
 		switch (id) {
@@ -540,7 +540,7 @@ int adfspart_check_EESOX(struct parsed_partitions *state)
 	if (i != 0) {
 		sector_t size;
 
-		size = get_capacity(state->bdev->bd_disk);
+		size = get_capacity(state->disk);
 		put_partition(state, slot++, start, size - start);
 		strlcat(state->pp_buf, "\n", PAGE_SIZE);
 	}
diff --git a/block/partitions/aix.c b/block/partitions/aix.c
index c7b4fd1a4a97..85f4b967565e 100644
--- a/block/partitions/aix.c
+++ b/block/partitions/aix.c
@@ -66,22 +66,6 @@ struct pvd {
 
 #define LVM_MAXLVS 256
 
-/**
- * last_lba(): return number of last logical block of device
- * @bdev: block device
- *
- * Description: Returns last LBA value on success, 0 on error.
- * This is stored (by sd and ide-geometry) in
- *  the part[0] entry for this disk, and is the number of
- *  physical sectors available on the disk.
- */
-static u64 last_lba(struct block_device *bdev)
-{
-	if (!bdev || !bdev->bd_inode)
-		return 0;
-	return (bdev->bd_inode->i_size >> 9) - 1ULL;
-}
-
 /**
  * read_lba(): Read bytes from disk, starting at given LBA
  * @state
@@ -89,7 +73,7 @@ static u64 last_lba(struct block_device *bdev)
  * @buffer
  * @count
  *
- * Description:  Reads @count bytes from @state->bdev into @buffer.
+ * Description:  Reads @count bytes from @state->disk into @buffer.
  * Returns number of bytes read on success, 0 on error.
  */
 static size_t read_lba(struct parsed_partitions *state, u64 lba, u8 *buffer,
@@ -97,7 +81,7 @@ static size_t read_lba(struct parsed_partitions *state, u64 lba, u8 *buffer,
 {
 	size_t totalreadcount = 0;
 
-	if (!buffer || lba + count / 512 > last_lba(state->bdev))
+	if (!buffer || lba + count / 512 > get_capacity(state->disk) - 1ULL)
 		return 0;
 
 	while (count) {
diff --git a/block/partitions/amiga.c b/block/partitions/amiga.c
index 9526491d9aed..5c8624e26a54 100644
--- a/block/partitions/amiga.c
+++ b/block/partitions/amiga.c
@@ -34,7 +34,6 @@ int amiga_partition(struct parsed_partitions *state)
 	int start_sect, nr_sects, blk, part, res = 0;
 	int blksize = 1;	/* Multiplier for disk block size */
 	int slot = 1;
-	char b[BDEVNAME_SIZE];
 
 	for (blk = 0; ; blk++, put_dev_sector(sect)) {
 		if (blk == RDB_ALLOCATION_LIMIT)
@@ -42,7 +41,7 @@ int amiga_partition(struct parsed_partitions *state)
 		data = read_part_sector(state, blk, &sect);
 		if (!data) {
 			pr_err("Dev %s: unable to read RDB block %d\n",
-			       bdevname(state->bdev, b), blk);
+			       state->disk->disk_name, blk);
 			res = -1;
 			goto rdb_done;
 		}
@@ -64,7 +63,7 @@ int amiga_partition(struct parsed_partitions *state)
 		}
 
 		pr_err("Dev %s: RDB in block %d has bad checksum\n",
-		       bdevname(state->bdev, b), blk);
+		       state->disk->disk_name, blk);
 	}
 
 	/* blksize is blocks per 512 byte standard block */
@@ -84,7 +83,7 @@ int amiga_partition(struct parsed_partitions *state)
 		data = read_part_sector(state, blk, &sect);
 		if (!data) {
 			pr_err("Dev %s: unable to read partition block %d\n",
-			       bdevname(state->bdev, b), blk);
+			       state->disk->disk_name, blk);
 			res = -1;
 			goto rdb_done;
 		}
diff --git a/block/partitions/atari.c b/block/partitions/atari.c
index 2305840c8522..da5994175416 100644
--- a/block/partitions/atari.c
+++ b/block/partitions/atari.c
@@ -47,7 +47,7 @@ int atari_partition(struct parsed_partitions *state)
 	 * ATARI partition scheme supports 512 lba only.  If this is not
 	 * the case, bail early to avoid miscalculating hd_size.
 	 */
-	if (bdev_logical_block_size(state->bdev) != 512)
+	if (queue_logical_block_size(state->disk->queue) != 512)
 		return 0;
 
 	rs = read_part_sector(state, 0, &sect);
@@ -55,7 +55,7 @@ int atari_partition(struct parsed_partitions *state)
 		return -1;
 
 	/* Verify this is an Atari rootsector: */
-	hd_size = state->bdev->bd_inode->i_size >> 9;
+	hd_size = get_capacity(state->disk);
 	if (!VALID_PARTITION(&rs->part[0], hd_size) &&
 	    !VALID_PARTITION(&rs->part[1], hd_size) &&
 	    !VALID_PARTITION(&rs->part[2], hd_size) &&
diff --git a/block/partitions/check.h b/block/partitions/check.h
index c577e9ee67f0..d5b28e309d64 100644
--- a/block/partitions/check.h
+++ b/block/partitions/check.h
@@ -9,7 +9,7 @@
  * description.
  */
 struct parsed_partitions {
-	struct block_device *bdev;
+	struct gendisk *disk;
 	char name[BDEVNAME_SIZE];
 	struct {
 		sector_t from;
diff --git a/block/partitions/cmdline.c b/block/partitions/cmdline.c
index 482a29e95dbd..1af610f0ba8c 100644
--- a/block/partitions/cmdline.c
+++ b/block/partitions/cmdline.c
@@ -380,7 +380,6 @@ static void cmdline_parts_verifier(int slot, struct parsed_partitions *state)
 int cmdline_partition(struct parsed_partitions *state)
 {
 	sector_t disk_size;
-	char bdev[BDEVNAME_SIZE];
 	struct cmdline_parts *parts;
 
 	if (cmdline) {
@@ -397,12 +396,11 @@ int cmdline_partition(struct parsed_partitions *state)
 	if (!bdev_parts)
 		return 0;
 
-	bdevname(state->bdev, bdev);
-	parts = cmdline_parts_find(bdev_parts, bdev);
+	parts = cmdline_parts_find(bdev_parts, state->disk->disk_name);
 	if (!parts)
 		return 0;
 
-	disk_size = get_capacity(state->bdev->bd_disk) << 9;
+	disk_size = get_capacity(state->disk) << 9;
 
 	cmdline_parts_set(parts, disk_size, state);
 	cmdline_parts_verifier(1, state);
diff --git a/block/partitions/core.c b/block/partitions/core.c
index fb3a556cacce..c1b66d07ff19 100644
--- a/block/partitions/core.c
+++ b/block/partitions/core.c
@@ -135,7 +135,7 @@ static struct parsed_partitions *check_partition(struct gendisk *hd)
 	}
 	state->pp_buf[0] = '\0';
 
-	state->bdev = hd->part0;
+	state->disk = hd;
 	snprintf(state->name, BDEVNAME_SIZE, "%s", hd->disk_name);
 	snprintf(state->pp_buf, PAGE_SIZE, " %s:", state->name);
 	if (isdigit(state->name[strlen(state->name)-1]))
@@ -717,10 +717,10 @@ EXPORT_SYMBOL_GPL(bdev_disk_changed);
 
 void *read_part_sector(struct parsed_partitions *state, sector_t n, Sector *p)
 {
-	struct address_space *mapping = state->bdev->bd_inode->i_mapping;
+	struct address_space *mapping = state->disk->part0->bd_inode->i_mapping;
 	struct page *page;
 
-	if (n >= get_capacity(state->bdev->bd_disk)) {
+	if (n >= get_capacity(state->disk)) {
 		state->access_beyond_eod = true;
 		return NULL;
 	}
diff --git a/block/partitions/efi.c b/block/partitions/efi.c
index e2716792ecc1..aaa3dc487cb5 100644
--- a/block/partitions/efi.c
+++ b/block/partitions/efi.c
@@ -124,19 +124,17 @@ efi_crc32(const void *buf, unsigned long len)
 
 /**
  * last_lba(): return number of last logical block of device
- * @bdev: block device
+ * @disk: block device
  * 
  * Description: Returns last LBA value on success, 0 on error.
  * This is stored (by sd and ide-geometry) in
  *  the part[0] entry for this disk, and is the number of
  *  physical sectors available on the disk.
  */
-static u64 last_lba(struct block_device *bdev)
+static u64 last_lba(struct gendisk *disk)
 {
-	if (!bdev || !bdev->bd_inode)
-		return 0;
-	return div_u64(bdev->bd_inode->i_size,
-		       bdev_logical_block_size(bdev)) - 1ULL;
+	return div_u64(disk->part0->bd_inode->i_size,
+		       queue_logical_block_size(disk->queue)) - 1ULL;
 }
 
 static inline int pmbr_part_valid(gpt_mbr_record *part)
@@ -231,17 +229,17 @@ static int is_pmbr_valid(legacy_mbr *mbr, sector_t total_sectors)
  * @buffer: destination buffer
  * @count: bytes to read
  *
- * Description: Reads @count bytes from @state->bdev into @buffer.
+ * Description: Reads @count bytes from @state->disk into @buffer.
  * Returns number of bytes read on success, 0 on error.
  */
 static size_t read_lba(struct parsed_partitions *state,
 		       u64 lba, u8 *buffer, size_t count)
 {
 	size_t totalreadcount = 0;
-	struct block_device *bdev = state->bdev;
-	sector_t n = lba * (bdev_logical_block_size(bdev) / 512);
+	sector_t n = lba *
+		(queue_logical_block_size(state->disk->queue) / 512);
 
-	if (!buffer || lba > last_lba(bdev))
+	if (!buffer || lba > last_lba(state->disk))
                 return 0;
 
 	while (count) {
@@ -302,14 +300,14 @@ static gpt_entry *alloc_read_gpt_entries(struct parsed_partitions *state,
  * @lba: the Logical Block Address of the partition table
  * 
  * Description: returns GPT header on success, NULL on error.   Allocates
- * and fills a GPT header starting at @ from @state->bdev.
+ * and fills a GPT header starting at @ from @state->disk.
  * Note: remember to free gpt when finished with it.
  */
 static gpt_header *alloc_read_gpt_header(struct parsed_partitions *state,
 					 u64 lba)
 {
 	gpt_header *gpt;
-	unsigned ssz = bdev_logical_block_size(state->bdev);
+	unsigned ssz = queue_logical_block_size(state->disk->queue);
 
 	gpt = kmalloc(ssz, GFP_KERNEL);
 	if (!gpt)
@@ -356,10 +354,10 @@ static int is_gpt_valid(struct parsed_partitions *state, u64 lba,
 
 	/* Check the GUID Partition Table header size is too big */
 	if (le32_to_cpu((*gpt)->header_size) >
-			bdev_logical_block_size(state->bdev)) {
+			queue_logical_block_size(state->disk->queue)) {
 		pr_debug("GUID Partition Table Header size is too large: %u > %u\n",
 			le32_to_cpu((*gpt)->header_size),
-			bdev_logical_block_size(state->bdev));
+			queue_logical_block_size(state->disk->queue));
 		goto fail;
 	}
 
@@ -395,7 +393,7 @@ static int is_gpt_valid(struct parsed_partitions *state, u64 lba,
 	/* Check the first_usable_lba and last_usable_lba are
 	 * within the disk.
 	 */
-	lastlba = last_lba(state->bdev);
+	lastlba = last_lba(state->disk);
 	if (le64_to_cpu((*gpt)->first_usable_lba) > lastlba) {
 		pr_debug("GPT: first_usable_lba incorrect: %lld > %lld\n",
 			 (unsigned long long)le64_to_cpu((*gpt)->first_usable_lba),
@@ -587,13 +585,13 @@ static int find_valid_gpt(struct parsed_partitions *state, gpt_header **gpt,
 	gpt_header *pgpt = NULL, *agpt = NULL;
 	gpt_entry *pptes = NULL, *aptes = NULL;
 	legacy_mbr *legacymbr;
-	sector_t total_sectors = i_size_read(state->bdev->bd_inode) >> 9;
+	sector_t total_sectors = get_capacity(state->disk);
 	u64 lastlba;
 
 	if (!ptes)
 		return 0;
 
-	lastlba = last_lba(state->bdev);
+	lastlba = last_lba(state->disk);
         if (!force_gpt) {
 		/* This will be added to the EFI Spec. per Intel after v1.02. */
 		legacymbr = kzalloc(sizeof(*legacymbr), GFP_KERNEL);
@@ -705,7 +703,7 @@ int efi_partition(struct parsed_partitions *state)
 	gpt_header *gpt = NULL;
 	gpt_entry *ptes = NULL;
 	u32 i;
-	unsigned ssz = bdev_logical_block_size(state->bdev) / 512;
+	unsigned ssz = queue_logical_block_size(state->disk->queue) / 512;
 
 	if (!find_valid_gpt(state, &gpt, &ptes) || !gpt || !ptes) {
 		kfree(gpt);
@@ -722,7 +720,7 @@ int efi_partition(struct parsed_partitions *state)
 		u64 size = le64_to_cpu(ptes[i].ending_lba) -
 			   le64_to_cpu(ptes[i].starting_lba) + 1ULL;
 
-		if (!is_pte_valid(&ptes[i], last_lba(state->bdev)))
+		if (!is_pte_valid(&ptes[i], last_lba(state->disk)))
 			continue;
 
 		put_partition(state, i+1, start * ssz, size * ssz);
diff --git a/block/partitions/ibm.c b/block/partitions/ibm.c
index 4b044e620d35..9bca396aef4a 100644
--- a/block/partitions/ibm.c
+++ b/block/partitions/ibm.c
@@ -290,8 +290,8 @@ static int find_cms1_partitions(struct parsed_partitions *state,
 int ibm_partition(struct parsed_partitions *state)
 {
 	int (*fn)(struct gendisk *disk, dasd_information2_t *info);
-	struct block_device *bdev = state->bdev;
-	struct gendisk *disk = bdev->bd_disk;
+	struct gendisk *disk = state->disk;
+	struct block_device *bdev = disk->part0;
 	int blocksize, res;
 	loff_t i_size, offset, size;
 	dasd_information2_t *info;
diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index b8b518d7fb77..27f6c7d9c776 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -304,7 +304,7 @@ static bool ldm_validate_privheads(struct parsed_partitions *state,
 		}
 	}
 
-	num_sects = state->bdev->bd_inode->i_size >> 9;
+	num_sects = get_capacity(state->disk);
 
 	if ((ph[0]->config_start > num_sects) ||
 	   ((ph[0]->config_start + ph[0]->config_size) > num_sects)) {
@@ -339,11 +339,11 @@ static bool ldm_validate_privheads(struct parsed_partitions *state,
 /**
  * ldm_validate_tocblocks - Validate the table of contents and its backups
  * @state: Partition check state including device holding the LDM Database
- * @base:  Offset, into @state->bdev, of the database
+ * @base:  Offset, into @state->disk, of the database
  * @ldb:   Cache of the database structures
  *
  * Find and compare the four tables of contents of the LDM Database stored on
- * @state->bdev and return the parsed information into @toc1.
+ * @state->disk and return the parsed information into @toc1.
  *
  * The offsets and sizes of the configs are range-checked against a privhead.
  *
@@ -486,8 +486,8 @@ static bool ldm_validate_vmdb(struct parsed_partitions *state,
  *       only likely to happen if the underlying device is strange.  If that IS
  *       the case we should return zero to let someone else try.
  *
- * Return:  'true'   @state->bdev is a dynamic disk
- *          'false'  @state->bdev is not a dynamic disk, or an error occurred
+ * Return:  'true'   @state->disk is a dynamic disk
+ *          'false'  @state->disk is not a dynamic disk, or an error occurred
  */
 static bool ldm_validate_partition_table(struct parsed_partitions *state)
 {
@@ -1340,7 +1340,7 @@ static bool ldm_frag_commit (struct list_head *frags, struct ldmdb *ldb)
 /**
  * ldm_get_vblks - Read the on-disk database of VBLKs into memory
  * @state: Partition check state including device holding the LDM Database
- * @base:  Offset, into @state->bdev, of the database
+ * @base:  Offset, into @state->disk, of the database
  * @ldb:   Cache of the database structures
  *
  * To use the information from the VBLKs, they need to be read from the disk,
@@ -1432,10 +1432,10 @@ static void ldm_free_vblks (struct list_head *lh)
  * example, if the device is hda, we would have: hda1: LDM database, hda2, hda3,
  * and so on: the actual data containing partitions.
  *
- * Return:  1 Success, @state->bdev is a dynamic disk and we handled it
- *          0 Success, @state->bdev is not a dynamic disk
+ * Return:  1 Success, @state->disk is a dynamic disk and we handled it
+ *          0 Success, @state->disk is not a dynamic disk
  *         -1 An error occurred before enough information had been read
- *            Or @state->bdev is a dynamic disk, but it may be corrupted
+ *            Or @state->disk is a dynamic disk, but it may be corrupted
  */
 int ldm_partition(struct parsed_partitions *state)
 {
diff --git a/block/partitions/mac.c b/block/partitions/mac.c
index b6095335636c..7b521df00a39 100644
--- a/block/partitions/mac.c
+++ b/block/partitions/mac.c
@@ -133,7 +133,7 @@ int mac_partition(struct parsed_partitions *state)
 	}
 #ifdef CONFIG_PPC_PMAC
 	if (found_root_goodness)
-		note_bootable_part(state->bdev->bd_dev, found_root,
+		note_bootable_part(state->disk->part0->bd_dev, found_root,
 				   found_root_goodness);
 #endif
 
diff --git a/block/partitions/msdos.c b/block/partitions/msdos.c
index f5102596a984..b5d5c229cc3b 100644
--- a/block/partitions/msdos.c
+++ b/block/partitions/msdos.c
@@ -135,11 +135,12 @@ static void parse_extended(struct parsed_partitions *state,
 	Sector sect;
 	unsigned char *data;
 	sector_t this_sector, this_size;
-	sector_t sector_size = bdev_logical_block_size(state->bdev) / 512;
+	sector_t sector_size;
 	int loopct = 0;		/* number of links followed
 				   without finding a data partition */
 	int i;
 
+	sector_size = queue_logical_block_size(state->disk->queue) / 512;
 	this_sector = first_sector;
 	this_size = first_size;
 
@@ -579,7 +580,7 @@ static struct {
 
 int msdos_partition(struct parsed_partitions *state)
 {
-	sector_t sector_size = bdev_logical_block_size(state->bdev) / 512;
+	sector_t sector_size;
 	Sector sect;
 	unsigned char *data;
 	struct msdos_partition *p;
@@ -587,6 +588,7 @@ int msdos_partition(struct parsed_partitions *state)
 	int slot;
 	u32 disksig;
 
+	sector_size = queue_logical_block_size(state->disk->queue) / 512;
 	data = read_part_sector(state, 0, &sect);
 	if (!data)
 		return -1;
diff --git a/block/partitions/sgi.c b/block/partitions/sgi.c
index 4273f1bb0515..9cc6b8c1eea4 100644
--- a/block/partitions/sgi.c
+++ b/block/partitions/sgi.c
@@ -43,7 +43,6 @@ int sgi_partition(struct parsed_partitions *state)
 	Sector sect;
 	struct sgi_disklabel *label;
 	struct sgi_partition *p;
-	char b[BDEVNAME_SIZE];
 
 	label = read_part_sector(state, 0, &sect);
 	if (!label)
@@ -52,7 +51,7 @@ int sgi_partition(struct parsed_partitions *state)
 	magic = label->magic_mushroom;
 	if(be32_to_cpu(magic) != SGI_LABEL_MAGIC) {
 		/*printk("Dev %s SGI disklabel: bad magic %08x\n",
-		       bdevname(bdev, b), be32_to_cpu(magic));*/
+		       state->disk->disk_name, be32_to_cpu(magic));*/
 		put_dev_sector(sect);
 		return 0;
 	}
@@ -63,7 +62,7 @@ int sgi_partition(struct parsed_partitions *state)
 	}
 	if(csum) {
 		printk(KERN_WARNING "Dev %s SGI disklabel: csum bad, label corrupted\n",
-		       bdevname(state->bdev, b));
+		       state->disk->disk_name);
 		put_dev_sector(sect);
 		return 0;
 	}
diff --git a/block/partitions/sun.c b/block/partitions/sun.c
index 47dc53eccf77..ddf9e6def4b2 100644
--- a/block/partitions/sun.c
+++ b/block/partitions/sun.c
@@ -65,7 +65,6 @@ int sun_partition(struct parsed_partitions *state)
 	} * label;
 	struct sun_partition *p;
 	unsigned long spc;
-	char b[BDEVNAME_SIZE];
 	int use_vtoc;
 	int nparts;
 
@@ -76,7 +75,7 @@ int sun_partition(struct parsed_partitions *state)
 	p = label->partitions;
 	if (be16_to_cpu(label->magic) != SUN_LABEL_MAGIC) {
 /*		printk(KERN_INFO "Dev %s Sun disklabel: bad magic %04x\n",
-		       bdevname(bdev, b), be16_to_cpu(label->magic)); */
+		       state->disk->disk_name, be16_to_cpu(label->magic)); */
 		put_dev_sector(sect);
 		return 0;
 	}
@@ -86,7 +85,7 @@ int sun_partition(struct parsed_partitions *state)
 		csum ^= *ush--;
 	if (csum) {
 		printk("Dev %s Sun disklabel: Csum bad, label corrupted\n",
-		       bdevname(state->bdev, b));
+		       state->disk->disk_name);
 		put_dev_sector(sect);
 		return 0;
 	}
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
