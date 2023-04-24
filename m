Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CEB6EC7FB
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 24 Apr 2023 10:40:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pqrkM-0001ya-ET;
	Mon, 24 Apr 2023 08:40:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3TS1GZAkbAOgcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pqqTE-0000R9-Le for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 24 Apr 2023 07:18:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GFjHqVN3r9rl/Ity1RCKxPqQxir+BteuTQ6+Y+6jxlM=; b=CfBxdWgL5+fkrZV0ynaM3JHINC
 krd6pcKlA8eTmfLdAlDt8XCPIY7WcHiuj3b0QrdebnNnlZGnL9XXeX18PQllLpbCq0JmrImj5u6LL
 0YFD4LwuOwYIZD4cpK5LasN6BBUgOPMnTvvkXwYxjkaFDudaJB+rzolf10H6/xivrEro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GFjHqVN3r9rl/Ity1RCKxPqQxir+BteuTQ6+Y+6jxlM=; b=b
 DJlGMQ+2bo8Pg6TS2ciS27S9rpHD2MTHNx3RIU9cU20BbyyIBX7cLqbmAtpMhY+a7dkK6Dd9eXGxL
 ybvz2zHCExXmXotm8GVDSrZLSNIzs2WYF0SUZSZaApvlRQL+HH0ARQZ+mQQpM83l860GIZJtrC65+
 QBt8/Z5BswSmtW/w=;
