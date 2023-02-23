Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 723F66A092D
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Feb 2023 13:59:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pVBBy-0000KQ-2m;
	Thu, 23 Feb 2023 12:59:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3XGH3YwkbACMRXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pVB4d-0003is-Mg for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 23 Feb 2023 12:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9kbPBpIBKQDiGCpRovjjwnFD5+L6QBUjTcySVEN/c4U=; b=lNu4u+Ffyh0lCjCa0Zc75822F7
 Zgo7GByq4hxvJsO12ggYFpOXM21L2hxDPbASZhVCJgByltkJ/Ht+5yfRDZevCyeu2bpxX2JVJDEyM
 Jychn+gwxSCfizza6wAw+dJAcppe8xhSEhM21eP6pZ+nNJcJvHmNwkjzDvU4ujexUjDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9kbPBpIBKQDiGCpRovjjwnFD5+L6QBUjTcySVEN/c4U=; b=L
 pSHEiXpDNq9iSerIkgbnmE1KfZfJrv2y3oM55AAlMdCoDRIvvStU+IvkbHVOP4ZfjPoRG0WUQVhdp
 I9I7GGvgEqxpoMclFSayuETP+dXdqB5fX7I0BwtcHN7yFybSboEzGvxBJsyVs7QD7yXDmZsuqlxhP
 V/moXW2cJIvG7oJI=;
Received: from mail-il1-f205.google.com ([209.85.166.205])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pVB4b-00082X-F2 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 23 Feb 2023 12:51:46 +0000
Received: by mail-il1-f205.google.com with SMTP id
 d9-20020a056e02214900b003155720bbbfso5545445ilv.22
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Feb 2023 04:51:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9kbPBpIBKQDiGCpRovjjwnFD5+L6QBUjTcySVEN/c4U=;
 b=dXVKt2Zg8BnojLkX7yq/QaMUn4cWGv7c1dVxhGk1wPMP631+ceegdrnS9to7cwQ2Ik
 byIXUdL/6jXh7iifWi9dqrrqN2O/nCbWneIgc4Y/6nKSQ96P3kQWd4AfqqlzYsdtmnva
 EavNrQsyL2oFQy3aq0+GvSTx+6H5E+Zfvqoco4nWIkd2NmB+BGOde7UQpPXdY9knUb1X
 B8OeLSd8WiHdY47ipZF40XOURxNcghZd5Z4r4MbwWxkpVcS4JDAPb2kvU1Ea3+6Qe/C+
 188qK+G2yrhum+R85YM4TWB0N2ipeolpnh3Z35aHg9J0mVgb+AVgKuM9qCtuwzNVZ/jZ
 O7iQ==
X-Gm-Message-State: AO0yUKXr2BxiPLjAV4pXYBfKKj/pv5Jsz09EcmrSFxGJzyQWkVnIImLN
 LhYJl+g1UHXFrAybw1Egc+dO1PsZWARMwLiUxU0VgzFK0aL3
X-Google-Smtp-Source: AK7set/2T8Md5oijPNWth7peWn9upFoh5kDRTpxkhWEo68B0MqBS5q15uek4xJ6rrSO4fRW+stqEgeHBQtlWSG2E1rS6vL+DESyl
MIME-Version: 1.0
X-Received: by 2002:a02:a19b:0:b0:3c4:e84b:2a3a with SMTP id
 n27-20020a02a19b000000b003c4e84b2a3amr4544411jah.4.1677156700660; Thu, 23 Feb
 2023 04:51:40 -0800 (PST)
Date: Thu, 23 Feb 2023 04:51:40 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000602c0e05f55d793c@google.com>
From: syzbot <syzbot+d62e6bd2a2d05103d105@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
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
 syzbot found the following issue on: HEAD commit: 307e14c03906
 Merge tag '6.3-rc-smb3-client-fixes' of git:/.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=12974f28c80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.205 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.205 listed in list.dnswl.org]
X-Headers-End: 1pVB4b-00082X-F2
X-Mailman-Approved-At: Thu, 23 Feb 2023 12:59:20 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in ntfs_iget
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

