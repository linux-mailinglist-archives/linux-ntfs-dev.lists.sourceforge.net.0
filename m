Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7AC454B35
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Nov 2021 17:42:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mnO17-00086O-Bs; Wed, 17 Nov 2021 16:42:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <deller@gmx.de>) id 1mnJ2Z-0007wQ-Tr
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 11:23:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DvHLkKVB9o3bd+oGlvVzLpP9LIFOhtsbe6EohRQ3A38=; b=N1av0co9QiuTEp53M2AR4jD672
 bcR1jFuJyT/3E7NpnoZZJpBtVQnCtKG9r2U+fBvyqQSE3AkUy6O8qhYRQnVb3a7v6uazcfCqQvU5/
 13C+iQpiEbON7JD196eC/QI40zY4DanhBbr7SHkk3y+SVmBs/90dzHFE10UY8zV9a1wQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DvHLkKVB9o3bd+oGlvVzLpP9LIFOhtsbe6EohRQ3A38=; b=TG/9zFvUfWYz+3efwIMu4UhHaZ
 GoJiQUX68qMX2AUM6lMEvGTDvfmcoVP/kmfZ1FXwvFT+U6GInYLtcDnL7qPTGZ4EPrwSDw1d/HmHa
 lsHt66oXFRWe3E8Os3+RUTztfyBstuBJxEfJIFpXOfjp1QnOiq6pJgkfi0qaCodqeAIQ=;
Received: from mout.gmx.net ([212.227.15.18])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnJ2U-00GFvq-6B
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Nov 2021 11:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1637148180;
 bh=ggLkZ223a9rE1OZ+PtXEoMzttDhYwxytr42VAXoV0yE=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=BrRmlP/GY5IAtD5RaALvtRW3ze40rofBypyrcN9z9QxIw8txqLRrgARH9jEXOqYwh
 KXJCBFDLvp+noaK8NG3dViHrGLXr9PXWBhDRREmClfx7gTSDyQRXtDGKChgyuXIeTh
 g1w/aYiaxLQznFcOTR3PWbtxZg5OKDTwRDI8qycI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.186.76]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mdeb5-1mEFOM2tNZ-00ZhYR; Wed, 17
 Nov 2021 12:22:59 +0100
Message-ID: <525f9914-04bd-2d8a-0bbf-daf2d0d2053d@gmx.de>
Date: Wed, 17 Nov 2021 12:22:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Nick Terrell <terrelln@fb.com>, Randy Dunlap <rdunlap@infradead.org>
References: <20211115155105.3797527-1-geert@linux-m68k.org>
 <CAMuHMdUCsyUxaEf1Lz7+jMnur4ECwK+JoXQqmOCkRKqXdb1hTQ@mail.gmail.com>
 <fcdead1c-2e26-b8ca-9914-4b3718d8f6d4@gmx.de>
 <480CE37B-FE60-44EE-B9D2-59A88FDFE809@fb.com>
 <78b2d093-e06c-ba04-9890-69f948bfb937@infradead.org>
 <B57193D6-1FD4-45D3-8045-8D2DE691E24E@fb.com>
