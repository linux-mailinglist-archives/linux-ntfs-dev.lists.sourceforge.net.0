Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A305E56179D
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 30 Jun 2022 12:26:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o6rNR-0005kJ-BN; Thu, 30 Jun 2022 10:26:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3iT69YgkbABgGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1o6nnJ-0004DR-E7
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 30 Jun 2022 06:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+iefHiW7JiAlBhCfS0cyGIXPBkF6lrfC+cvMl/HD+Bs=; b=Va83HY2gBaiGb11vl3+3EGpdOY
 pgpFXpQ5QXFr7Xll4tQtZOx4lEmCoLoozyWsHII1GZrAyMYJpYjuyk+LMjM4PxKX9W/4wgzeR7ZWG
 MqUsFRZSBdMvC91rxACwFq8H2im7j13+cB3Lgi1gRXg5e/5RWzDU5VFexby7wbgtOIoM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+iefHiW7JiAlBhCfS0cyGIXPBkF6lrfC+cvMl/HD+Bs=; b=E
 J+MgpcVsZDz5hW/3mOLRm7dQ1caFVMyulp0m9e4ckLuag3JHWemEz9PA/RS1FMkuSwXVeTtKB0HCO
 Egkbo8RGqUMZKz01cCrFzdRTy0FI1o4G2PALIdTY0z51jgg82cpeK9oEhxsJ8mxPzDHpmLMYDBcaX
 m93Q8fPDHL7zg3kY=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o6nnE-0005RV-2g
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 30 Jun 2022 06:36:52 +0000
Received: by mail-io1-f72.google.com with SMTP id
 o11-20020a6bcf0b000000b0067328c4275bso9714396ioa.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 29 Jun 2022 23:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=+iefHiW7JiAlBhCfS0cyGIXPBkF6lrfC+cvMl/HD+Bs=;
 b=wpgypEK9biEzS7APVJhByicffsnIp9ZDkG6Kkf/NNvWw4ZR+s7IzwNQ4IQQrgcpbat
 YsBViOAye/lsmHh6h6Qr0ffj5WFGrXCncAo+4aJ4c7m9GynVDHbZT9hXZcVad2xjx+Ql
 MIom1CB5x3SLJHE1gY20ZCOVRgL3BaytGi4gKccsmhjDaSHdwN5rLMrA1FYfbKPiKfm3
 wp9OYT3V/pTUP5OwEuwFzOT0jrtqVVaDMTA/JAjEruTTVZr6NS58flOQDLkCvwI9HAhJ
 G+eyfHgOgyhHjqVHdtycaWt/+vWexvRTvJfPlmTHHi4E9yOQnmsH7cdiM+2+xtQG0R0J
 22vA==
X-Gm-Message-State: AJIora/hSIH4qao45zlzIo3C16lhNkLZyf0y8L+2oCts16lxkPARnTz3
 8NkimVdELyhSY1LhfT5O0L2kCNVyq9QogqYZbafz18PK8Tjp
X-Google-Smtp-Source: AGRyM1vvyPO3qcIWWnijVH+aUNCCuS4h7sR3Uw29fCOUFN4e2+xbz9SALIElhJOsJOo7D3OfmCXZvtutkTsIaq6KYtpxpYqkse8s
MIME-Version: 1.0
X-Received: by 2002:a92:cda5:0:b0:2d9:5bc5:6661 with SMTP id
 g5-20020a92cda5000000b002d95bc56661mr4347235ild.16.1656569481311; Wed, 29 Jun
 2022 23:11:21 -0700 (PDT)
Date: Wed, 29 Jun 2022 23:11:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007abef005e2a423e3@google.com>
From: syzbot <syzbot+d6c974f22abc4a2d3d1c@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 0840a7914caa
 Merge tag 'char-misc-5.19-rc4' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=137af970080000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
X-Headers-End: 1o6nnE-0005RV-2g
X-Mailman-Approved-At: Thu, 30 Jun 2022 10:26:23 +0000
Subject: [Linux-NTFS-Dev] [syzbot] KASAN: out-of-bounds Read in
 ntfs_are_names_equal
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

HEAD commit:    0840a7914caa Merge tag 'char-misc-5.19-rc4' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=137af970080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e771627480f67502
dashboard link: https://syzkaller.appspot.com/bug?extid=d6c974f22abc4a2d3d1c
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=112fd917f00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1201eae4080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d6c974f22abc4a2d3d1c@syzkaller.appspotmail.com

ntfs: volume version 3.1.
==================================================================
BUG: KASAN: out-of-bounds in ntfs_ucsncmp fs/ntfs/unistr.c:142 [inline]
BUG: KASAN: out-of-bounds in ntfs_are_names_equal+0x196/0x1a0 fs/ntfs/unistr.c:61
Read of size 2 at addr ffff88802a193ee8 by task syz-executor231/3671

