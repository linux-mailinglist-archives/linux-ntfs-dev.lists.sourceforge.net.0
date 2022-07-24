Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA7A58050C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mw-0000Bf-Mx; Mon, 25 Jul 2022 20:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3gwjdYgkbACYUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oFXMg-0004h8-8W
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 08:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AO7PREUYv+nfrjbwbYMkqRJTeiRWWTiw5vqtaXtpbtA=; b=bn5avMAfvN1ZX4QSyAM8o8giFE
 F48gT/gMioISIzWXYUvANq4IBzK3KP2o0Mmil9xzpvpCS/zp8p6oDzsRkzv+gi3K85TLLCiWOUEkh
 ENkbspf37R4lwTYytfsc5TmjaBcZrqx3M57HVgiHF88Y64SiQWmhPp/zxhvlnoOuX9oU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AO7PREUYv+nfrjbwbYMkqRJTeiRWWTiw5vqtaXtpbtA=; b=Z
 OrF2D2x9yYHSTbaeynidrOv6CRoM6rmgY9cwKO9l0m2gyMkDMOH4R63yXcTOJjcX4OxO/sk+jTct1
 yBx0Q8mPvkB/Ia1zaDycKMxcGviBq1r8fbHixIKVnvbO/QahpKjnMvAPROh+Gj7jMAwEGgd0lhVJ6
 Vkv9oE9rp2kpYC4A=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFXMe-008l47-Vs
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 08:53:30 +0000
Received: by mail-il1-f200.google.com with SMTP id
 f11-20020a056e02168b00b002dc8abbf7f9so5373013ila.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 24 Jul 2022 01:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=AO7PREUYv+nfrjbwbYMkqRJTeiRWWTiw5vqtaXtpbtA=;
 b=GAHRAE00kyy0szoJG26A2mjsPRUgN07jGT5DMv++J3eZgu3vk9040G40x6BGiA19i1
 6DN4iW3s1vMjeVUXKn5lZ6j+vvuITlbSwyYK1GGx2ZGQ+T2neA7aa8kts0AD8Zp9kKFD
 owNF0+iZcdcbPJbfG4Xffr45ZvD9p/Hosk61qeHBjUmujBEGhLEiRo7jF0K3WgUYWgiA
 Bksj3ZLJ/nPoad/T96zA3rmUXLLSIdzeVPwwuaJlKPc4bC9j9Nlaan9vP7ZLZXUtqHab
 0vZCySR94/GHNBoXnb37QC7rkHV6u0ijWAPOBgE9R9QAI8ZY5+LeOZG9oYtaOmdOVyUe
 69WQ==
X-Gm-Message-State: AJIora/RHKzk66vVfttjH/EiHdIJuldFTFtII1cLa4ICUHQk/m5YdMbk
 VSdBra+7iejNxuwO/vZSMPTDgbxMRvh3gH9JOSf93Q+94P5K
X-Google-Smtp-Source: AGRyM1uM1oPUyMj0Ln7ZwkRBA5KZ8XSY348AfwZbC08Od2dJe9jvODpfUw0TGZgv/H0Vx+A0viHThixcq+QpxylufVrMHzKf8tnI
MIME-Version: 1.0
X-Received: by 2002:a05:6602:1587:b0:67c:b28:6e90 with SMTP id
 e7-20020a056602158700b0067c0b286e90mr2648662iow.16.1658652803347; Sun, 24 Jul
 2022 01:53:23 -0700 (PDT)
Date: Sun, 24 Jul 2022 01:53:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000263bc305e489338a@google.com>
From: syzbot <syzbot+d532380eef771ac0034b@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: ca85855bdcae
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=157a16dc080000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1oFXMe-008l47-Vs
X-Mailman-Approved-At: Mon, 25 Jul 2022 20:07:56 +0000
Subject: [Linux-NTFS-Dev] [syzbot] kernel BUG in ntfs_lookup_inode_by_name
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

