Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0ED4382CA7
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 17 May 2021 14:57:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lico6-000771-QS; Mon, 17 May 2021 12:57:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <31kuiYAkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1libMq-0007lK-Sr
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 May 2021 11:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5iIoTlWmHOI2C29PmRlvFB6YEj33u2SIMrpUVwF/jMM=; b=XuyeFJdaC2rkGMmSmET0tShmO7
 nnZZwKI6ZbPYnr4bKyPS1dDCusDMUP8e7iZ7sVl9oNzHn8ftzyLWVYwZUx+DULycNdVNgdoIG4Iwz
 eEvHTEp/xv+Skfo+qSYBRjxz532A0X/bAV9dcJhbujlBNF9L3275Eh8GPdqMnp72moP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5iIoTlWmHOI2C29PmRlvFB6YEj33u2SIMrpUVwF/jMM=; b=E
 dzvebU85wWs4fDFwx4zV7iRGlqTfDcmlYXm5JDXMmJST8u7ms+IYOlodMr7vgq/lp3BxgqAe8cKbK
 Di+yxZsnOaPmAMDhjPqrtAF5L6uqPXgltXKEHAGI+0rLe/1akkrRhYrpqy0osSzEMXYeukuKgUqBb
 ZtuIQ9PvdqONTmHg=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1libMi-00BNUg-O4
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 May 2021 11:25:02 +0000
Received: by mail-il1-f197.google.com with SMTP id
 g14-20020a926b0e0000b02901bb2deb9d71so6027046ilc.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 May 2021 04:24:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=5iIoTlWmHOI2C29PmRlvFB6YEj33u2SIMrpUVwF/jMM=;
 b=cCmFSx0g7uYmo3KsIAK1QKF3ThZXHKMUmb85lXJjjX84mhYbSwyRMrpj9MqWfb1RNp
 YBMCk3oVxT3O/EaJrvZTAAKw8BmLepIlsBb/QRKx9CTx7ge9WPMqtc0yTFNW4yNse714
 kaw3iSkPL9sru7QScctClOdhwvNCZ4sF6OAQIZkCR+hqReqEidMoYG0FdYXy3W0z97ae
 jSSvGPiIsFAZI8j5p2EUcLY+oh3irUpTNnR++bKOlDpmNqM8KYeA98kfw+3hLOuvxW/n
 /1ZkjsA+HUOQarhLm5uij5FXs4/xKtjras5mfz5zN2aDth2oSmIQnex2BNlRLJ+zz9Og
 ixcw==
X-Gm-Message-State: AOAM530Mg7Feb2ds2VgzRA40Iomv5EqA9tX/shg1RpDfjA7toCtP8m/W
 wtHt7Q9QjI52bSe9IZBlwy8cFtf/q7AdHWowBkGPQzDWjv6F
X-Google-Smtp-Source: ABdhPJzoIrNNbHx/OG3cWTzepju2sQ9MGkhjikNOEKFOW0RGNu6VXw2cwktthHzkoC58cveAdi07n7pD1vfLaXaOGfcl8zAeZmON
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1002:: with SMTP id
 n2mr49711952ilj.260.1621248982875; 
 Mon, 17 May 2021 03:56:22 -0700 (PDT)
Date: Mon, 17 May 2021 03:56:22 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b782b505c2847180@google.com>
From: syzbot <syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1libMi-00BNUg-O4
X-Mailman-Approved-At: Mon, 17 May 2021 12:57:12 +0000
Subject: [Linux-NTFS-Dev] [syzbot] KASAN: use-after-free Read in
 ntfs_test_inode
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

HEAD commit:    9cdbf646 Merge tag 'io_uring-5.12-2021-04-16' of git://git..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11684629d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=330c6a2c09278509
dashboard link: https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
compiler:       Debian clang version 11.0.1-2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com

ntfs: volume version 3.1.
==================================================================
BUG: KASAN: use-after-free in instrument_atomic_read include/linux/instrumented.h:71 [inline]
BUG: KASAN: use-after-free in test_bit include/asm-generic/bitops/instrumented-non-atomic.h:134 [inline]
BUG: KASAN: use-after-free in NInoAttr fs/ntfs/inode.h:200 [inline]
BUG: KASAN: use-after-free in ntfs_test_inode+0x7b/0x2d0 fs/ntfs/inode.c:55
Read of size 8 at addr ffff8880974790f0 by task syz-executor.3/12887

