Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 917556F7E89
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  5 May 2023 10:16:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1puqc4-0002GQ-KV;
	Fri, 05 May 2023 08:16:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1puonz-0003j0-Ix
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 05 May 2023 06:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lqxqmyizncqvy3sSRonQ7t5zvpMKxSrq5S3/uRzjOmg=; b=HTaWVkVeSsCKIpRIaKR8lzd6L+
 TyKDvFovH+TDJd4OgP+O+y7LCVFb891RPULm+kBDNnZYLfvuzmxUyzEdFMWNrV1bx7yKMv+z7YTdU
 ioy1zd1dXk6p+VHzNPvRdJttnveFvrdXXNH1siDHE2/yxXRyiuCM9jEgYW2/l9c6FeVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lqxqmyizncqvy3sSRonQ7t5zvpMKxSrq5S3/uRzjOmg=; b=EacAiAlOzpOmbBfpX7DFM+f9R4
 /8PEJYlU5UsSCMt1kpy+8OTIiWNG/DMwlp0KRPB8+iWtn0Atef+iCeM2+ytrqXYXHv9PuXM9K+X1q
 bO/7ufuS8BQG3B/bn4s0iXxuGJqr65qQZmJMFoph59kNIrL7pGIbJldlfG5EUHr+3MtY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puony-00Ey2G-Ro for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 05 May 2023 06:20:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 79B2C63B4D
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri,  5 May 2023 06:20:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB1B7C433EF
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri,  5 May 2023 06:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683267628;
 bh=IA4DiBK1fkEoOLwHSLdBoQc5dOe//aOd8n7nFG1mCjg=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=EaBZKldYQAxIYNedXpmL8Fb851fFAd5Ucnt4TkGOtmVG+gt65C4k92hRL9pKODu0J
 pMhmrBbUsgxNKJ1gsdzlaXSFAKFmWENjC+d9Nv0N+BU5Dp/y9EYCQ9vDU66Y3hrBdC
 5hsdXv7NFysQRFRZ3gAqn26dVZUYKQpVYHGNLG5uoJUv9CeQwWoW/5KE/t+/+iXA9q
 q0cxxWW0v4AoqJ1LuBVAJpy8d+rdniR5gv+bJFwuuQVvbynLX+W93LznfUzdCZc6tl
 cZ5/C4X7qAnp9ube//17Pdup93sgsaZk7XowLZVglpY5G7CceUX0XCfmPvz/iWJR1s
 TamuxsT28kVKw==
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-54cbca7138aso823546eaf.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 04 May 2023 23:20:28 -0700 (PDT)
X-Gm-Message-State: AC+VfDwEevZCCMZuAmbB4EZD/ts2EEVwBZM97zbiSNBp32dXWCGybQgK
 x6enyUGvb51djyLNJZzxmbMN4VDPuSqhi+jWP70=
X-Google-Smtp-Source: ACHHUZ7mhlrgKZroAsJa36mQn/dg+ji8DHYMX8/HtQQoLuTVe09OyvWCwZ1ySTM5U/ASeQQW1LcK13tKFEGT1vz+gQU=
X-Received: by 2002:a4a:3858:0:b0:544:dc2c:9f78 with SMTP id
 o24-20020a4a3858000000b00544dc2c9f78mr200217oof.6.1683267627985; Thu, 04 May
 2023 23:20:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7858:0:b0:4d3:d9bf:b562 with HTTP; Thu, 4 May 2023
 23:20:27 -0700 (PDT)
In-Reply-To: <20230407194433.25659-1-listdansp@mail.ru>
References: <20230407194433.25659-1-listdansp@mail.ru>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Fri, 5 May 2023 15:20:27 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_nMBzkTo882h=DgHGgzRHfh7+NMQ7A-0SJ5yN_ZE0d7w@mail.gmail.com>
Message-ID: <CAKYAXd_nMBzkTo882h=DgHGgzRHfh7+NMQ7A-0SJ5yN_ZE0d7w@mail.gmail.com>
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
X-Headers-End: 1puony-00Ey2G-Ro
X-Mailman-Approved-At: Fri, 05 May 2023 08:16:20 +0000
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
 Anton Altaparmakov <anton@tuxera.com>, lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-04-08 4:44 GMT+09:00, Danila Chernetsov <listdansp@mail.ru>:
> In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
> prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
> 'ctx' pointer in error handling.
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
I think that this check is not needed.
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
