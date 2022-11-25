Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEDE638783
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 25 Nov 2022 11:29:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oyVxC-00020o-GE;
	Fri, 25 Nov 2022 10:29:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <37JOAYwkbADkntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oyVcZ-0004Ag-Va for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 25 Nov 2022 10:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yVDM9OykGg+MjVKeNEf9T09jbHF3MGBctxmyAKcE39g=; b=BLnVaSfdpfr+N6SuibxcL32iMf
 Ooyk9vb1FGXbW3OJUuZoNnhMgLiTwx+vMr0VPvZhrM7VJiSmUtDg62uX+reynO6YBWTLHy8cxDOMR
 deliq2gFEZf62DdBLmZVVzYqWzu54N7eAM/cPqOAjomwIxexWlMDUxFr4ymC66RK1TeA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yVDM9OykGg+MjVKeNEf9T09jbHF3MGBctxmyAKcE39g=; b=H
 0Lt2d8wDFg8+9gsrD9VcBz8Z5FSVjyx+nhbmjJ1nnS9kLgj+0ANAJMgwgX0XzDQTvGz11RYAeAHan
 t2pZUKFmDGjReF6BWnTfI8bE9mXhYe5/XzsoaZRlEq7VoRk2KZZMMO+bcvXGoFNqRU2I49WvIf4/D
 9FiUhwYTD8hrXsDw=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oyVcY-0001Ej-DW for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 25 Nov 2022 10:07:47 +0000
Received: by mail-io1-f71.google.com with SMTP id
 p8-20020a5d9c88000000b006df09469de8so1875729iop.22
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 25 Nov 2022 02:07:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yVDM9OykGg+MjVKeNEf9T09jbHF3MGBctxmyAKcE39g=;
 b=6nvflB5+aOX8l7FiESR4Zltg+0F5MMZ9sjhqV4F2pMKr6YOUd3Qil97KBbVeG6FnOg
 1IBkf+CP3ID3Y0rdMrERUwPfsHmsigwmYcl7z4JpukgAOHppNR2kTbV7RhK2yoLjM+F5
 +hTLfOMgGDnOYDubFDQG8aqFYU3vy9WXRknhS03q+2f7yCUtYMv33LVqMQLDpjT5NAwp
 esPzOyHUCXYS0bweFcA04TqRJRtY2ueK+Ns96asm/nHd47UJEim6xpDJL1ctuiL9wdhf
 U0PUaUHXaRy9YBVrTzMYyqyRvfSBJLMuLmni/utuqtLcrIkK+RtCEm+oTsL5AKOYiR0V
 g20A==
X-Gm-Message-State: ANoB5plgE03NEwtJVd0MUtkjdyORbGJtLNnNJnea9otay3887eN00x8c
 kDVydBbajEBuWbkLXTN1t9pZOn4gSh4HHj3cuaJO7XA+LMWS
X-Google-Smtp-Source: AA0mqf48VtJk11ryjJpTQeLb8C1asT+VwVTQE71So97leD/poIZhUh4fW+R6guzVDx16bgcdDi6IsfxzcHMjXPQK70m/uZ2zgqmP
MIME-Version: 1.0
X-Received: by 2002:a02:1909:0:b0:374:837e:cc17 with SMTP id
 b9-20020a021909000000b00374837ecc17mr16377633jab.102.1669370860865; Fri, 25
 Nov 2022 02:07:40 -0800 (PST)
Date: Fri, 25 Nov 2022 02:07:40 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000290d7c05ee48b10a@google.com>
From: syzbot <syzbot+5ebb8d0e9b8c47867596@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 4312098baf37
 Merge tag 'spi-fix-v6.1-rc6' of git://git.ker.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=16498e3d880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1oyVcY-0001Ej-DW
X-Mailman-Approved-At: Fri, 25 Nov 2022 10:29:05 +0000
Subject: [Linux-NTFS-Dev] [syzbot] possible deadlock in __ntfs_clear_inode
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

