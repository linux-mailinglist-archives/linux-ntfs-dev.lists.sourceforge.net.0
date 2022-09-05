Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B20C5AD173
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  5 Sep 2022 13:23:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oVAC9-00068F-18;
	Mon, 05 Sep 2022 11:23:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <clabbe.montjoie@gmail.com>) id 1oV72C-0003Wp-O4
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 05 Sep 2022 08:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VaWJ/ARhAOBGNuUeehNxEZSalc/K693ceMetl/r8zM0=; b=iuD64CzpIhySC1WuT2FJqRVQhl
 vjrPD5n5GfXCSyi4Ks6pFSK/pgF7EaRihW3iIoCfOrteld4OeXPgcJ9UX5pgGQu6No9Tc7Z/PGju3
 4bnMhc1XngHROwsOo6oX/dUSU5my7+z/aqo2OJNRnV3vbRC/x9oEEOXOGCIgLwit+C0A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VaWJ/ARhAOBGNuUeehNxEZSalc/K693ceMetl/r8zM0=; b=b
 HViQSQaDhGMCyrj9wBJIO0c6cf/Kpt/tw2i3pFAFdJ+eSHsxdanw4gpOguJYO1cAlqEUVADcNlEh+
 S+FZC+XPKxT/63fZGvTW1Bcqp6fjhBXCfX0DhBey4bFduxKTklxKGuuMgErsWZZp0k+0qrV7mbeRV
 z4zAIc6X9iUSbPzg=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oV728-00FnvA-EE for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 05 Sep 2022 08:00:44 +0000
Received: by mail-wr1-f50.google.com with SMTP id b5so10194761wrr.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 05 Sep 2022 01:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date;
 bh=VaWJ/ARhAOBGNuUeehNxEZSalc/K693ceMetl/r8zM0=;
 b=SnJhQQZLPDQoJOp4A6JgHJxbKXZb9XVqvdh2cpuymb/xL6glfU9k9AIRC1OC4q567m
 WeGvKxSbv3ypSaMKi2ZaAquvKuuxVYsCUzdP6BUR7FLo68gDZt6Pvk68EcBVWzCVJjwG
 0iJ1ksTQhC9Peq8UKLS6K5Xdwrt22abbzta8YQBRVkHZg8DiJAUE7T4zjNj154crQmo2
 fVAwwe3YrMejDL4szCZfXaeRP49E3aqQT0fWguEpC05mSB07XUvtyyuVwRmxCsiU5Lr5
 keXZohZ4yQjL7FidpcZL5DrAGN+0vTOSZsCbo0y43Lq/WvLBGVPfvcn6Z2AtVOUBLyIc
 NoCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=VaWJ/ARhAOBGNuUeehNxEZSalc/K693ceMetl/r8zM0=;
 b=CAMNpiE9nR/fpHigFD8Xyll4qFyJ2BKP0iJUpifGjjQnVffHdmncbzbeocdgwWzMMI
 TXD5F2IET1OaDZyx9Om8bT4QnGaU/X3KIY5STbQ5YCxslW8azIqtDyFQ1yXvkORWOOY7
 SlbAUOm0Y3JGkGjDaAHlZILHEFPMkMVNAot546G4XbpiqT3XRoDogoz4mwlgW2JPC+k0
 vuMISlI0loNAXs/S+EwQ02Y1OyCNamwGe8TS4Kp0SFsOShW/cszFBKTnuTD5fWJv8B+d
 20voQ50MxInD1822KBnRarhzp6b9hiQTWs3Pq+wWdhDRvXgaLp+Ih0RPgpap61qoiCTb
 FyYw==
X-Gm-Message-State: ACgBeo3aKw+jSJJ4EvfZhxlBAYoI7TGzkuWlPMzbd0XvhhPIhfuXtpkX
 iNlqsYSegBaXZr5OcHu/3jE=
X-Google-Smtp-Source: AA6agR60M9DbGesrt7BIBrBnQOq6chv1b4N5FjBbhGVwQjqOFSOuMcViNY3ntJmPvfXnH/oAQukyzg==
X-Received: by 2002:a5d:64ab:0:b0:226:d997:ad5c with SMTP id
 m11-20020a5d64ab000000b00226d997ad5cmr20049042wrp.602.1662364833934; 
 Mon, 05 Sep 2022 01:00:33 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 l20-20020a05600c089400b003a30fbde91dsm15646478wmp.20.2022.09.05.01.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Sep 2022 01:00:33 -0700 (PDT)
