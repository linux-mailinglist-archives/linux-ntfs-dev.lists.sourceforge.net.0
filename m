Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D1772B2D4
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 11 Jun 2023 18:20:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1q8NoE-0007Z9-6P;
	Sun, 11 Jun 2023 16:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3mVSFZAkbAIIy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q8DAX-0004kj-6s for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 11 Jun 2023 04:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=un7th58fEnBwC+OFu0f9V7Zu6p9CM5Mc2hn3wVtyZWY=; b=X+WIYttS3qJLS37BnhgEoCv9GJ
 VIFtzYOHHG+bkWMmnIdxsuYf0O+f6pMBSqB58McBC5H2sGIe4As4nocVvDlTnoy2cgsnm3Pc6OL2N
 EF2MyrZR4RzubvmKYEVRHLu1ULc5ylH+l6NJvT8ShyVJirHglsZ+HlJ8ehAO0UPX+Ys8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=un7th58fEnBwC+OFu0f9V7Zu6p9CM5Mc2hn3wVtyZWY=; b=R
 m2utRhgZHbm9v7Lr3f9VlLD1Wv3rzZMVVlZ3JqfXNMFRiKYW6f7PWwaZ0w1vKvgyJ/DFY3dzeUkT/
 CsSCk72MrFrAh/1rsmgUDc7xCJ3HnG5rNLN75xi/H1OsgA3bT6lhwETMg1yG3cdre7z+/ypUUz7C0
 kcH6y2xoI3gi+Xl8=;
Received: from mail-io1-f77.google.com ([209.85.166.77])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q8DAU-000405-OI for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 11 Jun 2023 04:59:13 +0000
Received: by mail-io1-f77.google.com with SMTP id
 ca18e2360f4ac-77a1f4e92cdso366551439f.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 10 Jun 2023 21:59:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686459545; x=1689051545;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=un7th58fEnBwC+OFu0f9V7Zu6p9CM5Mc2hn3wVtyZWY=;
 b=LCfxlZ8nSm47SybBBgtEhwbpk72XN5riJhuZpHKy1hEu8KxPxzbQbAe7bj3Du+G8v6
 VD3IcGvsTc9eGXceixLDRa5bRlLv3tHHgMP6hZfRmkALIsHzLuPULal+/eTu4FF1S85b
 RLkcurdarv9eOFt5NUUJ61SCiObKefClt/P8vPNdxdRrJlOVfM6YXbagH97q2TqgWEFd
 naTDx73fEHrSxY2KhCC8uc1QxJ0c1Tts7vZv45k279MahJ53gIg079DINyMW0as+dI6y
 ELdaBHO+8vCmKml3Kq9yorcp2q/GG0UKazs/8k33aKDAdKFYg0WpIUKIXYf/v76znO1k
 4KVw==
X-Gm-Message-State: AC+VfDxuWabaVUdsW+1GHLGeuqsec7esnMoPnJhYW5TboV0ca/Fgac6t
 sd7YIvv5XTBsC9+U4e9hjxJLDOn2cl2fWrwaztYGpCjfrdkS
X-Google-Smtp-Source: ACHHUZ4z5LBQRYRbj85KagIyc+Fgg2IO8mme8WldLcU/jJMr+sqKtwnCTB1PWB8A0dIDEXq/MdjmHpYBTrPizco5CzIYlOtWt2jK
MIME-Version: 1.0
X-Received: by 2002:a02:9444:0:b0:41f:6a82:fc22 with SMTP id
 a62-20020a029444000000b0041f6a82fc22mr2457344jai.3.1686459545188; Sat, 10 Jun
 2023 21:59:05 -0700 (PDT)
Date: Sat, 10 Jun 2023 21:59:05 -0700
In-Reply-To: <0000000000002f18b905f6026455@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001e807e05fdd37619@google.com>
From: syzbot <syzbot+c601e38d15ce8253186a@syzkaller.appspotmail.com>
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
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: d8b213732169 Merge branch 'for-next/core', remote-tracking..
 git tree: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.77 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.77 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1q8DAU-000405-OI
X-Mailman-Approved-At: Sun, 11 Jun 2023 16:20:52 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] UBSAN: shift-out-of-bounds in
 ntfs_read_inode_mount
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

HEAD commit:    d8b213732169 Merge branch 'for-next/core', remote-tracking..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12825c53280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=bd4213541e5ab26f
dashboard link: https://syzkaller.appspot.com/bug?extid=c601e38d15ce8253186a
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=145b7343280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17d9d453280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3d15de852c90/disk-d8b21373.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ca6234ed6efc/vmlinux-d8b21373.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0fc706ec33bb/Image-d8b21373.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/1a154c912743/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c601e38d15ce8253186a@syzkaller.appspotmail.com

