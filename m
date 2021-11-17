Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84719453E89
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Nov 2021 03:43:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnAus-0001R6-DE; Wed, 17 Nov 2021 02:43:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rdunlap@infradead.org>) id 1mnAKw-0001zE-Ug
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 02:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4tWYtMZGixA+wvOSftKSlvk/VgodDRuuv8NOVBgK9qA=; b=dPMxD7hTdmOR9ZlCIQvP1B0HkA
 tGTa6a5ehcFYHzgeoq6dSNDm1wte9i33KzCoIFDyFI0t3g1ZA1KsSTKlsYYYyHOlhjywHqF+BKvXQ
 ZG7ekYvrUQAaXeY8DjEuLTB/M1gEPvG+/rlu9sIlMr1K43PdCaZlgU7sXWmRx1VgvgmI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4tWYtMZGixA+wvOSftKSlvk/VgodDRuuv8NOVBgK9qA=; b=Z6fZMOFxQ5Qf+IxaufHMIpOKW7
 Cu80xgrkxBvVxdJYBTMjH3WusXyOGQcqfiUAA5zUKj+uJ0zeMv/rVi+NY6ZJiPDeh/wgtPF5eDfMT
 Httn5D4b9mE7NA0n3ZQNUH3ZoQ9ExjLZleIQpkBJ8YJ7Z4vVipsJRcxm2RJ+ZnzGldXA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnAKq-0003pR-Tq
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 02:06:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=4tWYtMZGixA+wvOSftKSlvk/VgodDRuuv8NOVBgK9qA=; b=Adq4v/KWTEM2FdczXpvjs80tIS
 X+RI8WudlJAsHrDPGPuCobzpS7CFDimDgP4hUO57ijSq+gK2r7RjaX+5aWCUI+kHE5HNNvxAiArb8
 MS2goqmoJTX+p9hyEsHktic/NtZxDWhf2p4O9b5k/d/KvN0wUtcmJsD2XP8KiNZU8zHfrCWygGZbf
 8nS638cYMetvY08LkJYRSgyJFQ4rl780l7P9YO3hEfXv1iAyk81Ac9opUIOH1J54gT/anfierRXVH
 MxYlvXhSFH2WpfGppH4xw+r0EETjY+4Yny/3LELXc9fz8PIP5eqaU39lCpGtN1ivyUo+nWcfxcO6p
 5wtu7BXA==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnAKU-0035bi-Ao; Wed, 17 Nov 2021 02:05:44 +0000
To: Nick Terrell <terrelln@fb.com>, Helge Deller <deller@gmx.de>
References: <20211115155105.3797527-1-geert@linux-m68k.org>
 <CAMuHMdUCsyUxaEf1Lz7+jMnur4ECwK+JoXQqmOCkRKqXdb1hTQ@mail.gmail.com>
 <fcdead1c-2e26-b8ca-9914-4b3718d8f6d4@gmx.de>
 <480CE37B-FE60-44EE-B9D2-59A88FDFE809@fb.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <78b2d093-e06c-ba04-9890-69f948bfb937@infradead.org>
