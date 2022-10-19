Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C995F603DF9
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 19 Oct 2022 11:08:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ol545-0005mP-2Y;
	Wed, 19 Oct 2022 09:08:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3SotPYwkbAL8x34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ol1eL-00044z-UW for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 19 Oct 2022 05:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X9NUwqpIdBttTPj8K9pQIi/NNyR2At6DBFKWl3s/Tb4=; b=fHuDWqNbO3HQsQD0WzPziysQ7J
 0OdGhyvLdyT8BRs7n09zQTZjJbgiRR6Uss9KbKK7ireCtcf9kE7myVlMv4iFKYcVbJebDuFYRXM0R
 KteQ04HevSU87os4iOuNvOvc0C9BLDNQxKQecAJcVlU0XoRJuZequpOIHhA5IX9IvWFc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X9NUwqpIdBttTPj8K9pQIi/NNyR2At6DBFKWl3s/Tb4=; b=O
 UJKcluEg5sYybmDsevPHH3xiWDf2ws8B95g1dkEdXq+OlXMVmkQWiL1U626YDBSNvU8U2oONlbDIt
 3QsVvEr8rg9BJGmXAlroOsgqUsqs36y9tHeYAPQvm5f8F2VAxzvCrFOCVFeQ5aTvSvG4bbXrPvTRh
 ViZlmhnuwv33QWmU=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ol1eK-009GC1-5N for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 19 Oct 2022 05:29:53 +0000
Received: by mail-io1-f72.google.com with SMTP id
 y4-20020a5e9204000000b006bbffbc3d27so11940812iop.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 18 Oct 2022 22:29:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=X9NUwqpIdBttTPj8K9pQIi/NNyR2At6DBFKWl3s/Tb4=;
 b=p9Hyr/ayaUCbzsEYrIvMEm/7VDESwh2kCO/ZyjuHj8WN29JnsgawPZtjyewQQOgRf3
 /H0ofcdMklNG1T51pvIzpec3OlWDnUXu5nbtRJKTSRpwg/rORgHmuQzbwJYvOdMOemp2
 3raFJ18LtgMeg7BrRb3iH9fmMlPBNtpOMNGDhE4kTdTi0nobV6BWHfUKMeRE+KWbWiOI
 JvV1RBL0RZt8hzCm/bmB4MGehu/sOx2jIBSX580mJXeDNhNxERIx1LAKBbw+eQaoBqrs
 24QRy+KX+RBJo4dd59APkypIE9U8Wd22RxSK93kpNF3ZjhYRUHBy8cIXm81n0Kof1W57
 iUrg==
X-Gm-Message-State: ACrzQf0ocY10L8W+bat5No0LUPFKvtJoQEP7uBctjCfRuyqq35x0zczk
 JQ/TOpAii+SGggVUyT6L5ZlQMqjMAIqVO0gFKColQfSPeBdL
X-Google-Smtp-Source: AMsMyM5xzBR1WblA0XzGk+3WTikONBzPm7AlPYDrKdBgMKN98Nkpd06xpF/KTihpS3p5Z9Bjx1gloSY98RDuo80aSh3NH5cPiKFm
MIME-Version: 1.0
X-Received: by 2002:a92:c26e:0:b0:2fc:1a4f:bfb with SMTP id
 h14-20020a92c26e000000b002fc1a4f0bfbmr4003527ild.58.1666157386556; Tue, 18
 Oct 2022 22:29:46 -0700 (PDT)
Date: Tue, 18 Oct 2022 22:29:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002a6cba05eb5c7fbd@google.com>
From: syzbot <syzbot+cb1fdea540b46f0ce394@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: bbed346d5a96
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1ol1eK-009GC1-5N
X-Mailman-Approved-At: Wed, 19 Oct 2022 09:08:39 +0000
Subject: [Linux-NTFS-Dev] [syzbot] possible deadlock in map_mft_record
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

HEAD commit:    bbed346d5a96 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=17c6e19a880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3a4a45d2d827c1e
dashboard link: https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/e8e91bc79312/disk-bbed346d.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c1cb3fb3b77e/vmlinux-bbed346d.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cb1fdea540b46f0ce394@syzkaller.appspotmail.com

ntfs: (device loop3): is_boot_sector_ntfs(): Invalid boot sector checksum.
ntfs: volume version 3.1.
======================================================
WARNING: possible circular locking dependency detected
6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0 Not tainted
------------------------------------------------------
syz-executor.3/9828 is trying to acquire lock:
ffff00010ca1f5d0 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x40/0xfc fs/ntfs/mft.c:154

