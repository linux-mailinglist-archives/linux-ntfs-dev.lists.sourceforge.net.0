Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDE581F129
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 27 Dec 2023 19:23:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rIYYk-0003fx-67;
	Wed, 27 Dec 2023 18:23:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3qBSMZQkbADUjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rISm4-00045S-25 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 27 Dec 2023 12:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w5IDQmVehXMnABlPMFwv2yxsr22rrMztxhav0QRoFr4=; b=VKkK+G3NmRZqZKO3M+vEUXe560
 ZFJxSyFGAHfa8jmwauDmPxISGesBRWc0XXWNHUHO2FA6KOTQtYTCfVd6C1XW5frGxVJat3Ume2fRQ
 mgudujN5yRbk8sd4JHF5j+JCvW91EXlg/GaAUU8E7ygs5wLUPFPYW/exWf6SmIG26uv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w5IDQmVehXMnABlPMFwv2yxsr22rrMztxhav0QRoFr4=; b=L
 5CmKxAwnX7WMESE2aK8LJZ5FH4GK28LYW/UPX2AKP4ggnyaXgxfZvl4H/qr6jUvvFQ0V4qem06Nyj
 EuxNqpiLas0BP94phz0rcjzeP3wFHhPUT9DMX0xerEoOg1EhWGz4NWMyFsKLK/ErAC50FvBaRC4lR
 lOd7uYoINwUSxxlw=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rISm2-0004se-NC for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 27 Dec 2023 12:12:36 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-35fcbe27a7fso63227335ab.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 27 Dec 2023 04:12:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703679144; x=1704283944;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w5IDQmVehXMnABlPMFwv2yxsr22rrMztxhav0QRoFr4=;
 b=uYsLTybPGuVLmoqoh2xO17u9cKkiI9BzuWc0xUob3VtpGoMDK5lCN7+4oZm52Ppoqc
 eOQ0UuMVpGud5+0ueP5mkwFRE39ucLgqdK2B7P4Fxviw0M7mEivoOa/Y502NLUJ6IISE
 l2dDmXPxzaYxaXYlnPTwYVX3ziN6g2sQd/ToYAp9xpZW61oMuDYlkHNvuizmkerYEYrR
 AbJ57pd5PZvDCG4YpcR9HC26FlGNmbViqNhbBZAaDftPid5PsJa0/zbpZn3WKeVHMfnV
 0kDVnYDumEMVhuDlxFkJZnfQgZWh3sDeaJXxlpOO06iBspzfwv+n/x94ESFSlg2MqM+w
 05Jg==
X-Gm-Message-State: AOJu0YznTOEd1X4nAvk31Qz+C3cID0ppm33kZZ+rMxp73fKraz2h6iPk
 qrff2UcyGh84b8smU/jY3vLca7549LNLLhGX17y6Sc7Rf9rA
X-Google-Smtp-Source: AGHT+IG+xocUf1/BhKuKWYImJfxU0USYtTDs19LgIGsGjmu5cm+/MA9346oDcbLsZCJpxVd9zj4dJsnaHT0zMzGh/gQpqFCZhQVu
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d18:b0:35f:f01e:bb32 with SMTP id
 i24-20020a056e021d1800b0035ff01ebb32mr840244ila.4.1703679144122; Wed, 27 Dec
 2023 04:12:24 -0800 (PST)
Date: Wed, 27 Dec 2023 04:12:24 -0800
In-Reply-To: <000000000000daec33060d6bc380@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003260c1060d7cb673@google.com>
From: syzbot <syzbot+82248056430fd49210e9@syzkaller.appspotmail.com>
To: anton@tuxera.com, linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: fbafc3e621c3 Merge tag 'for_linus' of git://git.kernel.org..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=170a9f76e80000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rISm2-0004se-NC
X-Mailman-Approved-At: Wed, 27 Dec 2023 18:23:12 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] KMSAN: uninit-value in
 post_read_mst_fixup (2)
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

HEAD commit:    fbafc3e621c3 Merge tag 'for_linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=170a9f76e80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e0c7078a6b901aa3
dashboard link: https://syzkaller.appspot.com/bug?extid=82248056430fd49210e9
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=173c705ee80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1410147ee80000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/1520f7b6daa4/disk-fbafc3e6.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/8b490af009d5/vmlinux-fbafc3e6.xz
kernel image: https://storage.googleapis.com/syzbot-assets/202ca200f4a4/bzImage-fbafc3e6.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/a03c45c57d87/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+82248056430fd49210e9@syzkaller.appspotmail.com

