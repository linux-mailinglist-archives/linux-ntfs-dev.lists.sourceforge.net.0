Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41933477BAF
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 16 Dec 2021 19:43:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mxvia-0002t0-3P; Thu, 16 Dec 2021 18:43:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ardb@kernel.org>) id 1mxuaC-0003Gl-RY
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 17:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ggJLR+u8Va9gt1Y99vTkFc6+lY/PcU8CQsdoeHmtydo=; b=cZO/G41Z46gpRBIjSczoDy1GQ+
 s5HqbtGfnULCHmpB2lolAVPYEaslYUuTTt6EwkPyn46JG1ZoudwTj0xP9pKdSi6R9Z/Sx9YfBMdOd
 CxLk4iMe0A+/OwF05cmdC9Rw9pN7IekawvA1KsVhhnN3Ci/oi1YiXHCwrMHO3vUuWa1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ggJLR+u8Va9gt1Y99vTkFc6+lY/PcU8CQsdoeHmtydo=; b=SsuXY8HlNeOe7AjQPrXCiWo2td
 HTBCdUvzZhs2vqOA0A0o5meIMQ+IqWUiCnmjnMScvBAKPnE+0XGCPt6kCTiWHzpKeDRY/R81ePzin
 G7HxjLsfWWa5v74TcBda/v1balcEQgoZG3oxJC/NyujBfofJrLkIBXmvADzQZV/Q6+CQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxua8-000892-4Q
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 17:30:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EAED3B8252A
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 16 Dec 2021 17:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6256C36AE7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 16 Dec 2021 17:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639675803;
 bh=sZED9o+V6DY8SMm+Vs6+SPM0L4+1UTJmGboG9qTGk/k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tmjuDmErRAY3G7XaKZIuuXE3XNoInesCIPuAdXXPMqlcmnL5RzC3DySNbJ9C0h1tu
 5Y+UkUUN17mUcx6IGA9u0mLpomZ3vm5E7PR8bHBPX8htDtAM60WYK0Y97mtXykLkWD
 j/I4VsEQhhLdJpxZrnDFS4eyWhs+TO+nPefu95Oa31+XrM8uXkkQXzVziv6sKRj6Zx
 At7GNBYXWKNrXQvgOlYhFiwwBf0vAN/N3MiCZMgh/0sGKZFdGrETcPOiDx6FHSXw8r
 Xxk1gZYErxWXahqWyltZt6z08vQOspnTgImQDVMTOWv/nOfZ6v0XzKn6L4zkDnSnfA
 y0LWEgsO8sTuA==
Received: by mail-wm1-f52.google.com with SMTP id
 j140-20020a1c2392000000b003399ae48f58so2266111wmj.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 16 Dec 2021 09:30:03 -0800 (PST)
X-Gm-Message-State: AOAM533N0Z1bO/Z3y+J8mKW6khrN3cCyMU0eNeVZt1j2K+upGxy6G54n
 EqOwTzIc+sGd9xAYS260Ph3qqOn4N8Fh1Z0BcwA=
X-Google-Smtp-Source: ABdhPJzp0SU8actyldrvzX1x50riwocCH+uUo3Sc9tTPSiAj2RkG6W8raN6crfSV4FfRoxzwjsmq9fCJPMFefPzOiEI=
X-Received: by 2002:a05:600c:3486:: with SMTP id
 a6mr5945559wmq.32.1639675791707; 
 Thu, 16 Dec 2021 09:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20210514100106.3404011-1-arnd@kernel.org>
