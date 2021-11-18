Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE52456601
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Nov 2021 00:01:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnqOr-00064d-74; Thu, 18 Nov 2021 23:01:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mnosx-00089z-80
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 21:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UWACXBbqRdeol3CXg5rFjYspFN+GWNxgtVk6AOTQB1Y=; b=hdiSRQIHHUESrcv655vC1cmckq
 hT64KOju9OFEge/gAAJXTPgNrYN448e3MTxPgSy/vgopdqEw0X+mYD3RXCPx6BMVvYSUzEO+Yz2++
 UNgBcLBXt3w9XARM0hR1+z00c5JyGPqDBXRrlGZHMRKSNTaHvqP4PTt6OS1YU2PPHIWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UWACXBbqRdeol3CXg5rFjYspFN+GWNxgtVk6AOTQB1Y=; b=akQmw+hQr34v2sM6Y1J1NyTe9Z
 SXJpBwt5WNIsnnoiifWFY2grghkMvdSFPD4O98e3y8HDTEGWWgldby145vHZ6YEAPHUhmYIh9+w1V
 SSooparTlmQYLgchaxhws+Z1GSCMDjaGBa4XzpqkbPJiP7G7KE8KjEhdMGaCK6HFEAAo=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnosv-000LhG-Fb
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 21:23:59 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 g91-20020a9d12e4000000b0055ae68cfc3dso13281776otg.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 18 Nov 2021 13:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UWACXBbqRdeol3CXg5rFjYspFN+GWNxgtVk6AOTQB1Y=;
 b=YQdznxljCTKZuu8S49lt0p3eYl8ryeVW22jLBlQGaQshzaVOw22E/xxGibi9GBUE3W
 rZ9J0lrXplM/5P9PeW4sYiveFTbIQfzCqokBKYXXO9Im6ytnzVfQN5g/2zCrSEVdS1x9
 PqwnmDPtTnzWX+q+AgI4ZKn5jvHGec3AVPgQ6y+zBUbm2RGrwAN3614aXB5v+nHXYNUY
 Fu9gkFRNWPXKKjVjDR5Kz6TS94eo8wIFvN+Ya6c285fJphNiG5TXKIdHN4q38n0hjF3z
 n3Qnll8tmp7qreeaY3XAkvGyoeHYBv3SEXCYtqDZavF+Dc1k9KP9ktZqe/vhuKEpDxUr
 z6tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=UWACXBbqRdeol3CXg5rFjYspFN+GWNxgtVk6AOTQB1Y=;
 b=uwEhEPuTSQUZ+vFudHF6yPx0dA0yU/K3nhfHCicV5GTCbsmRct158hxZvra9jZlOUM
 Q51/orDaNcdzOiU09m7rltUNdsRjzWMa3kTwy2d+XuxcZJYCeMpzl7CR8mAV4SKqKXJC
 op5tv3d3jfVegfRV5cKdOrEzBaDicqbPYpyp6MZ0D+dtCwaieu5GyYegELWxRNSZgEDA
 J0PyhgQ7PnPrrK9AV2vBwp7Q8394ZFcQ7UBya8R8qLOCegpMjjFdy1dbkCZpQTR0JWKI
 TCi3K6bxTEEQMR16GPnqcxM1PWQ3CmNzAo6YFgNbOr4NOfeNf7xZKXshs96i9efwPDSM
 I8hQ==
X-Gm-Message-State: AOAM531r2Fto8puWwPnvIwNTSrsqkXqdrC70fuh6EBgZ7K9xuG7qhLNO
 IaMGDjsny+eojyIqZKyvn133QmN8r8s=
X-Google-Smtp-Source: ABdhPJwWg8Wje8poBr0MOTXBSHqruwMlvAW14Sn2MrWZ6wd3sgB7FUm+A5CA3Jyg09GoFZu779Ue2A==
X-Received: by 2002:a05:6830:3113:: with SMTP id
 b19mr284327ots.9.1637270631904; 
 Thu, 18 Nov 2021 13:23:51 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 e28sm227315oiy.10.2021.11.18.13.23.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 13:23:51 -0800 (PST)
