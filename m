Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7295672112E
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  3 Jun 2023 18:18:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1q5Txc-00008j-4v;
	Sat, 03 Jun 2023 16:18:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <oswalpalash@gmail.com>) id 1q5Pbj-0005wN-8Y
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 03 Jun 2023 11:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4te7o+PhhKmzmY3YctqcqLfBq7E7GPECAzNUOyZeI0U=; b=DylGtdca5iq/3j0+RTwV7wfG+D
 9YiVkLKSxviiH1usmp5guzsd1sJNc9p8jwvoQZLsatPpxHm2r+Ma6WqQcG7FmQ3cDaeQpzC6XcGw3
 qrDuIlYQ5reKRb5LIYXTkprYq0t8QkIYSVSh2eiLU4m6TSh2+ysoqXojG9YvcsXNNgL0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4te7o+PhhKmzmY3YctqcqLfBq7E7GPECAzNUOyZeI0U=; b=X
 LBKqvI//1+TOFcGO76NGLaFSs5H1YX+hihPpWe1IHqqTYbhSzUX1rLXuADPo1JfLSYoXu1k7BNVoq
 EZ3UXOgfoK+lDsgv++3OyYbZk1YlDqOcN8DzREQMC7JxN/ChNErRgIIzMd1Yt5l3y7S9i4bMX6pQA
 OU+Ix736eJ2fod7k=;
