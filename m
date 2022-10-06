Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B43135F6561
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  6 Oct 2022 13:47:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ogPLb-0006ly-P0;
	Thu, 06 Oct 2022 11:47:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dvyukov@google.com>) id 1ogLM8-0004Ou-3G
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 06 Oct 2022 07:31:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bzh5XPJ/JYJOsSs0b9iIyuJ7kyZ3RRFqiPXEWQtLdbg=; b=LSDFHl1eOt33lW6egwRmcZ5znc
 MmnSzOSYCMiFG9qZUkUP2qzWYluMdq8RBKLVSjEHytAAbzx04ovwFY/ne7+Ig6uo/uIdKCH/Dmko/
 aWI3SKzEvyA1Kg+Kr9kGrLKkfOHNjXxWXkOhfQAiOFh4qkY0mwXnB9TKAlotz5vEnrco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bzh5XPJ/JYJOsSs0b9iIyuJ7kyZ3RRFqiPXEWQtLdbg=; b=k1hgvuXevVnbEP/N9xiCRBQGdT
 2nBrbLaJBYw/xIXzb/9JpySgI4aY++a6h7bqAIqf5G2dQC4zwyeVc73nNS60ccW3vOXKmovZJSh0U
 GStM2GYOV5nOEuu5iwgjFbbAX13g0aXDSUVJW80XC39kSHzAE22wcBBzyp0+wGipiJk0=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogLM6-00ERKk-C3 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 06 Oct 2022 07:31:44 +0000
Received: by mail-lf1-f46.google.com with SMTP id a29so1466490lfo.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 06 Oct 2022 00:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Bzh5XPJ/JYJOsSs0b9iIyuJ7kyZ3RRFqiPXEWQtLdbg=;
 b=G8QJncrqWim5RGtwF8WoUP1eCvDLzpIiuhKxLpZv3x0bn9NUFqHTLZGgFYtcrDGa4K
 iqtqR7x08dHYndhi8UvVKV/rK28g+N4RWFJm8R3QZIMn551jhQklmouhLDifrPi19iOz
 2T8qBvyW12Nxbk1lOVIfjs8MZ036wiCN7xH/zdoApAj6T2NjKjNZnGFaHNcKScBGhGR/
 F0yS5imyknmQjodGEHk/ARqaKksosSB6hCadP7yexx++mNJsL0BNp6jQXxZjojA7GChR
 SGiUu/NYoRBW+J/4Fs+3jb9bYuA98y27hSTBZQWYVP8lwW9+7W7xi2T1jOXTeDZqORhA
 OGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Bzh5XPJ/JYJOsSs0b9iIyuJ7kyZ3RRFqiPXEWQtLdbg=;
 b=Scq4cgBvE1by8mTZdUxJfgAM5I0v8WzzkpzsCXjKa0H+7GEgIMphuMtZpjvLolGbdI
 yBk5zP4Xc2DwcOvjyv1VAkkx6KW6DHucB/GOi5MapDhM9pKQXrRv9etMmQ9GrMicaaE0
 CAEU+C+Ut6O/xYrGmPXEVkGhEn5prg/WjJkFr+Jmst/yk0baNaTCT2X9Dr3xMclrgiQk
 ZB70aph8e7Cg6lrTtrvTB0jqt+Zr44zlF0L/oid98Y2YdxfJ0zDDmH/2N21ZD/zHOVQI
 Ep8q+INFxO3UHKcH+S/TWJa1kINhf2v6ch9ZyhM/wMyxGRoaaUkbVnTyw6lno7kU3ByH
 7QQw==
X-Gm-Message-State: ACrzQf1lyZvLjsJ07AsXWV15xlv58BhlJdyon8F7sJWZknHRTESmrUx2
 egxFpVOidUlHJNJSRsnQkpP0fo8BjmqSE1m/kom87g==
X-Google-Smtp-Source: AMsMyM7tSz9cV99zpsrfnendXF8gONzryDHdy2cpg8UZHmBzL7RXATWDfcteic79QbY7c8z3GXhFF96xvWixdPjkIhA=
X-Received: by 2002:a05:6512:3297:b0:4a2:3f76:486a with SMTP id
 p23-20020a056512329700b004a23f76486amr1419642lfe.137.1665041495537; Thu, 06
 Oct 2022 00:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000065cf9305ea4596c5@google.com>
 <60256037-10ab-1861-3b52-91143e52925f@I-love.SAKURA.ne.jp>
 <CACT4Y+aqeSZZ9ZWZ8soccVPYn9EuEgAMCA+_erp3D0aD0zN-dw@mail.gmail.com>
