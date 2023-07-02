Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C5E74502E
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  2 Jul 2023 21:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qG2OU-0008Jc-1b;
	Sun, 02 Jul 2023 19:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3zZahZAkbAKweklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qFz4l-00016W-Jc for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 02 Jul 2023 15:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OVi90bVdhDhHrv1hOyRkeWClh+SrPWe4I4jxHii48pI=; b=Kf4dZcmUQPXZJIyvjg+rDtHkdP
 q9fBOtg2s+YTMkV/CeGNmDx2mBWaVvbug/BM3X8sgckgV1G9CIFcemaHs2S5FZAotChpWNfN/CPu3
 7ulhtVrCBvUt9Nnq+dYPr90WwmB2fZ+lplc0OeCQYVQMQcldgY3sWZlW8Jtcjne4E774=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OVi90bVdhDhHrv1hOyRkeWClh+SrPWe4I4jxHii48pI=; b=j
 fMgpblnxX2zf3BeaQuSzVRggunmA/SvmhByfLtz4x8Q1D7a2pfs0wl8lNJAnp6EMP/JsVaVfNvKkH
 uHuIHFAgcYQM++FAgjdYkKWceYtICDViy5UC57EWGqblmIHRdwSwGXWy1Xws1icdR7JFR82f35QeG
 jI+8SpC2KODIx0Xw=;
Received: from mail-oa1-f77.google.com ([209.85.160.77])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qFz4k-0045XC-76 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 02 Jul 2023 15:33:24 +0000
Received: by mail-oa1-f77.google.com with SMTP id
 586e51a60fabf-18efc03cbcaso3587063fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 02 Jul 2023 08:33:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688311996; x=1690903996;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OVi90bVdhDhHrv1hOyRkeWClh+SrPWe4I4jxHii48pI=;
 b=ca1ocvfvLvDxQricOaOSH78LzLFb1lQPhOm6uNk+lkrff1w988M/ggU8WLcrihGfaX
 D00cdB+UP+ND5yx1PJ/pAU0hvOXVFWlHCJPoLtBp2S+TNNL+GyZW1Dycac53sM9nhgsX
 TWpkjv564VNsI7Z9UlXmXBpzQtjNd5/OYSRbP6C3HkRjXxjbE1QfsXlHCmrArcdIt5Qi
 xAXN/C5Ympc7nLhATopyJiPFdtboP3HVV7QU12xcYzhKxQoRq/MxrcjRypPRqCbnnlJZ
 c8y7VtTYgOAk544qGQShMXB7xO9TLgrUMsLcHTLM3fhTEY1fRAWfAi6dSJtll0U2GQrW
 hz/Q==
X-Gm-Message-State: ABy/qLYZaYnJombtVh701F1Qz5SXUPL1QLbAcOw9K47VW0sjAl9QmNbT
 8JBmQGU5nAeDmehhfOFdKBKeYA+2Znv124EAnC3Ke+3x3dhY
X-Google-Smtp-Source: APBJJlGlo52aN0k88SOj5tWHpgSVkGmHRxkoy9lHKvk3R/YTSqO426XHN7xWBwwvpOs0MoDnCE26pHnQJF4EgsTwkPzZ7gDD4DzF
MIME-Version: 1.0
X-Received: by 2002:a17:90a:13c8:b0:263:2f09:20c3 with SMTP id
 s8-20020a17090a13c800b002632f0920c3mr5595730pjf.9.1688311501333; Sun, 02 Jul
 2023 08:25:01 -0700 (PDT)
Date: Sun, 02 Jul 2023 08:25:01 -0700
In-Reply-To: <00000000000046238c05f69776ab@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004eab7a05ff82a700@google.com>
From: syzbot <syzbot+72ba5fe5556d82ad118b@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: dfab92f27c60 Merge tag 'nfs-for-6.5-1' of git://git.linux-..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=137d57bf280000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.77 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qFz4k-0045XC-76
X-Mailman-Approved-At: Sun, 02 Jul 2023 19:05:57 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in
 ntfs_end_buffer_async_read
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

