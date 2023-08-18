Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 165297812E1
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 20:27:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX4Bt-0000Fw-JF;
	Fri, 18 Aug 2023 18:27:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3B5nfZAkbAOQYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qX2Dd-0007hM-Qf for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 16:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VuwzUPjXt7TmzywKLvQ4lTRd5/cHVY/sj2+vqmzpVSI=; b=KiTro1S2bVj1BF0YcA2ucvMGl8
 kSzzfI4Yiyajwbah49BrdOndNiog/4kZzYkMNccjB8P+yqu8p0rM0mWfo329mI8depberiAf7gXPa
 U0eGsS2AownLHKk4CnH2lXmmBvy4gS8+xSOGXSHSJ9ga1CLX6Xn223XyOmCN1FhVSuxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VuwzUPjXt7TmzywKLvQ4lTRd5/cHVY/sj2+vqmzpVSI=; b=H
 Cq8xAZnoydNo0F7O3kdAVzEHAmnThUNh5JPzyOwN7lesQ6kbIlWprq6b8+CpUHokmED90rkG/JV2H
 7D8MHxWZmNPVIuTSvd3eCJUygZ99gWhSQiRXsNFuRmdF8L1vKSpl/NXnWI0F9sSjgtCstY18nkjbk
 haZvm6miD/rfCq5s=;
Received: from mail-yw1-f207.google.com ([209.85.128.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qX2Dd-0004dy-BZ for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 16:21:01 +0000
Received: by mail-yw1-f207.google.com with SMTP id
 00721157ae682-58e49935630so22722177b3.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 18 Aug 2023 09:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692375655; x=1692980455;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VuwzUPjXt7TmzywKLvQ4lTRd5/cHVY/sj2+vqmzpVSI=;
 b=b0QvJgc8zdSZ7vGgudlGvLa2lu3tGzikY+w4VUQIZhqrCmJtyQ4rGJQhMoUq1mFyTF
 HYg+UfWSJAMXGo7UaCrs44LopQ6lkJdy7PMLfNO4ucv9sAGh8RervlUf9jnEiSfAxyli
 /YzuS5wUzplgP4jPW+ano+BY2Q3+oC21FUGVYYc9n+XdiMcDCsXetmGiKMxCar5R2Ug7
 m4RRQe3T+AsFypDqJlP9mjcbJurQVeH2heF0VZAI2nWG9vhC/3w1ekp++9TnNMhC5e5I
 LiIz0bHOwuL0JoUjUe1C5V2+CX43TnNsqVbXyfdAiHfVlqP3e8zSsPOhGcrT8KVvGGYB
 6psw==
X-Gm-Message-State: AOJu0YzP9zFEinKs04OEnaW1iqJrymaHvyDP2YQYq98FQjeQkVbcuaLJ
 OegUWCTJrXD444ZWfYDMSu9kPtD4+4SmW1hdE/720057RLTW
X-Google-Smtp-Source: AGHT+IEuu4pT1WDkm/7ME68GqceyeL/1NscIPD4/uelyyIBtEeUb4JPArXxOFMUuyXTpbq3JLRe8WZb0TpXdCHDcdwfrrSeERsUt
MIME-Version: 1.0
X-Received: by 2002:a17:902:f685:b0:1bc:e37:aa5c with SMTP id
 l5-20020a170902f68500b001bc0e37aa5cmr1102919plg.1.1692375303276; Fri, 18 Aug
 2023 09:15:03 -0700 (PDT)
Date: Fri, 18 Aug 2023 09:15:03 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c74d44060334d476@google.com>
From: syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
To: anton@tuxera.com, brauner@kernel.org, ebiederm@xmission.com, 
 keescook@chromium.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com, 
 viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 16931859a650
 Merge tag 'nfsd-6.5-4' of git://git.kernel.or.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=13e2673da80000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.207 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1qX2Dd-0004dy-BZ
X-Mailman-Approved-At: Fri, 18 Aug 2023 18:27:18 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] WARNING in do_open_execat
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

HEAD commit:    16931859a650 Merge tag 'nfsd-6.5-4' of git://git.kernel.or..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=13e2673da80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=aa796b6080b04102
dashboard link: https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17cdbc65a80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1262d8cfa80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/eecc010800b4/disk-16931859.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f45ae06377a7/vmlinux-16931859.xz
kernel image: https://storage.googleapis.com/syzbot-assets/68891896edba/bzImage-16931859.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/4b6ab78b223a/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com

ntfs: volume version 3.1.
process 'syz-executor300' launched './file1' with NULL argv: empty string added
------------[ cut here ]------------
WARNING: CPU: 0 PID: 5020 at fs/exec.c:933 do_open_execat+0x18f/0x3f0 fs/exec.c:933
Modules linked in:
CPU: 0 PID: 5020 Comm: syz-executor300 Not tainted 6.5.0-rc6-syzkaller-00038-g16931859a650 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/26/2023
RIP: 0010:do_open_execat+0x18f/0x3f0 fs/exec.c:933
Code: 8e 46 02 00 00 41 0f b7 1e bf 00 80 ff ff 66 81 e3 00 f0 89 de e8 b1 67 9b ff 66 81 fb 00 80 0f 84 8b 00 00 00 e8 51 6c 9b ff <0f> 0b 48 c7 c3 f3 ff ff ff e8 43 6c 9b ff 4c 89 e7 e8 4b c9 fe ff
RSP: 0018:ffffc90003b0fd10 EFLAGS: 00010293
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: ffff888028401dc0 RSI: ffffffff81ea9c4f RDI: 0000000000000003
RBP: 1ffff92000761fa2 R08: 0000000000000003 R09: 0000000000008000
R10: 0000000000000000 R11: 0000000000000000 R12: ffff88802bf18780
R13: ffff888075d70000 R14: ffff8880742776a0 R15: 0000000000000001
FS:  000055555706b380(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffe0f1d3ff8 CR3: 0000000015f97000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 bprm_execve fs/exec.c:1830 [inline]
 bprm_execve+0x49d/0x1a50 fs/exec.c:1811
 do_execveat_common.isra.0+0x5d3/0x740 fs/exec.c:1963
 do_execve fs/exec.c:2037 [inline]
 __do_sys_execve fs/exec.c:2113 [inline]
 __se_sys_execve fs/exec.c:2108 [inline]
 __x64_sys_execve+0x8c/0xb0 fs/exec.c:2108
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fee7ec27b39
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe6c369d28 EFLAGS: 00000246 ORIG_RAX: 000000000000003b
RAX: ffffffffffffffda RBX: 0031656c69662f2e RCX: 00007fee7ec27b39
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000480
RBP: 00007fee7ec7004b R08: 000000000001ee3b R09: 0000000000000000
R10: 00007ffe6c369bf0 R11: 0000000000000246 R12: 00007fee7ec70055
R13: 00007ffe6c369f08 R14: 0000000000000001 R15: 0000000000000001
 </TASK>


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