but task is already holding lock:
ffff00010ca1f540 (&rl->lock){++++}-{3:3}, at: ntfs_truncate+0xa8/0xf6c fs/ntfs/inode.c:2371

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&rl->lock){++++}-{3:3}:
       down_read+0x5c/0x78 kernel/locking/rwsem.c:1499
       ntfs_read_block+0x2d0/0x1110 fs/ntfs/aops.c:248
       ntfs_read_folio+0x594/0x758 fs/ntfs/aops.c:436
       filemap_read_folio+0x68/0x33c mm/filemap.c:2394
       do_read_cache_folio+0x1c8/0x588 mm/filemap.c:3519
       do_read_cache_page mm/filemap.c:3561 [inline]
       read_cache_page+0x40/0x178 mm/filemap.c:3570
       read_mapping_page include/linux/pagemap.h:756 [inline]
       ntfs_map_page fs/ntfs/aops.h:75 [inline]
       ntfs_sync_mft_mirror+0xb4/0x109c fs/ntfs/mft.c:480
       write_mft_record_nolock+0x814/0xc70 fs/ntfs/mft.c:787
       write_mft_record+0xe4/0x230 fs/ntfs/mft.h:95
       __ntfs_write_inode+0x32c/0x554 fs/ntfs/inode.c:3043
       ntfs_write_inode+0x3c/0x4c fs/ntfs/super.c:2655
       write_inode fs/fs-writeback.c:1440 [inline]
       __writeback_single_inode+0x240/0x2e4 fs/fs-writeback.c:1652
       writeback_sb_inodes+0x3e4/0x85c fs/fs-writeback.c:1865
       wb_writeback+0x198/0x328 fs/fs-writeback.c:2039
       wb_do_writeback+0xc8/0x384 fs/fs-writeback.c:2182
       wb_workfn+0x70/0x15c fs/fs-writeback.c:2222
       process_one_work+0x2d8/0x504 kernel/workqueue.c:2289
       worker_thread+0x340/0x610 kernel/workqueue.c:2436
       kthread+0x12c/0x158 kernel/kthread.c:376
       ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:860

-> #0 (&ni->mrec_lock){+.+.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3095 [inline]
       check_prevs_add kernel/locking/lockdep.c:3214 [inline]
       validate_chain kernel/locking/lockdep.c:3829 [inline]
       __lock_acquire+0x1530/0x30a4 kernel/locking/lockdep.c:5053
       lock_acquire+0x100/0x1f8 kernel/locking/lockdep.c:5666
       __mutex_lock_common+0xd4/0xca8 kernel/locking/mutex.c:603
       __mutex_lock kernel/locking/mutex.c:747 [inline]
       mutex_lock_nested+0x38/0x44 kernel/locking/mutex.c:799
       map_mft_record+0x40/0xfc fs/ntfs/mft.c:154
       ntfs_truncate+0xd8/0xf6c fs/ntfs/inode.c:2376
       ntfs_truncate_vfs fs/ntfs/inode.c:2855 [inline]
       ntfs_setattr+0x1ac/0x228 fs/ntfs/inode.c:2907
       notify_change+0x758/0x7f0 fs/attr.c:420
       do_truncate+0x108/0x150 fs/open.c:65
       vfs_truncate+0x1dc/0x24c fs/open.c:111
       do_sys_truncate+0x94/0x140 fs/open.c:134
       __do_sys_truncate fs/open.c:146 [inline]
       __se_sys_truncate fs/open.c:144 [inline]
       __arm64_sys_truncate+0x20/0x30 fs/open.c:144
       __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
       invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
       el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
       do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
       el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
       el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
       el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&rl->lock);
                               lock(&ni->mrec_lock);
                               lock(&rl->lock);
  lock(&ni->mrec_lock);

 *** DEADLOCK ***

3 locks held by syz-executor.3/9828:
 #0: ffff0001067af460 (sb_writers#23){.+.+}-{0:0}, at: mnt_want_write+0x20/0x64 fs/namespace.c:393
 #1: ffff00010ca1f8b0 (&sb->s_type->i_mutex_key#32){+.+.}-{3:3}, at: inode_lock include/linux/fs.h:756 [inline]
 #1: ffff00010ca1f8b0 (&sb->s_type->i_mutex_key#32){+.+.}-{3:3}, at: do_truncate+0xf4/0x150 fs/open.c:63
 #2: ffff00010ca1f540 (&rl->lock){++++}-{3:3}, at: ntfs_truncate+0xa8/0xf6c fs/ntfs/inode.c:2371

stack backtrace:
CPU: 1 PID: 9828 Comm: syz-executor.3 Not tainted 6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/30/2022
Call trace:
 dump_backtrace+0x1c4/0x1f0 arch/arm64/kernel/stacktrace.c:156
 show_stack+0x2c/0x54 arch/arm64/kernel/stacktrace.c:163
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x104/0x16c lib/dump_stack.c:106
 dump_stack+0x1c/0x58 lib/dump_stack.c:113
 print_circular_bug+0x2c4/0x2c8 kernel/locking/lockdep.c:2053
 check_noncircular+0x14c/0x154 kernel/locking/lockdep.c:2175
 check_prev_add kernel/locking/lockdep.c:3095 [inline]
 check_prevs_add kernel/locking/lockdep.c:3214 [inline]
 validate_chain kernel/locking/lockdep.c:3829 [inline]
 __lock_acquire+0x1530/0x30a4 kernel/locking/lockdep.c:5053
 lock_acquire+0x100/0x1f8 kernel/locking/lockdep.c:5666
 __mutex_lock_common+0xd4/0xca8 kernel/locking/mutex.c:603
 __mutex_lock kernel/locking/mutex.c:747 [inline]
 mutex_lock_nested+0x38/0x44 kernel/locking/mutex.c:799
 map_mft_record+0x40/0xfc fs/ntfs/mft.c:154
 ntfs_truncate+0xd8/0xf6c fs/ntfs/inode.c:2376
 ntfs_truncate_vfs fs/ntfs/inode.c:2855 [inline]
 ntfs_setattr+0x1ac/0x228 fs/ntfs/inode.c:2907
 notify_change+0x758/0x7f0 fs/attr.c:420
 do_truncate+0x108/0x150 fs/open.c:65
 vfs_truncate+0x1dc/0x24c fs/open.c:111
 do_sys_truncate+0x94/0x140 fs/open.c:134
 __do_sys_truncate fs/open.c:146 [inline]
 __se_sys_truncate fs/open.c:144 [inline]
 __arm64_sys_truncate+0x20/0x30 fs/open.c:144
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581


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
