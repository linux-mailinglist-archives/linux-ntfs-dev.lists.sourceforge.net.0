Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E84CA49064D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 17 Jan 2022 11:56:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1n9Ph3-0002io-1T; Mon, 17 Jan 2022 10:56:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3TUDlYQkbAHgouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1n9Ox8-00080b-6O
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Jan 2022 10:09:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KLbvY9L3ttzibJE45m41SBRonuTsoEeOh0+FJZLCoxM=; b=Rhs2be2Sh8P+ZgqGCqTsxXpScX
 QdK90O+mFeBBbDxfbIa1Nq6Li6aCDNlOB10MP7XdUstQCIf+fSMC0y41JoUxlfpjdOMw16+buNkpr
 N92o5Fcxifr+CDjS+hN3mm/dsosXFRU9iS1Me9kh8WTsyxflT2LAY/TnKLzr9eVhta90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KLbvY9L3ttzibJE45m41SBRonuTsoEeOh0+FJZLCoxM=; b=k
 pq5XBWKFsgisWMS+Ffc5gaD1+I+Q6DaNYqZYw+ch5b1agzAL+N6i3wbSZ+VOdbMfLoqXuU843l1HU
 JlW8nXO09Gd9GmViZ08pg7/s+2V4ETkp3TzXpvu2NHFzk/IgQ+GhY5sc6Mmbi631LE+ptZ+/HhRzA
 nhO8bRYOYTouTIfw=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9Ox4-0004bu-Qo
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 17 Jan 2022 10:09:28 +0000
Received: by mail-io1-f69.google.com with SMTP id
 v190-20020a6bacc7000000b006046d11e61dso9339545ioe.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 Jan 2022 02:09:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=KLbvY9L3ttzibJE45m41SBRonuTsoEeOh0+FJZLCoxM=;
 b=ugbBH3in47T8PDDvtnWyjIA0q5eDqCnZU16T9Rr+G7K9AGBEboKmg+T1x5ptsOlGj0
 0+asZCL2SSirELnqW7WdOX3fL2Qz8GnWQBjkgriXBS+hQHhfoOfhbygMgI3kA9fxFWdQ
 lgmkuhtFuGBejgEDRtehGZ9BqBE52Uyql65kP73E/AYqDbqG5XlCVNdeHbNnvANuobEO
 fKE5Uxey3Tz5u8LNverf8nf9gbdAYtLTI4MNSXmnvyHmMLhafS6qWND3cyAiZkYAlmYx
 eCuv5k8697so6Q5+aS50jKEDD2nR1c4f2xfoNIwoS2kxNvw0/jkhIYefnKFEYuI2YQR6
 NlnA==
X-Gm-Message-State: AOAM530u35oqbRiMnCWWiKzYXTji2Ihxzu6Ftl05vVdV824xC6Nb57tn
 HpRv//RAN9fctSFZX7HWrkN65TUrwIsER4Q8nRGx4WjK5rmM
X-Google-Smtp-Source: ABdhPJw9FEiSBQcsjIvGibw6cAAcyU1qrTPaF/3tY0qusnwfT+66tD0acJJ0gLa5sk44h9LT8vBnIFTYzPgX+9FhLFWrWhFE5CRM
MIME-Version: 1.0
X-Received: by 2002:a5e:dc42:: with SMTP id s2mr9718201iop.149.1642414157830; 
 Mon, 17 Jan 2022 02:09:17 -0800 (PST)
Date: Mon, 17 Jan 2022 02:09:17 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000739eb405d5c458dc@google.com>
From: syzbot <syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: d0a231f01e5b
 Merge tag 'pci-v5.17-changes' of git://git.ke.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=11f83837b00000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1n9Ox4-0004bu-Qo
X-Mailman-Approved-At: Mon, 17 Jan 2022 10:56:54 +0000
Subject: [Linux-NTFS-Dev] [syzbot] kernel BUG in ntfs_read_inode_mount
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

