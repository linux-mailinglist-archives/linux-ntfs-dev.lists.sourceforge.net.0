Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 742D5450A56
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Nov 2021 17:57:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mmfIU-00056p-Gl; Mon, 15 Nov 2021 16:57:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mmebX-0004MF-Tr
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 15 Nov 2021 16:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=efm7nTUMt8rzsLA3IdyOYKyQXeHPPTB88YQ7l3tEZPU=; b=aQqiWy+z1A5QJ/TU2yHVoMBHi3
 BZ9dMcVs7lOgsPmZjjuud6waID+uHbR0R6PtFjk1w+IlaHN8dRzTxlEUe4oWxhMxKl1GqE483H77Q
 2dqj+gbowNjD/fgG7nqLdO0ZoeNecT3KS2wczTu+gSrcrZ5H+yD0mSNTkUDtCYwN6bh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=efm7nTUMt8rzsLA3IdyOYKyQXeHPPTB88YQ7l3tEZPU=; b=FkgF4IusfU/RVps7SPqNtphIJT
 NH+tbwj15Tu7LrvkS5yGsvehHfkdiUMiMnYyYQ8hb4ZIRoY6ibFO2PWa41WW0zfopBVku19oCGYYo
 5HjhagL2guTA174uNcP7DnJ0qjSPnc8mEXqIFVnEjVC64D5dp4QEZp+Gfnddd10WSO2Q=;
Received: from mail-ua1-f52.google.com ([209.85.222.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mmebW-0001yw-86
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 15 Nov 2021 16:13:11 +0000
Received: by mail-ua1-f52.google.com with SMTP id l24so31696943uak.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Nov 2021 08:13:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=efm7nTUMt8rzsLA3IdyOYKyQXeHPPTB88YQ7l3tEZPU=;
 b=ygo5pb8HAmVWGhziYDJiqv2Xedhm3TPwVWtK+8r/cirUrQB97S4e5catKgzuPoVsu/
 J/zrAos8buPS/iSP41p+0E9n/033xd6bez/LqQveaCRBKO1uJASKg/A0at8tjAMmqVlG
 2cGS9Rnz/TdfqHzyHCcRlOA3HvmGWUTAKxRKX6ATPx7ouu4P+IcaOpLIumxLgNeJQlCz
 dM6UCCB/gLHWVzkka8/eWE+J0gW8idsq1DeBjgIfix4XzT0OMd8fIglVcKLcH4gx0mYn
 BxeckoMEUKTLxTaj/rHi3+IgPiW/cMhVrjqc1EY5oaiIvLwD3iDQcNkqW2a+h1SeCpWU
 9hxg==
X-Gm-Message-State: AOAM530lfzV91P0+Rks1OtnBdP6eLz0hBubhvnbCcpZlR6CPBCW0713Y
 PUtN9q+ISPje48ybiR+vriZ992V1REBpow==
X-Google-Smtp-Source: ABdhPJxafda0wNVI9MzDBP/XYAPpoYaXIC6IFPJjiHgJooXLyEgi8WHsCDKzbVmf/Glrdi5GZSAlOg==
X-Received: by 2002:a67:b005:: with SMTP id z5mr45095043vse.59.1636992784042; 
 Mon, 15 Nov 2021 08:13:04 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com.
 [209.85.221.179])
 by smtp.gmail.com with ESMTPSA id i27sm11067057uab.8.2021.11.15.08.13.02
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Nov 2021 08:13:02 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id m19so4661644vko.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Nov 2021 08:13:02 -0800 (PST)
X-Received: by 2002:a1f:f24f:: with SMTP id q76mr60850690vkh.11.1636992782095; 
 Mon, 15 Nov 2021 08:13:02 -0800 (PST)
MIME-Version: 1.0
References: <20211115155105.3797527-1-geert@linux-m68k.org>
In-Reply-To: <20211115155105.3797527-1-geert@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Nov 2021 17:12:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUCsyUxaEf1Lz7+jMnur4ECwK+JoXQqmOCkRKqXdb1hTQ@mail.gmail.com>
Message-ID: <CAMuHMdUCsyUxaEf1Lz7+jMnur4ECwK+JoXQqmOCkRKqXdb1hTQ@mail.gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 15,
 2021 at 4:54 PM Geert Uytterhoeven <geert@linux-m68k.org>
 wrote: > Below is the list of build error/warning regressions/improvements
 in > v5.16-rc1[1] compared to v5.15[2]. > > Summari [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.52 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mmebW-0001yw-86
X-Mailman-Approved-At: Mon, 15 Nov 2021 16:57:34 +0000
Subject: Re: [Linux-NTFS-Dev] Build regressions/improvements in v5.16-rc1
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>, Stan Skowronek <stan@corellium.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Helge Deller <deller@gmx.de>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Nick Terrell <terrelln@fb.com>, Joey Gouly <joey.gouly@arm.com>,
 =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Parisc List <linux-parisc@vger.kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, Hector Martin <marcan@marcan.st>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Nov 15, 2021 at 4:54 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> Below is the list of build error/warning regressions/improvements in
> v5.16-rc1[1] compared to v5.15[2].
>
> Summarized:
>   - build errors: +20/-13
>   - build warnings: +3/-28
>
> Happy fixing! ;-)
>
> Thanks to the linux-next team for providing the build service.
>
> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf/ (all 90 configs)
> [2] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/8bb7eca972ad531c9b149c0a51ab43a417385813/ (all 90 configs)
>
>
> *** ERRORS ***
>
> 20 error regressions:
>   + /kisskb/src/arch/parisc/include/asm/jump_label.h: error: expected ':' before '__stringify':  => 33:4, 18:4
>   + /kisskb/src/arch/parisc/include/asm/jump_label.h: error: label 'l_yes' defined but not used [-Werror=unused-label]:  => 38:1, 23:1

    due to static_branch_likely() in crypto/api.c

parisc-allmodconfig

>   + /kisskb/src/drivers/gpu/drm/msm/msm_drv.h: error: "COND" redefined [-Werror]:  => 531
>   + /kisskb/src/lib/zstd/compress/zstd_double_fast.c: error: the frame size of 3252 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 47:1
>   + /kisskb/src/lib/zstd/compress/zstd_double_fast.c: error: the frame size of 3360 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 499:1
>   + /kisskb/src/lib/zstd/compress/zstd_double_fast.c: error: the frame size of 5344 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 334:1
>   + /kisskb/src/lib/zstd/compress/zstd_double_fast.c: error: the frame size of 5380 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 354:1
>   + /kisskb/src/lib/zstd/compress/zstd_fast.c: error: the frame size of 1824 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 372:1
>   + /kisskb/src/lib/zstd/compress/zstd_fast.c: error: the frame size of 2224 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 204:1
>   + /kisskb/src/lib/zstd/compress/zstd_fast.c: error: the frame size of 3800 bytes is larger than 1536 bytes [-Werror=frame-larger-than=]:  => 476:1

parisc-allmodconfig

>   + /kisskb/src/fs/ntfs/aops.c: error: the frame size of 2240 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]:  => 1311:1
>   + /kisskb/src/fs/ntfs/aops.c: error: the frame size of 2304 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]:  => 1311:1
>   + /kisskb/src/fs/ntfs/aops.c: error: the frame size of 2320 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]:  => 1311:1

