Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7A06FF40F
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 11 May 2023 16:25:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1px7Es-00034r-JD;
	Thu, 11 May 2023 14:25:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3BO9cZAkbAH8v12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1px6Rn-0000D2-EL for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 11 May 2023 13:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YEtKPqXPc8KwjQyplWNpVUtXydk8COJxQKJbi5Nsyvo=; b=AaDiUSL9gSCnp26yEIl/4fifMX
 91621fcgOGRIECy6Oc+/1Wfdaac+2mqyXci+cEdKgxWMxcxHk5ybkwRNBHiYv65e8HAJJV4CeQp/u
 48X9b0tUHYRWIqQ2iHXkXISPOGXjvQbKqM3FG2P7weO/LZVwVGZiDbkGlz6SereFLQnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YEtKPqXPc8KwjQyplWNpVUtXydk8COJxQKJbi5Nsyvo=; b=B
 eUBMtXVB7OOmF0d4xt1l1M3keAGC7sKbakAjxMZgpg2qe3KQflvhvzHMeAUWfydLNJmfpXcCZ/ham
 cJgdYz90TbYRzXr0I04FaoHLPExr45Wt4OeELCFW5Rm3WcpSCWDLk75zzVnKJssZNDDffCzsv2Gtu
 h5EPO14QQgf1g4tQ=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1px6Rl-0003EH-Pm for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 11 May 2023 13:35:06 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-333d90b1a43so102024055ab.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 11 May 2023 06:35:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683812100; x=1686404100;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YEtKPqXPc8KwjQyplWNpVUtXydk8COJxQKJbi5Nsyvo=;
 b=h5ZPov9uuxzh8Y954wjsRDcB/keWhnYa0RLTddLlArjvdHvvalwpx0oqJ2mj7dAuzs
 uOsm/BPYbabhVvlIFdwJEQymZDOXVVte3hReATBTTqKtAiIuM0oeFSbChS75Jk0BQM9/
 D+ODsaKq+HvSbTfuxwIA4p7UfAEmUbKbd9hNzPflRwE33CvAGuaVkOk4KjsfUWIMTX13
 WspEIc+RQXSvsRJnPs3cjN+lxvjBKFTlAsUKZrwSmobcIFhtaVhx7WjfkTpUPvHCGVng
 Dm4WTZvbZUECo1bt0nYTyRCvRXku3dsFBdvBOo2NwAgZQ/xkpj2dlk3TB5i9MwRUVWOD
 hBTA==
X-Gm-Message-State: AC+VfDxVHkyO1/vsHzHi8gePp/S9zbCEv/WMJ0ckt5sdtGRZxEywlAhQ
 K+OsWRQVwmpKZ3tOp6W3Ie3iqIyU2HJaCXoCw+oUhyEh7/5R
X-Google-Smtp-Source: ACHHUZ6qcDTWku63SrxWIveG39qSJbRmc55sb0oQ/h2PLZ3REUH9VGDGcu3/x5ZFjx4lgB+7xhDtRaP1O9WIbEodeikrbJCfID09
MIME-Version: 1.0
X-Received: by 2002:a92:c686:0:b0:317:9096:e80f with SMTP id
 o6-20020a92c686000000b003179096e80fmr11324593ilg.4.1683812100231; Thu, 11 May
 2023 06:35:00 -0700 (PDT)
Date: Thu, 11 May 2023 06:35:00 -0700
In-Reply-To: <000000000000602c0e05f55d793c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001a583a05fb6b0e76@google.com>
From: syzbot <syzbot+d62e6bd2a2d05103d105@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: d295b66a7b66 Merge tag 'fsnotify_for_v6.4-rc2' of git://gi..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1438109e280000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1px6Rl-0003EH-Pm
X-Mailman-Approved-At: Thu, 11 May 2023 14:25:49 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in ntfs_iget
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