Received: from mail-yw1-f178.google.com ([209.85.128.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q5Pbi-0004xL-HA for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 03 Jun 2023 11:39:43 +0000
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-569386b7861so37151257b3.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 03 Jun 2023 04:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685792377; x=1688384377;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=4te7o+PhhKmzmY3YctqcqLfBq7E7GPECAzNUOyZeI0U=;
 b=Zs2uaz+4lElF32GKWkfKtkxlNyVeG27S0OBUw146sCEkHbuh3mHeBgH4Kpxq+PUAbi
 XMYIx9BFzUFpinb4aaebCqyuZFF7zuSSZZDdB5e2sZLpXOpvodr/jHHorfrRLa6u0mg4
 8phDWX65rC2yF7FKwMwnon+23/ZLKiSYmvFCdXNnkWK8BfH/PCgBSCDAA18cpsadZdho
 FI+hWOAs4JfRvE9PYqgWA688eFChekPCWQ3/EpcBqY5GthuKC5kDP1lXGR7txH5X71Er
 s+MJraCt9A5bSqinnQe7ZrwmRxeV+qJfZVUujgDETiic2A2BNFYpLloZVzU306fIsLZv
 OsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685792377; x=1688384377;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4te7o+PhhKmzmY3YctqcqLfBq7E7GPECAzNUOyZeI0U=;
 b=VWCOZUlI9UGOomkHMVxCH366AviTHaKytvkBgX+DxMBtgjNRc2WfwlsRuLk0Qkmu6c
 YrrBDE3SjYFLS7lOg1hO7aMN3p8X7Dl5sqvWBuKlhGFKoWJ6s7MlPF1JgAbS5ZEJiOrK
 pPiUY3cxXVwOi9xXBlGav/aFWw7ksqC3Kh/cMDfDg++6WS3vrSRzlwyPnS6sT9oT8ZIr
 /1jtNfU2ytIWoEubif3REcuisV4ZGLYO4qOqdPHeCOgl/5i+dvcGUstIvrsiOUKk0x8J
 RRyxZ63VFaD3nAQQzEADBda7HXhzVhUP+154zQ+ebQRuYe8pufvNRPx4oIJEffTxwNF3
 bV7Q==
X-Gm-Message-State: AC+VfDwQEUQZqGvqoQgiodbQ5BhkqY376gIsQK+eDpQBECJG9jppMllr
 8RIycnp99QtSLavBFjWZSp75JKLWwqS6QOn/SvU=
X-Google-Smtp-Source: ACHHUZ63bZxGNmeBybOrv5+DW/Bfsjlon0EeDVf6Kam0JL8s8yblP4Dwvk4p42+l5U2SImZ91Qr8r3t6KjjrsWeG3RA=
X-Received: by 2002:a0d:dbd1:0:b0:568:ed48:21bb with SMTP id
 d200-20020a0ddbd1000000b00568ed4821bbmr2948648ywe.13.1685792376735; Sat, 03
 Jun 2023 04:39:36 -0700 (PDT)
MIME-Version: 1.0
From: Palash Oswal <oswalpalash@gmail.com>
Date: Sat, 3 Jun 2023 04:39:25 -0700
Message-ID: <CAGyP=7eR9nQEdKhfLEzQ7kV9WbHeZV5gUQPL2Kf5OYXTu8tqjQ@mail.gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>, 
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 I found the following issue using syzkaller with enriched
 corpus[1] on: HEAD commit : 0bcc4025550403ae28d2984bddacafbca0a2f112 git
 tree: linux C Reproducer : I do not have a C reproducer yet. I [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.178 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oswalpalash[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.178 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q5Pbi-0004xL-HA
X-Mailman-Approved-At: Sat, 03 Jun 2023 16:18:34 +0000
Subject: [Linux-ntfs-dev] KASAN: slab-use-after-free Read in ntfs_test_inode
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
I found the following issue using syzkaller with enriched corpus[1] on:
HEAD commit : 0bcc4025550403ae28d2984bddacafbca0a2f112
git tree: linux
C Reproducer : I do not have a C reproducer yet. I will update this
thread when I get one.
Kernel .config :
https://gist.github.com/oswalpalash/d9580b0bfce202b37445fa5fd426e41f

Link:
1. https://github.com/cmu-pasta/linux-kernel-enriched-corpus

Console log :


loop2: detected capacity change from 0 to 4096
ntfs: volume version 3.1.
==================================================================
BUG: KASAN: slab-use-after-free in ntfs_test_inode+0x9a/0x2f0
Read of size 8 at addr ffff888042df75e0 by task syz-executor.2/5020
CPU: 1 PID: 5020 Comm: syz-executor.2 Not tainted
6.3.0-rc6-pasta-00035-g0bcc40255504 #1     Hardware name: QEMU
Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014

Call Trace:
 <TASK>
 dump_stack_lvl+0xd9/0x150
 print_address_description.constprop.0+0x2c/0x3c0
 kasan_report+0x11c/0x130
 kasan_check_range+0x141/0x190
 ntfs_test_inode+0x9a/0x2f0
 find_inode+0xe4/0x220
 iget5_locked+0xb5/0x2c0
 ntfs_iget+0xa1/0x180
 ntfs_fill_super+0x44bd/0x9400
 mount_bdev+0x351/0x410
 legacy_get_tree+0x109/0x220
 vfs_get_tree+0x8d/0x350
 path_mount+0x1342/0x1e40
 __x64_sys_mount+0x283/0x300
 do_syscall_64+0x39/0xb0
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f138809146e
Code: 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f
84 00 00 00 00 00 90 f3 0f 1e fa 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f1388e1da08 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 00007f138809146e
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007f1388e1da60
RBP: 00007f1388e1daa0 R08: 00007f1388e1daa0 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000020000000
R13: 0000000020000100 R14: 00007f1388e1da60 R15: 0000000020079ca0
 </TASK>

Allocated by task 15621:
 kasan_save_stack+0x22/0x40
 kasan_set_track+0x25/0x30
 __kasan_slab_alloc+0x7f/0x90
 kmem_cache_alloc_lru+0x1e3/0x640
 reiserfs_alloc_inode+0x28/0xc0
 alloc_inode+0x61/0x230
 new_inode+0x2b/0x280
 reiserfs_mkdir+0x1f1/0x990
 reiserfs_xattr_init+0x57e/0xc30
 reiserfs_fill_super+0x2127/0x2ea0
 mount_bdev+0x351/0x410
 legacy_get_tree+0x109/0x220
 vfs_get_tree+0x8d/0x350
 path_mount+0x1342/0x1e40
 __x64_sys_mount+0x283/0x300
 do_syscall_64+0x39/0xb0
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Last potentially related work creation:
 kasan_save_stack+0x22/0x40
 __kasan_record_aux_stack+0x7b/0x90
 __call_rcu_common.constprop.0+0x99/0x7e0
 destroy_inode+0x129/0x1b0
 iput.part.0+0x50a/0x740
 iput+0x5c/0x80
 reiserfs_new_inode+0x402/0x2190
 reiserfs_mkdir+0x4b8/0x990
 reiserfs_xattr_init+0x57e/0xc30
 reiserfs_fill_super+0x2127/0x2ea0
 mount_bdev+0x351/0x410
 legacy_get_tree+0x109/0x220
 vfs_get_tree+0x8d/0x350
 path_mount+0x1342/0x1e40
 __x64_sys_mount+0x283/0x300
 do_syscall_64+0x39/0xb0
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
The buggy address belongs to the object at ffff888042df7080
 which belongs to the cache reiser_inode_cache of size 1568
The buggy address is located 1376 bytes inside of
 freed 1568-byte region [ffff888042df7080, ffff888042df76a0)
The buggy address belongs to the physical page:
page:ffffea00010b7dc0 refcount:1 mapcount:0 mapping:0000000000000000
index:0xffff888042df7ffe pfn:0x42df7
flags: 0xfff00000000200(slab|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000000200 ffff8881031dba00 ffffea00010b2110 ffff888015cfb940
raw: ffff888042df7ffe ffff888042df7080 0000000100000001 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Reclaimable, gfp_mask
0x2420d0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_COMP|__GFP_THISNODE|__GFP_RECLAIMABLE),
pid 15621, tgid 15617 (syz-executor.0), ts 208467737645, f
ree_ts 0
 get_page_from_freelist+0x1190/0x2e20
 __alloc_pages+0x1cb/0x4a0
 cache_grow_begin+0x9b/0x3b0
 cache_alloc_refill+0x27f/0x380
 kmem_cache_alloc_lru+0x540/0x640
 reiserfs_alloc_inode+0x28/0xc0
 alloc_inode+0x61/0x230
 iget5_locked+0x1cf/0x2c0
 reiserfs_fill_super+0xf84/0x2ea0
 mount_bdev+0x351/0x410
 legacy_get_tree+0x109/0x220
 vfs_get_tree+0x8d/0x350
 path_mount+0x1342/0x1e40
 __x64_sys_mount+0x283/0x300
 do_syscall_64+0x39/0xb0
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
page_owner free stack trace missing

Memory state around the buggy address:
 ffff888042df7480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888042df7500: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff888042df7580: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                       ^
 ffff888042df7600: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff888042df7680: fb fb fb fb fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
