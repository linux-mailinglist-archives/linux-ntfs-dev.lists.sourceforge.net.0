Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6960465AB76
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Jan 2023 20:46:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pC4IB-0003wI-Vg;
	Sun, 01 Jan 2023 19:46:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3tdmuYwkbAEg289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pBEWC-0004aF-4V for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 30 Dec 2022 12:29:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JXxIEbyl/SMjAa4yKH0o9T/jeZiK7/xXjFwsIGoa9UY=; b=BvW63YLaaomUmEmjs2q9u9NFrp
 MGChpeyybSf9e1Qupv09Ibd0Rl1l6uCuoIGy1XOfQlDvsXWd5O7RvXLeuuLF+S6UOj0fx1Mje1KxY
 0gS/8XxjTULDDyPu9MDeL0vX98b2SEpaE2UABT9IBuDZFkStI7XodY0/jplHfXsRFbR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JXxIEbyl/SMjAa4yKH0o9T/jeZiK7/xXjFwsIGoa9UY=; b=W
 +KHzEkmzXOTthB/I/yTWFYE5JyyeIncqY9bhSMtTBpaEc+VIUrhialytyLHoJq/hh/h9aO+jTXLFR
 33Fl2sZYA53uGT0r4xtD0AEu/tmu3MideLCHD4ztlEmToDl4glVHzi3w7ACymx2X+M6m08hpK1RZG
 2XO4rahhC17YK89s=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pBEWB-00H3kf-4X for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 30 Dec 2022 12:29:47 +0000
Received: by mail-il1-f200.google.com with SMTP id
 h24-20020a056e021d9800b0030be8a5dd68so11899702ila.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 30 Dec 2022 04:29:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JXxIEbyl/SMjAa4yKH0o9T/jeZiK7/xXjFwsIGoa9UY=;
 b=BljSO4BPkCUCiUpC9kNp6/N/Q1JhOTHXehPMcVePtCFn8bPUN8MtPVstFcdI6q/R9R
 6Wg0J0bBMjruPxmi6hwKuEvlsBoX2PtpJCgMnkZC2V7je1De+aA+hmGJQjj+fyvmOndU
 zvY8lRHXO8N38736vy/7Mlug4SNJgvCn+olZcxvqXl95eE8Fx3q2jGyuSB/beYiBgYUY
 nRIQn4TkxNwlBWaPrreOdZ8FvkQdxHeG0bpbfZH/el/MuhtTLdat2QBJ+lBcti9QB1FW
 Luxs2Ja5+K0wMyJVn9yCHmfpmNnBVu00vQV2xBxB+a9mHBOu+gFSX8VxllMbDix77Im5
 op9g==
X-Gm-Message-State: AFqh2kom/9F2915jRY+8v6MfSQZxgPcKhiQnKpuOTeUD4spi7VCNJCUj
 MlV637tXRFCzCPtKbspXa0rAdsI5ZatPm99udtjbWxasjZcC
X-Google-Smtp-Source: AMrXdXuXWATBySwBWpHLjQqrKJbFcfbq/Zr9zaiUKXwDAwHWpMfdIu3OfCAGk6n2M0txT221wwAS8BvT7/ZEmQFk5AKmRM9ylVtS
MIME-Version: 1.0
X-Received: by 2002:a92:3643:0:b0:30b:e56f:f31d with SMTP id
 d3-20020a923643000000b0030be56ff31dmr2463723ilf.81.1672403381565; Fri, 30 Dec
 2022 04:29:41 -0800 (PST)
Date: Fri, 30 Dec 2022 04:29:41 -0800
In-Reply-To: <0000000000002a6cba05eb5c7fbd@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007ac19005f10ac1aa@google.com>
From: syzbot <syzbot+cb1fdea540b46f0ce394@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 2258c2dc850b Merge tag 'for-linus' of git://git.kernel.org..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1285d048480000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1pBEWB-00H3kf-4X
X-Mailman-Approved-At: Sun, 01 Jan 2023 19:46:43 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] [ntfs?] possible deadlock in
 map_mft_record
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    2258c2dc850b Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1285d048480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15d788b8480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15347b32480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/aee4b2292a64/disk-2258c2dc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9ecfc816182c/vmlinux-2258c2dc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f24ffaf1255a/bzImage-2258c2dc.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/0f6a807498b6/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cb1fdea540b46f0ce394@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 4096
ntfs: volume version 3.1.
======================================================
WARNING: possible circular locking dependency detected
6.2.0-rc1-syzkaller-00043-g2258c2dc850b #0 Not tainted
------------------------------------------------------
syz-executor154/5075 is trying to acquire lock:
ffff888073152ad0 (&lcnbmp_mrec_lock_key){+.+.}-{3:3}, at: map_mft_record+0x46/0x610 fs/ntfs/mft.c:154

