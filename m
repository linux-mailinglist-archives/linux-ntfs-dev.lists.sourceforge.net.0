Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CF5717B80
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 May 2023 11:13:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1q4Htz-0003ba-KJ;
	Wed, 31 May 2023 09:13:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-g13ZAkbAB0LRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q4HmX-00055Z-Kx for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 May 2023 09:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T45iOmfHCb/6zwzKz2XNzeL9kK7kDd8L12clG6idG8k=; b=Bk25bxQ+qgFY5DWg7oVoMU+s8q
 nccFSk1bB2MFp36sHKZPfXvV6M+uRQ9zV5kAJfizuWz3lJlOKbpeHkFs+6+JxO2qfBAvFCOgRoYUx
 OUGvDzASukb1XXX9PxeIgMd5T8Y35cjO0W3hUzaJ3+/sRm3Dt7cjWj/Ef6VJtHbFbrgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T45iOmfHCb/6zwzKz2XNzeL9kK7kDd8L12clG6idG8k=; b=M
 llnVwqUwKVb4njI+Yi5B5/GwhmrFicoaAqe61W/fZ6cnJjVfZed6ERZKLkq0CqUEmBJju7Pbq3BpY
 UDSVPwycrvggQ5/XRLeRUonGJa/Whec/elWzyMj/ldCdNYRYw3Kx+GhVuGR31kzusOB+BGfY5duLM
 9WGexytNFcStVlBg=;
Received: from mail-io1-f79.google.com ([209.85.166.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4HmU-0001Ka-7R for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 May 2023 09:06:13 +0000
Received: by mail-io1-f79.google.com with SMTP id
 ca18e2360f4ac-7749ceb342fso719730939f.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 31 May 2023 02:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685523962; x=1688115962;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=T45iOmfHCb/6zwzKz2XNzeL9kK7kDd8L12clG6idG8k=;
 b=Tq7MLK8z1kcV5s4DEPVSQ4iW5j8s59fAWMG9cTb0EW0GR8jcV6KcVL9z5KjSMl/LVI
 FRyK9YWfP3IosSVSR95LifGA6msfMx/OLYaQ021pECa8c8lz5JXhUjRIa3hhVNEBiSRa
 /+LS4SO9ePOZwaI3Fwzl81W9hfU0FiESR88rPOIrbKPU8jgIhuVDT6YXRIn61X8TnEzy
 amgShN06Jm2V7GzRaRpYDRYrIADRQI6P9yqmPTXr0uXnD0F6ki5b7McrJ9BlDE0Lu6Fs
 RNLR/o8jmUhC5OqcTGMVUQHR3I+bKMr1zQEulCsREdYZ78zrxXu5k91BKoYU+gPcWCrP
 i70g==
X-Gm-Message-State: AC+VfDwlWDMjtVzNiIbUyPQ/OCLAw4o3WsQr2f99L97NgN8srM4Xdyzp
 9W7ECle7LB/HW9UnLAJ+BOa7jmTCOJSjmcGA089UBrJQv5vA
X-Google-Smtp-Source: ACHHUZ6WXd5dFW0aam0p1D4QQMkpELgQIiOkkaF2nPvXf8qnOrcWVYs41w2tGnB3oOrIXvg79B3kUZJdhE30tSdASdoL06/6gd+z
MIME-Version: 1.0
X-Received: by 2002:a02:a1c6:0:b0:41a:c5e3:6bf4 with SMTP id
 o6-20020a02a1c6000000b0041ac5e36bf4mr2225787jah.6.1685523962002; Wed, 31 May
 2023 02:06:02 -0700 (PDT)
Date: Wed, 31 May 2023 02:06:01 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000424f205fcf9a132@google.com>
From: syzbot <syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
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
 syzbot found the following issue on: HEAD commit: afead42fdfca
 Merge tag 'perf-tools-fixes-for-v6.4-2-2023-0.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15f72e49280000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.79 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.79 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4HmU-0001Ka-7R
X-Mailman-Approved-At: Wed, 31 May 2023 09:13:54 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] UBSAN: shift-out-of-bounds in
 ntfs_iget
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

HEAD commit:    afead42fdfca Merge tag 'perf-tools-fixes-for-v6.4-2-2023-0..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15f72e49280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=162cf2103e4a7453
dashboard link: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12da9bbd280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=174e8115280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/376b8e00429d/disk-afead42f.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ac81705ce028/vmlinux-afead42f.xz
kernel image: https://storage.googleapis.com/syzbot-assets/70c52b82e56a/bzImage-afead42f.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/248748d7ce8e/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com

ntfs: (device loop0): ntfs_attr_find(): Inode is corrupt.  Run chkdsk.
ntfs: (device loop0): ntfs_read_locked_inode(): Failed to lookup $DATA attribute.
ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -5.  Marking corrupt inode 0x1 as bad.  Run chkdsk.
ntfs: (device loop0): load_system_files(): Failed to load $MFTMirr.  Mounting read-only.  Run ntfsfix and/or chkdsk.
================================================================================
UBSAN: shift-out-of-bounds in fs/ntfs/inode.c:1080:43
shift exponent 44 is too large for 32-bit type 'unsigned int'
CPU: 0 PID: 5000 Comm: syz-executor185 Not tainted 6.4.0-rc4-syzkaller-00047-gafead42fdfca #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
 ntfs_read_locked_inode+0x4665/0x49c0 fs/ntfs/inode.c:1080
 ntfs_iget+0x113/0x190 fs/ntfs/inode.c:177
 load_and_init_upcase fs/ntfs/super.c:1663 [inline]
 load_system_files+0x151c/0x4840 fs/ntfs/super.c:1818
 ntfs_fill_super+0x19b3/0x2bd0 fs/ntfs/super.c:2900
 mount_bdev+0x2d0/0x3f0 fs/super.c:1380
 legacy_get_tree+0xef/0x190 fs/fs_context.c:610
 vfs_get_tree+0x8c/0x270 fs/super.c:1510
 do_new_mount+0x28f/0xae0 fs/namespace.c:3039
 do_mount fs/namespace.c:3382 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f183b0f1afa
Code: 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd7f357638 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007f183b0f1afa
RDX: 0000000020000000 RSI: 000000002001ee80 RDI: 00007ffd7f357650
RBP: 00007ffd7f357650 R08: 00007ffd7f357690 R09: 000000000001ee62
R10: 0000000000000010 R11: 0000000000000286 R12: 0000000000000004
R13: 0000555555d422c0 R14: 0000000000000010 R15: 00007ffd7f357690
 </TASK>
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to change bug's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the bug is a duplicate of another bug, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