ntfs: (device loop0): ntfs_read_locked_inode(): Failed with error code -2.  Marking corrupt inode 0xa as bad.  Run chkdsk.
ntfs: (device loop0): load_and_init_upcase(): Failed to load $UpCase from the volume. Using default.
ntfs: volume version 3.1.
ntfs: (device loop0): ntfs_mapping_pairs_decompress(): Corrupt attribute.
syz-executor416: attempt to access beyond end of device
loop0: rw=0, sector=552, nr_sectors = 8 limit=190
=====================================================
BUG: KMSAN: uninit-value in post_read_mst_fixup+0xab8/0xb70 fs/ntfs/mst.c:39
 post_read_mst_fixup+0xab8/0xb70 fs/ntfs/mst.c:39
 ntfs_end_buffer_async_read+0xbb8/0x1a70 fs/ntfs/aops.c:133
 end_bio_bh_io_sync+0x130/0x1d0 fs/buffer.c:2775
 bio_endio+0xb17/0xb70 block/bio.c:1603
 submit_bio_noacct+0x230/0x2840 block/blk-core.c:816
 submit_bio+0x171/0x1c0 block/blk-core.c:842
 submit_bh_wbc+0x7de/0x850 fs/buffer.c:2821
 submit_bh+0x26/0x30 fs/buffer.c:2826
 ntfs_read_block fs/ntfs/aops.c:339 [inline]
 ntfs_read_folio+0x364b/0x3930 fs/ntfs/aops.c:430
 filemap_read_folio+0xce/0x370 mm/filemap.c:2323
 do_read_cache_folio+0x3b4/0x11e0 mm/filemap.c:3691
 do_read_cache_page mm/filemap.c:3757 [inline]
 read_cache_page+0x63/0x1c0 mm/filemap.c:3766
 read_mapping_page include/linux/pagemap.h:871 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 ntfs_lookup_inode_by_name+0x1d97/0x50d0 fs/ntfs/dir.c:308
 check_windows_hibernation_status+0xc4/0xca0 fs/ntfs/super.c:1282
 load_system_files+0x6d84/0x97b0 fs/ntfs/super.c:1997
 ntfs_fill_super+0x307e/0x45d0 fs/ntfs/super.c:2900
 mount_bdev+0x3d7/0x560 fs/super.c:1650
 ntfs_mount+0x4d/0x60 fs/ntfs/super.c:3057
 legacy_get_tree+0x110/0x290 fs/fs_context.c:662
 vfs_get_tree+0xa5/0x520 fs/super.c:1771
 do_new_mount+0x68d/0x1550 fs/namespace.c:3337
 path_mount+0x73d/0x1f20 fs/namespace.c:3664
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x725/0x810 fs/namespace.c:3863
 __x64_sys_mount+0xe4/0x140 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x44/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

Uninit was created at:
 __alloc_pages+0x9a4/0xe00 mm/page_alloc.c:4591
 alloc_pages_mpol+0x62b/0x9d0 mm/mempolicy.c:2133
 alloc_pages mm/mempolicy.c:2204 [inline]
 folio_alloc+0x1da/0x380 mm/mempolicy.c:2211
 filemap_alloc_folio+0xa5/0x430 mm/filemap.c:974
 do_read_cache_folio+0x163/0x11e0 mm/filemap.c:3655
 do_read_cache_page mm/filemap.c:3757 [inline]
 read_cache_page+0x63/0x1c0 mm/filemap.c:3766
 read_mapping_page include/linux/pagemap.h:871 [inline]
 ntfs_map_page fs/ntfs/aops.h:75 [inline]
 ntfs_lookup_inode_by_name+0x1d97/0x50d0 fs/ntfs/dir.c:308
 check_windows_hibernation_status+0xc4/0xca0 fs/ntfs/super.c:1282
 load_system_files+0x6d84/0x97b0 fs/ntfs/super.c:1997
 ntfs_fill_super+0x307e/0x45d0 fs/ntfs/super.c:2900
 mount_bdev+0x3d7/0x560 fs/super.c:1650
 ntfs_mount+0x4d/0x60 fs/ntfs/super.c:3057
 legacy_get_tree+0x110/0x290 fs/fs_context.c:662
 vfs_get_tree+0xa5/0x520 fs/super.c:1771
 do_new_mount+0x68d/0x1550 fs/namespace.c:3337
 path_mount+0x73d/0x1f20 fs/namespace.c:3664
 do_mount fs/namespace.c:3677 [inline]
 __do_sys_mount fs/namespace.c:3886 [inline]
 __se_sys_mount+0x725/0x810 fs/namespace.c:3863
 __x64_sys_mount+0xe4/0x140 fs/namespace.c:3863
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0x44/0x110 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x63/0x6b

CPU: 1 PID: 5006 Comm: syz-executor416 Not tainted 6.7.0-rc7-syzkaller-00003-gfbafc3e621c3 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/17/2023
=====================================================


---
If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
