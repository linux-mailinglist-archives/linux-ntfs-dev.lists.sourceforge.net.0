Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 444475EC020
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 27 Sep 2022 12:50:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1od8Ae-0005VW-3k;
	Tue, 27 Sep 2022 10:50:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <36tsxYwkbAIk5BCxnyyr4n22vq.t11tyr75r4p106r06.p1z@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ocrYG-0004rM-6h for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 26 Sep 2022 17:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FgsGKmgnAiNMm0Kfl6ghAURyWLdkaZIxUE7N6+di98I=; b=UQ66JMGRsmve9Q3yMshBy2dbqz
 T23z+nSHbpu0q+YRlSlq8ULgJDS/I3b8KXpGYq9pa0zUQPkTV8Aq1QP2GjPkjpODoduUvyDivuVy3
 kOswR4IuNd9nwl2rl+6OcjzVUzBKhoA2cl6gKYvyNmoJzZtlPuQ/8QfvbCiz+zAU8KBc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FgsGKmgnAiNMm0Kfl6ghAURyWLdkaZIxUE7N6+di98I=; b=k
 eCurLU3AJ8AJVUbcq7Y45MD5gr+e1YGfoxy7L5GztyTexcG1KwEMR0pufZlWVK3ZATnbcmjvA1FsY
 tYOQIjwG1SpIfCMzmAPaNuDL/PRSEofnwZ4UkXceX1SlHpD3VFF4CKvJGJeHDyiI2b+CClxJbsa+A
 hiGFRzXsl7NgyJb0=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ocrYF-0003TE-IB for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 26 Sep 2022 17:05:52 +0000
Received: by mail-il1-f200.google.com with SMTP id
 o5-20020a056e02102500b002ddcc65029cso5578760ilj.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 26 Sep 2022 10:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=FgsGKmgnAiNMm0Kfl6ghAURyWLdkaZIxUE7N6+di98I=;
 b=YG9Jb/wUxiElyWXa1O2LW/BwgUdWj6tKMb9YqPnl5KUHjvHlHlN0R72ggJew0PXCXN
 r6pbWMixylw9RUpN+I258xmdaPHS0tdL4ZdYg8W9R0Ybn9Fu50jj19Lv+a+v19yjDOHW
 VLaidkDwXSMiJmN+r8UMhA0ji51UvWptP6O2NSDMNCYyB5YWIOquZmCkZCeQUuVqd9T/
 NFwkhB3kuFImnaEsFESvtZPDC3RzvvzqDBq+cT0XTjc1d5ySE47TC8ZMYcWx6Fq6qCkJ
 tZJBPRZbsBeWZQO/R7n/3LamxkMgwu8XBoSzADX5MsVt+OqXhCBLjGUmW8j+oAilR7Th
 qNUg==
X-Gm-Message-State: ACrzQf0jn3f47XpyUNvEFrWMXfLy3ax3VEKYa61VY9K/8xO95qYoOKse
 n8LblMfjFUFbo7XAKm42WypeS2B+ogOhgev1YTYL6gfyLvDV
X-Google-Smtp-Source: AMsMyM79ssbhgnRU1umH1MBFsMRKsVYHsHbcSz6KzN63rR7iErYQAlzZFSw84cJl/Yul5nyPLKpALak9XaLMay9duUPc9gbYffKk
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2726:b0:35b:18bc:b6dc with SMTP id
 m38-20020a056638272600b0035b18bcb6dcmr11726609jav.284.1664211946066; Mon, 26
 Sep 2022 10:05:46 -0700 (PDT)
Date: Mon, 26 Sep 2022 10:05:46 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e05bc805e99789e1@google.com>
From: syzbot <syzbot+01b3ade7c86f7dd584d7@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: c194837ebb57
 Merge branch 'for-next/core', remote-tracking.. git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
X-Headers-End: 1ocrYF-0003TE-IB
X-Mailman-Approved-At: Tue, 27 Sep 2022 10:50:34 +0000
Subject: [Linux-NTFS-Dev] [syzbot] kernel BUG in __ntfs_grab_cache_pages
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

HEAD commit:    c194837ebb57 Merge branch 'for-next/core', remote-tracking..
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=138cb7f8880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=15a770deac0c935a
dashboard link: https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12d1d188880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1472a6ef080000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/8d8ae425e7fa/disk-c194837e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c540d501ebe7/vmlinux-c194837e.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+01b3ade7c86f7dd584d7@syzkaller.appspotmail.com

 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190
------------[ cut here ]------------
kernel BUG at fs/ntfs/file.c:493!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 0 PID: 3045 Comm: syz-executor202 Not tainted 6.0.0-rc6-syzkaller-17742-gc194837ebb57 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : __ntfs_grab_cache_pages+0x30c/0x328 fs/ntfs/file.c:493
lr : __ntfs_grab_cache_pages+0x30c/0x328 fs/ntfs/file.c:493
sp : ffff80000fb5baa0
x29: ffff80000fb5baa0 x28: ffff0000caa2ec80 x27: ffff80000fb5bb70
x26: 00000000ffffffff x25: ffff0000caa2f1c8 x24: 0000000000000000
x23: 0000000000000000 x22: ffff80000fb5bb68 x21: ffff0000caa2ec80
x20: 0000000000000000 x19: ffff80000fb5bb70 x18: 00000000000000c0
x17: ffff80000dd0b198 x16: ffff80000db49158 x15: ffff0000c47b1a80
x14: 0000000000000030 x13: 00000000ffffffff x12: ffff0000c47b1a80
x11: ff80800008b9dcb0 x10: 0000000000000000 x9 : ffff800008b9dcb0
x8 : ffff0000c47b1a80 x7 : ffff80000846b9dc x6 : 0000000000000000
x5 : 0000000000000000 x4 : ffff80000fb5bb68 x3 : ffff80000fb5bb70
x2 : 0000000000000000 x1 : 0000000000000000 x0 : 0000000000000000
Call trace:
 __ntfs_grab_cache_pages+0x30c/0x328 fs/ntfs/file.c:493
 ntfs_perform_write+0x224/0xa98 fs/ntfs/file.c:1833
 ntfs_file_write_iter+0x2c4/0x4f0 fs/ntfs/file.c:1917
 call_write_iter include/linux/fs.h:2187 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x2dc/0x46c fs/read_write.c:578
 ksys_write+0xb4/0x160 fs/read_write.c:631
 __do_sys_write fs/read_write.c:643 [inline]
 __se_sys_write fs/read_write.c:640 [inline]
 __arm64_sys_write+0x24/0x34 fs/read_write.c:640
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
 el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
 el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
 el0t_64_sync+0x18c/0x190
Code: 17ffff88 97dc0a06 17ffff86 97dc0a04 (d4210000) 
---[ end trace 0000000000000000 ]---


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