HEAD commit:    dfab92f27c60 Merge tag 'nfs-for-6.5-1' of git://git.linux-..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=137d57bf280000
kernel config:  https://syzkaller.appspot.com/x/.config?x=71a52faf60231bc7
dashboard link: https://syzkaller.appspot.com/bug?extid=72ba5fe5556d82ad118b
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c987eca80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=144a738f280000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/32f183ec0f2c/disk-dfab92f2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/e8f47f491184/vmlinux-dfab92f2.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ad90306c0fe6/bzImage-dfab92f2.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/bcae16df5190/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+72ba5fe5556d82ad118b@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at fs/ntfs/aops.c:130!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 21 Comm: ksoftirqd/1 Not tainted 6.4.0-syzkaller-10096-gdfab92f27c60 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 05/27/2023
RIP: 0010:ntfs_end_buffer_async_read+0xc7f/0x1540 fs/ntfs/aops.c:130
Code: ff e8 95 97 c8 fe 4c 89 ff 48 c7 c6 e0 6b 3a 8b e8 86 3b 09 ff 0f 0b e8 7f 97 c8 fe 0f 0b e8 78 97 c8 fe 0f 0b e8 71 97 c8 fe <0f> 0b e8 6a 97 c8 fe 4c 89 ff e8 b2 99 ff ff 48 89 c7 48 c7 c6 20
RSP: 0018:ffffc900001b7b10 EFLAGS: 00010246
RAX: ffffffff82c35a7f RBX: 0000000000000010 RCX: ffff888014e59dc0
RDX: 0000000080000100 RSI: 0000000000020211 RDI: 0000000000001000
RBP: ffff8880771e8270 R08: ffffffff82c3547a R09: 1ffff1100ee3d00a
R10: dffffc0000000000 R11: ffffed100ee3d00b R12: 0000000000000000
R13: 0000000000020211 R14: 0000000000000001 R15: ffffea0001d76500
FS:  0000000000000000(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc42b480940 CR3: 00000000219c3000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 end_bio_bh_io_sync+0xb7/0x110 fs/buffer.c:2794
 req_bio_endio block/blk-mq.c:766 [inline]
 blk_update_request+0x53f/0x1020 block/blk-mq.c:911
 blk_mq_end_request+0x50/0x310 block/blk-mq.c:1032
 blk_complete_reqs block/blk-mq.c:1110 [inline]
 blk_done_softirq+0x103/0x150 block/blk-mq.c:1115
 __do_softirq+0x2ab/0x908 kernel/softirq.c:553
 run_ksoftirqd+0xc5/0x120 kernel/softirq.c:921
 smpboot_thread_fn+0x533/0x9f0 kernel/smpboot.c:164
 kthread+0x2b8/0x350 kernel/kthread.c:389
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:308
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_end_buffer_async_read+0xc7f/0x1540 fs/ntfs/aops.c:130
Code: ff e8 95 97 c8 fe 4c 89 ff 48 c7 c6 e0 6b 3a 8b e8 86 3b 09 ff 0f 0b e8 7f 97 c8 fe 0f 0b e8 78 97 c8 fe 0f 0b e8 71 97 c8 fe <0f> 0b e8 6a 97 c8 fe 4c 89 ff e8 b2 99 ff ff 48 89 c7 48 c7 c6 20
RSP: 0018:ffffc900001b7b10 EFLAGS: 00010246
RAX: ffffffff82c35a7f RBX: 0000000000000010 RCX: ffff888014e59dc0
RDX: 0000000080000100 RSI: 0000000000020211 RDI: 0000000000001000
RBP: ffff8880771e8270 R08: ffffffff82c3547a R09: 1ffff1100ee3d00a
R10: dffffc0000000000 R11: ffffed100ee3d00b R12: 0000000000000000
R13: 0000000000020211 R14: 0000000000000001 R15: ffffea0001d76500
FS:  0000000000000000(0000) GS:ffff8880b9900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fc42b480940 CR3: 00000000219c3000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
