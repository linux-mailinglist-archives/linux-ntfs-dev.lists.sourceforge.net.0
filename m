Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E845477BAE
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 16 Dec 2021 19:43:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mxvia-0002t5-C5; Thu, 16 Dec 2021 18:43:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david.laight@aculab.com>) id 1mxv8B-0000Gx-Ma
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 18:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W5yuckDhLKtaqup28hkVsc0Lr0xCt52rWn4H2XVzqJ4=; b=Ywbo6827OmJ1Ha/0M/xHoOfOqJ
 fKbNyWHm+LB/k07g7EniBUX9uIvFbl37AUfCukgLWCnFINxSmUqz3LKtzcX+AfPoEzua4YxBs9f3D
 MOsYCYK1IfAIj/nwEHygtAtFFYADf/mD4GKNsV0CvJWV3TVHYra8OI6oipJDSePzsGTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W5yuckDhLKtaqup28hkVsc0Lr0xCt52rWn4H2XVzqJ4=; b=AQYM/N1PXXLuqJ7ajh5MxvU2RI
 Mjb4u9+OyERb4+DwrXLaXPK8VzpDmcsegnHqqedFxgf1LyKRUg3hdA0sfB36z9n0dPBRA2aQTYLmB
 3CEaey60yJUEAM+x6++vTbTG3fmXpGakgaeZa9ruDQbhQBj0TyNNWWx4Lm6/wFdK3qVQ=;
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxv88-0001LB-Sc
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 16 Dec 2021 18:05:27 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-82-kIcKgVwCMVG34NOJowHCJQ-1; Thu, 16 Dec 2021 17:49:29 +0000
X-MC-Unique: kIcKgVwCMVG34NOJowHCJQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.26; Thu, 16 Dec 2021 17:49:27 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.026; Thu, 16 Dec 2021 17:49:27 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Ard Biesheuvel' <ardb@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, Kees Cook <keescook@chromium.org>, "Nick
 Desaulniers" <ndesaulniers@google.com>
Thread-Topic: [PATCH v2 00/13] Unify asm/unaligned.h around struct helper
Thread-Index: AQHX8qKmJnIWdY3H8E+V3sMdrqJgg6w1YkAg
Date: Thu, 16 Dec 2021 17:49:27 +0000
Message-ID: <5a46959bfe654ae9a8a4e1b1adf0db95@AcuMS.aculab.com>
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
In-Reply-To: <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Ard Biesheuvel > Sent: 16 December 2021 17:30 > > Hi
 Arnd,
 > > (replying to an old thread as this came up in the discussion regarding
 > misaligned loads and stored in siphash() when compiled for [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.58.85.151 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.58.85.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mxv88-0001LB-Sc
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
Cc: Rich Felker <dalias@libc.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, James Morris <jmorris@namei.org>,
 Eric Dumazet <edumazet@google.com>, Paul
 Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>, "open
 list:SPARC + UltraSPARC \(sparc/sparc64\)" <sparclinux@vger.kernel.org>,
 Stafford Horne <shorne@gmail.com>, linux-arch <linux-arch@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, X86 ML <x86@kernel.org>, Russell
 King <linux@armlinux.org.uk>, Linus Torvalds <torvalds@linux-foundation.org>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Kalle Valo <kvalo@codeaurora.org>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Jonas Bonn <jonas@southpole.se>, Arnd Bergmann <arnd@arndb.de>,
 Ganapathi Bhat <ganapathi017@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Jens Axboe <axboe@kernel.dk>,
 John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Vineet Gupta <vgupta@synopsys.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "open list:BPF JIT for MIPS \(32-BIT AND
 64-BIT\)" <netdev@vger.kernel.org>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Ard Biesheuvel
> Sent: 16 December 2021 17:30
> 
> Hi Arnd,
> 
> (replying to an old thread as this came up in the discussion regarding
> misaligned loads and stored in siphash() when compiled for ARM
> [f7e5b9bfa6c8820407b64eabc1f29c9a87e8993d])
> 
> On Fri, 14 May 2021 at 12:02, Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > The get_unaligned()/put_unaligned() helpers are traditionally architecture
> > specific, with the two main variants being the "access-ok.h" version
> > that assumes unaligned pointer accesses always work on a particular
> > architecture, and the "le-struct.h" version that casts the data to a
> > byte aligned type before dereferencing, for architectures that cannot
> > always do unaligned accesses in hardware.

I'm pretty sure the compiler is allowed to 'read through' that cast
and still do an aligned access.
It has always been hard to get the compiler to 'forget' about known/expected
alignment - typically trying to stop memcpy() faulting on sparc.
Real function calls are usually required - but LTO may scupper that.

> >
> > Based on the discussion linked below, it appears that the access-ok
> > version is not realiable on any architecture, but the struct version
> > probably has no downsides. This series changes the code to use the
> > same implementation on all architectures, addressing the few exceptions
> > separately.
> >
> > I've included this version in the asm-generic tree for 5.14 already,
> > addressing the few issues that were pointed out in the RFC. If there
> > are any remaining problems, I hope those can be addressed as follow-up
> > patches.
> >
> 
> I think this series is a huge improvement, but it does not solve the
> UB problem completely. As we found, there are open issues in the GCC
> bugzilla regarding assumptions in the compiler that aligned quantities
> either overlap entirely or not at all. (e.g.,
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363)

I think we can stop the compiler merging unaligned requests by adding a byte-sized
memory barrier for the base address before and after the access.
That should still support complex addressing modes (esp on x86).

Another option is to do the misaligned access from within an asm statement.
While architecture dependant, it only really depends on the syntax of the ld/st
instruction.
The compiler can't merge those because it doesn't know whether the data is
'frobbed' before/after the memory access.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
