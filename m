Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7837ACB3A
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 24 Sep 2023 20:08:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qkTWi-0003X1-Kh;
	Sun, 24 Sep 2023 18:08:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XmYQZQkbAJsNTUF5GG9M5KKD8.BJJBG9PN9M7JIO9IO.7JH@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qkS9S-0005N0-Ai for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 24 Sep 2023 16:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1vh+QpChEo3hjej2uReTmZoWOs+vLSS8UE3tDa6gsrY=; b=OCobf3136BlS+lmrFa5O387n/j
 cAk5fhjCRU4hIVoMV62jMBj/z0WQzzh/edC+bjYWRwfKAFgr/EjW1WJR5CHZhKrkv4qq7B2EALwn8
 Nv1wi0kOI34DBnIxWoWSOvMvXxhce4qSiJGoJzpauklSt9PKHsgM6MHkCmZK19HPoymI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1vh+QpChEo3hjej2uReTmZoWOs+vLSS8UE3tDa6gsrY=; b=l
 uElRz2AOSrICB6vkwEXzwaRTrSsg9gZmz1OnBu9pFcJ1H4ncSoCbQAqX5GRGct0yxReHoIrzFU0Z8
 we3MmiVuRNRMKCj9MP0qS/YOwzLTJTK8OpvOxUzG9zksjHN9jV26Es1oYZP3FmXP9O1XjivgAvXWQ
 CeOUFjMQeCWPj248=;
Received: from mail-ot1-f80.google.com ([209.85.210.80])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qkS9L-004x1L-OO for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 24 Sep 2023 16:40:07 +0000
Received: by mail-ot1-f80.google.com with SMTP id
 46e09a7af769-6c49eec318aso10300691a34.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 24 Sep 2023 09:40:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695573598; x=1696178398;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1vh+QpChEo3hjej2uReTmZoWOs+vLSS8UE3tDa6gsrY=;
 b=BP5emfblCM2+l1WUxY4DlLVpm92tY7gG1CNojoa7Se2Yj7eiqvEh6XMyRh3IgHaZR4
 WmeuAxi/DAJl6RJPfCSihmjo8tUoN1IZGnyDBbStRp92EvhSGis8zMHSAFxr9QYjkRl6
 vxoWA2WJVjXMnnYMur89KU8CnEkEp5oBBVTnPUJwPyCxD7XiAt0sgkm19ekN17jaREvP
 fNM9Q5L4ufXq+Puvb91tFDzrNFPRxPN+ZDFeNlfmnJZ7ukINbpRhSnjQ1IBLUsosvRSR
 jNiCup/ow+AntHHoDcjBtDFmQXcPDtL5/cWdXP7sS37PfJMF056xqlgrihVc6Gy+T1UR
 2xww==
X-Gm-Message-State: AOJu0Yzv43OGcJuu+2yJOG/tg6sS5Rnl6eWoz2aENm7+ET1Agl/80Oqg
 B0AuCN3nmSRlMGBQfJebLcFal2q78+4QWnGS8mhwS3Q1AVPW
X-Google-Smtp-Source: AGHT+IHtEFc5DzTM22B0DbfWnS5y8YjgD8ZEh05EaloNZHsYNe9n4jeuQeXa12Qjm6gzD1d76udnrllpJjlais/iIOqF4tBwRxWZ
MIME-Version: 1.0
X-Received: by 2002:a9d:6c04:0:b0:6bd:c74e:f21d with SMTP id
 f4-20020a9d6c04000000b006bdc74ef21dmr1548373otq.4.1695573598150; Sun, 24 Sep
 2023 09:39:58 -0700 (PDT)
