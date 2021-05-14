Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6860C3813E6
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 15 May 2021 00:48:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lhgbp-0007So-4M; Fri, 14 May 2021 22:48:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lhbgc-00072Z-Cv
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 17:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3bmbAftPboaY7hu+DnMgt2b6hH50EmPqKJHrC7bAGn8=; b=AeKZDTBakPLZ1O9rSda4PxJJ0J
 WfZv76eZNsCz5zWKzChVvTxE+Sng0VH0+R2LGqI++/Fk0//Ud1p9U1Ca5KszNMzMQKX1KSR3vIx1T
 qq98qOxruIlPZzMUYQ/zowCwtZ5zgDdeiGsJNKru3mrjEHrLR+gfsouLzq8BibOn+MXI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3bmbAftPboaY7hu+DnMgt2b6hH50EmPqKJHrC7bAGn8=; b=PPqqe8tQaAmUdoTlCxhwKsZ8xC
 q5Pnrw+HK45xP7zfSL3vONuYkOmP8dinqpkSgXO+GAdXrKvTk9bl23q9ROyKl1vqvNUpSlvG++Zs2
 63sOPd4Q20i3bG99zdtAq4nsB8ObCO1+qQVhSmtNtqipp1+XIOEvTN3VcQU/zWhlaAiU=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lhbgU-0008Rc-Og
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 17:33:18 +0000
Received: by mail-lf1-f46.google.com with SMTP id i22so1139628lfl.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 14 May 2021 10:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3bmbAftPboaY7hu+DnMgt2b6hH50EmPqKJHrC7bAGn8=;
 b=OCUpNcjguSpqlmqGqLclnsNCOhgzU3pBtJ+0aWvCc2SR59QNIHWTyn2iHNnFIXoHb/
 IlrJnYgxa3QKa7TD5DPjuhh0hv9dsnnG2SJC44eepw5A/YU6NsZQR/5smJrlWciM7Uz7
 oY/UTgSqeb9/fYqELWpyA+6END7cpdJzA1bkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3bmbAftPboaY7hu+DnMgt2b6hH50EmPqKJHrC7bAGn8=;
 b=tqBn8mAWozuJRLG9JhRo9Ty0H6Staua6RP7rAGTZplttsTprrnwGxNGBzau54qNaDB
 NZ66YG2nXlSE/KZqjhKSyEyG/MDf8Ty29dN6Sj0ZQIRZ1G2qVbhTmkiF56dGh0NKCeHW
 nHX48FGKDfaKn9TFcPwNU7oUp/xZOlCWTAV1OHn2QZhfb4OB2daS4+yVmkYT9WIZ7D3v
 wThuSibndY09dmY5hgD2ZUslwOP+wb/07v6LOplm1uD/UC75Cl99NkoKlq7lssinDc+r
 6fsoNfzuvSpWFgoUgCeEMo5QOR0eUHk2be9kas82SpT5HViioAs9fKO1klYF2oupnEVF
 xUJw==
X-Gm-Message-State: AOAM5306UaxshI3GDCaR1VWoSp0Z+jBd8WU1HH7faD1Gs9OhdS4oZ8vH
 tkPIuoaLkSr7YboNrnF2nZmHpsvea92u2OIrivU=
X-Google-Smtp-Source: ABdhPJxWKRJo5D6GgJL+8nhnk5N278q/K63ZqUafDaIa7sux41LaTG8uhElLFRW7hbVDbhpIJZTrpg==
X-Received: by 2002:ac2:5f5c:: with SMTP id 28mr790923lfz.609.1621013584794;
 Fri, 14 May 2021 10:33:04 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com.
 [209.85.167.43])
 by smtp.gmail.com with ESMTPSA id j8sm853877lfg.250.2021.05.14.10.33.03
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 10:33:04 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id a2so23103436lfc.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 14 May 2021 10:33:03 -0700 (PDT)
X-Received: by 2002:a2e:9251:: with SMTP id v17mr38807472ljg.507.1621013573543; 
 Fri, 14 May 2021 10:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210514100106.3404011-1-arnd@kernel.org>
In-Reply-To: <20210514100106.3404011-1-arnd@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 14 May 2021 10:32:37 -0700
X-Gmail-Original-Message-ID: <CAHk-=whGObOKruA_bU3aPGZfoDqZM1_9wBkwREp0H0FgR-90uQ@mail.gmail.com>
Message-ID: <CAHk-=whGObOKruA_bU3aPGZfoDqZM1_9wBkwREp0H0FgR-90uQ@mail.gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.46 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lhbgU-0008Rc-Og
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
 linux-m68k <linux-m68k@lists.linux-m68k.org>, openrisc@lists.librecores.org,
 Borislav Petkov <bp@alien8.de>, Stafford Horne <shorne@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Jens Axboe <axboe@kernel.dk>,
 John Johansen <john.johansen@canonical.com>,
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

On Fri, May 14, 2021 at 3:02 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> I've included this version in the asm-generic tree for 5.14 already,
> addressing the few issues that were pointed out in the RFC. If there
> are any remaining problems, I hope those can be addressed as follow-up
> patches.

This continues to look great to me, and now has the even simpler
remaining implementation.

I'd be tempted to just pull it in for 5.13, but I guess we don't
actually have any _outstanding_ bug in this area (the bug was in our
zlib code, required -O3 to trigger, has been fixed now, and the biggy
case didn't even use "get_unaligned()").

So I guess your 5.14 timing is the right thing to do.

        Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
