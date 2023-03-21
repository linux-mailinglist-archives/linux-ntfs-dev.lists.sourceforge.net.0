Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F171B6C3DCE
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 21 Mar 2023 23:39:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pekdt-0007nI-Lh;
	Tue, 21 Mar 2023 22:39:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3W94ZZAkbAKYYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pef3o-0001SJ-Od for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 21 Mar 2023 16:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wHMca3wBCutZtAdQFZ/VNGTHdO3FijtlGJn+CEWok5o=; b=QyrRbHXT/RuloNHscUorGcRSQw
 iNyIMywXAM8QkKKfaJj35X2A30UJDrWsZE5uYau+61AOEtLykk4Vu1sn+K4jynZedeg6Makp0p2C1
 389AukJ7OIsYyDaSSb9Acs0iYkkFE1/ppH3mu9RWiyOC3G8fgOhftraZXLFL7PO5+Ee4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wHMca3wBCutZtAdQFZ/VNGTHdO3FijtlGJn+CEWok5o=; b=b
 oxXjredJz2KACP3T93h8ZPe968ZbABW8A3dzPg6yxu8C+pkOG/k1C8rJYlYpDngzFtW6eHa+hnUXZ
 lpuW2fiDZvkZWNH2ev7AjjstVgRedFak5d9vw8CZ5UUp50qSqV58hw15sgZnfivmSZa2hMXKoio7I
 BHsVWlvilSwdBLSo=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pef3p-00FiNn-3G for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 21 Mar 2023 16:42:09 +0000
Received: by mail-il1-f197.google.com with SMTP id
 h1-20020a92d841000000b0031b4d3294dfso8072366ilq.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 21 Mar 2023 09:42:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679416923;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wHMca3wBCutZtAdQFZ/VNGTHdO3FijtlGJn+CEWok5o=;
 b=blyYDUEh2bVjlWTerP3Y/kcC4uIRMXS1HffTIsg+MOfBKz94OIBnSXFaga481HpWPH
 4nxhercsp3UPjSu8lkVSv/L2h7ZAUCFb2pN6Ko+mjGWcPAHDQVnqrjvb0K8Bnr3EbaF6
 /9sv1vmHfTuP/SIP1sLTsLwx9x0RrAK3Ye3dgsXKSGld6PdqG0okXaXa4Wke3W99FaYP
 Nw0DKG8Q2JnNnLopXDK+l4xFjXCJrq4CIr8tYA/sYUDRsyZ/X3qmYo1/s/EZHOX0ONAQ
 w3Ys82vfZJpQlNclw3f95s/SCfNhnzJxUbkRQqaRuV4f5CkEHB1DJD/TCdodwLI/ti6d
 VBwQ==
X-Gm-Message-State: AO0yUKViBMaw3GHigBDJbpm7nX69EkJU8xVQVFgz12LaeMu5eXuKiBv8
 S4F7qvCMWwnOj8OBmNAgS9ikakriVQGTKSvW4lKa8jI6VWRP
X-Google-Smtp-Source: AK7set8cgc2X0LhzNhWl5jeVeMFe7l6Z2LjWJKoFKGMSUYyhMO/Rjc5Qt2rtYenkzDVceKJSUr91K2pBKtJpeZPqTYtlFhjIUUQE
MIME-Version: 1.0
X-Received: by 2002:a02:63c7:0:b0:3e5:a7d9:17f0 with SMTP id
 j190-20020a0263c7000000b003e5a7d917f0mr1294426jac.4.1679416923506; Tue, 21
 Mar 2023 09:42:03 -0700 (PDT)
Date: Tue, 21 Mar 2023 09:42:03 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000027d44f05f76bb96e@google.com>
From: syzbot <syzbot+c9340661f4a0bb3e7e65@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 17214b70a159
 Merge tag 'fsverity-for-linus' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=13d86d31c80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1pef3p-00FiNn-3G
X-Mailman-Approved-At: Tue, 21 Mar 2023 22:39:45 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] possible deadlock in
 ntfs_sync_mft_mirror
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

HEAD commit:    17214b70a159 Merge tag 'fsverity-for-linus' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13d86d31c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cde06fe2cf5765b7
dashboard link: https://syzkaller.appspot.com/bug?extid=c9340661f4a0bb3e7e65
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c9340661f4a0bb3e7e65@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.3.0-rc3-syzkaller-00012-g17214b70a159 #0 Not tainted
------------------------------------------------------
kworker/u8:1/10 is trying to acquire lock:
ffff8880722f1840 (&rl->lock){++++}-{3:3}, at: ntfs_sync_mft_mirror+0x18bf/0x1ea0 fs/ntfs/mft.c:536

but task is already holding lock:
ffff8880723aa290 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x40/0x6c0 fs/ntfs/mft.c:154

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&ni->mrec_lock){+.+.}-{3:3}:
       __mutex_lock_common kernel/locking/mutex.c:603 [inline]
       __mutex_lock+0x12f/0x1350 kernel/locking/mutex.c:747
       map_mft_record+0x40/0x6c0 fs/ntfs/mft.c:154
       ntfs_truncate+0x243/0x2a50 fs/ntfs/inode.c:2383
       ntfs_truncate_vfs fs/ntfs/inode.c:2862 [inline]
       ntfs_setattr+0x397/0x560 fs/ntfs/inode.c:2914
       notify_change+0xb2c/0x1180 fs/attr.c:482
       do_truncate+0x143/0x200 fs/open.c:66
       handle_truncate fs/namei.c:3219 [inline]
       do_open fs/namei.c:3564 [inline]
       path_openat+0x2083/0x2750 fs/namei.c:3715
       do_filp_open+0x1ba/0x410 fs/namei.c:3742
       do_sys_openat2+0x16d/0x4c0 fs/open.c:1348
       do_sys_open fs/open.c:1364 [inline]
       __do_sys_creat fs/open.c:1440 [inline]
       __se_sys_creat fs/open.c:1434 [inline]
       __x64_sys_creat+0xcd/0x120 fs/open.c:1434
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