Date: Tue, 16 Nov 2021 18:05:40 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <480CE37B-FE60-44EE-B9D2-59A88FDFE809@fb.com>
Content-Language: en-US
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/16/21 5:59 PM, Nick Terrell wrote: > > >> On Nov 15,
 2021, at 8:44 AM, Helge Deller <deller@gmx.de> wrote: >> >> On 11/15/21 17:12, 
 Geert Uytterhoeven wrote: >>> On Mon, Nov 15, 2021 at 4:54 PM [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mnAKq-0003pR-Tq
X-Mailman-Approved-At: Wed, 17 Nov 2021 02:43:16 +0000
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>, Stan Skowronek <stan@corellium.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 kasan-dev <kasan-dev@googlegroups.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Anton Altaparmakov <anton@tuxera.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joey Gouly <joey.gouly@arm.com>,
 =?UTF-8?Q?Andr=c3=a9_Almeida?= <andrealmeid@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Parisc List <linux-parisc@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Hector Martin <marcan@marcan.st>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gMTEvMTYvMjEgNTo1OSBQTSwgTmljayBUZXJyZWxsIHdyb3RlOgo+IAo+IAo+PiBPbiBOb3Yg
MTUsIDIwMjEsIGF0IDg6NDQgQU0sIEhlbGdlIERlbGxlciA8ZGVsbGVyQGdteC5kZT4gd3JvdGU6
Cj4+Cj4+IE9uIDExLzE1LzIxIDE3OjEyLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+PiBP
biBNb24sIE5vdiAxNSwgMjAyMSBhdCA0OjU0IFBNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRA
bGludXgtbTY4ay5vcmc+IHdyb3RlOgo+Pj4+IEJlbG93IGlzIHRoZSBsaXN0IG9mIGJ1aWxkIGVy
cm9yL3dhcm5pbmcgcmVncmVzc2lvbnMvaW1wcm92ZW1lbnRzIGluCj4+Pj4gdjUuMTYtcmMxWzFd
IGNvbXBhcmVkIHRvIHY1LjE1WzJdLgo+Pj4+Cj4+Pj4gU3VtbWFyaXplZDoKPj4+PiAgIC0gYnVp
bGQgZXJyb3JzOiArMjAvLTEzCj4+Pj4gICAtIGJ1aWxkIHdhcm5pbmdzOiArMy8tMjgKPj4+Pgo+
Pj4+IEhhcHB5IGZpeGluZyEgOy0pCj4+Pj4KPj4+PiBUaGFua3MgdG8gdGhlIGxpbnV4LW5leHQg
dGVhbSBmb3IgcHJvdmlkaW5nIHRoZSBidWlsZCBzZXJ2aWNlLgo+Pj4+Cj4+Pj4gWzFdIGh0dHA6
Ly9raXNza2IuZWxsZXJtYW4uaWQuYXUva2lzc2tiL2JyYW5jaC9saW51cy9oZWFkL2ZhNTViN2Rj
ZGM0M2MxYWExYmExMmJjYTlkMmRkNDMxOGMyYTBkYmYvICAoYWxsIDkwIGNvbmZpZ3MpCj4+Pj4g
WzJdIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4uaWQuYXUva2lzc2tiL2JyYW5jaC9saW51cy9oZWFk
LzhiYjdlY2E5NzJhZDUzMWM5YjE0OWMwYTUxYWI0M2E0MTczODU4MTMvICAoYWxsIDkwIGNvbmZp
Z3MpCj4+Pj4KPj4+Pgo+Pj4+ICoqKiBFUlJPUlMgKioqCj4+Pj4KPj4+PiAyMCBlcnJvciByZWdy
ZXNzaW9uczoKPj4+PiAgICsgL2tpc3NrYi9zcmMvYXJjaC9wYXJpc2MvaW5jbHVkZS9hc20vanVt
cF9sYWJlbC5oOiBlcnJvcjogZXhwZWN0ZWQgJzonIGJlZm9yZSAnX19zdHJpbmdpZnknOiAgPT4g
MzM6NCwgMTg6NAo+Pj4+ICAgKyAva2lzc2tiL3NyYy9hcmNoL3BhcmlzYy9pbmNsdWRlL2FzbS9q
dW1wX2xhYmVsLmg6IGVycm9yOiBsYWJlbCAnbF95ZXMnIGRlZmluZWQgYnV0IG5vdCB1c2VkIFst
V2Vycm9yPXVudXNlZC1sYWJlbF06ICA9PiAzODoxLCAyMzoxCj4+Pgo+Pj4gICAgIGR1ZSB0byBz
dGF0aWNfYnJhbmNoX2xpa2VseSgpIGluIGNyeXB0by9hcGkuYwo+Pj4KPj4+IHBhcmlzYy1hbGxt
b2Rjb25maWcKPj4KPj4gZml4ZWQgbm93IGluIHRoZSBwYXJpc2MgZm9yLW5leHQgZ2l0IHRyZWUu
Cj4+Cj4+Cj4+Pj4gICArIC9raXNza2Ivc3JjL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5o
OiBlcnJvcjogIkNPTkQiIHJlZGVmaW5lZCBbLVdlcnJvcl06ICA9PiA1MzEKPj4+PiAgICsgL2tp
c3NrYi9zcmMvbGliL3pzdGQvY29tcHJlc3MvenN0ZF9kb3VibGVfZmFzdC5jOiBlcnJvcjogdGhl
IGZyYW1lIHNpemUgb2YgMzI1MiBieXRlcyBpcyBsYXJnZXIgdGhhbiAxNTM2IGJ5dGVzIFstV2Vy
cm9yPWZyYW1lLWxhcmdlci10aGFuPV06ICA9PiA0NzoxCj4+Pj4gICArIC9raXNza2Ivc3JjL2xp
Yi96c3RkL2NvbXByZXNzL3pzdGRfZG91YmxlX2Zhc3QuYzogZXJyb3I6IHRoZSBmcmFtZSBzaXpl
IG9mIDMzNjAgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTUzNiBieXRlcyBbLVdlcnJvcj1mcmFtZS1s
YXJnZXItdGhhbj1dOiAgPT4gNDk5OjEKPj4+PiAgICsgL2tpc3NrYi9zcmMvbGliL3pzdGQvY29t
cHJlc3MvenN0ZF9kb3VibGVfZmFzdC5jOiBlcnJvcjogdGhlIGZyYW1lIHNpemUgb2YgNTM0NCBi
eXRlcyBpcyBsYXJnZXIgdGhhbiAxNTM2IGJ5dGVzIFstV2Vycm9yPWZyYW1lLWxhcmdlci10aGFu
PV06ICA9PiAzMzQ6MQo+Pj4+ICAgKyAva2lzc2tiL3NyYy9saWIvenN0ZC9jb21wcmVzcy96c3Rk
X2RvdWJsZV9mYXN0LmM6IGVycm9yOiB0aGUgZnJhbWUgc2l6ZSBvZiA1MzgwIGJ5dGVzIGlzIGxh
cmdlciB0aGFuIDE1MzYgYnl0ZXMgWy1XZXJyb3I9ZnJhbWUtbGFyZ2VyLXRoYW49XTogID0+IDM1
NDoxCj4+Pj4gICArIC9raXNza2Ivc3JjL2xpYi96c3RkL2NvbXByZXNzL3pzdGRfZmFzdC5jOiBl
cnJvcjogdGhlIGZyYW1lIHNpemUgb2YgMTgyNCBieXRlcyBpcyBsYXJnZXIgdGhhbiAxNTM2IGJ5
dGVzIFstV2Vycm9yPWZyYW1lLWxhcmdlci10aGFuPV06ICA9PiAzNzI6MQo+Pj4+ICAgKyAva2lz
c2tiL3NyYy9saWIvenN0ZC9jb21wcmVzcy96c3RkX2Zhc3QuYzogZXJyb3I6IHRoZSBmcmFtZSBz
aXplIG9mIDIyMjQgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTUzNiBieXRlcyBbLVdlcnJvcj1mcmFt
ZS1sYXJnZXItdGhhbj1dOiAgPT4gMjA0OjEKPj4+PiAgICsgL2tpc3NrYi9zcmMvbGliL3pzdGQv
Y29tcHJlc3MvenN0ZF9mYXN0LmM6IGVycm9yOiB0aGUgZnJhbWUgc2l6ZSBvZiAzODAwIGJ5dGVz
IGlzIGxhcmdlciB0aGFuIDE1MzYgYnl0ZXMgWy1XZXJyb3I9ZnJhbWUtbGFyZ2VyLXRoYW49XTog
ID0+IDQ3NjoxCj4+Pgo+Pj4gcGFyaXNjLWFsbG1vZGNvbmZpZwo+Pgo+PiBwYXJpc2MgbmVlZHMg
bXVjaCBiaWdnZXIgZnJhbWUgc2l6ZXMsIHNvIEknbSBub3QgYXN0b25pc2hlZCBoZXJlLgo+PiBE
dXJpbmcgdGhlIHY1LjE1IGN5Y2wgSSBpbmNyZWFzZWQgaXQgdG8gMTUzNiAoZnJvbSAxMjgwKSwg
c28gSSdtIHNpbXBseSB0ZW1wdGVkIHRvCj4+IGluY3JlYXNlIGl0IHRoaXMgdGltZSB0byA0MDk2
LCB1bmxlc3Mgc29tZW9uZSBoYXMgYSBiZXR0ZXIgaWRlYS4uLi4KPiAKPiBUaGlzIHBhdGNoIHNl
dCBzaG91bGQgZml4IHRoZSB6c3RkIHN0YWNrIHNpemUgd2FybmluZ3MgWzBdLiBJ4oCZdmUKPiB2
ZXJpZmllZCB0aGUgZml4IHVzaW5nIHRoZSBzYW1lIHRvb2xpbmc6IGdjYy04LWhwcGEtbGludXgt
Z251Lgo+IAo+IEnigJlsbCBzZW5kIHRoZSBQUiB0byBMaW51cyB0b21vcnJvdy4gSeKAmXZlIGJl
ZW4gaW5mb3JtZWQgdGhhdCBpdAo+IGlzbid0IHN0cmljdGx5IG5lY2Vzc2FyeSB0byBzZW5kIHRo
ZSBwYXRjaGVzIHRvIHRoZSBtYWlsaW5nIGxpc3QKPiBmb3IgYnVnIGZpeGVzLCBidXQgaXRzIGFs
cmVhZHkgZG9uZSwgc28gSeKAmWxsIHdhaXQgYW5kIHNlZSBpZiB0aGVyZQo+IGlzIGFueSBmZWVk
YmFjay4KCklNTyBzZXZlcmFsIChvciBtYW55IG1vcmUpIHBlb3BsZSB3b3VsZCBkaXNhZ3JlZSB3
aXRoIHRoYXQuCgoic3RyaWN0bHk/IiAgT0ssIGl0J3MgcHJvYmFibHkgcG9zc2libGUgdGhhdCBh
bG1vc3QgYW55IHBhdGNoCmNvdWxkIGJlIG1lcmdlZCB3aXRob3V0IGJlaW5nIG9uIGEgbWFpbGlu
ZyBsaXN0LCBidXQgaXQncyBub3QKZGVzaXJhYmxlIChleGNlcHQgaW4gdGhlIGNhc2Ugb2YgInNl
Y3VyaXR5IiBwYXRjaGVzKS4KCi0tIAp+UmFuZHkKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgt
TlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
