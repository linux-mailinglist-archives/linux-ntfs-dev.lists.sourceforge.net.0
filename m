Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6BD5F1D33
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  1 Oct 2022 17:29:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oeeQU-0006vH-Ux;
	Sat, 01 Oct 2022 15:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NkU4YwkbAMEz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oecrE-0001Og-Uk for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ud6GzdiUsw0DXBDJBGmhdS3DH94wRJJ2abs8bQrCTM=; b=cpUh6H8sjGwe5tt3qOGJ4g2uB4
 n+B/7/kVFbFvUzVBs2J2RVtRqPcrwF3b9shx6LTYGnbZ1S4Xon5Ld+4VgfXTsQjsSUO/GyQGzBpk4
 VoFnqSutDioE/v0OLtOtWb9tX/3w6WI/p+iTotcZ78/1Ox+eEjbmZDrK6Em90YK92LII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9ud6GzdiUsw0DXBDJBGmhdS3DH94wRJJ2abs8bQrCTM=; b=G
 uzp/HlXaTcFaiyoLNob6ZRubEXrCAdjJK36FRW1gl7gPeou++bXD5q38hfwgvgmzsXW9Ex+nQ8aF9
 8g3aEC5VvifYgqWYzdV/5LVn1M9NAK7yYiM7+e3O4/afr5OSaQSE5zdP9D3X0/npkIHqRL/Bdydkk
 L1LKlj8Rmb4PrUCQ=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oecrE-008y8W-6d for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:48:44 +0000
Received: by mail-io1-f71.google.com with SMTP id
 f11-20020a5d858b000000b006a17b75af65so4443409ioj.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 01 Oct 2022 06:48:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=9ud6GzdiUsw0DXBDJBGmhdS3DH94wRJJ2abs8bQrCTM=;
 b=MsLt450+ugHTW0tf8POdbBb1gcZ/Jw+BKfYK3hTCEDlFA5kp7H/iEaSxFM+2tRGDjN
 1oiBmjT6FYT5phzkdqioHeKqmW1wLe80clYqnAnY8Bxipfp8slR4EaAMe2Zim/C7Gd/0
 1YAKKNBeH9vJmIcoVOmccgzwVOOJo6GT83D2TNS/ShfSWv2pFZhBnMVe87dWJV1SKmuW
 TsGnUXY7F4isPZIb5SXBvI37boiwlz8ZIiuJNuBS8S6JnyWr8PV++ctyveMzh4jZJFCt
 XI/k6WEMbJlSXHRCSLC3YWjgvBL1LZwpMLfPWgkuQwkvRyb/dNEo57JiqZA6+0QQZttQ
 mURQ==
X-Gm-Message-State: ACrzQf3VGPjo0iHtD53xL0mmIHSmcFw6qLSaR3oVW14NUQH8rR4tL9oo
 MjkgWrcqwkiFXwwZ2PWZG3jHPu1RWS1KAiSPq0oQCLfV5/aE
X-Google-Smtp-Source: AMsMyM5VUcP+l4X3NtC3Psp9+N41Zac1wb8dvbFxfpkcEyvXS5ISS9gYESLvShe8hR3MBIlR6UQbBd62IxI1c9xSW2yMjVWw9uUZ
MIME-Version: 1.0
X-Received: by 2002:a05:6602:370f:b0:6a1:1bac:5f4d with SMTP id
 bh15-20020a056602370f00b006a11bac5f4dmr5762898iob.179.1664632118719; Sat, 01
 Oct 2022 06:48:38 -0700 (PDT)
Date: Sat, 01 Oct 2022 06:48:38 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001e3b8505e9f95e3d@google.com>
From: syzbot <syzbot+8ef76b0b1f86c382ad37@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 49c13ed0316d
 Merge tag 'soc-fixes-6.0-rc7' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=104c0ce0880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
X-Headers-End: 1oecrE-008y8W-6d
X-Mailman-Approved-At: Sat, 01 Oct 2022 15:29:23 +0000
Subject: [Linux-NTFS-Dev] [syzbot] possible deadlock in ntfs_read_folio
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

HEAD commit:    49c13ed0316d Merge tag 'soc-fixes-6.0-rc7' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=104c0ce0880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=755695d26ad09807
dashboard link: https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=165d4f6c880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=113848f4880000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8ef76b0b1f86c382ad37@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
6.0.0-rc7-syzkaller-00068-g49c13ed0316d #0 Not tainted
------------------------------------------------------
kworker/u4:5/1081 is trying to acquire lock:
ffff888075ab8940 (&rl->lock){++++}-{3:3}, at: ntfs_read_block fs/ntfs/aops.c:248 [inline]
ffff888075ab8940 (&rl->lock){++++}-{3:3}, at: ntfs_read_folio+0x1bd3/0x2e10 fs/ntfs/aops.c:436