Date: Mon, 5 Sep 2022 10:00:29 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net,
 akpm@linux-foundation.org
Message-ID: <YxWsnc1JlNemcXfA@Red>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello On a jetson-tk1 I got today: [ 39.582103]
 ================================
 [ 39.586361] WARNING: inconsistent lock state [ 39.590618]
 6.0.0-rc3-next-20220901-00130-gb6b3fb681f34-dirty
 #8 Not tainted [ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oV728-00FnvA-EE
X-Mailman-Approved-At: Mon, 05 Sep 2022 11:23:12 +0000
Subject: [Linux-NTFS-Dev] WARNING: inconsistent lock state when doing fdisk
 -l
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
Cc: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hello

On a jetson-tk1 I got today:
[   39.582103] ================================
[   39.586361] WARNING: inconsistent lock state
[   39.590618] 6.0.0-rc3-next-20220901-00130-gb6b3fb681f34-dirty #8 Not tainted
[   39.597649] --------------------------------
[   39.601907] inconsistent {SOFTIRQ-ON-W} -> {IN-SOFTIRQ-R} usage.
[   39.607897] rngd/218 [HC0[0]:SC1[1]:HE0:SE0] takes:
[   39.612763] c284dba4 (&inode->i_size_seqcount){+.+-}-{0:0}, at: end_bio_bh_io_sync+0x30/0x4c
[   39.621198] {SOFTIRQ-ON-W} state was registered at:
[   39.626061]   simple_write_end+0x1e8/0x2a4
[   39.630154]   page_symlink+0xb0/0x158
[   39.633808]   ramfs_symlink+0x50/0xcc
[   39.637466]   vfs_symlink+0x80/0xf0
[   39.640944]   init_symlink+0x54/0x88
[   39.644512]   do_symlink+0x54/0x88
[   39.647905]   write_buffer+0x28/0x3c
[   39.651470]   flush_buffer+0x40/0x98
[   39.655035]   __gunzip+0x2c4/0x35c
[   39.658427]   gunzip+0x2c/0x34
[   39.661470]   unpack_to_rootfs+0x18c/0x2b4
[   39.665556]   do_populate_rootfs+0x78/0x1cc
[   39.669728]   async_run_entry_fn+0x24/0xb0
[   39.673817]   process_one_work+0x288/0x774
[   39.677904]   worker_thread+0x54/0x51c
[   39.681643]   kthread+0xf8/0x12c
[   39.684862]   ret_from_fork+0x14/0x2c
[   39.688513]   0x0
[   39.690430] irq event stamp: 19119
[   39.693820] hardirqs last  enabled at (19118): [<c010145c>] __do_softirq+0xdc/0x598
[   39.701460] hardirqs last disabled at (19119): [<c0d0afb0>] _raw_read_lock_irqsave+0x84/0x88
[   39.709883] softirqs last  enabled at (19108): [<c01016b4>] __do_softirq+0x334/0x598
[   39.717609] softirqs last disabled at (19117): [<c012bdb0>] __irq_exit_rcu+0x124/0x1a8
[   39.725511] 
[   39.725511] other info that might help us debug this:
[   39.732021]  Possible unsafe locking scenario:
[   39.732021] 
[   39.737924]        CPU0
[   39.740360]        ----
[   39.742796]   lock(&inode->i_size_seqcount);
[   39.747056]   <Interrupt>
[   39.749665]     lock(&inode->i_size_seqcount);
[   39.754098] 
[   39.754098]  *** DEADLOCK ***
[   39.754098] 
[   39.760001] 1 lock held by rngd/218:
[   39.763566]  #0: c284d950 (&ni->size_lock){...-}-{2:2}, at: ntfs_end_buffer_async_read+0x68/0x458
[   39.772432] 
[   39.772432] stack backtrace:
[   39.776777] CPU: 0 PID: 218 Comm: rngd Not tainted 6.0.0-rc3-next-20220901-00130-gb6b3fb681f34-dirty #8
[   39.786149] Hardware name: NVIDIA Tegra SoC (Flattened Device Tree)
[   39.792401]  unwind_backtrace from show_stack+0x10/0x14
[   39.797618]  show_stack from dump_stack_lvl+0x58/0x70
[   39.802660]  dump_stack_lvl from mark_lock.part.0+0xb80/0x1298
[   39.808482]  mark_lock.part.0 from __lock_acquire+0xa70/0x29fc
[   39.814304]  __lock_acquire from lock_acquire+0x11c/0x3c8
[   39.819691]  lock_acquire from ntfs_end_buffer_async_read+0xac/0x458
[   39.826033]  ntfs_end_buffer_async_read from end_bio_bh_io_sync+0x30/0x4c
[   39.832809]  end_bio_bh_io_sync from blk_update_request+0x158/0x57c
[   39.839064]  blk_update_request from scsi_end_request+0x1c/0x3d4
[   39.845059]  scsi_end_request from scsi_io_completion+0x38/0x688
[   39.851053]  scsi_io_completion from blk_complete_reqs+0x54/0x60
[   39.857047]  blk_complete_reqs from __do_softirq+0x134/0x598
[   39.862694]  __do_softirq from __irq_exit_rcu+0x124/0x1a8
[   39.868083]  __irq_exit_rcu from irq_exit+0x8/0x28
[   39.872866]  irq_exit from call_with_stack+0x18/0x20
[   39.877824]  call_with_stack from __irq_usr+0x7c/0xa0
[   39.882868] Exception stack(0xf0c69fb0 to 0xf0c69ff8)
[   39.887906] 9fa0:                                     553c47b7 41bd9715 553c47b7 b6b5e9d8
[   39.896065] 9fc0: b6b5ea40 00000000 00000000 b62046a0 0000000a b635f000 beefcbf4 b6b5e924
[   39.904223] 9fe0: 0000001d b6b5e910 b6f448ec b6f44900 80000010 ffffffff

