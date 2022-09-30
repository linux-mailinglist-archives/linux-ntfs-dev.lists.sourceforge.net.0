Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40D5F1D34
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  1 Oct 2022 17:29:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oeeQU-0006vC-MS;
	Sat, 01 Oct 2022 15:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3YG03YwkbADkntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oeOTr-0005es-Sz for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 30 Sep 2022 22:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x9nOMWRCucRt8D1zEO0FJ9knEjAvJIRKgGVnyzbDUMg=; b=I3/LAMYe//6i3c45B+DqoSasJY
 1nJylkMpZqcEvdlAzzWjZ55YJ2H/RXTAUEGBHfcW0WZ63wGysdK3Takim1wiTrO0H1BIUr6aSFnsp
 GGHjnT6vEe0HvaWqAJHokImuomDzyJyNcKETx5ivQYzqfmU1ayN2yloyyK3OZUW1/eOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=x9nOMWRCucRt8D1zEO0FJ9knEjAvJIRKgGVnyzbDUMg=; b=b
 CJdIhyACkxih7ISkl3MhqveyJIvAVQUjDF1EhRH2jjLLaiYU5HWf2dQ9JGyyudZvh4v95TPzswvKY
 +ERnaLm01VyTAj++RKmHCzpqtRjLnBiEbleeLL1TyoS5g7U1BM3niSRCyt0Qw/AB1QGVti0LrD5go
 tzBIb++vXnRuKADk=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oeOU2-0006h7-4u for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 30 Sep 2022 22:27:51 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e8-20020a056e020b2800b002f8fd643f78so4434607ilu.18
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 30 Sep 2022 15:27:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=x9nOMWRCucRt8D1zEO0FJ9knEjAvJIRKgGVnyzbDUMg=;
 b=NSat8DMEAKPGg+R8+Mm9G5g7AWDieTLyiH9OEr+qQ4CRsDRe3tg4XKx4JB15usbz/B
 +hkg7sAc8bbYN5aoc3mhtAMZlxGBF94zMFgfrm26lZBh2g6YOK6YMtnNJggH1JYgggA9
 USYTDQUTEGJ5skvr2GgEDldLfruCtYdBkcVDuySyTuDYwzo/eyvEJ92aiHUa8gH6vEIK
 qtGVtuGezroJYxT0INke7XI45FDvE0OlnkzV9WTA7KSOapq5nzKlQazayWOCq9/fuJ6h
 KZXHr1+2wSjofN8KlI3ZVHFYBot9MWDEygnuB2ubBml1FBigzZerz4IXY4J1vv53citn
 apJQ==
X-Gm-Message-State: ACrzQf0db3nEogfDnPShwjqJ+GX7CH6KpfAh1Aqo+CR8eVe718GkgBvf
 p7AwIjOnM4kpw7Kp8N/jzilh4UI7MLnhGEDucMG5RqVEvZDV
X-Google-Smtp-Source: AMsMyM6YJNaH7sbVJfRCLywcYF9mJiW6Z373xhYPSOdQSx9GwQNHeD/sBGpFD2595Xj+O8KAXmlqs//yWPKIAU3gQUcuMiTaYtw4
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3586:b0:35a:92b3:c0fa with SMTP id
 v6-20020a056638358600b0035a92b3c0famr5875883jal.229.1664576864518; Fri, 30
 Sep 2022 15:27:44 -0700 (PDT)
Date: Fri, 30 Sep 2022 15:27:44 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b60b3005e9ec803e@google.com>
From: syzbot <syzbot+780dbcbee0942e16bcb6@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: bbed346d5a96
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
X-Headers-End: 1oeOU2-0006h7-4u
X-Mailman-Approved-At: Sat, 01 Oct 2022 15:29:23 +0000
Subject: [Linux-NTFS-Dev] [syzbot] possible deadlock in ntfs_read_block
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    bbed346d5a96 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=1163743f080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=aae2d21e7dd80684
dashboard link: https://syzkaller.appspot.com/bug?extid=780dbcbee0942e16bcb6
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15c18400880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e4dbc4880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/11078f50b80b/disk-bbed346d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/398e5f1e6c84/vmlinux-bbed346d.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+780dbcbee0942e16bcb6@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0 Not tainted
------------------------------------------------------
kworker/u4:4/317 is trying to acquire lock:
ffff0000ca1008c0 (&rl->lock){++++}-{3:3}, at: ntfs_read_block+0x2d0/0x1110 fs/ntfs/aops.c:248

but task is already holding lock:
ffff0000ca103010 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x40/0xfc fs/ntfs/mft.c:154

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&ni->mrec_lock){+.+.}-{3:3}:
       __mutex_lock_common+0xd4/0xca8 kernel/locking/mutex.c:603
       __mutex_lock kernel/locking/mutex.c:747 [inline]
       mutex_lock_nested+0x38/0x44 kernel/locking/mutex.c:799
       map_mft_record+0x40/0xfc fs/ntfs/mft.c:154
       ntfs_truncate+0xd8/0xf6c fs/ntfs/inode.c:2376
       ntfs_truncate_vfs fs/ntfs/inode.c:2855 [inline]
       ntfs_setattr+0x1ac/0x228 fs/ntfs/inode.c:2907
       notify_change+0x758/0x7f0 fs/attr.c:420
       do_truncate+0x108/0x150 fs/open.c:65
       vfs_truncate+0x1dc/0x24c fs/open.c:111
       do_sys_truncate+0x94/0x140 fs/open.c:134
       __do_sys_truncate fs/open.c:146 [inline]
       __se_sys_truncate fs/open.c:144 [inline]
       __arm64_sys_truncate+0x20/0x30 fs/open.c:144
       __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
       invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
       el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
       do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
       el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
       el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
       el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581