ntfs: (device loop0): parse_options(): Option utf8 is no longer supported, using option nls=utf8. Please use option nls=utf8 in the future and make sure utf8 is compiled either as a module or into the kernel.
================================================================================
UBSAN: shift-out-of-bounds in fs/ntfs/inode.c:1080:43
shift exponent 267 is too large for 32-bit type 'unsigned int'
CPU: 1 PID: 5969 Comm: syz-executor382 Not tainted 6.4.0-rc5-syzkaller-gd8b213732169 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
Call trace:
 dump_backtrace+0x1b8/0x1e4 arch/arm64/kernel/stacktrace.c:233
 show_stack+0x2c/0x44 arch/arm64/kernel/stacktrace.c:240
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd0/0x124 lib/dump_stack.c:106
 dump_stack+0x1c/0x28 lib/dump_stack.c:113
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x2f4/0x36c lib/ubsan.c:387
 ntfs_read_locked_inode+0x35b4/0x38e0 fs/ntfs/inode.c:1080
 ntfs_read_inode_mount+0xbb0/0x2044 fs/ntfs/inode.c:2098
 ntfs_fill_super+0x13b4/0x2314 fs/ntfs/super.c:2863
 mount_bdev+0x274/0x370 fs/super.c:1380
 ntfs_mount+0x44/0x58 fs/ntfs/super.c:3057
 legacy_get_tree+0xd4/0x16c fs/fs_context.c:610
 vfs_get_tree+0x90/0x274 fs/super.c:1510
 do_new_mount+0x25c/0x8c4 fs/namespace.c:3039
 path_mount+0x590/0xe04 fs/namespace.c:3369
 do_mount fs/namespace.c:3382 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __arm64_sys_mount+0x45c/0x594 fs/namespace.c:3568
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x98/0x2c0 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0x138/0x244 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x64/0x198 arch/arm64/kernel/syscall.c:191
 el0_svc+0x4c/0x160 arch/arm64/kernel/entry-common.c:647
 el0t_64_sync_handler+0x84/0xfc arch/arm64/kernel/entry-common.c:665
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
================================================================================
================================================================================
UBSAN: shift-out-of-bounds in fs/ntfs/inode.c:1089:11
shift exponent 255 is too large for 32-bit type 'unsigned int'
CPU: 1 PID: 5969 Comm: syz-executor382 Not tainted 6.4.0-rc5-syzkaller-gd8b213732169 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/25/2023
Call trace:
 dump_backtrace+0x1b8/0x1e4 arch/arm64/kernel/stacktrace.c:233
 show_stack+0x2c/0x44 arch/arm64/kernel/stacktrace.c:240
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd0/0x124 lib/dump_stack.c:106
 dump_stack+0x1c/0x28 lib/dump_stack.c:113
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x2f4/0x36c lib/ubsan.c:387
 ntfs_read_locked_inode+0x35d0/0x38e0 fs/ntfs/inode.c:1089
 ntfs_read_inode_mount+0xbb0/0x2044 fs/ntfs/inode.c:2098
 ntfs_fill_super+0x13b4/0x2314 fs/ntfs/super.c:2863
 mount_bdev+0x274/0x370 fs/super.c:1380
 ntfs_mount+0x44/0x58 fs/ntfs/super.c:3057
 legacy_get_tree+0xd4/0x16c fs/fs_context.c:610
 vfs_get_tree+0x90/0x274 fs/super.c:1510
 do_new_mount+0x25c/0x8c4 fs/namespace.c:3039
 path_mount+0x590/0xe04 fs/namespace.c:3369
 do_mount fs/namespace.c:3382 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __arm64_sys_mount+0x45c/0x594 fs/namespace.c:3568
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x98/0x2c0 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0x138/0x244 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x64/0x198 arch/arm64/kernel/syscall.c:191
 el0_svc+0x4c/0x160 arch/arm64/kernel/entry-common.c:647
 el0t_64_sync_handler+0x84/0xfc arch/arm64/kernel/entry-common.c:665
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591
================================================================================
ntfs: (device loop0): check_mft_mirror(): $MFT and $MFTMirr (record 0) do not match.  Run ntfsfix or chkdsk.
ntfs: (device loop0): load_system_files(): $MFTMirr does not match $MFT.  Mounting read-only.  Run ntfsfix and/or chkdsk.
ntfs: (device loop0): map_mft_record(): Failed with error code 13.
ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -13.  Marking corrupt inode 0xa as bad.  Run chkdsk.
ntfs: (device loop0): load_and_init_upcase(): Failed to load $UpCase from the volume. Using default.
ntfs: (device loop0): map_mft_record(): Failed with error code 13.
ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -13.  Marking corrupt inode 0x4 as bad.  Run chkdsk.
ntfs: (device loop0): load_and_init_attrdef(): Failed to initialize attribute definition table.
ntfs: (device loop0): ntfs_fill_super(): Failed to load system files.


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
