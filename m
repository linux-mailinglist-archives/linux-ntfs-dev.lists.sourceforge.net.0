Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F4565B60F
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  2 Jan 2023 18:50:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pCOxI-0004H7-Eu;
	Mon, 02 Jan 2023 17:50:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Xc-yYwkbAOoeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pCK1d-00074H-PN for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 02 Jan 2023 12:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uSZIh3R9tmk2zXdNEc5WJ8qPxT/Kv5Jkd5qJTfpBQ3M=; b=J0x7KwKpuN9XgHBh/ivseF61yH
 iXTnVq+7oYRfB0oNdP9o+cLR26zrbdgh/pRhGlpRNZDA+sbCObqsi/kMOzwydCae8w35TJupI13Bf
 +gnYkNuCDw/Omxm0xUT9/HKWWJ89BQ9UqGLkwv12fev/0SgCci05UD9pVtoWC0XIn6Qw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uSZIh3R9tmk2zXdNEc5WJ8qPxT/Kv5Jkd5qJTfpBQ3M=; b=e
 /zvplCDrUy89sWjMsvAN4CvD6UTe3H+p6U1wHhMFXlC3fEc24bJM7Fu//8syRJ/xPLSAga95GXOgK
 xYXaTHwZHZIiJlNFZvGWXhPQvbYX2RkMfPtNE54Ly8zdHf+nbYINhvd5oXBUravgRuGeUo6YemMqO
 SFKA8n3Ho7P+NzPA=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pCK1c-000601-02 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 02 Jan 2023 12:34:45 +0000
Received: by mail-il1-f198.google.com with SMTP id
 h24-20020a056e021d9800b0030be8a5dd68so16395159ila.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 02 Jan 2023 04:34:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uSZIh3R9tmk2zXdNEc5WJ8qPxT/Kv5Jkd5qJTfpBQ3M=;
 b=rTxRosqV4YuK+6Mt7DW+y57s2S1Mc8JlpqYOz5hixvwJzYbLRm6wrV40H/PL8S29a8
 XGaNSJggaBHcKbiuAQizuTzPIl0piCqnHnz4IT2px4dLKdF5oBqh6FIYKAvU55ZMcoT8
 V8L+Iog29ZzO/4ZFsf/Q1R5ecTuCPaKWx4/ZKjHvBJ32RclC9hJd0wROpByS09GLk83B
 6C0ATPlxK6XTE4d1h2K7SmSmVmNZKs5F4/b2GnmN3BldMuQmDkD1i0MKKBjUdt1JLQ0u
 v+849M6LkQpUgv6sDcCbVRG8kuPR4B2Vz3oTLARFNZ9z8E/QhDh3SjQ7Qc1y/grUhOmU
 xpwA==
X-Gm-Message-State: AFqh2kqHIQ5h4C4JYwP8CeaPD/+JMplf72sB1XtJIoEcLj8/J/OkWbQ4
 5KkPKQbdgtAgE3WUbKmew5UxhZDx9Jcptw6nauBIlMFl9NEh
X-Google-Smtp-Source: AMrXdXuDpa/nG6agDjje8/9RdpHOTcthB9Rxa58bTNiHwVH/eLFag0GP4QKSjGRqMZ/6JP9CQT27ar9aujKTJU1EJ7yF4DFbnCFX
MIME-Version: 1.0
X-Received: by 2002:a05:6638:36ed:b0:38a:9b1:d500 with SMTP id
 t45-20020a05663836ed00b0038a09b1d500mr2749054jau.252.1672662877342; Mon, 02
 Jan 2023 04:34:37 -0800 (PST)
Date: Mon, 02 Jan 2023 04:34:37 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a213d505f1472cbe@google.com>
From: syzbot <syzbot+22e381af27f7921a2642@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: bff687b3dad6
 Merge tag 'block-6.2-2022-12-29' of git://git.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=127fe732480000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1pCK1c-000601-02
X-Mailman-Approved-At: Mon, 02 Jan 2023 17:50:35 +0000
Subject: [Linux-NTFS-Dev] [syzbot] [ntfs?] kernel BUG in ntfs_truncate
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

