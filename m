Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 533A647916C
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 17 Dec 2021 17:26:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1myG3o-0007BN-G1; Fri, 17 Dec 2021 16:26:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <segher@kernel.crashing.org>) id 1myDbE-00016i-OF
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 17 Dec 2021 13:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WUVcjJGCabDGLxQobtnnJ6Re2Bsynf6dlCnu/xDrwGc=; b=OOLV2QcEswcfWdk90hdE3rB739
 NBSSqwXz2ijXxmrQ3NTnfqbvp+XyZ2pym2wmLwZZTjAcy3vZqRTO1CPn924kFpR6nmo9nrhqRx4TY
 j9l+KcD8J0ALrry8CFA+ltO1HZYB3BhZ2Gor10o0MvBBxS2j+zWGCb4bZLc6bVEngXNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WUVcjJGCabDGLxQobtnnJ6Re2Bsynf6dlCnu/xDrwGc=; b=BIC1SRSd9K3JelaN04CJ0TiCw4
 9cI+QPBFPq8lw/lNS3FAZXmKwTfURoeE0cGkEBKR2CiFPF8+fOZQUKpswYTo6xCR2fihbZAb0SVBH
 M3SzStWcbtHbVi63Jq4svBv4+jEIpHPKUNxKVbrvwHMVwKwP2njRoq357hhAqelBYKiw=;
Received: from gate.crashing.org ([63.228.1.57])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1myDbC-000yfe-DZ
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 17 Dec 2021 13:48:40 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 1BHDZQmf021580;
 Fri, 17 Dec 2021 07:35:26 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 1BHDZJZQ021573;
 Fri, 17 Dec 2021 07:35:19 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Fri, 17 Dec 2021 07:35:18 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: David Laight <David.Laight@aculab.com>
Message-ID: <20211217133518.GR614@gate.crashing.org>
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
 <20211216185620.GP614@gate.crashing.org>
 <698cfc52a0d441f7b9f29424be82b2e8@AcuMS.aculab.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <698cfc52a0d441f7b9f29424be82b2e8@AcuMS.aculab.com>
User-Agent: Mutt/1.4.2.3i
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Dec 17, 2021 at 12:34:53PM +0000, David Laight wrote:
 > From: Segher Boessenkool > > Sent: 16 December 2021 18:56 > ... > > > The
 only remaining problem here is reinterpreting a char* pointer [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1myDbC-000yfe-DZ
X-Mailman-Approved-At: Fri, 17 Dec 2021 16:26:19 +0000
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Rich Felker <dalias@libc.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 linux-m68k <linux-m68k@vger.kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "open list:SPARC + UltraSPARC \(sparc/sparc64\)" <sparclinux@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arch <linux-arch@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, X86 ML <x86@kernel.org>,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Jonas Bonn <jonas@southpole.se>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Ganapathi Bhat <ganapathi017@gmail.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Borislav Petkov <bp@alien8.de>, Stafford Horne <shorne@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Jens Axboe <axboe@kernel.dk>,
 Arnd Bergmann <arnd@kernel.org>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Yoshinori Sato <ysato@users.osdn.me>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>,
 "johannes@sipsolutions.net" <johannes@sipsolutions.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Dec 17, 2021 at 12:34:53PM +0000, David Laight wrote:
> From: Segher Boessenkool
> > Sent: 16 December 2021 18:56
> ...
> > > The only remaining problem here is reinterpreting a char* pointer to a
> > > u32*, e.g., for accessing the IP address in an Ethernet frame when
> > > NET_IP_ALIGN == 2, which could suffer from the same UB problem again,
> > > as I understand it.
> > 
> > The problem is never casting a pointer to pointer to character type, and
> > then later back to an appriopriate pointer type.
> > These things are both required to work.
> 
> I think that is true of 'void *', not 'char *'.

No, see 6.3.2.3/7.  Both are allowed (and behave the same in fact).

> 'char' is special in that 'strict aliasing' doesn't apply to it.
> (Which is actually a pain sometimes.)

That has nothing to do with it.  Yes, you can validly access any memory
as a character type, but that has nothing to do with what pointer casts
are allowed and which are not.

> > The problem always is accessing something as if it
> > was something of another type, which is not valid C.  This however is
> > exactly what -fno-strict-aliasing allows, so that works as well.
> 
> IIRC the C language only allows you to have pointers to valid data items.
> (Since they can only be generated by the & operator on a valid item.)

Not so.  For example you are explicitly allowed to have pointers one
past the last element of an array (and do arithmetic on that!), and of
course null pointers are a thing.

C allows you to make up pointers from integers as well.  This is
perfectly fine to do.  Accessing anything via such pointers might well
be not standard C, of course.

> Indirecting any other pointer is probably UB!

If a pointer points to an object, indirecting it gives an lvalue of that
object.  It does not matter how you got that pointer, all that matters
is that it points at a valid object.

> This (sort of) allows the compiler to 'look through' casts to find
> what the actual type is (or might be).
> It can then use that information to make optimisation choices.
> This has caused grief with memcpy() calls that are trying to copy
> a structure that the coder knows is misaligned to an aligned buffer.

This is 6.5/7.

Alignment is 6.2.8 but it doesn't actually come into play at all here.

> So while *(unaligned_ptr *)char_ptr probably has to work.

Only if the original pointer points to an object that is correct
(including correctly aligned) for such an lvalue.

> If the compiler can see *(unaligned_ptr *)(char *)int_ptr it can
> assume the alignment of the 'int_ptr' and do a single aligned access.

It is undefined behaviour to have an address in int_ptr that is not
correctly aligned for whatever type it points to.


Segher


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
