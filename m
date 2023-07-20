Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 092AE761885
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 25 Jul 2023 14:40:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qOHKz-0003A8-NQ;
	Tue, 25 Jul 2023 12:40:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rF-5ZAkbAH0tz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qMWRx-0001UE-FY for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 20 Jul 2023 16:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hZgxkQMXMHZ9+OC0sKC6qqkU3MCYpI7QdzqJaC1vJ3k=; b=MYS6OgSRbPIQ6raietQB/fjm3m
 NrZ36I+pTVIcU1DAzHu/YY79TurbqX52JQd6oFhGn3jNLukUb/UvKWkkq6sV8ZkLKZ19AF+XO6blY
 vQDVNqgStQEexlLwNvaawr/Cu24xC5Hg1fz/9grdpF8+7CP6gSbv+r94/b41X2z3fZCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hZgxkQMXMHZ9+OC0sKC6qqkU3MCYpI7QdzqJaC1vJ3k=; b=Y
 qMbJjTsOn+nBaonS1o8ofLgrkVJLQygAdGCHfSnbvvyYENxdde41rhIRWiOebuAb79+OdtTI5HRf0
 6X7hy/hoGZM4lBGgKBA226pum44mUxJ/y4fntNwkIdc++SkFMNW/pUUHb+7LyOjf7Klnw5mDVuKHp
 ihpqpv5YvaQDP4Z8=;
Received: from mail-ot1-f80.google.com ([209.85.210.80])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMWRu-00EFZj-IM for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 20 Jul 2023 16:24:20 +0000
Received: by mail-ot1-f80.google.com with SMTP id
 46e09a7af769-6b9e16f97b3so1642350a34.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 Jul 2023 09:24:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689870253; x=1690475053;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=hZgxkQMXMHZ9+OC0sKC6qqkU3MCYpI7QdzqJaC1vJ3k=;
 b=gFIJs6sXZekZv9ufoz9mwkyL8oCSNvSmTKJ2zwyZw9O54uNpbRRCZ9wLqpvmQhqIFV
 sfaIWaeMHqx4mOgRpEP++JuAXlTMa8k7s4Qs36C8TIBdbQb4dIUSCVh8Q2+yr22spUQh
 ynoaK4Tf/10aJpNsVckRMX+nYk0H1Zv062m3RQD8St0LGQXwT2uMS7SVL0O0IPQUArp4
 JZo1X77ivc6ROCmmd33PvDSnW2ReujbGNxDP3fnphUT2HE8ymZ81vA00+uXYrIxlR2lg
 53Y9cNutbGl7m4uPqudMPN2qFcpQSGIfUXhAFPFxok8InxD3b3b+EQqZq/h4DmuNMpCa
 z6Vw==
X-Gm-Message-State: ABy/qLbl8EEZx/Rbwhs62PGvT+DXrdRTRwyuvjMtnlF4GGUsjGJY5Fob
 K5fuEikk2XcV9PsEh4tSWNhYbnK0SuU+ChBt2tIk5fdlO8Yf
X-Google-Smtp-Source: APBJJlECdsT0/IpdkhEpqH/vawiQlSELUVsBcb1GXH05c8EuNrJil8ny7L5P1rDA3svYF+vDEN037VvWLSrDmNpYNr6ZTtfjSHIN
MIME-Version: 1.0
X-Received: by 2002:a9d:7e85:0:b0:6b9:dc90:e351 with SMTP id
 m5-20020a9d7e85000000b006b9dc90e351mr3865369otp.6.1689870252989; Thu, 20 Jul
 2023 09:24:12 -0700 (PDT)
Date: Thu, 20 Jul 2023 09:24:12 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002562100600ed9473@google.com>
From: syzbot <syzbot+84b5465f68c3eb82c161@syzkaller.appspotmail.com>
To: anton@tuxera.com, brauner@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 831fe284d827
 Merge tag 'spi-fix-v6.5-rc1' of git://git.ker.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=179dc062a80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.80 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.80 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qMWRu-00EFZj-IM
X-Mailman-Approved-At: Tue, 25 Jul 2023 12:40:24 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] BUG: unable to handle kernel
 paging request in lookup_open
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

HEAD commit:    831fe284d827 Merge tag 'spi-fix-v6.5-rc1' of git://git.ker..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=179dc062a80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ae56ea581f8fd3f3
dashboard link: https://syzkaller.appspot.com/bug?extid=84b5465f68c3eb82c161
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13a52a24a80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=156f908aa80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/255bb08af694/disk-831fe284.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8739de7ceb20/vmlinux-831fe284.xz
kernel image: https://storage.googleapis.com/syzbot-assets/612168188f94/bzImage-831fe284.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/ec45a7fef710/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+84b5465f68c3eb82c161@syzkaller.appspotmail.com

