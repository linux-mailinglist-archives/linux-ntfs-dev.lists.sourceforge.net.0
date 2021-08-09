Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3093E5DF8
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmR-0007fY-Q0; Tue, 10 Aug 2021 14:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <smfrench@gmail.com>) id 1mDC7M-0003kH-A8
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 20:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yUAKaSGW5DdJ2RQz+ROMjXDXwUd8MZUwEP7Sv67Rnfk=; b=hvAD2MEtHWaLZiwm78V1Rh45Lb
 q7yGYLzXYkDUDb/clCuOv28HG7jACqcZfnmqi75fnsygllAid0eKmr6m59Xn424cXYeaEs4qCnSUs
 Xjww3fC3nRi7OaZHGrFxwp/1QlhhWEU3ef2yBI4U1pDIYm0bNHKAqlDxtK465Y7fVEVg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yUAKaSGW5DdJ2RQz+ROMjXDXwUd8MZUwEP7Sv67Rnfk=; b=fdF5IOiQNLzCMRmzr0djlXIlaO
 tO1Rp3HjmkP0X+Prv4RLRylmgFxlqUDCdPibrTyOmFRoMmaG3LZLQDe5oarSG1325pdBv28vFUuZX
 1vU9XKKq6B9Xvr/1+/ofr0UKgEZn/MD3HjgHPq5QB8bmiRm5rRPii1bfY4+rFSzgjPN4=;