HEAD commit:    4312098baf37 Merge tag 'spi-fix-v6.1-rc6' of git://git.ker..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16498e3d880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=8d01b6e3197974dd
dashboard link: https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/4b7073d20a37/disk-4312098b.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/36a0367a5593/vmlinux-4312098b.xz
kernel image: https://storage.googleapis.com/syzbot-assets/265bedb3086b/bzImage-4312098b.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+5ebb8d0e9b8c47867596@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.1.0-rc6-syzkaller-00012-g4312098baf37 #0 Not tainted
------------------------------------------------------
kswapd0/110 is trying to acquire lock:
ffff888087920100 (&rl->lock){++++}-{3:3}, at: __ntfs_clear_inode+0x32/0x1f0 fs/ntfs/inode.c:2189

but task is already holding lock:
ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: arch_static_branch arch/x86/include/asm/jump_label.h:27 [inline]
ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: freezing include/linux/freezer.h:36 [inline]
ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: try_to_freeze include/linux/freezer.h:54 [inline]
ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat+0x109c/0x1c50 mm/vmscan.c:7098

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #2 (fs_reclaim){+.+.}-{0:0}:
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       __fs_reclaim_acquire mm/page_alloc.c:4679 [inline]
       fs_reclaim_acquire+0x82/0x120 mm/page_alloc.c:4693
       might_alloc include/linux/sched/mm.h:271 [inline]
       prepare_alloc_pages+0x145/0x5a0 mm/page_alloc.c:5325
       __alloc_pages+0x161/0x560 mm/page_alloc.c:5544
       folio_alloc+0x1a/0x50 mm/mempolicy.c:2295
       filemap_alloc_folio+0x7e/0x1c0 mm/filemap.c:971
       do_read_cache_folio+0x28a/0x790 mm/filemap.c:3498
       do_read_cache_page mm/filemap.c:3576 [inline]
       read_cache_page+0x56/0x270 mm/filemap.c:3585
       read_mapping_page include/linux/pagemap.h:756 [inline]
       ntfs_map_page fs/ntfs/aops.h:75 [inline]
       map_mft_record_page fs/ntfs/mft.c:73 [inline]
       map_mft_record+0x1dc/0x610 fs/ntfs/mft.c:156
       ntfs_read_locked_inode+0x194/0x47c0 fs/ntfs/inode.c:550
       ntfs_iget+0x10f/0x190 fs/ntfs/inode.c:177
       ntfs_lookup+0x268/0xdb0 fs/ntfs/namei.c:117
       __lookup_slow+0x266/0x3a0 fs/namei.c:1685
       lookup_slow+0x53/0x70 fs/namei.c:1702
       walk_component+0x2e1/0x410 fs/namei.c:1993
       lookup_last fs/namei.c:2450 [inline]
       path_lookupat+0x17d/0x450 fs/namei.c:2474
       filename_lookup+0x274/0x650 fs/namei.c:2503
       user_path_at_empty+0x40/0x1a0 fs/namei.c:2876
       user_path_at include/linux/namei.h:57 [inline]
       do_sys_truncate+0x94/0x180 fs/open.c:132
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

-> #1 (&ni->mrec_lock){+.+.}-{3:3}:
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       __mutex_lock_common+0x1bd/0x26e0 kernel/locking/mutex.c:603
       __mutex_lock kernel/locking/mutex.c:747 [inline]
       mutex_lock_nested+0x17/0x20 kernel/locking/mutex.c:799
       map_mft_record+0x46/0x610 fs/ntfs/mft.c:154
       ntfs_truncate+0x24e/0x2720 fs/ntfs/inode.c:2383
       ntfs_truncate_vfs fs/ntfs/inode.c:2862 [inline]
       ntfs_setattr+0x2b9/0x3a0 fs/ntfs/inode.c:2914
       notify_change+0xe38/0x10f0 fs/attr.c:420
       do_truncate+0x1fb/0x2e0 fs/open.c:65
       vfs_truncate+0x2af/0x380 fs/open.c:111
       do_sys_truncate+0xcb/0x180 fs/open.c:134
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

