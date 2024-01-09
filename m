Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA84828CF1
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Jan 2024 19:58:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rNHIV-0000Fu-Ob;
	Tue, 09 Jan 2024 18:57:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MI6dZQkbAPUpvwhXiiboXmmfa.dlldibrpboZlkqbkq.Zlj@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rNGhR-0002Xu-H9 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Jan 2024 18:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vhuhc2iT/iPcf+8+Jy5P0A6KcjOLWBP6XP022tsLIFk=; b=jONigOK96g2yTjA+js3n8v7iUk
 +e8f91H0THWm9ruHcjcYiHMxAeKgDeoiGYioamocrQVF+VAVxoTEUfQI/iV6ruclCyoNGped1zW61
 xYkuXLsopnlsRpJDy3sfVtzYj8M5SV+7bINJCr2WM/yKRIO2P2/c0HQmVoglqdwjM4ec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Vhuhc2iT/iPcf+8+Jy5P0A6KcjOLWBP6XP022tsLIFk=; b=d
 qOu8DI6HgsxSiH5xHU1CZVyBwOIHk7ayfoKZu5NkGSAEBVpSn3yBF7gue8PwbARRDyNHCURykfxA0
 fPgpMbTt2bKnsDpE+HT8cnmgP5DXFnzwyC1Npx9M2iNd9LlsF2wMoq7NwvDp2O3BXtS/vgFuuNG0k
 q4GAf5+YM84zMVPw=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rNGhR-0001tg-37 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Jan 2024 18:19:42 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7baa6cc3af2so294554939f.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 09 Jan 2024 10:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704824370; x=1705429170;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Vhuhc2iT/iPcf+8+Jy5P0A6KcjOLWBP6XP022tsLIFk=;
 b=m+FmcVaCOkahOYskjJjMVqI7GZhnSqjVNSUV7NZd25l/NsQ7PEmj8n8t1QvSfh5r0j
 FEFLHZtPigOxciYTgPiGb+4dB1+5XPa8SNbfL3hqflqRCvRctHxcDwodIJY7lsZWa5h/
 ZTlaE4Zvj5RrtnRsh5gwL9hyRgBnwercyz753wSjs90TMDBlaV0m7bE0XZUm+phsEqGr
 Q5E7bKDPNGuFkzcO5xX0zjNaubTFY2MSv1N3OMvNNv+7oFjW/ZynSbQpjpdUX1RnfPWh
 WcVUDuPidU9OnOXdJNhgWe+gGjYIeY8eIn98ti20trH+Kp3w+kArkMIBlV/RM2JAE3Ge
 8zBA==
X-Gm-Message-State: AOJu0YzRVtkp6OGtYtMVzRqe2qJ6dR/cUf/7DpZpF4RbppW9DEYAyAD+
 BbIZX7miKmTrxrVNBi2vG4nym3oDbnJqcSzI8+AqPnPyssdk
X-Google-Smtp-Source: AGHT+IGLMVqLYrxtaqQcqCprJfPH8l104K6tscXNgKh+wH5OR8pg6vEW3OJxCoosW8moLrHGH7HtpSUsVf+/sCemzDYMBTv6CNdn
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2b16:b0:46c:ff73:a8c4 with SMTP id
 fm22-20020a0566382b1600b0046cff73a8c4mr269871jab.4.1704824368986; Tue, 09 Jan
 2024 10:19:28 -0800 (PST)
Date: Tue, 09 Jan 2024 10:19:28 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000eb00d6060e875ad7@google.com>
From: syzbot <syzbot+f583da5774d7dd400312@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: aafe7ad77b91
 Merge branch 'for-next/core' into for-kernelci git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output: https://syzkaller.appspot. [...] 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [209.85.166.72 listed in dnsbl.sorbs.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rNGhR-0001tg-37
X-Mailman-Approved-At: Tue, 09 Jan 2024 18:57:58 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] KASAN: use-after-free Write in
 ntfs_perform_write
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

HEAD commit:    aafe7ad77b91 Merge branch 'for-next/core' into for-kernelci
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=154cf661e80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=23ce86eb3d78ef4d
dashboard link: https://syzkaller.appspot.com/bug?extid=f583da5774d7dd400312
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=149ca405e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12172d89e80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/23845238c49b/disk-aafe7ad7.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/1144b0f74104/vmlinux-aafe7ad7.xz
kernel image: https://storage.googleapis.com/syzbot-assets/6db20df213a2/Image-aafe7ad7.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/475f587fffbd/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f583da5774d7dd400312@syzkaller.appspotmail.com

ntfs: (device loop0): parse_options(): Option utf8 is no longer supported, using option nls=utf8. Please use option nls=utf8 in the future and make sure utf8 is compiled either as a module or into the kernel.
ntfs: volume version 3.1.
==================================================================
BUG: KASAN: use-after-free in ntfs_commit_pages_after_write fs/ntfs/file.c:1597 [inline]
BUG: KASAN: use-after-free in ntfs_perform_write+0x5354/0x82c8 fs/ntfs/file.c:1853
Write of size 1 at addr ffff0000de9b6170 by task syz-executor306/6098

CPU: 0 PID: 6098 Comm: syz-executor306 Not tainted 6.7.0-rc6-syzkaller-gaafe7ad77b91 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/10/2023
Call trace:
 dump_backtrace+0x1b8/0x1e4 arch/arm64/kernel/stacktrace.c:291
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:298
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd0/0x124 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:364 [inline]
 print_report+0x174/0x514 mm/kasan/report.c:475
 kasan_report+0xd8/0x138 mm/kasan/report.c:588
 kasan_check_range+0x254/0x294 mm/kasan/generic.c:187
 __asan_memcpy+0x54/0x84 mm/kasan/shadow.c:106
 ntfs_commit_pages_after_write fs/ntfs/file.c:1597 [inline]
 ntfs_perform_write+0x5354/0x82c8 fs/ntfs/file.c:1853
 ntfs_file_write_iter+0xf3c/0x1738 fs/ntfs/file.c:1909
 call_write_iter include/linux/fs.h:2020 [inline]
 new_sync_write fs/read_write.c:491 [inline]
 vfs_write+0x610/0x910 fs/read_write.c:584
 ksys_write+0x15c/0x26c fs/read_write.c:637
 __do_sys_write fs/read_write.c:649 [inline]
 __se_sys_write fs/read_write.c:646 [inline]
 __arm64_sys_write+0x7c/0x90 fs/read_write.c:646
 __invoke_syscall arch/arm64/kernel/syscall.c:37 [inline]
 invoke_syscall+0x98/0x2b8 arch/arm64/kernel/syscall.c:51
 el0_svc_common+0x130/0x23c arch/arm64/kernel/syscall.c:136
 do_el0_svc+0x48/0x58 arch/arm64/kernel/syscall.c:155
 el0_svc+0x54/0x158 arch/arm64/kernel/entry-common.c:678
 el0t_64_sync_handler+0x84/0xfc arch/arm64/kernel/entry-common.c:696
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:595

The buggy address belongs to the physical page:
page:000000003d2e8ed5 refcount:0 mapcount:0 mapping:0000000000000000 index:0x1 pfn:0x11e9b6
flags: 0x5ffc00000000000(node=0|zone=2|lastcpupid=0x7ff)
page_type: 0xffffffff()
raw: 05ffc00000000000 fffffc00037a6dc8 fffffc00037a6d48 0000000000000000
raw: 0000000000000001 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff0000de9b6000: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff0000de9b6080: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff0000de9b6100: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                                             ^
 ffff0000de9b6180: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff0000de9b6200: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

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
