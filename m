Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F343177397F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Aug 2023 12:00:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qTJVo-0002V5-1i;
	Tue, 08 Aug 2023 10:00:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qTFFc-0001K5-GO
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 05:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GHyoNG6X4F/8nO4QSr/72vXMF6BTRJfz0pXzYOUrjxs=; b=bbjx5ev1mLQ+EsdviyZekf6qOK
 6l4zZCPK4SjEF81RSXkypX1Wn4RZPukf0HRvY7uTQt1SMf2ZlR8MO/UBrX1sHb0VK2MxdpEwLVGl8
 LcWE7TNXfa08MubAR4eTZkvmHhOXjyNWqGKDEvnARrOFc0+uJvpvXTh89Hnqeav7HZio=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GHyoNG6X4F/8nO4QSr/72vXMF6BTRJfz0pXzYOUrjxs=; b=VhqX/VO09D89dXJOVP/+lKFm6s
 Qd96s4PASu0IOt4OgCl53nCmGVOYO5Q0nSbF23jEDWxZgFKZmhPCTGFbLssqgJb6vF+oWOgFEpyVz
 hUzpMiinqmMjOkBDjJDGhZx605jTKuNGoIlOaEoDFDYa4r4S0uuv4xycaJTRIjD0gA/c=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qTFFU-0001jl-Fa for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 05:27:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5AEE66239A;
 Tue,  8 Aug 2023 05:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47730C433C7;
 Tue,  8 Aug 2023 05:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1691472425;
 bh=S9P0wt9/UV+bZwCnIUc+wtbpz2FzSntM/auL0J/PicU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B9ZxvXh1Apn7cPVBgbYzQsJo5pXkygSx/IaWe63PMlz0D+HZ7IERKsmOoxOWPpL/D
 cgcCPx9EVmvp/8k9D8u/ZDWMLDhGjzcbJuqfZrjzCPBVxwR3q/o2D0dc/nHY1Vpwdj
 jg4WCJ6iFvYW2RfRUc0OLYPwu54K+JwG15UlimWs=
Date: Tue, 8 Aug 2023 07:27:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Manas Ghandat <ghandatmanas@gmail.com>
Message-ID: <2023080821-blandness-survival-44af@gregkh>
References: <20230808043404.9028-1-ghandatmanas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230808043404.9028-1-ghandatmanas@gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 08, 2023 at 10:04:05AM +0530,
 Manas Ghandat wrote:
 > Added a check to the compression_unit so that out of bound doesn't > occur.
 > > Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com> > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qTFFU-0001jl-Fa
X-Mailman-Approved-At: Tue, 08 Aug 2023 10:00:23 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Aug 08, 2023 at 10:04:05AM +0530, Manas Ghandat wrote:
> Added a check to the compression_unit so that out of bound doesn't
> occur.
> 
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
> ---
>  fs/ntfs/inode.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index 6c3f38d66579..2ee100a7df32 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -1077,6 +1077,17 @@ static int ntfs_read_locked_inode(struct inode *vi)
>  					goto unm_err_out;
>  				}
>  				if (a->data.non_resident.compression_unit) {
> +					if(a->data.non_resident.compression_unit + 
> +						vol->cluster_size_bits > 32) {
> +							ntfs_error(vi->i_sb, "Found "
> +								"non-standard "
> +								"compression unit (%u).   "
> +								"Cannot handle this.",

Please do not split strings across lines.

And checkpatch will find other problems with this change as well, did
you run it before submitting it.

thanks,

greg k-h


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
