Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB8B828EA4
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Jan 2024 21:51:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rNJ3z-0003Zx-BL;
	Tue, 09 Jan 2024 20:51:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3HqadZQkbABUDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rNIIE-0005Pd-CU for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Jan 2024 20:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:From:
 Subject:Message-ID:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZTTf3LJ/yi+iLdQXp1px/2oHUDakyTJREIHjhfmYpDw=; b=GdgxTUTeEEVOPOXFNRpc4CVSJc
 FzYsIu1qZeWLCwKzTBnKHitY0aLw5Q36BkVc+/Ty/67K6f0gE4ArvgHJQg/P3PhPKQSVgMg02QYP1
 cZZyHkUOwHRrA9d51z2MIM4ut7oCtjp1W5v/qVLyVKsRyBDUF7r2bm0daq8jYsqjkvO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZTTf3LJ/yi+iLdQXp1px/2oHUDakyTJREIHjhfmYpDw=; b=c
 7TZ+bTBuS0w5cDEowFO6cC96b58b9dNq2tkwTHx/aUnxjyhEIkbZd4aYNvyCDokOJ+BpNN6C6vX9y
 Rz5hfhmvX97HY1JptLLf3M2hGsq3FVHKYwDjkJKs3DIG3/jLvPUKTPGtJ7NoZ5uuVrIHmeTMVkNAL
 2X6whZEf8GEVh+Ik=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rNIIC-0001MH-Hp for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Jan 2024 20:01:46 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7ba7b2c0c1cso354247039f.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 09 Jan 2024 12:01:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704830494; x=1705435294;
 h=content-transfer-encoding:to:from:subject:message-id:date
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZTTf3LJ/yi+iLdQXp1px/2oHUDakyTJREIHjhfmYpDw=;
 b=P4xv2yja25T4+48QpNjzUWBjn1UudhgCZzfWTabBClx8KRdy9HqbiB2ZrKtwVsosZ9
 So4gZvz+xZqO4vewUjb7z83+c16N11zie6OC8pnFbrDeCSpPNhjqo9GxpSTyUyQL5CF3
 X9G9G/XsGqictSGyUA/mAYUjI0Gjh0ygd1gkuB8FOl4PpQ00dvWk5HapPtnHBDDOo/W0
 B1FBWgpK/nJsOPlqfKLu8FmgKxLqwLdXLXrLeetXoa4yQxO9aJTBGYtVQS0oX8fM2mZs
 7sMgzbTeEan2hzBcluj3de4joUjNglgdYb5Hm6Q7tcL3bjxDvRpgsyTt4xMZduC60f+8
 hlxQ==
X-Gm-Message-State: AOJu0YyEIM5CG5clRkBDQ/xsLv0IjyP+OImnlJH/Pg/7aDf6NN6oa66O
 Z+Y9k9Nfe5VOWUw00FnJRiOI/QJMDPJTOzj1GuPrVTY3Q6nF
X-Google-Smtp-Source: AGHT+IGcikC0xcTb9c192LbNXP5YENapGlPY/g6/I3sKGDWCanrS+IFwjUjBlXaFMMWV2AC8H4RJuKTbe1x5GCOpN9Gb0dlyL9EF
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1b05:b0:360:96fd:f542 with SMTP id
 i5-20020a056e021b0500b0036096fdf542mr333124ilv.1.1704830494013; Tue, 09 Jan
 2024 12:01:34 -0800 (PST)
Date: Tue, 09 Jan 2024 12:01:34 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ff8230060e88c790@google.com>
From: syzbot <syzbot+79de0e28cb0a65ee635e@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 1f874787ed9a
 Merge tag 'net-6.7-rc9' of git://git.kernel.o.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=14e62f89e80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rNIIC-0001MH-Hp
X-Mailman-Approved-At: Tue, 09 Jan 2024 20:51:05 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] KASAN: slab-use-after-free Read
 in ntfs_test_inode
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

HEAD commit:    1f874787ed9a Merge tag 'net-6.7-rc9' of git://git.kernel.o..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=14e62f89e80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=655f8abe9fe69b3b
dashboard link: https://syzkaller.appspot.com/bug?extid=79de0e28cb0a65ee635e
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/323bf803118f/disk-1f874787.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f4354a1804a9/vmlinux-1f874787.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0bf2547383ed/bzImage-1f874787.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+79de0e28cb0a65ee635e@syzkaller.appspotmail.com

ntfs: volume version 3.1.
==================================================================
BUG: KASAN: slab-use-after-free in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: slab-use-after-free in _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
BUG: KASAN: slab-use-after-free in NInoAttr fs/ntfs/inode.h:200 [inline]
BUG: KASAN: slab-use-after-free in ntfs_test_inode+0x7f/0x2e0 fs/ntfs/inode.c:55
Read of size 8 at addr ffff888082831fe0 by task syz-executor.3/6682