In-Reply-To: <20210514100106.3404011-1-arnd@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Dec 2021 18:29:40 +0100
X-Gmail-Original-Message-ID: <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
Message-ID: <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
To: Arnd Bergmann <arnd@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 johannes@sipsolutions.net, 
 Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Arnd, (replying to an old thread as this came up in the
 discussion regarding misaligned loads and stored in siphash() when compiled
 for ARM [f7e5b9bfa6c8820407b64eabc1f29c9a87e8993d]) On Fri, 14 May 2021 at
 12:02,
 Arnd Bergmann <arnd@kernel.org> wrote: > > From: Arnd Bergmann <arnd@arndb.de>
 > > The get_unaligned()/put_unaligned() helpers are traditionally architecture
 > specific, [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mxua8-000892-4Q
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
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
 Jonas Bonn <jonas@southpole.se>, Arnd Bergmann <arnd@arndb.de>,
 Ganapathi Bhat <ganapathi017@gmail.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-block@vger.kernel.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 openrisc@lists.librecores.org, Borislav Petkov <bp@alien8.de>,
 Stafford Horne <shorne@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Jens Axboe <axboe@kernel.dk>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-security-module@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Arnd,

(replying to an old thread as this came up in the discussion regarding
misaligned loads and stored in siphash() when compiled for ARM
[f7e5b9bfa6c8820407b64eabc1f29c9a87e8993d])

On Fri, 14 May 2021 at 12:02, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> The get_unaligned()/put_unaligned() helpers are traditionally architecture
> specific, with the two main variants being the "access-ok.h" version
> that assumes unaligned pointer accesses always work on a particular
> architecture, and the "le-struct.h" version that casts the data to a
> byte aligned type before dereferencing, for architectures that cannot
> always do unaligned accesses in hardware.
>
> Based on the discussion linked below, it appears that the access-ok
> version is not realiable on any architecture, but the struct version
> probably has no downsides. This series changes the code to use the
> same implementation on all architectures, addressing the few exceptions
> separately.
>
> I've included this version in the asm-generic tree for 5.14 already,
> addressing the few issues that were pointed out in the RFC. If there
> are any remaining problems, I hope those can be addressed as follow-up
> patches.
>

I think this series is a huge improvement, but it does not solve the
UB problem completely. As we found, there are open issues in the GCC
bugzilla regarding assumptions in the compiler that aligned quantities
either overlap entirely or not at all. (e.g.,
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363)

CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is used in many places to
conditionally emit code that violates C alignment rules. E.g., there
is this example in Documentation/core-api/unaligned-memory-access.rst:

bool ether_addr_equal(const u8 *addr1, const u8 *addr2)
{
#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
  u32 fold = ((*(const u32 *)addr1) ^ (*(const u32 *)addr2)) |
             ((*(const u16 *)(addr1 + 4)) ^ (*(const u16 *)(addr2 + 4)));
  return fold == 0;
#else
...

(which now deviates from its actual implementation, but the point is
the same) where CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is used in the
wrong way (IMHO).

The pattern seems to be

#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
  // ignore alignment rules, just cast to a more aligned pointer type
#else
  // use unaligned accessors, which could be either cheap or expensive,
  // depending on the architecture
#endif

whereas the following pattern makes more sense, I think, and does not
violate any C rules in the common case:

#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
  // use unaligned accessors, which are cheap or even entirely free
#else
  // avoid unaligned accessors, as they are expensive; instead, reorganize
  // the data so we don't need them (similar to setting NET_IP_ALIGN to 2)
#endif

The only remaining problem here is reinterpreting a char* pointer to a
u32*, e.g., for accessing the IP address in an Ethernet frame when
NET_IP_ALIGN == 2, which could suffer from the same UB problem again,
as I understand it.

In the 32-bit ARM case (v6+) [which is admittedly an outlier] this
makes a substantial difference, as ARMv6 does have efficient unaligned
accessors (load/store word or halfword may be used on misaligned
addresses) but requires that load/store double-word and load/store
multiple are only used on 32-bit aligned addresses. GCC does the right
thing with the unaligned accessors, but blindly casting away
misalignment may result in alignment traps if the compiler happened to
emit load-double or load-multiple instructions for the memory access
in question.

Jason already verifed that in the siphash() case, the aligned and
unaligned versions of the code actually compile to the same machine
code on x86, as the unaligned accessors just disappear. I suspect this
to be the case for many instances where
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is being used, mostly in the
networking stack.

So I intend to dig a bit deeper into this, and perhaps propose some
changes where the interpretation of
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is documented more clearly, and
tweaked according to my suggestion above (while ensuring that codegen
does not suffer, of course)

Thoughts, concerns, objections?


--
Ard.




> Link: https://lore.kernel.org/lkml/75d07691-1e4f-741f-9852-38c0b4f520bc@synopsys.com/
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363
> Link: https://lore.kernel.org/lkml/20210507220813.365382-14-arnd@kernel.org/
> Link: git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git unaligned-rework-v2
>
>
> Arnd Bergmann (13):
>   asm-generic: use asm-generic/unaligned.h for most architectures
>   openrisc: always use unaligned-struct header
>   sh: remove unaligned access for sh4a
>   m68k: select CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
>   powerpc: use linux/unaligned/le_struct.h on LE power7
>   asm-generic: unaligned: remove byteshift helpers
>   asm-generic: unaligned always use struct helpers
>   partitions: msdos: fix one-byte get_unaligned()
>   apparmor: use get_unaligned() only for multi-byte words
>   mwifiex: re-fix for unaligned accesses
>   netpoll: avoid put_unaligned() on single character
>   asm-generic: uaccess: 1-byte access is always aligned
>   asm-generic: simplify asm/unaligned.h
>
>  arch/alpha/include/asm/unaligned.h          |  12 --
>  arch/arm/include/asm/unaligned.h            |  27 ---
>  arch/ia64/include/asm/unaligned.h           |  12 --
>  arch/m68k/Kconfig                           |   1 +
>  arch/m68k/include/asm/unaligned.h           |  26 ---
>  arch/microblaze/include/asm/unaligned.h     |  27 ---
>  arch/mips/crypto/crc32-mips.c               |   2 +-
>  arch/openrisc/include/asm/unaligned.h       |  47 -----
>  arch/parisc/include/asm/unaligned.h         |   6 +-
>  arch/powerpc/include/asm/unaligned.h        |  22 ---
>  arch/sh/include/asm/unaligned-sh4a.h        | 199 --------------------
>  arch/sh/include/asm/unaligned.h             |  13 --
>  arch/sparc/include/asm/unaligned.h          |  11 --
>  arch/x86/include/asm/unaligned.h            |  15 --
>  arch/xtensa/include/asm/unaligned.h         |  29 ---
>  block/partitions/ldm.h                      |   2 +-
>  block/partitions/msdos.c                    |   2 +-
>  drivers/net/wireless/marvell/mwifiex/pcie.c |  10 +-
>  include/asm-generic/uaccess.h               |   4 +-
>  include/asm-generic/unaligned.h             | 141 +++++++++++---
>  include/linux/unaligned/access_ok.h         |  68 -------
>  include/linux/unaligned/be_byteshift.h      |  71 -------
>  include/linux/unaligned/be_memmove.h        |  37 ----
>  include/linux/unaligned/be_struct.h         |  37 ----
>  include/linux/unaligned/generic.h           | 115 -----------
>  include/linux/unaligned/le_byteshift.h      |  71 -------
>  include/linux/unaligned/le_memmove.h        |  37 ----
>  include/linux/unaligned/le_struct.h         |  37 ----
>  include/linux/unaligned/memmove.h           |  46 -----
>  net/core/netpoll.c                          |   4 +-
>  security/apparmor/policy_unpack.c           |   2 +-
>  31 files changed, 131 insertions(+), 1002 deletions(-)
>  delete mode 100644 arch/alpha/include/asm/unaligned.h
>  delete mode 100644 arch/arm/include/asm/unaligned.h
>  delete mode 100644 arch/ia64/include/asm/unaligned.h
>  delete mode 100644 arch/m68k/include/asm/unaligned.h
>  delete mode 100644 arch/microblaze/include/asm/unaligned.h
>  delete mode 100644 arch/openrisc/include/asm/unaligned.h
>  delete mode 100644 arch/powerpc/include/asm/unaligned.h
>  delete mode 100644 arch/sh/include/asm/unaligned-sh4a.h
>  delete mode 100644 arch/sh/include/asm/unaligned.h
>  delete mode 100644 arch/sparc/include/asm/unaligned.h
>  delete mode 100644 arch/x86/include/asm/unaligned.h
>  delete mode 100644 arch/xtensa/include/asm/unaligned.h
>  delete mode 100644 include/linux/unaligned/access_ok.h
>  delete mode 100644 include/linux/unaligned/be_byteshift.h
>  delete mode 100644 include/linux/unaligned/be_memmove.h
>  delete mode 100644 include/linux/unaligned/be_struct.h
>  delete mode 100644 include/linux/unaligned/generic.h
>  delete mode 100644 include/linux/unaligned/le_byteshift.h
>  delete mode 100644 include/linux/unaligned/le_memmove.h
>  delete mode 100644 include/linux/unaligned/le_struct.h
>  delete mode 100644 include/linux/unaligned/memmove.h
>
> --
> 2.29.2
>
> Cc: Amitkumar Karwar <amitkarwar@gmail.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Ganapathi Bhat <ganapathi017@gmail.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: James Morris <jmorris@namei.org>
> Cc: Jens Axboe <axboe@kernel.dk>
> Cc: John Johansen <john.johansen@canonical.com>
> Cc: Jonas Bonn <jonas@southpole.se>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Rich Felker <dalias@libc.org>
> Cc: "Richard Russon (FlatCap)" <ldm@flatcap.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: "Serge E. Hallyn" <serge@hallyn.com>
> Cc: Sharvari Harisangam <sharvari.harisangam@nxp.com>
> Cc: Stafford Horne <shorne@gmail.com>
> Cc: Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Vladimir Oltean <vladimir.oltean@nxp.com>
> Cc: Xinming Hu <huxinming820@gmail.com>
> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
> Cc: x86@kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-m68k@lists.linux-m68k.org
> Cc: linux-crypto@vger.kernel.org
> Cc: openrisc@lists.librecores.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-sh@vger.kernel.org
> Cc: sparclinux@vger.kernel.org
> Cc: linux-ntfs-dev@lists.sourceforge.net
> Cc: linux-block@vger.kernel.org
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-arch@vger.kernel.org
> Cc: linux-security-module@vger.kernel.org
>
>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
