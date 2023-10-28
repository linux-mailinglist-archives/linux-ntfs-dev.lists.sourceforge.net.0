Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 052347DA84F
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 28 Oct 2023 19:51:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qwnTS-0002Nu-Ff;
	Sat, 28 Oct 2023 17:51:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <32TM9ZQkbAGYWcdOEPPIVETTMH.KSSKPIYWIVGSRXIRX.GSQ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qwlzG-0006xQ-6c for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 28 Oct 2023 16:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o0hEhIscQ/Xsk7B5flULZwRcurSz+Ug42O5a0ySLsTs=; b=UzH8c1vPLUc6ctiBKo9QE8Utpl
 Ua7R9yAfUZiHMK3BKZQIlUi6fS83873POboSBuOPzAtQHfRK3rrXsJM0gCu992qgGpBccgpg3eQbc
 hRxTKYwBRmSlKWBPefqX3hc9ajlDr2mrR2X1WmRV0EJzP7OJa/8pKlEWLPePVBStXNN8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=o0hEhIscQ/Xsk7B5flULZwRcurSz+Ug42O5a0ySLsTs=; b=W
 XWXOj77rc5K5We4MjoICHf0gZfTpB+e7sjSl+ZDq6k5XurHqrecZ2RxwQU24w/zHKDCLG75eD0ttG
 6vOlgMTcDYPlrcD0+Lw/8ZYaoH0ZhVAVgrdT+mdvINSwRQT1Cjf0lFHJpvWDLBDFCz3erhHQz0pXy
 6YPgIy2s7vot/7Uo=;
Received: from mail-oi1-f207.google.com ([209.85.167.207])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qwlzD-00CYQ1-Pq for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 28 Oct 2023 16:16:32 +0000
Received: by mail-oi1-f207.google.com with SMTP id
 5614622812f47-3af603daa10so4723055b6e.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 28 Oct 2023 09:16:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698509785; x=1699114585;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=o0hEhIscQ/Xsk7B5flULZwRcurSz+Ug42O5a0ySLsTs=;
 b=ZfyKBAO0Xp/TPvC9ZhxnWraM7KqHOtMY4tCbWrQ7myXtL7TUkvKehg+3F1R6z2TdXi
 vf+YbFqZBRXU14D6aAXsIzXedru0G+hsTosu1Ycp7+XT1j8eUuRrLsDmJMku6JwlcQNB
 5gF006xblFv0dxXXKyFc8x5ng3pqCc+xGZ9EvgLq+04wQRj0STvlj639AmOe+j78GaGO
 OYEAfx5h43DAOvHgOa2Q+ticX8iQKv1XhA2ylSsVj6d2zKLVAA/ILPIuq0ipk7gJ7yO1
 Hikn4d+wID47iOhSVU61vn3ClEHNt8SG4xIEQAfIOycj8f8Wr162Ig2gCIEVzKwqOdWb
 dcsg==
X-Gm-Message-State: AOJu0YzC+IW+48nJTniwIT2FubXks0AXp4a4O9ln9b4bELeTTLcm6aQK
 G6OAVNi2zgM0Wj214BrSIEi5IPTV4xZUpU/MJy+W+gDRujAc
X-Google-Smtp-Source: AGHT+IFL81W1XUVEGZhOjwNRi7Ek/RKHCHPzyX22MBYry7pjh83EVJJZJcgUxHIxLbCA6fuSvi0SvR9ap2iV4nKogIs5BO3nnANq
MIME-Version: 1.0
X-Received: by 2002:a05:6808:1cc:b0:3a4:1e93:8988 with SMTP id
 x12-20020a05680801cc00b003a41e938988mr1649632oic.10.1698509785426; Sat, 28
 Oct 2023 09:16:25 -0700 (PDT)
Date: Sat, 28 Oct 2023 09:16:25 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000068704f0608c92013@google.com>
From: syzbot <syzbot+05958f1fac9df0497492@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: d88520ad73b7
 Merge tag 'pull-nfsd-fix' of git://git.kernel.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=16225fcd680000 kernel
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
 [209.85.167.207 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.207 listed in list.dnswl.org]