HEAD commit:    307e14c03906 Merge tag '6.3-rc-smb3-client-fixes' of git:/..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12974f28c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=636897a0dac3d81e
dashboard link: https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/970f2d144bf1/disk-307e14c0.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1ba101847b5b/vmlinux-307e14c0.xz
kernel image: https://storage.googleapis.com/syzbot-assets/21e98f0fe45e/bzImage-307e14c0.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d62e6bd2a2d05103d105@syzkaller.appspotmail.com

loop3: detected capacity change from 0 to 4096
------------[ cut here ]------------
kernel BUG at fs/ntfs/malloc.h:31!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 16279 Comm: syz-executor.3 Not tainted 6.2.0-syzkaller-06742-g307e14c03906 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/21/2023
RIP: 0010:__ntfs_malloc fs/ntfs/malloc.h:31 [inline]
RIP: 0010:ntfs_malloc_nofs+0xfd/0x100 fs/ntfs/malloc.h:52
Code: 17 e8 87 f7 c4 fe 48 89 df be 42 0c 00 00 5b 41 5e 41 5f e9 c5 df 0d ff e8 70 f7 c4 fe 31 c0 5b 41 5e 41 5f c3 e8 63 f7 c4 fe <0f> 0b 90 66 0f 1f 00 55 41 57 41 56 41 55 41 54 53 49 89 fe 49 bc
RSP: 0018:ffffc90027107818 EFLAGS: 00010283
RAX: ffffffff82c7a8ad RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc9000ce23000 RSI: 0000000000005237 RDI: 0000000000005238
RBP: ffff88803a9e44a0 R08: ffffffff82c7a7dd R09: ffffed10105f8a5b
R10: 0000000000000000 R11: dffffc0000000001 R12: dffffc0000000000
R13: ffff888082fc55a0 R14: ffff88803a9e44ab R15: dffffc0000000000
FS:  00007f447fd87700(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f54efde5000 CR3: 000000002a9b8000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 ntfs_read_locked_inode+0x1fd5/0x49c0 fs/ntfs/inode.c:703
 ntfs_iget+0x113/0x190 fs/ntfs/inode.c:177
 load_and_init_mft_mirror fs/ntfs/super.c:1027 [inline]
 load_system_files+0x100/0x4840 fs/ntfs/super.c:1772
 ntfs_fill_super+0x19b4/0x2bd0 fs/ntfs/super.c:2892
 mount_bdev+0x271/0x3a0 fs/super.c:1371
 legacy_get_tree+0xef/0x190 fs/fs_context.c:610
 vfs_get_tree+0x8c/0x270 fs/super.c:1501
 do_new_mount+0x28f/0xae0 fs/namespace.c:3031
 do_mount fs/namespace.c:3374 [inline]
 __do_sys_mount fs/namespace.c:3583 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3560
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f447f08d62a
Code: 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f447fd86f88 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 000000000001e70f RCX: 00007f447f08d62a
RDX: 0000000020000080 RSI: 0000000020000000 RDI: 00007f447fd86fe0
RBP: 00007f447fd87020 R08: 00007f447fd87020 R09: 0000000000000005
R10: 0000000000000005 R11: 0000000000000202 R12: 0000000020000080
R13: 0000000020000000 R14: 00007f447fd86fe0 R15: 0000000020001400
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__ntfs_malloc fs/ntfs/malloc.h:31 [inline]
RIP: 0010:ntfs_malloc_nofs+0xfd/0x100 fs/ntfs/malloc.h:52
Code: 17 e8 87 f7 c4 fe 48 89 df be 42 0c 00 00 5b 41 5e 41 5f e9 c5 df 0d ff e8 70 f7 c4 fe 31 c0 5b 41 5e 41 5f c3 e8 63 f7 c4 fe <0f> 0b 90 66 0f 1f 00 55 41 57 41 56 41 55 41 54 53 49 89 fe 49 bc
RSP: 0018:ffffc90027107818 EFLAGS: 00010283

RAX: ffffffff82c7a8ad RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc9000ce23000 RSI: 0000000000005237 RDI: 0000000000005238
RBP: ffff88803a9e44a0 R08: ffffffff82c7a7dd R09: ffffed10105f8a5b
R10: 0000000000000000 R11: dffffc0000000001 R12: dffffc0000000000
R13: ffff888082fc55a0 R14: ffff88803a9e44ab R15: dffffc0000000000
FS:  00007f447fd87700(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fcdee130000 CR3: 000000002a9b8000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
