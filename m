Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34996454B37
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Nov 2021 17:42:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnO17-00086J-6I; Wed, 17 Nov 2021 16:42:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mnGFD-000366-85
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 08:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pLki4VXVNEgH7BpAr7thCy6liKqtc8dZxgXibG/LDtU=; b=gM1t1bqlEEE9lbamMJevzdI/6p
 GhyYpRkwfoiqiJURu3PuFxf3nbdVfcVZAwtGX9v9p0+yj5M8zTsY4NEMKSeYluSUH7nGPsFALdUY7
 4lwSr1XSqvLEYuUCXtgkAw5KjNPJ4IMMOh04vA6/LAi+oouqUVgnzB2mCwMdcVi22qNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pLki4VXVNEgH7BpAr7thCy6liKqtc8dZxgXibG/LDtU=; b=aNzHhvLtOG9GARFna1cKJbldQ0
 4YrzbCrb9TEZpV6RjlvN1a0TmKtn1grwRgcxzqRHrQ3S7eVB99WRSFQlcFBzPpvh1adXXQKMHPMHr
 sM/yqkZmRyGiHTEAwFk9uikPWEAgvyuYEHCUABfTq3KdxOzu1RyhIFgw2voc1d8WTHgA=;
Received: from mail-ua1-f54.google.com ([209.85.222.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mnGFC-0003Uo-Ls
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 08:24:40 +0000
Received: by mail-ua1-f54.google.com with SMTP id o1so4167876uap.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 00:24:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pLki4VXVNEgH7BpAr7thCy6liKqtc8dZxgXibG/LDtU=;
 b=c8khh9HI5LYVQl8xrm8OvvfLot/Onz+tasfIDN8TV+AWV2tW4s9+Hsqpc3TfO6oYLg
 boy0P3nMQUlhL/EcxkjBA+z1N/p2Z5MOo4FzEqfZ/1zwa79ckn9rwf3uzpd+FrKJ67pu
 hOIW226MAqLRtVZda6fgllKhFZmdRoKoSPX8gOAFM7UQWg0Lg0iFjBMWMZh0HrwfIiCG
 nlWa/Qj30NkWf2rx5jwrvmod/YyXacsz9etBhe9WTGgoP5HL/XTe+NcGb1pnrqZYsKTu
 yvEF6oR8rI+uzivvKRTJ+jxj3htZFCWBwVKI02iTPLoSsp/ZIcfs+/E2dUw2jGkOO23/
 CTFw==
X-Gm-Message-State: AOAM533vDXFSn/manynUReORh9H1pEYcaSu4GFjWEyyubH7abuLtBYeV
 OgpORkKQUlf67y6ls3gViuPiF0NKitolfA==
X-Google-Smtp-Source: ABdhPJxvZ6zaAhRLDifgzsWFJ4beCYu/fO792wvJZ4riUXr0GBXUuMqcLg6uimB3M98czajgJsf7XQ==
X-Received: by 2002:a67:f1d8:: with SMTP id v24mr65427047vsm.8.1637137465499; 
 Wed, 17 Nov 2021 00:24:25 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com.
 [209.85.222.50])
 by smtp.gmail.com with ESMTPSA id m15sm11428644vkl.40.2021.11.17.00.24.24
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 00:24:24 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id i6so4127398uae.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Nov 2021 00:24:24 -0800 (PST)
X-Received: by 2002:a9f:2431:: with SMTP id 46mr20823663uaq.114.1637137464301; 
 Wed, 17 Nov 2021 00:24:24 -0800 (PST)
MIME-Version: 1.0
References: <20211115155105.3797527-1-geert@linux-m68k.org>
 <CAMuHMdUCsyUxaEf1Lz7+jMnur4ECwK+JoXQqmOCkRKqXdb1hTQ@mail.gmail.com>
 <fcdead1c-2e26-b8ca-9914-4b3718d8f6d4@gmx.de>
 <480CE37B-FE60-44EE-B9D2-59A88FDFE809@fb.com>
 <78b2d093-e06c-ba04-9890-69f948bfb937@infradead.org>
 <B57193D6-1FD4-45D3-8045-8D2DE691E24E@fb.com>
In-Reply-To: <B57193D6-1FD4-45D3-8045-8D2DE691E24E@fb.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Nov 2021 09:24:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWgGz5FSidaGpp8YRRSnJfwdP4-wOkXdVx+mydXnMAXHQ@mail.gmail.com>
Message-ID: <CAMuHMdWgGz5FSidaGpp8YRRSnJfwdP4-wOkXdVx+mydXnMAXHQ@mail.gmail.com>
To: Nick Terrell <terrelln@fb.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Nick, On Wed, Nov 17, 2021 at 3:20 AM Nick Terrell <terrelln@fb.com>
    wrote: > > On Nov 16, 2021, at 6:05 PM, Randy Dunlap <rdunlap@infradead.org>
    wrote: > > On 11/16/21 5:59 PM, Nick Terrell wrote: > >> Iâ€ [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.54 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geert.uytterhoeven[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1mnGFC-0003Uo-Ls
X-Mailman-Approved-At: Wed, 17 Nov 2021 16:42:35 +0000
Subject: Re: [Linux-NTFS-Dev] Build regressions/improvements in v5.16-rc1
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
Cc: Hector Martin <marcan@marcan.st>, Peter Zijlstra <peterz@infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>, Stan Skowronek <stan@corellium.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Helge Deller <deller@gmx.de>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joey Gouly <joey.gouly@arm.com>,
 =?UTF-8?Q?Andr=C3=A9_Almeida?= <andrealmeid@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Parisc List <linux-parisc@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGkgTmljaywKCk9uIFdlZCwgTm92IDE3LCAyMDIxIGF0IDM6MjAgQU0gTmljayBUZXJyZWxsIDx0
ZXJyZWxsbkBmYi5jb20+IHdyb3RlOgo+ID4gT24gTm92IDE2LCAyMDIxLCBhdCA2OjA1IFBNLCBS
YW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPiBPbiAxMS8xNi8y
MSA1OjU5IFBNLCBOaWNrIFRlcnJlbGwgd3JvdGU6Cj4gPj4gSeKAmWxsIHNlbmQgdGhlIFBSIHRv
IExpbnVzIHRvbW9ycm93LiBJ4oCZdmUgYmVlbiBpbmZvcm1lZCB0aGF0IGl0Cj4gPj4gaXNuJ3Qg
c3RyaWN0bHkgbmVjZXNzYXJ5IHRvIHNlbmQgdGhlIHBhdGNoZXMgdG8gdGhlIG1haWxpbmcgbGlz
dAo+ID4+IGZvciBidWcgZml4ZXMsIGJ1dCBpdHMgYWxyZWFkeSBkb25lLCBzbyBJ4oCZbGwgd2Fp
dCBhbmQgc2VlIGlmIHRoZXJlCj4gPj4gaXMgYW55IGZlZWRiYWNrLgo+ID4KPiA+IElNTyBzZXZl
cmFsIChvciBtYW55IG1vcmUpIHBlb3BsZSB3b3VsZCBkaXNhZ3JlZSB3aXRoIHRoYXQuCj4gPgo+
ID4gInN0cmljdGx5PyIgIE9LLCBpdCdzIHByb2JhYmx5IHBvc3NpYmxlIHRoYXQgYWxtb3N0IGFu
eSBwYXRjaAo+ID4gY291bGQgYmUgbWVyZ2VkIHdpdGhvdXQgYmVpbmcgb24gYSBtYWlsaW5nIGxp
c3QsIGJ1dCBpdCdzIG5vdAo+ID4gZGVzaXJhYmxlIChleGNlcHQgaW4gdGhlIGNhc2Ugb2YgInNl
Y3VyaXR5IiBwYXRjaGVzKS4KPgo+IEdvb2QgdG8ga25vdyEgVGhhbmtzIGZvciB0aGUgYWR2aWNl
LCBJIHdhc27igJl0IHJlYWxseSBzdXJlIHdoYXQKPiB0aGUgYmVzdCBwcmFjdGljZSBpcyBmb3Ig
c2VuZGluZyBwYXRjaGVzIHRvIHlvdXIgb3duIHRyZWUsIGFzIEkKPiBkaWRuJ3Qgc2VlIGFueXRo
aW5nIGFib3V0IGl0IGluIHRoZSBtYWludGFpbmVyIGd1aWRlLgoKQWxsIHBhdGNoZXMgbXVzdCBi
ZSBzZW50IHRvIHB1YmxpYyBtYWlsaW5nIGxpc3RzIGZvciByZXZpZXcuCllvdSBtaWdodCBnZXQg
YXdheSB3aXRoIG5vdCBkb2luZyB0aGF0IGZvciBhIHNpbXBsZSBhbmQgdHJpdmlhbCBmaXgsCmJ1
dCBiZSBwcmVwYXJlZCB0byBlbmQgdXAgb24gcGVvcGxlJ3MgInNwZWNpYWwiIGxpc3RzIGlmIHlv
dSBkaWQgZ2V0Cml0IHdyb25nLgoKV2UgYXJlIExlZ2lvbi4gV2UgZG8gbm90IGZvcmdpdmUuIFdl
IGRvIG5vdCBmb3JnZXQgOy0pCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAg
ICAgICAgIEdlZXJ0CgotLQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExp
bnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252
ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4g
QnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1l
ciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAtLSBMaW51cyBUb3J2YWxkcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vbGludXgtbnRmcy1kZXYK
