Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4449B8914F1
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 29 Mar 2024 09:01:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rq7B9-0005Ah-Kr;
	Fri, 29 Mar 2024 08:01:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <justinstitt@google.com>) id 1rpzDB-0000pg-3A
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Mar 2024 23:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/qNXZWa7ff+gZO9/7qJdAv1MXiheIN0/3fR3ZzkSZyM=; b=LY48L70XRR+3OzVCNOE1arFrGt
 qqGK/Tvdpr9lLqmz+wEwqrqIwMC5iLPhhmtoOndxw5dcIx2sH6M57NWucIl7xNBI1dksYKlZC+rn7
 l5LSWdc20cixQno44hqewEiekXJc/BUV27p6QKjGZ960FJtu1cdy+X640ZF3AH2xxdSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/qNXZWa7ff+gZO9/7qJdAv1MXiheIN0/3fR3ZzkSZyM=; b=d4u5KLnfy9m4GFsvOBMOa3IsoH
 NHc5VerF7d0h475u2MqyYdQmqHlo+qRE2XLFX4e/FHmZfnTBmvyFHF0aVwV66so7URtxzOuuGxZK9
 WMDG6QmspJeDdpqSgHwZuGtUQu5EtyXQUGDQKc9g0CcT35gHNWvd1fibrWvEXj+nnnG0=;