Received: from mail-io1-f78.google.com ([209.85.166.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pqqTD-00HOtm-74 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 24 Apr 2023 07:18:44 +0000
Received: by mail-io1-f78.google.com with SMTP id
 ca18e2360f4ac-760b58bcc0aso687591739f.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 24 Apr 2023 00:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682320717; x=1684912717;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=GFjHqVN3r9rl/Ity1RCKxPqQxir+BteuTQ6+Y+6jxlM=;
 b=WtWSDhZ5iZbwb6nYOtoxgMdsIwCmX5we8D9wJTB7fCDljF5zcfwbSQV3j88ysZiJ5w
 ndpt7eXXiFDt2WdgpDyFAYhKQ5whjxSLcN8k+4DMV/5xybYV0HAG/9Lc7Wo64ZIDRd2o
 NsoxiF1TzrDltuiRoLXELMeLbp5Tpew4zPFd8UseGxidzUTfsABIqkf2lz6bqSlVCB4q
 vXdOg4E26idooqc3c8LYEJkIUhA4Xw4P2Jkt4CRSY/3PcNhLv4VFAfO81qmVhNl6RkNC
 dyFvwLYqhaDtGd4Hy9gsrqa5Vi5B3ZbYkgLL4IaW7HV3vyDUD5m1ZhLrrsjJh8aXyM8I
 M69Q==
X-Gm-Message-State: AAQBX9eQXy2B/ITpluW7Nmxiouu97SOwJO7GEPsUnZeASp+O286Owv4Y
 tYTzFs2HZwexVtGWyYdEMyB2jFY92tDgmGf7PmhjY7LESmAz
X-Google-Smtp-Source: AKy350bAo9JTXvd2enneani5sy24Vu3xEuBPm4YkaZ+jncpTkWnE8xP3quj3/LCXVSrS1c7GDPuy6KcTQ3qk7ee0vFo/s+Ec0Kzn
MIME-Version: 1.0
X-Received: by 2002:a02:a112:0:b0:40f:99ae:dba8 with SMTP id
 f18-20020a02a112000000b0040f99aedba8mr4370090jag.1.1682320717603; Mon, 24 Apr
 2023 00:18:37 -0700 (PDT)
Date: Mon, 24 Apr 2023 00:18:37 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c5681205fa0fd089@google.com>
From: syzbot <syzbot+41ee2d2dcc4fc2f2f60c@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
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
 syzbot found the following issue on: HEAD commit: 8e41e0a57566
 Revert "ACPICA: Events: Support fixed PCIe wa.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=15ba50f0280000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1pqqTD-00HOtm-74
X-Mailman-Approved-At: Mon, 24 Apr 2023 08:40:29 +0000
Subject: [Linux-ntfs-dev] [syzbot] [fs?] BUG: unable to handle kernel NULL
 pointer dereference in filemap_read_folio (2)
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

HEAD commit:    8e41e0a57566 Revert "ACPICA: Events: Support fixed PCIe wa..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15ba50f0280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4afb87f3ec27b7fd
dashboard link: https://syzkaller.appspot.com/bug?extid=41ee2d2dcc4fc2f2f60c
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/69cc9a5732ed/disk-8e41e0a5.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/f32a5c8e9e68/vmlinux-8e41e0a5.xz
kernel image: https://storage.googleapis.com/syzbot-assets/0b56460ca80d/bzImage-8e41e0a5.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+41ee2d2dcc4fc2f2f60c@syzkaller.appspotmail.com

ntfs: (device loop1): ntfs_mapping_pairs_decompress(): Corrupt attribute.
ntfs: (device loop1): ntfs_read_block(): Failed to read from inode 0xa, attribute type 0x80, vcn 0x1, offset 0x0 because its location on disk could not be determined even after retrying (error code -5).
ntfs: (device loop1): ntfs_mapping_pairs_decompress(): Corrupt attribute.
ntfs: volume version 3.1.
BUG: kernel NULL pointer dereference, address: 0000000000000000
#PF: supervisor instruction fetch in kernel mode
#PF: error_code(0x0010) - not-present page
PGD 29114067 P4D 29114067 PUD 2776f067 PMD 0 
Oops: 0010 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 19582 Comm: syz-executor.1 Not tainted 6.3.0-rc7-syzkaller-00181-g8e41e0a57566 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/14/2023
RIP: 0010:0x0
Code: Unable to access opcode bytes at 0xffffffffffffffd6.
RSP: 0018:ffffc900125ff618 EFLAGS: 00010283
RAX: ffffffff81ba3fa1 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc90014e2c000 RSI: ffffea0001781100 RDI: 0000000000000000
RBP: ffffc900125ff6f0 R08: dffffc0000000000 R09: fffff940002f0221
R10: 0000000000000000 R11: dffffc0000000001 R12: ffffea0001781100
R13: 1ffffd40002f0221 R14: 0000000000000000 R15: ffffea0001781108
FS:  00007f75f3998700(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffffffffd6 CR3: 00000000393e4000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 filemap_read_folio+0x19d/0x7a0 mm/filemap.c:2424
 do_read_cache_folio+0x2ee/0x820 mm/filemap.c:3683
 do_read_cache_page+0x32/0x230 mm/filemap.c:3749
 read_mapping_page include/linux/pagemap.h:769 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 ntfs_check_logfile+0x3e1/0x28b0 fs/ntfs/logfile.c:532
 load_and_check_logfile+0x6f/0xd0 fs/ntfs/super.c:1223
 load_system_files+0x32fb/0x4840 fs/ntfs/super.c:1949
 ntfs_fill_super+0x19b4/0x2bd0 fs/ntfs/super.c:2900
 mount_bdev+0x271/0x3a0 fs/super.c:1380
 legacy_get_tree+0xef/0x190 fs/fs_context.c:610
 vfs_get_tree+0x8c/0x270 fs/super.c:1510
 do_new_mount+0x28f/0xae0 fs/namespace.c:3042
 do_mount fs/namespace.c:3385 [inline]
 __do_sys_mount fs/namespace.c:3594 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3571
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f75f2c8d69a
Code: 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f75f3997f88 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 000000000001ec6a RCX: 00007f75f2c8d69a
RDX: 0000000020000100 RSI: 000000002001ecc0 RDI: 00007f75f3997fe0
RBP: 00007f75f3998020 R08: 00007f75f3998020 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000202 R12: 0000000020000100
R13: 000000002001ecc0 R14: 00007f75f3997fe0 R15: 0000000020000140
 </TASK>
Modules linked in:
CR2: 0000000000000000
---[ end trace 0000000000000000 ]---
RIP: 0010:0x0
Code: Unable to access opcode bytes at 0xffffffffffffffd6.
RSP: 0018:ffffc900125ff618 EFLAGS: 00010283
RAX: ffffffff81ba3fa1 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc90014e2c000 RSI: ffffea0001781100 RDI: 0000000000000000
RBP: ffffc900125ff6f0 R08: dffffc0000000000 R09: fffff940002f0221
R10: 0000000000000000 R11: dffffc0000000001 R12: ffffea0001781100
R13: 1ffffd40002f0221 R14: 0000000000000000 R15: ffffea0001781108
FS:  00007f75f3998700(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffffffffd6 CR3: 00000000393e4000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
