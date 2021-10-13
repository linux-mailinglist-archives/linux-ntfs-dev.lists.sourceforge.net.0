Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF4842BD27
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabde-0001EO-Q7; Wed, 13 Oct 2021 10:37:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <keescook@chromium.org>) id 1maXvI-0007ox-Vy
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:39:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DD/2eDntZRvmYFLabpX6hx1U0eeFdg0nt6CnyRZUcUo=; b=N2pGmI57neIbD3Xe7OE34UbhYK
 LCMLqh5iZ/vf84yqDOZyyE/z1YJnH5FKsf5Hc8tMR+gecofu1S0oQtlp5/IfIiIbwSzciAZkQZ/H4
 M3RrNiq7LygSeGomEHhXmgD19fWMaJ+V22Dnmdl2HenD8W9KeM7TtRjxlOwUhsQlA5sU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DD/2eDntZRvmYFLabpX6hx1U0eeFdg0nt6CnyRZUcUo=; b=aRAvn/uuMsmRuGxGg7SdQr8zFO
 2fIjsH8N1WoUG01M+rjr3HMe5TDCSdiQWNXa7dy48attIxc7XbUQNjp1bz9/PPtnvCV4RprcQJ1sS
 +vUhfl7lhYxvdAEFJb8vzg4VgpAVeV6a9bMm6wM7SZH56+Byh8CSMZP+InWfuyXRP3qs=;
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXvI-0003Kj-8L
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:39:32 +0000
Received: by mail-pl1-f174.google.com with SMTP id g9so1107213plo.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DD/2eDntZRvmYFLabpX6hx1U0eeFdg0nt6CnyRZUcUo=;
 b=BK3/LJ89flw5mVlU3UcEyxJ6LbnnmcNslFQOP5bfSd/QHd96C82eb1OGM/6y9E9tVZ
 +RxJ42PRvcA8OnuNTe7jWQrLB4kIfwLscnkVOAeCEBYDFaLLczsrzmikDhrnLSmHevHI
 DJYQS0KGPHFoIgmlnCi12Zqd0uHHCS6ptE1xE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DD/2eDntZRvmYFLabpX6hx1U0eeFdg0nt6CnyRZUcUo=;
 b=2JysASPijYghSwYo0E9hKWR/z9A6PKb1aSKz003I5+P7Vf4FfN1+Ggno+1699UmkLN
 29/9vnZu3AXyHZNV72pLgRmS6pMMWHkZkwbEQgAwQd/cv20S7htvV+iJ6eOBepPvXMj6
 kMdEa6+FyuDiybJF2i2hGKrCgO5dlJkKy3FJtnPSvCK+VYNrFagZUiP6gS7jxxxZC4+c
 sq97Zi2KLQ4ejl/MquclboWrbDRw6AvNKzy7m4jtsTj9diZVguhUirPZ6O0XjMgvme/d
 ctgynEBsVe40HSlXwAcyb3lc0685PW7plIHSQchc43vb2QOVJSzKljeTASOevmcPxpdK
 I1Tg==
X-Gm-Message-State: AOAM531sJn/ZHHhcQebPHXRsQa9ZTfP5ajhTlxBeVZVpPWvfdXDsQNwe
 e8jgruqNi+6993maDzlT1Ec/wA==
X-Google-Smtp-Source: ABdhPJz6dN+fakHkI4mmw5FMrWYwE5jr866artFMUIcBHqytxUEdEx+T1ampoWpSo+mgvVckvfVoUQ==
X-Received: by 2002:a17:90b:4b4f:: with SMTP id
 mi15mr808506pjb.97.1634107166729; 
 Tue, 12 Oct 2021 23:39:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y17sm9562796pfn.96.2021.10.12.23.39.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:39:26 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:39:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122335.19348E8E8@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-1-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:13AM +0200, Christoph Hellwig
 wrote: > I wondered about adding a helper for looking at the size in byte
 units > to avoid the SECTOR_SHIFT shifts in various places. But gi [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.174 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXvI-0003Kj-8L
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:20 +0000
Subject: Re: [Linux-NTFS-Dev] don't use ->bd_inode to access the block
 device size
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
 linux-ext4@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 07:10:13AM +0200, Christoph Hellwig wrote:
> I wondered about adding a helper for looking at the size in byte units
> to avoid the SECTOR_SHIFT shifts in various places.  But given that
> I could not come up with a good name and block devices fundamentally
> work in sector size granularity I decided against that.

Without something like bdev_nr_bytes(), this series has 13 of 29 patches
actually _adding_ an open-coded calculation:

[PATCH 05/29] mtd/block2mtd: use bdev_nr_sectors instead of open coding it
[PATCH 06/29] nvmet: use bdev_nr_sectors instead of open coding it
[PATCH 07/29] target/iblock: use bdev_nr_sectors instead of open coding it
[PATCH 08/29] fs: use bdev_nr_sectors instead of open coding it in blkdev_max_block
[PATCH 11/29] btrfs: use bdev_nr_sectors instead of open coding it
[PATCH 16/29] jfs: use bdev_nr_sectors instead of open coding it
[PATCH 17/29] nfs/blocklayout: use bdev_nr_sectors instead of open coding it
[PATCH 18/29] nilfs2: use bdev_nr_sectors instead of open coding it
[PATCH 19/29] ntfs3: use bdev_nr_sectors instead of open coding it
[PATCH 20/29] pstore/blk: use bdev_nr_sectors instead of open coding it
[PATCH 21/29] reiserfs: use bdev_nr_sectors instead of open coding it
[PATCH 22/29] squashfs: use bdev_nr_sectors instead of open coding it
[PATCH 23/29] block: use bdev_nr_sectors instead of open coding it in blkdev_fallocate

I think it's well worth having that helper (or at least leaving these
alone). Otherwise, this is a lot of churn without a clear net benefit,
IMO.

