Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C252A1B71
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1ED-0001w8-0E; Sun, 01 Nov 2020 00:28:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1kYgwR-0005Gw-SZ
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Oct 2020 02:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nZVe1e1STRwduW9XSutjSZVW56Bw1I1+7PRzalTzDSc=; b=NHPqH4F/UtuDPxJnRScgAAjgcT
 p8gJAtAUU/pDVunU4UclX9cL3+ZgA56rYHuDykToSp72gn+ruaTP+2ZiVJwhpHv8/p/HXzIemurfS
 PMDiDjDtFtwv3iYx0Te0fayWHunF6d3YGhsXn6fzC5WLuPbY6aWTs3ZLEZFQpDSRu3WU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nZVe1e1STRwduW9XSutjSZVW56Bw1I1+7PRzalTzDSc=; b=TFkHyioA21+p5WgYAWFk8Tc8tm
 bpi4S6+q1sD86hheQ4MyP1oZIvu+QclE8vr5u1LsFf5OHl8IbXLcRQiMVyPMoWrWpzJvghoBmruSZ
 26uMJL+9Qtx4GuqoUa0TF1b+B0JauIIJKiDcLrz9Wo72LVML0cdsaSzsmhDQDhi3ynIk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYgwI-003OAQ-Fs
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Oct 2020 02:48:31 +0000
Received: from sol.localdomain (172-10-235-113.lightspeed.sntcca.sbcglobal.net
 [172.10.235.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56FA12064C;
 Sat, 31 Oct 2020 02:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604112482;
 bh=GzBVWlxF6KRcExfDZKgn7I0vcTkUE7cqzkTlsjivcjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n5eXBMj6pPAY6mZWTkSJjKHgWvQu94xFRgBbeM+IsvIkRozYiB2K+TM1ZWgG4a+9a
 1CVSlemEuM2iQrctRg8oYZVw4U6m86r7rFM+WfaXHgOOTqFLvHaaROdP9/INkc5K9J
 Yq78RWxPqt8jTLOfjKJ1kFmT+HG6PjPUUzt2esN4=
Date: Fri, 30 Oct 2020 19:48:00 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20201031024800.GC1097@sol.localdomain>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
 <20201031024209.GB1097@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031024209.GB1097@sol.localdomain>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kYgwI-003OAQ-Fs
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:09 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v11 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Oct 30, 2020 at 07:42:09PM -0700, Eric Biggers wrote:
> Hi Konstantin,
> 
> On Fri, Oct 30, 2020 at 06:02:29PM +0300, Konstantin Komarov wrote:
> > This patch adds NTFS Read-Write driver to fs/ntfs3.
> > 
> > Having decades of expertise in commercial file systems development and huge
> > test coverage, we at Paragon Software GmbH want to make our contribution to
> > the Open Source Community by providing implementation of NTFS Read-Write
> > driver for the Linux Kernel.
> > 
> > This is fully functional NTFS Read-Write driver. Current version works with
> > NTFS(including v3.1) and normal/compressed/sparse files and supports journal replaying.
> > 
> > We plan to support this version after the codebase once merged, and add new
> > features and fix bugs. For example, full journaling support over JBD will be
> > added in later updates.
> > 
> 
> Have you tried testing this filesystem using some of the kernel debugging
> options (lockdep, KASAN, etc.?).  I tried a basic test just for fun, and I
> immediately got a lockdep report:
> 
> mkfs.ntfs -f /dev/vdb
> mount /dev/vdb /mnt -t ntfs3
> echo foo > /mnt/foo
> 
> ======================================================
> WARNING: possible circular locking dependency detected
> 5.10.0-rc1-00275-ga34a2c322380 #33 Not tainted
> ------------------------------------------------------
> bash/160 is trying to acquire lock:
> ffff888011e68108 (&ni->ni_lock){+.+.}-{3:3}, at: ni_lock fs/ntfs3/ntfs_fs.h:959 [inline]
> ffff888011e68108 (&ni->ni_lock){+.+.}-{3:3}, at: ntfs_set_size+0xee/0x210 fs/ntfs3/inode.c:880
> 
> but task is already holding lock:
> ffff888011e68370 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}, at: inode_trylock include/linux/fs.h:794 [inline]
> ffff888011e68370 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}, at: ntfs_file_write_iter+0x1bc/0x4e0 fs/ntfs3/file.c:1040
> 
> which lock already depends on the new lock.

