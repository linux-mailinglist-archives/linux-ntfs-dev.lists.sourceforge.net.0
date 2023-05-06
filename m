Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 005596F92C2
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  6 May 2023 17:35:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pvJwH-0000hH-VH;
	Sat, 06 May 2023 15:35:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pv6Nz-0003VC-Ju
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 01:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uxu7Oz+d6O0fnPNI2tcKUZVykO7ZGobmNnUvHnHihVE=; b=bzVjOpkTo7Ao32ybGeT9q2vaE4
 QuRKjCWR7Rr3fTf7M5SjCI6m9/XFK2idCTrwA3POFBSk2RuhjjoigVfZuVi/e/luU2YjUk9p2W5gv
 QZI8IPT4F816Nb3yYuq20t+/v+H1FkRQ7D0GSwXzfv+tBFFD6kgopOR18O75T8AKZD5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uxu7Oz+d6O0fnPNI2tcKUZVykO7ZGobmNnUvHnHihVE=; b=Ijyu9AOsJY+XIgFqCHAP5yBCOh
 mnTzi5V/gU3ZMi8lRHFMLwhHEZvk/fvhCAA0Y2LYGIvJ9mLTBR//5P1U4Dl36O6HRFXlAVi16N4Tn
 up5U+UNrCaLq2xiOOmJ3w1xLaFg8qqe+6X1YfGRXWI06Jp6g8eP3mqsGQtnH1bF9wR0E=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pv6Ny-00Fso8-UB for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 01:06:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 89EFC60B24
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 01:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED82AC4339C
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 01:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683335209;
 bh=UEmzadnfn7+/6cZeDjikdevPjT9T7IYVnjcaT9lRak8=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=eBR2693Lkf2GJv6J3m5AIrAU1926dHM8NkD6Apkpq/NY+XtfL4g7QFLybBAquY4W7
 pDMjOg5t6C6lKyiEOI7nMWrFtkZKO3ApD26AcMg7AI35G4eYUPQpHWiKS2O9DJwPw7
 EN3EQRlc6YZgudWLIINLj68B3JEbwo1QXfytX+J5U5zt94BJsS0N2EJFhEMZ/eXWAt
 n++JEKoXvE9MlRmAQat9b196ulnToza02G72MBckZ8IgFwyjYtovAGqSx1dmhWUTfM
 xk4QZmqYdZOQWMBMUrd2ptVdZ6A7GsSPfRQO5D5kFSrWyVxEdqmEel8d15tB0oqfAX
 GLSjIHp2eiGBg==
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-18ef8e9aa00so2138938fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 05 May 2023 18:06:48 -0700 (PDT)
X-Gm-Message-State: AC+VfDyr3gJvgAuDxzGRIjHMZ5Tnr06hLr7GALk6MRb2B483asn6369x
 8lKmRSfp3ANQtBT9/CFWeiPfPSmX2IxE2Yc8hOQ=
X-Google-Smtp-Source: ACHHUZ60qg4+wWWnFhmcxT/U2Cqt34csJhDM3qhOq6rpVeCAaIFBJfLe0cRmTbVezoq81ynKjMd825k0hPycTmjtPYg=
X-Received: by 2002:a05:6870:d895:b0:17e:a21c:8983 with SMTP id
 dv21-20020a056870d89500b0017ea21c8983mr2109271oab.57.1683335208139; Fri, 05
 May 2023 18:06:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:981:0:b0:4d3:d9bf:b562 with HTTP; Fri, 5 May 2023
 18:06:47 -0700 (PDT)
In-Reply-To: <20221105153135.5975-1-dengshaomin@cdjrlc.com>
References: <20221105153135.5975-1-dengshaomin@cdjrlc.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Sat, 6 May 2023 10:06:47 +0900
X-Gmail-Original-Message-ID: <CAKYAXd9zOgsdsRTLYRxw8B0O25LdsX-Yn6FM8u1LJdpH+tB3eA@mail.gmail.com>
Message-ID: <CAKYAXd9zOgsdsRTLYRxw8B0O25LdsX-Yn6FM8u1LJdpH+tB3eA@mail.gmail.com>
To: Shaomin Deng <dengshaomin@cdjrlc.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-11-06 0:31 GMT+09:00,
 Shaomin Deng <dengshaomin@cdjrlc.com>:
 > Remove the unneeded semicolon after curly braces. > > Signed-off-by: Shaomin
 Deng <dengshaomin@cdjrlc.com> Reviewed-by: Namjae Jeon [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pv6Ny-00Fso8-UB
X-Mailman-Approved-At: Sat, 06 May 2023 15:35:12 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: Remove unneeded semicolon
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
 Christian Brauner <brauner@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2022-11-06 0:31 GMT+09:00, Shaomin Deng <dengshaomin@cdjrlc.com>:
> Remove the unneeded semicolon after curly braces.
>
> Signed-off-by: Shaomin Deng <dengshaomin@cdjrlc.com>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>

> ---
>  fs/ntfs/super.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
> index 001f4e053c85..6165fe7d0ac6 100644
> --- a/fs/ntfs/super.c
> +++ b/fs/ntfs/super.c
> @@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume *vol)
>  		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
>  				page_address(page), size);
>  		ntfs_unmap_page(page);
> -	};
> +	}
>  	if (size == PAGE_SIZE) {
>  		size = i_size & ~PAGE_MASK;
>  		if (size)
> @@ -1681,7 +1681,7 @@ static bool load_and_init_upcase(ntfs_volume *vol)
>  		memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
>  				page_address(page), size);
>  		ntfs_unmap_page(page);
> -	};
> +	}
>  	if (size == PAGE_SIZE) {
>  		size = i_size & ~PAGE_MASK;
>  		if (size)
> --
> 2.35.1
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