X-Headers-End: 1qwlzD-00CYQ1-Pq
X-Mailman-Approved-At: Sat, 28 Oct 2023 17:51:48 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in
 ntfs_prepare_pages_for_non_resident_write (2)
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

HEAD commit:    d88520ad73b7 Merge tag 'pull-nfsd-fix' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=16225fcd680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=9ee601744db6e780
dashboard link: https://syzkaller.appspot.com/bug?extid=05958f1fac9df0497492
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ea9c20c54c8e/disk-d88520ad.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/452b35a0a731/vmlinux-d88520ad.xz
kernel image: https://storage.googleapis.com/syzbot-assets/83daea53f9cf/bzImage-d88520ad.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+05958f1fac9df0497492@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at fs/ntfs/file.c:951!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 23700 Comm: syz-executor.4 Not tainted 6.6.0-rc7-syzkaller-00018-gd88520ad73b7 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/06/2023
RIP: 0010:ntfs_prepare_pages_for_non_resident_write+0x42fd/0x5b90 fs/ntfs/file.c:951
Code: 85 12 02 00 00 48 8b 44 24 08 bf ff 0f 00 00 8b 58 2c 89 de e8 54 22 cf fe 81 fb ff 0f 00 00 0f 86 1a e5 ff ff e8 d3 26 cf fe <0f> 0b e8 cc 26 cf fe 0f b6 9c 24 50 01 00 00 31 ff 89 de e8 eb 21
RSP: 0018:ffffc9000356f878 EFLAGS: 00010246
RAX: 0000000000040000 RBX: fffffffffffffffd RCX: ffffc9000bff3000
RDX: 0000000000040000 RSI: ffffffff82b8b35d RDI: 0000000000000007
RBP: 0000000000000101 R08: 0000000000000007 R09: ffffffffffffffff
R10: fffffffffffffffd R11: ffffffff81dd8d15 R12: ffff88806a284018
R13: 0000000000000000 R14: dffffc0000000000 R15: 0000000000040000
FS:  00007ff492baa6c0(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000001b2fd34000 CR3: 0000000079e0c000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 ntfs_perform_write.isra.0+0x63c/0x3170 fs/ntfs/file.c:1844
 ntfs_file_write_iter+0xbff/0x1e00 fs/ntfs/file.c:1916
 call_write_iter include/linux/fs.h:1956 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x650/0xe40 fs/read_write.c:584
 ksys_write+0x12f/0x250 fs/read_write.c:637
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7ff491e7cae9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 e1 20 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ff492baa0c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 00007ff491f9c120 RCX: 00007ff491e7cae9
RDX: 000000000000000b RSI: 00000000200007c0 RDI: 0000000000000004
RBP: 00007ff491ec847a R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 000000000000006e R14: 00007ff491f9c120 R15: 00007ffd5eee77b8
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_prepare_pages_for_non_resident_write+0x42fd/0x5b90 fs/ntfs/file.c:951
Code: 85 12 02 00 00 48 8b 44 24 08 bf ff 0f 00 00 8b 58 2c 89 de e8 54 22 cf fe 81 fb ff 0f 00 00 0f 86 1a e5 ff ff e8 d3 26 cf fe <0f> 0b e8 cc 26 cf fe 0f b6 9c 24 50 01 00 00 31 ff 89 de e8 eb 21
RSP: 0018:ffffc9000356f878 EFLAGS: 00010246
RAX: 0000000000040000 RBX: fffffffffffffffd RCX: ffffc9000bff3000
RDX: 0000000000040000 RSI: ffffffff82b8b35d RDI: 0000000000000007
RBP: 0000000000000101 R08: 0000000000000007 R09: ffffffffffffffff
R10: fffffffffffffffd R11: ffffffff81dd8d15 R12: ffff88806a284018
R13: 0000000000000000 R14: dffffc0000000000 R15: 0000000000040000
FS:  00007ff492baa6c0(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020821000 CR3: 0000000079e0c000 CR4: 0000000000350ee0


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite bug's subsystems, reply with:
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
