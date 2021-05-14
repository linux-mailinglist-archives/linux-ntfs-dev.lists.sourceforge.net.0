Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED413813E7
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 15 May 2021 00:48:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lhgbo-0007SQ-Sm; Fri, 14 May 2021 22:48:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1lhdZ0-0003FA-9r
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 19:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ClftVL+uGmfhXtudCjQvEaJc412LM7r2LFw66XZm3oI=; b=gUnTjpkwqbJYW73avZ0t7y5N6i
 khqRBWaE6i2gcwi6bOgiZtuAG6TUXKF0kRbHOWR7eNUstAv9mQk+/3NJCDPtJ6HzUB4zGvzzCVpgh
 om/QxogrWtkhq5ouHCRsbuxYJKi2bOa+I3AX9UvqMSGLhLRgEUr+LlMLHRGaxKQLXCBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ClftVL+uGmfhXtudCjQvEaJc412LM7r2LFw66XZm3oI=; b=YET9WtQZOkN+3bHFU7qiMT1s9z
 rzdzkm1aZ4GNt/D4KSXXYqbrSb59qgde+nBfk/uuYboNAq36mLuEWhShh1sYyys8e5mN6+CS7GrO5
 Wl2aVBKw0HqmOtQXQ4tbcw21ShCym6pmSTA+HV62FlOigO/woYbNgKEb//kPrBiVHSp0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhdYp-0004wC-H8
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 19:33:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A8D361476
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 14 May 2021 19:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621020794;
 bh=sx6RnRTXG/HkUYbZ66bme4Ihr6YCIRDKjve7uvyFxHE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SdqSke8IaGMvUEeTe71zk1Hd28gwlDENetQe7k7Co66h23vRCRl1KPsodwwWVdhKE
 dvYpB/evTd7XXke5L3mNIMCb5pyrjckv1uAHT7B03ZI+6Q8VhW0fyme343G7sIOz2d
 srEQlIDyrnWkqm3qvfgk1LIwQGEN2ieFg2BhbrW1xznGLIUCqElPii6G++r1B9Gdlu
 RpHn4yyP32nYfFEo1EHqIXv/0flEjUdCxBwXURiO9O+8/CgEAeziclDuLs+j6NXhQI
 +PGgdKis35+IFsUe1OslqhfbMRZRI1o7OMfcrju6a0P+zV4d7W3cQbZRjeRJT+esmf
 LxDvDYAi5VP7Q==
Received: by mail-lj1-f181.google.com with SMTP id 131so13716541ljj.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 14 May 2021 12:33:13 -0700 (PDT)
X-Gm-Message-State: AOAM531w8UNFWAH3clhEV9JmdsbOVSHQQMnkCQazfDLI4iUOcv2VC6pU
 QYAZmQXLR2hk4GAHt05QbU5jBeSfvSMV6CBGQy0=
X-Google-Smtp-Source: ABdhPJwCQ1F0CBUPxIsNYOfoW01L5a5C+nTIh8ZsdXu8MlaXBtReQ+mP8NigDxBA9czvxj+u/ONPbc8umn+Z9hfl/zY=
X-Received: by 2002:a5d:6dc4:: with SMTP id d4mr62128225wrz.105.1621020781452; 
 Fri, 14 May 2021 12:33:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAHk-=whGObOKruA_bU3aPGZfoDqZM1_9wBkwREp0H0FgR-90uQ@mail.gmail.com>
In-Reply-To: <CAHk-=whGObOKruA_bU3aPGZfoDqZM1_9wBkwREp0H0FgR-90uQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 14 May 2021 21:31:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2q8zEy+eQ1RJHT7UbD9E+KofKNjKxMHJ6hreHN0J_mEQ@mail.gmail.com>
Message-ID: <CAK8P3a2q8zEy+eQ1RJHT7UbD9E+KofKNjKxMHJ6hreHN0J_mEQ@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhdYp-0004wC-H8
X-Mailman-Approved-At: Fri, 14 May 2021 22:48:38 +0000
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
Cc: Rich Felker <dalias@libc.org>, Linux-sh list <linux-sh@vger.kernel.org>,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-sparc <sparclinux@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arch <linux-arch@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>, James Morris <jmorris@namei.org>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Jakub Kicinski <kuba@kernel.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Jonas Bonn <jonas@southpole.se>, Ganapathi Bhat <ganapathi017@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-block <linux-block@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>, Borislav Petkov <bp@alien8.de>,
 Stafford Horne <shorne@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Jens Axboe <axboe@kernel.dk>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-ntfs-dev@lists.sourceforge.net,
 LSM List <linux-security-module@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Netdev <netdev@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, May 14, 2021 at 7:32 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Fri, May 14, 2021 at 3:02 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > I've included this version in the asm-generic tree for 5.14 already,
> > addressing the few issues that were pointed out in the RFC. If there
> > are any remaining problems, I hope those can be addressed as follow-up
> > patches.
>
> This continues to look great to me, and now has the even simpler
> remaining implementation.
>
> I'd be tempted to just pull it in for 5.13, but I guess we don't
> actually have any _outstanding_ bug in this area (the bug was in our
> zlib code, required -O3 to trigger, has been fixed now, and the biggy
> case didn't even use "get_unaligned()").
>
> So I guess your 5.14 timing is the right thing to do.

Yes, I think that's best, just in case something does come up. While all the
object code I looked at does appear better, this is one of those areas that
can be hard to pinpoint if we hit a regression in a particular combination of
architecture+compiler+source file.

I have pushed a signed tag to
https://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git
asm-generic-unaligned-5.14

and plan to send that in the 5.14 merge window unless you decide to
take it now after all.

        Arnd


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