CPU: 2 PID: 3671 Comm: syz-executor231 Not tainted 5.19.0-rc3-syzkaller-00336-g0840a7914caa #0
Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.14.0-2 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description.constprop.0.cold+0xeb/0x467 mm/kasan/report.c:313
 print_report mm/kasan/report.c:429 [inline]
 kasan_report.cold+0xf4/0x1c6 mm/kasan/report.c:491
 ntfs_ucsncmp fs/ntfs/unistr.c:142 [inline]
 ntfs_are_names_equal+0x196/0x1a0 fs/ntfs/unistr.c:61
 ntfs_attr_find+0x3df/0xb20 fs/ntfs/attrib.c:614
 ntfs_attr_lookup+0x1051/0x2060 fs/ntfs/attrib.c:1189
 ntfs_read_locked_attr_inode fs/ntfs/inode.c:1239 [inline]
 ntfs_attr_iget+0x652/0x26f0 fs/ntfs/inode.c:238
 ntfs_read_locked_inode+0x2494/0x5ae0 fs/ntfs/inode.c:960
 ntfs_iget+0x12d/0x180 fs/ntfs/inode.c:177
 load_system_files fs/ntfs/super.c:1974 [inline]
 ntfs_fill_super+0x5634/0x9080 fs/ntfs/super.c:2891
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1320/0x1fa0 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0
RIP: 0033:0x7f982d4f84aa
Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe6c4048f8 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffe6c404950 RCX: 00007f982d4f84aa
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffe6c404910
RBP: 00007ffe6c404910 R08: 00007ffe6c404950 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000020001208
R13: 0000000000000003 R14: 0000000000000004 R15: 00000000000000ab
 </TASK>

The buggy address belongs to the physical page:
page:ffffea0000a864c0 refcount:0 mapcount:0 mapping:0000000000000000 index:0x1 pfn:0x2a193
flags: 0xfff00000000000(node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000000000 ffffea000093d4c8 ffffea000093c7c8 0000000000000000
raw: 0000000000000001 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as freed
page last allocated via order 0, migratetype Movable, gfp_mask 0x140cca(GFP_HIGHUSER_MOVABLE|__GFP_COMP), pid 3672, tgid 3672 (dhcpcd), ts 55153784089, free_ts 55158770564
 prep_new_page mm/page_alloc.c:2456 [inline]
 get_page_from_freelist+0x1290/0x3b70 mm/page_alloc.c:4198
 __alloc_pages+0x1c7/0x510 mm/page_alloc.c:5426
 __folio_alloc+0x12/0x40 mm/page_alloc.c:5457
 vma_alloc_folio+0xf9/0x840 mm/mempolicy.c:2233
 alloc_page_vma include/linux/gfp.h:634 [inline]
 wp_page_copy+0x1f6/0x1e20 mm/memory.c:3104
 do_wp_page+0x389/0x1b60 mm/memory.c:3471
 handle_pte_fault mm/memory.c:4921 [inline]
 __handle_mm_fault+0x2371/0x3f50 mm/memory.c:5042
 handle_mm_fault+0x1c8/0x790 mm/memory.c:5140
 do_user_addr_fault+0x489/0x11c0 arch/x86/mm/fault.c:1397
 handle_page_fault arch/x86/mm/fault.c:1484 [inline]
 exc_page_fault+0x9e/0x180 arch/x86/mm/fault.c:1540
 asm_exc_page_fault+0x27/0x30 arch/x86/include/asm/idtentry.h:570
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1371 [inline]
 free_pcp_prepare+0x549/0xd20 mm/page_alloc.c:1421
 free_unref_page_prepare mm/page_alloc.c:3343 [inline]
 free_unref_page_list+0x16f/0xf80 mm/page_alloc.c:3475
 release_pages+0xff1/0x2290 mm/swap.c:980
 tlb_batch_pages_flush+0xa8/0x1a0 mm/mmu_gather.c:58
 tlb_flush_mmu_free mm/mmu_gather.c:255 [inline]
 tlb_flush_mmu mm/mmu_gather.c:262 [inline]
 tlb_finish_mmu+0x147/0x7e0 mm/mmu_gather.c:353
 exit_mmap+0x1de/0x4a0 mm/mmap.c:3164
 __mmput+0x122/0x4b0 kernel/fork.c:1187
 mmput+0x56/0x60 kernel/fork.c:1208
 exit_mm kernel/exit.c:510 [inline]
 do_exit+0xa12/0x2a00 kernel/exit.c:782
 do_group_exit+0xd2/0x2f0 kernel/exit.c:925
 __do_sys_exit_group kernel/exit.c:936 [inline]
 __se_sys_exit_group kernel/exit.c:934 [inline]
 __x64_sys_exit_group+0x3a/0x50 kernel/exit.c:934
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0

Memory state around the buggy address:
 ffff88802a193d80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff88802a193e00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff88802a193e80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                                             ^
 ffff88802a193f00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff88802a193f80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================


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
