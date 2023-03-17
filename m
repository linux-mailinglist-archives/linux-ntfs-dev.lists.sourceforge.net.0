Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F246C196F
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 20 Mar 2023 16:33:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1peHVu-0007B2-20;
	Mon, 20 Mar 2023 15:33:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3R5QUZAkbAOgcijUKVVObKZZSN.QYYQVOecObMYXdOXd.MYW@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1pdCsv-0002kn-Ic for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 17 Mar 2023 16:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j0y9/Ok6+vCNzIdYJxiv4jUMbvf9Rwu/ySfXsPtfW0A=; b=V/Y6wozOBK+/vgRv9i+5zv9tTk
 K9UaVAM1GzGhMaHLNYslog+1AOcbaTegMY2c6aMTtHH1mcmCoGT0Q7iIzdNIyrOeWvV7p3cv3i7Is
 ypqg3ucyzX/aO0xcn5GwCA5bHJ1SAOdNCMch8lT859jYp05aiZsSVHwsitTlFiGyMRzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j0y9/Ok6+vCNzIdYJxiv4jUMbvf9Rwu/ySfXsPtfW0A=; b=i
 iYg9ZS5eAmw6wRnb/8eocxfvzbahGtMuRts1h3ynckhYPsofDfEZblI0Z0ZNUrx89n19MOsljZlPm
 AusHTTPFLe9Hc4d3vDKAz++4lUmHJTp95hh69/Nc3oO01FKcEULZNIF1NUUha0IBnGmwxcbWcwGwM
 cbgA7ruOQlZZ3CYg=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pdCsn-0005XM-4G for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 17 Mar 2023 16:24:52 +0000
Received: by mail-io1-f71.google.com with SMTP id
 r3-20020a6b5d03000000b007530ad88769so2745196iob.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 17 Mar 2023 09:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679070279;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=j0y9/Ok6+vCNzIdYJxiv4jUMbvf9Rwu/ySfXsPtfW0A=;
 b=4LOszVtZAbhsii4H+TaF8JISpUKJCHztzMX0lTVMhZyCkVM2QP+IshrKSvP3wUaWaI
 PStgP03GsBqmHtinrrF2Xy8EUaRpm9DCf3YuxkM+BRnSkR6HGyxkbC9N/rqfQO8NE3mE
 2sQTc/45zBCvSt/mJBKe8H59ofQM/kvnQlROt4lDZfZsGbeSbrsQo6GsBVQ1oYUyzSLq
 wC5929Uqh97zcySkPeUm2+q/qM6bTErzd7ChV2PN6tkOuEOY7WuKYgE0LqPkQIGpy5pB
 OCClMnqaw0JA9ShJQrSWDpCQWdp48LkM4AzrIBRwRrJqBka4Qd81pbPjtPutNRN7npu6
 Vrug==
X-Gm-Message-State: AO0yUKU+ptfpXtYQb4O6nK0aP43U8BLx6oj5236JQA7+53PTS0CJTUum
 +Aih6YvgOjRD9fc8p6I+9+h7M++VHOMBS5dTBj0C9AD6lL2W
X-Google-Smtp-Source: AK7set+OMtlyYcxWFmRQyHbPvAkJYa6PMDJgDHLpH8OVq5WotsOwW5ikDZc4bsOtz+9ed8dSigIZoQmfDWqa7g7rZHKsrH0ITRN2
MIME-Version: 1.0
X-Received: by 2002:a02:3312:0:b0:3eb:3166:9da4 with SMTP id
 c18-20020a023312000000b003eb31669da4mr47250jae.2.1679070279581; Fri, 17 Mar
 2023 09:24:39 -0700 (PDT)
Date: Fri, 17 Mar 2023 09:24:39 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009146bb05f71b03a0@google.com>
From: syzbot <syzbot+d3cd38158cd7c8d1432c@syzkaller.appspotmail.com>
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
 https://syzkaller.appspot.com/x/log.txt?x=144bbde2c80000
 ke [...] Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
