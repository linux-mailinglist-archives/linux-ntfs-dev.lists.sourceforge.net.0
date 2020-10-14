Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DBE28E0FD
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 14 Oct 2020 15:05:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kSgT9-0001lO-M2; Wed, 14 Oct 2020 13:05:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <35OqGXwkbANcLRSD3EE7K3IIB6.9HH9E7NL7K5HGM7GM.5HF@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kSfmQ-0001FW-CB
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 14 Oct 2020 12:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BbVySK820kv4hRTVQvHs4ijb0VJ8p3tZyO+wMtqUIM0=; b=K9x8LugQyLgfpU5sH2BRVj53q7
 t3CoBAlJEf1GEJPTxIMLyboOkw2ORAmc8lxDIhBLoduCbLkkdrrtX7grWoPkgWq/AZHKF94XzH6rF
 F2zIiYUu1jmroF5w0oIVXhfAe74VYks6n/LouDwgiNAPhVhsaNl6XAKAODeMrDVdYByE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BbVySK820kv4hRTVQvHs4ijb0VJ8p3tZyO+wMtqUIM0=; b=P
 isnLMT8wrFKSj2hAZyHVKeMZdBFrYXiBpr49qYduP+TLxmmOyutU/m3wnLXLlrnElALaCTtv+DXOk
 vng5r19v9ftICg8BJAnDQl+uqYEH03fy+9BbfgO1Y02/8F1lZUk72gKENfiZ0ivXJ+lQumrHC60HW
 grk1M9q2myWpuHaA=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kSfcv-00FAd5-Az
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 14 Oct 2020 12:11:37 +0000
Received: by mail-il1-f198.google.com with SMTP id m1so2193433iln.19
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 14 Oct 2020 05:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=BbVySK820kv4hRTVQvHs4ijb0VJ8p3tZyO+wMtqUIM0=;
 b=NDvrz655WH2t394qPjt0ZNclpP8S1ZRTvoxF7lUkhM1zYuJTjNd1Lr8w3D92OpNayY
 +IRInv3ZN4ud/jZxsPLmnQvBNtWzx7SBKPC4nEkNAKnxr83XNIzNOOaKUWeIi3urCpKE
 f9tkSyAJCGbZPMGa4DJEBFMmquORPKX9WH394XTgyUj080wW0AJU7VnRkSCI0YiDGFp7
 +Zn/igBfxi/yrdXvuu575Tp6qXL2b4uBAfZIi/fwFcaJUfmkOLVBPL+tTmzAOaIPQOmc
 OF/Z9TBKGRqmVMZKcKVAIl84RADsPjs3m/P8PsPjn4cLOfI0Y5iWXWOa1j8vDuwZU6N7
 Kw8g==
X-Gm-Message-State: AOAM532hUP1kK/hMaCwoSHWns/v28FTeN4eevJJKlY4EcBvKaRINEg2i
 LRHMJ765rPWf12GVNuOu+jRqae5mhBooAqPg5EKMdlCqlmli
X-Google-Smtp-Source: ABdhPJw15WDNyW3HVyWhCIAlcuyf+s8F8ggLdT2ONdHT0Qv/gFxtVmfgS8iRJfDry5Kot2PN9i5gZF5hp2fLJr1VXGYhvtAc5nFG
MIME-Version: 1.0
X-Received: by 2002:a92:8e51:: with SMTP id k17mr3471376ilh.270.1602677476505; 
 Wed, 14 Oct 2020 05:11:16 -0700 (PDT)
Date: Wed, 14 Oct 2020 05:11:16 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ad3f7f05b1a06d8a@google.com>
From: syzbot <syzbot+ecbcf37464c627253e44@syzkaller.appspotmail.com>
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
 trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kSfcv-00FAd5-Az
X-Mailman-Approved-At: Wed, 14 Oct 2020 13:05:27 +0000
Subject: [Linux-NTFS-Dev] KASAN: use-after-free Read in ntfs_are_names_equal
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

