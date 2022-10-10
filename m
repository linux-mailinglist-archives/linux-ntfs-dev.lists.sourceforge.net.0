Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 398935FA2C8
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 10 Oct 2022 19:38:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ohwjb-0003wJ-Q8;
	Mon, 10 Oct 2022 17:38:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3iFJEYwkbAF8PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ohwKg-0000s3-EI for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 10 Oct 2022 17:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u+cVvgKTc0S6iXvwi5+JFXP/G/CcmcMrkHxnoV/ojow=; b=VQDbesL9v8QU1XL/nbqI3fNXAu
 SKSNhSK1oUuylbZcQiwLjsPNp4uYhUB+PTRMQCoQ8X0MBxt4h8L0vnWCRugLTbuubnhMYd2OzvClO
 MM3/3lgVolzEQH149vxkqQdOExQcCm2HIxnQBH2O7FdBbdwDm66f5xQM7PWqi+lSUoS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u+cVvgKTc0S6iXvwi5+JFXP/G/CcmcMrkHxnoV/ojow=; b=M
 5NH6l3VF8WBB7BQdlppEUULhDfClDScgOfQMBlhzROmF4gFky/1sLORTR7lP9BtNbj7mpWL2yIHke
 ebeuidZpptjCJ4uD9N+vyYo9Ex7QX/V20HCLyQQaRxa6hGn70J1Sz5b3zj7KrSwXyKbzlQtvIatUR
 zlk/f6TtYaSvGzAw=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohwKc-0001xu-9j for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 10 Oct 2022 17:12:50 +0000
Received: by mail-io1-f72.google.com with SMTP id
 a15-20020a6b660f000000b006a0d0794ad1so7590237ioc.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 10 Oct 2022 10:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u+cVvgKTc0S6iXvwi5+JFXP/G/CcmcMrkHxnoV/ojow=;
 b=IWLreti0WBXGNY24ab5LWADn4BjMctRFuF2Tr0EtexeElbv3VMmIGokx66lY8VIoBi
 5+l4bi2aR6Z4l1TOn+9BuaLCl6yrP+McA6jQFxrFgwJqmHCIg7F3XsvRGDfd3bEVQjJc
 t6VTtfHRZwPVQUspF93AJ4hVD9VCqzqkhq4FwJljgGw1Rm395uFoHkmc9imOPzrN3+rz
 pjGpJqrMHGAKKSbyYeeLXuks6aOsRLWxbskCtWHTRX2hewBMj2tcAygSQR3IIZGEj8bi
 onRkCC/czo+J3NNDKHS7lUdn+vnZA8/yRG2kFAF+fWBR7bCIIHIDRVYHDm4NfNsJprTP
 pn5g==
X-Gm-Message-State: ACrzQf04WTiluqlWBNsUdENZMK9ipi+4QIpfPf2d0otfP8bXfQWOdJim
 4+C4ybXl2PfUTKbcDujHVFpChxhHnI8i99ebhjDlEPawpYCP
X-Google-Smtp-Source: AMsMyM7y1XTVH+Xi0Uvy2FDpSLyOA7/Ca5WD5EW/eO2GaK1Jsxg1d2LVwcQZe6L/9dnCMXa5Z12NPae5iCKScs9rJl8RCBJJFxDZ
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2dd5:b0:6a2:38e6:eaad with SMTP id
 l21-20020a0566022dd500b006a238e6eaadmr9154762iow.144.1665421960781; Mon, 10
 Oct 2022 10:12:40 -0700 (PDT)
Date: Mon, 10 Oct 2022 10:12:40 -0700
In-Reply-To: <000000000000af0c0105e9f9e966@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005fa91605eab14476@google.com>
From: syzbot <syzbot+bd6d0c83fe8442ad6ef5@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 llvm@lists.linux.dev, nathan@kernel.org, ndesaulniers@google.com, 
 ntfs3@lists.linux.dev, syzkaller-bugs@googlegroups.com, trix@redhat.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: 493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=126d971c880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
X-Headers-End: 1ohwKc-0001xu-9j
X-Mailman-Approved-At: Mon, 10 Oct 2022 17:38:34 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] KASAN: slab-out-of-bounds Read in
 ntfs_fill_super
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

HEAD commit:    493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=126d971c880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
dashboard link: https://syzkaller.appspot.com/bug?extid=bd6d0c83fe8442ad6ef5
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17be583a880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1506f83a880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f1ff6481e26f/disk-493ffd66.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/101bd3c7ae47/vmlinux-493ffd66.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/8a813f4e8f0b/mount_3.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+bd6d0c83fe8442ad6ef5@syzkaller.appspotmail.com

