Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C297812E5
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 20:27:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX4Bv-0000HF-3z;
	Fri, 18 Aug 2023 18:27:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1qX3iS-0003pI-Je
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NnfOvircwmzonwWqUmHydK9lcy2/QxRfXy/Xv+icsas=; b=BKpLLpy18Ba93v4AxdqQOOpPTe
 4v/g39YkY2jLPEKkNchjmUMzLzlWJQVw45bRrJEi3v1zzGKIS+M+ywlIyTwwDhN/O/bLVAc2MI6OM
 1SXCy+p377H1R6rmwJ9jJQysqn4jVWrLmehj/fdUUT7LbkYedlzur3banqNDmP4Ui0pc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NnfOvircwmzonwWqUmHydK9lcy2/QxRfXy/Xv+icsas=; b=dwSJcWsw3OQbJ5SIflz2dDy0ie
 6JP3y97R2qALRG0LyVUTd3IvLijhjkJe9+IF4Q+FPjxWPidM9hnCiM3Pff/s2DJNXuEm/dtUSYAPF
 N5PrqcYaMHngVunqiSZ44wKVPKDn88SaWjBFY+xvnOsos0G9wXH/RpkJ0ZbT71LlnMSE=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qX3iP-008tOp-Vt for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:56:57 +0000
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-1bda9207132so9887695ad.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 18 Aug 2023 10:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692381405; x=1692986205;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NnfOvircwmzonwWqUmHydK9lcy2/QxRfXy/Xv+icsas=;
 b=DgCN3Jd/PxcsNcRlYxx4BzLrSBJrYtbbHYGvLalhOU8EtwK50AtTN3Aofh7pD8iLSi
 HcHpnOuaBYQATuaOtl4xiJe9P5KGJhumh2RYH45lnMGkkZDSuAqo8c7BUFBcgtrq+p2X
 l+QYCE4swvI2Jf2sgq6MqMup5zRm6AFkVusjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692381405; x=1692986205;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NnfOvircwmzonwWqUmHydK9lcy2/QxRfXy/Xv+icsas=;
 b=CU4HmiHnt8vQ4dMs9eweN8/yy9VVFpExYmcg9L2TmO+G+wb8WnrqRz/++woxiTBj63
 vVnvRbwcfH7Abx7RE3/UCvfqwprLo/yFyMIHJ8AeR5fYPnPvzwX5MzplXyptWVaF9bSM
 bbyff6b4Ut2YovKf9KMh7sYASY5IM+VRBBlvfsiSGOfP4oW5HwLsd273MGGbhsSGeSBt
 wGb5SxLdMKvBidcU4UCrb5zGTYFTVsOeW6cw0eOl2AUfZ9oGThzdES6fF8SGrWj0Irg+
 bJzPMdhtM60iAYiX+80SFwkkF1TlhJ44iL9zSxBh5aIMN2WO0Lw+uXrtofkFNaUU30NR
 Xu3g==
X-Gm-Message-State: AOJu0YzjxIqaehdbzscuDjOjDw9UELfp6PNpJsHdqzorFQ8SeSfqyp2X
 E9zLlpeeAvsObLYKaBVKsctnWA==
X-Google-Smtp-Source: AGHT+IGg4gZs48PTflMiuJSOSkNRPIt40O7HOlI6qEPHZkp6HPo5TXRZIf4MGveF+BSpktQ3KpawCQ==
X-Received: by 2002:a17:902:d4d1:b0:1b8:b285:ec96 with SMTP id
 o17-20020a170902d4d100b001b8b285ec96mr3835658plg.23.1692381405137; 
 Fri, 18 Aug 2023 10:56:45 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 10-20020a170902c14a00b001b8953365aesm2049883plj.22.2023.08.18.10.56.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Aug 2023 10:56:44 -0700 (PDT)
Date: Fri, 18 Aug 2023 10:56:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <202308181056.381D7C347@keescook>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <202308181030.0DA3FD14@keescook>
 <ZN+tr1uluHSZqcIg@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZN+tr1uluHSZqcIg@casper.infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 18, 2023 at 06:43:11PM +0100,
 Matthew Wilcox wrote:
 > On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote: > > On Fri,
 Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman wrote: > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qX3iP-008tOp-Vt
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

On Fri, Aug 18, 2023 at 06:43:11PM +0100, Matthew Wilcox wrote:
> On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
> > On Fri, Aug 18, 2023 at 11:26:51AM -0500, Eric W. Biederman wrote:
> > > syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com> writes:
> > > 
> > > > Hello,
> > > >
> > > > syzbot found the following issue on:
> > > 
> > > Not an issue.
> > > Nothing to do with ntfs.
> > > 
> > > The code is working as designed and intended.
> > > 
> > > syzbot generated a malformed exec and the kernel made it
> > > well formed and warned about it.
> > > 
> > > Human beings who run syzbot please mark this as not an issue in your
> > > system.  The directions don't have a way to say that the code is working
> > > as expected and designed.
> > 
> > WARN and BUG should not be reachable from userspace, so if this can be
> > tripped we should take a closer look and likely fix it...
> > 
> > > > HEAD commit:    16931859a650 Merge tag 'nfsd-6.5-4' of git://git.kernel.or..
> > > > git tree:       upstream
> > > > console+strace: https://syzkaller.appspot.com/x/log.txt?x=13e2673da80000
> > > > kernel config:  https://syzkaller.appspot.com/x/.config?x=aa796b6080b04102
> > > > dashboard link: https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
> > > > compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
> > > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17cdbc65a80000
> > > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1262d8cfa80000
> > > >
> > > > Downloadable assets:
> > > > disk image: https://storage.googleapis.com/syzbot-assets/eecc010800b4/disk-16931859.raw.xz
> > > > vmlinux: https://storage.googleapis.com/syzbot-assets/f45ae06377a7/vmlinux-16931859.xz
> > > > kernel image: https://storage.googleapis.com/syzbot-assets/68891896edba/bzImage-16931859.xz
> > > > mounted in repro: https://storage.googleapis.com/syzbot-assets/4b6ab78b223a/mount_0.gz
> > > >
> > > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > > Reported-by: syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com
> > > >
> > > > ntfs: volume version 3.1.
> > > > process 'syz-executor300' launched './file1' with NULL argv: empty string added
> > > > ------------[ cut here ]------------
> > > > WARNING: CPU: 0 PID: 5020 at fs/exec.c:933 do_open_execat+0x18f/0x3f0 fs/exec.c:933
> > 
> > This is a double-check I left in place, since it shouldn't have been reachable:
> > 
> >         /*
> >          * may_open() has already checked for this, so it should be
> >          * impossible to trip now. But we need to be extra cautious
> >          * and check again at the very end too.
> >          */
> >         err = -EACCES;
> >         if (WARN_ON_ONCE(!S_ISREG(file_inode(file)->i_mode) ||
> >                          path_noexec(&file->f_path)))
> >                 goto exit;
> > 
> > So yes, let's figure this out...
> 
> When trying to figure it out, remember that ntfs corrupts random memory,

!! Oh. Well, then yeah, that's not great. :(

-Kees

> so all reports from syzbot that have "ntfs" in them should be discarded.
> I tried to tell them that all this work they're doing testing ntfs3 is
> pointless, but they won't listen.

-- 
Kees Cook


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