HEAD commit:    ca85855bdcae Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=157a16dc080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a01cb298f103d7e3
dashboard link: https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=148f69c2080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1534cc4a080000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14032ec2080000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=16032ec2080000
console output: https://syzkaller.appspot.com/x/log.txt?x=12032ec2080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d532380eef771ac0034b@syzkaller.appspotmail.com

ntfs: (device loop0): map_mft_record_page(): Mft record 0xa is corrupt.  Run chkdsk.
ntfs: (device loop0): map_mft_record(): Failed with error code 5.
ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -5.  Marking corrupt inode 0xa as bad.  Run chkdsk.
ntfs: (device loop0): load_and_init_upcase(): Failed to load $UpCase from the volume. Using default.
ntfs: volume version 3.1.
ntfs: (device loop0): map_mft_record_page(): Mft record 0x2 is corrupt.  Run chkdsk.
------------[ cut here ]------------
kernel BUG at fs/ntfs/dir.c:86!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 3611 Comm: syz-executor707 Not tainted 5.19.0-rc7-syzkaller-00005-gca85855bdcae #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/29/2022
RIP: 0010:ntfs_lookup_inode_by_name+0xe4b/0x2ef0 fs/ntfs/dir.c:86
Code: df 48 c1 ea 03 80 3c 02 00 0f 85 ec 1d 00 00 48 8b 44 24 50 49 8d 5c 24 07 48 c7 00 00 00 00 00 e9 1e fa ff ff e8 f5 af d9 fe <0f> 0b e8 ee af d9 fe 0f 0b e8 e7 af d9 fe 48 8b 74 24 70 4c 89 e1
RSP: 0018:ffffc9000347fa30 EFLAGS: 00010293
RAX: 0000000000000000 RBX: 0000000000008000 RCX: 0000000000000000
RDX: ffff888020e05880 RSI: ffffffff82a0bc6b RDI: 0000000000000003
RBP: ffff88807bfb8000 R08: 0000000000000003 R09: 0000000000004000
R10: 0000000000008000 R11: 000000000008a07a R12: ffff88807ce82050
R13: ffff88807bfb8000 R14: ffff88807bfb8230 R15: ffff88807ce82000
FS:  00005555555a3300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000560fe0051808 CR3: 0000000072caa000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 load_and_init_quota fs/ntfs/super.c:1367 [inline]
 load_system_files fs/ntfs/super.c:2103 [inline]
 ntfs_fill_super+0x59f5/0x9080 fs/ntfs/super.c:2891
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
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f6deea26afa
Code: 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffdf3ff3938 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffdf3ff3990 RCX: 00007f6deea26afa
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffdf3ff3950
RBP: 00007ffdf3ff3950 R08: 00007ffdf3ff3990 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000020001208
R13: 0000000000000003 R14: 0000000000000004 R15: 00000000000000ab
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_lookup_inode_by_name+0xe4b/0x2ef0 fs/ntfs/dir.c:86
Code: df 48 c1 ea 03 80 3c 02 00 0f 85 ec 1d 00 00 48 8b 44 24 50 49 8d 5c 24 07 48 c7 00 00 00 00 00 e9 1e fa ff ff e8 f5 af d9 fe <0f> 0b e8 ee af d9 fe 0f 0b e8 e7 af d9 fe 48 8b 74 24 70 4c 89 e1
RSP: 0018:ffffc9000347fa30 EFLAGS: 00010293
RAX: 0000000000000000 RBX: 0000000000008000 RCX: 0000000000000000
RDX: ffff888020e05880 RSI: ffffffff82a0bc6b RDI: 0000000000000003
RBP: ffff88807bfb8000 R08: 0000000000000003 R09: 0000000000004000
R10: 0000000000008000 R11: 000000000008a07a R12: ffff88807ce82050
R13: ffff88807bfb8000 R14: ffff88807bfb8230 R15: ffff88807ce82000
FS:  00005555555a3300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000560fe0051808 CR3: 0000000072caa000 CR4: 0000000000350ef0


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
