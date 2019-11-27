Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A355710B0D3
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 27 Nov 2019 15:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2/vJ+a9tv7BIvGuKjo0YXqeiW8SiOfHNuybEj0GCBQA=; b=P8yLeOsHXGk6Kl0tkTWHcz5g1v
	XSOwULX881b69JbiGMOTxnmQHD/808YJESFoBzMrB8VDgrDfOrOWlphneTgRCFAPYpWuRDGaoYhw7
	MVgxeK2UORIPowxPWRE2YDpSOLMBiV1ojErflJhVvC04r24WN6z21vTsrfLWWGsXyho8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1iZxwW-0002pz-Or; Wed, 27 Nov 2019 14:05:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dvyukov@google.com>) id 1iZxtr-0002H6-4s
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 27 Nov 2019 14:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QiANxCdzbSnhcioCshDSncN9KNW/FPFbw4cOUMqmqeE=; b=ZZCg+IX+BhVMX+TlhU+9NrtnZX
 01qPQHThvCfqzImFaJyl/Cp83qcUZuLvcY3+YtX6J3JAGehGQx0u6st/2BZ6o30CBys7NjdMjAVid
 NA74LSmmEI2fi9HKgvYtDtAWeNIqoPfbgr6YlU5FWoKQnCWoYjYj3kErrFmeNCTlh00E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QiANxCdzbSnhcioCshDSncN9KNW/FPFbw4cOUMqmqeE=; b=F952vRUQIB+Ajz8h0YjAkNUaFU
 Xcp9E0LSOjj4aDSqbZwXfABvWB2GmteXMdIqHgXKM1PPGE6ePdSE3m4mC3b/xxaqJQS7+MPXXUrgt
 A4PCSxxh1UsOICtnksC21B4g6iNiHeKGVfq4cWRpkfFtlFc3AZ8UXADWAC3gGcNwG4Nw=;
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iZxto-00F4r3-U5
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 27 Nov 2019 14:02:35 +0000
Received: by mail-qk1-f195.google.com with SMTP id m125so19531903qkd.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 27 Nov 2019 06:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QiANxCdzbSnhcioCshDSncN9KNW/FPFbw4cOUMqmqeE=;
 b=ngfgP/ZTpPWsNp46WapVEeO/23UKqhQpYPxJU8Dc7TSCBLiuziZEFLNieXiEgVi/pK
 tGb3BLwoxViSQEurg9p1YJnhQF1sD9IHgHXkD4dFHyTfkGJsVJS4ua9HVSzdgPulEKos
 siwebeHBuryUKtLcjHPtFLBLXdDdua9RcF4wFtEbsdjZz6EHjLqTFvYW+vxzXB5jN+Bt
 ZlxupDjpq3KAjxtAiANabxP+G3KBnGAYg/VIaxmE3YgeSfvvmCL5Qj7pwJB7jsrY4fHt
 2De1tir7UzrXzumms27m8DxKOWYQoDT6QGUNDnwtE8ZizqoH8WZlW6euNObqwUQuAcY8
 Y8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QiANxCdzbSnhcioCshDSncN9KNW/FPFbw4cOUMqmqeE=;
 b=B8k39pnMBFwSgd6Y23JWAKeWGTYDDAn57+JhX5RiCnMrxeakM3OBl8C/firvM6dhdK
 AI4fqvfpKWexG/uNKPiHBCrhgFbWtRZdxpG2gYJk6RHp1U6qiGfalEYto990p8avHkOa
 n1Tb6pWFpgTIjJ1E8En3zI8Mum5Ys6520FOl2OUmwZ27GBlJceOhzp0vCDd3T1/dgm0p
 rBfidBsr43UBOaodUpPKY9ucL32v9fpndW4Fhsp1oQ7BoZg01fUUWCNzgELDnRKEiBDK
 Sz0g01QtdsBqO/w20IYX98Z6XXS3ZuCjS6B+WTE+ZwLyiLnQkaIi0an6JcOJmOwiOaZP
 pFlg==
X-Gm-Message-State: APjAAAWK+OzwYTwf38Ik0R57SS2/AJqV4AFikBRdGkrFvkuS6PY8aQs3
 gllF1LjsL/PaQGEcbYdS/0CKn0S+eT24S0/nfGqqhQ==
X-Google-Smtp-Source: APXvYqzS6mlz4BCAYHUVdzb46ZrHHqG8DBfbMgLijDEeGXHUH+izQyzaEY6Dq5osj9QJojOwj5cAr/rMnM/acdv6l04=
X-Received: by 2002:a37:bdc3:: with SMTP id n186mr40399qkf.407.1574863346374; 
 Wed, 27 Nov 2019 06:02:26 -0800 (PST)
MIME-Version: 1.0
References: <001a11441b6c6cb96c0569120042@google.com>
 <00000000000093ca84059853da04@google.com>
In-Reply-To: <00000000000093ca84059853da04@google.com>
Date: Wed, 27 Nov 2019 15:02:15 +0100
Message-ID: <CACT4Y+Y1=+uGRNUk5G-m4vF4AhRTWRAngLJLGGiFmN_Y72sGeQ@mail.gmail.com>
To: syzbot <syzbot+19b469021157c136116a@syzkaller.appspotmail.com>
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-Headers-End: 1iZxto-00F4r3-U5
X-Mailman-Approved-At: Wed, 27 Nov 2019 14:05:19 +0000
Subject: Re: [Linux-NTFS-Dev] KASAN: use-after-free Read in
 ntfs_read_locked_inode
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
Cc: Will Drewry <wad@chromium.org>, Kees Cook <keescook@chromium.org>,
 linux-parisc@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 deller@gmx.de, syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, jejb@parisc-linux.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@amacapital.net>,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Nov 27, 2019 at 2:20 PM syzbot
<syzbot+19b469021157c136116a@syzkaller.appspotmail.com> wrote:
>
> syzbot has bisected this bug to:
>
> commit 910cd32e552ea09caa89cdbe328e468979b030dd
> Author: Helge Deller <deller@gmx.de>
> Date:   Wed Mar 30 12:14:31 2016 +0000
>
>      parisc: Fix and enable seccomp filter support

FWIW this commit somehow has an effect on x86 binary. I can reproduce
it. I've collected what I know so far here:
https://github.com/google/syzkaller/issues/1271#issuecomment-559093018
Well, actually it does not look like effect of this commit but rather
non-deterministic/hermetic kernel build.
+Al for affected x86 build bullshit

> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=143090dee00000
> start commit:   3e968c9f Merge tag 'ext4_for_linus' of git://git.kernel.or..
> git tree:       upstream
> final crash:    https://syzkaller.appspot.com/x/report.txt?x=163090dee00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=123090dee00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7e8c053ac965e0dd
> dashboard link: https://syzkaller.appspot.com/bug?extid=19b469021157c136116a
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=142d219b800000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=143029db800000
>
> Reported-by: syzbot+19b469021157c136116a@syzkaller.appspotmail.com
> Fixes: 910cd32e552e ("parisc: Fix and enable seccomp filter support")
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/00000000000093ca84059853da04%40google.com.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
