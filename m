Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6944FA79B
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 14:21:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndA5f-0001K6-8A; Sat, 09 Apr 2022 12:21:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3J_NDYgkbADYkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1nZRSZ-0000XU-8J
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 30 Mar 2022 06:05:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YNuSM1PODEqalFJzLcSrx4eph4vu+0fT2E5lHOEHHKs=; b=iBaR5mHHUM/69k5WLAIAzBzxB+
 h+MW1snEnZ7/rVU4lhYS5r/U93sDHjzioKOF1dC/m6yhxXZ0P1uFar6cBrP7t4xJnx+u2NTxTJFw1
 00ilMs1U9X8ycTxWPkDLQcLEfBEuv/HqIRqnWA/cPXGCWz4ZQHfRCHhJjKS9o7mMcT0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YNuSM1PODEqalFJzLcSrx4eph4vu+0fT2E5lHOEHHKs=; b=M
 KHV12OX4JGZslm7KbAYvsSDo8eE3dgB2avdociE9XbeWdvFQqq8GCWs3tyqzvLFjq5hWrGuZ1xWVu
 c0NRmyMrRctgt19c5Vce4EKS63ciVre1FLl5xF2gRnqKQFo5tOv6Jy33sjeKuZDn1tiQ0jRLlV3DC
 /SysdxpjEFi3aXUc=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZRSW-0008BW-VL
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 30 Mar 2022 06:05:33 +0000
Received: by mail-io1-f69.google.com with SMTP id
 f7-20020a056602088700b00645ebbe277cso13808610ioz.22
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 29 Mar 2022 23:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=YNuSM1PODEqalFJzLcSrx4eph4vu+0fT2E5lHOEHHKs=;
 b=7iuxfBBIhljOZme4dlsyt+kZx9R3NC7CGTM3Ztru8796vQw4CAu0QiYNdsHtH5SYAc
 mA+nTt0Jj0ev522j8qzI+LVJ/3R5n43nn7Tv+djAtENssmdKZ7ywWBDU0l0Pc4vvRmDN
 14/mh28doz1BXFy/DAepbtqsyt5ZzAjh3AWHNnszV5/MWfEyun1BYHm79lx9cXSza+Ez
 3Ff9ZYhmcHtQujYV3MEowmaNy4Tzb6IRVixW/s1ezutqv4HZgFZrYoeCnIYr2Z5LFl5g
 +tTGEOTzbcr5JN+CO59wmekwZpsg69GsL3fS1bVVuII56Q5Q+44LvIOvdsN90uAxK5U8
 WqSA==
X-Gm-Message-State: AOAM532nt03BFSY+Axp08EBIZkPPZJQs5kPIuTEYcwkEhRkEr+SJVfTU
 OsrIYUTEM9j/3LHbTI/9CBj0sf6AEdQYuyVT6NTNKcHECpL8
X-Google-Smtp-Source: ABdhPJzt0zHtkNQii4VHDjAfMFoU62RMGTBtiJadxSDQuZfnX59pes6MD6Jly8A5SYrNGYvXadElHYh7rMdbiYjW3J9uOJewUpTJ
MIME-Version: 1.0
X-Received: by 2002:a02:950c:0:b0:323:918d:a98f with SMTP id
 y12-20020a02950c000000b00323918da98fmr1865702jah.190.1648620327317; Tue, 29
 Mar 2022 23:05:27 -0700 (PDT)
Date: Tue, 29 Mar 2022 23:05:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000fab48d05db6954a8@google.com>
From: syzbot <syzbot+29ca808a657244d4cd0e@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 34af78c4e616
 Merge tag 'iommu-updates-v5.18' of git://git... git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=10b483fb700000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1nZRSW-0008BW-VL
X-Mailman-Approved-At: Sat, 09 Apr 2022 12:21:14 +0000
Subject: [Linux-NTFS-Dev] [syzbot] kernel BUG in ntfs_may_write_mft_record
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

HEAD commit:    34af78c4e616 Merge tag 'iommu-updates-v5.18' of git://git...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=10b483fb700000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6190c85675271e4a
dashboard link: https://syzkaller.appspot.com/bug?extid=29ca808a657244d4cd0e
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+29ca808a657244d4cd0e@syzkaller.appspotmail.com

