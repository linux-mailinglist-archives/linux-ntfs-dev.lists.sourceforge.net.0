Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6407381E895
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 26 Dec 2023 18:01:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rIAoT-0004tr-Pi;
	Tue, 26 Dec 2023 17:01:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3VviKZQkbAKUXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rI9q9-0004Cl-1t for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 26 Dec 2023 15:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8vsIUG0DSqSbyGFh91iIrmWYYRdoWbKG7UR2q9Kt4xE=; b=LfyohNZFYhaQw8G1CGknoQd9+t
 +RI0SmR487j5sqagONLmdiGVkzz+bXsJ/x+NeLDYy5AcocbwfXTrBpq57eNKwZB0LrrhQrCi1hUd6
 cZqL/LcZfMl0NzFfhuAGDVSHNmgzXm8Umi3VOevWmxoodivjakOn1TtRhh61WYlXRbhQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8vsIUG0DSqSbyGFh91iIrmWYYRdoWbKG7UR2q9Kt4xE=; b=c
 Ys6ZEEtfr5k8xHjZlL/I9q4IyhKJsHQAmSHJKbNGdJs0tWOxecvIbRsCxItcqSJVJ1x6Kz3JorIqB
 quFABmSmfgL7hDbRhOSXLwLwps5baeWAXkHL/EyVER6JGZCzZZKzTzUfd5JH0vlCHLPVFOUd+WrgY
 NnI3bQ/LkTQyZecw=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rI9q5-0002pA-EE for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 26 Dec 2023 15:59:32 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-7b7aacf63b9so291016839f.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 26 Dec 2023 07:59:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703606359; x=1704211159;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8vsIUG0DSqSbyGFh91iIrmWYYRdoWbKG7UR2q9Kt4xE=;
 b=NGAUxvFPWd8UB7ig5rskW65yxtL78bmLXJUqm36xWdkHFakgrjuu/YGDUBmtK4LdMr
 7M9DUHW+Hg7UuCcveFOmqINNVBZZbAPkG28k5sOrBy8ql2bCG9xbiwXpmwRUkF6le8T6
 rCMvYLQ9vNSeqk4m82Hi5fZZOjJaPmIA1IjOrtqCIcIPq+s/y75UcXNPdvzIR6kNu/7u
 7kZ+e2RxxqFU2pt8XDWLk1bnLG1lGFhHejpAEcrDfJ2YWthbp4w/EaihkDznACZgf1ZR
 ZCpC/oS1iRUwrFqypfDPI1SlWDjZtcvbpewZ/w2cKMVAe5O3AkcaW7O4wGZrPVjqhHvd
 vojg==
X-Gm-Message-State: AOJu0YxnVg1P3jykaGSapiaDHhtbb0zARpBc6XGfQ9MCs/zyw1yJhP63
 mIXtONlG7vqEbbybLULB/nVTxpLorhAjzVSv7yjzBSdtGxDr
X-Google-Smtp-Source: AGHT+IGR/NI/D/x4HKxH8gstdJaDlHeF2nIUa2DWUqyGcEk4BfF4oIDSMTlL9QuzhyPvIEUR/UOf4NE53k6Gef7A3LXAGdgg1viz
MIME-Version: 1.0
X-Received: by 2002:a05:6638:4919:b0:46d:6d36:d86f with SMTP id
 cx25-20020a056638491900b0046d6d36d86fmr12144jab.3.1703606358828; Tue, 26 Dec
 2023 07:59:18 -0800 (PST)
Date: Tue, 26 Dec 2023 07:59:18 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000daec33060d6bc380@google.com>
From: syzbot <syzbot+82248056430fd49210e9@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
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
 syzbot found the following issue on: HEAD commit: 55cb5f43689d
 Merge tag 'trace-v6.7-rc6' of git://git.kerne.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=107247e1e80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rI9q5-0002pA-EE
X-Mailman-Approved-At: Tue, 26 Dec 2023 17:01:52 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] KMSAN: uninit-value in
 post_read_mst_fixup (2)
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

HEAD commit:    55cb5f43689d Merge tag 'trace-v6.7-rc6' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=107247e1e80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4a65fa9f077ead01
dashboard link: https://syzkaller.appspot.com/bug?extid=82248056430fd49210e9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ab88d88fa1d1/disk-55cb5f43.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/587fd1186192/vmlinux-55cb5f43.xz
kernel image: https://storage.googleapis.com/syzbot-assets/c7bbb5741191/bzImage-55cb5f43.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+82248056430fd49210e9@syzkaller.appspotmail.com

