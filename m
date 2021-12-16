Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D6C477BB0
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 16 Dec 2021 19:43:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mxvia-0002tE-Gr; Thu, 16 Dec 2021 18:43:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mxv9H-0005um-6X
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 18:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ms/wuM8WAzRPY4WykXwi0/YehvvfoHEwDko5JETWgyY=; b=KUlr0BAB63IWLzA/mehFAgQ8/Q
 m3P2dchwc/N1yx682VcJNXkQnS0TONnHN13VGtpF+9OHsogj0EOda8C/+xX2H2KrSYiUYPktt/5P2
 +Wz0+zu9DujJwgt6hA/dQVrlDjW70pUiR99YmUDzHJCRxKABmGf7eeQgstaczD4kveO0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ms/wuM8WAzRPY4WykXwi0/YehvvfoHEwDko5JETWgyY=; b=Rq7ksLbPMnbx3b+AxLI91WgII1
 IN0x/XZCA6YdnpOq+19Hv7uqh4runiHnTxE/ZGvir83zxgKEagh9MBAz2tJM5yMtJUpn49rrHrNol
 ji6pj31P0DBfCCawKB50wvBfO9jvhfLKYknpb6LZ5eieytPLtyauqHqW7m4ehEhNacps=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mxv9D-000Cvf-7m
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 18:06:36 +0000
Received: by mail-lj1-f174.google.com with SMTP id k23so39817449lje.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 16 Dec 2021 10:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ms/wuM8WAzRPY4WykXwi0/YehvvfoHEwDko5JETWgyY=;
 b=Yt6iQrPRR02VnMfhyQFLe4lPoyYi1LLJZh1EAgoFFL5odLJNrpYEgdV1gCmEQ/8Ebm
 vqyvFiXql5+DLQ9/AE42zzsnV8GD+7jyfxwfcG0fq/qlAeVI5VhSB0SiPNjhiYS6tgxi
 kvXLQUaOrvL+UE8xSz2YpOdT/AUCe9TuJhNKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ms/wuM8WAzRPY4WykXwi0/YehvvfoHEwDko5JETWgyY=;
 b=WhaK9tdz0amW2VkJ6vfYZfGfzfIGhBjkmbn6xL9Jqc6w7nvur6VVteSMKEyToUu4uX
 bmaKDw+osL7TNVHUkOMjdOlQF1tkWVypORAQZQTtmuMnLolKJA218E5d14vx79bL+Nko
 Oba7XpKaQZbPYmupkerb2FnoyLc5AJipexhhpPeIPTq+6kjcoM9dObW/8vtVXJ5jiy2S
 KWz3CuGfUKnduGeXXRR0r2yd3+5jzqCHENxIGgKBZ/M1w6IM07PDFzd0i+XVjY0g/rpN
 M0d+FsVauDJSvmrHjP/W0rRSlQcajfhy2ONn1cFTKOLbjD9jpMldmxrYar29PmiOvFtr
 xViA==
X-Gm-Message-State: AOAM533lSB+ewxuvt0P8bj3bDP2A+yNzF9yExD6Zsqpy5PZqrD9Nsvx0
 mAj6XlPrQtAqEIG1q6FUzvL5SDP1MLYjAO2V9Ac=
X-Google-Smtp-Source: ABdhPJzkTaZzZISt1p9BmFvJnw46i4EbTVgA/mjBnvWmQtTsNue2EnWUzruOr28zGm0ftu5tb6Li5A==
X-Received: by 2002:a05:6512:340c:: with SMTP id
 i12mr3575350lfr.442.1639676588104; 
 Thu, 16 Dec 2021 09:43:08 -0800 (PST)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id c34sm973587lfv.83.2021.12.16.09.43.07
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Dec 2021 09:43:07 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id g11so1597085lfu.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 16 Dec 2021 09:43:07 -0800 (PST)
X-Received: by 2002:adf:8b0e:: with SMTP id n14mr9660488wra.281.1639676577218; 
 Thu, 16 Dec 2021 09:42:57 -0800 (PST)
MIME-Version: 1.0
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
In-Reply-To: <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 Dec 2021 09:42:41 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiKkdYLY0bv+nXrcJz3NH9mAqPAafX7PpW5EwVtxsEu7Q@mail.gmail.com>
Message-ID: <CAHk-=wiKkdYLY0bv+nXrcJz3NH9mAqPAafX7PpW5EwVtxsEu7Q@mail.gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16,
 2021 at 9:29 AM Ard Biesheuvel <ardb@kernel.org>
 wrote: > > CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is used in many places
 to > conditionally emit code that violates C alignment rules. [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.174 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.174 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1mxv9D-000Cvf-7m
X-Mailman-Approved-At: Thu, 16 Dec 2021 18:43:01 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 00/13] Unify asm/unaligned.h around
 struct helper
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Rich Felker <dalias@libc.org>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "open list:SPARC + UltraSPARC \(sparc/sparc64\)" <sparclinux@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arch <linux-arch@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, X86 ML <x86@kernel.org>,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Jakub Kicinski <kuba@kernel.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Jonas Bonn <jonas@southpole.se>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Ganapathi Bhat <ganapathi017@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-block <linux-block@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, openrisc@lists.librecores.org,
 Borislav Petkov <bp@alien8.de>, Stafford Horne <shorne@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Jens Axboe <axboe@kernel.dk>,
 Arnd Bergmann <arnd@kernel.org>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Vineet Gupta <vgupta@synopsys.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-ntfs-dev@lists.sourceforge.net,
 LSM List <linux-security-module@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 9:29 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is used in many places to
> conditionally emit code that violates C alignment rules. E.g., there
> is this example in Documentation/core-api/unaligned-memory-access.rst:
>
> bool ether_addr_equal(const u8 *addr1, const u8 *addr2)
> {
> #ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
>   u32 fold = ((*(const u32 *)addr1) ^ (*(const u32 *)addr2)) |
>              ((*(const u16 *)(addr1 + 4)) ^ (*(const u16 *)(addr2 + 4)));
>   return fold == 0;
> #else

It probably works fine in practice - the one case we had was really
pretty special, and about the vectorizer doing odd things.

But I think we should strive to convert these to use
"get_unaligned()", since code generation is fine. It still often makes
sense to have that test for the config variable, simply because the
approach might be different if we know unaligned accesses are slow.

So I'll happily take patches that do obvious conversions to
get_unaligned() where they make sense, but I don't think we should
consider this some huge hard requirement.

                 Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
