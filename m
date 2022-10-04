Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0873C5F4075
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  4 Oct 2022 11:58:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ofehH-0004Pp-TP;
	Tue, 04 Oct 2022 09:58:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dvyukov@google.com>) id 1ofeeq-00049P-Py
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 04 Oct 2022 09:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=krlGjCfp7HZZw1h0+gpML/FA98qdNiim5xqLn/4dYqU=; b=TAC5BB54NaBf1qzNYhkuCfnSYj
 yOXTiG4WFn/tAnl+GMEXfrGdYUjqfR1/zlmO06kACxft8ujC+c5AGnl/ED/c9M4j7FcHWQsorTGYI
 3FUK4p8XW7HQ7P69aJP7BxKJbfO4ieaU+25pvaYkL2ZQLON9cMMa/LWZt8QGhcGWr6Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=krlGjCfp7HZZw1h0+gpML/FA98qdNiim5xqLn/4dYqU=; b=Lcf6A/CffXIAwbOmuqiKZHPkOt
 FztNZybUHVUfDGPXkUH8FciBya5CzvLLg7/8irbeG/FdYt6FT2yF2eMGoTAHrmshw4RXE7jjnmilj
 /Mt60YfGYxZJxR9bciZ/JDjYryeV2FiWc8s6PealDtAtDI7ONV8hcguLKHn0eXza2rWw=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ofeeo-0006ny-Jb for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 04 Oct 2022 09:56:12 +0000
Received: by mail-lf1-f44.google.com with SMTP id 10so20393680lfy.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 04 Oct 2022 02:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=krlGjCfp7HZZw1h0+gpML/FA98qdNiim5xqLn/4dYqU=;
 b=bTSRtzLl5mh6EfUzKd1KY2KaWl5oxVf4ivJk5Se/Yt341ThcHF9UpMTLJqjzmOOpNd
 2LcrkWJUQU8xtsPKwQk0BDX4linebANGDOuvW0MBNcedkKsga/Quc/FZAlHPWnI3ySY0
 eiqRH0csdSz/71c3hQK3r7bDWsNUCULuE15mvSwqzi7oZzmwjbp7je0DW8nr8tvil/Hd
 eMT8S5h8Dr8Qa2kesAR57H/gCwZmw1h8Z1iH4ZG44bfblFvwBK9ZJ8KNo4wzGu4YbHVx
 sTlnYXK6bcPNpY4bLbqiMmpIBfiX7XlSOcSE+A11wH22rqE4vt3IoMGMZjDWq1A51YzT
 I+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=krlGjCfp7HZZw1h0+gpML/FA98qdNiim5xqLn/4dYqU=;
 b=u5AhQLKVBooRNAwtdYvV9Ll17NVTUWjyhSEBlqbRmciR1GxDuKG6CCse72+9D943/3
 t52uT4NhYV4pd93pdRoESTukX0fj9/cDnwXVIb17dpJQvbWPe0NNT7Q7lmIIgPPnHdCS
 SI3KXMlRZ/xOBSsxNSD47fBKADuF+hO8euYTbnO+rNSMSsD8iJwcsFs3RV5uJ7BBJBWB
 KJNuuROb7gIv7jsSw9GaChEsPMlnppVUHdcfvLJnlPeWQDPVhuialgmDar5Xie4yZvzJ
 TfKUqogKWYDoDLnJUCJBfuwUz1oqUthkoLM6pTLe6yNDydLxGQ21PxxiV7rySIGrUAfA
 jD7Q==
X-Gm-Message-State: ACrzQf3LnW1uVXA6a7H1LMjk3N4p6AtWAlXTuhqU+upk9reMKLx7+382
 qqzGRiOhUwFkRHGtGSZOn2idHzs0ah10wwNp7JJ4qw==
X-Google-Smtp-Source: AMsMyM7C47bHPESKTilrz72WvD2X3hhn4hY3ICaIArAruOxxGFlXnBeG584x5P1erCl7BInOUX6GLRuvr7V4RIS3Mtg=
X-Received: by 2002:a19:8c5e:0:b0:4a2:2d7b:eef with SMTP id
 i30-20020a198c5e000000b004a22d7b0eefmr3934578lfj.206.1664877363684; Tue, 04
 Oct 2022 02:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000006b624d05ea326f79@google.com>
In-Reply-To: <0000000000006b624d05ea326f79@google.com>
Date: Tue, 4 Oct 2022 11:55:52 +0200
Message-ID: <CACT4Y+YHSvb1t0vdZSNi8HR4ar+fYyoXxoG67_XO-miqBOC8pg@mail.gmail.com>
To: syzbot <syzbot+c3616973d9db2b0cff65@syzkaller.appspotmail.com>,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 4 Oct 2022 at 11:53,
 syzbot <syzbot+c3616973d9db2b0cff65@syzkaller.appspotmail.com>
 wrote: > > Hello, > > syzbot found the following issue on: > > HEAD commit:
 bbed346d5a96 Merge branch 'for-n [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1ofeeo-0006ny-Jb
