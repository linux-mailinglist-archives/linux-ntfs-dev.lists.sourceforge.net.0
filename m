Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3386C477D88
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 16 Dec 2021 21:26:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mxxKk-0003oV-3d; Thu, 16 Dec 2021 20:26:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <segher@kernel.crashing.org>) id 1mxwzl-0003bk-22
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 20:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:Mime-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uQOCBBBB5tPnson2mOoE22uBtHHFw+kYfCjF4BcdWSY=; b=MwqQqifUXf9NDRFmrnuuNvdTYg
 YYxGY9zLvPIxcxfFj/OUxs3Zfk6iHIcY5L2sIkc0Sw1qeOYXjNYa25SUx00CVe3h5oSOcysc99zVV
 gQidUVA5Qm+GRzeI4R4AI8rnAx2vx4ZQBe/OS2HCeFhENKdORxWDjGFFXdFPN8Ubk9fk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:Mime-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uQOCBBBB5tPnson2mOoE22uBtHHFw+kYfCjF4BcdWSY=; b=Y0RTGemgueK9aNywAhmwALokaR
 uEgYfsBktA/ZT9/mQ5PMOah1sMbx4KnYJZblwuiFgk6kWhC80TADFZwaP0DlHiLL7HRzucH3/cLei
 e95prjW7/PebmFej5dRWICGvM5UVC/TEX2x87PMVcheQHPjM/09U4FL4KrJqCsxWunNo=;
Received: from gate.crashing.org ([63.228.1.57])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mxwza-0006ye-LR
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 20:04:52 +0000
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 1BGIuSL3021510;
 Thu, 16 Dec 2021 12:56:28 -0600
Received: (from segher@localhost)
 by gate.crashing.org (8.14.1/8.14.1/Submit) id 1BGIuLq7021509;
 Thu, 16 Dec 2021 12:56:21 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to
 segher@kernel.crashing.org using -f
Date: Thu, 16 Dec 2021 12:56:20 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Ard Biesheuvel <ardb@kernel.org>
Message-ID: <20211216185620.GP614@gate.crashing.org>
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 16, 2021 at 06:29:40PM +0100,
 Ard Biesheuvel wrote:
 > I think this series is a huge improvement, but it does not solve the >
 UB problem completely. As we found, there are open issues in th [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mxwza-0006ye-LR
X-Mailman-Approved-At: Thu, 16 Dec 2021 20:26:32 +0000
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
Cc: linux-wireless@vger.kernel.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>, X86 ML <x86@kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, James Morris <jmorris@namei.org>,
 Eric Dumazet <edumazet@google.com>, Paul Mackerras <paulus@samba.org>,
 linux-m68k <linux-m68k@vger.kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "open list:SPARC + UltraSPARC \(sparc/sparc64\)" <sparclinux@vger.kernel.org>,
 Stafford Horne <shorne@gmail.com>, linux-arch <linux-arch@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Yoshinori Sato <ysato@users.osdn.me>,
 Russell King <linux@armlinux.org.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Kalle Valo <kvalo@codeaurora.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Jonas Bonn <jonas@southpole.se>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Ganapathi Bhat <ganapathi017@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-block@vger.kernel.org, openrisc@lists.librecores.org,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Jens Axboe <axboe@kernel.dk>,
 Arnd Bergmann <arnd@kernel.org>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Vineet Gupta <vgupta@synopsys.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-security-module@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 johannes@sipsolutions.net,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 16, 2021 at 06:29:40PM +0100, Ard Biesheuvel wrote:
> I think this series is a huge improvement, but it does not solve the
> UB problem completely. As we found, there are open issues in the GCC
> bugzilla regarding assumptions in the compiler that aligned quantities
> either overlap entirely or not at all. (e.g.,
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363)

That isn't open, it was closed as INVALID back in May.

(Naturally) aligned quantities only overlap if they are the same datum.
This follows directly from the definition of (naturally) aligned.  There
is no mystery here.

All unaligned data need to be marked up properly.

> CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is used in many places to
> conditionally emit code that violates C alignment rules.

Most of this is ABI, not C.  It is the ABI that requires certain
alignments.  Ignoring that plain does not work, but even if it would
you will end up with much slower generated code.

> whereas the following pattern makes more sense, I think, and does not
> violate any C rules in the common case:
> 
> #ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
>   // use unaligned accessors, which are cheap or even entirely free
> #else
>   // avoid unaligned accessors, as they are expensive; instead, reorganize
>   // the data so we don't need them (similar to setting NET_IP_ALIGN to 2)
> #endif

Yes, this looks more reasonable.

> The only remaining problem here is reinterpreting a char* pointer to a
> u32*, e.g., for accessing the IP address in an Ethernet frame when
> NET_IP_ALIGN == 2, which could suffer from the same UB problem again,
> as I understand it.

The problem is never casting a pointer to pointer to character type, and
then later back to an appriopriate pointer type.  These things are both
required to work.  The problem always is accessing something as if it
was something of another type, which is not valid C.  This however is
exactly what -fno-strict-aliasing allows, so that works as well.

But this does not have much to do with alignment.


Segher


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