ntfs: (device loop0): check_windows_hibernation_status(): Failed to find inode number for hiberfil.sys.
ntfs: (device loop0): load_system_files(): Failed to determine if Windows is hibernated.  Mounting read-only.  Run chkdsk.
BUG: unable to handle page fault for address: ffffffffff0000ab
#PF: supervisor read access in kernel mode
#PF: error_code(0x0000) - not-present page
PGD c779067 P4D c779067 PUD c77b067 PMD c79b067 PTE 0
Oops: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 5011 Comm: syz-executor282 Not tainted 6.5.0-rc1-syzkaller-00259-g831fe284d827 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/03/2023
RIP: 0010:lookup_open.isra.0+0x94b/0x1360 fs/namei.c:3484
Code: ff 48 85 ed 0f 85 37 05 00 00 e8 40 f4 9a ff 4c 89 fa 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 80 3c 02 00 0f 85 73 08 00 00 <48> 83 7b 68 00 0f 85 a3 f9 ff ff e8 15 f4 9a ff 8b 6c 24 20 31 ff
RSP: 0018:ffffc9000340f968 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: ffffffffff000043 RCX: 0000000000000000
RDX: 1fffffffffe00015 RSI: ffffffff81ea92c0 RDI: ffffffff8ac7e2e0
RBP: ffffffffff000043 R08: 0000000000000000 R09: fffffbfff1d5590a
R10: ffffffff8eaac857 R11: ffffffff8a30a1e8 R12: 00000000ffffffe2
R13: ffff888071f22540 R14: 0000000010000000 R15: ffffffffff0000ab
FS:  00005555558ec380(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff0000ab CR3: 0000000020267000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 open_last_lookups fs/namei.c:3560 [inline]
 path_openat+0x931/0x29c0 fs/namei.c:3790
 do_filp_open+0x1de/0x430 fs/namei.c:3820
 do_sys_openat2+0x176/0x1e0 fs/open.c:1407
 do_sys_open fs/open.c:1422 [inline]
 __do_sys_creat fs/open.c:1498 [inline]
 __se_sys_creat fs/open.c:1492 [inline]
 __x64_sys_creat+0xcd/0x120 fs/open.c:1492
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f8ff6fb95b9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd29797788 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
RAX: ffffffffffffffda RBX: 0031656c69662f2e RCX: 00007f8ff6fb95b9
RDX: 00007f8ff6fb88b0 RSI: 0000000000000000 RDI: 0000000020000080
RBP: 00007f8ff704b610 R08: 000000000001ee42 R09: 0000000000000000
R10: 00007ffd29797650 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffd29797958 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
Modules linked in:
CR2: ffffffffff0000ab
---[ end trace 0000000000000000 ]---
RIP: 0010:lookup_open.isra.0+0x94b/0x1360 fs/namei.c:3484
Code: ff 48 85 ed 0f 85 37 05 00 00 e8 40 f4 9a ff 4c 89 fa 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 80 3c 02 00 0f 85 73 08 00 00 <48> 83 7b 68 00 0f 85 a3 f9 ff ff e8 15 f4 9a ff 8b 6c 24 20 31 ff
RSP: 0018:ffffc9000340f968 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: ffffffffff000043 RCX: 0000000000000000
RDX: 1fffffffffe00015 RSI: ffffffff81ea92c0 RDI: ffffffff8ac7e2e0
RBP: ffffffffff000043 R08: 0000000000000000 R09: fffffbfff1d5590a
R10: ffffffff8eaac857 R11: ffffffff8a30a1e8 R12: 00000000ffffffe2
R13: ffff888071f22540 R14: 0000000010000000 R15: ffffffffff0000ab
FS:  00005555558ec380(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff0000ab CR3: 0000000020267000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess):
   0:	ff 48 85             	decl   -0x7b(%rax)
   3:	ed                   	in     (%dx),%eax
   4:	0f 85 37 05 00 00    	jne    0x541
   a:	e8 40 f4 9a ff       	call   0xff9af44f
   f:	4c 89 fa             	mov    %r15,%rdx
  12:	48 b8 00 00 00 00 00 	movabs $0xdffffc0000000000,%rax
  19:	fc ff df
  1c:	48 c1 ea 03          	shr    $0x3,%rdx
  20:	80 3c 02 00          	cmpb   $0x0,(%rdx,%rax,1)
  24:	0f 85 73 08 00 00    	jne    0x89d
* 2a:	48 83 7b 68 00       	cmpq   $0x0,0x68(%rbx) <-- trapping instruction
  2f:	0f 85 a3 f9 ff ff    	jne    0xfffff9d8
  35:	e8 15 f4 9a ff       	call   0xff9af44f
  3a:	8b 6c 24 20          	mov    0x20(%rsp),%ebp
  3e:	31 ff                	xor    %edi,%edi


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the bug is already fixed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to change bug's subsystems, reply with:
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
