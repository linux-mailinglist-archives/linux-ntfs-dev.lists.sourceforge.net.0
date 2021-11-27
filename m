Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F174601E6
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr63V-0005Kx-AG; Sat, 27 Nov 2021 22:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mr1qC-000478-EV
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 17:50:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IvT9A5PgUmmsdPPgmPRktfoLrELQ59r0exofkW/Ii+s=; b=hVMYojclUZt9mrEytTFATUGJw8
 xFR16N9bevUGSLimcIzDNAOpsU/JeAsjupkVupV+qUls4MzJMAvq/TR0pl2oIL1eFLbaf3RCE3Nij
 cLMN7NSzK64AdGxwaVOyfnNMZO1j7pkdfVpC/itX0/CHTYC0RjbguUrjI1rSL/IBxMKU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IvT9A5PgUmmsdPPgmPRktfoLrELQ59r0exofkW/Ii+s=; b=E93ajZZwK/HXVIHcPbZWz0fDji
 1ksLVINZdzeh2Rc/GXpCXOQwMI4QJljOf+fFjHntaOyscbcdDbJ2MRSJEVJs4YhdmDC8lOAExZv3X
 vsAsPyAmGt3CdIOHXe1fLA+nS/twdZ7Ontthc9lSY9eE/U04zaVfP/VnBQ3UM+3Y4iYQ=;
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mr1q4-0008EB-3c
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 17:50:25 +0000
Received: by mail-ed1-f54.google.com with SMTP id e3so52676448edu.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 09:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IvT9A5PgUmmsdPPgmPRktfoLrELQ59r0exofkW/Ii+s=;
 b=NG/FrhUNB8KbyEz2TDL042nDzHzH+VadLD01K1N9pZwyXL8vXfmRFKJMa+97iUJZwW
 KBrgbnqr3+j89Q2pkbY5D0aL+tGvXnmERU/bcRrMS6vcBUu2Sb1eW8UgOn5IAYS51JVg
 i9UpH4LAFB4YhLF1HuYB+dFSkyRJ71mwJ6DUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IvT9A5PgUmmsdPPgmPRktfoLrELQ59r0exofkW/Ii+s=;
 b=mFDS7bsh5DHMo/OQj2lg69Pv9pxODFTe18iuCK5m7lArnozrWpK739aY9G6YXe70YO
 GHTKGpkqdvSMnU088NIf+4hdVdX1hBd7qrcR2ZQtMRdxzRYUZsng2s0uw7Bi59TQBFhz
 V05ZO1MyogMjz06wFdgOaNn61rbYNx9/jDQTCdCgCIIF74jCIB36FOAlxj8hr3IK2uBP
 V08MysNzw+0OFkuwxuykZ45ctIfpani3f0c9H6tIXWxGeraRfJV1DZrGoes4unelV4R7
 8SVOHBerAtQULvQeXo1JFcfilOhfNF3nzrN7SflveVuXb6JQLoHK7NFQk6kXPrO9JSmj
 pLnA==
X-Gm-Message-State: AOAM531Z/hdm4VFZKSQ38QzMPP4o+rCR8VLTwgIhKoj0T/iB/YS2VjPT
 Ghi8a3wGD7UT7/cd1FJDBprALgZjwvc7Vzuy
X-Google-Smtp-Source: ABdhPJwKnvV4cGxUv1IzpVcmrYZ4qh+2fwOm9+MeFYRQAmE6D74DDmxr5gtsnyBV/EYW2TnCkmLiZg==
X-Received: by 2002:a17:907:2bd0:: with SMTP id
 gv16mr44881239ejc.121.1638035409506; 
 Sat, 27 Nov 2021 09:50:09 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id de15sm4707792ejc.70.2021.11.27.09.50.07
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Nov 2021 09:50:08 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id d24so26260894wra.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 09:50:07 -0800 (PST)
X-Received: by 2002:adf:e5c7:: with SMTP id a7mr22736016wrn.318.1638035407409; 
 Sat, 27 Nov 2021 09:50:07 -0800 (PST)
MIME-Version: 1.0
References: <20211127154442.3676290-1-linux@roeck-us.net>
In-Reply-To: <20211127154442.3676290-1-linux@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 27 Nov 2021 09:49:51 -0800
X-Gmail-Original-Message-ID: <CAHk-=wh9g5Mu9V=dsQLkfmCZ-O7zjvhE6F=-42BbQuis2qWEpg@mail.gmail.com>
Message-ID: <CAHk-=wh9g5Mu9V=dsQLkfmCZ-O7zjvhE6F=-42BbQuis2qWEpg@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 27,
 2021 at 7:44 AM Guenter Roeck <linux@roeck-us.net>
 wrote: > > This is the third attempt to fix the following build error. Thanks, 
 looks good to me. Should I apply the patches directly, or were you planning
 on sending a pull request when everybody was happy with it? 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.54 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mr1q4-0008EB-3c
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:20:23 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v3 0/3] Limit NTFS_RW to page sizes
 smaller than 64k
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-ntfs-dev@lists.sourceforge.net, Netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>,
 "David S . Miller" <davem@davemloft.net>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, Nov 27, 2021 at 7:44 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> This is the third attempt to fix the following build error.

Thanks, looks good to me.

Should I apply the patches directly, or were you planning on sending a
pull request when everybody was happy with it?

           Linus


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
