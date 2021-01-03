Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF472E8F70
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXU-0005vQ-Nz; Mon, 04 Jan 2021 02:24:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1kw9ZV-0000AM-LT
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 20:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cCa9TKEyC5rGu3A3L3tEdGoSG74IuT59v1+UI3oG8JU=; b=acsbN6dcPS5Xzakf8NkICSWDdX
 KH7aic6XFzYrjrqWdPwlbC4vCbfZ8BZrdAx1RXKfO8EPK+ulB+XZjjVv2/fRfAuCmaSF4fbN9rIZO
 vf4l4INZXJuqZhfyoG7KkO6bje4xoiAJvzEWEbZp6xujDPsHPjpRsFk8slXFJKWdiozo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cCa9TKEyC5rGu3A3L3tEdGoSG74IuT59v1+UI3oG8JU=; b=INp98i0F0orKqxcQnqy7ZzXm/e
 kM8JcPEXJ2wL/CkZhW9ov9urY80MwyFkylNr+IwDlYP/iarFUqTKdupCc07JHJHJ61VWf4xv/yopm
 uxR+mlr+VYakSctRwGu0pOO+qRr5GJqpXnmYXnnkTq9CcnQ0zU6e+GQXgk1qkCWtuAnM=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kw9ZL-009YzJ-Fg
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 20:01:49 +0000
Received: by mail-lf1-f52.google.com with SMTP id o13so59887182lfr.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 03 Jan 2021 12:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cCa9TKEyC5rGu3A3L3tEdGoSG74IuT59v1+UI3oG8JU=;
 b=PJAREXrLHA1yNRh76zt8Q23wa6SOsiCQhQbv4JWyoHKAnRve2KzyEi5XepB9hxC9FX
 4GhUyvIOrwRt+4iNMf2wiereahtuGBOsnGMEcCBNJyr6wSjZMI/l526I9jJ/bDuCYB6U
 oE2GleajDa4gxIpsXsv2GgpWK4zyo9EawdNU3XgnrlvJASZHQHJjBfyl/qNoeFqVTG2c
 zyl2O5M72e4JjtUWGdOg67V3aZbwlQkMjQxG3uyVFpLnTpOwVaRQ8Dd+HN7IhyP7zWw2
 DoDJBJXya7SvR7AugTm2cemFwrhgNFfH5/5/L7QpVc2OBFXyd89XtpYfxygiMNtEsEjd
 Ywgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cCa9TKEyC5rGu3A3L3tEdGoSG74IuT59v1+UI3oG8JU=;
 b=Wda+0QyZdL0itgtGhHvKKdvQukSkCAVsDQFcwgmOlL4lrHrfb8Ix1RyGpUFeQCYKKU
 zMQPIsOfIjBT6v4jJ4pooLqunmmqj9BXFQCa3C4kpgXWh6bz1qqecaKXosbw7TpNFhiY
 7w3ctMUqlMAUJ6mL1M0SIWNltgnk50dN/vZGTlHgj1FyGmuPgCeNFxYfLBGUSIMl0nHB
 2VJorpZCE/bvutRGI4ZGr3BUvH1e+nWREi4ww0JaISUO24R4v87QfvdYWSb0Sqhmwr+e
 1+N93lqfJ+HnR1SN6pvuCbPlq7oYn43OEbzEIQ+Yy74ZukyyvSjCgXUy//h6RMUPDKR1
 1RtQ==
X-Gm-Message-State: AOAM5314JSjyQ9doVRyBFxwMMj4dwa9bLLUcz4UpYOR+2nKbGC6sTihc
 fUMkDgJGRsyv/siFV7czNUI=
X-Google-Smtp-Source: ABdhPJzZJCegF8+DW10QEPXa6WFGH0psdX64w3MYnMlL/cRkPm+fbgmeEL7vXKKcfWiP9Gzfnh7gUw==
X-Received: by 2002:a2e:9214:: with SMTP id k20mr35104255ljg.45.1609704092872; 
 Sun, 03 Jan 2021 12:01:32 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id k21sm8445977ljb.43.2021.01.03.12.01.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jan 2021 12:01:32 -0800 (PST)
Date: Sun, 3 Jan 2021 22:01:30 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210103200130.w5xanettrm5p6fzd@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-11-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-11-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kw9ZL-009YzJ-Fg
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 10/10] fs/ntfs3: Add MAINTAINERS
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 31, 2020 at 06:24:01PM +0300, Konstantin Komarov wrote:
> This adds MAINTAINERS
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 546aa66428c9..1a990aa2985d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12674,6 +12674,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
>  F:	Documentation/filesystems/ntfs.rst
>  F:	fs/ntfs/
>  
> +NTFS3 FILESYSTEM
> +M:	Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> +S:	Supported
> +W:	http://www.paragon-software.com/
> +F:	Documentation/filesystems/ntfs3.rst
> +F:	fs/ntfs3/
> +
 
I think if this get merged it will need mailing list (L:) where to sent
patches. And also three location (L:). Someone needs to figure this out
if is ok to use ntfs mailing list. I do not have answers but I hope that
we get conversation going.

Can you also tell how do you plan to be maintainer. Do you regulary
check patches, review them and so on? Does more than you review patches
from Paragon?



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
