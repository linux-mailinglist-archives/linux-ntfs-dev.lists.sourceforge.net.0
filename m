Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B2042BCFF
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabdY-0000xF-LZ; Wed, 13 Oct 2021 10:37:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maWbY-0005Qb-9u; Wed, 13 Oct 2021 05:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xbvviTnaXJGkyPAE7V0Wv817NIzgoLv0IeosRbA7bOI=; b=iVQ79gaHdD9NSL1KK2/bdHHw19
 JnV+IxZsBkGvbMqKOdHu9wAgbyRJQ1fi3rAAokZLn0c8e5+F/N3d0JfDDyQu4D6LgDJHpUVqkliEv
 Mr65EKKNAPUusI+p2hK9ozfDy5xOhHQiUDCtHgCmAipYK9MGYGv2A88bk5ap8prynb0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xbvviTnaXJGkyPAE7V0Wv817NIzgoLv0IeosRbA7bOI=; b=Tq0bsvSPZ7Ktcer+hYs8OLryo2
 7DNEo5tQoHxd8htlko0clKGFx6HXXkjWV0toIA+cxiGUUIKCcShNj5vt3l7ZNY2zQLS+VWp5GyuU3
 jAI63odRwyysCYDi7SX44CWc7AhuZBqnBOk3ABCVEDOxNI1hYQt6ntxMxkgEhz0xPEo8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maWbV-007Cdv-Go; Wed, 13 Oct 2021 05:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=xbvviTnaXJGkyPAE7V0Wv817NIzgoLv0IeosRbA7bOI=; b=cCXjRJKxdcjkqqFc0tvMZY/a5g
 SugwD7sJZMLowObwvX/yGpnc6TGfdOSMJ5YbuJw+tYvDLJ2O2kg49Ha8EBDK43gqeY/S2IWXAhIQZ
 EJEuY4oclhtqkJ1k1mcnqXvqJUf/30M1VIxxGz+DYdVdvKizD53B8MMSsq/X00xjkl5kbeeg+gOCt
 s6EuKKNghPbrbcDFeIyNHmF8cwZ2pU47c0rHQOXRK/vgmdSUjlVwfMsyWGjLqertf2mnymuxbF2yw
 0qLbM7EpWiOLjPkaqVtW2u2CBStg5Li95sdEYkOHdAmrluetXirxJCpq8XlKOeH+eSkLmEAi+q5+m
 HjLmUUQQ==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWY4-0075vO-3V; Wed, 13 Oct 2021 05:12:01 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:14 +0200
Message-Id: <20211013051042.1065752-2-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013051042.1065752-1-hch@lst.de>
References: <20211013051042.1065752-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the equivalent block layer helper instead. Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- drivers/md/bcache/super.c | 2 +-
 drivers/md/bcache/util.h
 | 4 ---- drivers/md/bcache/writeback.c | 2 +- 3 files changed, 2 insertions(+),
 6 deletions( [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1maWbV-007Cdv-Go
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:20 +0000
Subject: [Linux-NTFS-Dev] [PATCH 01/29] bcache: remove bdev_sectors
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
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Use the equivalent block layer helper instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/md/bcache/super.c     | 2 +-
 drivers/md/bcache/util.h      | 4 ----
 drivers/md/bcache/writeback.c | 2 +-
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/md/bcache/super.c b/drivers/md/bcache/super.c
index f2874c77ff797..4f89985abe4b7 100644
--- a/drivers/md/bcache/super.c
+++ b/drivers/md/bcache/super.c
@@ -1002,7 +1002,7 @@ static void calc_cached_dev_sectors(struct cache_set *c)
 	struct cached_dev *dc;
 
 	list_for_each_entry(dc, &c->cached_devs, list)
-		sectors += bdev_sectors(dc->bdev);
+		sectors += bdev_nr_sectors(dc->bdev);
 
 	c->cached_dev_sectors = sectors;
 }
diff --git a/drivers/md/bcache/util.h b/drivers/md/bcache/util.h
index b64460a762677..a7da7930a7fda 100644
--- a/drivers/md/bcache/util.h
+++ b/drivers/md/bcache/util.h
@@ -584,8 +584,4 @@ static inline unsigned int fract_exp_two(unsigned int x,
 void bch_bio_map(struct bio *bio, void *base);
 int bch_bio_alloc_pages(struct bio *bio, gfp_t gfp_mask);
 
-static inline sector_t bdev_sectors(struct block_device *bdev)
-{
-	return bdev->bd_inode->i_size >> 9;
-}
 #endif /* _BCACHE_UTIL_H */
diff --git a/drivers/md/bcache/writeback.c b/drivers/md/bcache/writeback.c
index 8120da278161e..c7560f66dca88 100644
--- a/drivers/md/bcache/writeback.c
+++ b/drivers/md/bcache/writeback.c
@@ -45,7 +45,7 @@ static uint64_t __calc_target_rate(struct cached_dev *dc)
 	 * backing volume uses about 2% of the cache for dirty data.
 	 */
 	uint32_t bdev_share =
-		div64_u64(bdev_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
+		div64_u64(bdev_nr_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
 				c->cached_dev_sectors);
 
 	uint64_t cache_dirty_target =
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