Date: Thu, 18 Nov 2021 13:23:49 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20211118212349.GA3424901@roeck-us.net>
References: <CAHk-=wjF=JzLkCi2wV+G=f8OWa5rNjPsZd2RMFG5MHwKZPgYvw@mail.gmail.com>
 <20211115045616.GA1012538@roeck-us.net>
 <CAHk-=whca4JrEExUZCf+iGhP+mV-_D2uyqiFHnaYqnfCOKyEVg@mail.gmail.com>
 <652edea7-28a0-70d9-c63f-d910b5942454@roeck-us.net>
 <87a6i4miwu.fsf@mpe.ellerman.id.au>
 <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
 <8D79B547-D606-4975-A79A-AEA65684F3A0@tuxera.com>
 <CAHk-=wgvzH=BaFg+kiWk1DXGLNELSmPS2VWcgSSmW5Y6vz-v_A@mail.gmail.com>
 <E1EED1BE-A0F0-4EFA-86A6-CF721E194CDC@tuxera.com>
 <CAHk-=wjoQYuOfhsiPXUvFbUbSd5iHmmoRHMP+zv+bzHKkWqAyA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wjoQYuOfhsiPXUvFbUbSd5iHmmoRHMP+zv+bzHKkWqAyA@mail.gmail.com>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 17, 2021 at 05:54:06PM -0800,
 Linus Torvalds wrote:
 > On Wed, Nov 17, 2021 at 5:26 PM Anton Altaparmakov <anton@tuxera.com> wrote:
 > > > > So is it worth doing the singly linked list to fi [...] 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mnosv-000LhG-Fb
X-Mailman-Approved-At: Thu, 18 Nov 2021 23:00:58 +0000
Subject: Re: [Linux-NTFS-Dev] Linux 5.16-rc1
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Nov 17, 2021 at 05:54:06PM -0800, Linus Torvalds wrote:
> On Wed, Nov 17, 2021 at 5:26 PM Anton Altaparmakov <anton@tuxera.com> wrote:
> >
> > So is it worth doing the singly linked list to fix one file only to have compilation fail a few files later when it gets to mft.c?
> 
> Heh.
> 
> That does sound dubious.
> 
> Honestly, maybe the solution here is to just make the Kconfig depend
> on the page size not being excessive for what NTFS wants to do.
> 
> Because I'm not sure that "powerpc with 64kB pages" is all that
> relevant for NTFS to begin with.
> 
> The main problem is that the page size thing isn't some generic
> Kconfig entry, different architectures have different names for it. On
> PPC, the confic name is PPC_*K_PAGES and PPC_PAGE_SHIFT.
> 
> And arm64 has something very similar.
> 
> We have other things that do that, ie KASAN support has
> 
>         select HAVE_ARCH_KASAN  if PPC32 && PPC_PAGE_SHIFT <= 14
> 
> (and something very similar for arm64).
> 
> But those KASAN dependencies are inside the core architecture Kconfig
> files, so it can fairly naturally use that page size config variable
> as a conditional.
> 
> For something like NTFS, we don't really have a generic Kconfig
> variable to test.
> 
> It wouldn't be _hard_ to add, but it would have to be done somewhat
> sensibly and preferably in a way that doesn't require every
> architecture to change how their page size selection (or lack of
> selection) is done.
> 
> The simplest thing would probably be to add something like
>      config BIG_PAGES
>           bool
> 
> to some generic file, and then add
> 
>         select BIG_PAGES
> 
> to PPC and arm64 for the 64kB+ page size, and add a
> 
>         depends on !BIG_PAGES
> 
> to the NTFS Kconfig entry.
> 
> But that honestly looks a bit hacky to me. It would be less hacky to
> just add a PAGE_SIZE config variable, and have architectures just set
> it, and then NTFS could do
> 
>         depends on PAGE_SIZE < 65536
> 
> or whatever. I just don't know if it's worth it if this is only for NTFS.
> 

Like this ?

Guenter

---
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index dea74d7717c0..fd3fb2ab2350 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -767,6 +767,16 @@ config PPC_PAGE_SHIFT
        default 14 if PPC_16K_PAGES
        default 12

+config HAVE_PAGE_SIZE
+       def_bool y
+
+config PAGE_SIZE
+       int
+       default 262144 if PPC_256K_PAGES
+       default 65536 if PPC_64K_PAGES
+       default 16384 if PPC_16K_PAGES
+       default 4096
+
 config THREAD_SHIFT
        int "Thread shift" if EXPERT
        range 13 15
diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index 1667a7e590d8..912361014bb0 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -1,6 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+config NTFS_PAGE_SIZE_LIMIT
+       int
+       default 262144 if FRAME_WARN >= 8192
+       default 131072 if FRAME_WARN >= 4096
+       default 65536 if FRAME_WARN >= 2048
+       default 32768 if FRAME_WARN >= 1024
+       default 16384
+
 config NTFS_FS
        tristate "NTFS file system support"
+       depends on !WERROR || !HAVE_PAGE_SIZE || PAGE_SIZE < NTFS_PAGE_SIZE_LIMIT
        select NLS
        help
          NTFS is the file system of Microsoft Windows NT, 2000, XP and 2003.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