Date: Sun, 24 Sep 2023 09:39:58 -0700
In-Reply-To: <000000000000b782b505c2847180@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000022a3f06061d7e02@google.com>
From: syzbot <syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 phil@philpotter.co.uk, syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 3aba70aed91f Merge tag 'gpio-fixes-for-v6.6-rc3' of git://..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=10fa1c8e680000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.80 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.80 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qkS9L-004x1L-OO
X-Mailman-Approved-At: Sun, 24 Sep 2023 18:08:14 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] KASAN: use-after-free Read in
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    3aba70aed91f Merge tag 'gpio-fixes-for-v6.6-rc3' of git://..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=10fa1c8e680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e4ca82a1bedd37e4
dashboard link: https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=136b4412680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11aec0dc680000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/5fa097a40129/disk-3aba70ae.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/13b28020a934/vmlinux-3aba70ae.xz
kernel image: https://storage.googleapis.com/syzbot-assets/7f3b0a1bf798/bzImage-3aba70ae.xz
mounted in repro #1: https://storage.googleapis.com/syzbot-assets/215dc95e52e5/mount_0.gz
mounted in repro #2: https://storage.googleapis.com/syzbot-assets/b88b05ac266b/mount_1.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 4096
==================================================================
BUG: KASAN: slab-out-of-bounds in instrument_atomic_read include/linux/instrumented.h:68 [inline]
BUG: KASAN: slab-out-of-bounds in _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
BUG: KASAN: slab-out-of-bounds in NInoAttr fs/ntfs/inode.h:200 [inline]
BUG: KASAN: slab-out-of-bounds in ntfs_test_inode+0x7f/0x2e0 fs/ntfs/inode.c:55
Read of size 8 at addr ffff888077b1df60 by task syz-executor108/5863

CPU: 0 PID: 5863 Comm: syz-executor108 Not tainted 6.6.0-rc2-syzkaller-00386-g3aba70aed91f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:364 [inline]
 print_report+0x163/0x540 mm/kasan/report.c:475
 kasan_report+0x175/0x1b0 mm/kasan/report.c:588
 kasan_check_range+0x27e/0x290 mm/kasan/generic.c:187
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
 NInoAttr fs/ntfs/inode.h:200 [inline]
 ntfs_test_inode+0x7f/0x2e0 fs/ntfs/inode.c:55
 find_inode+0x16f/0x430 fs/inode.c:901
 ilookup5_nowait fs/inode.c:1456 [inline]
 ilookup5+0xa1/0x200 fs/inode.c:1485
 iget5_locked+0x37/0x270 fs/inode.c:1266
 ntfs_attr_iget+0x1b5/0x2420 fs/ntfs/inode.c:229
 load_system_files+0x1333/0x4840 fs/ntfs/super.c:1808
 ntfs_fill_super+0x19b3/0x2bd0 fs/ntfs/super.c:2900
 mount_bdev+0x237/0x300 fs/super.c:1629
 legacy_get_tree+0xef/0x190 fs/fs_context.c:638
 vfs_get_tree+0x8c/0x280 fs/super.c:1750
 do_new_mount+0x28f/0xae0 fs/namespace.c:3335
 do_mount fs/namespace.c:3675 [inline]
 __do_sys_mount fs/namespace.c:3884 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3861
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f79473960aa
Code: d8 64 89 02 48 c7 c0 ff ff ff ff eb a6 e8 5e 04 00 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f7947351028 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000005 RCX: 00007f79473960aa
RDX: 000000002001f6c0 RSI: 000000002001f640 RDI: 00007f7947351080
RBP: 000000002001f6c0 R08: 00007f79473510c0 R09: 000000000001f63f
R10: 0000000000008703 R11: 0000000000000286 R12: 00007f7947351080
R13: 000000002001f640 R14: 000000000001f646 R15: 00007f79473510c0
 </TASK>

Allocated by task 5059:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x4f/0x70 mm/kasan/common.c:52
 __kasan_slab_alloc+0x66/0x70 mm/kasan/common.c:328
 kasan_slab_alloc include/linux/kasan.h:188 [inline]
 slab_post_alloc_hook+0x67/0x3d0 mm/slab.h:762
 slab_alloc_node mm/slub.c:3478 [inline]
 slab_alloc mm/slub.c:3486 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3493 [inline]
 kmem_cache_alloc_lru+0x122/0x300 mm/slub.c:3509
 alloc_inode_sb include/linux/fs.h:2868 [inline]
 ntfs_alloc_inode+0x28/0x80 fs/ntfs3/super.c:546
 alloc_inode fs/inode.c:259 [inline]
 iget5_locked+0xa0/0x270 fs/inode.c:1269
 ntfs_iget5+0xc6/0x38e0 fs/ntfs3/inode.c:525
 ntfs_fill_super+0x2dec/0x4c30 fs/ntfs3/super.c:1244
 get_tree_bdev+0x416/0x5b0 fs/super.c:1577
 vfs_get_tree+0x8c/0x280 fs/super.c:1750
 do_new_mount+0x28f/0xae0 fs/namespace.c:3335
 do_mount fs/namespace.c:3675 [inline]
 __do_sys_mount fs/namespace.c:3884 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3861
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff888077b1d880
 which belongs to the cache ntfs_inode_cache of size 1760
