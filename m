Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 138144038F4
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Sep 2021 13:40:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mNvvo-0002s3-0E; Wed, 08 Sep 2021 11:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yanp.bugz@gmail.com>) id 1mHQGm-00013E-ME
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 21 Aug 2021 12:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CsiDXQX5CqxTRDjYxjqIP5WMHOM40KiYSXEpLVVFU1A=; b=ChDWktSjWs2ZOQtDP4g0bHZK+R
 gvnM3rsFHvPpUpxs4SQc5uhAMvIYSrwiaENTjOKZxhwYmhQNe1xwSOqx0YUD2UFkTrUI83D2F+INf
 z/wK/cGZFYUZlRMeXCroqo2GlsycrNz5ar+q9rRjtbg3/EAKlR3efVYaSUOl9NooP8Uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CsiDXQX5CqxTRDjYxjqIP5WMHOM40KiYSXEpLVVFU1A=; b=WB3l9pL40w671L7DLqiVzPyVrx
 aUkk8yViqrXQLDsmJwBEgKM+f1Pq0RwLn3upATgPAXumB0Hh0H2ggyJ5rkv2EIl6Ov64puKGHhwM5
 2/FK/e5mlePyyRqnv0/v9wJHI09seDtJg23KjHiovSvzlisPM1xybeWnsXZeZQxjgLSw=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mHQGk-0007Eu-Tz
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 21 Aug 2021 12:38:40 +0000
Received: by mail-lf1-f48.google.com with SMTP id r9so26647417lfn.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 21 Aug 2021 05:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CsiDXQX5CqxTRDjYxjqIP5WMHOM40KiYSXEpLVVFU1A=;
 b=WWMwGIi/b21LZpvv/cS/fjlWSHCpJw3bHeWU/+5/AT4GwzvHKlW9cMNl7Np3tmk0h9
 uXcKGAJ6rv/rdECycldq5oDMpnrwWB3y5l4vmbnRX43QUImMvKZGEl7p7f5TjHOsHPfY
 pNhmKczJsLLlShgDh9wkKsTt2U0w+sKezf9S/jdTEhm4N1mNrC2bse+C4oGKS3mFryg+
 LSHfs6o8utKohNPh6ARmlNv22bq+MEEBgjMBu5qaS99LVEnQ3kIYrIuaLNOtpq4Y8D2R
 GC6aJ9FnqIB9uDSCWRySMymLhVEEOCHKthAxmvXG+Z42dRKUhNud9moEbdZvJZTuGAAP
 QcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CsiDXQX5CqxTRDjYxjqIP5WMHOM40KiYSXEpLVVFU1A=;
 b=T6HAlDV+UII16kd3s6TVEMYDIajZlZBqfdAiZL0sHppAk/D24Mvgcd6cB9B5FEXw09
 HRmg6i7PYRLq/gunHarEriwKMb+N7zAYMctBJ4ac+0bEKB+mAO9GVRsWDbWGyEneBWfY
 fibmZ3ufT8rSAbqWyMK/8Xci36gu4eMU2RaqDohUthj2IVLT4YpcpXhXimZUfiZkJWiT
 peyUGGrvdOtPMNIbjw1MtyRjo/5QqLfUYy8V+YgkUvcs0tYHoKMKI1imYHdjDMJsGMjm
 CaDKKSm62FDRN8owji19d7Kq8uo0McqrRgoPGfl75irqWlHPhv8eRAupx9IIZKCvqxTL
 sQgg==
X-Gm-Message-State: AOAM533dvdRWYjWitW0OTCBGZmWiqZKb3LhQo9nNbI6XzwJiVy3qIS0h
 NK15+eKS+UBJkd6XwOOeELs=
X-Google-Smtp-Source: ABdhPJwfEJRPHfXO35VkKUGcyuY5s+ZbtM60QpaKjjPY1rjUCUUDGMYVNAqYSvsDxlhraOX3EFF1SQ==
X-Received: by 2002:ac2:484a:: with SMTP id 10mr1648015lfy.21.1629549512342;
 Sat, 21 Aug 2021 05:38:32 -0700 (PDT)
Received: from [192.168.0.13] (broadband-46-242-116-145.ip.moscow.rt.ru.
 [46.242.116.145])
 by smtp.gmail.com with ESMTPSA id w6sm908269lfk.163.2021.08.21.05.38.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 21 Aug 2021 05:38:31 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>, "Darrick J. Wong" <djwong@kernel.org>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729162459.GA3601405@magnolia> <YQdlJM6ngxPoeq4U@mit.edu>