HEAD commit:    d295b66a7b66 Merge tag 'fsnotify_for_v6.4-rc2' of git://gi..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1438109e280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=38526bf24c8d961b
dashboard link: https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16ba9dec280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12ef95fa280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/95f1878df2f4/disk-d295b66a.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/6d18d65ddcb5/vmlinux-d295b66a.xz
kernel image: https://storage.googleapis.com/syzbot-assets/6a59b1fdff8e/bzImage-d295b66a.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/eee641006b52/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d62e6bd2a2d05103d105@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 190
ntfs: (device loop0): is_boot_sector_ntfs(): Invalid boot sector checksum.
ntfs: (device loop0): map_mft_record_page(): Mft record 0x1 is corrupt.  Run chkdsk.
ntfs: (device loop0): map_mft_record(): Failed with error code 5.
ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -5.  Marking corrupt inode 0x1 as bad.  Run chkdsk.
ntfs: (device loop0): load_system_files(): Failed to load $MFTMirr.  Mounting read-only.  Run ntfsfix and/or chkdsk.
------------[ cut here ]------------
kernel BUG at fs/ntfs/malloc.h:31!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 4993 Comm: syz-executor320 Not tainted 6.4.0-rc1-syzkaller-00025-gd295b66a7b66 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/14/2023
RIP: 0010:__ntfs_malloc fs/ntfs/malloc.h:31 [inline]
RIP: 0010:ntfs_malloc_nofs+0xfd/0x100 fs/ntfs/malloc.h:52
Code: 17 e8 d7 1e c7 fe 48 89 df be 42 0c 00 00 5b 41 5e 41 5f e9 a5 f2 10 ff e8 c0 1e c7 fe 31 c0 5b 41 5e 41 5f c3 e8 b3 1e c7 fe <0f> 0b 90 66 0f 1f 00 55 41 57 41 56 41 55 41 54 53 49 89 fe 49 bc
RSP: 0018:ffffc90003a3f818 EFLAGS: 00010293
RAX: ffffffff82c4488d RBX: 0000000000000000 RCX: ffff88802476bb80
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffff888073a05118 R08: ffffffff82c447bd R09: ffffed100e9c5323
R10: 0000000000000000 R11: dffffc0000000001 R12: dffffc0000000000
R13: ffff888074e29be0 R14: ffff888073a05147 R15: dffffc0000000000
FS:  000055555752e300(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f02336e6000 CR3: 000000007a170000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 ntfs_read_locked_inode+0x1fd5/0x49c0 fs/ntfs/inode.c:703
 ntfs_iget+0x113/0x190 fs/ntfs/inode.c:177
 load_and_init_upcase fs/ntfs/super.c:1663 [inline]
 load_system_files+0x151c/0x4840 fs/ntfs/super.c:1818
 ntfs_fill_super+0x19b3/0x2bd0 fs/ntfs/super.c:2900
 mount_bdev+0x274/0x3a0 fs/super.c:1380
 legacy_get_tree+0xef/0x190 fs/fs_context.c:610
 vfs_get_tree+0x8c/0x270 fs/super.c:1510
 do_new_mount+0x28f/0xae0 fs/namespace.c:3039
 do_mount fs/namespace.c:3382 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f023bb1cafa
Code: 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fffebbdb6c8 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007f023bb1cafa
RDX: 000000002001f1c0 RSI: 000000002001f200 RDI: 00007fffebbdb6e0
RBP: 00007fffebbdb6e0 R08: 00007fffebbdb720 R09: 0000000000000987
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000000000004
R13: 000055555752e2c0 R14: 0000000000000000 R15: 00007fffebbdb720
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__ntfs_malloc fs/ntfs/malloc.h:31 [inline]
RIP: 0010:ntfs_malloc_nofs+0xfd/0x100 fs/ntfs/malloc.h:52
Code: 17 e8 d7 1e c7 fe 48 89 df be 42 0c 00 00 5b 41 5e 41 5f e9 a5 f2 10 ff e8 c0 1e c7 fe 31 c0 5b 41 5e 41 5f c3 e8 b3 1e c7 fe <0f> 0b 90 66 0f 1f 00 55 41 57 41 56 41 55 41 54 53 49 89 fe 49 bc
RSP: 0018:ffffc90003a3f818 EFLAGS: 00010293
RAX: ffffffff82c4488d RBX: 0000000000000000 RCX: ffff88802476bb80
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffff888073a05118 R08: ffffffff82c447bd R09: ffffed100e9c5323
R10: 0000000000000000 R11: dffffc0000000001 R12: dffffc0000000000
R13: ffff888074e29be0 R14: ffff888073a05147 R15: dffffc0000000000
FS:  000055555752e300(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f02336e6000 CR3: 000000007a170000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
