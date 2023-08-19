Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C6E781950
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 19 Aug 2023 13:45:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qXKOr-0006GS-HK;
	Sat, 19 Aug 2023 11:45:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qXKEH-0000ue-Kg
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 19 Aug 2023 11:34:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xmL5t47xlsNGD0J7IBC1SIc96I2FT4e3TeVOfa9G4uM=; b=YfoM4hNQvl/pQMCXR5WyWeMxti
 sRaTD54AfoZUjTbs+KW7J2JMXbZUd1LF0y4mq5Wn0y0rkmdUQJOPccx+T3rAllg1lySvfXWzsS6su
 UVzA6V7BdiLzFgxDihSFjKtTBZ2Xt5FNuH15Xq3eLivFy80uM1gZ+ElUJezJ7lq4U6Tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xmL5t47xlsNGD0J7IBC1SIc96I2FT4e3TeVOfa9G4uM=; b=DhWoZkyWGwxXpRtvb9gjh0Zvn5
 YZb8DC0zSn1KerDvrCtYFFGg1ddT4SdNJ8x17a/hypJ/N00dCCm0HDjTCFD0Fp18AJKl+8K7/6Hgm
 UmoCwJR6mhI2QquxFTNauIQkJzlL/fT4F0ohYPItyRSaLOn2a6KAZuPkcJZXXFMdTvyw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qXKEE-009SLe-TQ for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 19 Aug 2023 11:34:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6A135601D6;
 Sat, 19 Aug 2023 11:34:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92281C433C7;
 Sat, 19 Aug 2023 11:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692444883;
 bh=z2ItxS/SqaayhDwGXDrxPezXvq3GP/mVQb6VL9p4QH8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W/Y6OMmRzyS4tWEsZPyJFvcwqJezrNUqIZg+EX23Cg2LgrJApl9RfxivzPEVFp+tZ
 +QLmootmB73clf6IhAOmk1ZkeHtZ9tyoS3sgA915BWNCcpsKeL/4qbj2Of+icLorGc
 y8lezKCp8dqqeX2kOWS5RMX2njz0xrElMUDim39048oNlafa7MTbe/F0SwPyJC0qE1
 rAM9nDH/Tk+kJG/UnNzcf59wnzZgelFTKmfMSM2HHstFXqkgU9h/PP7kTRryIGGUSQ
 VTAW/sXA6RwfAZFtzBe11LEnYeQRKPy/W6lJfWFxoiVIpBEaGUYlRXm05AAdvPpQNM
 icc7hQBb0msEA==
Date: Sat, 19 Aug 2023 13:34:38 +0200
From: Christian Brauner <brauner@kernel.org>
To: Mateusz Guzik <mjguzik@gmail.com>
Message-ID: <20230819-geblendet-energetisch-a90a2886216c@brauner>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <202308181030.0DA3FD14@keescook>
 <20230818191239.3cprv2wncyyy5yxj@f>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230818191239.3cprv2wncyyy5yxj@f>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 18, 2023 at 09:12:39PM +0200,
 Mateusz Guzik wrote:
 > On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote: > > This is
 a double-check I left in place, since it shouldn't have been rea [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qXKEE-009SLe-TQ
X-Mailman-Approved-At: Sat, 19 Aug 2023 11:45:47 +0000
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
Cc: syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>,
 Kees Cook <keescook@chromium.org>, linux-ntfs-dev@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, "Eric W. Biederman" <ebiederm@xmission.com>,
 linux-fsdevel@vger.kernel.org, anton@tuxera.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Aug 18, 2023 at 09:12:39PM +0200, Mateusz Guzik wrote:
> On Fri, Aug 18, 2023 at 10:33:26AM -0700, Kees Cook wrote:
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
> 
> As I mentioned in my other e-mail, the check is racy -- an unlucky
> enough remounting with noexec should trip over it, and probably a chmod
> too.
> 
> However, that's not what triggers the warn in this case.
> 
> The ntfs image used here is intentionally corrupted and the inode at
> hand has a mode of 777 (as in type not specified).
> 
> Then the type check in may_open():
>         switch (inode->i_mode & S_IFMT) {
> 
> fails to match anything.
> 
> This debug printk:
> diff --git a/fs/namei.c b/fs/namei.c
> index e56ff39a79bc..05652e8a1069 100644
> --- a/fs/namei.c
> +++ b/fs/namei.c
> @@ -3259,6 +3259,10 @@ static int may_open(struct mnt_idmap *idmap, const struct path *path,
>                 if ((acc_mode & MAY_EXEC) && path_noexec(path))
>                         return -EACCES;
>                 break;
> +       default:
> +               /* bogus mode! */
> +               printk(KERN_EMERG "got bogus mode inode!\n");
> +               return -EACCES;
>         }
> 
>         error = inode_permission(idmap, inode, MAY_OPEN | acc_mode);
> 
> catches it.
> 
> All that said, I think adding a WARN_ONCE here is prudent, but I
> don't know if denying literally all opts is the way to go.
> 
> Do other filesystems have provisions to prevent inodes like this from
> getting here?

Bugs reported against the VFS from ntfs/ntfs3 are to be treated with
extreme caution. Frankly, if it isn't reproducible without a corrupted
ntfs/ntfs3 image it is to be dismissed until further notice.

In this case it simply seems that ntfs is failing at ensuring that its
own inodes it reads from disk have a well-defined type.

If ntfs fails to validate that its own inodes it puts into the icache
are correctly initialized then the vfs doesn't need to try and taper
over this.

If ntfs fails at that, there's no guarantee that it doesn't also fail at
setting the correct i_ops for that inode. At which point we can check
the type in may_open() but we already used bogus i_ops the whole time on
some other inodes.

We're not here to make up for silly bugs like this. That WARN belongs
into ntfs not the vfs.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