Also trying to create a symlink causes a stack out-of-bounds access:

$ mkfs.ntfs -f /dev/vdb
$ mount /dev/vdb /mnt -t ntfs3
$ ln -s target /mnt/symlink

BUG: KASAN: stack-out-of-bounds in memcpy include/linux/string.h:399 [inline]
BUG: KASAN: stack-out-of-bounds in hdr_insert_de+0x224/0x4d0 fs/ntfs3/index.c:851
Read of size 32 at addr ffffc900007b7b10 by task ln/181

CPU: 1 PID: 181 Comm: ln Not tainted 5.10.0-rc1-00275-ga34a2c322380 #33
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS ArchLinux 1.14.0-1 04/01/2014
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0xa4/0xd9 lib/dump_stack.c:118
 print_address_description.constprop.0+0x1f/0x160 mm/kasan/report.c:385
 __kasan_report.cold+0x37/0x7f mm/kasan/report.c:545
 kasan_report+0x3e/0x60 mm/kasan/report.c:562
 check_memory_region_inline mm/kasan/generic.c:186 [inline]
 check_memory_region+0xfb/0x1d0 mm/kasan/generic.c:192
 memcpy+0x24/0x60 mm/kasan/common.c:105
 memcpy include/linux/string.h:399 [inline]
 hdr_insert_de+0x224/0x4d0 fs/ntfs3/index.c:851
 indx_insert_into_root+0x5d0/0x1d10 fs/ntfs3/index.c:1585
 indx_insert_entry+0x299/0x4e0 fs/ntfs3/index.c:1936
 ntfs_insert_reparse+0x133/0x1b0 fs/ntfs3/fsntfs.c:2425
 ntfs_create_inode+0x28ec/0x4590 fs/ntfs3/inode.c:1511
 ntfs_symlink+0xb1/0xf0 fs/ntfs3/namei.c:198
 vfs_symlink fs/namei.c:3960 [inline]
 vfs_symlink+0x237/0x380 fs/namei.c:3946
 do_symlinkat+0x125/0x220 fs/namei.c:3987
 __do_sys_symlinkat fs/namei.c:4001 [inline]
 __se_sys_symlinkat fs/namei.c:3998 [inline]
 __x64_sys_symlinkat+0x6e/0xb0 fs/namei.c:3998
 do_syscall_64+0x32/0x50 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x7fdaf2fb2b2b
Code: 73 01 c3 48 8b 0d 45 f3 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 0a 01 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 15 f3 0c 00 f7 d8 64 89 01 48
RSP: 002b:00007ffe428da378 EFLAGS: 00000246 ORIG_RAX: 000000000000010a
RAX: ffffffffffffffda RBX: 00007ffe428da598 RCX: 00007fdaf2fb2b2b
RDX: 00007ffe428db812 RSI: 00000000ffffff9c RDI: 00007ffe428db80b
RBP: 00007ffe428da588 R08: 00000000ffffffff R09: 0000000000000000
R10: 00005647f9c2b340 R11: 0000000000000246 R12: 0000000000000002
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000000


addr ffffc900007b7b10 is located in stack of task ln/181 at offset 32 in frame:
 ntfs_insert_reparse+0x0/0x1b0 fs/ntfs3/fsntfs.c:2387

this frame has 1 object:
 [32, 60) 're'

Memory state around the buggy address:
 ffffc900007b7a00: 00 00 00 00 00 f1 f1 f1 f1 f1 f1 04 f2 00 f3 f3
 ffffc900007b7a80: f3 00 00 00 00 00 00 00 00 00 00 00 00 00 f1 f1
>ffffc900007b7b00: f1 f1 00 00 00 04 f3 f3 f3 f3 00 00 00 00 00 00
                                  ^
 ffffc900007b7b80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffffc900007b7c00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f1 f1
==================================================================


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