-> #0 (&rl->lock){++++}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3097 [inline]
       check_prevs_add kernel/locking/lockdep.c:3216 [inline]
       validate_chain+0x1898/0x6ae0 kernel/locking/lockdep.c:3831
       __lock_acquire+0x1292/0x1f60 kernel/locking/lockdep.c:5055
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       down_write+0x9c/0x270 kernel/locking/rwsem.c:1562
       __ntfs_clear_inode+0x32/0x1f0 fs/ntfs/inode.c:2189
       ntfs_evict_big_inode+0x2b6/0x470 fs/ntfs/inode.c:2278
       evict+0x2a4/0x620 fs/inode.c:664
       dispose_list fs/inode.c:697 [inline]
       prune_icache_sb+0x268/0x320 fs/inode.c:896
       super_cache_scan+0x362/0x470 fs/super.c:106
       do_shrink_slab+0x4e1/0xa00 mm/vmscan.c:842
       shrink_slab_memcg+0x2ec/0x630 mm/vmscan.c:911
       shrink_slab+0xbe/0x340 mm/vmscan.c:990
       shrink_node_memcgs+0x3c3/0x770 mm/vmscan.c:6076
       shrink_node+0x299/0x1050 mm/vmscan.c:6105
       kswapd_shrink_node mm/vmscan.c:6894 [inline]
       balance_pgdat+0xec2/0x1c50 mm/vmscan.c:7084
       kswapd+0x2d5/0x590 mm/vmscan.c:7344
       kthread+0x266/0x300 kernel/kthread.c:376
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

other info that might help us debug this:

Chain exists of:
  &rl->lock --> &ni->mrec_lock --> fs_reclaim

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(fs_reclaim);
                               lock(&ni->mrec_lock);
                               lock(fs_reclaim);
  lock(&rl->lock);

 *** DEADLOCK ***

3 locks held by kswapd0/110:
 #0: ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: arch_static_branch arch/x86/include/asm/jump_label.h:27 [inline]
 #0: ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: freezing include/linux/freezer.h:36 [inline]
 #0: ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: try_to_freeze include/linux/freezer.h:54 [inline]
 #0: ffffffff8d1ff180 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat+0x109c/0x1c50 mm/vmscan.c:7098
 #1: ffffffff8d1d6030 (shrinker_rwsem){++++}-{3:3}, at: shrink_slab_memcg+0xd9/0x630 mm/vmscan.c:884
 #2: ffff8880289160e0 (&type->s_umount_key#71){++++}-{3:3}, at: trylock_super fs/super.c:415 [inline]
 #2: ffff8880289160e0 (&type->s_umount_key#71){++++}-{3:3}, at: super_cache_scan+0x6a/0x470 fs/super.c:79

stack backtrace:
CPU: 0 PID: 110 Comm: kswapd0 Not tainted 6.1.0-rc6-syzkaller-00012-g4312098baf37 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 check_noncircular+0x2cc/0x390 kernel/locking/lockdep.c:2177
 check_prev_add kernel/locking/lockdep.c:3097 [inline]
 check_prevs_add kernel/locking/lockdep.c:3216 [inline]
 validate_chain+0x1898/0x6ae0 kernel/locking/lockdep.c:3831
 __lock_acquire+0x1292/0x1f60 kernel/locking/lockdep.c:5055
 lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
 down_write+0x9c/0x270 kernel/locking/rwsem.c:1562
 __ntfs_clear_inode+0x32/0x1f0 fs/ntfs/inode.c:2189
 ntfs_evict_big_inode+0x2b6/0x470 fs/ntfs/inode.c:2278
 evict+0x2a4/0x620 fs/inode.c:664
 dispose_list fs/inode.c:697 [inline]
 prune_icache_sb+0x268/0x320 fs/inode.c:896
 super_cache_scan+0x362/0x470 fs/super.c:106
 do_shrink_slab+0x4e1/0xa00 mm/vmscan.c:842
 shrink_slab_memcg+0x2ec/0x630 mm/vmscan.c:911
 shrink_slab+0xbe/0x340 mm/vmscan.c:990
 shrink_node_memcgs+0x3c3/0x770 mm/vmscan.c:6076
 shrink_node+0x299/0x1050 mm/vmscan.c:6105
 kswapd_shrink_node mm/vmscan.c:6894 [inline]
 balance_pgdat+0xec2/0x1c50 mm/vmscan.c:7084
 kswapd+0x2d5/0x590 mm/vmscan.c:7344
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
