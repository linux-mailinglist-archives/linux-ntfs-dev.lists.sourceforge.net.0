Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 377194319F7
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Oct 2021 14:48:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mcS3t-0003ww-A0; Mon, 18 Oct 2021 12:48:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+653fb0268b18c2e086a8+6630+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mcPdp-000341-7k; Mon, 18 Oct 2021 10:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sSdphJbx9SQw+wN4za3/OjMw3p4iKMeSjeY0No/E5ck=; b=Hi5XH2tzh/x1UVSshSyrGg+agK
 ggoM5cp1jjFTF4PgilpY/R4nj9p+l6b8w/GwkM40/r6gljIqXKK/eud5OvwYRx9or9GmmRcek8wDB
 6n59UKWlV1q05urgZRtcMcTF3utDDMvo9PqWyQXB/ovddc1W0MBkGOaeskNmy0BQD/U8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sSdphJbx9SQw+wN4za3/OjMw3p4iKMeSjeY0No/E5ck=; b=j39ts3cQONKCKE2cSeN+iYaT/z
 lMyc3GaBYNrNUgtdZkMwKE2YNySObxxvl1dqPO0wb8l2EP6Cj68GtJSyynJd2/TFe51P0cQ9pHjfm
 sugiQLTPBa+t1+bh+yUM6aNXBPxZzu1otEoRraFZWBVxgGyMiIP/ztbfIgqdgdYSzR+g=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcPdo-004BLe-KD; Mon, 18 Oct 2021 10:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=sSdphJbx9SQw+wN4za3/OjMw3p4iKMeSjeY0No/E5ck=; b=bo+nrVZXl6TTYRQlQ0bto+MepF
 SigFpnQpZERr9BHx9SPKM5M3oF1djjIgorehkbOAGiSEoKAClU9hAJOhLvQopHL+7ngHbjCp0GYh5
 HxtbySe0C4GiywWjnxtAHb3ZnvMCNabnqmvTxDGUWVlieN6Rb0q+S5b77qYYfN1Bx6ax5iCz6AGrH
 9ON2Uwy2yvzZ25ow0GUORw9zUlxRz69RVpLcvbrHTrQMiaF4iHAu1HNZdwtKFs1xQfJ1CQGhdbHTu
 v3N4NlM4aG9KmvpSER+/Mp3Yql6EAXAHbXbfbCK+GXf7UFAgNzR4TOZtkJ5cVyxvD1MufFJzB6JqD
 6aD8LsrA==;
Received: from [2001:4bb8:199:73c5:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcPdV-00Ev58-I3; Mon, 18 Oct 2021 10:12:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Mon, 18 Oct 2021 12:11:30 +0200
Message-Id: <20211018101130.1838532-31-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211018101130.1838532-1-hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the sb_bdev_nr_blocks helper instead of open coding it.
 Signed-off-by: Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook
 <keescook@chromium.org>
 Reviewed-by: Jan Kara <jack@suse.cz> --- fs/udf/lowlevel.c | 5 ++---
 fs/udf/super.c | 9 +++------ 2 files c [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mcPdo-004BLe-KD
X-Mailman-Approved-At: Mon, 18 Oct 2021 12:47:45 +0000
Subject: [Linux-NTFS-Dev] [PATCH 30/30] udf: use sb_bdev_nr_blocks
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Mike Snitzer <snitzer@redhat.com>,
 linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Use the sb_bdev_nr_blocks helper instead of open coding it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Jan Kara <jack@suse.cz>
---
 fs/udf/lowlevel.c | 5 ++---
 fs/udf/super.c    | 9 +++------
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/fs/udf/lowlevel.c b/fs/udf/lowlevel.c
index f1094cdcd6cde..46d6971721975 100644
--- a/fs/udf/lowlevel.c
+++ b/fs/udf/lowlevel.c
@@ -47,8 +47,7 @@ unsigned int udf_get_last_session(struct super_block *sb)
 
 unsigned long udf_get_last_block(struct super_block *sb)
 {
-	struct block_device *bdev = sb->s_bdev;
-	struct cdrom_device_info *cdi = disk_to_cdi(bdev->bd_disk);
+	struct cdrom_device_info *cdi = disk_to_cdi(sb->s_bdev->bd_disk);
 	unsigned long lblock = 0;
 
 	/*
@@ -56,7 +55,7 @@ unsigned long udf_get_last_block(struct super_block *sb)
 	 * Try using the device size...
 	 */
 	if (!cdi || cdrom_get_last_written(cdi, &lblock) || lblock == 0)
-		lblock = i_size_read(bdev->bd_inode) >> sb->s_blocksize_bits;
+		lblock = sb_bdev_nr_blocks(sb);
 
 	if (lblock)
 		return lblock - 1;
diff --git a/fs/udf/super.c b/fs/udf/super.c
index b2d7c57d06881..34247fba6df91 100644
--- a/fs/udf/super.c
+++ b/fs/udf/super.c
@@ -1175,8 +1175,7 @@ static int udf_load_vat(struct super_block *sb, int p_index, int type1_index)
 	struct udf_inode_info *vati;
 	uint32_t pos;
 	struct virtualAllocationTable20 *vat20;
-	sector_t blocks = i_size_read(sb->s_bdev->bd_inode) >>
-			  sb->s_blocksize_bits;
+	sector_t blocks = sb_bdev_nr_blocks(sb);
 
 	udf_find_vat_block(sb, p_index, type1_index, sbi->s_last_block);
 	if (!sbi->s_vat_inode &&
@@ -1838,8 +1837,7 @@ static int udf_check_anchor_block(struct super_block *sb, sector_t block,
 	int ret;
 
 	if (UDF_QUERY_FLAG(sb, UDF_FLAG_VARCONV) &&
-	    udf_fixed_to_variable(block) >=
-	    i_size_read(sb->s_bdev->bd_inode) >> sb->s_blocksize_bits)
+	    udf_fixed_to_variable(block) >= sb_bdev_nr_blocks(sb))
 		return -EAGAIN;
 
 	bh = udf_read_tagged(sb, block, block, &ident);
@@ -1901,8 +1899,7 @@ static int udf_scan_anchors(struct super_block *sb, sector_t *lastblock,
 		last[last_count++] = *lastblock - 152;
 
 	for (i = 0; i < last_count; i++) {
-		if (last[i] >= i_size_read(sb->s_bdev->bd_inode) >>
-				sb->s_blocksize_bits)
+		if (last[i] >= sb_bdev_nr_blocks(sb))
 			continue;
 		ret = udf_check_anchor_block(sb, last[i], fileset);
 		if (ret != -EAGAIN) {
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
