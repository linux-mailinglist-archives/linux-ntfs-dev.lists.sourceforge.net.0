Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 317024599B2
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 02:29:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpKce-0005C1-PZ; Tue, 23 Nov 2021 01:29:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mpKPF-0004sB-9x
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 01:15:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9il6o1C53lVI46Iic479A44GN6K/KwqDAEYzeZGyl6E=; b=FfWnkoChKtnhClG1Ul+rbU+k79
 H6UbL/END4e8yP0w3ptPBSdNkX41J4eLuh3bGbpnJkc8AxCSnE8LE0iODJlAxLv0m/xpFqBZ5p7zz
 LfxMU0TUB4cKcmUkc+WQoWaqZDx1IbQjs9R97yDtzRfx/f9OUU78+4TVoIO+GBRYC+gk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9il6o1C53lVI46Iic479A44GN6K/KwqDAEYzeZGyl6E=; b=GhpRu7Oav+AD9X2i73facTj7+O
 9Fc8/rwhYnjCjFVRSfyJ4++fA+vRh3zyA0/85y0AW5ofA4giHoupJ+Imt86eh3JaRqqJvtg3vTo9i
 FIjSg4jSKq6i8TNn0tbR7+SKsDtBCryxP2Nu7pW9jrpqOcLRYDsOcClDTzn4qf+YPRHA=;
Received: from mail-qv1-f44.google.com ([209.85.219.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpKPB-0003RG-0b
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 01:15:33 +0000
Received: by mail-qv1-f44.google.com with SMTP id b17so13765977qvl.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 17:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9il6o1C53lVI46Iic479A44GN6K/KwqDAEYzeZGyl6E=;
 b=h3Ptld1YXyMbh0d00BmHeSrABj//RXZrl2K/vG614+n/M6mMDhbK5DOdeRM5DT4Igw
 hzWiN7qDi9Zw8ojrmJoa9y1dxYQVm0+ue/i8QKDMN+zd6VIgnLeAcxpp8efaQgf7NOFs
 BrAYqn4nZdhbv5V730BOS9+QpWp21xOiCdVFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9il6o1C53lVI46Iic479A44GN6K/KwqDAEYzeZGyl6E=;
 b=EDdxke9KYBiqOVNCwNv7mGbBc4Alc5n2iInsxbOhh2TW+Tnlz7UjMbh0QRQKyVLKIC
 Mb0f10Kk8PUEYIT/dVW9uVGQLT3V5p/JMqG65wS9qB7niCCeF5ceDfUw/Yfw81CZMTz2
 9kTZvoOh8F4Y7dhGfkcNzRgroKC/hQc4hkTs8lVSUHixIB7FHJl9YLzbxFvOnzvGKhq2
 o6w5V9bL6TuYRpCpaU9hf1pUJExDCCPjFUgPkmCY2N96ywUcMTGSawVoxh3KGBu5y6Y9
 cotpDtKm96I8qm4Qn0rXflt6P57X/17XInE2iDZNo29780rrOxYVZ+iT7+MoH+nhk04X
 vi1A==
X-Gm-Message-State: AOAM531ZzmrQM0I11jjPdHWT0s1pYkDNE2+/CG12/byDF1b+032GMxAT
 OY/p4VyFiptMev8SyYqaPohyRKMcJbWtiK+uO5I=
X-Google-Smtp-Source: ABdhPJzN0B1NOsm0XToHPzjaSasN30ufTi7ucPNvru3KUZ6j4ILxKqYt7MyjAZFFFSG0phf6w9y1WmYgmSFZYoF/i7o=
X-Received: by 2002:a05:6214:e41:: with SMTP id
 o1mr1637542qvc.43.1637630123057; 
 Mon, 22 Nov 2021 17:15:23 -0800 (PST)
MIME-Version: 1.0
References: <20211122230653.1779162-1-linux@roeck-us.net>
In-Reply-To: <20211122230653.1779162-1-linux@roeck-us.net>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 23 Nov 2021 01:15:11 +0000
Message-ID: <CACPK8XfM1e7b6m_QBhJFgXCXhqOajMKGUkWqRGxa5sCKyLxRQg@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 22 Nov 2021 at 23:58,
 Guenter Roeck <linux@roeck-us.net>
 wrote: > > NTFS_RW code allocates page size dependent arrays on the stack.
 This > results in build failures if the page size is 64k, wh [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.44 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mpKPB-0003RG-0b
X-Mailman-Approved-At: Tue, 23 Nov 2021 01:29:23 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs: ntfs: Disable NTFS_RW for PPC
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-ntfs-dev@lists.sourceforge.net, Michael Ellerman <mpe@ellerman.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, 22 Nov 2021 at 23:58, Guenter Roeck <linux@roeck-us.net> wrote:
>
> NTFS_RW code allocates page size dependent arrays on the stack. This
> results in build failures if the page size is 64k, which is now the
> default for PPC.

It became the default for PPC_BOOK3S_64, which doesn't include all of
PPC, in f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
book3s").

You might want to add a mention of this commit in your commit message.

>
> fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
> fs/ntfs/aops.c:1311:1: error:
>         the frame size of 2240 bytes is larger than 2048 bytes
>
> Increasing the maximum frame size for PPC just to silence this error does
> not really help. It would have to be set to a really large value for 256k
> pages. Such a large frame size could potentially result in stack overruns
> in this code and elsewhere and is therefore not desirable. Disable NTFS_RW
> for PPC instead.
>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
> v2: Introduce new configuration flag DISABLE_NTFS_RW and use it to disable NTFS_RW
>     for PPC
>
>  fs/ntfs/Kconfig | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
> index 1667a7e590d8..324224febb6a 100644
> --- a/fs/ntfs/Kconfig
> +++ b/fs/ntfs/Kconfig
> @@ -49,8 +49,13 @@ config NTFS_DEBUG
>           When reporting bugs, please try to have available a full dump of
>           debugging messages while the misbehaviour was occurring.
>
> +config DISABLE_NTFS_RW
> +       bool
> +       default y if PPC

PPC_64K_PAGES would be more accurate.

I think arm64 was seeing a similar build error, so you could include
ARM64_64K_PAGES as well?

> +
>  config NTFS_RW
>         bool "NTFS write support"
> +       depends on !DISABLE_NTFS_RW
>         depends on NTFS_FS
>         help
>           This enables the partial, but safe, write support in the NTFS driver.
> --
> 2.33.0
>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