but task is already holding lock:
ffff88802ac261f8 (&vol->lcnbmp_lock){+.+.}-{3:3}, at: ntfs_put_super+0x36b/0xf80 fs/ntfs/super.c:2282

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&vol->lcnbmp_lock){+.+.}-{3:3}:
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       down_write+0x9c/0x270 kernel/locking/rwsem.c:1562
       __ntfs_cluster_free+0xd4/0x890 fs/ntfs/lcnalloc.c:862
       ntfs_cluster_free fs/ntfs/lcnalloc.h:96 [inline]
       ntfs_truncate+0x119c/0x2720 fs/ntfs/inode.c:2695
       ntfs_truncate_vfs fs/ntfs/inode.c:2862 [inline]
       ntfs_setattr+0x2b9/0x3a0 fs/ntfs/inode.c:2914
       notify_change+0xe50/0x1100 fs/attr.c:482
       do_truncate+0x200/0x2f0 fs/open.c:65
       handle_truncate fs/namei.c:3216 [inline]
       do_open fs/namei.c:3561 [inline]
       path_openat+0x272b/0x2dd0 fs/namei.c:3714
       do_file_open_root+0x339/0x790 fs/namei.c:3766
       file_open_root+0x234/0x290 fs/open.c:1290
       do_handle_open+0x565/0x950 fs/fhandle.c:232
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

-> #0 (&lcnbmp_mrec_lock_key){+.+.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3097 [inline]
       check_prevs_add kernel/locking/lockdep.c:3216 [inline]
       validate_chain+0x1898/0x6ae0 kernel/locking/lockdep.c:3831
       __lock_acquire+0x1292/0x1f60 kernel/locking/lockdep.c:5055
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       __mutex_lock_common+0x1bd/0x26e0 kernel/locking/mutex.c:603
       __mutex_lock kernel/locking/mutex.c:747 [inline]
       mutex_lock_nested+0x17/0x20 kernel/locking/mutex.c:799
       map_mft_record+0x46/0x610 fs/ntfs/mft.c:154
       __ntfs_write_inode+0x80/0xc90 fs/ntfs/inode.c:2978
       ntfs_commit_inode fs/ntfs/inode.h:300 [inline]
       ntfs_put_super+0x3ba/0xf80 fs/ntfs/super.c:2283
       generic_shutdown_super+0x130/0x310 fs/super.c:492
       kill_block_super+0x79/0xd0 fs/super.c:1386
       deactivate_locked_super+0xa7/0xf0 fs/super.c:332
       cleanup_mnt+0x494/0x520 fs/namespace.c:1291
       task_work_run+0x243/0x300 kernel/task_work.c:179
       exit_task_work include/linux/task_work.h:38 [inline]
       do_exit+0x644/0x2150 kernel/exit.c:867
       do_group_exit+0x1fd/0x2b0 kernel/exit.c:1012
       __do_sys_exit_group kernel/exit.c:1023 [inline]
       __se_sys_exit_group kernel/exit.c:1021 [inline]
       __x64_sys_exit_group+0x3b/0x40 kernel/exit.c:1021
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&vol->lcnbmp_lock);
                               lock(&lcnbmp_mrec_lock_key);
                               lock(&vol->lcnbmp_lock);
  lock(&lcnbmp_mrec_lock_key);

 *** DEADLOCK ***

2 locks held by syz-executor154/5075:
 #0: ffff88807a03e0e0 (&type->s_umount_key#46){+.+.}-{3:3}, at: deactivate_super+0x96/0xd0 fs/super.c:362
 #1: ffff88802ac261f8 (&vol->lcnbmp_lock){+.+.}-{3:3}, at: ntfs_put_super+0x36b/0xf80 fs/ntfs/super.c:2282

stack backtrace:
CPU: 1 PID: 5075 Comm: syz-executor154 Not tainted 6.2.0-rc1-syzkaller-00043-g2258c2dc850b #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x290 lib/dump_stack.c:106
 check_noncircular+0x2cc/0x390 kernel/locking/lockdep.c:2177
 check_prev_add kernel/locking/lockdep.c:3097 [inline]
 check_prevs_add kernel/locking/lockdep.c:3216 [inline]
 validate_chain+0x1898/0x6ae0 kernel/locking/lockdep.c:3831
 __lock_acquire+0x1292/0x1f60 kernel/locking/lockdep.c:5055
 lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
 __mutex_lock_common+0x1bd/0x26e0 kernel/locking/mutex.c:603
 __mutex_lock kernel/locking/mutex.c:747 [inline]
 mutex_lock_nested+0x17/0x20 kernel/locking/mutex.c:799
 map_mft_record+0x46/0x610 fs/ntfs/mft.c:154
 __ntfs_write_inode+0x80/0xc90 fs/ntfs/inode.c:2978
 ntfs_commit_inode fs/ntfs/inode.h:300 [inline]
 ntfs_put_super+0x3ba/0xf80 fs/ntfs/super.c:2283
 generic_shutdown_super+0x130/0x310 fs/super.c:492
 kill_block_super+0x79/0xd0 fs/super.c:1386
 deactivate_locked_super+0xa7/0xf0 fs/super.c:332
 cleanup_mnt+0x494/0x520 fs/namespace.c:1291
 task_work_run+0x243/0x300 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x644/0x2150 kernel/exit.c:867
 do_group_exit+0x1fd/0x2b0 kernel/exit.c:1012
 __do_sys_exit_group kernel/exit.c:1023 [inline]
 __se_sys_exit_group kernel/exit.c:1021 [inline]
 __x64_sys_exit_group+0x3b/0x40 kernel/exit.c:1021
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f1316ebea09
Code: Unable to access opcode bytes at 0x7f1316ebe9df.
RSP: 002b:00007ffe53bdb118 EFLAGS: 0000



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