but task is already holding lock:
ffff888075abb310 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x3c/0x6b0 fs/ntfs/mft.c:154

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&ni->mrec_lock){+.+.}-{3:3}:
       __mutex_lock_common kernel/locking/mutex.c:603 [inline]
       __mutex_lock+0x12f/0x1350 kernel/locking/mutex.c:747
       map_mft_record+0x3c/0x6b0 fs/ntfs/mft.c:154
       ntfs_map_runlist_nolock+0xb5a/0x16f0 fs/ntfs/attrib.c:91
       ntfs_map_runlist+0x77/0xa0 fs/ntfs/attrib.c:292
       ntfs_read_block fs/ntfs/aops.c:283 [inline]
       ntfs_read_folio+0x1c2d/0x2e10 fs/ntfs/aops.c:436
       read_pages+0xb5e/0xfc0 mm/readahead.c:178
       page_cache_ra_unbounded+0x3f5/0x550 mm/readahead.c:263
       do_page_cache_ra mm/readahead.c:293 [inline]
       page_cache_ra_order+0x69a/0x970 mm/readahead.c:550
       ondemand_readahead+0x6fc/0x1160 mm/readahead.c:672
       page_cache_sync_ra+0x1c5/0x200 mm/readahead.c:699
       page_cache_sync_readahead include/linux/pagemap.h:1215 [inline]
       filemap_get_pages+0x2a1/0x1790 mm/filemap.c:2566
       filemap_read+0x314/0xe10 mm/filemap.c:2660
       generic_file_read_iter+0x3b0/0x5a0 mm/filemap.c:2806
       __kernel_read+0x2c6/0x7c0 fs/read_write.c:428
       integrity_kernel_read+0x7b/0xb0 security/integrity/iint.c:199
       ima_calc_file_hash_tfm+0x2aa/0x3b0 security/integrity/ima/ima_crypto.c:485
       ima_calc_file_shash security/integrity/ima/ima_crypto.c:516 [inline]
       ima_calc_file_hash+0x191/0x4a0 security/integrity/ima/ima_crypto.c:573
       ima_collect_measurement+0x5ca/0x710 security/integrity/ima/ima_api.c:292
       process_measurement+0xd1e/0x18b0 security/integrity/ima/ima_main.c:337
       ima_file_check+0xac/0x100 security/integrity/ima/ima_main.c:517
       do_open fs/namei.c:3559 [inline]
       path_openat+0x1611/0x28f0 fs/namei.c:3691
       do_filp_open+0x1b6/0x400 fs/namei.c:3718
       do_sys_openat2+0x16d/0x4c0 fs/open.c:1313
       do_sys_open fs/open.c:1329 [inline]
       __do_sys_openat fs/open.c:1345 [inline]
       __se_sys_openat fs/open.c:1340 [inline]
       __x64_sys_openat+0x13f/0x1f0 fs/open.c:1340
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

-> #0 (&rl->lock){++++}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3095 [inline]
       check_prevs_add kernel/locking/lockdep.c:3214 [inline]
       validate_chain kernel/locking/lockdep.c:3829 [inline]
       __lock_acquire+0x2a43/0x56d0 kernel/locking/lockdep.c:5053
       lock_acquire kernel/locking/lockdep.c:5666 [inline]
       lock_acquire+0x1ab/0x570 kernel/locking/lockdep.c:5631
       down_read+0x98/0x450 kernel/locking/rwsem.c:1499
       ntfs_read_block fs/ntfs/aops.c:248 [inline]
       ntfs_read_folio+0x1bd3/0x2e10 fs/ntfs/aops.c:436
       filemap_read_folio+0x3c/0x1d0 mm/filemap.c:2394
       do_read_cache_folio+0x1df/0x510 mm/filemap.c:3519
       do_read_cache_page mm/filemap.c:3561 [inline]
       read_cache_page+0x59/0x2b0 mm/filemap.c:3570
       read_mapping_page include/linux/pagemap.h:756 [inline]
       ntfs_map_page fs/ntfs/aops.h:75 [inline]
       ntfs_sync_mft_mirror+0x24b/0x1ea0 fs/ntfs/mft.c:480
       write_mft_record_nolock+0x198a/0x1cc0 fs/ntfs/mft.c:787
       write_mft_record+0x14e/0x3b0 fs/ntfs/mft.h:95
       __ntfs_write_inode+0x911/0xc40 fs/ntfs/inode.c:3043
       write_inode fs/fs-writeback.c:1440 [inline]
       __writeback_single_inode+0xb5c/0x10b0 fs/fs-writeback.c:1652
       writeback_sb_inodes+0x54d/0xf10 fs/fs-writeback.c:1865
       wb_writeback+0x294/0xc20 fs/fs-writeback.c:2039
       wb_do_writeback fs/fs-writeback.c:2182 [inline]
       wb_workfn+0x2a1/0x1170 fs/fs-writeback.c:2222
       process_one_work+0x991/0x1610 kernel/workqueue.c:2289
       worker_thread+0x665/0x1080 kernel/workqueue.c:2436
       kthread+0x2e4/0x3a0 kernel/kthread.c:376
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&ni->mrec_lock);
                               lock(&rl->lock);
                               lock(&ni->mrec_lock);
  lock(&rl->lock);

 *** DEADLOCK ***

