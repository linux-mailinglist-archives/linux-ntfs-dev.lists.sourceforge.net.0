Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 259C542BD00
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabdY-0000x2-HV; Wed, 13 Oct 2021 10:37:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maWaP-00047L-SB; Wed, 13 Oct 2021 05:13:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ocvXC+DvSauKdmmvS3p+BxJi5u95doUk5KlK23wKtqo=; b=MQSx3Ydr1+uP3qikZ2i0+rLWSE
 8URjyELu1UurmTF339+s6SnNnJgCxDd6O6h5ieR/he8S8zzsyYvLNyh+FPCMPerVNh6ujpEbJi6at
 5DzJFgnzshd/4ebzKS702j6DH2gzMfbKgU0R1E/M1xFVpOMhUZmoGVvirWQXTgAQtJbY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ocvXC+DvSauKdmmvS3p+BxJi5u95doUk5KlK23wKtqo=; b=R
 OUPXRc19nU/bYAtbWGevNxbV0Gy/jAXj1HRG/AJzVmi1k5XPcd0+I+r1nKy59wgImdTVq9pfQ9xWc
 KCFgAwvjlJ2lhNDNfA2RqeSiJZv/eG+1RTrRfRFAcCDnZrSD9cdhJeFQRIoZYHcex8XrNG0K2t6h7
 IKkeNgAx67MeXJIw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maWaL-0001Qr-7a; Wed, 13 Oct 2021 05:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ocvXC+DvSauKdmmvS3p+BxJi5u95doUk5KlK23wKtqo=; b=lKRpM4ZXjdzEAs+vZHMan9ZhwK
 q3qA9dd5QajFA+KsuGdVyTH2p+oZZPEv/z2NSgSxTwIMMwqmktOR+s0Mrd19t1c1Y/TakGT40A9Wj
 fXHJiNb6NQJwkxlZ/5iLycWCBNdMTLXRP1g8wuFiwK5UhTbY4DE7tpL0AHanppMBRE/m1Ine/XAEK
 um2dw0LVt4/UjLCyOHoVNjJK0jpXEaLw+w3Q6MwnUfqPKIR8hZ7XIOjLGS/AwhJhnrAzptzhgIYv3
 k508G2hmAkGrCbErzCtBLkTxM5WVEpuUuduXQQzcasviJArvc73oNwcMB0CSLN98PutjOV+1MzU1W
 3RwzUyhQ==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWXM-0075tt-3G; Wed, 13 Oct 2021 05:10:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:13 +0200
Message-Id: <20211013051042.1065752-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
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
 Content preview:  Hi Jens, various drivers currently poke directy at the block
 device inode, which is a bit of a mess. This series cleans up the places
 that read the block device size to use the proper helpers. I have separate
 [...] Content analysis details:   (0.2 points, 6.0 required)
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
X-Headers-End: 1maWaL-0001Qr-7a
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:20 +0000
Subject: [Linux-NTFS-Dev] don't use ->bd_inode to access the block device
 size
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

Hi Jens,

various drivers currently poke directy at the block device inode, which
is a bit of a mess.  This series cleans up the places that read the
block device size to use the proper helpers.  I have separate patches
for many of the other bd_inode uses, but this series is already big
enough as-is,

I wondered about adding a helper for looking at the size in byte units
to avoid the SECTOR_SHIFT shifts in various places.  But given that
I could not come up with a good name and block devices fundamentally
work in sector size granularity I decided against that.

Diffstat:
 block/fops.c                        |    2 +-
 drivers/block/drbd/drbd_int.h       |    3 +--
 drivers/md/bcache/super.c           |    2 +-
 drivers/md/bcache/util.h            |    4 ----
 drivers/md/bcache/writeback.c       |    2 +-
 drivers/md/dm-bufio.c               |    2 +-
 drivers/md/dm-cache-metadata.c      |    2 +-
 drivers/md/dm-cache-target.c        |    2 +-
 drivers/md/dm-clone-target.c        |    2 +-
 drivers/md/dm-dust.c                |    5 ++---
 drivers/md/dm-ebs-target.c          |    2 +-
 drivers/md/dm-era-target.c          |    2 +-
 drivers/md/dm-exception-store.h     |    2 +-
 drivers/md/dm-flakey.c              |    3 +--
 drivers/md/dm-integrity.c           |    6 +++---
 drivers/md/dm-linear.c              |    3 +--
 drivers/md/dm-log-writes.c          |    4 ++--
 drivers/md/dm-log.c                 |    2 +-
 drivers/md/dm-mpath.c               |    2 +-
 drivers/md/dm-raid.c                |    6 +++---
 drivers/md/dm-switch.c              |    2 +-
 drivers/md/dm-table.c               |    3 +--
 drivers/md/dm-thin-metadata.c       |    2 +-
 drivers/md/dm-thin.c                |    2 +-
 drivers/md/dm-verity-target.c       |    3 +--
 drivers/md/dm-writecache.c          |    2 +-
 drivers/md/dm-zoned-target.c        |    2 +-
 drivers/md/md.c                     |   26 +++++++++++---------------
 drivers/mtd/devices/block2mtd.c     |    5 +++--
 drivers/nvme/target/io-cmd-bdev.c   |    4 ++--
 drivers/target/target_core_iblock.c |    5 +++--
 fs/affs/super.c                     |    2 +-
 fs/btrfs/dev-replace.c              |    2 +-
 fs/btrfs/disk-io.c                  |    3 ++-
 fs/btrfs/ioctl.c                    |    4 ++--
 fs/btrfs/volumes.c                  |    7 ++++---
 fs/buffer.c                         |    4 ++--
 fs/cramfs/inode.c                   |    2 +-
 fs/ext4/super.c                     |    2 +-
 fs/fat/inode.c                      |    5 +----
 fs/hfs/mdb.c                        |    2 +-
 fs/hfsplus/wrapper.c                |    2 +-
 fs/jfs/resize.c                     |    5 ++---
 fs/jfs/super.c                      |    5 ++---
 fs/nfs/blocklayout/dev.c            |    4 ++--
 fs/nilfs2/ioctl.c                   |    2 +-
 fs/nilfs2/super.c                   |    2 +-
 fs/nilfs2/the_nilfs.c               |    3 ++-
 fs/ntfs/super.c                     |    8 +++-----
 fs/ntfs3/super.c                    |    3 +--
 fs/pstore/blk.c                     |    4 ++--
 fs/reiserfs/super.c                 |    7 ++-----
 fs/squashfs/super.c                 |    5 +++--
 fs/udf/lowlevel.c                   |    5 ++---
 fs/udf/super.c                      |    9 +++------
 include/linux/genhd.h               |    6 ++++++
 56 files changed, 100 insertions(+), 117 deletions(-)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