The command leading to this is a simple fdisk -l
It is not clear to me if the problem came from NTFS or ramfs.

The full output is:
fdisk -l
Disk /dev/ram0: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram1: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram2: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram3: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram4: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram5: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram6: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram7: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram8: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram9: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram10: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram11: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram12: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512[   39.577565] 
[   39.582103] ================================
[   39.586361] WARNING: inconsistent lock state
[   39.590618] 6.0.0-rc3-next-20220901-00130-gb6b3fb681f34-dirty #8 Not tainted
[   39.597649] --------------------------------
[   39.601907] inconsistent {SOFTIRQ-ON-W} -> {IN-SOFTIRQ-R} usage.
[   39.607897] rngd/218 [HC0[0]:SC1[1]:HE0:SE0] takes:
[   39.612763] c284dba4 (&inode->i_size_seqcount){+.+-}-{0:0}, at: end_bio_bh_io_sync+0x30/0x4c
[   39.621198] {SOFTIRQ-ON-W} state was registered at:
[   39.626061]   simple_write_end+0x1e8/0x2a4
[   39.630154]   page_symlink+0xb0/0x158
[   39.633808]   ramfs_symlink+0x50/0xcc
[   39.637466]   vfs_symlink+0x80/0xf0
[   39.640944]   init_symlink+0x54/0x88
[   39.644512]   do_symlink+0x54/0x88
[   39.647905]   write_buffer+0x28/0x3c
[   39.651470]   flush_buffer+0x40/0x98
[   39.655035]   __gunzip+0x2c4/0x35c
[   39.658427]   gunzip+0x2c/0x34
[   39.661470]   unpack_to_rootfs+0x18c/0x2b4
[   39.665556]   do_populate_rootfs+0x78/0x1cc
[   39.669728]   async_run_entry_fn+0x24/0xb0
[   39.673817]   process_one_work+0x288/0x774
[   39.677904]   worker_thread+0x54/0x51c
[   39.681643]   kthread+0xf8/0x12c
[   39.684862]   ret_from_fork+0x14/0x2c
[   39.688513]   0x0
[   39.690430] irq event stamp: 19119
[   39.693820] hardirqs last  enabled at (19118): [<c010145c>] __do_softirq+0xdc/0x598
[   39.701460] hardirqs last disabled at (19119): [<c0d0afb0>] _raw_read_lock_irqsave+0x84/0x88
[   39.709883] softirqs last  enabled at (19108): [<c01016b4>] __do_softirq+0x334/0x598
[   39.717609] softirqs last disabled at (19117): [<c012bdb0>] __irq_exit_rcu+0x124/0x1a8
[   39.725511] 
[   39.725511] other info that might help us debug this:
[   39.732021]  Possible unsafe locking scenario:
[   39.732021] 
[   39.737924]        CPU0
[   39.740360]        ----
[   39.742796]   lock(&inode->i_size_seqcount);
[   39.747056]   <Interrupt>
[   39.749665]     lock(&inode->i_size_seqcount);
[   39.754098] 
[   39.754098]  *** DEADLOCK ***
[   39.754098] 
[   39.760001] 1 lock held by rngd/218:
[   39.763566]  #0: c284d950 (&ni->size_lock){...-}-{2:2}, at: ntfs_end_buffer_async_read+0x68/0x458
[   39.772432] 
[   39.772432] stack backtrace:
[   39.776777] CPU: 0 PID: 218 Comm: rngd Not tainted 6.0.0-rc3-next-20220901-00130-gb6b3fb681f34-dirty #8
[   39.786149] Hardware name: NVIDIA Tegra SoC (Flattened Device Tree)
[   39.792401]  unwind_backtrace from show_stack+0x10/0x14
[   39.797618]  show_stack from dump_stack_lvl+0x58/0x70
[   39.802660]  dump_stack_lvl from mark_lock.part.0+0xb80/0x1298
[   39.808482]  mark_lock.part.0 from __lock_acquire+0xa70/0x29fc
[   39.814304]  __lock_acquire from lock_acquire+0x11c/0x3c8
[   39.819691]  lock_acquire from ntfs_end_buffer_async_read+0xac/0x458
[   39.826033]  ntfs_end_buffer_async_read from end_bio_bh_io_sync+0x30/0x4c
[   39.832809]  end_bio_bh_io_sync from blk_update_request+0x158/0x57c
[   39.839064]  blk_update_request from scsi_end_request+0x1c/0x3d4
[   39.845059]  scsi_end_request from scsi_io_completion+0x38/0x688
[   39.851053]  scsi_io_completion from blk_complete_reqs+0x54/0x60
[   39.857047]  blk_complete_reqs from __do_softirq+0x134/0x598
[   39.862694]  __do_softirq from __irq_exit_rcu+0x124/0x1a8
[   39.868083]  __irq_exit_rcu from irq_exit+0x8/0x28
[   39.872866]  irq_exit from call_with_stack+0x18/0x20
[   39.877824]  call_with_stack from __irq_usr+0x7c/0xa0
[   39.882868] Exception stack(0xf0c69fb0 to 0xf0c69ff8)
[   39.887906] 9fa0:                                     553c47b7 41bd9715 553c47b7 b6b5e9d8
[   39.896065] 9fc0: b6b5ea40 00000000 00000000 b62046a0 0000000a b635f000 beefcbf4 b6b5e924
[   39.904223] 9fe0: 0000001d b6b5e910 b6f448ec b6f44900 80000010 ffffffff
 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram13: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/ram14: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optima[   39.951621] ntfs: volume version 3.1.