In-Reply-To: <CACT4Y+aqeSZZ9ZWZ8soccVPYn9EuEgAMCA+_erp3D0aD0zN-dw@mail.gmail.com>
Date: Thu, 6 Oct 2022 09:31:19 +0200
Message-ID: <CACT4Y+YGt62Q+FRSFg_NUvw0CXFiDeveeCsGwCR6qKuPywOsuw@mail.gmail.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 5 Oct 2022 at 17:57,
 Dmitry Vyukov <dvyukov@google.com>
 wrote: > > On Wed, 5 Oct 2022 at 16:01,
 Tetsuo Handa > <penguin-kernel@i-love.sakura.ne.jp>
 wrote: > > > > I suspect that there is a bug [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1ogLM6-00ERKk-C3
X-Mailman-Approved-At: Thu, 06 Oct 2022 11:47:25 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] WARNING: locking bug in
 ntfs_fill_super
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Aleksandr Nogikh <nogikh@google.com>,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+cf619565607c56656eac@syzkaller.appspotmail.com>,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, 5 Oct 2022 at 17:57, Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, 5 Oct 2022 at 16:01, Tetsuo Handa
> <penguin-kernel@i-love.sakura.ne.jp> wrote:
> >
> > I suspect that there is a bug in backtrace decoder for arm64.
> >
> > > _atomic_dec_and_lock+0xc8/0x130 lib/dec_and_lock.c:28
> > > iput+0x50/0x324 fs/inode.c:1766
> > > ntfs_fill_super+0x1254/0x14a4 fs/ntfs/super.c:188
> >
> > Both ntfs and ntfs3 provide ntfs_fill_super() and
> >
> > > get_tree_bdev+0x1e8/0x2a0 fs/super.c:1323
> > > ntfs_fs_get_tree+0x28/0x38 fs/ntfs3/super.c:1358
> >
> > ntfs_fs_get_tree() in fs/ntfs3/super.c is passing
> > ntfs_fill_super() defined in fs/ntfs3/super.c .
> >
> > Therefore, I believe that
> >
> >   ntfs_fill_super+0x1254/0x14a4
> >
> > should be somewhere in fs/ntfs3/super.c file.
> >
> > > vfs_get_tree+0x40/0x140 fs/super.c:1530
> > > do_new_mount+0x1dc/0x4e4 fs/namespace.c:3040
> >
> > Similar problem "WARNING: nested lock was not taken in ntfs_fill_super"
> > at https://syzkaller.appspot.com/bug?id=163e6da17e1a91995f563a2d5ee68a65468fb713
> > looks reasonable.
>
> Interesting.
>
> We have logic to select the right symbols based on size:
> https://github.com/google/syzkaller/blob/2c6543adc4c5a9108455d1e59b0df0d4afc05c99/pkg/report/linux.go#L427
>
> However, in this case this piece does not work:
> https://github.com/google/syzkaller/blob/2c6543adc4c5a9108455d1e59b0df0d4afc05c99/pkg/symbolizer/nm.go#L50-L56
>
> It worked for x86, but not for arm64.
>
> In this case the symbols are:
>
> $ nm -nS ./vmlinux-bbed346d | grep -C 3 ntfs_fill_super
> ffff800008bb6b80 t $x.94
> ffff800008bb6b84 t $x.4
> ffff800008bb6b84 0000000000000058 t ntfs_mount
> ffff800008bb6bdc 0000000000001030 t ntfs_fill_super
> ffff800008bb6ca0 t $x.6
> ffff800008bb7c00 t $x.9
> ffff800008bb7c08 t $x.11
> --
> ffff800008c03ae0 0000000000000038 t ntfs_fs_get_tree
> ffff800008c03b18 00000000000001f4 t ntfs_fs_reconfigure
> ffff800008c03d0c 000000000000013c t put_ntfs
> ffff800008c03e48 00000000000014a4 t ntfs_fill_super
> ffff800008c052e0 t $x.12
> ffff800008c052e8 t $x.14
> ffff800008c052ec 000000000000008c t ntfs_map_page
>
> and these $x things break our calculations.
>
> I see that the kernel indeed calculates the size based on the start of
> the next symbol:
> https://elixir.bootlin.com/linux/latest/source/kernel/kallsyms.c#L288
>
> I think we need to do the same in pkg/nm to match the kernel logic.
>
> P.s. the provided vmlinux was very useful in this case.

Should be fixed by: https://github.com/google/syzkaller/pull/3424


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