The buggy address is located 0 bytes to the right of
 allocated 1760-byte region [ffff888077b1d880, ffff888077b1df60)

The buggy address belongs to the physical page:
page:ffffea0001dec600 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x77b18
head:ffffea0001dec600 order:3 entire_mapcount:0 nr_pages_mapped:0 pincount:0
flags: 0xfff00000000840(slab|head|node=0|zone=1|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 00fff00000000840 ffff888141666c80 dead000000000100 dead000000000122
raw: 0000000000000000 0000000000110011 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Reclaimable, gfp_mask 0xd2050(__GFP_IO|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC|__GFP_RECLAIMABLE), pid 5056, tgid 5054 (syz-executor108), ts 62202039156, free_ts 18025050030
 set_page_owner include/linux/page_owner.h:31 [inline]
 post_alloc_hook+0x1e6/0x210 mm/page_alloc.c:1536
 prep_new_page mm/page_alloc.c:1543 [inline]
 get_page_from_freelist+0x31db/0x3360 mm/page_alloc.c:3170
 __alloc_pages+0x255/0x670 mm/page_alloc.c:4426
 alloc_slab_page+0x6a/0x160 mm/slub.c:1870
 allocate_slab mm/slub.c:2017 [inline]
 new_slab+0x84/0x2f0 mm/slub.c:2070
 ___slab_alloc+0xc85/0x1310 mm/slub.c:3223
 __slab_alloc mm/slub.c:3322 [inline]
 __slab_alloc_node mm/slub.c:3375 [inline]
 slab_alloc_node mm/slub.c:3468 [inline]
 slab_alloc mm/slub.c:3486 [inline]
 __kmem_cache_alloc_lru mm/slub.c:3493 [inline]
 kmem_cache_alloc_lru+0x1bf/0x300 mm/slub.c:3509
 alloc_inode_sb include/linux/fs.h:2868 [inline]
 ntfs_alloc_inode+0x28/0x80 fs/ntfs3/super.c:546
 alloc_inode fs/inode.c:259 [inline]
 iget5_locked+0xa0/0x270 fs/inode.c:1269
 ntfs_iget5+0xc6/0x38e0 fs/ntfs3/inode.c:525
 ntfs_fill_super+0x2459/0x4c30 fs/ntfs3/super.c:1150
 get_tree_bdev+0x416/0x5b0 fs/super.c:1577
 vfs_get_tree+0x8c/0x280 fs/super.c:1750
 do_new_mount+0x28f/0xae0 fs/namespace.c:3335
 do_mount fs/namespace.c:3675 [inline]
 __do_sys_mount fs/namespace.c:3884 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3861
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1136 [inline]
 free_unref_page_prepare+0x8c3/0x9f0 mm/page_alloc.c:2312
 free_unref_page+0x37/0x3f0 mm/page_alloc.c:2405
 free_contig_range+0x9e/0x150 mm/page_alloc.c:6342
 destroy_args+0x95/0x7c0 mm/debug_vm_pgtable.c:1028
 debug_vm_pgtable+0x4ba/0x540 mm/debug_vm_pgtable.c:1408
 do_one_initcall+0x23d/0x7d0 init/main.c:1232
 do_initcall_level+0x157/0x210 init/main.c:1294
 do_initcalls+0x3f/0x80 init/main.c:1310
 kernel_init_freeable+0x429/0x5c0 init/main.c:1547
 kernel_init+0x1d/0x2a0 init/main.c:1437
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304

Memory state around the buggy address:
 ffff888077b1de00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff888077b1de80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff888077b1df00: 00 00 00 00 00 00 00 00 00 00 00 00 fc fc fc fc
                                                       ^
 ffff888077b1df80: fc fc fc fc fc fc fc fc fc fc fc fc 00 00 00 00
 ffff888077b1e000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
==================================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