-> #0 (&rl->lock){++++}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3098 [inline]
       check_prevs_add kernel/locking/lockdep.c:3217 [inline]
       validate_chain kernel/locking/lockdep.c:3832 [inline]
       __lock_acquire+0x2ec7/0x5d40 kernel/locking/lockdep.c:5056
       lock_acquire kernel/locking/lockdep.c:5669 [inline]
       lock_acquire+0x1af/0x520 kernel/locking/lockdep.c:5634
       down_read+0x3d/0x50 kernel/locking/rwsem.c:1520
       ntfs_sync_mft_mirror+0x18bf/0x1ea0 fs/ntfs/mft.c:536
       write_mft_record_nolock+0x198e/0x1cc0 fs/ntfs/mft.c:787
       write_mft_record+0x14e/0x3b0 fs/ntfs/mft.h:95
       __ntfs_write_inode+0x915/0xc40 fs/ntfs/inode.c:3050
       write_inode fs/fs-writeback.c:1453 [inline]
       __writeback_single_inode+0x9f8/0xdc0 fs/fs-writeback.c:1665
       writeback_sb_inodes+0x54d/0xe70 fs/fs-writeback.c:1891
       wb_writeback+0x294/0xa50 fs/fs-writeback.c:2065
       wb_do_writeback fs/fs-writeback.c:2208 [inline]
       wb_workfn+0x2a5/0xfc0 fs/fs-writeback.c:2248
       process_one_work+0x991/0x15c0 kernel/workqueue.c:2390
       worker_thread+0x669/0x1090 kernel/workqueue.c:2537
       kthread+0x2e8/0x3a0 kernel/kthread.c:376
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&ni->mrec_lock);
                               lock(&rl->lock);
                               lock(&ni->mrec_lock);
  lock(&rl->lock);

 *** DEADLOCK ***

3 locks held by kworker/u8:1/10:
 #0: ffff888015421938 ((wq_completion)writeback){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888015421938 ((wq_completion)writeback){+.+.}-{0:0}, at: arch_atomic_long_set include/linux/atomic/atomic-long.h:41 [inline]
 #0: ffff888015421938 ((wq_completion)writeback){+.+.}-{0:0}, at: atomic_long_set include/linux/atomic/atomic-instrumented.h:1280 [inline]
 #0: ffff888015421938 ((wq_completion)writeback){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:639 [inline]
 #0: ffff888015421938 ((wq_completion)writeback){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:666 [inline]
 #0: ffff888015421938 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work+0x87a/0x15c0 kernel/workqueue.c:2361
 #1: ffffc900004cfda8 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work+0x8ae/0x15c0 kernel/workqueue.c:2365
 #2: ffff8880723aa290 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x40/0x6c0 fs/ntfs/mft.c:154

stack backtrace:
CPU: 0 PID: 10 Comm: kworker/u8:1 Not tainted 6.3.0-rc3-syzkaller-00012-g17214b70a159 #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
Workqueue: writeback wb_workfn (flush-7:2)
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd9/0x150 lib/dump_stack.c:106
 check_noncircular+0x25f/0x2e0 kernel/locking/lockdep.c:2178
 check_prev_add kernel/locking/lockdep.c:3098 [inline]
 check_prevs_add kernel/locking/lockdep.c:3217 [inline]
 validate_chain kernel/locking/lockdep.c:3832 [inline]
 __lock_acquire+0x2ec7/0x5d40 kernel/locking/lockdep.c:5056
 lock_acquire kernel/locking/lockdep.c:5669 [inline]
 lock_acquire+0x1af/0x520 kernel/locking/lockdep.c:5634
 down_read+0x3d/0x50 kernel/locking/rwsem.c:1520
 ntfs_sync_mft_mirror+0x18bf/0x1ea0 fs/ntfs/mft.c:536
 write_mft_record_nolock+0x198e/0x1cc0 fs/ntfs/mft.c:787
 write_mft_record+0x14e/0x3b0 fs/ntfs/mft.h:95
 __ntfs_write_inode+0x915/0xc40 fs/ntfs/inode.c:3050
 write_inode fs/fs-writeback.c:1453 [inline]
 __writeback_single_inode+0x9f8/0xdc0 fs/fs-writeback.c:1665
 writeback_sb_inodes+0x54d/0xe70 fs/fs-writeback.c:1891
 wb_writeback+0x294/0xa50 fs/fs-writeback.c:2065
 wb_do_writeback fs/fs-writeback.c:2208 [inline]
 wb_workfn+0x2a5/0xfc0 fs/fs-writeback.c:2248
 process_one_work+0x991/0x15c0 kernel/workqueue.c:2390
 worker_thread+0x669/0x1090 kernel/workqueue.c:2537
 kthread+0x2e8/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
