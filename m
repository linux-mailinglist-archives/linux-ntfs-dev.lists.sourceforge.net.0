Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B34637EE5
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 24 Nov 2022 19:29:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oyGyE-0007gm-Vk;
	Thu, 24 Nov 2022 18:29:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <34LZ_YwkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oyGtu-0007da-6p for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 24 Nov 2022 18:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GiCsR6Blub8dAnK/MXT4xUyqZm1ylQDNXvyvsjlRQMY=; b=blotRx4Hm4sSo6d5FMgy9Qc4Ls
 CxCHzHZ5zBu1uD9fWD4tLYvpe2A643VciFABjC40nSd1BsRzV9TmwkwXCl4RXrl2AKa9nWsfWk5lt
 1TJm8zbkvhhtqK7tWAW/v8CCo9359D92N8pnBFmyMkNFsZaDycNy1Gs6m4JabK/nMZVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GiCsR6Blub8dAnK/MXT4xUyqZm1ylQDNXvyvsjlRQMY=; b=T
 u/RM6UgG7Y08v/NSjk+xpDOudixGSN5LHSrxmSjQT+jyNJaFEaWhzyLI4huNOsIYXcZqpK6FVJ+GZ
 mJwqColVZv1nj++/j9lQW11ezTjR+1qxGvTITz1dvF7t5UbHANVh3lR8f8HWHHa66eLmCKZFNA6eL
 o3AMSOLuOmuJhjxg=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oyGtq-0000oq-3G for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 24 Nov 2022 18:24:42 +0000
Received: by mail-il1-f200.google.com with SMTP id
 i8-20020a056e0212c800b00302578e6d78so1567592ilm.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 24 Nov 2022 10:24:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GiCsR6Blub8dAnK/MXT4xUyqZm1ylQDNXvyvsjlRQMY=;
 b=nXQIvkuzuX9HNjF7FafidPCQ2TtKyD3ICIH6kmsyzCHkaCfaTMKtm7uvpc7gwuu8Ht
 tjsAtAkXOCpPOTuu/J5HWR+up6Se73izVqsne1WvY3LJ4iMn7qYF7+JSvvfwVmmovcxz
 AMSpuFEyvMM0H6L+4ijQPIfJTqJ40gSftMvyoafZI+XMNOHA4yGdbKufZ5P0o3DrR44L
 UEwmcRO0RsAvd4nNVcG1HJ3eNZo4aC1aTHphVEmoNM3rxtzXf5/rIZYQ9hnOLh58geTt
 Xxb9uDAzH3L7tW4NYWA+xBwQ9ubElHZsCk+t0EsuxdHUZ8nuRlAYvOR3+hB1ws8Ee37I
 6ADw==
X-Gm-Message-State: ANoB5pnBdxIPIZtyRbALHrfkyFBXj1Wfvx3cY65kycRsyaLQ4isPggVV
 T5zYtsFpt7HoaoHG2cIgXsG8r6Y/lRWvYRnCaWekU+6oabfu
X-Google-Smtp-Source: AA0mqf6Ufk8H/3k0OUmMHhiCgR+YJMyX0fmmw1TiC16M2O3qN8W0oCp49inyb/5cPqlaycZbXRs0fScyW5n/q2LwHvREHtPFxCTQ
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1b08:b0:358:1594:9eb6 with SMTP id
 cb8-20020a0566381b0800b0035815949eb6mr1892867jab.236.1669314272490; Thu, 24
 Nov 2022 10:24:32 -0800 (PST)
Date: Thu, 24 Nov 2022 10:24:32 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003afb0305ee3b84f8@google.com>
From: syzbot <syzbot+1a30e391e6703aa6a5a6@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 77c51ba552a1
 Merge tag 'scsi-fixes' of git://git.kernel.or.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1737f0e5880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oyGtq-0000oq-3G
X-Mailman-Approved-At: Thu, 24 Nov 2022 18:29:10 +0000
Subject: [Linux-NTFS-Dev] [syzbot] WARNING in map_mft_record
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

HEAD commit:    77c51ba552a1 Merge tag 'scsi-fixes' of git://git.kernel.or..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1737f0e5880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6f9416d398342c83
dashboard link: https://syzkaller.appspot.com/bug?extid=1a30e391e6703aa6a5a6
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/a27a7d1ec024/disk-77c51ba5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e59c516a94e5/vmlinux-77c51ba5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/26c4aae28027/bzImage-77c51ba5.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1a30e391e6703aa6a5a6@syzkaller.appspotmail.com

------------[ cut here ]------------
DEBUG_LOCKS_WARN_ON(lock->magic != lock)
WARNING: CPU: 0 PID: 29635 at kernel/locking/mutex.c:582 __mutex_lock_common+0x1bb0/0x26e0 kernel/locking/mutex.c:582
Modules linked in:
CPU: 0 PID: 29635 Comm: syz-executor.4 Not tainted 6.1.0-rc5-syzkaller-00326-g77c51ba552a1 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
RIP: 0010:__mutex_lock_common+0x1bb0/0x26e0 kernel/locking/mutex.c:582
Code: 84 c0 0f 85 bd 08 00 00 83 3d 83 15 f9 03 00 0f 85 6f e5 ff ff 48 c7 c7 a0 98 ed 8a 48 c7 c6 20 99 ed 8a 31 c0 e8 40 81 b3 f6 <0f> 0b e9 53 e5 ff ff e8 a4 d5 61 f6 e9 5a fa ff ff 0f 0b e9 53 ef
RSP: 0018:ffffc9000cf8f7c0 EFLAGS: 00010246
RAX: de2c8b93a8915300 RBX: ffff888038b53b00 RCX: 0000000000040000
RDX: ffffc90006142000 RSI: 000000000001511b RDI: 000000000001511c
RBP: ffffc9000cf8f938 R08: ffffffff816e566d R09: ffffed1017304f1b
R10: ffffed1017304f1b R11: 1ffff11017304f1a R12: dffffc0000000000
R13: 1ffff920019f1f0c R14: 0000000000000000 R15: 0000000000000000
FS:  00007fae85b72700(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fa0b82d7000 CR3: 000000007c25d000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 __mutex_lock kernel/locking/mutex.c:747 [inline]
 mutex_lock_nested+0x17/0x20 kernel/locking/mutex.c:799
 map_mft_record+0x46/0x610 fs/ntfs/mft.c:154
 load_system_files+0x261b/0x4870 fs/ntfs/super.c:1855
 ntfs_fill_super+0x19a9/0x2bf0 fs/ntfs/super.c:2892
 mount_bdev+0x26c/0x3a0 fs/super.c:1401
 legacy_get_tree+0xea/0x180 fs/fs_context.c:610
 vfs_get_tree+0x88/0x270 fs/super.c:1531
 do_new_mount+0x289/0xad0 fs/namespace.c:3040
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fae84e8cb6a
Code: 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fae85b71f88 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 00007fae84e8cb6a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fae85b71fe0
RBP: 00007fae85b72020 R08: 00007fae85b72020 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000202 R12: 0000000020000000
R13: 0000000020000100 R14: 00007fae85b71fe0 R15: 0000000020077ea0
 </TASK>


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