HEAD commit:    d0a231f01e5b Merge tag 'pci-v5.17-changes' of git://git.ke..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11f83837b00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=986ed422f1741853
dashboard link: https://syzkaller.appspot.com/bug?extid=3c765c5248797356edaa
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at fs/ntfs/malloc.h:31!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 13085 Comm: syz-executor.4 Not tainted 5.16.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:__ntfs_malloc fs/ntfs/malloc.h:31 [inline]
RIP: 0010:ntfs_malloc_nofs fs/ntfs/malloc.h:52 [inline]
RIP: 0010:ntfs_read_inode_mount+0x1df3/0x2490 fs/ntfs/inode.c:1884
Code: 24 30 48 39 c3 0f 83 e2 01 00 00 e8 87 85 e5 fe 48 89 ef be 42 0c 00 00 e8 ba c9 21 ff 48 89 c5 e9 59 f4 ff ff e8 6d 85 e5 fe <0f> 0b 4c 8b 7c 24 30 e8 61 85 e5 fe 48 c7 c2 c0 b3 df 89 48 c7 c7
RSP: 0018:ffffc90003a37a80 EFLAGS: 00010212
RAX: 0000000000003063 RBX: 0000000000000000 RCX: ffffc9000fc69000
RDX: 0000000000040000 RSI: ffffffff82924583 RDI: 0000000000000003
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff82923991 R11: 0000000000000000 R12: ffff88807d0f4038
R13: ffff88807d0f4040 R14: ffff888071f5f6a0 R15: ffff88801e2ca000
FS:  00007f29a2160700(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555555c25708 CR3: 00000000793be000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 ntfs_fill_super+0xa2f/0x8440 fs/ntfs/super.c:2854
 mount_bdev+0x34d/0x410 fs/super.c:1370
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1500
 do_new_mount fs/namespace.c:2994 [inline]
 path_mount+0x1320/0x1fa0 fs/namespace.c:3324
 do_mount fs/namespace.c:3337 [inline]
 __do_sys_mount fs/namespace.c:3545 [inline]
 __se_sys_mount fs/namespace.c:3522 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3522
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f29a37ec51a
Code: 48 c7 c2 bc ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f29a215ff88 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 00007f29a37ec51a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007f29a215ffe0
RBP: 00007f29a2160020 R08: 00007f29a2160020 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000020000000
R13: 0000000020000100 R14: 00007f29a215ffe0 R15: 000000002007dd00
 </TASK>
Modules linked in:
---[ end trace 20309b23609f3571 ]---
RIP: 0010:__ntfs_malloc fs/ntfs/malloc.h:31 [inline]
RIP: 0010:ntfs_malloc_nofs fs/ntfs/malloc.h:52 [inline]
RIP: 0010:ntfs_read_inode_mount+0x1df3/0x2490 fs/ntfs/inode.c:1884
Code: 24 30 48 39 c3 0f 83 e2 01 00 00 e8 87 85 e5 fe 48 89 ef be 42 0c 00 00 e8 ba c9 21 ff 48 89 c5 e9 59 f4 ff ff e8 6d 85 e5 fe <0f> 0b 4c 8b 7c 24 30 e8 61 85 e5 fe 48 c7 c2 c0 b3 df 89 48 c7 c7
RSP: 0018:ffffc90003a37a80 EFLAGS: 00010212
RAX: 0000000000003063 RBX: 0000000000000000 RCX: ffffc9000fc69000
RDX: 0000000000040000 RSI: ffffffff82924583 RDI: 0000000000000003
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff82923991 R11: 0000000000000000 R12: ffff88807d0f4038
R13: ffff88807d0f4040 R14: ffff888071f5f6a0 R15: ffff88801e2ca000
FS:  00007f29a2160700(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f8b9a64ffc8 CR3: 00000000793be000 CR4: 0000000000350ee0


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
