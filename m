Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 243582A1B64
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1EC-0001vw-UO; Sun, 01 Nov 2020 00:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1kYgqa-0001nM-Sp
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Oct 2020 02:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xIQILlU9lB8jpyQuFR2Dgeryx+Fy/FSIghF6ZxA3PFI=; b=FshzXmZiSKdL0nndQHGlc+/ZOn
 WqsAvSg58fd6KEcqlVK1NlaCsgxOajWUtaOWHqqJp1exXmS74RB22vHoxnr7zTFOtACOlso7iZPMm
 HUPXsZaTlhMoPrlyoiYhwFtvmMKz7mWmZSv72MdNiFpANJGDHbV86CvJ4/nBlIPj3wR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xIQILlU9lB8jpyQuFR2Dgeryx+Fy/FSIghF6ZxA3PFI=; b=gvKRO+1z3BLhNAw3Nu+y2wNONC
 RKvFakjRgrnl1+T40Jbp6pDouVdLsZzLUESpWgn0jjei+NLD2zzRTlkfug4eznMtsxSTUspddVuMH
 J3Wpyokh9Y3HiHxMGcmQ/YbsDE9Y60ReNOd/35vz1UDHfSs4CmBdgEmXYxRoU6QUFj+c=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYgqT-00DhSP-VS
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Oct 2020 02:42:28 +0000
Received: from sol.localdomain (172-10-235-113.lightspeed.sntcca.sbcglobal.net
 [172.10.235.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21C372064C;
 Sat, 31 Oct 2020 02:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604112131;
 bh=vjARbSs4R43Mxuqnpm9euvwZtiSkhvNZ2Dpvywpp+rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pzo1QXiz7YfY+hdFXDmWIeEEMjbmKY021BJnlvcRwgD3FIPBkDE8/9bJFxSUWrJnC
 je4aVVz/FGPGVdxPWvsTZH3bIYRFomTEaQkAcbruihjaLEUfc1WqdGDqUjVoDuX4q1
 z4HWd8UAE8It0y7dH4aZAya38Wq+VN1+Jz54Cf4U=
Date: Fri, 30 Oct 2020 19:42:09 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20201031024209.GB1097@sol.localdomain>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kYgqT-00DhSP-VS
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

Hi Konstantin,

On Fri, Oct 30, 2020 at 06:02:29PM +0300, Konstantin Komarov wrote:
> This patch adds NTFS Read-Write driver to fs/ntfs3.
> 
> Having decades of expertise in commercial file systems development and huge
> test coverage, we at Paragon Software GmbH want to make our contribution to
> the Open Source Community by providing implementation of NTFS Read-Write
> driver for the Linux Kernel.
> 
> This is fully functional NTFS Read-Write driver. Current version works with
> NTFS(including v3.1) and normal/compressed/sparse files and supports journal replaying.
> 
> We plan to support this version after the codebase once merged, and add new
> features and fix bugs. For example, full journaling support over JBD will be
> added in later updates.
> 

Have you tried testing this filesystem using some of the kernel debugging
options (lockdep, KASAN, etc.?).  I tried a basic test just for fun, and I
immediately got a lockdep report:

mkfs.ntfs -f /dev/vdb
mount /dev/vdb /mnt -t ntfs3
echo foo > /mnt/foo

======================================================
WARNING: possible circular locking dependency detected
5.10.0-rc1-00275-ga34a2c322380 #33 Not tainted
------------------------------------------------------
bash/160 is trying to acquire lock:
ffff888011e68108 (&ni->ni_lock){+.+.}-{3:3}, at: ni_lock fs/ntfs3/ntfs_fs.h:959 [inline]
ffff888011e68108 (&ni->ni_lock){+.+.}-{3:3}, at: ntfs_set_size+0xee/0x210 fs/ntfs3/inode.c:880

but task is already holding lock:
ffff888011e68370 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}, at: inode_trylock include/linux/fs.h:794 [inline]
ffff888011e68370 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}, at: ntfs_file_write_iter+0x1bc/0x4e0 fs/ntfs3/file.c:1040

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}:
       __lock_acquire+0x7b7/0x1060 kernel/locking/lockdep.c:4837
       lock_acquire.part.0+0x13b/0x2a0 kernel/locking/lockdep.c:5442
       lock_acquire+0xb4/0x1d0 kernel/locking/lockdep.c:5415
       down_write+0x93/0x150 kernel/locking/rwsem.c:1531
       inode_lock include/linux/fs.h:774 [inline]
       ntfs_set_state+0x192/0x650 fs/ntfs3/fsntfs.c:996
       ntfs_create_inode+0x318/0x4590 fs/ntfs3/inode.c:1254
       ntfs_atomic_open+0x350/0x450 fs/ntfs3/namei.c:521
       atomic_open+0x16b/0x420 fs/namei.c:2970
       lookup_open+0x7d1/0xdc0 fs/namei.c:3076
       open_last_lookups+0x277/0x1040 fs/namei.c:3178
       path_openat+0x161/0x310 fs/namei.c:3366
       do_filp_open+0x17d/0x3b0 fs/namei.c:3396
       do_sys_openat2+0x120/0x3d0 fs/open.c:1168
       do_sys_open fs/open.c:1184 [inline]
       __do_sys_openat fs/open.c:1200 [inline]
       __se_sys_openat fs/open.c:1195 [inline]
       __x64_sys_openat+0x124/0x200 fs/open.c:1195
       do_syscall_64+0x32/0x50 arch/x86/entry/common.c:46
       entry_SYSCALL_64_after_hwframe+0x44/0xa9