HEAD commit:    bbf5c979 Linux 5.9
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1359031b900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f3005fbc9c851d04
dashboard link: https://syzkaller.appspot.com/bug?extid=ecbcf37464c627253e44
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16698ffb900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=141b8558500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+ecbcf37464c627253e44@syzkaller.appspotmail.com

ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -5.  Marking corrupt inode 0xa as bad.  Run chkdsk.
ntfs: (device loop0): load_and_init_upcase(): Failed to load $UpCase from the volume. Using default.
ntfs: volume version 3.1.
ntfs: (device loop0): map_mft_record_page(): Mft record 0x2 is corrupt.  Run chkdsk.
==================================================================
BUG: KASAN: use-after-free in ntfs_ucsncmp fs/ntfs/unistr.c:142 [inline]
BUG: KASAN: use-after-free in ntfs_are_names_equal+0x2f8/0x340 fs/ntfs/unistr.c:61
Read of size 2 at addr ffff888086758ee8 by task syz-executor601/6839

CPU: 0 PID: 6839 Comm: syz-executor601 Not tainted 5.9.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x1d6/0x29e lib/dump_stack.c:118
 print_address_description+0x66/0x620 mm/kasan/report.c:383
 __kasan_report mm/kasan/report.c:513 [inline]
 kasan_report+0x132/0x1d0 mm/kasan/report.c:530
 ntfs_ucsncmp fs/ntfs/unistr.c:142 [inline]
 ntfs_are_names_equal+0x2f8/0x340 fs/ntfs/unistr.c:61
 ntfs_attr_find+0x36d/0xac0 fs/ntfs/attrib.c:614
 ntfs_attr_lookup+0x1ec/0x23b0 fs/ntfs/attrib.c:1189
 ntfs_read_locked_attr_inode fs/ntfs/inode.c:1233 [inline]
 ntfs_attr_iget+0x48c/0x21a0 fs/ntfs/inode.c:238
 ntfs_read_locked_inode+0x36fd/0x4e30 fs/ntfs/inode.c:954
 ntfs_iget+0xc2/0x130 fs/ntfs/inode.c:177
 load_system_files fs/ntfs/super.c:1974 [inline]
 ntfs_fill_super+0x5c38/0x8bd0 fs/ntfs/super.c:2894
 mount_bdev+0x24f/0x360 fs/super.c:1417
 legacy_get_tree+0xea/0x180 fs/fs_context.c:592
 vfs_get_tree+0x88/0x270 fs/super.c:1547
 do_new_mount fs/namespace.c:2875 [inline]
 path_mount+0x179d/0x29e0 fs/namespace.c:3192
 do_mount fs/namespace.c:3205 [inline]
 __do_sys_mount fs/namespace.c:3413 [inline]
 __se_sys_mount+0x126/0x180 fs/namespace.c:3390
 do_syscall_64+0x31/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x45726a
Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 8d a3 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 6a a3 fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007ffcaca0cb18 EFLAGS: 00000287 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffcaca0cb70 RCX: 000000000045726a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffcaca0cb30
RBP: 0000000000000004 R08: 00007ffcaca0cb70 R09: 0000000000316777
R10: 0000000000000000 R11: 0000000000000287 R12: 0000000000000003
R13: 00007ffcaca0cb30 R14: 0000000000000000 R15: 0000000020001218

The buggy address belongs to the page:
page:000000007012e419 refcount:0 mapcount:0 mapping:0000000000000000 index:0x1 pfn:0x86758
flags: 0xfffe0000000000()
raw: 00fffe0000000000 ffffea000219d688 ffffea000219d3c8 0000000000000000
raw: 0000000000000001 0000000000000000 00000000ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff888086758d80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff888086758e00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>ffff888086758e80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
                                                          ^
 ffff888086758f00: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
 ffff888086758f80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
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