CPU: 1 PID: 6682 Comm: syz-executor.3 Not tainted 6.7.0-rc8-syzkaller-00119-g1f874787ed9a #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/17/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:364 [inline]
 print_report+0x163/0x540 mm/kasan/report.c:475
 kasan_report+0x142/0x170 mm/kasan/report.c:588
 kasan_check_range+0x27e/0x290 mm/kasan/generic.c:187
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
 NInoAttr fs/ntfs/inode.h:200 [inline]
 ntfs_test_inode+0x7f/0x2e0 fs/ntfs/inode.c:55
 find_inode+0x16f/0x430 fs/inode.c:903
 ilookup5_nowait fs/inode.c:1458 [inline]
 ilookup5+0xa1/0x200 fs/inode.c:1487
 iget5_locked+0x37/0x270 fs/inode.c:1268
 ntfs_iget+0xc4/0x190 fs/ntfs/inode.c:168
 load_and_check_logfile+0x3f/0xd0 fs/ntfs/super.c:1216
 load_system_files+0x32fb/0x4840 fs/ntfs/super.c:1949
 ntfs_fill_super+0x19b3/0x2bd0 fs/ntfs/super.c:2900
 mount_bdev+0x237/0x300 fs/super.c:1650
 legacy_get_tree+0xef/0x190 fs/fs_context.c:662
 vfs_get_tree+0x8c/0x2a0 fs/super.c:1771
 do_new_mount+0x28f/0xae0 fs/namespace.c:3337
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x45/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b
RIP: 0033:0x7f19f747e3ea
Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb a6 e8 de 09 00 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f19f8119ee8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007f19f8119f80 RCX: 00007f19f747e3ea
RDX: 0000000020000000 RSI: 0000000020000040 RDI: 00007f19f8119f40
RBP: 0000000020000000 R08: 00007f19f8119f80 R09: 0000000000800804
R10: 0000000000800804 R11: 0000000000000202 R12: 0000000020000040
R13: 00007f19f8119f40 R14: 000000000001ee6e R15: 0000000020002380
 </TASK>

Allocated by task 25333:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x4f/0x70 mm/kasan/common.c:52
 __kasan_slab_alloc+0x66/0x70 mm/kasan/common.c:328
 kasan_slab_alloc include/linux/kasan.h:188 [inline]
 slab_post_alloc_hook+0x6c/0x3c0 mm/slab.h:763
 slab_alloc_node mm/slub.c:3478 [inline]
 slab_alloc mm/slub.c:3486 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3493 [inline]
 kmem_cache_alloc_lru+0x108/0x240 mm/slub.c:3509
 alloc_inode_sb include/linux/fs.h:2937 [inline]
 reiserfs_alloc_inode+0x2a/0xc0 fs/reiserfs/super.c:642
 alloc_inode fs/inode.c:261 [inline]
 new_inode_pseudo+0x65/0x1d0 fs/inode.c:1006
 new_inode+0x22/0x1d0 fs/inode.c:1032
 reiserfs_mkdir+0x1c0/0x8f0 fs/reiserfs/namei.c:813
 xattr_mkdir fs/reiserfs/xattr.c:77 [inline]
 create_privroot fs/reiserfs/xattr.c:891 [inline]
 reiserfs_xattr_init+0x355/0x6c0 fs/reiserfs/xattr.c:1007
 reiserfs_fill_super+0x2207/0x2620 fs/reiserfs/super.c:2175
 mount_bdev+0x237/0x300 fs/super.c:1650
 legacy_get_tree+0xef/0x190 fs/fs_context.c:662
 vfs_get_tree+0x8c/0x2a0 fs/super.c:1771
 do_new_mount+0x28f/0xae0 fs/namespace.c:3337
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x45/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

Last potentially related work creation:
 kasan_save_stack+0x3f/0x60 mm/kasan/common.c:45
 __kasan_record_aux_stack+0xad/0xc0 mm/kasan/generic.c:492
 __call_rcu_common kernel/rcu/tree.c:2681 [inline]
 call_rcu+0x167/0xa80 kernel/rcu/tree.c:2795
 dispose_list fs/inode.c:699 [inline]
 evict_inodes+0x5f8/0x690 fs/inode.c:749
 generic_shutdown_super+0x9d/0x2c0 fs/super.c:675
 kill_block_super+0x44/0x90 fs/super.c:1667
 deactivate_locked_super+0xc1/0x130 fs/super.c:484
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1256
 task_work_run+0x24a/0x300 kernel/task_work.c:180
 resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
 exit_to_user_mode_loop+0xde/0x100 kernel/entry/common.c:171
 exit_to_user_mode_prepare+0xb1/0x150 kernel/entry/common.c:204
 __syscall_exit_to_user_mode_work kernel/entry/common.c:285 [inline]
 syscall_exit_to_user_mode+0x69/0x2a0 kernel/entry/common.c:296
 do_syscall_64+0x52/0x110 arch/x86/entry/common.c:89
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

