Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C0865776D
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 28 Dec 2022 14:55:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pAWtu-00087v-RT;
	Wed, 28 Dec 2022 13:55:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3J-2rYwkbANQIOPA0BB4H0FF83.6EE6B4KI4H2EDJ4DJ.2EC@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pAQfS-0005Fk-9N for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 28 Dec 2022 07:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=655N+tIzGER15hDg2+w2aVTOdEZ42xtdzbpTTh5jkcE=; b=FSnYK0B6O+9QER9KW63MkUAX/A
 4IIKYfYPWJkbedyH3Mxw925rtct9Q7rmkuDQXb8VoO703lprWgayNWzZw32fTbz7jFKa5jDm8ARqe
 HLk50jcNNNyxycgilzKtT3vJdq7mQ5KSMeBsrzKfSJ3yTe9ybj1CaQFLVwGHWRCkpfp8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=655N+tIzGER15hDg2+w2aVTOdEZ42xtdzbpTTh5jkcE=; b=Y
 Nt5q+e97X+DKna4EkV34gGt7SYVQKEpGvUg+281q5e+E97uy8IqjDPNvKyGuYanwk7iKR08gsQ1xJ
 Vg1WYI8i5TtXNA6Wl98zbygFaMD/0HIsoSKb2jQE3G/iAYab6O85YvMDZe3oqKlpTTks/ccIlxNPo
 mKZKuHqtfhRM6JR8=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pAQfN-00Eudv-0y for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 28 Dec 2022 07:16:01 +0000
Received: by mail-il1-f198.google.com with SMTP id
 l3-20020a056e021aa300b00304be32e9e5so9860854ilv.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 27 Dec 2022 23:15:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=655N+tIzGER15hDg2+w2aVTOdEZ42xtdzbpTTh5jkcE=;
 b=tKU6cHtnp2DxHieDzIB7i1DNRQ8tZmsC36l3TjDPn9gD97AAtIRqINVBZxPDcfBE2a
 3qdio2ZHRssp4RSE89alnI7KVz6mGBbfoVRom63RJK1GT0eAybNMb3f9gluu5mbEDMkq
 I/w4mYx/GOXB0lgiSXFVNKVzhDvqt8ofsPOMreO7YJRobGSP3zNH+F6pCWkE/uwcAjLM
 KaaEZ1r6yLeJB4P4QiHwSifkL2fp5OrF6IpRv9xIij+ej/PmlKlnNEfmNtO0LvDN1hrM
 WfdfHOaC/rnlR7Eo3viiZ4PatddenFN0KZ3As5ById+fKfwENThIHAsD6BQt2s/vCJ6M
 KXxw==
X-Gm-Message-State: AFqh2ko0FI6GK2IJ608vT2tS3k1mlWBI8ZFDXee7bNIPWTAslQZvyMYU
 YW2+ljT5HQeJvnXaKkQ1hy7g60TqtNGTrxh49SdrnW59/Q9m
X-Google-Smtp-Source: AMrXdXt/XIFTiF8NHEjlbJIuhp4GrxlvzWMi9TPOjn+Th6Ui0opRO+1plLWPxnHwXwg2RMzDcqCMGoewHPJzBcazwQVMnEJzVsVC
MIME-Version: 1.0
X-Received: by 2002:a05:6602:179e:b0:6e0:2859:d6a with SMTP id
 y30-20020a056602179e00b006e028590d6amr1484604iox.51.1672211751490; Tue, 27
 Dec 2022 23:15:51 -0800 (PST)
Date: Tue, 27 Dec 2022 23:15:51 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006fdad105f0de239e@google.com>
From: syzbot <syzbot+d36761079ac1b585a6df@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 51094a24b85e
 Merge tag 'hardening-v6.2-rc1-fixes' of git:/.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=11bbdeac480000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1pAQfN-00Eudv-0y
X-Mailman-Approved-At: Wed, 28 Dec 2022 13:55:21 +0000
Subject: [Linux-NTFS-Dev] [syzbot] [ntfs?] KASAN: slab-out-of-bounds Read in
 ntfs_readdir
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

HEAD commit:    51094a24b85e Merge tag 'hardening-v6.2-rc1-fixes' of git:/..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=11bbdeac480000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4e2d7bfa2d6d5a76
dashboard link: https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1052af90480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10874164480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/a26f3769fdfb/disk-51094a24.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/5decc3ae71d7/vmlinux-51094a24.xz
kernel image: https://storage.googleapis.com/syzbot-assets/dd2ac18a5b04/bzImage-51094a24.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/b59d615881ab/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d36761079ac1b585a6df@syzkaller.appspotmail.com

ntfs: (device loop0): map_mft_record_page(): Attempt to read mft record 0x10000, which is beyond the end of the mft.  This is probably a bug in the ntfs driver.
ntfs: (device loop0): map_mft_record(): Failed with error code 2.
==================================================================
BUG: KASAN: slab-out-of-bounds in ntfs_filldir fs/ntfs/dir.c:1021 [inline]
BUG: KASAN: slab-out-of-bounds in ntfs_readdir+0xebc/0x2bf0 fs/ntfs/dir.c:1200
Read of size 1 at addr ffff8880246e58f1 by task syz-executor221/5075

