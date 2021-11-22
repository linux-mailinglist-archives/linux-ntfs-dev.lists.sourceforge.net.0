Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7EB4599B1
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 02:29:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpKce-0005Bk-Io; Tue, 23 Nov 2021 01:29:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mp9J7-0003j5-72
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 13:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xarPnle33Vd1NAVNINArZXI9fdyD3SNGNTfacLEzKQo=; b=AeHWJBXw5N67ownpAIn8a3RXq
 VhqVpDa51NZOmKyANXdrhpzDQ9O5GfayMTOwK6KklJQTvrJbx/qieDfnkS7fQqHHIK/Scrn05RZIu
 I2oADtNJEW0r2hRPznMJF9Pz//aWp18HCM9W1w3FS669Mu23Aj0WmpHMZozY4QXga+lWM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xarPnle33Vd1NAVNINArZXI9fdyD3SNGNTfacLEzKQo=; b=CJNgB0ybv5pZX7Z+x9QByXNF/E
 UgxOKm+SQmM1My1+msiproxuVlBG7CM8i/xO2xsN+cljccq0xC0EFiIUsbZjX+EXveKleZVu6RmQI
 6gF69D0tri05n/pBP4TZZ0OyimIZ4nY5UNF8EAOPVfeS4XwAeQI18+RnuAA+0hIZHpfY=;
Received: from mail-ua1-f49.google.com ([209.85.222.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mp9J7-004oCE-AM
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 13:24:30 +0000
Received: by mail-ua1-f49.google.com with SMTP id p37so36402790uae.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 05:24:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=xarPnle33Vd1NAVNINArZXI9fdyD3SNGNTfacLEzKQo=;
 b=2z6Dcd0d83SA7WEO9lfD++AfFlwDkjjdJa2D7Ii129BU125WedVpjKBBt38wAL4Bou
 667s19jfBkU+Zkyg2r7lOtv6rb6xT+EhDCHLf7Aix5l1XH9v1G99orf9xOWaHb+qfg6l
 NITrp19e/3Cj1GYvq9IHOsG01MkGq4p0mETBSxn1H/bPqrmZ6F0kYVhUM7jqonxNNuxt
 nay/IqTJMBTvPfMGbZdMB93MywqKlc83eSL6n2NkzFvHppgEmxBzqrwrXhz995yBfQPv
 5Sb0Db56DmizuqnJ1dWcBoYUGXx3t3qFD60fCwmCCLgWgOj9xfiQrFWDYIibgsE8qLrx
 Rc2g==
X-Gm-Message-State: AOAM5303/Dxs1VOT5HNiW1nx4BCw9qmI3jk+M5VIJbS6bv7gudMSgw5M
 NA8uGh8DU6R+JMe0mn7nYmFnqi1g/l7S6g==
X-Google-Smtp-Source: ABdhPJyAMr2nr/r/0aFI63YzQRtYd776btMD/OeAjH2B/X0hrLOfrELRWfSX7L0NJPKX2ofWUnraHw==
X-Received: by 2002:a67:b807:: with SMTP id i7mr5118643vsf.52.1637587463372;
 Mon, 22 Nov 2021 05:24:23 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com.
 [209.85.222.53])
 by smtp.gmail.com with ESMTPSA id g28sm4349139vkl.16.2021.11.22.05.24.22
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 05:24:23 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id p2so36372301uad.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 05:24:22 -0800 (PST)
X-Received: by 2002:a9f:248b:: with SMTP id 11mr85736008uar.14.1637587462423; 
 Mon, 22 Nov 2021 05:24:22 -0800 (PST)
MIME-Version: 1.0
References: <20211122111214.3801534-1-geert@linux-m68k.org>
In-Reply-To: <20211122111214.3801534-1-geert@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Nov 2021 14:24:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW7jcoNHyBomcbkkHU-m32uAureeHYj_PhaMC=O2b4wLA@mail.gmail.com>
Message-ID: <CAMuHMdW7jcoNHyBomcbkkHU-m32uAureeHYj_PhaMC=O2b4wLA@mail.gmail.com>
To: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux-um@lists.infradead.org, sparclinux@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 22,
 2021 at 12:28 PM Geert Uytterhoeven <geert@linux-m68k.org>
 wrote: > Below is the list of build error/warning regressions/improvements
 in > v5.16-rc2[1] compared to v5.15[2]. > > Summar [...] 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mp9J7-004oCE-AM
X-Mailman-Approved-At: Tue, 23 Nov 2021 01:29:23 +0000
Subject: Re: [Linux-NTFS-Dev] Build regressions/improvements in v5.16-rc2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Nov 22, 2021 at 12:28 PM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> Below is the list of build error/warning regressions/improvements in
> v5.16-rc2[1] compared to v5.15[2].
>
> Summarized:
>   - build errors: +13/-12
>   - build warnings: +3/-26
>
> JFYI, when comparing v5.16-rc2[1] to v5.16-rc1[3], the summaries are:
>   - build errors: +6/-12

  + /kisskb/src/drivers/mtd/nand/raw/mpc5121_nfc.c: error: unused
variable 'mtd' [-Werror=unused-variable]:  => 294:19

ppc32_allmodconfig (patch sent)

  + /kisskb/src/drivers/video/fbdev/nvidia/nvidia.c: error: passing
argument 1 of 'iounmap' discards 'volatile' qualifier from pointer
target type [-Werror=discarded-qualifiers]:  => 1439:10, 1414:10
  + /kisskb/src/drivers/video/fbdev/riva/fbdev.c: error: passing
argument 1 of 'iounmap' discards 'volatile' qualifier from pointer
target type [-Werror=discarded-qualifiers]:  => 2095:11, 2062:11

um-all{mod,yes}config

  + /kisskb/src/fs/netfs/read_helper.c: error: implicit declaration of
function 'flush_dcache_folio' [-Werror=implicit-function-declaration]:
 => 435:4

sparc-allmodconfig
sparc64-allmodconfig

  + /kisskb/src/fs/ntfs/aops.c: error: the frame size of 2192 bytes is
larger than 2048 bytes [-Werror=frame-larger-than=]:  => 1311:1

ppc64le_allmodconfig

  + /kisskb/src/fs/ntfs/aops.c: error: the frame size of 2256 bytes is
larger than 2048 bytes [-Werror=frame-larger-than=]:  => 1311:1

powerpc-allyesconfig

> Thanks to the linux-next team for providing the build service.
>
> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/136057256686de39cc3a07c2e39ef6bc43003ff6/ (all 90 configs)
> [3] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf/ (all 90 configs)

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
