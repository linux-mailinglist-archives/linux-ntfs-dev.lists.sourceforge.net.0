Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6922D25AB
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Dec 2020 09:19:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kmYDU-0002y2-Eq; Tue, 08 Dec 2020 08:19:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3LWjBXwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kikoK-0003a4-U5
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 27 Nov 2020 20:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ABhmawZsJQ/Q6hAT8jVecCqEM2Zj8FpIVjuOpRMYRU=; b=JE/u748rvPexjol1J2YOjjWd23
 mf2Y/zy/zMAJiTHvQoZkjVzekK4QjTgg6FKfI5CCgfgNi3zJ7vJjgc+WKw6fSIfdSvefY1FbakuUz
 MWJaGJkDzy2iUzPmgezj6GSQYi1e8Q3Vu3rW4DuW/E6VcT4Ou/uOK9qqKMpAH8AU+ms4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8ABhmawZsJQ/Q6hAT8jVecCqEM2Zj8FpIVjuOpRMYRU=; b=P
 XKOu0pvNuvp9Sg+4GdN1Q9sj1p0klp0ssXF8p3SvXB6z9Lo4FHI9j/s1L3B4l4XrhT81mAoOqE/1T
 gqZPy/15Dp4cEHRH13q8TNe2EBrXDGo0/uo5f/wvSJFO50xK5QsXbYdd8FHo5udV8EhakmPC0YUcv
 QAMH9oGGptw7gtSg=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kiko6-002L0B-7E
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 27 Nov 2020 20:57:44 +0000
Received: by mail-io1-f69.google.com with SMTP id q6so4160265iog.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 27 Nov 2020 12:57:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=8ABhmawZsJQ/Q6hAT8jVecCqEM2Zj8FpIVjuOpRMYRU=;
 b=SFuC/0oKJXj7lWsWCr9u8HNb+hB44b9YXMGv+LqtYJPh21ALOZjVfpYrqF9UchQ5bw
 mRlN+h5LNKcBJS3f3yBZ58Gr6+8qksz40gydL9YsGUplqGtQezx/0i1H3c5WUxrebrw7
 pwnPvp66OW0jJzrTqXKPRK+3dAA/bppBAZhWvLVqR2iKZ8r5sk0fEmtjtMHBiDEbGprT
 OVBYcaowykxIxPNIIWKzoTazxoecoptXrBGBTxrhdtnIWZ4Rp0QITXG0m0B4Y9pYwYdg
 AFUsx7z04G30geINA50lZGSWCJvfppryrG9H1chi5wF0yssGGnZPyOuyjpQIYs2d8q11
 sA7A==
X-Gm-Message-State: AOAM531//mOUAatNPjXaYzfyjdlYA4rmTIagrPJb8rey0XsHN0DW0oI1
 U5I/uTowLeC1jAyZjTNMvKjPEM6rZVVxXdZooNAlI3GW/d5w
X-Google-Smtp-Source: ABdhPJyeaI9XvcUv/QjdnPGbvln8IuIXJQlYmtl2JKmpYcVeMqmmtR88sutdkZnWKJEZmC4/CZ9KggvVYtytduqv9QK0WBNlx9qx
MIME-Version: 1.0
X-Received: by 2002:a92:d489:: with SMTP id p9mr8170884ilg.123.1606510637461; 
 Fri, 27 Nov 2020 12:57:17 -0800 (PST)
Date: Fri, 27 Nov 2020 12:57:17 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000dfb7eb05b51ce7d2@google.com>
From: syzbot <syzbot+c584225dabdea2f71969@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.69 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kiko6-002L0B-7E
X-Mailman-Approved-At: Tue, 08 Dec 2020 08:19:02 +0000
Subject: [Linux-NTFS-Dev] KASAN: use-after-free Read in ntfs_iget
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

HEAD commit:    418baf2c Linux 5.10-rc5
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=130eb535500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a31e7421a3bb7a0f
dashboard link: https://syzkaller.appspot.com/bug?extid=c584225dabdea2f71969
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14f310ed500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10dd7eb9500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c584225dabdea2f71969@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: use-after-free in ntfs_read_locked_inode+0x49dc/0x58b0 fs/ntfs/inode.c:645
Read of size 8 at addr ffff8880374ee6cd by task syz-executor401/8528

CPU: 1 PID: 8528 Comm: syz-executor401 Not tainted 5.10.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x107/0x163 lib/dump_stack.c:118
 print_address_description.constprop.0.cold+0xae/0x497 mm/kasan/report.c:385
 __kasan_report mm/kasan/report.c:545 [inline]
 kasan_report.cold+0x1f/0x37 mm/kasan/report.c:562
 ntfs_read_locked_inode+0x49dc/0x58b0 fs/ntfs/inode.c:645
 ntfs_iget+0x12d/0x180 fs/ntfs/inode.c:177
 load_and_init_attrdef fs/ntfs/super.c:1589 [inline]
 load_system_files fs/ntfs/super.c:1817 [inline]
 ntfs_fill_super+0x255c/0x8560 fs/ntfs/super.c:2893
 mount_bdev+0x32e/0x3f0 fs/super.c:1419
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1549
 do_new_mount fs/namespace.c:2875 [inline]
 path_mount+0x13ad/0x20c0 fs/namespace.c:3205
 do_mount fs/namespace.c:3218 [inline]
 __do_sys_mount fs/namespace.c:3426 [inline]
 __se_sys_mount fs/namespace.c:3403 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3403
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x44954a
Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 7d a3 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 5a a3 fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007ffe2910bd28 EFLAGS: 00000287 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffe2910bd80 RCX: 000000000044954a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffe2910bd40
RBP: 00007ffe2910bd40 R08: 00007ffe2910bd80 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000287 R12: 00000000000000ac
R13: 0000000000000004 R14: 0000000000000003 R15: 0000000000000003

The buggy address belongs to the page:
page:00000000dbe06e8c refcount:1 mapcount:0 mapping:0000000069d82f88 index:0x200 pfn:0x374ee
aops:shmem_aops ino:40b dentry name:"memfd:syzkaller"
flags: 0xfff0000008001e(referenced|uptodate|dirty|lru|swapbacked)
raw: 00fff0000008001e ffffea0000ca4a08 ffffea0000d8de88 ffff8880287936a8
raw: 0000000000000200 0000000000000000 00000001ffffffff ffff888010e00000
page dumped because: kasan: bad access detected
page->mem_cgroup:ffff888010e00000

Memory state around the buggy address:
 ffff8880374ee580: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8880374ee600: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff8880374ee680: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                                              ^
 ffff8880374ee700: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8880374ee780: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