CPU: 1 PID: 5075 Comm: syz-executor221 Not tainted 6.1.0-syzkaller-14587-g51094a24b85e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x290 lib/dump_stack.c:106
 print_address_description+0x74/0x340 mm/kasan/report.c:306
 print_report+0x107/0x1f0 mm/kasan/report.c:417
 kasan_report+0xcd/0x100 mm/kasan/report.c:517
 ntfs_filldir fs/ntfs/dir.c:1021 [inline]
 ntfs_readdir+0xebc/0x2bf0 fs/ntfs/dir.c:1200
 iterate_dir+0x257/0x5f0
 __do_sys_getdents64 fs/readdir.c:369 [inline]
 __se_sys_getdents64+0x1db/0x4c0 fs/readdir.c:354
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f883ddee779
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 51 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc802e3ce8 EFLAGS: 00000246 ORIG_RAX: 00000000000000d9
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f883ddee779
RDX: 0000000000000098 RSI: 0000000020000080 RDI: 0000000000000004
RBP: 00007f883ddae010 R08: 0000000000000000 R09: 0000000000000000
R10: 000000000001e706 R11: 0000000000000246 R12: 00007f883ddae0a0
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>

Allocated by task 5075:
 kasan_save_stack mm/kasan/common.c:45 [inline]
 kasan_set_track+0x3d/0x60 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:371 [inline]
 __kasan_kmalloc+0x97/0xb0 mm/kasan/common.c:380
 kasan_kmalloc include/linux/kasan.h:211 [inline]
 __do_kmalloc_node mm/slab_common.c:968 [inline]
 __kmalloc+0xaf/0x190 mm/slab_common.c:981
 kmalloc include/linux/slab.h:584 [inline]
 ntfs_readdir+0x830/0x2bf0 fs/ntfs/dir.c:1162
 iterate_dir+0x257/0x5f0
 __do_sys_getdents64 fs/readdir.c:369 [inline]
 __se_sys_getdents64+0x1db/0x4c0 fs/readdir.c:354
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The buggy address belongs to the object at ffff8880246e5880
 which belongs to the cache kmalloc-64 of size 64
The buggy address is located 49 bytes to the right of
 64-byte region [ffff8880246e5880, ffff8880246e58c0)

The buggy address belongs to the physical page:
page:ffffea000091b940 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x246e5
flags: 0xfff00000000200(slab|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000000200 ffff888012841640 ffffea0000b00a80 dead000000000006
raw: 0000000000000000 0000000080200020 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 0, migratetype Unmovable, gfp_mask 0x12cc0(GFP_KERNEL|__GFP_NOWARN|__GFP_NORETRY), pid 1, tgid 1 (swapper/0), ts 8652158942, free_ts 0
 prep_new_page mm/page_alloc.c:2531 [inline]
 get_page_from_freelist+0x742/0x7c0 mm/page_alloc.c:4283
 __alloc_pages+0x259/0x560 mm/page_alloc.c:5549
 alloc_page_interleave+0x22/0x1c0 mm/mempolicy.c:2119
 alloc_slab_page+0xbd/0x190 mm/slub.c:1851
 allocate_slab+0x5e/0x3c0 mm/slub.c:1998
 new_slab mm/slub.c:2051 [inline]
 ___slab_alloc+0x782/0xe20 mm/slub.c:3193
 __slab_alloc mm/slub.c:3292 [inline]
 __slab_alloc_node mm/slub.c:3345 [inline]
 slab_alloc_node mm/slub.c:3442 [inline]
 __kmem_cache_alloc_node+0x25b/0x340 mm/slub.c:3491
 __do_kmalloc_node mm/slab_common.c:967 [inline]
 __kmalloc+0x9e/0x190 mm/slab_common.c:981
 kmalloc_array include/linux/slab.h:636 [inline]
 kobj_map+0x72/0x670 drivers/base/map.c:44
 cdev_add fs/char_dev.c:491 [inline]
 cdev_device_add+0x141/0x390 fs/char_dev.c:551
 cec_devnode_register drivers/media/cec/core/cec-core.c:144 [inline]
 cec_register_adapter+0x2e4/0x670 drivers/media/cec/core/cec-core.c:364
 vivid_create_devnodes+0x55c/0x2f90 drivers/media/test-drivers/vivid/vivid-core.c:1448
 vivid_create_instance drivers/media/test-drivers/vivid/vivid-core.c:1988 [inline]
 vivid_probe+0x550c/0x6e10 drivers/media/test-drivers/vivid/vivid-core.c:2041
 platform_probe+0x130/0x1b0 drivers/base/platform.c:1400
 call_driver_probe+0x96/0x250
 really_probe+0x24c/0x9f0 drivers/base/dd.c:639
page_owner free stack trace missing

Memory state around the buggy address:
 ffff8880246e5780: 00 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc
 ffff8880246e5800: 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc fc
>ffff8880246e5880: 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc fc
                                                             ^
 ffff8880246e5900: 00 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc
 ffff8880246e5980: 00 00 00 00 00 00 00 fc fc fc fc fc fc fc fc fc
==================================================================


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