powerpc-allmodconfig

>   + /kisskb/src/include/linux/compiler_types.h: error: call to '__compiletime_assert_366' declared with attribute error: FIELD_PREP: value too large for the field:  => 335:38

    in drivers/pinctrl/pinctrl-apple-gpio.c

arm64-allmodconfig (gcc8)

>   + /kisskb/src/include/linux/fortify-string.h: error: call to '__read_overflow' declared with attribute error: detected read beyond size of object (1st parameter):  => 263:25, 277:17

    in lib/test_kasan.c

s390-all{mod,yes}config
arm64-allmodconfig (gcc11)

>   + error: modpost: "mips_cm_is64" [drivers/pci/controller/pcie-mt7621.ko] undefined!:  => N/A
>   + error: modpost: "mips_cm_lock_other" [drivers/pci/controller/pcie-mt7621.ko] undefined!:  => N/A
>   + error: modpost: "mips_cm_unlock_other" [drivers/pci/controller/pcie-mt7621.ko] undefined!:  => N/A
>   + error: modpost: "mips_cpc_base" [drivers/pci/controller/pcie-mt7621.ko] undefined!:  => N/A
>   + error: modpost: "mips_gcr_base" [drivers/pci/controller/pcie-mt7621.ko] undefined!:  => N/A

mips-allmodconfig

> 3 warning regressions:
>   + <stdin>: warning: #warning syscall futex_waitv not implemented [-Wcpp]:  => 1559:2

powerpc, m68k, mips, s390, parisc (and probably more)

>   + arch/m68k/configs/multi_defconfig: warning: symbol value 'm' invalid for MCTP:  => 322
>   + arch/m68k/configs/sun3_defconfig: warning: symbol value 'm' invalid for MCTP:  => 295

Yeah, that happens when symbols are changed from tristate to bool...
Will be fixed in 5.17-rc1, with the next defconfig refresh.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
