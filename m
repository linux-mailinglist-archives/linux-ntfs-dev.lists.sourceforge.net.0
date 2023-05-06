Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A06F92C1
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  6 May 2023 17:35:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pvJwH-0000gq-2s;
	Sat, 06 May 2023 15:35:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pv6AU-00087h-5z
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 00:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rwvWc8bM20VepW3UZUy+d+lqyuBfG3OHMuPxc9bBDus=; b=WJBvIg4kxcJd/JjHc4QMZPkn8C
 niLxreHykoyTpRhI24r1jGbnJt76zXQwgi4m+K8NtIVknsKUgoblELwwP4/fyTZ9D/UmJtyKAq8QW
 l/vqALI0buTpW97oxJ1eU6USVF4xU/dG+rUocOoAYlVV3xyi9hLqOHzF2nmE0SsvQJxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rwvWc8bM20VepW3UZUy+d+lqyuBfG3OHMuPxc9bBDus=; b=MTvwfGnVMltFvuLpEyt8rA9Vbj
 9sfgWH4YxIgAxnpPQqqquMbiDZr4HADo78kFtlF72fFan/tR/214E4g0onqkhv6RjoyA8BKECRAUK
 1YlS5RQIXwwXIGZ/76AjsKEpbeR5tcHzreF5cBVR+1YCoCwak4AW58JwMjZtuv1BRjGU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pv6AP-00FsNY-Fc for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 00:52:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 493FA6144E
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 00:52:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A104AC4339E
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 00:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683334362;
 bh=1SS00KeWpuyIU/DKhcDX5dtOBMR10FYpGFsGPZXyfbw=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=k9sPCO/coikBd6vrwndjknAkCzl6x4f4gpvxrxDGfMmC/Tqf6FfjcvossntGZd91h
 49YTwzwY/WhordJPUR6+SCNR444gF3N8Rpfmh/j83NOFBUEO2H5i3rbTv3qXzevBSJ
 ZcF1d/lylD4gjgTi6+HxJYM+E50XijPcCGHrCAH+tIBK74klmzLndinBH4DXwgQy/y
 +r/Me7GL0PIkALH1jb27Ep0gF17CMB1+J9/r5t1XrWUvI7uCx2V8ZaW2RkYOo7D6j/
 U3Xi2qfka4Y0uCeRlrWI6kyM8ANM2jx2D4A/x39YYCdc5P0EyoZ/S/YmuuqsShDNhD
 sWOnKfqtSpZNw==
Received: by mail-oo1-f53.google.com with SMTP id
 006d021491bc7-547303fccefso1627706eaf.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 05 May 2023 17:52:42 -0700 (PDT)
X-Gm-Message-State: AC+VfDz40Ku7AxB+1UM7zOMj1NMDD6rCA5RrVjsT0DfqmUqf72mGmKyX
 gxDe8tFFF0bvcB/jvYv/u/ftGBNEp051qDWppi4=
X-Google-Smtp-Source: ACHHUZ65N71PhcWlfTQnr8plARJc8DTyW98HBWGYEvov+ompwC4lcan6sFdmtdY4n5o5e4LuKeEqIR0gUtSwsurrrG0=
X-Received: by 2002:a4a:6f44:0:b0:542:5d35:12a0 with SMTP id
 i4-20020a4a6f44000000b005425d3512a0mr1226518oof.3.1683334361695; Fri, 05 May
 2023 17:52:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:981:0:b0:4d3:d9bf:b562 with HTTP; Fri, 5 May 2023
 17:52:41 -0700 (PDT)
