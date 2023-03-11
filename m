Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 934F36B9412
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xC-0001SE-MP;
	Tue, 14 Mar 2023 12:40:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NPULZAkbAHUlrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1paptj-0008PR-2u for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 11 Mar 2023 03:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wtqOT6CzflWo8NFA8wG8H31OfirdzkEX/EGftTEZpNg=; b=Hjy4+5NWYsWyy8te5aRNIGQp8x
 Z3kldaCaZMYGda9Qwm3Ao0WHWZy0oL0fibzshfNzh1dxyxqnvbImsYryqaKuQgVKGKhMUNrsMgD0S
 l35I0WGAbttoN135+6DPTsY8osGEePzn1Szor7SkfwKC0vMy90D4ncm4eTeOEwxja1vA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wtqOT6CzflWo8NFA8wG8H31OfirdzkEX/EGftTEZpNg=; b=d
 yJezUpj9Bz3LUnCDCXxBl0AUcoGTTRhXmADXGQZCFZHAaMABDjDGzdu0/riBwCUxvmFJaPVY/WVQ3
 29b3VW8TWyMkncZQ5nL3xkbBv34FOOOH/tKNgNtlDWsy6uID989LCWzRe0qoHq0fAVZ8WURTByOOa
 edd53qBHiFD2x920=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1papti-0003cM-Ry for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 11 Mar 2023 03:27:54 +0000
Received: by mail-io1-f72.google.com with SMTP id
 l7-20020a0566022dc700b0074cc9aba965so3456248iow.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 10 Mar 2023 19:27:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678505268;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wtqOT6CzflWo8NFA8wG8H31OfirdzkEX/EGftTEZpNg=;
 b=q/oUoufD3Na+IjSlInfI52HpRw8a10tQ3AjHwn3koUTzqQg/0zwdh14HKX44D9KlNT
 hHBBiPOS2z6grMH+oLa9VruywBW10OTKZPlpjy5+wtIysJ0ACu32ybANT3IBjp6dIKqd
 HsTwRZtXPL4FR/E7AvNczMgYegX4crlJAYsD54eNadxRx3iLvaLy06VyKTlJqH/CFdkm
 lnNXoMGBkFsWluxII9GwUFf6wEhFzyZnNP9jAqUeRMgBNv6c0nXAo5MqDs8f6MoYTrLY
 UVBsph91GQZ5mdzoIkhUmaMMxiT7KmwqKEZla/ah4s0iyKraWVgUVs9b/Khe0dzS5dUI
 1MBg==
X-Gm-Message-State: AO0yUKUIcx6VIUNeGLZbiBCVEAVdMbtrdE4YA4EX6S2f7q6jcIuy/p1d
 X4CrUglN8NCl3iIUsTt1T/sKwtZrZB0vtWSxZSB1cjteHXeS
X-Google-Smtp-Source: AK7set+4D5Nw+EclJocwfNOA8Kqg37WbZUpkaY1C3RDpU+kD5YQFWXAIFO9HzqJpX3OdbtVwZbhNeNchHqZsCFu2qTtIP4q6sPmE
MIME-Version: 1.0
X-Received: by 2002:a92:c04b:0:b0:315:7a34:224 with SMTP id
 o11-20020a92c04b000000b003157a340224mr2154493ilf.3.1678505268351; Fri, 10 Mar
 2023 19:27:48 -0800 (PST)
Date: Fri, 10 Mar 2023 19:27:48 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000046238c05f69776ab@google.com>
From: syzbot <syzbot+72ba5fe5556d82ad118b@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: fe15c26ee26e
 Linux 6.3-rc1 git tree:
 git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
 for-kernelci console output:
 https://syzkaller.appspot.com/x/log.txt?x=12feadbcc80000
 ke [...] Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1papti-0003cM-Ry
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in
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

Hello,

syzbot found the following issue on:

HEAD commit:    fe15c26ee26e Linux 6.3-rc1
git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
console output: https://syzkaller.appspot.com/x/log.txt?x=12feadbcc80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7573cbcd881a88c9
dashboard link: https://syzkaller.appspot.com/bug?extid=72ba5fe5556d82ad118b
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/89d41abd07bd/disk-fe15c26e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fa75f5030ade/vmlinux-fe15c26e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/590d0f5903ee/Image-fe15c26e.gz.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+72ba5fe5556d82ad118b@syzkaller.appspotmail.com

------------[ cut here ]------------
kernel BUG at fs/ntfs/aops.c:130!
Internal error: Oops - BUG: 00000000f2000800 [#1] PREEMPT SMP
Modules linked in:
CPU: 1 PID: 21 Comm: ksoftirqd/1 Not tainted 6.3.0-rc1-syzkaller-gfe15c26ee26e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
pstate: 00400005 (nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : ntfs_end_buffer_async_read+0xa28/0xb78 fs/ntfs/aops.c:130
lr : ntfs_end_buffer_async_read+0xa28/0xb78 fs/ntfs/aops.c:130
sp : ffff80001a477a30
x29: ffff80001a477a50 x28: ffff0001416534a0 x27: 0000000000000019
x26: dfff800000000000 x25: 0000000000001000 x24: ffff00013f9ed3a0
x23: 0000000000000000 x22: ffff00013f9ed6c0 x21: 0000000000000001
x20: 0000000000020211 x19: 0000000000000330 x18: 1fffe000368995b6
x17: ffff800015cdd000 x16: ffff80000826e470 x15: 0000000000000000
x14: 1ffff00002b9c0b2 x13: dfff800000000000 x12: 0000000000000003
x11: ff8080000965190c x10: 0000000000000000 x9 : ffff80000965190c
x8 : ffff0000c0af1b40 x7 : ffff800009651140 x6 : 0000000000000000
x5 : 0000000000000001 x4 : 0000000000000001 x3 : 0000000000000000
x2 : ffff80001a477940 x1 : 0000000000020211 x0 : 0000000000001000
Call trace:
 ntfs_end_buffer_async_read+0xa28/0xb78 fs/ntfs/aops.c:130
 end_bio_bh_io_sync+0xb0/0x194 fs/buffer.c:2703
 bio_endio+0x940/0x984 block/bio.c:1607
 req_bio_endio block/blk-mq.c:795 [inline]
 blk_update_request+0x444/0xdc0 block/blk-mq.c:927
 blk_mq_end_request+0x54/0x88 block/blk-mq.c:1054
 lo_complete_rq+0x140/0x258 drivers/block/loop.c:370
 blk_complete_reqs block/blk-mq.c:1132 [inline]
 blk_done_softirq+0x11c/0x168 block/blk-mq.c:1137
 __do_softirq+0x378/0xfbc kernel/softirq.c:571
 run_ksoftirqd+0x6c/0x148 kernel/softirq.c:934
 smpboot_thread_fn+0x4b0/0x96c kernel/smpboot.c:164
 kthread+0x24c/0x2d4 kernel/kthread.c:376
 ret_from_fork+0x10/0x20 arch/arm64/kernel/entry.S:870
Code: c8097e88 35ffffa9 17fffdb3 97bafdea (d4210000) 
---[ end trace 0000000000000000 ]---


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
