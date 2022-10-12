Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C271D5FC13E
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 12 Oct 2022 09:25:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oiW79-0007PQ-KJ;
	Wed, 12 Oct 2022 07:25:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3V2JGYwkbAFYGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oiVU0-0005jV-TK for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 12 Oct 2022 06:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i/cEeMnxUyYtlzGNdJb4eRNAIE0sJPI54U1V6FnSsoY=; b=A5ls0d+QJNgF9n1/hl3GPEpPoB
 ByRUkNwPPomW+jWkNrl9CdeXTPn7xr7uYm3/TL3EWIPsECbjpsnK0psZLjB8u/3RDh/awVutPk1Uh
 o1tMuFqR+op1kuAihEeLhGQ0Wt8akX0OYmxAUmm+N2paugBGes9Sjm8sOjsuZkk85HXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=i/cEeMnxUyYtlzGNdJb4eRNAIE0sJPI54U1V6FnSsoY=; b=S
 8PL/7SatB3ItklElwWOlt0PqIl4dypDngDGPVBtbgEPSHLLc/va+fhl/0ddFxvoNRMStZPSXVJxS1
 w9z9WL4DEv7ft3iPBjWLUvAelOb95SmD1W1m+X0n/SYCmX9jfiV1hp+I4EM3SKKuBHny7WmuU/v3N
 nEC9YkonK8Vo40kI=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oiVTw-0002Oi-MT for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 12 Oct 2022 06:44:48 +0000
Received: by mail-il1-f198.google.com with SMTP id
 h10-20020a056e021d8a00b002f99580de6cso12606345ila.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 11 Oct 2022 23:44:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=i/cEeMnxUyYtlzGNdJb4eRNAIE0sJPI54U1V6FnSsoY=;
 b=EFdXNnU3ZSnczQuDbhYwcq0psqGEiPnGqNwAFWg3BH8UJ8+rZFPBCo/2QgW1wy8GPN
 b1Mv1hT9E3yJqtyi4VJfNB7SVrr/4D+9R6uNIAonymciXk6ruEYaDlAJR+YXOubyBZSu
 j9BcM5cWrI1mhAFzIY4ZE2Bd8QvpORT55iYPPXJvhDBUHRB1jM36j3MqUz3XjIyAj3Vr
 EhfXZdtjp0Wl3NQL6/R8orF2qcaacduBsB/Gjij29hQPxmyp3YHa+PBkdTzHYpZ1Zknt
 isFaChQ5fin7HE5w02En/rP0a2LyfPMU1t7mcSBDSyh8bOXFWVvk/BGNynRlUwp0YCS4
 84Yg==
X-Gm-Message-State: ACrzQf1x2Ge2fLzcmKXR2hnKck/r3jy9TCg7ktEJ5swChKiJcM2vt/c0
 UDldCiis0pjj29clkY2VhKuXqDS+FA+tMbVqlQCISs1X10fU
X-Google-Smtp-Source: AMsMyM5mQjiP8MqSAgNvpIhJgd0zb3FsAWqVQ5iaq8KGovxqDBZKVfQ9+qDM4JcqcW72D+ejNEgYfNVbV2zi8BqK/nNYulKAuEPy
MIME-Version: 1.0
X-Received: by 2002:a02:a510:0:b0:363:7345:2f5f with SMTP id
 e16-20020a02a510000000b0036373452f5fmr13720641jam.314.1665557079729; Tue, 11
 Oct 2022 23:44:39 -0700 (PDT)
Date: Tue, 11 Oct 2022 23:44:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000172d9905ead0babe@google.com>
From: syzbot <syzbot+64f73ab552d413b202e2@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 493ffd6605b2
 Merge tag 'ucount-rlimits-cleanups-for-v5.19'.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=162a0194880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
X-Headers-End: 1oiVTw-0002Oi-MT
X-Mailman-Approved-At: Wed, 12 Oct 2022 07:25:13 +0000
Subject: [Linux-NTFS-Dev] [syzbot] kernel BUG in
 ntfs_prepare_pages_for_non_resident_write
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

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=162a0194880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=64f73ab552d413b202e2
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+64f73ab552d413b202e2@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at fs/ntfs/file.c:951!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 26428 Comm: syz-executor.4 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:ntfs_prepare_pages_for_non_resident_write+0x72c1/0x7700 fs/ntfs/file.c:951
Code: 8a e8 23 5b 08 ff 0f 0b e8 dc 44 cc fe 0f 0b e8 d5 44 cc fe 4c 89 f7 48 c7 c6 c0 66 c5 8a e8 06 5b 08 ff 0f 0b e8 bf 44 cc fe <0f> 0b e8 b8 44 cc fe 0f 0b 83 fb e4 0f 85 1f 04 00 00 e8 a8 44 cc
RSP: 0018:ffffc900047ff680 EFLAGS: 00010293
RAX: ffffffff82ba3c91 RBX: 0000000000001000 RCX: ffff888022639d80
RDX: 0000000000000000 RSI: 0000000000001000 RDI: 0000000000001000
RBP: ffffc900047ff970 R08: ffffffff82b9eb44 R09: ffffffff82b9eab1
R10: 0000000000000002 R11: ffff888022639d80 R12: ffff88807cbcf830
R13: 0000000000000000 R14: 1ffff1100f979f06 R15: ffff88807f537a28
FS:  00007f829496f700(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f829492cfc0 CR3: 0000000072b4c000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 ntfs_perform_write fs/ntfs/file.c:1844 [inline]
 ntfs_file_write_iter+0x1938/0x2d40 fs/ntfs/file.c:1917
 do_iter_write+0x6c2/0xc20 fs/read_write.c:861
 vfs_writev fs/read_write.c:934 [inline]
 do_pwritev+0x200/0x350 fs/read_write.c:1031
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f829388b5a9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f829496f168 EFLAGS: 00000246 ORIG_RAX: 0000000000000148
RAX: ffffffffffffffda RBX: 00007f82939ac050 RCX: 00007f829388b5a9
RDX: 0000000000000001 RSI: 0000000020003380 RDI: 0000000000000003
RBP: 00007f82938e6580 R08: 0000000000000000 R09: 0000000000000003
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc7b4af7cf R14: 00007f829496f300 R15: 0000000000022000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_prepare_pages_for_non_resident_write+0x72c1/0x7700 fs/ntfs/file.c:951
Code: 8a e8 23 5b 08 ff 0f 0b e8 dc 44 cc fe 0f 0b e8 d5 44 cc fe 4c 89 f7 48 c7 c6 c0 66 c5 8a e8 06 5b 08 ff 0f 0b e8 bf 44 cc fe <0f> 0b e8 b8 44 cc fe 0f 0b 83 fb e4 0f 85 1f 04 00 00 e8 a8 44 cc
RSP: 0018:ffffc900047ff680 EFLAGS: 00010293
RAX: ffffffff82ba3c91 RBX: 0000000000001000 RCX: ffff888022639d80
RDX: 0000000000000000 RSI: 0000000000001000 RDI: 0000000000001000
RBP: ffffc900047ff970 R08: ffffffff82b9eb44 R09: ffffffff82b9eab1
R10: 0000000000000002 R11: ffff888022639d80 R12: ffff88807cbcf830
R13: 0000000000000000 R14: 1ffff1100f979f06 R15: ffff88807f537a28
FS:  00007f829496f700(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fbfa8981998 CR3: 0000000072b4c000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