In-Reply-To: <20230407194433.25659-1-listdansp@mail.ru>
References: <20230407194433.25659-1-listdansp@mail.ru>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Sat, 6 May 2023 09:52:41 +0900
X-Gmail-Original-Message-ID: <CAKYAXd8em5AxsA=m9oRqyCuzcnx6DzkOoxe_UAqkjB6zT5AiPQ@mail.gmail.com>
Message-ID: <CAKYAXd8em5AxsA=m9oRqyCuzcnx6DzkOoxe_UAqkjB6zT5AiPQ@mail.gmail.com>
To: Danila Chernetsov <listdansp@mail.ru>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-04-08 4:44 GMT+09:00,
 Danila Chernetsov <listdansp@mail.ru>:
 > In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
 > prior to 'ctx' being set to a non-NULL value, avoid dere [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pv6AP-00FsNY-Fc
X-Mailman-Approved-At: Sat, 06 May 2023 15:35:12 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: do not dereference a null ctx on
 error
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
 Christian Brauner <brauner@kernel.org>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>,
 lvc-project <lvc-project@linuxtesting.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-04-08 4:44 GMT+09:00, Danila Chernetsov <listdansp@mail.ru>:
> In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
> prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
> 'ctx' pointer in error handling.
Please check the warnings from checkpatch.pl.

ERROR: trailing whitespace
#107: FILE: fs/ntfs/mft.c:1958:
+^I$

ERROR: "(foo*)" should be "(foo *)"
#118: FILE: fs/ntfs/mft.c:1967:
+			if (ntfs_mapping_pairs_build(vol, (u8*)a + le16_to_cpu(

ERROR: else should follow close brace '}'
#146: FILE: fs/ntfs/mft.c:1984:
 		}
+		else if (IS_ERR(ctx->mrec)) {

>
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Danila Chernetsov <listdansp@mail.ru>
> ---
>  fs/ntfs/mft.c | 38 +++++++++++++++++++++-----------------
>  1 file changed, 21 insertions(+), 17 deletions(-)
>
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index 48030899dc6e..e1126ce6f8ec 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -1955,36 +1955,40 @@ static int
> ntfs_mft_data_extend_allocation_nolock(ntfs_volume *vol)
>  				"attribute.%s", es);
>  		NVolSetErrors(vol);
>  	}
> -	a = ctx->attr;
> +	
>  	if (ntfs_rl_truncate_nolock(vol, &mft_ni->runlist, old_last_vcn)) {
>  		ntfs_error(vol->sb, "Failed to truncate mft data attribute "
>  				"runlist.%s", es);
>  		NVolSetErrors(vol);
>  	}
> -	if (mp_rebuilt && !IS_ERR(ctx->mrec)) {
> -		if (ntfs_mapping_pairs_build(vol, (u8*)a + le16_to_cpu(
> +	if (ctx) {
> +		a = ctx->attr;
> +		if (mp_rebuilt && !IS_ERR(ctx->mrec)) {
> +			if (ntfs_mapping_pairs_build(vol, (u8*)a + le16_to_cpu(
>  				a->data.non_resident.mapping_pairs_offset),
>  				old_alen - le16_to_cpu(
> -				a->data.non_resident.mapping_pairs_offset),
> +					a->data.non_resident.mapping_pairs_offset),
>  				rl2, ll, -1, NULL)) {
> -			ntfs_error(vol->sb, "Failed to restore mapping pairs "
> +				ntfs_error(vol->sb, "Failed to restore mapping pairs "
>  					"array.%s", es);
> -			NVolSetErrors(vol);
> -		}
> -		if (ntfs_attr_record_resize(ctx->mrec, a, old_alen)) {
> -			ntfs_error(vol->sb, "Failed to restore attribute "
> +				NVolSetErrors(vol);
> +			}
> +			if (ntfs_attr_record_resize(ctx->mrec, a, old_alen)) {
> +				ntfs_error(vol->sb, "Failed to restore attribute "
>  					"record.%s", es);
> -			NVolSetErrors(vol);
> +				NVolSetErrors(vol);
> +			}
> +			flush_dcache_mft_record_page(ctx->ntfs_ino);
> +			mark_mft_record_dirty(ctx->ntfs_ino);
>  		}
> -		flush_dcache_mft_record_page(ctx->ntfs_ino);
> -		mark_mft_record_dirty(ctx->ntfs_ino);
> -	} else if (IS_ERR(ctx->mrec)) {
> -		ntfs_error(vol->sb, "Failed to restore attribute search "
> +		else if (IS_ERR(ctx->mrec)) {
> +			ntfs_error(vol->sb, "Failed to restore attribute search "
>  				"context.%s", es);
> -		NVolSetErrors(vol);
> +			NVolSetErrors(vol);
> +		}
> +		if (ctx)
> +			ntfs_attr_put_search_ctx(ctx);
>  	}
> -	if (ctx)
> -		ntfs_attr_put_search_ctx(ctx);
>  	if (!IS_ERR(mrec))
>  		unmap_mft_record(mft_ni);
>  	up_write(&mft_ni->runlist.lock);
> --
> 2.25.1
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
