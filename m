Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD4258050A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mx-0000Bv-15; Mon, 25 Jul 2022 20:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1oFbx7-0007UZ-QI
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 13:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uqPce/2WLBWX11F2TVvC179drfOgU0Fm6QA6rUzWtxk=; b=WxQzcCytMDkRb8zErxGA5s4LQ/
 DUhednrK70m2ldK/aM/mgZ3bnP/y0MsW7hEnnVcXkO/ldG22t5O8mR9+QIYtDcf5O+/hvHtpWaFZ9
 KfTMFrqE1x8MQ/61TZqrQ+Q4560m9nwgSx4XkA45EC3mRI1yStf1tPwpSFgfYdoXBPRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uqPce/2WLBWX11F2TVvC179drfOgU0Fm6QA6rUzWtxk=; b=hunyiKBccIl+eNlvkrj6gBMk9Y
 G6TQEXx+GB1KWYRR5WhnMERxxiMr9GI1mj49Ca0WGl22aJS9TLlwvqkMizY9IRazhoSzAHLrd4s6g
 0LboDkDQkzqkK9nV1+O+rZjPrvZU7HJ+UybxwUmGXaVoxjsQdcpHcxewfzJC2XTehPy8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oFbwz-0007c8-H8
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 13:47:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5759E610A7;
 Sun, 24 Jul 2022 13:47:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 602DFC3411E;
 Sun, 24 Jul 2022 13:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1658670426;
 bh=8MUfeClKGcKn3AqtGfuecf9P0aJoL5wTpMq5gBsfuvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2Ghi/sb6AHNs2SquAR9Zh7Y7LO1D/OeY3BGMpz33m8NNcKtoolVFdRiD4t6N/004p
 R/XDf0DHzUC5G4Sii/M8dxBlGehzszPiUg5u20gMTo5b1kDOuyUBSZwpsl1b6si49G
 0OBZWffxDOpYQSPA8z3cCYnEe0P1SrZ6NgLlFhwM=
Date: Sun, 24 Jul 2022 15:47:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumya Negi <soumya.negi97@gmail.com>
Message-ID: <Yt1NVQEOC6Ki3eUI@kroah.com>
References: <20220724132107.1163-1-soumya.negi97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220724132107.1163-1-soumya.negi97@gmail.com>
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
 > Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name >
 https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
 [...] Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oFbwz-0007c8-H8
X-Mailman-Approved-At: Mon, 25 Jul 2022 20:07:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Ensure $Extend is a directory
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
> Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> 
> Check whether $Extend is a directory or not( for NTFS3.0+) while loading
> system files. If it isn't(as in the case of this bug where the mft record for
> $Extend contains a regular file), load_system_files() returns false.

Please wrap your changelog text at 72 columns like your editor asked you
to when writing this :)

> 
> Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>

What commit caused this problem?  What Fixes: tag should go here?
Should it go to stable kernels?  If so, how far back?

> ---
>  fs/ntfs/super.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> index 5ae8de09b271..18e2902531f9 100644
> --- a/fs/ntfs/super.c
> +++ b/fs/ntfs/super.c
> @@ -2092,10 +2092,15 @@ static bool load_system_files(ntfs_volume *vol)
>  	// TODO: Initialize security.
>  	/* Get the extended system files' directory inode. */
>  	vol->extend_ino = ntfs_iget(sb, FILE_Extend);
> -	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino)) {
> +	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino) ||
> +	    !S_ISDIR(vol->extend_ino->i_mode)) {
> +		static const char *es1 = "$Extend is not a directory";
> +		static const char *es2 = "Failed to load $Extend";
> +		const char *es = !S_ISDIR(vol->extend_ino->i_mode) ? es1 : es2;
> +
>  		if (!IS_ERR(vol->extend_ino))
>  			iput(vol->extend_ino);
> -		ntfs_error(sb, "Failed to load $Extend.");
> +		ntfs_error(sb, "%s.", es);

Are you allowing the system log to be spammed by an untrusted user with
this change?

thanks,

greg k-h


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