ntfs3: loop3: RAW NTFS volume: Filesystem size 0.00 Gb > volume size 0.00 Gb. Mount in read-only
general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
CPU: 1 PID: 3641 Comm: syz-executor420 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:ntfs_init_from_boot fs/ntfs3/super.c:844 [inline]
RIP: 0010:ntfs_fill_super+0x15b5/0x42a0 fs/ntfs3/super.c:935
Code: 00 00 00 00 00 fc ff df 80 3c 08 00 74 08 48 89 df e8 ff 14 11 ff 4c 89 2b 4c 89 e8 48 c1 e8 03 48 b9 00 00 00 00 00 fc ff df <8a> 04 08 84 c0 0f 85 96 16 00 00 41 c7 45 00 46 49 4c 45 4d 8d 7d
RSP: 0018:ffffc90003fcfae0 EFLAGS: 00010202
RAX: 0000000000000002 RBX: ffff888075460080 RCX: dffffc0000000000
RDX: ffff8880203dd880 RSI: 0000000000000d40 RDI: 0000000000000000
RBP: ffffc90003fcfcb0 R08: ffffffff82c8d6e5 R09: fffffbfff1c19fde
R10: fffffbfff1c19fde R11: 1ffffffff1c19fdd R12: 00000000000001ff
R13: 0000000000000010 R14: ffff888075460320 R15: 0000000000000000
FS:  0000555555f93300(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555555f932c0 CR3: 0000000075ed4000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 get_tree_bdev+0x400/0x620 fs/super.c:1323
 vfs_get_tree+0x88/0x270 fs/super.c:1530
 do_new_mount+0x289/0xad0 fs/namespace.c:3040
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x2d3/0x3c0 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7efc95f6311a
Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffde97f1518 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 00007efc95f6311a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffde97f1530
RBP: 00007ffde97f1530 R08: 00007ffde97f1570 R09: 0000555555f932c0
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000000000005
R13: 00007ffde97f1570 R14: 0000000000000037 R15: 0000000020000728
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_init_from_boot fs/ntfs3/super.c:844 [inline]
RIP: 0010:ntfs_fill_super+0x15b5/0x42a0 fs/ntfs3/super.c:935
Code: 00 00 00 00 00 fc ff df 80 3c 08 00 74 08 48 89 df e8 ff 14 11 ff 4c 89 2b 4c 89 e8 48 c1 e8 03 48 b9 00 00 00 00 00 fc ff df <8a> 04 08 84 c0 0f 85 96 16 00 00 41 c7 45 00 46 49 4c 45 4d 8d 7d
RSP: 0018:ffffc90003fcfae0 EFLAGS: 00010202
RAX: 0000000000000002 RBX: ffff888075460080 RCX: dffffc0000000000
RDX: ffff8880203dd880 RSI: 0000000000000d40 RDI: 0000000000000000
RBP: ffffc90003fcfcb0 R08: ffffffff82c8d6e5 R09: fffffbfff1c19fde
R10: fffffbfff1c19fde R11: 1ffffffff1c19fdd R12: 00000000000001ff
R13: 0000000000000010 R14: ffff888075460320 R15: 0000000000000000
FS:  0000555555f93300(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007efc95f1e668 CR3: 0000000075ed4000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess), 7 bytes skipped:
   0:	df 80 3c 08 00 74    	filds  0x7400083c(%rax)
   6:	08 48 89             	or     %cl,-0x77(%rax)
   9:	df e8                	fucomip %st(0),%st
   b:	ff 14 11             	callq  *(%rcx,%rdx,1)
   e:	ff 4c 89 2b          	decl   0x2b(%rcx,%rcx,4)
  12:	4c 89 e8             	mov    %r13,%rax
  15:	48 c1 e8 03          	shr    $0x3,%rax
  19:	48 b9 00 00 00 00 00 	movabs $0xdffffc0000000000,%rcx
  20:	fc ff df
* 23:	8a 04 08             	mov    (%rax,%rcx,1),%al <-- trapping instruction
  26:	84 c0                	test   %al,%al
  28:	0f 85 96 16 00 00    	jne    0x16c4
  2e:	41 c7 45 00 46 49 4c 	movl   $0x454c4946,0x0(%r13)
  35:	45
  36:	4d                   	rex.WRB
  37:	8d                   	.byte 0x8d
  38:	7d                   	.byte 0x7d



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