From: Helge Deller <deller@gmx.de>
In-Reply-To: <B57193D6-1FD4-45D3-8045-8D2DE691E24E@fb.com>
X-Provags-ID: V03:K1:ecyVoIRPJxDu1rgYw3do9p97wWm9wU+AYBS1tvVaJ0qieCw2VM+
 F4AcfYMJ6m/o5RfywfI4addVn5UKeIySukwDZx6nGaNJwYzhtTxzP+5Y9QaJhX+4OlwpAV1
 nMwCfILf2+U0diPU2I9nlEi9f/czGOv/sIbvk3rRkJXeX3DOr1WSt6X93xYlDMTGlwHCyLR
 l+dXL+dPRpL0TjoJpT37A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:G/MV6HsODHM=:GxGTU642o4q5r5Bwlk703U
 vxYQ3KuDo6YpbOEcuglfWGzzkjMlrIx0ZlWv4JsMVqaIrnJ1r7AEdn0mG05l77wBkj9tPDp2p
 cxqkTdS0Rn8a3/aO+1h66Qc6kxo7zYE5k8wzhKYhg57qAdkipTcoDbYTRbCnwgd66capkEccM
 ninD/hUvLoeWSvRDoqj7mDSeesjpteCG2ikmPDhTRIHWTyXcduB6vwRQJADGEDklW8y85wAX2
 8V74xNrEaQisjP8JC8Mjxt9pQ89HFPW5iIeFMhqGBusMX2Qc1A/dgqLsCecHDNVdOsLIZiVmd
 ZaVJy8Y4j1gCmWXjdIK4tPA2f2F7zz0I3Vr1J6DABpXhDXWjOi2t8Vc8FVWAkhlq0GDbOEa22
 LvVPGyYOXK+zVo3NTpR2SRDD5inFdZofQgk3STxUADjWe0pADXhySizKoqI3hOiS+RCzugymz
 P013TEBW0pCuBuvtAqKPpPOVumpI1YuDb+ncGhnSEeZguPYfyEJiUT3LqBFxh2V2X/9WDi1OL
 qNNEwvJJpR2wgmPCQ/kQ3qSQwou+kAe5ZuGqjdVpjbC2+1SPL7YspRkKKCFCjlGLvlpcujvTj
 zxtITxo9yGX25rS+k4QKT7FDY+rDz9LFNYsvT3HSCPcBFodYcELgos1uLT9n1PzJIIFglJTNy
 cpq+8ki7uxvrFMqw7bsyXNJxR68GWOY013x2dDtJgKhUdBk4WQNZ/Me0K/gC1a3qgmWbxZVEH
 GtYiU9JkuGLmQpINKuY0akrnFChvA784RgR2Y+oWWX7bHsqEa0qmvePFVafGjVha3pfS3jDwL
 y23unIOpTU0uAViTehWJfapqMdY3tpQoYWYdv/SmH5afY7QhFeTXGQ8FRB1s2XKDJLBt9n3lx
 IDTZVBbDmPftiGHN4qbiC+2vCAg+1tRLbsC5sRU19gzI7dfG8Prt3dDPwiqfcixG4zTa7VAhA
 H7orwyCYt9MsOsiUyOjbPeaXA1amq+2kIKl82/FS6TVco9YcnlGYmRMIv09URP4HnnwNXA5hj
 sTan1CyZPpbhoC1X7yQVhT2hokL8Bo8TnOGfc+9A/n3r6zaF4fFADZRSvl/CYXmsCxwIXL3cV
 VuJSqXhAe0zLjg=
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/17/21 03:19, Nick Terrell wrote: > > >> On Nov 16, 2021,
 at 6:05 PM, Randy Dunlap wrote: >> >> On 11/16/21 5:59 PM, Nick Terrell wrote:
 >>>> On Nov 15, 2021, at 8:44 AM, Helge Deller wrote: [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deller[at]gmx.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mnJ2U-00GFvq-6B
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gMTEvMTcvMjEgMDM6MTksIE5pY2sgVGVycmVsbCB3cm90ZToKPgo+Cj4+IE9uIE5vdiAxNiwg
MjAyMSwgYXQgNjowNSBQTSwgUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+IHdy
b3RlOgo+Pgo+PiBPbiAxMS8xNi8yMSA1OjU5IFBNLCBOaWNrIFRlcnJlbGwgd3JvdGU6Cj4+Pj4g
T24gTm92IDE1LCAyMDIxLCBhdCA4OjQ0IEFNLCBIZWxnZSBEZWxsZXIgPGRlbGxlckBnbXguZGU+
IHdyb3RlOgo+Pj4+Cj4+Pj4gT24gMTEvMTUvMjEgMTc6MTIsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3
cm90ZToKPj4+Pj4gT24gTW9uLCBOb3YgMTUsIDIwMjEgYXQgNDo1NCBQTSBHZWVydCBVeXR0ZXJo
b2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPj4+Pj4+IEJlbG93IGlzIHRoZSBs
aXN0IG9mIGJ1aWxkIGVycm9yL3dhcm5pbmcgcmVncmVzc2lvbnMvaW1wcm92ZW1lbnRzIGluCj4+
Pj4+PiB2NS4xNi1yYzFbMV0gY29tcGFyZWQgdG8gdjUuMTVbMl0uCj4+Pj4+Pgo+Pj4+Pj4gU3Vt
bWFyaXplZDoKPj4+Pj4+ICAtIGJ1aWxkIGVycm9yczogKzIwLy0xMwo+Pj4+Pj4gIC0gYnVpbGQg
d2FybmluZ3M6ICszLy0yOAo+Pj4+Pj4KPj4+Pj4+IEhhcHB5IGZpeGluZyEgOy0pCj4+Pj4+Pgo+
Pj4+Pj4gVGhhbmtzIHRvIHRoZSBsaW51eC1uZXh0IHRlYW0gZm9yIHByb3ZpZGluZyB0aGUgYnVp
bGQgc2VydmljZS4KPj4+Pj4+Cj4+Pj4+PiBbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5h
dS9raXNza2IvYnJhbmNoL2xpbnVzL2hlYWQvZmE1NWI3ZGNkYzQzYzFhYTFiYTEyYmNhOWQyZGQ0
MzE4YzJhMGRiZi8gICAoYWxsIDkwIGNvbmZpZ3MpCj4+Pj4+PiBbMl0gaHR0cDovL2tpc3NrYi5l
bGxlcm1hbi5pZC5hdS9raXNza2IvYnJhbmNoL2xpbnVzL2hlYWQvOGJiN2VjYTk3MmFkNTMxYzli
MTQ5YzBhNTFhYjQzYTQxNzM4NTgxMy8gICAoYWxsIDkwIGNvbmZpZ3MpCj4+Pj4+Pgo+Pj4+Pj4K
Pj4+Pj4+ICoqKiBFUlJPUlMgKioqCj4+Pj4+Pgo+Pj4+Pj4gMjAgZXJyb3IgcmVncmVzc2lvbnM6
Cj4+Pj4+PiAgKyAva2lzc2tiL3NyYy9hcmNoL3BhcmlzYy9pbmNsdWRlL2FzbS9qdW1wX2xhYmVs
Lmg6IGVycm9yOiBleHBlY3RlZCAnOicgYmVmb3JlICdfX3N0cmluZ2lmeSc6ICA9PiAzMzo0LCAx
ODo0Cj4+Pj4+PiAgKyAva2lzc2tiL3NyYy9hcmNoL3BhcmlzYy9pbmNsdWRlL2FzbS9qdW1wX2xh
YmVsLmg6IGVycm9yOiBsYWJlbCAnbF95ZXMnIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9y
PXVudXNlZC1sYWJlbF06ICA9PiAzODoxLCAyMzoxCj4+Pj4+Cj4+Pj4+ICAgIGR1ZSB0byBzdGF0
aWNfYnJhbmNoX2xpa2VseSgpIGluIGNyeXB0by9hcGkuYwo+Pj4+Pgo+Pj4+PiBwYXJpc2MtYWxs
bW9kY29uZmlnCj4+Pj4KPj4+PiBmaXhlZCBub3cgaW4gdGhlIHBhcmlzYyBmb3ItbmV4dCBnaXQg
dHJlZS4KPj4+Pgo+Pj4+Cj4+Pj4+PiAgKyAva2lzc2tiL3NyYy9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9kcnYuaDogZXJyb3I6ICJDT05EIiByZWRlZmluZWQgWy1XZXJyb3JdOiAgPT4gNTMxCj4+
Pj4+PiAgKyAva2lzc2tiL3NyYy9saWIvenN0ZC9jb21wcmVzcy96c3RkX2RvdWJsZV9mYXN0LmM6
IGVycm9yOiB0aGUgZnJhbWUgc2l6ZSBvZiAzMjUyIGJ5dGVzIGlzIGxhcmdlciB0aGFuIDE1MzYg
Ynl0ZXMgWy1XZXJyb3I9ZnJhbWUtbGFyZ2VyLXRoYW49XTogID0+IDQ3OjEKPj4+Pj4+ICArIC9r
aXNza2Ivc3JjL2xpYi96c3RkL2NvbXByZXNzL3pzdGRfZG91YmxlX2Zhc3QuYzogZXJyb3I6IHRo
ZSBmcmFtZSBzaXplIG9mIDMzNjAgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTUzNiBieXRlcyBbLVdl
cnJvcj1mcmFtZS1sYXJnZXItdGhhbj1dOiAgPT4gNDk5OjEKPj4+Pj4+ICArIC9raXNza2Ivc3Jj
L2xpYi96c3RkL2NvbXByZXNzL3pzdGRfZG91YmxlX2Zhc3QuYzogZXJyb3I6IHRoZSBmcmFtZSBz
aXplIG9mIDUzNDQgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTUzNiBieXRlcyBbLVdlcnJvcj1mcmFt
ZS1sYXJnZXItdGhhbj1dOiAgPT4gMzM0OjEKPj4+Pj4+ICArIC9raXNza2Ivc3JjL2xpYi96c3Rk
L2NvbXByZXNzL3pzdGRfZG91YmxlX2Zhc3QuYzogZXJyb3I6IHRoZSBmcmFtZSBzaXplIG9mIDUz
ODAgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTUzNiBieXRlcyBbLVdlcnJvcj1mcmFtZS1sYXJnZXIt
dGhhbj1dOiAgPT4gMzU0OjEKPj4+Pj4+ICArIC9raXNza2Ivc3JjL2xpYi96c3RkL2NvbXByZXNz
L3pzdGRfZmFzdC5jOiBlcnJvcjogdGhlIGZyYW1lIHNpemUgb2YgMTgyNCBieXRlcyBpcyBsYXJn
ZXIgdGhhbiAxNTM2IGJ5dGVzIFstV2Vycm9yPWZyYW1lLWxhcmdlci10aGFuPV06ICA9PiAzNzI6
MQo+Pj4+Pj4gICsgL2tpc3NrYi9zcmMvbGliL3pzdGQvY29tcHJlc3MvenN0ZF9mYXN0LmM6IGVy
cm9yOiB0aGUgZnJhbWUgc2l6ZSBvZiAyMjI0IGJ5dGVzIGlzIGxhcmdlciB0aGFuIDE1MzYgYnl0
ZXMgWy1XZXJyb3I9ZnJhbWUtbGFyZ2VyLXRoYW49XTogID0+IDIwNDoxCj4+Pj4+PiAgKyAva2lz
c2tiL3NyYy9saWIvenN0ZC9jb21wcmVzcy96c3RkX2Zhc3QuYzogZXJyb3I6IHRoZSBmcmFtZSBz
aXplIG9mIDM4MDAgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTUzNiBieXRlcyBbLVdlcnJvcj1mcmFt
ZS1sYXJnZXItdGhhbj1dOiAgPT4gNDc2OjEKPj4+Pj4KPj4+Pj4gcGFyaXNjLWFsbG1vZGNvbmZp
Zwo+Pj4+Cj4+Pj4gcGFyaXNjIG5lZWRzIG11Y2ggYmlnZ2VyIGZyYW1lIHNpemVzLCBzbyBJJ20g
bm90IGFzdG9uaXNoZWQgaGVyZS4KPj4+PiBEdXJpbmcgdGhlIHY1LjE1IGN5Y2wgSSBpbmNyZWFz
ZWQgaXQgdG8gMTUzNiAoZnJvbSAxMjgwKSwgc28gSSdtIHNpbXBseSB0ZW1wdGVkIHRvCj4+Pj4g
aW5jcmVhc2UgaXQgdGhpcyB0aW1lIHRvIDQwOTYsIHVubGVzcyBzb21lb25lIGhhcyBhIGJldHRl
ciBpZGVhLi4uLgo+Pj4gVGhpcyBwYXRjaCBzZXQgc2hvdWxkIGZpeCB0aGUgenN0ZCBzdGFjayBz
aXplIHdhcm5pbmdzIFswXS4gSeKAmXZlCj4+PiB2ZXJpZmllZCB0aGUgZml4IHVzaW5nIHRoZSBz
YW1lIHRvb2xpbmc6IGdjYy04LWhwcGEtbGludXgtZ251Lgo+Pj4gSeKAmWxsIHNlbmQgdGhlIFBS
IHRvIExpbnVzIHRvbW9ycm93LiBJ4oCZdmUgYmVlbiBpbmZvcm1lZCB0aGF0IGl0Cj4+PiBpc24n
dCBzdHJpY3RseSBuZWNlc3NhcnkgdG8gc2VuZCB0aGUgcGF0Y2hlcyB0byB0aGUgbWFpbGluZyBs
aXN0Cj4+PiBmb3IgYnVnIGZpeGVzLCBidXQgaXRzIGFscmVhZHkgZG9uZSwgc28gSeKAmWxsIHdh
aXQgYW5kIHNlZSBpZiB0aGVyZQo+Pj4gaXMgYW55IGZlZWRiYWNrLgo+Pgo+PiBJTU8gc2V2ZXJh
bCAob3IgbWFueSBtb3JlKSBwZW9wbGUgd291bGQgZGlzYWdyZWUgd2l0aCB0aGF0Lgo+Pgo+PiAi
c3RyaWN0bHk/IiAgT0ssIGl0J3MgcHJvYmFibHkgcG9zc2libGUgdGhhdCBhbG1vc3QgYW55IHBh
dGNoCj4+IGNvdWxkIGJlIG1lcmdlZCB3aXRob3V0IGJlaW5nIG9uIGEgbWFpbGluZyBsaXN0LCBi
dXQgaXQncyBub3QKPj4gZGVzaXJhYmxlIChleGNlcHQgaW4gdGhlIGNhc2Ugb2YgInNlY3VyaXR5
IiBwYXRjaGVzKS4KPgo+IEdvb2QgdG8ga25vdyEgVGhhbmtzIGZvciB0aGUgYWR2aWNlLCBJIHdh
c27igJl0IHJlYWxseSBzdXJlIHdoYXQKPiB0aGUgYmVzdCBwcmFjdGljZSBpcyBmb3Igc2VuZGlu
ZyBwYXRjaGVzIHRvIHlvdXIgb3duIHRyZWUsIGFzIEkKPiBkaWRuJ3Qgc2VlIGFueXRoaW5nIGFi
b3V0IGl0IGluIHRoZSBtYWludGFpbmVyIGd1aWRlLgoKTmljaywgdGhhbmtzIGEgbG90IGZvciB5
b3VyIGVmZm9ydHMgdG8gZ2V0IHRoZSBmcmFtZSBzaXplIHVzYWdlIGRvd24hCgpJJ3ZlIGFwcGxp
ZWQgeW91ciBwYXRjaCBzZXJpZXMgdG8gdGhlIHBhcmlzYyBmb3ItbmV4dCB0cmVlIFsxXSwgc28g
dGhhdCBpdApnZXRzIHNvbWUgdGVzdGluZyBpbiB0aGUgdXBzdHJlYW0gZm9yLW5leHQgdHJlZS4K
TXkgdGVzdHMgc28gZmFyIGFyZSBnb29kLCBhbHRob3VnaCBJJ20gb25seSB1c2luZyBnY2MtMTEu
CgpJZiB5b3UgZG9uJ3QgbWluZCwgYW5kIGlmIGl0IGRvZXNuJ3QgZ2VuZXJhdGUgaXNzdWVzIGZv
ciBvdGhlcgpwbGF0Zm9ybXMgJiBhcmNoaXRlY3R1cmVzIEkgY291bGQgc3VibWl0IHRoZW0gdXBz
dHJlYW0gdG8gTGludXMgd2hlbgpJIHNlbmQgdGhlIG5leHQgcHVsbCByZXF1ZXN0LgoKSGVsZ2UK
ClsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9kZWxs
ZXIvcGFyaXNjLWxpbnV4LmdpdC9sb2cvP2g9Zm9yLW5leHQKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QK
TGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