syz-executor.1: attempt to access beyond end of device
loop1: rw=0, sector=2040, nr_sectors = 8 limit=190
ntfs: (device loop1): ntfs_end_buffer_async_read(): Buffer I/O error, logical block 0xff.
=====================================================
BUG: KMSAN: uninit-value in post_read_mst_fixup+0xab8/0xb70 fs/ntfs/mst.c:39
 post_read_mst_fixup+0xab8/0xb70 fs/ntfs/mst.c:39
 ntfs_end_buffer_async_read+0xbb8/0x1a70 fs/ntfs/aops.c:133
 end_bio_bh_io_sync+0x130/0x1d0 fs/buffer.c:2775
 bio_endio+0xb17/0xb70 block/bio.c:1603
 submit_bio_noacct+0x230/0x2840 block/blk-core.c:816
 submit_bio+0x171/0x1c0 block/blk-core.c:842
 submit_bh_wbc+0x7de/0x850 fs/buffer.c:2821
 submit_bh+0x26/0x30 fs/buffer.c:2826
 ntfs_read_block fs/ntfs/aops.c:339 [inline]
 ntfs_read_folio+0x364b/0x3930 fs/ntfs/aops.c:430
 filemap_read_folio+0xce/0x370 mm/filemap.c:2323
 do_read_cache_folio+0x3b4/0x11e0 mm/filemap.c:3691
 do_read_cache_page mm/filemap.c:3757 [inline]
 read_cache_page+0x63/0x1c0 mm/filemap.c:3766
 read_mapping_page include/linux/pagemap.h:871 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 check_mft_mirror fs/ntfs/super.c:1117 [inline]
 load_system_files+0x985/0x97b0 fs/ntfs/super.c:1780
 ntfs_fill_super+0x307e/0x45d0 fs/ntfs/super.c:2900
 mount_bdev+0x3d7/0x560 fs/super.c:1650
 ntfs_mount+0x4d/0x60 fs/ntfs/super.c:3057
 legacy_get_tree+0x110/0x290 fs/fs_context.c:662
 vfs_get_tree+0xa5/0x520 fs/super.c:1771
 do_new_mount+0x68d/0x1550 fs/namespace.c:3337
 path_mount+0x73d/0x1f20 fs/namespace.c:3664
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x725/0x810 fs/namespace.c:3863
 __x64_sys_mount+0xe4/0x140 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x44/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

Uninit was created at:
 __alloc_pages+0x9a4/0xe00 mm/page_alloc.c:4591
 alloc_pages_mpol+0x62b/0x9d0 mm/mempolicy.c:2133
 alloc_pages mm/mempolicy.c:2204 [inline]
 folio_alloc+0x1da/0x380 mm/mempolicy.c:2211
 filemap_alloc_folio+0xa5/0x430 mm/filemap.c:974
 do_read_cache_folio+0x163/0x11e0 mm/filemap.c:3655
 do_read_cache_page mm/filemap.c:3757 [inline]
 read_cache_page+0x63/0x1c0 mm/filemap.c:3766
 read_mapping_page include/linux/pagemap.h:871 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 check_mft_mirror fs/ntfs/super.c:1117 [inline]
 load_system_files+0x985/0x97b0 fs/ntfs/super.c:1780
 ntfs_fill_super+0x307e/0x45d0 fs/ntfs/super.c:2900
 mount_bdev+0x3d7/0x560 fs/super.c:1650
 ntfs_mount+0x4d/0x60 fs/ntfs/super.c:3057
 legacy_get_tree+0x110/0x290 fs/fs_context.c:662
 vfs_get_tree+0xa5/0x520 fs/super.c:1771
 do_new_mount+0x68d/0x1550 fs/namespace.c:3337
 path_mount+0x73d/0x1f20 fs/namespace.c:3664
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x725/0x810 fs/namespace.c:3863
 __x64_sys_mount+0xe4/0x140 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x44/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

CPU: 0 PID: 6133 Comm: syz-executor.1 Not tainted 6.7.0-rc6-syzkaller-00022-g55cb5f43689d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/17/2023
=====================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