-> #0 (&ni->ni_lock){+.+.}-{3:3}:
       check_prev_add+0x162/0x20b0 kernel/locking/lockdep.c:2864
       check_prevs_add kernel/locking/lockdep.c:2989 [inline]
       validate_chain+0xbff/0x1620 kernel/locking/lockdep.c:3607
       __lock_acquire+0x7b7/0x1060 kernel/locking/lockdep.c:4837
       lock_acquire.part.0+0x13b/0x2a0 kernel/locking/lockdep.c:5442
       lock_acquire+0xb4/0x1d0 kernel/locking/lockdep.c:5415
       __mutex_lock_common kernel/locking/mutex.c:956 [inline]
       __mutex_lock+0x142/0x12d0 kernel/locking/mutex.c:1103
       mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
       ni_lock fs/ntfs3/ntfs_fs.h:959 [inline]
       ntfs_set_size+0xee/0x210 fs/ntfs3/inode.c:880
       ntfs_extend_ex+0x3b1/0x5c0 fs/ntfs3/file.c:466
       ntfs_file_write_iter+0x244/0x4e0 fs/ntfs3/file.c:1050
       call_write_iter include/linux/fs.h:1887 [inline]
       new_sync_write+0x348/0x6d0 fs/read_write.c:518
       vfs_write+0x408/0x5b0 fs/read_write.c:605
       ksys_write+0x11d/0x220 fs/read_write.c:658
       __do_sys_write fs/read_write.c:670 [inline]
       __se_sys_write fs/read_write.c:667 [inline]
       __x64_sys_write+0x6e/0xb0 fs/read_write.c:667
       do_syscall_64+0x32/0x50 arch/x86/entry/common.c:46
       entry_SYSCALL_64_after_hwframe+0x44/0xa9

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(&sb->s_type->i_mutex_key#11);
                               lock(&ni->ni_lock);
                               lock(&sb->s_type->i_mutex_key#11);
  lock(&ni->ni_lock);

 *** DEADLOCK ***

2 locks held by bash/160:
 #0: ffff8880084ac458 (sb_writers#11){.+.+}-{0:0}, at: file_start_write include/linux/fs.h:2759 [inline]
 #0: ffff8880084ac458 (sb_writers#11){.+.+}-{0:0}, at: vfs_write+0x3bc/0x5b0 fs/read_write.c:601
 #1: ffff888011e68370 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}, at: inode_trylock include/linux/fs.h:794 [inline]
 #1: ffff888011e68370 (&sb->s_type->i_mutex_key#11){+.+.}-{3:3}, at: ntfs_file_write_iter+0x1bc/0x4e0 fs/ntfs3/file.c:1040

stack backtrace:
CPU: 1 PID: 160 Comm: bash Not tainted 5.10.0-rc1-00275-ga34a2c322380 #33
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS ArchLinux 1.14.0-1 04/01/2014
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0xa4/0xd9 lib/dump_stack.c:118
 print_circular_bug.cold+0x34/0x39 kernel/locking/lockdep.c:1994
 check_noncircular+0x277/0x350 kernel/locking/lockdep.c:2115
 check_prev_add+0x162/0x20b0 kernel/locking/lockdep.c:2864
 check_prevs_add kernel/locking/lockdep.c:2989 [inline]
 validate_chain+0xbff/0x1620 kernel/locking/lockdep.c:3607
 __lock_acquire+0x7b7/0x1060 kernel/locking/lockdep.c:4837
 lock_acquire.part.0+0x13b/0x2a0 kernel/locking/lockdep.c:5442
 lock_acquire+0xb4/0x1d0 kernel/locking/lockdep.c:5415
 __mutex_lock_common kernel/locking/mutex.c:956 [inline]
 __mutex_lock+0x142/0x12d0 kernel/locking/mutex.c:1103
 mutex_lock_nested+0x16/0x20 kernel/locking/mutex.c:1118
 ni_lock fs/ntfs3/ntfs_fs.h:959 [inline]
 ntfs_set_size+0xee/0x210 fs/ntfs3/inode.c:880
 ntfs_extend_ex+0x3b1/0x5c0 fs/ntfs3/file.c:466
 ntfs_file_write_iter+0x244/0x4e0 fs/ntfs3/file.c:1050
 call_write_iter include/linux/fs.h:1887 [inline]
 new_sync_write+0x348/0x6d0 fs/read_write.c:518
 vfs_write+0x408/0x5b0 fs/read_write.c:605
 ksys_write+0x11d/0x220 fs/read_write.c:658
 __do_sys_write fs/read_write.c:670 [inline]
 __se_sys_write fs/read_write.c:667 [inline]
 __x64_sys_write+0x6e/0xb0 fs/read_write.c:667
 do_syscall_64+0x32/0x50 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x7fad69e95f67
Code: 0d 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
RSP: 002b:00007ffc66bcfaa8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 00007fad69e95f67
RDX: 0000000000000004 RSI: 0000555d79dccba0 RDI: 0000000000000001
RBP: 0000555d79dccba0 R08: 000000000000000a R09: 00007fad69f67a60
R10: 0000000000000080 R11: 0000000000000246 R12: 0000000000000004
R13: 00007fad69f68520 R14: 0000000000000004 R15: 00007fad69f68720


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