3 locks held by kworker/u4:5/1081:
 #0: ffff888144b0e138 ((wq_completion)writeback){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888144b0e138 ((wq_completion)writeback){+.+.}-{0:0}, at: arch_atomic_long_set include/linux/atomic/atomic-long.h:41 [inline]
 #0: ffff888144b0e138 ((wq_completion)writeback){+.+.}-{0:0}, at: atomic_long_set include/linux/atomic/atomic-instrumented.h:1280 [inline]
 #0: ffff888144b0e138 ((wq_completion)writeback){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:636 [inline]
 #0: ffff888144b0e138 ((wq_completion)writeback){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:663 [inline]
 #0: ffff888144b0e138 ((wq_completion)writeback){+.+.}-{0:0}, at: process_one_work+0x87a/0x1610 kernel/workqueue.c:2260
 #1: ffffc900045cfda8 ((work_completion)(&(&wb->dwork)->work)){+.+.}-{0:0}, at: process_one_work+0x8ae/0x1610 kernel/workqueue.c:2264
 #2: ffff888075abb310 (&ni->mrec_lock){+.+.}-{3:3}, at: map_mft_record+0x3c/0x6b0 fs/ntfs/mft.c:154

stack backtrace:
CPU: 0 PID: 1081 Comm: kworker/u4:5 Not tainted 6.0.0-rc7-syzkaller-00068-g49c13ed0316d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Workqueue: writeback wb_workfn (flush-7:0)
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 check_noncircular+0x25f/0x2e0 kernel/locking/lockdep.c:2175
 check_prev_add kernel/locking/lockdep.c:3095 [inline]
 check_prevs_add kernel/locking/lockdep.c:3214 [inline]
 validate_chain kernel/locking/lockdep.c:3829 [inline]
 __lock_acquire+0x2a43/0x56d0 kernel/locking/lockdep.c:5053
 lock_acquire kernel/locking/lockdep.c:5666 [inline]
 lock_acquire+0x1ab/0x570 kernel/locking/lockdep.c:5631
 down_read+0x98/0x450 kernel/locking/rwsem.c:1499
 ntfs_read_block fs/ntfs/aops.c:248 [inline]
 ntfs_read_folio+0x1bd3/0x2e10 fs/ntfs/aops.c:436
 filemap_read_folio+0x3c/0x1d0 mm/filemap.c:2394
 do_read_cache_folio+0x1df/0x510 mm/filemap.c:3519
 do_read_cache_page mm/filemap.c:3561 [inline]
 read_cache_page+0x59/0x2b0 mm/filemap.c:3570
 read_mapping_page include/linux/pagemap.h:756 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 ntfs_sync_mft_mirror+0x24b/0x1ea0 fs/ntfs/mft.c:480
 write_mft_record_nolock+0x198a/0x1cc0 fs/ntfs/mft.c:787
 write_mft_record+0x14e/0x3b0 fs/ntfs/mft.h:95
 __ntfs_write_inode+0x911/0xc40 fs/ntfs/inode.c:3043
 write_inode fs/fs-writeback.c:1440 [inline]
 __writeback_single_inode+0xb5c/0x10b0 fs/fs-writeback.c:1652
 writeback_sb_inodes+0x54d/0xf10 fs/fs-writeback.c:1865


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