-> #0 (&rl->lock){++++}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3095 [inline]
       check_prevs_add kernel/locking/lockdep.c:3214 [inline]
       validate_chain kernel/locking/lockdep.c:3829 [inline]
       __lock_acquire+0x1530/0x30a4 kernel/locking/lockdep.c:5053
       lock_acquire+0x100/0x1f8 kernel/locking/lockdep.c:5666
       down_read+0x5c/0x78 kernel/locking/rwsem.c:1499
       ntfs_read_block+0x2d0/0x1110 fs/ntfs/aops.c:248
       ntfs_read_folio+0x594/0x758 fs/ntfs/aops.c:436
       filemap_read_folio+0x68/0x33c mm/filemap.c:2394
       do_read_cache_folio+0x1c8/0x588 mm/filemap.c:3519
       do_read_cache_page mm/filemap.c:3561 [inline]
       read_cache_page+0x40/0x178 mm/filemap.c:3570
       read_mapping_page include/linux/pagemap.h:756 [inline]
       ntfs_map_page fs/ntfs/aops.h:75 [inline]
       ntfs_sync_mft_mirror+0xb4/0x109c fs/ntfs/mft.c:480
       write_mft_record_nolock+0x814/0xc70 fs/ntfs/mft.c:787
       write_mft_record+0xe4/0x230 fs/ntfs/mft.h:95
       __ntfs_write_inode+0x32c/0x554 fs/ntfs/inode.c:3043
       ntfs_write_inode+0x3c/0x4c fs/ntfs/super.c:2655
       write_inode fs/fs-writeback.c:1440 [inline]
       __writeback_single_inode+0x240/0x2e4 fs/fs-writeback.c:1652
       writeback_sb_inodes+0x3e4/0x85c fs/fs-writeback.c:1865
       wb_writeback+0x198/0x328 fs/fs-writeback.c:2039
       wb_do_writeback+0xc8/0x384 fs/fs-writeback.c:2182
       wb_workfn+0x70/0x15c fs/fs-writeback.c:2222
       process_one_work+0x2d8/0x504 kernel/workqueue.c:2289
       worker_thread+0x340/0x610 kernel/workqueue.c:2436
       kthread+0x12c/0x158 kernel/kthread.c:376
       ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:860

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&ni->mrec_lock);
                               lock(&rl->lock);
                               lock(&ni->mrec_lock);
  lock(&rl->lock);

 *** DEADLOCK ***

3 locks held by kworker/u4:4/317:
 #0: ffff0000c0dbc538 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work+0x270/0x504 kernel/workqueue.c:2262
 #1: ffff8000127a3d80 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work+0x29c/0x504 kernel/workqueue.c:2264
 #2: ffff0000ca103010 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x40/0xfc fs/ntfs/mft.c:154

stack backtrace:
CPU: 0 PID: 317 Comm: kworker/u4:4 Not tainted 6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Workqueue: writeback wb_workfn (flush-7:0)
Call trace:
 dump_backtrace+0x1c4/0x1f0 arch/arm64/kernel/stacktrace.c:156
 show_stack+0x2c/0x54 arch/arm64/kernel/stacktrace.c:163
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x104/0x16c lib/dump_stack.c:106
 dump_stack+0x1c/0x58 lib/dump_stack.c:113
 print_circular_bug+0x2c4/0x2c8 kernel/locking/lockdep.c:2053
 check_noncircular+0x14c/0x154 kernel/locking/lockdep.c:2175
 check_prev_add kernel/locking/lockdep.c:3095 [inline]
 check_prevs_add kernel/locking/lockdep.c:3214 [inline]
 validate_chain kernel/locking/lockdep.c:3829 [inline]
 __lock_acquire+0x1530/0x30a4 kernel/locking/lockdep.c:5053
 lock_acquire+0x100/0x1f8 kernel/locking/lockdep.c:5666
 down_read+0x5c/0x78 kernel/locking/rwsem.c:1499
 ntfs_read_block+0x2d0/0x1110 fs/ntfs/aops.c:248
 ntfs_read_folio+0x594/0x758 fs/ntfs/aops.c:436
 filemap_read_folio+0x68/0x33c mm/filemap.c:2394
 do_read_cache_folio+0x1c8/0x588 mm/filemap.c:3519
 do_read_cache_page mm/filemap.c:3561 [inline]
 read_cache_page+0x40/0x178 mm/filemap.c:3570
 read_mapping_page include/linux/pagemap.h:756 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 ntfs_sync_mft_mirror+0xb4/0x109c fs/ntfs/mft.c:480
 write_mft_record_nolock+0x814/0xc70 fs/ntfs/mft.c:787
 write_mft_record+0xe4/0x230 fs/ntfs/mft.h:95
 __ntfs_write_inode+0x32c/0x554 fs/ntfs/inode.c:3043
 ntfs_write_inode+0x3c/0x4c fs/ntfs/super.c:2655
 write_inode fs/fs-writeback.c:1440 [inline]
 __writeback_single_inode+0x240/0x2e4 fs/fs-writeback.c:1652
 writeback_sb_inodes+0x3e4/0x85c fs/fs-writeback.c:1865
 wb_writeback+0x198/0x328 fs/fs-writeback.c:2039
 wb_do_writeback+0xc8/0x384 fs/fs-writeback.c:2182
 wb_workfn+0x70/0x15c fs/fs-writeback.c:2222
 process_one_work+0x2d8/0x504 kernel/workqueue.c:2289
 worker_thread+0x340/0x610 kernel/workqueue.c:2436
 kthread+0x12c/0x158 kernel/kthread.c:376
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:860


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
