Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA2F39E15F
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  7 Jun 2021 18:02:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lqHhV-0004nk-Gb; Mon, 07 Jun 2021 16:02:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <3bUG-YAkbAPQouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1lqHbH-0004Xg-O9
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 07 Jun 2021 15:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bwM2mKUfaXdskIPcxHEhMPAzQ7H5OmyLgOGugyfd8JY=; b=YK8WGQp7RvK4bN6CeLUGmNqfYS
 50jivy3XmocqIYRH6Fox/XFJGMHCEnAkSARfOk53gCYrY00/W36QhE7XtysB7NTyldagwd8Lo+TM2
 t9UkBtBSykbpaQc7+T7dE5pUlBOcindlG8TGD9B0ytHmz+/iY/OTiUM1OJCFpjLzRFHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bwM2mKUfaXdskIPcxHEhMPAzQ7H5OmyLgOGugyfd8JY=; b=l
 wdXeQ6VJ+RkDUXIHtJGLlPOlGcprvIU3p9pE00oRUlDinLPpDJ6tR3rRNLok+/NAbJY4WSjzAGRFS
 oRKZ4uq7qGVZDp1EzYYyQJowurUvk4zCB/PRqEcY4p6cRlafavXJ6wfxPkLZHC3AFkh3nj2MOXkJB
 WRTUu2H4QmQ015k4=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqHb9-00FHyG-DA
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 07 Jun 2021 15:55:41 +0000
Received: by mail-io1-f72.google.com with SMTP id
 u15-20020a6b490f0000b0290447d9583f14so12355043iob.20
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 07 Jun 2021 08:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=bwM2mKUfaXdskIPcxHEhMPAzQ7H5OmyLgOGugyfd8JY=;
 b=cNjLS1D6cUJjPxKsV1gvK8YDNwTnCOw8r0DpjqjlU775a/nn1/mzVgC0LEzMrMJJRa
 2TxzkvVfVTKxFrRSErVUEtf7TLhM4uEGp+MZXn9JibxX2Q5ZZRfTBQAqiTo5c75mYkBT
 Nq/Ecd9EMoPcnQlMBLz+QRzUA8rTdKno1UoWNNKOc+sNkShn+q2zkSPRaoUXMFkG0NV1
 Si5OZMv5TT8aWJ509Gvz8lzO+/YmRaqQoDZ7zlwfzyS0xpUs2z8KK6nN26GcNV7yToov
 1GkQkU4TI2fDRywdBlJWdFlL/1OuFnbGyR7JWsa4JWepffMc581iospu07jCodgcaWp4
 LpAQ==
X-Gm-Message-State: AOAM533lSQ08fLmywuVzTjkXPDcH9eB9W6LKp2cTbRYusIqyAhfovPtx
 q4gORuQaxBgDJ4/f//y/Uqs1yGXy1Rr0k6mRERkf7bR32YJc
X-Google-Smtp-Source: ABdhPJyRYbTV/wpcqHWSf+m2QKrFTHaDpzKIEueeDvrdI4q57z9VV6yFKxyR01tJdE+/cBJOSVxXHrlAhQsJkzZ/dLrymiOeTXzO
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:ec8:: with SMTP id
 i8mr3677812ilk.197.1623081325517; 
 Mon, 07 Jun 2021 08:55:25 -0700 (PDT)
Date: Mon, 07 Jun 2021 08:55:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d9622305c42f11db@google.com>
From: syzbot <syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lqHb9-00FHyG-DA
X-Mailman-Approved-At: Mon, 07 Jun 2021 16:02:03 +0000
Subject: [Linux-NTFS-Dev] [syzbot] KASAN: use-after-free Read in ntfs_iget
 (2)
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

HEAD commit:    a1f92694 Add linux-next specific files for 20210518
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=15b2bf2fd00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d612e75ffd53a6d3
dashboard link: https://syzkaller.appspot.com/bug?extid=213ac8bb98f7f4420840
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17375177d00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16cf273dd00000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16f8db40300000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=15f8db40300000
console output: https://syzkaller.appspot.com/x/log.txt?x=11f8db40300000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 8185
==================================================================
BUG: KASAN: use-after-free in ntfs_is_extended_system_file fs/ntfs/inode.c:484 [inline]
BUG: KASAN: use-after-free in ntfs_read_locked_inode+0x5714/0x5af0 fs/ntfs/inode.c:1023
Read of size 8 at addr ffff888036d2cdb8 by task syz-executor965/8517

