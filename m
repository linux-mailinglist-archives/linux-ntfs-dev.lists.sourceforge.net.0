Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C56265C070
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  3 Jan 2023 14:07:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pCh05-00020Q-W8;
	Tue, 03 Jan 2023 13:06:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39xu0YwkbACQSYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pCgAy-0001Xj-NW for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 03 Jan 2023 12:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eyFfBghNmCNohuQgi0p9x+tyF3wB+UXjN3PPo7fNH6Y=; b=itpY3UDPNhd340GGYm9fOiJSTI
 RiuEvvjzKFfv8eSYhoVZf6i/eO0Ky4mSAfFtD80MyOuxgqaevVhv3qwlDa1iwiIzecpgQCd3Ba9JT
 3zg5EKwZI7Vd5FpSQwvrs82h2SnGshSHLjwhLzqSwxrpIGZfLhFXNvR3Tz2s/GUNL7Z8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eyFfBghNmCNohuQgi0p9x+tyF3wB+UXjN3PPo7fNH6Y=; b=Y
 U73H3o6ggl0CroCllYYj3Xuh7xFkhPdsVK7Emwg7bSfldXdeb+5LSbDwnCv7dRt5oItyEdOa9if01
 hKSmHKJqSRVCMc+25X7eZIMs5RwU8k41s8E4MjYvShTaHdn4BV+osnJFAm4bdTw0GqasSotlUQUnX
 YUl3S6luogs3NAkE=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pCgAv-0007tu-Cv for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 03 Jan 2023 12:13:52 +0000
Received: by mail-il1-f199.google.com with SMTP id
 l13-20020a056e0212ed00b00304c6338d79so19502971iln.21
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 03 Jan 2023 04:13:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eyFfBghNmCNohuQgi0p9x+tyF3wB+UXjN3PPo7fNH6Y=;
 b=zfPrNh2wyb4Msco0QxgGeavGzIw2kK9C6HUhmyNWV1EbzDXJefHilcqPe6bE3ZMslm
 sn5AhaX5VIWJpP8otN4iVV7Dd1+pv+XA/xUlZ+0c+Zug+noi+xTGFeQaXPhOPzVRPwNw
 aQeCdpxk/9s0qHziIIN6/XCbGJ4bde6sR26KxBh71Z/IDrva04vz6MP/If7uTxRNBkfk
 5ae8hDs+XrdCBzQ2MXliCpf+EeN1XmcN3rLQ6Xq537MVtw9BNwyEdgtElkqqY1GU6KXp
 WyZ5f+6566BHJ9g/X/v+2eL80XzXgPyfXrhxo7PukIwIMPT4sAXzuy2qWbDY9i7sIMjI
 4FoQ==
X-Gm-Message-State: AFqh2krzSGaVzbxSPoenEzetVEiTrtJFa3O+LtLVlFfuE/6vW/SRj0bH
 +41YA7fs3UbniWg5cgAxml70BBmC0lq3bppLQVGb3wtvrGlY
X-Google-Smtp-Source: AMrXdXuDsBAA0yBj17SvetkfjdsUCkvKGhqHIz/2Hh45gO952qewy8LRA8J8UpAGL67J7ZHXX7/v0hIR4pAFS9l3lOTSTIfU9Zvq
MIME-Version: 1.0
X-Received: by 2002:a92:c052:0:b0:30c:1693:594b with SMTP id
 o18-20020a92c052000000b0030c1693594bmr1687564ilf.210.1672748023758; Tue, 03
 Jan 2023 04:13:43 -0800 (PST)
Date: Tue, 03 Jan 2023 04:13:43 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c146a005f15aff1b@google.com>
From: syzbot <syzbot+6a2409526a801cf8c0ef@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 2258c2dc850b
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1543182a480000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1pCgAv-0007tu-Cv
X-Mailman-Approved-At: Tue, 03 Jan 2023 13:06:00 +0000
Subject: [Linux-NTFS-Dev] [syzbot] [ntfs?] possible deadlock in
 __ntfs_cluster_free
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

HEAD commit:    2258c2dc850b Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1543182a480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=6a2409526a801cf8c0ef
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/aee4b2292a64/disk-2258c2dc.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/9ecfc816182c/vmlinux-2258c2dc.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f24ffaf1255a/bzImage-2258c2dc.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+6a2409526a801cf8c0ef@syzkaller.appspotmail.com

ntfs: volume version 3.1.
======================================================
WARNING: possible circular locking dependency detected
6.2.0-rc1-syzkaller-00043-g2258c2dc850b #0 Not tainted
------------------------------------------------------
syz-executor.3/28063 is trying to acquire lock:
ffff88801e35d9f8 (&vol->lcnbmp_lock){+.+.}-{3:3}, at: __ntfs_cluster_free+0xd4/0x890 fs/ntfs/lcnalloc.c:862

but task is already holding lock:
ffff888039ccc390 (&lcnbmp_mrec_lock_key){+.+.}-{3:3}, at: map_mft_record+0x46/0x610 fs/ntfs/mft.c:154

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&lcnbmp_mrec_lock_key){+.+.}-{3:3}:
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       __mutex_lock_common+0x1bd/0x26e0 kernel/locking/mutex.c:603
       __mutex_lock kernel/locking/mutex.c:747 [inline]
       mutex_lock_nested+0x17/0x20 kernel/locking/mutex.c:799
       map_mft_record+0x46/0x610 fs/ntfs/mft.c:154
       __ntfs_write_inode+0x80/0xc90 fs/ntfs/inode.c:2978
       ntfs_commit_inode fs/ntfs/inode.h:300 [inline]
       ntfs_put_super+0x3ba/0xf80 fs/ntfs/super.c:2283
       generic_shutdown_super+0x130/0x310 fs/super.c:492
       kill_block_super+0x79/0xd0 fs/super.c:1386
       deactivate_locked_super+0xa7/0xf0 fs/super.c:332
       cleanup_mnt+0x494/0x520 fs/namespace.c:1291
       task_work_run+0x243/0x300 kernel/task_work.c:179
       resume_user_mode_work include/linux/resume_user_mode.h:49 [inline]
       exit_to_user_mode_loop+0x124/0x150 kernel/entry/common.c:171
       exit_to_user_mode_prepare+0xb2/0x140 kernel/entry/common.c:203
       __syscall_exit_to_user_mode_work kernel/entry/common.c:285 [inline]
       syscall_exit_to_user_mode+0x26/0x60 kernel/entry/common.c:296
       do_syscall_64+0x49/0xb0 arch/x86/entry/common.c:86
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