From: Yan Pashkovsky <yanp.bugz@gmail.com>
Message-ID: <2399771e-8222-267d-1655-c84a1401f2cd@gmail.com>
Date: Sat, 21 Aug 2021 15:38:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YQdlJM6ngxPoeq4U@mit.edu>
Content-Language: en-US
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yanp.bugz[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mHQGk-0007Eu-Tz
X-Mailman-Approved-At: Wed, 08 Sep 2021 11:39:38 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: ebiggers@kernel.org, andy.lavr@gmail.com, kari.argillander@gmail.com,
 nborisov@suse.com, oleksandr@natalenko.name, rdunlap@infradead.org,
 dsterba@suse.cz, willy@infradead.org, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

> Konstantin, I would *strongly* encourage you to try running fstests,
> about 60 seconds into a run, we discover that generic/013 will trigger
> locking problems that could lead to deadlocks.

Seems like it's a real issue. I was using new HDD and ntfs3-dkms (v26) 
in Arch and faced locking while was doing rsync:

[ 5529.507567] INFO: task kworker/0:1:18 blocked for more than 1105 seconds.
[ 5529.507580]       Tainted: P           OE     5.13.4-arch1-1 #1
[ 5529.507584] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
disables this message.
[ 5529.507586] task:kworker/0:1     state:D stack:    0 pid:   18 ppid: 
     2 flags:0x00004000
[ 5529.507598] Workqueue: usb_hub_wq hub_event
[ 5529.507612] Call Trace:
[ 5529.507615]  ? out_of_line_wait_on_bit_lock+0xb0/0xb0
[ 5529.507631]  __schedule+0x310/0x930
[ 5529.507641]  ? out_of_line_wait_on_bit_lock+0xb0/0xb0
[ 5529.507648]  schedule+0x5b/0xc0
[ 5529.507654]  bit_wait+0xd/0x60
[ 5529.507661]  __wait_on_bit+0x2a/0x90
[ 5529.507669]  __inode_wait_for_writeback+0xb0/0xe0
[ 5529.507680]  ? var_wake_function+0x20/0x20
[ 5529.507689]  writeback_single_inode+0x64/0x140
[ 5529.507699]  sync_inode_metadata+0x3d/0x60
[ 5529.507712]  ntfs_set_state+0x126/0x1a0 [ntfs3]
[ 5529.507738]  ni_write_inode+0x244/0xef0 [ntfs3]
[ 5529.507764]  ? pagevec_lookup_range_tag+0x24/0x30
[ 5529.507772]  ? __filemap_fdatawait_range+0x6f/0xf0
[ 5529.507785]  __writeback_single_inode+0x260/0x310
[ 5529.507795]  writeback_single_inode+0xa7/0x140
[ 5529.507803]  sync_inode_metadata+0x3d/0x60
[ 5529.507814]  ntfs_set_state+0x126/0x1a0 [ntfs3]
[ 5529.507834]  ntfs_sync_fs+0xf9/0x100 [ntfs3]
[ 5529.507857]  sync_filesystem+0x40/0x90
[ 5529.507868]  fsync_bdev+0x21/0x60
[ 5529.507874]  delete_partition+0x13/0x80
[ 5529.507882]  blk_drop_partitions+0x5b/0xa0
[ 5529.507889]  del_gendisk+0xa5/0x220
[ 5529.507895]  sd_remove+0x3d/0x80
[ 5529.507907]  __device_release_driver+0x17a/0x230
[ 5529.507918]  device_release_driver+0x24/0x30
[ 5529.507927]  bus_remove_device+0xdb/0x140
[ 5529.507937]  device_del+0x18b/0x400
[ 5529.507943]  ? ata_tlink_match+0x30/0x30
[ 5529.507949]  ? attribute_container_device_trigger+0xc5/0x100
[ 5529.507959]  __scsi_remove_device+0x118/0x150
[ 5529.507967]  scsi_forget_host+0x54/0x60
[ 5529.507978]  scsi_remove_host+0x72/0x110
[ 5529.507988]  usb_stor_disconnect+0x46/0xb0 [usb_storage]
[ 5529.508003]  usb_unbind_interface+0x8a/0x270
[ 5529.508010]  ? kernfs_find_ns+0x35/0xd0
[ 5529.508017]  __device_release_driver+0x17a/0x230
[ 5529.508027]  device_release_driver+0x24/0x30
[ 5529.508036]  bus_remove_device+0xdb/0x140
[ 5529.508044]  device_del+0x18b/0x400
[ 5529.508050]  ? kobject_put+0x98/0x1d0
[ 5529.508062]  usb_disable_device+0xc6/0x1f0
[ 5529.508073]  usb_disconnect.cold+0x7e/0x250
[ 5529.508085]  hub_event+0xc7b/0x17f0
[ 5529.508099]  process_one_work+0x1e3/0x3b0
[ 5529.508109]  worker_thread+0x50/0x3b0
[ 5529.508115]  ? process_one_work+0x3b0/0x3b0
[ 5529.508122]  kthread+0x133/0x160
[ 5529.508127]  ? set_kthread_struct+0x40/0x40
[ 5529.508133]  ret_from_fork+0x22/0x30

[ 8440.627659] blk_update_request: I/O error, dev sdd, sector 256017240 
op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[ 8440.627667] ntfs3: 165 callbacks suppressed
[ 8440.627667] ntfs3: sdd1: failed to read volume at offset 0x1e84f6b000
[ 8440.627673] blk_update_request: I/O error, dev sdd, sector 256017240 
op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[ 8440.627676] ntfs3: sdd1: failed to read volume at offset 0x1e84f6b000
[ 8440.778355] blk_update_request: I/O error, dev sdd, sector 6293496 op 
0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[ 8440.778384] ntfs3: sdd1: failed to read volume at offset 0xbffff000
[ 8440.778412] blk_update_request: I/O error, dev sdd, sector 6353096 op 
0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[ 8440.778428] ntfs3: sdd1: failed to read volume at offset 0xc1d19000
[ 8440.778441] blk_update_request: I/O error, dev sdd, sector 6353096 op 
0x0:(READ) flags 0x0 phys_seg 1 prio class 0
[ 8440.778452] ntfs3: sdd1: failed to read volume at offset 0xc1d19000
[ 8440.778459] ntfs3: sdd1: ntfs_evict_inode r=0 failed, -22.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