CPU: 0 PID: 8517 Comm: syz-executor965 Not tainted 5.13.0-rc2-next-20210518-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x13e/0x1d6 lib/dump_stack.c:129
 print_address_description.constprop.0.cold+0x6c/0x309 mm/kasan/report.c:233
 __kasan_report mm/kasan/report.c:419 [inline]
 kasan_report.cold+0x83/0xdf mm/kasan/report.c:436
 ntfs_is_extended_system_file fs/ntfs/inode.c:484 [inline]
 ntfs_read_locked_inode+0x5714/0x5af0 fs/ntfs/inode.c:1023
 ntfs_iget+0x12d/0x180 fs/ntfs/inode.c:177
 load_and_init_upcase fs/ntfs/super.c:1655 [inline]
 load_system_files fs/ntfs/super.c:1810 [inline]
 ntfs_fill_super+0x1f75/0x84e0 fs/ntfs/super.c:2893
 mount_bdev+0x34d/0x410 fs/super.c:1368
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1498
 do_new_mount fs/namespace.c:2905 [inline]
 path_mount+0x132a/0x1fa0 fs/namespace.c:3235
 do_mount fs/namespace.c:3248 [inline]
 __do_sys_mount fs/namespace.c:3456 [inline]
 __se_sys_mount fs/namespace.c:3433 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3433
 do_syscall_64+0x31/0xb0 arch/x86/entry/common.c:47
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x44876a
Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd48f43638 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffd48f43690 RCX: 000000000044876a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffd48f43650
RBP: 00007ffd48f43650 R08: 00007ffd48f43690 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000020001fa0
R13: 0000000000000003 R14: 0000000000000004 R15: 000000000000013c

The buggy address belongs to the page:
page:ffffea0000db4b00 refcount:0 mapcount:0 mapping:0000000000000000 index:0x1 pfn:0x36d2c
flags: 0xfff00000000000(node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000000000 ffffea0000bbb148 ffffea0000d195c8 0000000000000000
raw: 0000000000000001 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as freed
page last allocated via order 0, migratetype Movable, gfp_mask 0x100cca(GFP_HIGHUSER_MOVABLE), pid 8464, ts 63337994321, free_ts 68380784236
 prep_new_page mm/page_alloc.c:2377 [inline]
 get_page_from_freelist+0x125c/0x2ed0 mm/page_alloc.c:4038
 __alloc_pages+0x1b2/0x500 mm/page_alloc.c:5239
 alloc_pages_vma+0xdd/0x770 mm/mempolicy.c:2236
 wp_page_copy+0x1bf/0x2270 mm/memory.c:2897
 do_wp_page+0x2cb/0x1ad0 mm/memory.c:3204
 handle_pte_fault mm/memory.c:4395 [inline]
 __handle_mm_fault+0x236b/0x5200 mm/memory.c:4512
 handle_mm_fault+0x1b9/0x7e0 mm/memory.c:4610
 do_user_addr_fault+0x483/0x1210 arch/x86/mm/fault.c:1390
 handle_page_fault arch/x86/mm/fault.c:1475 [inline]
 exc_page_fault+0x9e/0x180 arch/x86/mm/fault.c:1531
 asm_exc_page_fault+0x1e/0x30 arch/x86/include/asm/idtentry.h:577
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1305 [inline]
 free_pcp_prepare+0x217/0x300 mm/page_alloc.c:1349
 free_unref_page_prepare mm/page_alloc.c:3272 [inline]
 free_unref_page_list+0x19f/0x1050 mm/page_alloc.c:3340
 release_pages+0x824/0x20b0 mm/swap.c:972
 tlb_batch_pages_flush mm/mmu_gather.c:49 [inline]
 tlb_flush_mmu_free mm/mmu_gather.c:242 [inline]
 tlb_flush_mmu mm/mmu_gather.c:249 [inline]
 tlb_finish_mmu+0x165/0x8c0 mm/mmu_gather.c:340
 exit_mmap+0x1ea/0x620 mm/mmap.c:3203
 __mmput+0x122/0x470 kernel/fork.c:1096
 mmput+0x58/0x60 kernel/fork.c:1117
 exit_mm kernel/exit.c:502 [inline]
 do_exit+0xb0a/0x2a70 kernel/exit.c:813
 do_group_exit+0x125/0x310 kernel/exit.c:923
 __do_sys_exit_group kernel/exit.c:934 [inline]
 __se_sys_exit_group kernel/exit.c:932 [inline]
 __x64_sys_exit_group+0x3a/0x50 kernel/exit.c:932
 do_syscall_64+0x31/0xb0 arch/x86/entry/common.c:47
 entry_SYSCALL_64_after_hwframe+0x44/0xae

Memory state around the buggy address:
 ffff888036d2cc80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff888036d2cd00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff888036d2cd80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                        ^
 ffff888036d2ce00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff888036d2ce80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