CPU: 1 PID: 12887 Comm: syz-executor.3 Not tainted 5.12.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x176/0x24e lib/dump_stack.c:120
 print_address_description+0x5f/0x3a0 mm/kasan/report.c:232
 __kasan_report mm/kasan/report.c:399 [inline]
 kasan_report+0x15c/0x200 mm/kasan/report.c:416
 check_region_inline mm/kasan/generic.c:135 [inline]
 kasan_check_range+0x2b5/0x2f0 mm/kasan/generic.c:186
 instrument_atomic_read include/linux/instrumented.h:71 [inline]
 test_bit include/asm-generic/bitops/instrumented-non-atomic.h:134 [inline]
 NInoAttr fs/ntfs/inode.h:200 [inline]
 ntfs_test_inode+0x7b/0x2d0 fs/ntfs/inode.c:55
 find_inode+0x10c/0x3e0 fs/inode.c:825
 ilookup5_nowait fs/inode.c:1335 [inline]
 ilookup5+0x9d/0x1f0 fs/inode.c:1364
 iget5_locked+0x30/0x3d0 fs/inode.c:1145
 ntfs_iget+0x73/0x130 fs/ntfs/inode.c:168
 load_and_check_logfile fs/ntfs/super.c:1208 [inline]
 load_system_files fs/ntfs/super.c:1941 [inline]
 ntfs_fill_super+0x58f2/0x88e0 fs/ntfs/super.c:2893
 mount_bdev+0x26c/0x3a0 fs/super.c:1367
 legacy_get_tree+0xea/0x180 fs/fs_context.c:592
 vfs_get_tree+0x86/0x270 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x188a/0x29a0 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount+0x28c/0x320 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x46797a
Code: 48 c7 c2 bc ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f50a372bfa8 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 000000000046797a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007f50a372c000
RBP: 00007f50a372c040 R08: 00007f50a372c040 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000020000000
R13: 0000000020000100 R14: 00007f50a372c000 R15: 000000002007dc00

Allocated by task 11540:
 kasan_save_stack mm/kasan/common.c:38 [inline]
 kasan_set_track mm/kasan/common.c:46 [inline]
 set_alloc_info mm/kasan/common.c:427 [inline]
 __kasan_slab_alloc+0x8f/0xc0 mm/kasan/common.c:460
 kasan_slab_alloc include/linux/kasan.h:223 [inline]
 slab_post_alloc_hook mm/slab.h:516 [inline]
 slab_alloc_node mm/slub.c:2907 [inline]
 slab_alloc mm/slub.c:2915 [inline]
 kmem_cache_alloc+0x1c3/0x350 mm/slub.c:2920
 reiserfs_alloc_inode+0x19/0xb0 fs/reiserfs/super.c:642
 alloc_inode fs/inode.c:234 [inline]
 new_inode_pseudo+0x61/0x220 fs/inode.c:928
 new_inode+0x25/0x1d0 fs/inode.c:957
 reiserfs_mkdir+0x129/0x800 fs/reiserfs/namei.c:812
 xattr_mkdir fs/reiserfs/xattr.c:76 [inline]
 create_privroot fs/reiserfs/xattr.c:889 [inline]
 reiserfs_xattr_init+0x34b/0x730 fs/reiserfs/xattr.c:1012
 reiserfs_fill_super+0x2aac/0x3160 fs/reiserfs/super.c:2177
 mount_bdev+0x26c/0x3a0 fs/super.c:1367
 legacy_get_tree+0xea/0x180 fs/fs_context.c:592
 vfs_get_tree+0x86/0x270 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x188a/0x29a0 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount+0x28c/0x320 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae

Last potentially related work creation:
 kasan_save_stack+0x27/0x50 mm/kasan/common.c:38
 kasan_record_aux_stack+0xee/0x120 mm/kasan/generic.c:345
 __call_rcu kernel/rcu/tree.c:3039 [inline]
 call_rcu+0x130/0x8e0 kernel/rcu/tree.c:3114
 reiserfs_new_inode+0x690/0x2660 fs/reiserfs/inode.c:2164
 reiserfs_mkdir+0x4a0/0x800 fs/reiserfs/namei.c:842
 xattr_mkdir fs/reiserfs/xattr.c:76 [inline]
 create_privroot fs/reiserfs/xattr.c:889 [inline]
 reiserfs_xattr_init+0x34b/0x730 fs/reiserfs/xattr.c:1012
 reiserfs_fill_super+0x2aac/0x3160 fs/reiserfs/super.c:2177
 mount_bdev+0x26c/0x3a0 fs/super.c:1367
 legacy_get_tree+0xea/0x180 fs/fs_context.c:592
 vfs_get_tree+0x86/0x270 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x188a/0x29a0 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount+0x28c/0x320 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae

The buggy address belongs to the object at ffff888097478c20
 which belongs to the cache reiser_inode_cache of size 1424
The buggy address is located 1232 bytes inside of
 1424-byte region [ffff888097478c20, ffff8880974791b0)
The buggy address belongs to the page:
page:ffffea00025d1e00 refcount:1 mapcount:0 mapping:0000000000000000 index:0xffff888097479840 pfn:0x97478
head:ffffea00025d1e00 order:3 compound_mapcount:0 compound_pincount:0
flags: 0xfff00000010200(slab|head)
raw: 00fff00000010200 dead000000000100 dead000000000122 ffff888018116500
raw: ffff888097479840 0000000080150014 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff888097478f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888097479000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff888097479080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                             ^
 ffff888097479100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888097479180: fb fb fb fb fb fb fc fc fc fc fc fc fc fc fc fc
==================================================================


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