ntfs: (device loop4): ntfs_read_locked_inode(): Failed with error code -5.  Marking corrupt inode 0xb as bad.  Run chkdsk.
ntfs: (device loop4): load_system_files(): Failed to load $Extend.
ntfs: (device loop4): ntfs_fill_super(): Failed to load system files.
------------[ cut here ]------------
kernel BUG at fs/ntfs/mft.c:952!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 6627 Comm: syz-executor.4 Tainted: G        W         5.17.0-syzkaller-09727-g34af78c4e616 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:ntfs_may_write_mft_record+0x282/0x6d0 fs/ntfs/mft.c:952
Code: f0 5b 5d 41 5c 41 5d 41 5e 41 5f c3 e8 47 77 da fe 4c 89 ff e8 4f 2f 3b ff 49 39 c7 49 89 c4 0f 84 bf fe ff ff e8 2e 77 da fe <0f> 0b e8 27 77 da fe 4c 89 f0 48 ba 00 00 00 00 00 fc ff df 48 c1
RSP: 0018:ffffc900030bf1d8 EFLAGS: 00010246
RAX: 0000000000040000 RBX: 0000000000000000 RCX: ffffc9000bdf3000
RDX: 0000000000040000 RSI: ffffffff829e9ac2 RDI: 0000000000000001
RBP: 1ffff92000617e3f R08: 0000000000000000 R09: ffff88802c4283ab
R10: ffffed1005885075 R11: 0000000000000000 R12: 0000000000000000
R13: ffffc900030bf3b8 R14: ffff88802e298000 R15: ffff88802c428320
FS:  00007fcc6d589700(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000c00581b270 CR3: 0000000019ffa000 CR4: 0000000000350ee0
Call Trace:
 <TASK>
 ntfs_write_mst_block+0x1273/0x34c0 fs/ntfs/aops.c:1123
 ntfs_writepage+0x1cea/0x4d70 fs/ntfs/aops.c:1408
 __writepage+0x60/0x180 mm/page-writeback.c:2308
 write_cache_pages+0x79f/0x1a50 mm/page-writeback.c:2243
 generic_writepages mm/page-writeback.c:2334 [inline]
 generic_writepages mm/page-writeback.c:2323 [inline]
 do_writepages+0x2b4/0x690 mm/page-writeback.c:2354
 __writeback_single_inode+0x126/0x10d0 fs/fs-writeback.c:1581
 writeback_single_inode+0x2a5/0x460 fs/fs-writeback.c:1702
 write_inode_now+0x15c/0x1d0 fs/fs-writeback.c:2697
 iput_final fs/inode.c:1731 [inline]
 iput.part.0+0x460/0x820 fs/inode.c:1770
 iput+0x58/0x70 fs/inode.c:1760
 ntfs_fill_super+0x322e/0x9080 fs/ntfs/super.c:3003
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:3039 [inline]
 path_mount+0x1320/0x1fa0 fs/namespace.c:3369
 do_mount fs/namespace.c:3382 [inline]
 __do_sys_mount fs/namespace.c:3590 [inline]
 __se_sys_mount fs/namespace.c:3567 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3567
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7fcc6c48a57a
Code: 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fcc6d588f88 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 00007fcc6c48a57a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fcc6d588fe0
RBP: 00007fcc6d589020 R08: 00007fcc6d589020 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000020000000
R13: 0000000020000100 R14: 00007fcc6d588fe0 R15: 000000002007dc00
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_may_write_mft_record+0x282/0x6d0 fs/ntfs/mft.c:952
Code: f0 5b 5d 41 5c 41 5d 41 5e 41 5f c3 e8 47 77 da fe 4c 89 ff e8 4f 2f 3b ff 49 39 c7 49 89 c4 0f 84 bf fe ff ff e8 2e 77 da fe <0f> 0b e8 27 77 da fe 4c 89 f0 48 ba 00 00 00 00 00 fc ff df 48 c1
RSP: 0018:ffffc900030bf1d8 EFLAGS: 00010246
RAX: 0000000000040000 RBX: 0000000000000000 RCX: ffffc9000bdf3000
RDX: 0000000000040000 RSI: ffffffff829e9ac2 RDI: 0000000000000001
RBP: 1ffff92000617e3f R08: 0000000000000000 R09: ffff88802c4283ab
R10: ffffed1005885075 R11: 0000000000000000 R12: 0000000000000000
R13: ffffc900030bf3b8 R14: ffff88802e298000 R15: ffff88802c428320
FS:  00007fcc6d589700(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f10cf5bbfc0 CR3: 0000000019ffa000 CR4: 0000000000350ef0


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