Received: from mail-yw1-f174.google.com ([209.85.128.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpzD5-0004yh-JW for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Mar 2024 23:31:09 +0000
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-611248b4805so15908187b3.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 28 Mar 2024 16:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1711668653; x=1712273453;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/qNXZWa7ff+gZO9/7qJdAv1MXiheIN0/3fR3ZzkSZyM=;
 b=nQ5LEw9LEmtoWGuvIAaWRq1hHyYamj48srFdnNRJN9JU+VqbnACG/FoEobu8V9Yovq
 cciT6vfFaVuZaRnTjZA1Wu5tOd1wJhdSLppQIk0GTgplNy+AJGu/KNp4KF4+Kx8VLG47
 GQndxUSwMI8duMaKHL+43R1Sv/78274bvhQ6Am70FwOxKT3qzQwGfnuLTJZF+u8SdVP7
 waEbxKtpxUSuEENT7murO1x5A+dzJYdoQaN5B9NvoR/GB55qu4ClDGdhpNVPFemlker5
 rVlqsEHLBNYniNXNOi2JV1FiOYMjeAD5xAd/2MQ50FhgumGmg+pJxZyFamqcl9g7x7P8
 EIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711668653; x=1712273453;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/qNXZWa7ff+gZO9/7qJdAv1MXiheIN0/3fR3ZzkSZyM=;
 b=P1hH4XAriPNgs88jUGISjmYsPnRSCk6cuV2j2RF1wJ2KyarFrx0mfVNgNK04gH+lk1
 wkaQEjuACfVYpP3xuS8o1yijcn+nQuQ/B77MWEJBediALsbriOEknt9yUAnKbJSOlheq
 osr42zO3pe1DxQe2kDKTwwRnhzNf851t48sv/NjKhx7QEl/y2UKTI2t+nJpe83x8fvrZ
 jlSg4qW0u63c2Qi3Bh6KL5ONmt/hNxb12+fuJPelOCQXXl/6W8nioDr3T46SLqtt97Ho
 OCs7jbxXbyfBHiKvBBdKFNIRBpc6Lp1+80ckvjtTdVpf8SZVNlUmWCuwahCh7EfvuyTk
 vhsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV++WmWgCSnYp5GdccUSWwLRk+k+SOGYaLfqgL6oWinZmsD2CzXE9VhhvcrRlzKYQGws/aVspqPqP/hUXszxWAgOXNAsjcs/giINIpmCwbbl9gyWGc=
X-Gm-Message-State: AOJu0YzEDzoGBWVjHbsy3qtRV7n1pdd9ZwWTVV29q1aaumQ0EU3RrySQ
 eu5X+4Ebkv2A31NtYqumn+li5G5RZyvr8PSpiO2C5Df3NAcZrXTIehWeMDRVXdU7+fxo8toNJjx
 Jr//A
X-Google-Smtp-Source: AGHT+IH/359JmtRlhVfnHXRBxGMxdiBxsOXPtiJP+s9PFPDvBB1vfKbmbWpup/GqtPGDEEuv8/wGDQ==
X-Received: by 2002:a5d:8454:0:b0:7d0:807d:33dc with SMTP id
 w20-20020a5d8454000000b007d0807d33dcmr699533ior.15.1711668299282; 
 Thu, 28 Mar 2024 16:24:59 -0700 (PDT)
Received: from google.com (30.64.135.34.bc.googleusercontent.com.
 [34.135.64.30]) by smtp.gmail.com with ESMTPSA id
 x15-20020a6bda0f000000b007d06ef8020bsm669877iob.40.2024.03.28.16.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Mar 2024 16:24:58 -0700 (PDT)
Date: Thu, 28 Mar 2024 23:24:56 +0000
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <a5vkpjykxex64vti4wvx7h64jthw7inc23uelol5s3beezoiuz@scl2uhf6pkl7>
References: <20240328140512.4148825-1-arnd@kernel.org>
 <20240328140512.4148825-8-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240328140512.4148825-8-arnd@kernel.org>
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Mar 28, 2024 at 03:04:51PM +0100, Arnd Bergmann
 wrote: > From: Arnd Bergmann <arnd@arndb.de> > > The strncpy() here can cause
 a non-terminated string, which older gcc > versions such as gcc-9 [...] 
 Content analysis details:   (-15.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.174 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1rpzD5-0004yh-JW
X-Mailman-Approved-At: Fri, 29 Mar 2024 08:01:34 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 07/11] block/partitions/ldm: convert
 strncpy() to strscpy()
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
From: Justin Stitt via Linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Justin Stitt <justinstitt@google.com>
Cc: Jens Axboe <axboe@kernel.dk>, Arnd Bergmann <arnd@arndb.de>,
 linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

On Thu, Mar 28, 2024 at 03:04:51PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The strncpy() here can cause a non-terminated string, which older gcc
> versions such as gcc-9 warn about:
> 
> In function 'ldm_parse_tocblock',
>     inlined from 'ldm_validate_tocblocks' at block/partitions/ldm.c:386:7,
>     inlined from 'ldm_partition' at block/partitions/ldm.c:1457:7:
> block/partitions/ldm.c:134:2: error: 'strncpy' specified bound 16 equals destination size [-Werror=stringop-truncation]
>   134 |  strncpy (toc->bitmap1_name, data + 0x24, sizeof (toc->bitmap1_name));
>       |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> block/partitions/ldm.c:145:2: error: 'strncpy' specified bound 16 equals destination size [-Werror=stringop-truncation]
>   145 |  strncpy (toc->bitmap2_name, data + 0x46, sizeof (toc->bitmap2_name));
>       |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> New versions notice that the code is correct after all because of the
> following termination, but replacing the strncpy() with strscpy_pad()
> or strcpy() avoids the warning and simplifies the code at the same time.
> 
> Use the padding version here to keep the existing behavior, in case
> the code relies on not including uninitialized data.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch!

This helps towards: https://github.com/KSPP/linux/issues/90

Reviewed-by: Justin Stitt <justinstitt@google.com>

> ---
>  block/partitions/ldm.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
> index 38e58960ae03..2bd42fedb907 100644
> --- a/block/partitions/ldm.c
> +++ b/block/partitions/ldm.c
> @@ -131,8 +131,7 @@ static bool ldm_parse_tocblock (const u8 *data, struct tocblock *toc)
>  		ldm_crit ("Cannot find TOCBLOCK, database may be corrupt.");
>  		return false;
>  	}
> -	strncpy (toc->bitmap1_name, data + 0x24, sizeof (toc->bitmap1_name));
> -	toc->bitmap1_name[sizeof (toc->bitmap1_name) - 1] = 0;
> +	strscpy_pad(toc->bitmap1_name, data + 0x24, sizeof(toc->bitmap1_name));
>  	toc->bitmap1_start = get_unaligned_be64(data + 0x2E);
>  	toc->bitmap1_size  = get_unaligned_be64(data + 0x36);
>  
> @@ -142,8 +141,7 @@ static bool ldm_parse_tocblock (const u8 *data, struct tocblock *toc)
>  				TOC_BITMAP1, toc->bitmap1_name);
>  		return false;
>  	}
> -	strncpy (toc->bitmap2_name, data + 0x46, sizeof (toc->bitmap2_name));
> -	toc->bitmap2_name[sizeof (toc->bitmap2_name) - 1] = 0;
> +	strscpy_pad(toc->bitmap2_name, data + 0x46, sizeof(toc->bitmap2_name));
>  	toc->bitmap2_start = get_unaligned_be64(data + 0x50);
>  	toc->bitmap2_size  = get_unaligned_be64(data + 0x58);
>  	if (strncmp (toc->bitmap2_name, TOC_BITMAP2,
> -- 
> 2.39.2
> 

Thanks
Justin


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