Received: from mail-lj1-f178.google.com ([209.85.208.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDC7K-0003mv-Tx
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 20:43:28 +0000
Received: by mail-lj1-f178.google.com with SMTP id h11so10477493ljo.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 13:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yUAKaSGW5DdJ2RQz+ROMjXDXwUd8MZUwEP7Sv67Rnfk=;
 b=jh1XmlgBHk4jrsPf4DmxJqM7pfrZrb8mFMTTROvMv7UPd9y4citm0IW9YSZRJLWznV
 OjEdXF16tyIN0ETuDIWCMPyL1YaCZzppNNSddWmpaxz33hK0tKLOGxZsCw9SvptX4eSJ
 1SeJB5uZbLDT3IeCj73sMQs0ibVjz5HeYMon+l4+5ByC2VE6KSjfkVGBZrlVw3CMYk5C
 MMe4u6T9QfcmG4Ay/vl2FAzJtQpGYPkxCc35j5H+FLOe/ydJQZJ5SCtAWRkdwA/kBZsZ
 u69OGl2BgZ/6mo4cIHpuCinTYdyUrYKmtNv9C5FulPf5LSJzMr/+8MZuJzjXgOro2Qg9
 QVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yUAKaSGW5DdJ2RQz+ROMjXDXwUd8MZUwEP7Sv67Rnfk=;
 b=A8uJN05NAEja1DLpbS9fd8LA1jydbY/W5sk5NhzeAPcBkQGka1X5aXzf6K2YV4eWV9
 Az85UQyTsXleAiEyocdiAy547L+BAUkWPEaWVrH3dSy1eKsUgJ56yPAp4UOR7aODN0cf
 yAAwql1xdKpWN8pQGpwCAqy5O4IbxEqStRqZAfZZOUXAz8qSNH6/duXd1s8XN3rHaiXR
 MepJFYs//3rfzSMJpnWNoEProuCdf4JLje0YzwyvXQL1ZVrXZHoWykCgwNpcYNYk55Ji
 X/vgrVrZkpS5zhVpKfXz51QVvmvpMfBesZUDhOeM780R/a8jAMqxEClWepD+83NpQz0E
 UNaw==
X-Gm-Message-State: AOAM531qcTFBCUruVzHcJIICJo8GeCzLMwYuZIHB6wQU+Frxk007Fai7
 7AlBqwVPyZqGnIVs2IF2k7fYF3VsDlSCwJHeSX4=
X-Google-Smtp-Source: ABdhPJy8ej9SUjeGIWuogdO/3shhi/7En+oCEa5tTqZf2hp+d/UjsUbfLSRI2keSqvFXPLnxjriUbvils/jCtnY/FYQ=
X-Received: by 2002:a2e:b1d3:: with SMTP id e19mr10504370lja.6.1628541800135; 
 Mon, 09 Aug 2021 13:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-12-pali@kernel.org>
 <D0302F93-BAE5-48F0-87D0-B68B10D7757B@dubeyko.com>
 <YRFnz6kn1UbSCN/S@casper.infradead.org>
 <20210809174741.4wont2drya3rvpsr@pali>
In-Reply-To: <20210809174741.4wont2drya3rvpsr@pali>
From: Steve French <smfrench@gmail.com>
Date: Mon, 9 Aug 2021 15:43:09 -0500
Message-ID: <CAH2r5ms2wK4P9=J4q7OJ4fLhi=e981TY1+Ue7yawyQiCzS9ThQ@mail.gmail.com>
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.178 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.178 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDC7K-0003mv-Tx
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:55 +0000
Subject: Re: [Linux-NTFS-Dev] [RFC PATCH 11/20] hfs: Explicitly set
 hsb->nls_disk when hsb->nls_io is set
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
Cc: CIFS <linux-cifs@vger.kernel.org>, Jan Kara <jack@suse.cz>,
 Luis de Bethencourt <luisbg@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>, Viacheslav Dubeyko <slava@dubeyko.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Rm9yIGNpZnMua28sIEkgZG9uJ3QgbWluZCBydW5uaW5nIG91ciBhdXRvbWF0ZWQgcmVncmVzc2lv
biB0ZXN0cyBvbgp0aGlzIHBhdGNoIHdoZW4gdGhlIHBhdGNoIChvciBwYXRjaGVzKSBpcyByZWFk
eSwgYnV0IHdhcyB0aGlua2luZwphYm91dCBhbiBlYXJsaWVyIGRpc2N1c3Npb24gYSBmZXcgbW9u
dGhzIGFib3V0IHBhcnRoIGNvbnZlcnNpb24gaW4KY2lmcy5rbyBwcm9tcHRlZCBieSBBbCBWaXJv
LCBhbmQgd2hldGhlciBhZGRpdGlvbmFsIGNoYW5nZXMgc2hvdWxkIGJlCm1hZGUgdG8gbW92ZSB0
aGUgY2hhcmFjdGVyIGNvbnZlcnNpb24gbGF0ZXIgYXMgd2VsbCAoZS5nLiBmb3IKY2hhcmFjdGVy
cyBpbiB0aGUgcmVzZXJ2ZWQgcmFuZ2Ugc3VjaCBhcyAnXCcgdG8gMHhGMDI2LCBhbmQnJzonIHRv
CjB4RjAyMiAgYW5kICc+JyB0byAweEYwMjQgYW5kICc/JyB0byAweEYwMjUgZXRjKSBmb3IgdGhl
IDEwIHNwZWNpYWwKY2hhcmFjdGVycyB3aGljaCBoYXZlIHRvIGdldCByZW1hcHBlZCBpbnRvIHRo
ZSBVQ1MtMiByZXNlcnZlZApjaGFyYWN0ZXIgcmFuZ2UuCgpPbiBNb24sIEF1ZyA5LCAyMDIxIGF0
IDEyOjQ5IFBNIFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9u
ZGF5IDA5IEF1Z3VzdCAyMDIxIDE4OjM3OjE5IE1hdHRoZXcgV2lsY294IHdyb3RlOgo+ID4gT24g
TW9uLCBBdWcgMDksIDIwMjEgYXQgMTA6MzE6NTVBTSAtMDcwMCwgVmlhY2hlc2xhdiBEdWJleWtv
IHdyb3RlOgo+ID4gPiA+IE9uIEF1ZyA4LCAyMDIxLCBhdCA5OjI0IEFNLCBQYWxpIFJvaMOhciA8
cGFsaUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEl0IGRvZXMgbm90IG1ha2Ug
YW55IHNlbnNlIHRvIHNldCBoc2ItPm5sc19pbyAoTkxTIGlvY2hhcnNldCB1c2VkIGJldHdlZW4K
PiA+ID4gPiBWRlMgYW5kIGhmcyBkcml2ZXIpIHdoZW4gaHNiLT5ubHNfZGlzayAoTkxTIGNvZGVw
YWdlIHVzZWQgYmV0d2VlbiBoZnMKPiA+ID4gPiBkcml2ZXIgYW5kIGRpc2spIGlzIG5vdCBzZXQu
Cj4gPiA+ID4KPiA+ID4gPiBSZXZlcnNlIGVuZ2luZWVyaW5nIGRyaXZlciBjb2RlIHNob3duIHdo
YXQgaXMgZG9pbmcgaW4gdGhpcyBzcGVjaWFsIGNhc2U6Cj4gPiA+ID4KPiA+ID4gPiAgICBXaGVu
IGNvZGVwYWdlIHdhcyBub3QgZGVmaW5lZCBidXQgaW9jaGFyc2V0IHdhcyB0aGVuCj4gPiA+ID4g
ICAgaGZzIGRyaXZlciBjb3BpZWQgOGJpdCBjaGFyYWN0ZXIgZnJvbSBkaXNrIGRpcmVjdGx5IHRv
Cj4gPiA+ID4gICAgMTZiaXQgdW5pY29kZSB3Y2hhcl90IHR5cGUuIFdoaWNoIG1lYW5zIGl0IGRp
ZCBjb252ZXJzaW9uCj4gPiA+ID4gICAgZnJvbSBMYXRpbjEgKElTTy04ODU5LTEpIHRvIFVuaWNv
ZGUgYmVjYXVzZSBmaXJzdCAyNTYKPiA+ID4gPiAgICBVbmljb2RlIGNvZGUgcG9pbnRzIG1hdGNo
ZXMgOGJpdCBJU08tODg1OS0xIGNvZGVwYWdlIHRhYmxlLgo+ID4gPiA+ICAgIFNvIHdoZW4gaW9j
aGFyc2V0IHdhcyBzcGVjaWZpZWQgYW5kIGNvZGVwYWdlIG5vdCwgdGhlbgo+ID4gPiA+ICAgIGNv
ZGVwYWdlIHVzZWQgaW1wbGljaXQgdmFsdWUgImlzbzg4NTktMSIuCj4gPiA+ID4KPiA+ID4gPiBT
byB3aGVuIGhzYi0+bmxzX2Rpc2sgaXMgbm90IHNldCBhbmQgaHNiLT5ubHNfaW8gaXMgdGhlbiBl
eHBsaWNpdGx5IHNldAo+ID4gPiA+IGhzYi0+bmxzX2Rpc2sgdG8gImlzbzg4NTktMSIuCj4gPiA+
ID4KPiA+ID4gPiBTdWNoIHNldHVwIGlzIG9idmlvdXNseSBpbmNvbXBhdGlibGUgd2l0aCBNYWMg
T1Mgc3lzdGVtcyBhcyB0aGV5IGRvIG5vdAo+ID4gPiA+IHN1cHBvcnQgaXNvODg1OS0xIGVuY29k
aW5nIGZvciBoZnMuIFNvIHByaW50IHdhcm5pbmcgaW50byBkbWVzZyBhYm91dCB0aGlzCj4gPiA+
ID4gZmFjdC4KPiA+ID4gPgo+ID4gPiA+IEFmdGVyIHRoaXMgY2hhbmdlIGhzYi0+bmxzX2Rpc2sg
aXMgYWx3YXlzIHNldCwgc28gcmVtb3ZlIGNvZGUgcGF0aHMgZm9yCj4gPiA+ID4gY2FzZSB3aGVu
IGhzYi0+bmxzX2Rpc2sgd2FzIG5vdCBzZXQgYXMgdGhleSBhcmUgbm90IG5lZWRlZCBhbnltb3Jl
Lgo+ID4gPgo+ID4gPgo+ID4gPiBTb3VuZHMgcmVhc29uYWJsZS4gQnV0IGl0IHdpbGwgYmUgZ3Jl
YXQgdG8ga25vdyB0aGF0IHRoZSBjaGFuZ2UgaGFzIGJlZW4gdGVzdGVkIHJlYXNvbmFibHkgd2Vs
bC4KPiA+Cj4gPiBJIGRvbid0IHRoaW5rIGl0J3MgcmVhc29uYWJsZSB0byBhc2sgUGFsaSB0byB0
ZXN0IGV2ZXJ5IHNpbmdsZSBmaWxlc3lzdGVtLgo+ID4gVGhhdCdzIHNvbWV0aGluZyB0aGUgbWFp
bnRhaW5lciBzaG91bGQgZG8sIGFzIHlvdSdyZSBtb3JlIGxpa2VseSB0byBoYXZlCj4gPiB0aGUg
aW5mcmFzdHJ1Y3R1cmUgYWxyZWFkeSBzZXQgdXAgdG8gZG8gdGVzdGluZyBvZiB5b3VyIGZpbGVz
eXN0ZW0gYW5kCj4gPiBiZSBhd2FyZSBvZiBmdW4gY29ybmVyIGNhc2VzIGFuZCB1c2UgY2FzZXMg
dGhhbiBzb21lb25lIHdobydzIHdvcmtpbmcKPiA+IGFjcm9zcyBhbGwgZmlsZXN5c3RlbXMuCj4K
PiBUaGlzIHBhdGNoIHNlcmllcyBpcyBjdXJyZW50bHkgaW4gUkZDIGZvcm0sIGFzIHN0YXRlZCBp
biBjb3ZlciBsZXR0ZXIKPiBtb3N0bHkgdW50ZXN0ZWQuIFNvIHRoZXkgYXJlIG5vdCBpbiBmb3Jt
IGZvciBtZXJnaW5nIG9yIGRldGFpbGVkCj4gcmV2aWV3aW5nLiBJIGp1c3Qgd291bGQgbGlrZSB0
byBrbm93IGlmIHRoaXMgaXMgdGhlIHJpZ2h0IGRpcmVjdGlvbiB3aXRoCj4gZmlsZXN5c3RlbXMg
YW5kIGlmIEkgc2hvdWxkIGNvbnRpbnVlIHdpdGggdGhpcyBteSBlZmZvcnQgb3Igbm90Lgo+IEFu
ZCBJIHRob3VnaHQgdGhhdCBzZW5kaW5nIFJGQyAiaW5jb21wbGV0ZSIgcGF0Y2hlcyBpcyBiZXR0
ZXIgd2F5IHRoYW4KPiBqdXN0IGRlc2NyaWJpbmcgd2hhdCB0byBkbyBhbmQgaG93Li4uCgoKCi0t
IApUaGFua3MsCgpTdGV2ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vbGludXgtbnRmcy1kZXYK
