Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B6C7812E4
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 20:27:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX4Bu-0000Gp-LY;
	Fri, 18 Aug 2023 18:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qX3Vo-0000IE-2z
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=emG3qXIaO7YAlWV3oGlGfhgkQo9laxPdQNiw90Gx9Wc=; b=e5TsWuZMZDK4+ZmrVFJsObey0s
 SJLKowAiXWing7fUBNqJh+gwBP2Ec4boF35WLiutzZOuIWxJzpr/SJGnN6duA5Rfjgf4gbI4Sf/Yk
 dh7F5RBzrbaV7M4cTE00iUsH4pex/ckZePJgU2mQ9DZ/n8sXYSX5L8GRtiLtD+0ldgyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=emG3qXIaO7YAlWV3oGlGfhgkQo9laxPdQNiw90Gx9Wc=; b=R0p5FbrceR8qnOYhcbhUMJcU/8
 hleuQdgJsruhF0mYtXfCic7EL3wHMZ0A+yH4eh4NBSWC7gWdD8L2Y26P+V0FGmZg4S2tN33VAuI1c
 y+bAoyD0W/53v6Y/P6+mDoncxVtnHovVXQAD7w0WZHy4cLH08xeTflIGKVjXZ25L56Ck=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qX3Vi-008stb-Bb for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=emG3qXIaO7YAlWV3oGlGfhgkQo9laxPdQNiw90Gx9Wc=; b=fRiKkJZrSVPeWrWwrRPnd/vSim
 4Vn0YBHUdC6Sd+z6WPjGYyiwUV8CXUKNkei8B6+n3dOkBEer3jYkMBCEbIBtNywosja1Fw0nQNeXT
 MvwgJmgcgkK4OJDITE5DE8pkZU4H4ayjcNdF6MWsYCI1lwLtyxW04c4TlzevCyfknnHoATTFu5xuk
 li6tPDD/kgEPC4isq0P+gJi1TL0Q9BI4l5iz3lVo8Un9b0EOUchCXL0U1WUv5Gf7LteKDYLlVATBu
 8dqASGdTDwwe+xjiC7WZ3OaJzpcaBmQDu7AWMILuDqculAeLxge/xjEmR2tqttKyIdCdgb8D5vaVl
 slLjPsUQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qX3V9-00An9w-Sj; Fri, 18 Aug 2023 17:43:11 +0000
Date: Fri, 18 Aug 2023 18:43:11 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <ZN+tr1uluHSZqcIg@casper.infradead.org>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <202308181030.0DA3FD14@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202308181030.0DA3FD14@keescook>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
 > On Fri, Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman wrote: > >
 syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com> write [...]
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qX3Vi-008stb-Bb
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
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
> On Fri, Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman wrote:
> > syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com> writes:
> > 
> > > Hello,
> > >
> > > syzbot found the following issue on:
> > 
> > Not an issue.
> > Nothing to do with ntfs.
> > 
> > The code is working as designed and intended.
> > 
> > syzbot generated a malformed exec and the kernel made it
> > well formed and warned about it.
> > 
> > Human beings who run syzbot please mark this as not an issue in your
> > system.  The directions don't have a way to say that the code is working
> > as expected and designed.
> 
> WARN and BUG should not be reachable from userspace, so if this can be
> tripped we should take a closer look and likely fix it...
> 
> > > HEAD commit:    16931859a650 Merge tag 'nfsd-6.5-4' of git://git.kernel.or..
> > > git tree:       upstream
> > > console+strace: https://syzkaller.appspot.com/x/log.txt?x=13e2673da80000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=aa796b6080b04102
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
> > > compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17cdbc65a80000
> > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1262d8cfa80000
> > >
> > > Downloadable assets:
> > > disk image: https://storage.googleapis.com/syzbot-assets/eecc010800b4/disk-16931859.raw.xz
> > > vmlinux: https://storage.googleapis.com/syzbot-assets/f45ae06377a7/vmlinux-16931859.xz
> > > kernel image: https://storage.googleapis.com/syzbot-assets/68891896edba/bzImage-16931859.xz
> > > mounted in repro: https://storage.googleapis.com/syzbot-assets/4b6ab78b223a/mount_0.gz
> > >
> > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > Reported-by: syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com
> > >
> > > ntfs: volume version 3.1.
> > > process 'syz-executor300' launched './file1' with NULL argv: empty string added
> > > ------------[ cut here ]------------
> > > WARNING: CPU: 0 PID: 5020 at fs/exec.c:933 do_open_execat+0x18f/0x3f0 fs/exec.c:933
> 
> This is a double-check I left in place, since it shouldn't have been reachable:
> 
>         /*
>          * may_open() has already checked for this, so it should be
>          * impossible to trip now. But we need to be extra cautious
>          * and check again at the very end too.
>          */
>         err = -EACCES;
>         if (WARN_ON_ONCE(!S_ISREG(file_inode(file)->i_mode) ||
>                          path_noexec(&file->f_path)))
>                 goto exit;
> 
> So yes, let's figure this out...

When trying to figure it out, remember that ntfs corrupts random memory,
so all reports from syzbot that have "ntfs" in them should be discarded.
I tried to tell them that all this work they're doing testing ntfs3 is
pointless, but they won't listen.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
