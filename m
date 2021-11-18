Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 411354568B8
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Nov 2021 04:44:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnuom-0002ke-VP; Fri, 19 Nov 2021 03:44:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mnqWL-0004CW-M8
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 23:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pmCu9COc1pWaYRUVj52qJ3fL6u90fsV4q8bFRcC0CE4=; b=JpWmRxBlxZvAz8iVTAUCKuvCSZ
 pqd3JpzcO3thyPwjZ+bypxkt8MD3jh3VPC7DE3IFoPhljSKrrU/P/3IBDZ5dvw7F73OIVjyCWCuzF
 Lb3rhKG/PRSiSD41CKMHUrCsqmP4oMRWga1LAvA3IYGBfGImKnrhk3unIxLp7qygmm1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pmCu9COc1pWaYRUVj52qJ3fL6u90fsV4q8bFRcC0CE4=; b=KQdmW/TvqHexbRDJU71MVYH3KZ
 y324qg7ZqseoBTX4gaAzlMcjHojf0Gr5T221bjGYLq41rYp+YVuh9krqY1JoA0+iYUeMM0XiiweVY
 FwJQpBYBSmtwxIqG/gsXBB37XSYStOKn6bu4OrFBEQcb3GC72YlNrFnJGrGSNWVOW6S4=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnqWD-0002qt-87
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Nov 2021 23:08:45 +0000
Received: by mail-oi1-f172.google.com with SMTP id r26so17777297oiw.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 18 Nov 2021 15:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pmCu9COc1pWaYRUVj52qJ3fL6u90fsV4q8bFRcC0CE4=;
 b=LGy5ljPFT5L6X3AraG7oxFPAZC7+PhKyE4d+l67ld6wBZ6fUxye4MFWSwBQYAjVBki
 PJVHyLdrtienL7hcilNDEBSjWAej1HqgBEuDa+XXvT4FQzd51uNCke0X1xAoB4q7s2Tc
 RiXHmpFeBV9mJYtmlpuJoQmyoSeGpnrlduYlRSw3reKFoGKGKA6aDlnJBTkXfv7Erfu+
 T8UbmO6EaoLRVwvl+278FgITNN76UMZ56v8wYv4zuLSGS6a5wi6/RGuG3Xd8tppTAgdC
 3sHB88LkV4lcSG0xRz0ukAE5UvrZ1slOffilL9+h/+fhSNi3hdYO3dr4fiULHxBQ0oez
 7HOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=pmCu9COc1pWaYRUVj52qJ3fL6u90fsV4q8bFRcC0CE4=;
 b=NQlaOfn2P1ONSzA0MYkWY3MsgdIk0MIQXq7gYiDwbBcEiI8hYCqPgOK8dczTpGaU1S
 Qd/tfEMSQ7lWWbbTDSYmvzHU+sWuGKuXcXN5eJ9Wt9SJu9SvAEaO9VqgLvBD1EE+wlPU
 uqTVIxUgIWOyZ7OLNottSGHuW3ioERtmZMPsOGzPhuf7A7NvHiPaZ34ASAx/xA/vS5pb
 S1hXA7x8rbkqXkGRJobKKLIA5pJ4XYiSMWM7/jxDwDFcomJiTLFhP25znkQmvu7uDrEf
 Po+9eOzGgxytTeDpqFf5V57LByLUxDpeOMDON2qQ6KoTWvHbH1oZwGjU1dHuWyWs0c11
 tnOg==
X-Gm-Message-State: AOAM532OecX3PWi5tN1gXWOFSzja0atEkr6fJdzV23tB7iYEgrxa7ity
 kIEWSXZutYtyrm2Pg4vKxxk=
X-Google-Smtp-Source: ABdhPJy8D9/79xRpKX9aS7CibK+UdACaHPV8juKUjfXDtID186geF/p9qhOWZK9TQvgA0VgT4nsN8A==
X-Received: by 2002:a05:6808:2181:: with SMTP id
 be1mr606253oib.147.1637276909061; 
 Thu, 18 Nov 2021 15:08:29 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 bi20sm297318oib.29.2021.11.18.15.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 15:08:28 -0800 (PST)
Date: Thu, 18 Nov 2021 15:08:26 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20211118230826.GA3427600@roeck-us.net>
References: <CAHk-=whca4JrEExUZCf+iGhP+mV-_D2uyqiFHnaYqnfCOKyEVg@mail.gmail.com>
 <652edea7-28a0-70d9-c63f-d910b5942454@roeck-us.net>
 <87a6i4miwu.fsf@mpe.ellerman.id.au>
 <CAMuHMdVrpQJKKzpxrKKCCD_2+DzAvgFW+jsjPdR9JhBYeRgvNw@mail.gmail.com>
 <8D79B547-D606-4975-A79A-AEA65684F3A0@tuxera.com>
 <CAHk-=wgvzH=BaFg+kiWk1DXGLNELSmPS2VWcgSSmW5Y6vz-v_A@mail.gmail.com>
 <E1EED1BE-A0F0-4EFA-86A6-CF721E194CDC@tuxera.com>
 <CAHk-=wjoQYuOfhsiPXUvFbUbSd5iHmmoRHMP+zv+bzHKkWqAyA@mail.gmail.com>
 <20211118212349.GA3424901@roeck-us.net>
 <CAHk-=wiNX2vr4JA=d5xr_2iwp+vSD62rze3gsxh5NwbiRuKbQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wiNX2vr4JA=d5xr_2iwp+vSD62rze3gsxh5NwbiRuKbQQ@mail.gmail.com>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 18, 2021 at 02:34:51PM -0800,
 Linus Torvalds wrote:
 > On Thu, Nov 18, 2021 at 1:23 PM Guenter Roeck <linux@roeck-us.net> wrote:
 > > > > Like this ? > > Ugh. Yes. Like that. > > But now I h [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mnqWD-0002qt-87
X-Mailman-Approved-At: Fri, 19 Nov 2021 03:44:03 +0000
Subject: Re: [Linux-NTFS-Dev] Linux 5.16-rc1
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Michael Ellerman <mpe@ellerman.id.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Nov 18, 2021 at 02:34:51PM -0800, Linus Torvalds wrote:
> On Thu, Nov 18, 2021 at 1:23 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > Like this ?
> 
> Ugh. Yes. Like that.
> 
> But now I have to go dig my eyes out with a rusty spoon and try to
> forget I ever saw that thing.
> 
> Because a thing of beauty it ain't.
> 
Hah.

> I would still hope somebody comes up with something prettier.
> 

It doesn't really have to be that fancy, but I suspect we'll end up
with something along that line. Kconfig doesn't support arithmetik,
so

config PAGE_SIZE
	int
	default 1 << PAGE_SHIFT

doesn't work, requiring the complex defaults.

Also,

	depends on !PAGE_SIZE || PAGE_SIZE < xxx

doesn't work either, making something like HAVE_PAGE_SIZE mandatory
unless PAGE_SIZE is made available for all architectures, which seems
excessive.

Of course,
	depends on !PPC
would be the simple solution.

Guenter


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
