Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A7A47916B
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 17 Dec 2021 17:26:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1myG3o-0007BH-Dj; Fri, 17 Dec 2021 16:26:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <david.laight@aculab.com>) id 1myChb-000860-R8
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 17 Dec 2021 12:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U3QYfkqXjS5mW6jMqM/fS+fyqnJtUJK5av1XA1zt4Tg=; b=EvziQbIgXPAVkuXAHksVxN+xzk
 mgdn/kNffeakLabDRxs4ZM8n7ljgJAUtWb8mtbUoeaKF9qbqU4wPPlqhFfThLPPSTUKkgqlyBjsTH
 Etge5zOU3Fv8FbJJTr00QK8CZ0O/CCUz+teATU7ZrpZPXkWggi2bUDE9wrdJMpRhuFKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U3QYfkqXjS5mW6jMqM/fS+fyqnJtUJK5av1XA1zt4Tg=; b=dDePmZRl0nwBKhdbdaXQPszCB0
 FHqLSQlLeVgVpevembJ6/1iRUb4UFNKIVNKC/s4WJTsmo8sXAZV8UIgYQnUrLz3mlHa40KTnRPNdI
 K4g6W3N5KaVKzr6kDJhENWxX8BDekgnP/K0ei1YesbZDFXM9L3p8XXq9C9WXMmJGKORM=;
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.86.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myChX-0007r9-7m
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 17 Dec 2021 12:51:11 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-157-DNhCqrEmMiq0pBhWJMMNWw-1; Fri, 17 Dec 2021 12:34:55 +0000
X-MC-Unique: DNhCqrEmMiq0pBhWJMMNWw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.26; Fri, 17 Dec 2021 12:34:53 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.026; Fri, 17 Dec 2021 12:34:53 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Segher Boessenkool' <segher@kernel.crashing.org>, Ard Biesheuvel
 <ardb@kernel.org>
Thread-Topic: [PATCH v2 00/13] Unify asm/unaligned.h around struct helper
Thread-Index: AQHX8q6cJnIWdY3H8E+V3sMdrqJgg6w2m38Q
Date: Fri, 17 Dec 2021 12:34:53 +0000
Message-ID: <698cfc52a0d441f7b9f29424be82b2e8@AcuMS.aculab.com>
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAMj1kXG0CNomZ0aXxh_4094fT+g4bVWFCkrd7QwgTQgiqoxMWA@mail.gmail.com>
 <20211216185620.GP614@gate.crashing.org>
In-Reply-To: <20211216185620.GP614@gate.crashing.org>
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
 Content preview: From: Segher Boessenkool > Sent: 16 December 2021 18:56 ...
 > > The only remaining problem here is reinterpreting a char* pointer to
 a > > u32*, e.g., for accessing the IP address in an Ethernet frame [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.58.86.151 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.58.86.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1myChX-0007r9-7m
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
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>, "Richard Russon
 \(FlatCap\)" <ldm@flatcap.org>, linux-m68k <linux-m68k@vger.kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, "open list:BPF JIT for MIPS \(32-BIT AND
 64-BIT\)" <netdev@vger.kernel.org>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, "open
 list:SPARC + UltraSPARC \(sparc/sparc64\)" <sparclinux@vger.kernel.org>, Thomas
 Gleixner <tglx@linutronix.de>, linux-arch <linux-arch@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, X86 ML <x86@kernel.org>,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Jonas Bonn <jonas@southpole.se>, Kees
 Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Ganapathi Bhat <ganapathi017@gmail.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND
 64-BIT\)" <linuxppc-dev@lists.ozlabs.org>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Borislav Petkov <bp@alien8.de>, Stafford Horne <shorne@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Jens Axboe <axboe@kernel.dk>, Arnd
 Bergmann <arnd@kernel.org>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Yoshinori Sato <ysato@users.osdn.me>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>,
 "johannes@sipsolutions.net" <johannes@sipsolutions.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Segher Boessenkool
> Sent: 16 December 2021 18:56
...
> > The only remaining problem here is reinterpreting a char* pointer to a
> > u32*, e.g., for accessing the IP address in an Ethernet frame when
> > NET_IP_ALIGN == 2, which could suffer from the same UB problem again,
> > as I understand it.
> 
> The problem is never casting a pointer to pointer to character type, and
> then later back to an appriopriate pointer type.
> These things are both required to work.

I think that is true of 'void *', not 'char *'.
'char' is special in that 'strict aliasing' doesn't apply to it.
(Which is actually a pain sometimes.)

> The problem always is accessing something as if it
> was something of another type, which is not valid C.  This however is
> exactly what -fno-strict-aliasing allows, so that works as well.

IIRC the C language only allows you to have pointers to valid data items.
(Since they can only be generated by the & operator on a valid item.)
Indirecting any other pointer is probably UB!

This (sort of) allows the compiler to 'look through' casts to find
what the actual type is (or might be).
It can then use that information to make optimisation choices.
This has caused grief with memcpy() calls that are trying to copy
a structure that the coder knows is misaligned to an aligned buffer.

So while *(unaligned_ptr *)char_ptr probably has to work.
If the compiler can see *(unaligned_ptr *)(char *)int_ptr it can
assume the alignment of the 'int_ptr' and do a single aligned access.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