HEAD commit:    bff687b3dad6 Merge tag 'block-6.2-2022-12-29' of git://git..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=127fe732480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=22e381af27f7921a2642
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=175a9dbc480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1542c884480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b1982d688f97/disk-bff687b3.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c7c5609f900d/vmlinux-bff687b3.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ee4e79832281/bzImage-bff687b3.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ab0785a427df/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+22e381af27f7921a2642@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 4096
ntfs: volume version 3.1.
------------[ cut here ]------------
kernel BUG at fs/ntfs/inode.c:2536!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 5076 Comm: syz-executor690 Not tainted 6.2.0-rc1-syzkaller-00068-gbff687b3dad6 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
RIP: 0010:ntfs_truncate+0x269f/0x2720 fs/ntfs/inode.c:2536
Code: 20 80 e1 07 80 c1 03 38 c1 0f 8c c8 f8 ff ff 48 8b 7c 24 20 e8 72 f3 1a ff e9 b9 f8 ff ff e8 98 4b c5 fe 0f 0b e8 91 4b c5 fe <0f> 0b e8 8a 4b c5 fe 0f 0b e8 83 4b c5 fe 0f 0b e8 7c 4b c5 fe 0f
RSP: 0018:ffffc90003c8fae0 EFLAGS: 00010293
RAX: ffffffff82c68fdf RBX: 00000000ffffffe4 RCX: ffff888029970000
RDX: 0000000000000000 RSI: 00000000ffffffe4 RDI: 0000000000000000
RBP: ffff8880786b7380 R08: ffffffff82c670dd R09: ffffed100f0d6e7b
R10: ffffed100f0d6e7b R11: 1ffff1100f0d6e7a R12: dffffc0000000000
R13: ffff8880786b7380 R14: ffff8880786b7380 R15: 0000000000000000
FS:  0000555556955300(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000040 CR3: 0000000028ee7000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 ntfs_truncate_vfs fs/ntfs/inode.c:2862 [inline]
 ntfs_setattr+0x2b9/0x3a0 fs/ntfs/inode.c:2914
 notify_change+0xe50/0x1100 fs/attr.c:482
 do_truncate+0x200/0x2f0 fs/open.c:65
 vfs_truncate+0x299/0x360 fs/open.c:111
 do_sys_truncate+0xcb/0x180 fs/open.c:134
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f61c4db3769
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 51 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc056b7c28 EFLAGS: 00000246 ORIG_RAX: 000000000000004c
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f61c4db3769
RDX: 00007f61c4d71de3 RSI: 0000000000000000 RDI: 0000000020000040
RBP: 00007f61c4d73000 R08: 000000000001f1cf R09: 0000000000000000
R10: 00007ffc056b7af0 R11: 0000000000000246 R12: 00007f61c4d73090
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_truncate+0x269f/0x2720 fs/ntfs/inode.c:2536
Code: 20 80 e1 07 80 c1 03 38 c1 0f 8c c8 f8 ff ff 48 8b 7c 24 20 e8 72 f3 1a ff e9 b9 f8 ff ff e8 98 4b c5 fe 0f 0b e8 91 4b c5 fe <0f> 0b e8 8a 4b c5 fe 0f 0b e8 83 4b c5 fe 0f 0b e8 7c 4b c5 fe 0f
RSP: 0018:ffffc90003c8fae0 EFLAGS: 00010293
RAX: ffffffff82c68fdf RBX: 00000000ffffffe4 RCX: ffff888029970000
RDX: 0000000000000000 RSI: 00000000ffffffe4 RDI: 0000000000000000
RBP: ffff8880786b7380 R08: ffffffff82c670dd R09: ffffed100f0d6e7b
R10: ffffed100f0d6e7b R11: 1ffff1100f0d6e7a R12: dffffc0000000000
R13: ffff8880786b7380 R14: ffff8880786b7380 R15: 0000000000000000
FS:  0000555556955300(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000040 CR3: 0000000028ee7000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
