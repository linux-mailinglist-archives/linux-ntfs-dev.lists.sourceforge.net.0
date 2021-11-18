Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C5E455265
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Nov 2021 02:54:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnWdO-0007Qd-Pw; Thu, 18 Nov 2021 01:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mnWdM-0007QS-0H
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 01:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BQjLVKTFCyg54+MPkexuKzcwdgRy8r7qz4+tCabQRds=; b=CJKg9+mnxO0IfNW9kjVOYovZ/Z
 QYHffw+24/0ZJktbNdav0dODgNlr9bUNkdsG0UHFz8F3ZSwlKNYS3HFg4FSLQ4/3EW4qAbd08bMWn
 ikhAwvXqPQRp6uzxZv7EKli5aQj4yoDW1/kfzDDvJ48L6md0TJIDUzAbbbnlNGULL0N4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BQjLVKTFCyg54+MPkexuKzcwdgRy8r7qz4+tCabQRds=; b=gQr+tTXNbjuAMtAJxbQIRQxr+1
 dqrDuSGLjIeJfyal0ahr5TG/ZIL9tzL2HrvyuiU2dc4QFaxEkxYvjzVHzm5nL6G/Yc92TlkhcMg49
 495eUtcTQdgPbzIZjoIWkHg6LcD/8ffegxW8Y3w3DLJdjTDluSOyNCK2ISdjA98hwR2U=;
Received: from mail-ed1-f45.google.com ([209.85.208.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnWdC-0007QP-Ai
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 01:54:39 +0000
Received: by mail-ed1-f45.google.com with SMTP id w1so19658896edc.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 17:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BQjLVKTFCyg54+MPkexuKzcwdgRy8r7qz4+tCabQRds=;
 b=BI6fQpoMzDr/NIPyXsnzRf6xEGwkyY2l7YJ3C4/3nzasNA24ySVmck0yjtyHRSTWwx
 2nBSubXTgx7Kem0XSaUPl17mzkqWwrrECub6ejVlg84mPAuEFmOkrGQlghzzx0m25h4N
 jmdM1gs18w+GbPbcog9/hZdK9bvc/mKgep3do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BQjLVKTFCyg54+MPkexuKzcwdgRy8r7qz4+tCabQRds=;
 b=w9zEMTg3ep7kj+MCBDClMTZnFpTTKhM6hdIzYaPwPC/n8m0C4uHL+vpYu3RW+bd2G/
 hxsD0Qgad3itK96d3qi6c32Jxq4wkkpCWdt28f6X7X3inQBifj1i9HgReubaIH477tit
 eJCrgLPpJ0jEUXYjVxC2viLfqRoX+ZokAYRV5AbCtaDlE+WaZsaKtY8M4xMKoB/RhD+l
 Q2T/1Sg9OZlTX3vhqz1MYty/0k2gB166MhIAyT5x9Y+ZYQgvYmsNSW26u7xett55VY+L
 3ioAROybdx0+mDVprqLi4xH6V18AN6NOIiIgJkD8pjNxdIiFD0WlKx1tQikgeP37USye
 bdQA==
X-Gm-Message-State: AOAM531JXL+wmGHDkUafHIm6a2JIOzEWVHut/IPYtTha5HhUUgYRRPFE
 9cT8vIaINDZ9EuijNgFzt8cIgaXHagtbRaPV
X-Google-Smtp-Source: ABdhPJyhBoTTHkdRraTrP1yyK8AnXEk8YC0T03hitRv7JLTEiLQamy537zUsl0X1Yaoy8Hg+W2X23g==
X-Received: by 2002:a50:9eca:: with SMTP id a68mr5127497edf.127.1637200462845; 
 Wed, 17 Nov 2021 17:54:22 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id z22sm891643edd.78.2021.11.17.17.54.22
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 17:54:22 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id u18so8287182wrg.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 17:54:22 -0800 (PST)
X-Received: by 2002:adf:cf05:: with SMTP id o5mr27149051wrj.325.1637200462289; 
 Wed, 17 Nov 2021 17:54:22 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wjF=JzLkCi2wV+G=f8OWa5rNjPsZd2RMFG5MHwKZPgYvw@mail.gmail.com>
 <20211115045616.GA1012538@roeck-us.net>
 <CAHk-=whca4JrEExUZCf+iGhP+mV-_D2uyqiFHnaYqnfCOKyEVg@mail.gmail.com>
 <652edea7-28a0-70d9-c63f-d910b5942454@roeck-us.net>
 <87a6i4miwu.fsf@mpe.ellerman.id.au>
 <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
 <8D79B547-D606-4975-A79A-AEA65684F3A0@tuxera.com>
 <CAHk-=wgvzH=BaFg+kiWk1DXGLNELSmPS2VWcgSSmW5Y6vz-v_A@mail.gmail.com>
 <E1EED1BE-A0F0-4EFA-86A6-CF721E194CDC@tuxera.com>
In-Reply-To: <E1EED1BE-A0F0-4EFA-86A6-CF721E194CDC@tuxera.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 17 Nov 2021 17:54:06 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjoQYuOfhsiPXUvFbUbSd5iHmmoRHMP+zv+bzHKkWqAyA@mail.gmail.com>
Message-ID: <CAHk-=wjoQYuOfhsiPXUvFbUbSd5iHmmoRHMP+zv+bzHKkWqAyA@mail.gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 17,
 2021 at 5:26 PM Anton Altaparmakov <anton@tuxera.com>
 wrote: > > So is it worth doing the singly linked list to fix one file only
 to have compilation fail a few files later when it get [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.45 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mnWdC-0007QP-Ai
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
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Nov 17, 2021 at 5:26 PM Anton Altaparmakov <anton@tuxera.com> wrote:
>
> So is it worth doing the singly linked list to fix one file only to have compilation fail a few files later when it gets to mft.c?

Heh.

That does sound dubious.

Honestly, maybe the solution here is to just make the Kconfig depend
on the page size not being excessive for what NTFS wants to do.

Because I'm not sure that "powerpc with 64kB pages" is all that
relevant for NTFS to begin with.

The main problem is that the page size thing isn't some generic
Kconfig entry, different architectures have different names for it. On
PPC, the confic name is PPC_*K_PAGES and PPC_PAGE_SHIFT.

And arm64 has something very similar.

We have other things that do that, ie KASAN support has

        select HAVE_ARCH_KASAN  if PPC32 && PPC_PAGE_SHIFT <= 14

(and something very similar for arm64).

But those KASAN dependencies are inside the core architecture Kconfig
files, so it can fairly naturally use that page size config variable
as a conditional.

For something like NTFS, we don't really have a generic Kconfig
variable to test.

It wouldn't be _hard_ to add, but it would have to be done somewhat
sensibly and preferably in a way that doesn't require every
architecture to change how their page size selection (or lack of
selection) is done.

The simplest thing would probably be to add something like
     config BIG_PAGES
          bool

to some generic file, and then add

        select BIG_PAGES

to PPC and arm64 for the 64kB+ page size, and add a

        depends on !BIG_PAGES

to the NTFS Kconfig entry.

But that honestly looks a bit hacky to me. It would be less hacky to
just add a PAGE_SIZE config variable, and have architectures just set
it, and then NTFS could do

        depends on PAGE_SIZE < 65536

or whatever. I just don't know if it's worth it if this is only for NTFS.

I dunno. It all seems a bit dubious.

                Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
