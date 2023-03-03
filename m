Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A57E56AA58E
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  4 Mar 2023 00:23:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pYEkI-0002fx-VO;
	Fri, 03 Mar 2023 23:23:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3NjACZAkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pY9L4-0003Kf-MY for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 03 Mar 2023 17:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0CosFoSXFpJIF2mFdq6e5N6hPuvDMU0PAabkFcIAiRc=; b=McEtz/PkLBf7b2dWCsEKEBmvBb
 wMDp3zu+RIl6fCL9iOzMPf6kmkFB8h8TOvAByj1oF+K5BIvTF9t7x3d6LSUNG6ZAOGfyCZsbYK/6Z
 7gdnoxAN6qf4SE1SSN/2ko849NVVqt3RvkKg072L8ZORaOc41hBZvm7aCltsXV2tf2bk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0CosFoSXFpJIF2mFdq6e5N6hPuvDMU0PAabkFcIAiRc=; b=D
 nzY+j744ryHrDux9tYecAznlOQqC+a1ztKzJUZlmuiuyMzHH8brD8CYG4Du9yFaOdEYtSNgjUhhva
 KB/gxTYrku17rpttMpquk01YZfYWnyUyiZ9DIDp3cxvvDd3d4hPoL3ed4CSPM3Ds8Av4dxW2cSztN
 sTzdr9anN9TujDFU=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pY9L1-0006v8-Hk for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 03 Mar 2023 17:37:01 +0000
Received: by mail-io1-f69.google.com with SMTP id
 v4-20020a6b5b04000000b0074cb180c5e2so1680330ioh.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 03 Mar 2023 09:37:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0CosFoSXFpJIF2mFdq6e5N6hPuvDMU0PAabkFcIAiRc=;
 b=jvSOcUKuU+sBMG65su7Fm9XtYKhabMwd5vBA6D7Eem/gHjD0aIZdkHc5p39x263jQf
 kaO140rHBBcfZ8b+3E5RRrc+6SYzS4plDD31bq9FjVxQ2zSRjVt9FOM5YUowcXJLgl5w
 3wOISAFfG1YC2yXeZ8LzKCXXOaPgiyPk5STIOuHWBbu2FSFBAeEMqXBYMFg4aXrq0vBh
 52ggIUVRxJ/X/M1F15nUZ7GZPVITh22TROF6Rg0weHm69lrFpW+GmLhgzmxiXn9xxKhF
 JzbHOsmOZgyxZXXKPQ3AILfjOabBwBaGtvieS+yZ9j5v406uZxtC31xhFNUIrtv+uU8M
 QQEQ==
X-Gm-Message-State: AO0yUKXC09PheuFEZu2LKtNqCmr04iZT7s+ejIY5ymaagoMNtTsc3Gh6
 FcHWrgHwpnNHjrP35iGyd88hOe9wHmVR55s23Aj7R++N+Rfm
X-Google-Smtp-Source: AK7set/SWsId3AeRaBfKXrXymElZpbKFQJ24geHKmHFEfQZka/DTKJbT/NjFQAzLFCmJGwGWKJaPP07KUjGbEcO+iGsPIW1SptTh
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:11ac:b0:315:8d25:1eaf with SMTP id
 12-20020a056e0211ac00b003158d251eafmr1208423ilj.4.1677865014726; Fri, 03 Mar
 2023 09:36:54 -0800 (PST)
Date: Fri, 03 Mar 2023 09:36:54 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000002f18b905f6026455@google.com>
From: syzbot <syzbot+c601e38d15ce8253186a@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 04a357b1f6f0
 Merge tag 'mips_6.3_1' of git://git.kernel.or.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=144617acc80000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1pY9L1-0006v8-Hk
X-Mailman-Approved-At: Fri, 03 Mar 2023 23:23:24 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] UBSAN: shift-out-of-bounds in
 ntfs_read_inode_mount
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

HEAD commit:    04a357b1f6f0 Merge tag 'mips_6.3_1' of git://git.kernel.or..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=144617acc80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f763d89e26d3d4c4
dashboard link: https://syzkaller.appspot.com/bug?extid=c601e38d15ce8253186a
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/3e9f8326ebe2/disk-04a357b1.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/138ae11c9b96/vmlinux-04a357b1.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d0594947835d/bzImage-04a357b1.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c601e38d15ce8253186a@syzkaller.appspotmail.com

loop1: detected capacity change from 0 to 4096
================================================================================
UBSAN: shift-out-of-bounds in fs/ntfs/inode.c:1080:43
shift exponent 48 is too large for 32-bit type 'unsigned int'
CPU: 0 PID: 2557 Comm: syz-executor.1 Not tainted 6.2.0-syzkaller-13163-g04a357b1f6f0 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 02/16/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
 ntfs_read_locked_inode+0x4665/0x49c0 fs/ntfs/inode.c:1080
 ntfs_read_inode_mount+0xda6/0x2660 fs/ntfs/inode.c:2098
 ntfs_fill_super+0x1884/0x2bd0 fs/ntfs/super.c:2863
 mount_bdev+0x271/0x3a0 fs/super.c:1371
 legacy_get_tree+0xef/0x190 fs/fs_context.c:610
 vfs_get_tree+0x8c/0x270 fs/super.c:1501
 do_new_mount+0x28f/0xae0 fs/namespace.c:3042
 do_mount fs/namespace.c:3385 [inline]
 __do_sys_mount fs/namespace.c:3594 [inline]
 __se_sys_mount+0x2d9/0x3c0 fs/namespace.c:3571
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fee1468d62a
Code: 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 b8 04 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fee1548af88 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 000000000001f6d9 RCX: 00007fee1468d62a
RDX: 000000002001f6c0 RSI: 000000002001f640 RDI: 00007fee1548afe0
RBP: 00007fee1548b020 R08: 00007fee1548b020 R09: 000000000000870b
R10: 000000000000870b R11: 0000000000000202 R12: 000000002001f6c0
R13: 000000002001f640 R14: 00007fee1548afe0 R15: 0000000020000000
 </TASK>
================================================================================


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
