Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F77F7812E2
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 20:27:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX4Bu-0000GX-9s;
	Fri, 18 Aug 2023 18:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjguzik@gmail.com>) id 1qX3Ol-0003U2-Kc
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:36:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PhiocK4Ri4D1zb/X3eJ1XI8+uHmj0gt2ni7YPVNRfdU=; b=Q7mHsdAFAfsQfXIqNmJpPOUn01
 lwNKOh7qK/KmUxyCClXK5nNC+7XuXjkqjnwqllUDOxfUaD+Z4Lg0i+7//AFGQ3KcWJ0FUJoREQ6UO
 DFokMDEOzCHv+1vv1/sLwgmV41GrJCvCJcWzayZQFjvE9jk43MenVMrybbJBpz6m3fFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PhiocK4Ri4D1zb/X3eJ1XI8+uHmj0gt2ni7YPVNRfdU=; b=Fyx79Gg8KIm0JO/tghCKrbpSyk
 Yuf9MMpy4C9U62rUciXLy5mDm4ydUKCGcyLDR5p8IpILDwABVgBC4dv9pnrx81X555A9CNEhktGxA
 lnhlBca7z5cnXHpIZSw9kQeFiUBq9I3bHgdPB4671Vs62pn8r3SbPqmFNXJuLaoMulp8=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qX3Ol-0006ss-9E for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:36:35 +0000
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-52564f3faf7so1433428a12.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 18 Aug 2023 10:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692380189; x=1692984989;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PhiocK4Ri4D1zb/X3eJ1XI8+uHmj0gt2ni7YPVNRfdU=;
 b=TesoAeZmjSbklF69FVSvNu7xYuqyhlyHmpzBm07dOB2E27tpXRJRxy5qxfO2xrmBjG
 dRQEzr8mgH7J8qFVKpl8fafto6POfKUQRliEw/n17V66WDL7tuOp0XU4i6KVKutboB6j
 w5PxkgN/jN2ib8DWBdYJfXEId4qAjQmFtw0+KgpUwFmvLI3o/J1RyHv8tuNcosFDBD30
 AwiGBNDO7ygqqnLHNDGNCu1LXphAs1JX+2GLcP5Ib+JqRwObCLsVEfUFNqBoo1/y+vCn
 RZJuI+9WSjtQF1ROJTZB6jyZ9MoJFYk+U+Jm/GHFNa12BJY7Xq6EIj0IGR/QK5GeiWOl
 B7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692380189; x=1692984989;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PhiocK4Ri4D1zb/X3eJ1XI8+uHmj0gt2ni7YPVNRfdU=;
 b=SIkTHZ33r7WB9wYEh+VmPGhM+bFlqNa44hpIgvQ1aVMTx+TN2JNBPGkihHpY2xJEuB
 VmEieb0Au/qrjvk2mIE2UvxWxv2dWkMofhk83pOslcKEuJ24T9Ki/bbA3+kNCtCYuX/M
 rqrXJNoL2jAwwYr3YbVT8sAI37gzMfZ7bO/Ci9btbNWFL/zM7RosCg1KbDfgtn9chyoO
 jUG0F3dydUnFJrJolprwb81sXvf5bptma1WE13zpELxvFkfm1nywYdC4dEaPKN1qPGJD
 bPSzqYfhgPDbFYep7zfeMqFRFOjL6BU9qc34sMHtGSOTTasHWd9R4DjRzQGKio5trYDp
 qjPw==
X-Gm-Message-State: AOJu0YxLTXNjuFoYcO0AYORBslw1yrYEG8CXkMcLm8bJrugbVGEjTq63
 QShPlknMVxbubwU8OWPpjx0=
X-Google-Smtp-Source: AGHT+IESy/i9dKikBb8Pi3d0kH7qo7HsA/5zFEpaDDv1846WfnaVC+iQ6GZRa4ONx3qNqv6jSKj67w==
X-Received: by 2002:a17:906:1d9:b0:99d:f2dc:97e3 with SMTP id
 25-20020a17090601d900b0099df2dc97e3mr2185710ejj.20.1692380188514; 
 Fri, 18 Aug 2023 10:36:28 -0700 (PDT)
Received: from f (cst-prg-27-89.cust.vodafone.cz. [46.135.27.89])
 by smtp.gmail.com with ESMTPSA id
 t3-20020a170906a10300b00993860a6d37sm1430958ejy.40.2023.08.18.10.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 10:36:28 -0700 (PDT)
Date: Fri, 18 Aug 2023 19:36:25 +0200
From: Mateusz Guzik <mjguzik@gmail.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20230818173625.by6bud4u7uz2k4be@f>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o7j471v8.fsf@email.froward.int.ebiederm.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman
 wrote: > syzbot writes: > > > Hello, > > > > syzbot found the following issue
 on: > > Not an issue. > Nothing to do with ntfs. > > The cod [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mjguzik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qX3Ol-0006ss-9E
X-Mailman-Approved-At: Fri, 18 Aug 2023 18:27:18 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] WARNING in do_open_execat
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
Cc: brauner@kernel.org,
 syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>,
 keescook@chromium.org, linux-ntfs-dev@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman wrote:
> syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com> writes:
> 
> > Hello,
> >
> > syzbot found the following issue on:
> 
> Not an issue.
> Nothing to do with ntfs.
> 
> The code is working as designed and intended.
> 
> syzbot generated a malformed exec and the kernel made it
> well formed and warned about it.
> 

There is definitely an issue here.

The warn on comes from:
        /*
         * may_open() has already checked for this, so it should be
         * impossible to trip now. But we need to be extra cautious
         * and check again at the very end too.
         */
        err = -EACCES;
        if (WARN_ON_ONCE(!S_ISREG(file_inode(file)->i_mode) ||
                         path_noexec(&file->f_path)))
                goto exit;

Where path_noexec is:
        return (path->mnt->mnt_flags & MNT_NOEXEC) ||
               (path->mnt->mnt_sb->s_iflags & SB_I_NOEXEC);

So as is I think this can race with mount update *adding* noexec after
may_open() returned but before the code gets to recheck.

I suspect i_mode can also change in the time window.

However, the reproducer does not try to race anything so this is not why
the warn.

From my reading the kernel always lands in may_open() (as in, not
fs-specific) so as is I'm puzzled as to what happened. Maybe I'll try to
repro later.

> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17cdbc65a80000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1262d8cfa80000
> >
> > Downloadable assets:
> > disk image: https://storage.googleapis.com/syzbot-assets/eecc010800b4/disk-16931859.raw.xz
> > vmlinux: https://storage.googleapis.com/syzbot-assets/f45ae06377a7/vmlinux-16931859.xz
> > kernel image: https://storage.googleapis.com/syzbot-assets/68891896edba/bzImage-16931859.xz
> > mounted in repro: https://storage.googleapis.com/syzbot-assets/4b6ab78b223a/mount_0.gz
> >
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com
> >
> > ntfs: volume version 3.1.
> > process 'syz-executor300' launched './file1' with NULL argv: empty string added
> > ------------[ cut here ]------------
> > WARNING: CPU: 0 PID: 5020 at fs/exec.c:933 do_open_execat+0x18f/0x3f0 fs/exec.c:933
> > Modules linked in:
> > CPU: 0 PID: 5020 Comm: syz-executor300 Not tainted 6.5.0-rc6-syzkaller-00038-g16931859a650 #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/26/2023
> > RIP: 0010:do_open_execat+0x18f/0x3f0 fs/exec.c:933
> > Code: 8e 46 02 00 00 41 0f b7 1e bf 00 80 ff ff 66 81 e3 00 f0 89 de e8 b1 67 9b ff 66 81 fb 00 80 0f 84 8b 00 00 00 e8 51 6c 9b ff <0f> 0b 48 c7 c3 f3 ff ff ff e8 43 6c 9b ff 4c 89 e7 e8 4b c9 fe ff
> > RSP: 0018:ffffc90003b0fd10 EFLAGS: 00010293
> > RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> > RDX: ffff888028401dc0 RSI: ffffffff81ea9c4f RDI: 0000000000000003
> > RBP: 1ffff92000761fa2 R08: 0000000000000003 R09: 0000000000008000
> > R10: 0000000000000000 R11: 0000000000000000 R12: ffff88802bf18780
> > R13: ffff888075d70000 R14: ffff8880742776a0 R15: 0000000000000001
> > FS:  000055555706b380(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 00007ffe0f1d3ff8 CR3: 0000000015f97000 CR4: 0000000000350ef0
> > Call Trace:
> >  <TASK>
> >  bprm_execve fs/exec.c:1830 [inline]
> >  bprm_execve+0x49d/0x1a50 fs/exec.c:1811
> >  do_execveat_common.isra.0+0x5d3/0x740 fs/exec.c:1963
> >  do_execve fs/exec.c:2037 [inline]
> >  __do_sys_execve fs/exec.c:2113 [inline]
> >  __se_sys_execve fs/exec.c:2108 [inline]
> >  __x64_sys_execve+0x8c/0xb0 fs/exec.c:2108
> >  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> >  do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
> >  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > RIP: 0033:0x7fee7ec27b39
> > Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
> > RSP: 002b:00007ffe6c369d28 EFLAGS: 00000246 ORIG_RAX: 000000000000003b
> > RAX: ffffffffffffffda RBX: 0031656c69662f2e RCX: 00007fee7ec27b39
> > RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000480
> > RBP: 00007fee7ec7004b R08: 000000000001ee3b R09: 0000000000000000
> > R10: 00007ffe6c369bf0 R11: 0000000000000246 R12: 00007fee7ec70055
> > R13: 00007ffe6c369f08 R14: 0000000000000001 R15: 0000000000000001
> >  </TASK>
> >
> >
> > ---
> > This report is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this issue. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> >
> > If the bug is already fixed, let syzbot know by replying with:
> > #syz fix: exact-commit-title
> >
> > If you want syzbot to run the reproducer, reply with:
> > #syz test: git://repo/address.git branch-or-commit-hash
> > If you attach or paste a git patch, syzbot will apply it before testing.
> >
> > If you want to overwrite bug's subsystems, reply with:
> > #syz set subsystems: new-subsystem
> > (See the list of subsystem names on the web dashboard)
> >
> > If the bug is a duplicate of another bug, reply with:
> > #syz dup: exact-subject-of-another-report
> >
> > If you want to undo deduplication, reply with:
> > #syz undup


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