-> #0 (&vol->lcnbmp_lock){+.+.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:3097 [inline]
       check_prevs_add kernel/locking/lockdep.c:3216 [inline]
       validate_chain+0x1898/0x6ae0 kernel/locking/lockdep.c:3831
       __lock_acquire+0x1292/0x1f60 kernel/locking/lockdep.c:5055
       lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
       down_write+0x9c/0x270 kernel/locking/rwsem.c:1562
       __ntfs_cluster_free+0xd4/0x890 fs/ntfs/lcnalloc.c:862
       ntfs_cluster_free fs/ntfs/lcnalloc.h:96 [inline]
       ntfs_truncate+0x119c/0x2720 fs/ntfs/inode.c:2695
       ntfs_truncate_vfs fs/ntfs/inode.c:2862 [inline]
       ntfs_setattr+0x2b9/0x3a0 fs/ntfs/inode.c:2914
       notify_change+0xe50/0x1100 fs/attr.c:482
       do_truncate+0x200/0x2f0 fs/open.c:65
       handle_truncate fs/namei.c:3216 [inline]
       do_open fs/namei.c:3561 [inline]
       path_openat+0x272b/0x2dd0 fs/namei.c:3714
       do_file_open_root+0x339/0x790 fs/namei.c:3766
       file_open_root+0x234/0x290 fs/open.c:1290
       do_handle_open+0x565/0x950 fs/fhandle.c:232
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x63/0xcd

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&lcnbmp_mrec_lock_key);
                               lock(&vol->lcnbmp_lock);
                               lock(&lcnbmp_mrec_lock_key);
  lock(&vol->lcnbmp_lock);

 *** DEADLOCK ***

4 locks held by syz-executor.3/28063:
 #0: ffff888038f60460 (sb_writers#21){.+.+}-{0:0}, at: mnt_want_write+0x3b/0x80 fs/namespace.c:508
 #1: ffff888039ccc670 (&sb->s_type->i_mutex_key#33){+.+.}-{3:3}, at: inode_lock include/linux/fs.h:756 [inline]
 #1: ffff888039ccc670 (&sb->s_type->i_mutex_key#33){+.+.}-{3:3}, at: do_truncate+0x1ec/0x2f0 fs/open.c:63
 #2: ffff888039ccc300 (&lcnbmp_runlist_lock_key){++++}-{3:3}, at: ntfs_truncate+0x1d8/0x2720 fs/ntfs/inode.c:2378
 #3: ffff888039ccc390 (&lcnbmp_mrec_lock_key){+.+.}-{3:3}, at: map_mft_record+0x46/0x610 fs/ntfs/mft.c:154

stack backtrace:
CPU: 0 PID: 28063 Comm: syz-executor.3 Not tainted 6.2.0-rc1-syzkaller-00043-g2258c2dc850b #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x290 lib/dump_stack.c:106
 check_noncircular+0x2cc/0x390 kernel/locking/lockdep.c:2177
 check_prev_add kernel/locking/lockdep.c:3097 [inline]
 check_prevs_add kernel/locking/lockdep.c:3216 [inline]
 validate_chain+0x1898/0x6ae0 kernel/locking/lockdep.c:3831
 __lock_acquire+0x1292/0x1f60 kernel/locking/lockdep.c:5055
 lock_acquire+0x182/0x3c0 kernel/locking/lockdep.c:5668
 down_write+0x9c/0x270 kernel/locking/rwsem.c:1562
 __ntfs_cluster_free+0xd4/0x890 fs/ntfs/lcnalloc.c:862
 ntfs_cluster_free fs/ntfs/lcnalloc.h:96 [inline]
 ntfs_truncate+0x119c/0x2720 fs/ntfs/inode.c:2695
 ntfs_truncate_vfs fs/ntfs/inode.c:2862 [inline]
 ntfs_setattr+0x2b9/0x3a0 fs/ntfs/inode.c:2914
 notify_change+0xe50/0x1100 fs/attr.c:482
 do_truncate+0x200/0x2f0 fs/open.c:65
 handle_truncate fs/namei.c:3216 [inline]
 do_open fs/namei.c:3561 [inline]
 path_openat+0x272b/0x2dd0 fs/namei.c:3714
 do_file_open_root+0x339/0x790 fs/namei.c:3766
 file_open_root+0x234/0x290 fs/open.c:1290
 do_handle_open+0x565/0x950 fs/fhandle.c:232
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f169e08c0a9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 f1 19 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f169ee1f168 EFLAGS: 00000246 ORIG_RAX: 0000000000000130
RAX: ffffffffffffffda RBX: 00007f169e1abf80 RCX: 00007f169e08c0a9
RDX: 0000000000000202 RSI: 0000000020000000 RDI: 0000000000000004
RBP: 00007f169e0e7ae9 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffecb030f6f R14: 00007f169ee1f300 R15: 0000000000022000
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