l): 4096 bytes / 4096 bytes
Disk /dev/ram15: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
Disk /dev/mmcblk1: 14.68 GiB, 15758000128 bytes, 30777344 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 00F7EF05-A1E9-E53A-CA0B-CBD0484764BD
Device            Start      End  Sectors  Size Type
/dev/mmcblk1p1    49152 29908991 29859840 14.2G Linux filesystem
/dev/mmcblk1p2 29908992 29917183     8192    4M Microsoft basic data
/dev/mmcblk1p3 29917184 30048255   131072   64M Microsoft basic data
/dev/mmcblk1p4 30048256 30056447     8192    4M Microsoft basic data
/dev/mmcblk1p5 30056448 30064639     8192    4M Microsoft basic data
/dev/mmcblk1p6 30064640 30072831     8192    4M Microsoft basic data
/dev/mmcblk1p7 30072832 30081023     8192    4M Microsoft basic data
/dev/mmcblk1p8 30081024 30773247   692224  338M Microsoft basic data
Disk /dev/mmcblk1boot0: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/mmcblk1boot1: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk /dev/sda: 149.05 GiB, 160041885696 bytes, 312581808 sectors
Disk model: WDC WD1600BEVS-6
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x40aa40aa
Device     Boot     Start       End   Sectors   Size Id Type
/dev/sda1  *           63 296929394 296929332 141.6G  7 HPFS/NTFS/exFAT
/dev/sda2       296929395 312576704  15647310   7.5G  7 HPFS/NTFS/exFAT

Regards


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
