Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA2E3813EC
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 15 May 2021 00:48:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lhgbp-0007TC-Ai; Fri, 14 May 2021 22:48:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lhejV-00074R-Lb
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 20:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zj/dlxgrTFi/afXdqvpoKnC0fO1FIFdLyxVrDXldBSs=; b=lu8xAsaYwWaI3Zca0mF8PvtzKZ
 Le8JQQS2XlsdqiB5y9mke+BOfVkiA2XUQcOv7x2fR2l21CM2rm6sRjcez6mFxxq1/4UD9hQgeCPhr
 VUIiLi/SEZx4bxX+q+V07XlkjqK4SnT8NBvY3P87XLmMCldWQSo49QUmAEK7mBMcWkfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zj/dlxgrTFi/afXdqvpoKnC0fO1FIFdLyxVrDXldBSs=; b=GELGCFcp0clCxcob0e/sWARhQU
 lPBzkG4ME6gFTDW6ayyA0POqquYThN7xzKhyB1kS8IYHtwxM6Ws3+WaBzZVzP7W3yVT+PLkVCu7fx
 m65Pak/vzZ4mTLfgpkWgYxUlS8KU4tI7omZlb0OeD+gugzy1UzN7L7a/wVd2yTaqZ0qQ=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lhejR-008dbT-CP
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 20:48:30 +0000
Received: by mail-lf1-f44.google.com with SMTP id m11so218686lfg.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 14 May 2021 13:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zj/dlxgrTFi/afXdqvpoKnC0fO1FIFdLyxVrDXldBSs=;
 b=YFKY9Xahh+37BAr6aWqyWYu1Mb7APXH6ODm/OL23XmTx5cHPfE5nvsgH3V9cI44nS0
 EW6HUNU9PMYQx+djBq7ws8ietkyGay3lY9V3u/1Wuw/v3Pr2ScmDgx0fOcF6ZkLkBuPr
 cN3FjgtrPRUQDfA1h2PJ+U+sspjArlX7AElF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zj/dlxgrTFi/afXdqvpoKnC0fO1FIFdLyxVrDXldBSs=;
 b=TThcOoHTkzUMJIpDxGeH+YpC3hhylAGSV2G4JX9qvypxLKVe/dVgUcjmYz0NeAkLjM
 h9P++iw945GEn09Nzy5kg6L6tyO/fi2l92P4vZ4jBRFZEfAzxtsxRjiqfD3imuX15h7p
 oIEYN0IkuEoEjrT/qkLByqD0Sw6khTTQtBI4Vk7HAf6KGbxxXVG3nqrEkfhHAwsPtMeV
 y6zhtbusYHO66CG+5WnWfexRHb/i0UMvuhacxKw+KBZBx6a7LhrPrp3M8zEIvKyN31ib
 QeEDPW3BhVPbKvK2O81Olc4UkXSrgLDwYQjlL1HaPb/Us41nXawG1IQjuTjXyg06JNgZ
 75PA==
X-Gm-Message-State: AOAM531e5P1BilCRTpKID0Og3uxK+58Xg+iNeonJrVXnfR9f+2R8lf4H
 gKgYjT87cdlCXJNfOLSHMb2ljdrXMDESMGPAGUU=
X-Google-Smtp-Source: ABdhPJxpBfFhduGCE0FOptu/lc/Uec4Hh48u35iHG6IsaodKURL5ZbyC6higMSLYR4xZGDqJJrONhQ==
X-Received: by 2002:a17:907:3f16:: with SMTP id
 hq22mr9438284ejc.20.1621023620232; 
 Fri, 14 May 2021 13:20:20 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43])
 by smtp.gmail.com with ESMTPSA id b25sm5354135edv.9.2021.05.14.13.20.19
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 13:20:19 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id v5so24925575edc.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 14 May 2021 13:20:19 -0700 (PDT)
X-Received: by 2002:a05:6512:374b:: with SMTP id
 a11mr32730248lfs.377.1621023609037; 
 Fri, 14 May 2021 13:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210514100106.3404011-1-arnd@kernel.org>
 <CAHk-=whGObOKruA_bU3aPGZfoDqZM1_9wBkwREp0H0FgR-90uQ@mail.gmail.com>
 <2408c893-4ae7-4f53-f58c-497c91f5b034@synopsys.com>
 <CAHk-=wih8UHDwJ8x6m-p0PQ7o4S4gOBwGNs=w=q10GNY7A-70w@mail.gmail.com>
 <14016937-b9c3-c131-db18-f97081806c7f@synopsys.com>
In-Reply-To: <14016937-b9c3-c131-db18-f97081806c7f@synopsys.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 14 May 2021 13:19:53 -0700
X-Gmail-Original-Message-ID: <CAHk-=whdR4OLJjwaU_nJhmS4n6ruGK4XFuLxA7zEOoCV7U=QLA@mail.gmail.com>
Message-ID: <CAHk-=whdR4OLJjwaU_nJhmS4n6ruGK4XFuLxA7zEOoCV7U=QLA@mail.gmail.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.44 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: synopsys.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lhejR-008dbT-CP
X-Mailman-Approved-At: Fri, 14 May 2021 22:48:39 +0000
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
 Jonas Bonn <jonas@southpole.se>, Arnd Bergmann <arnd@arndb.de>,
 Ganapathi Bhat <ganapathi017@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-block <linux-block@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Borislav Petkov <bp@alien8.de>, Stafford Horne <shorne@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Jens Axboe <axboe@kernel.dk>,
 Arnd Bergmann <arnd@kernel.org>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 LSM List <linux-security-module@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, May 14, 2021 at 12:45 PM Vineet Gupta
<Vineet.Gupta1@synopsys.com> wrote:
>
> Well, not really, the issue manifested in ARC O3 testing, but I showed
> the problem existed for arm64 gcc too.

.. but not with a supported kernel configuration.

> > So in fact it's not even queued up for 5.14 due to this all, I just dropped it.
>
> But Why.

I just didn't have time to deal with it during the merge window. If
you keep it alive, that's all fine and good.

                Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