X-Mailman-Approved-At: Tue, 04 Oct 2022 09:58:43 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] BUG: unable to handle kernel NULL
 pointer dereference in do_read_cache_folio
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
From: Dmitry Vyukov via Linux-NTFS-Dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Cc: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, 4 Oct 2022 at 11:53, syzbot
<syzbot+c3616973d9db2b0cff65@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    bbed346d5a96 Merge branch 'for-next/core' into for-kernelci
> git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
> console output: https://syzkaller.appspot.com/x/log.txt?x=120e011f080000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=aae2d21e7dd80684
> dashboard link: https://syzkaller.appspot.com/bug?extid=c3616973d9db2b0cff65
> compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
> userspace arch: arm64
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/11078f50b80b/disk-bbed346d.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/398e5f1e6c84/vmlinux-bbed346d.xz
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+c3616973d9db2b0cff65@syzkaller.appspotmail.com

+ntfs maintainers

> ntfs: volume version 3.1.
> Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
> Mem abort info:
>   ESR = 0x0000000086000006
>   EC = 0x21: IABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
>   FSC = 0x06: level 2 translation fault
> user pgtable: 4k pages, 48-bit VAs, pgdp=00000001515fb000
> [0000000000000000] pgd=080000015162c003, p4d=080000015162c003, pud=08000001511b5003, pmd=0000000000000000
> Internal error: Oops: 0000000086000006 [#1] PREEMPT SMP
> Modules linked in:
> CPU: 0 PID: 4711 Comm: syz-executor.1 Not tainted 6.0.0-rc7-syzkaller-18095-gbbed346d5a96 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
> pstate: 80400005 (Nzcv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : 0x0
> lr : filemap_read_folio+0x68/0x33c mm/filemap.c:2394
> sp : ffff800015e03940
> x29: ffff800015e03940 x28: 00000000ffffffff x27: 0000000000080001
> x26: 0000000000001000 x25: 0000000000000000 x24: 0000000000000000
> x23: fffffc00044d8580 x22: fffffc00044d8580 x21: 0000000000000000
> x20: 0000000000000000 x19: fffffc00044d8580 x18: fffffffffffffff5
> x17: ffff80000bffd6bc x16: 0000000000000068 x15: 000000000000000c
> x14: 0000000000000000 x13: 0000000000000000 x12: 0000000000000004
> x11: ff808000083d0b00 x10: 0000000000000000 x9 : ffff8000083d0b00
> x8 : 0000000000000100 x7 : ffff80000818d174 x6 : ffff8000083ed3f0
> x5 : 0000000000000000 x4 : 0000000000000001 x3 : 0000000000000000
> x2 : fffffc00044d8580 x1 : fffffc00044d8580 x0 : 0000000000000000
> Call trace:
>  0x0
>  do_read_cache_folio+0x1c8/0x588 mm/filemap.c:3519
>  do_read_cache_page mm/filemap.c:3561 [inline]
>  read_cache_page+0x40/0x178 mm/filemap.c:3570
>  read_mapping_page include/linux/pagemap.h:756 [inline]
>  ntfs_map_page fs/ntfs/aops.h:75 [inline]
>  ntfs_check_logfile+0x2a4/0x8cc fs/ntfs/logfile.c:532
>  load_and_check_logfile+0x5c/0xcc fs/ntfs/super.c:1215
>  load_system_files+0x7d0/0x1220 fs/ntfs/super.c:1941
>  ntfs_fill_super+0xbac/0x1030 fs/ntfs/super.c:2891
>  mount_bdev+0x1b8/0x210 fs/super.c:1400
>  ntfs_mount+0x44/0x58 fs/ntfs/super.c:3048
>  legacy_get_tree+0x30/0x74 fs/fs_context.c:610
>  vfs_get_tree+0x40/0x140 fs/super.c:1530
>  do_new_mount+0x1dc/0x4e4 fs/namespace.c:3040
>  path_mount+0x358/0x914 fs/namespace.c:3370
>  do_mount fs/namespace.c:3383 [inline]
>  __do_sys_mount fs/namespace.c:3591 [inline]
>  __se_sys_mount fs/namespace.c:3568 [inline]
>  __arm64_sys_mount+0x2c4/0x3c4 fs/namespace.c:3568
>  __invoke_syscall arch/arm64/kernel/syscall.c:38 [inline]
>  invoke_syscall arch/arm64/kernel/syscall.c:52 [inline]
>  el0_svc_common+0x138/0x220 arch/arm64/kernel/syscall.c:142
>  do_el0_svc+0x48/0x164 arch/arm64/kernel/syscall.c:206
>  el0_svc+0x58/0x150 arch/arm64/kernel/entry-common.c:636
>  el0t_64_sync_handler+0x84/0xf0 arch/arm64/kernel/entry-common.c:654
>  el0t_64_sync+0x18c/0x190 arch/arm64/kernel/entry.S:581
> Code: bad PC value
> ---[ end trace 0000000000000000 ]---
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/0000000000006b624d05ea326f79%40google.com.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