The others look good to me, though!

-Kees

>
> Diffstat:
>  block/fops.c                        |    2 +-
>  drivers/block/drbd/drbd_int.h       |    3 +--
>  drivers/md/bcache/super.c           |    2 +-
>  drivers/md/bcache/util.h            |    4 ----
>  drivers/md/bcache/writeback.c       |    2 +-
>  drivers/md/dm-bufio.c               |    2 +-
>  drivers/md/dm-cache-metadata.c      |    2 +-
>  drivers/md/dm-cache-target.c        |    2 +-
>  drivers/md/dm-clone-target.c        |    2 +-
>  drivers/md/dm-dust.c                |    5 ++---
>  drivers/md/dm-ebs-target.c          |    2 +-
>  drivers/md/dm-era-target.c          |    2 +-
>  drivers/md/dm-exception-store.h     |    2 +-
>  drivers/md/dm-flakey.c              |    3 +--
>  drivers/md/dm-integrity.c           |    6 +++---
>  drivers/md/dm-linear.c              |    3 +--
>  drivers/md/dm-log-writes.c          |    4 ++--
>  drivers/md/dm-log.c                 |    2 +-
>  drivers/md/dm-mpath.c               |    2 +-
>  drivers/md/dm-raid.c                |    6 +++---
>  drivers/md/dm-switch.c              |    2 +-
>  drivers/md/dm-table.c               |    3 +--
>  drivers/md/dm-thin-metadata.c       |    2 +-
>  drivers/md/dm-thin.c                |    2 +-
>  drivers/md/dm-verity-target.c       |    3 +--
>  drivers/md/dm-writecache.c          |    2 +-
>  drivers/md/dm-zoned-target.c        |    2 +-
>  drivers/md/md.c                     |   26 +++++++++++---------------
>  drivers/mtd/devices/block2mtd.c     |    5 +++--
>  drivers/nvme/target/io-cmd-bdev.c   |    4 ++--
>  drivers/target/target_core_iblock.c |    5 +++--
>  fs/affs/super.c                     |    2 +-
>  fs/btrfs/dev-replace.c              |    2 +-
>  fs/btrfs/disk-io.c                  |    3 ++-
>  fs/btrfs/ioctl.c                    |    4 ++--
>  fs/btrfs/volumes.c                  |    7 ++++---
>  fs/buffer.c                         |    4 ++--
>  fs/cramfs/inode.c                   |    2 +-
>  fs/ext4/super.c                     |    2 +-
>  fs/fat/inode.c                      |    5 +----
>  fs/hfs/mdb.c                        |    2 +-
>  fs/hfsplus/wrapper.c                |    2 +-
>  fs/jfs/resize.c                     |    5 ++---
>  fs/jfs/super.c                      |    5 ++---
>  fs/nfs/blocklayout/dev.c            |    4 ++--
>  fs/nilfs2/ioctl.c                   |    2 +-
>  fs/nilfs2/super.c                   |    2 +-
>  fs/nilfs2/the_nilfs.c               |    3 ++-
>  fs/ntfs/super.c                     |    8 +++-----
>  fs/ntfs3/super.c                    |    3 +--
>  fs/pstore/blk.c                     |    4 ++--
>  fs/reiserfs/super.c                 |    7 ++-----
>  fs/squashfs/super.c                 |    5 +++--
>  fs/udf/lowlevel.c                   |    5 ++---
>  fs/udf/super.c                      |    9 +++------
>  include/linux/genhd.h               |    6 ++++++
>  56 files changed, 100 insertions(+), 117 deletions(-)

--
Kees Cook


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