X-Headers-End: 1pdCsn-0005XM-4G
X-Mailman-Approved-At: Mon, 20 Mar 2023 15:33:33 +0000
Subject: [Linux-ntfs-dev] [syzbot] [ntfs?] KASAN: use-after-free Read in
 ntfs_read_folio
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
console output: https://syzkaller.appspot.com/x/log.txt?x=144bbde2c80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7573cbcd881a88c9
dashboard link: https://syzkaller.appspot.com/bug?extid=d3cd38158cd7c8d1432c
compiler:       Debian clang version 15.0.7, GNU ld (GNU Binutils for Debian) 2.35.2
userspace arch: arm64
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1314fdaec80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=148332bec80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/89d41abd07bd/disk-fe15c26e.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/fa75f5030ade/vmlinux-fe15c26e.xz
kernel image: https://storage.googleapis.com/syzbot-assets/590d0f5903ee/Image-fe15c26e.gz.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/863572f0c7ee/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+d3cd38158cd7c8d1432c@syzkaller.appspotmail.com

ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -5.  Marking corrupt inode 0xa as bad.  Run chkdsk.
ntfs: (device loop0): load_and_init_upcase(): Failed to load $UpCase from the volume. Using default.
==================================================================
BUG: KASAN: use-after-free in ntfs_read_folio+0x6d4/0x200c fs/ntfs/aops.c:489
Read of size 1 at addr ffff0000e11f617f by task syz-executor319/5946

CPU: 0 PID: 5946 Comm: syz-executor319 Not tainted 6.3.0-rc1-syzkaller-gfe15c26ee26e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
Call trace:
 dump_backtrace+0x1c8/0x1f4 arch/arm64/kernel/stacktrace.c:158
 show_stack+0x2c/0x3c arch/arm64/kernel/stacktrace.c:165
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd0/0x124 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:319 [inline]
 print_report+0x174/0x514 mm/kasan/report.c:430
 kasan_report+0xd4/0x130 mm/kasan/report.c:536
 kasan_check_range+0x264/0x2a4 mm/kasan/generic.c:187
 __asan_memcpy+0x48/0x90 mm/kasan/shadow.c:105
 ntfs_read_folio+0x6d4/0x200c fs/ntfs/aops.c:489
 filemap_read_folio+0x14c/0x39c mm/filemap.c:2424
 do_read_cache_folio+0x24c/0x544 mm/filemap.c:3683
 do_read_cache_page mm/filemap.c:3749 [inline]
 read_cache_page+0x6c/0x180 mm/filemap.c:3758
 read_mapping_page include/linux/pagemap.h:769 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 load_and_init_attrdef fs/ntfs/super.c:1617 [inline]
 load_system_files+0x1e34/0x4734 fs/ntfs/super.c:1825
 ntfs_fill_super+0x14e0/0x2314 fs/ntfs/super.c:2900
 mount_bdev+0x26c/0x368 fs/super.c:1371
 ntfs_mount+0x44/0x58 fs/ntfs/super.c:3057
 legacy_get_tree+0xd4/0x16c fs/fs_context.c:610
 vfs_get_tree+0x90/0x274 fs/super.c:1501
 do_new_mount+0x25c/0x8c8 fs/namespace.c:3042
 path_mount+0x590/0xe20 fs/namespace.c:3372
 do_mount fs/namespace.c:3385 [inline]
 __do_sys_mount fs/namespace.c:3594 [inline]
 __se_sys_mount fs/namespace.c:3571 [inline]
 __arm64_sys_mount+0x45c/0x594 fs/namespace.c:3571
 __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
 invoke_syscall+0x98/0x2c0 arch/arm64/kernel/syscall.c:52
 el0_svc_common+0x138/0x258 arch/arm64/kernel/syscall.c:142
 do_el0_svc+0x64/0x198 arch/arm64/kernel/syscall.c:193
 el0_svc+0x58/0x168 arch/arm64/kernel/entry-common.c:637
 el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:655
 el0t_64_sync+0x190/0x194 arch/arm64/kernel/entry.S:591

The buggy address belongs to the physical page:
page:00000000b1c79ae3 refcount:0 mapcount:0 mapping:0000000000000000 index:0x1 pfn:0x1211f6
flags: 0x5ffc00000000000(node=0|zone=2|lastcpupid=0x7ff)
raw: 05ffc00000000000 fffffc0003847848 fffffc0003847d48 0000000000000000
raw: 0000000000000001 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff0000e11f6000: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff0000e11f6080: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff0000e11f6100: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                                                ^
 ffff0000e11f6180: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff0000e11f6200: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
==================================================================
ntfs: volume version 3.1.
syz-executor319: attempt to access beyond end of device
loop0: rw=0, sector=2072, nr_sectors = 8 limit=190
ntfs: (device loop0): ntfs_end_buffer_async_read(): Buffer I/O error, logical block 0x103.
syz-executor319: attempt to access beyond end of device
loop0: rw=0, sector=552, nr_sectors = 8 limit=190
syz-executor319: attempt to access beyond end of device
loop0: rw=0, sector=224, nr_sectors = 8 limit=190


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