Second to last potentially related work creation:
 kasan_save_stack+0x3f/0x60 mm/kasan/common.c:45
 __kasan_record_aux_stack+0xad/0xc0 mm/kasan/generic.c:492
 __call_rcu_common kernel/rcu/tree.c:2681 [inline]
 call_rcu+0x167/0xa80 kernel/rcu/tree.c:2795
 reiserfs_fill_super+0x1572/0x2620 fs/reiserfs/super.c:2078
 mount_bdev+0x237/0x300 fs/super.c:1650
 legacy_get_tree+0xef/0x190 fs/fs_context.c:662
 vfs_get_tree+0x8c/0x2a0 fs/super.c:1771
 do_new_mount+0x28f/0xae0 fs/namespace.c:3337
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x45/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

The buggy address belongs to the object at ffff888082831a80
 which belongs to the cache reiser_inode_cache of size 1568
The buggy address is located 1376 bytes inside of
 freed 1568-byte region [ffff888082831a80, ffff8880828320a0)

The buggy address belongs to the physical page:
page:ffffea00020a0c00 refcount:1 mapcount:0 mapping:0000000000000000 index:0xffff8880828348e0 pfn:0x82830
head:ffffea00020a0c00 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
memcg:ffff888021ae9b01
flags: 0xfff00000000840(slab|head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 00fff00000000840 ffff88814229d500 ffffea0000f11200 0000000000000002
raw: ffff8880828348e0 0000000080130004 00000001ffffffff ffff888021ae9b01
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0x1d20d0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_HARDWALL|__GFP_RECLAIMABLE), pid 10321, tgid 10319 (syz-executor.4), ts 465005937020, free_ts 222502828644
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook+0x1e6/0x210 mm/page_alloc.c:1537
 prep_new_page mm/page_alloc.c:1544 [inline]
 get_page_from_freelist+0x33ea/0x3570 mm/page_alloc.c:3312
 __alloc_pages+0x255/0x680 mm/page_alloc.c:4568
 alloc_pages_mpol+0x3de/0x640 mm/mempolicy.c:2133
 alloc_slab_page+0x6a/0x170 mm/slub.c:1870
 allocate_slab mm/slub.c:2017 [inline]
 new_slab+0x84/0x2f0 mm/slub.c:2070
 ___slab_alloc+0xc8a/0x1330 mm/slub.c:3223
 __slab_alloc mm/slub.c:3322 [inline]
 __slab_alloc_node mm/slub.c:3375 [inline]
 slab_alloc_node mm/slub.c:3468 [inline]
 slab_alloc mm/slub.c:3486 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3493 [inline]
 kmem_cache_alloc_lru+0x18e/0x240 mm/slub.c:3509
 alloc_inode_sb include/linux/fs.h:2937 [inline]
 reiserfs_alloc_inode+0x2a/0xc0 fs/reiserfs/super.c:642
 alloc_inode fs/inode.c:261 [inline]
 new_inode_pseudo+0x65/0x1d0 fs/inode.c:1006
 new_inode+0x22/0x1d0 fs/inode.c:1032
 reiserfs_create+0x182/0x6e0 fs/reiserfs/namei.c:641
 lookup_open fs/namei.c:3477 [inline]
 open_last_lookups fs/namei.c:3546 [inline]
 path_openat+0x13fa/0x3290 fs/namei.c:3776
 do_filp_open+0x234/0x490 fs/namei.c:3809
 do_sys_openat2+0x13e/0x1d0 fs/open.c:1437
 do_sys_open fs/open.c:1452 [inline]
 __do_sys_openat fs/open.c:1468 [inline]
 __se_sys_openat fs/open.c:1463 [inline]
 __x64_sys_openat+0x247/0x290 fs/open.c:1463
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1137 [inline]
 free_unref_page_prepare+0x931/0xa60 mm/page_alloc.c:2347
 free_unref_page_list+0x5a0/0x840 mm/page_alloc.c:2533
 release_pages+0x2117/0x2400 mm/swap.c:1042
 tlb_batch_pages_flush mm/mmu_gather.c:98 [inline]
 tlb_flush_mmu_free mm/mmu_gather.c:293 [inline]
 tlb_flush_mmu+0x34c/0x4e0 mm/mmu_gather.c:300
 tlb_finish_mmu+0xd4/0x1f0 mm/mmu_gather.c:392
 unmap_region+0x300/0x350 mm/mmap.c:2341
 do_vmi_align_munmap+0x1223/0x1860 mm/mmap.c:2657
 do_vmi_munmap+0x24d/0x2d0 mm/mmap.c:2725
 __vm_munmap+0x230/0x450 mm/mmap.c:3012
 __do_sys_munmap mm/mmap.c:3029 [inline]
 __se_sys_munmap mm/mmap.c:3026 [inline]
 __x64_sys_munmap+0x69/0x80 mm/mmap.c:3026
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x45/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

Memory state around the buggy address:
 ffff888082831e80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888082831f00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff888082831f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                       ^
 ffff888082832000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888082832080: fb fb fb fb fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
