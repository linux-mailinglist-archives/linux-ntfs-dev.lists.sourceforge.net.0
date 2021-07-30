Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D58F3DB750
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 30 Jul 2021 12:42:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m9PyS-0003eZ-Oq; Fri, 30 Jul 2021 10:42:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1m9NXY-0002qX-93
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 08:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xkI1P583/zlO5Q4P8uDTS9xeaOmgLJ4qZwXKYUFH0Sc=; b=LdnuO++zJ6HpBBEHjgH31keWSL
 zzV1hDjzboUeU4bDg5HADK1ruk6uoO94NYAo3FPfoXuo6bs3Syonbk5r/t5xg8u8x/9F5GaKK1vqS
 tk1QY3RSKD/vVwO9x00WeGBOVu/bCsMaY1CvtEu2fgRiaIhLO4GKRvkzm0D9VpZxYRh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xkI1P583/zlO5Q4P8uDTS9xeaOmgLJ4qZwXKYUFH0Sc=; b=AB07qhc5K++voct3M8xLqjfqiJ
 saZUslFOpGD0CyGzLM62okrajDU9QwyMkJPF9sQ2Bz9uj/rRpPMhxz40Tg9IYtzK5C2dbprRnCa8f
 t9T4oxBZma0y0ezlqwbyYhsz+jG/ThUwBTN/1WglQ/WHGfK6LBcGmpRl6/pkW32DJDp8=;
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1m9NXP-0005HK-8U
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 08:06:44 +0000
Received: from [10.0.2.15] ([86.243.172.93]) by mwinf5d81 with ME
 id bL6H2500D21Fzsu03L6HAb; Fri, 30 Jul 2021 10:06:25 +0200
X-ME-Helo: [10.0.2.15]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 30 Jul 2021 10:06:25 +0200
X-ME-IP: 86.243.172.93
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-8-almaz.alexandrovich@paragon-software.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <526c746b-2615-6a27-f753-4655571a5462@wanadoo.fr>
Date: Fri, 30 Jul 2021 10:06:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210729134943.778917-8-almaz.alexandrovich@paragon-software.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.127 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1m9NXP-0005HK-8U
X-Mailman-Approved-At: Fri, 30 Jul 2021 10:42:38 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 07/10] fs/ntfs3: Add NTFS journal
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
Cc: andy.lavr@gmail.com, kari.argillander@gmail.com, nborisov@suse.com,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, hch@lst.de, viro@zeniv.linux.org.uk,
 joe@perches.com, dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGksCgpiZWxvdyBhcmUgYSBmZXcgY29tbWVudHMgYmFzZWQgb24gYSBjcHBjaGVjayBydW4uCkRv
bid0IHRha2UgaXQgdG9vIHNlcmlvdXNseSBpbnRvIGNvbnNpZGVyYXRpb24uIEl0IGNvdWxkIGJl
IGVpdGhlciBzb21lIAp1c2VsZXNzIGNvZGUgdGhhdCBjb3VsZCBiZSByZW1vdmVkIG9yIHNvbWUg
aXNzdWVzIGluIHRoZSBsb2dpYy4KCkl0IGlzIHJlcG9ydGVkIG9ubHkgaWYgYSBuZXcgaXRlcmF0
aW9uIGlzIGRvbmUgYW5kIGlmIGl0IG1ha2VzIHNlbnNlIHRvIApjaGFuZ2Ugc29tZXRoaW5nLgoK
Q0oKCkxlIDI5LzA3LzIwMjEgw6AgMTU6NDksIEtvbnN0YW50aW4gS29tYXJvdiBhIMOpY3JpdMKg
Ogo+IFRoaXMgYWRkcyBOVEZTIGpvdXJuYWwKPiAKPiBTaWduZWQtb2ZmLWJ5OiBLb25zdGFudGlu
IEtvbWFyb3YgPGFsbWF6LmFsZXhhbmRyb3ZpY2hAcGFyYWdvbi1zb2Z0d2FyZS5jb20+Cj4gLS0t
Cj4gICBmcy9udGZzMy9mc2xvZy5jIHwgNTE4MSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNTE4MSBpbnNlcnRpb25zKCsp
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbnRmczMvZnNsb2cuYwo+IAo+IGRpZmYgLS1naXQg
YS9mcy9udGZzMy9mc2xvZy5jIGIvZnMvbnRmczMvZnNsb2cuYwo+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gaW5kZXggMDAwMDAwMDAwLi41M2RhMTIyNTIKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZnMvbnRmczMvZnNsb2cuYwoKWy4uLl0KCj4gKy8qCj4gKyAqIGxhc3RfbG9nX2xzbgo+ICsgKgo+
ICsgKiBUaGlzIHJvdXRpbmUgd2Fsa3MgdGhyb3VnaCB0aGUgbG9nIHBhZ2VzIGZvciBhIGZpbGUs
IHNlYXJjaGluZyBmb3IgdGhlCj4gKyAqIGxhc3QgbG9nIHBhZ2Ugd3JpdHRlbiB0byB0aGUgZmls
ZQo+ICsgKi8KPiArc3RhdGljIGludCBsYXN0X2xvZ19sc24oc3RydWN0IG50ZnNfbG9nICpsb2cp
Cj4gK3sKClsuLi5dCgo+ICt0YWlsX3JlYWQ6Cj4gKwlmaXJzdF90YWlsID0gZmlyc3RfdGFpbF9w
cmV2Owo+ICsJZmluYWxfb2ZmID0gZmluYWxfb2ZmX3ByZXY7Cj4gKwo+ICsJc2Vjb25kX3RhaWwg
PSBzZWNvbmRfdGFpbF9wcmV2Owo+ICsJc2Vjb25kX29mZiA9IHNlY29uZF9vZmZfcHJldjsKPiAr
Cj4gKwlwYWdlX2NudCA9IHBhZ2VfcG9zID0gMTsKPiArCj4gKwljdXJwYWdlX29mZiA9IHNlcV9i
YXNlID09IGxvZy0+c2VxX251bSA/IG1pbihsb2ctPm5leHRfcGFnZSwgcGFnZV9vZmYpCj4gKwkJ
CQkJICAgICAgIDogbG9nLT5uZXh0X3BhZ2U7Cj4gKwo+ICsJd3JhcHBlZF9maWxlID0KPiArCQlj
dXJwYWdlX29mZiA9PSBsb2ctPmZpcnN0X3BhZ2UgJiYKPiArCQkhKGxvZy0+bF9mbGFncyAmIChO
VEZTTE9HX05PX0xBU1RfTFNOIHwgTlRGU0xPR19SRVVTRV9UQUlMKSk7Cj4gKwo+ICsJZXhwZWN0
ZWRfc2VxID0gd3JhcHBlZF9maWxlID8gKGxvZy0+c2VxX251bSArIDEpIDogbG9nLT5zZXFfbnVt
Owo+ICsKPiArCW5leHRwYWdlX29mZiA9IGN1cnBhZ2Vfb2ZmOwoKVGhpcyAnbmV4dHBhZ2Vfb2Zm
JyBpcyBvdmVyd3JpdHRlbiBhIGZldyBsaW5lcyBiZWxvdy4KRWl0aGVyIGl0IGlzIHVzZWxlc3Ms
IGVpdGhlciB0aGVyZSBpcyBhbiBpc3N1ZSBpbiB0aGUgbG9naWMuCgo+ICsKPiArbmV4dF9wYWdl
Ogo+ICsJdGFpbF9wYWdlID0gTlVMTDsKPiArCS8qIFJlYWQgdGhlIG5leHQgbG9nIHBhZ2UgKi8K
PiArCWVyciA9IHJlYWRfbG9nX3BhZ2UobG9nLCBjdXJwYWdlX29mZiwgJnBhZ2UsICZ1c2FfZXJy
b3IpOwo+ICsKPiArCS8qIENvbXB1dGUgdGhlIG5leHQgbG9nIHBhZ2Ugb2Zmc2V0IHRoZSBmaWxl
ICovCj4gKwluZXh0cGFnZV9vZmYgPSBuZXh0X3BhZ2Vfb2ZmKGxvZywgY3VycGFnZV9vZmYpOwo+
ICsJd3JhcHBlZCA9IG5leHRwYWdlX29mZiA9PSBsb2ctPmZpcnN0X3BhZ2U7CmhlcmUuCgo+ICsK
PiArCWlmICh0YWlscyA+IDEpIHsKPiArCQlzdHJ1Y3QgUkVDT1JEX1BBR0VfSERSICpjdXJfcGFn
ZSA9Cj4gKwkJCUFkZDJQdHIocGFnZV9idWZzLCBjdXJwYWdlX29mZiAtIHBhZ2Vfb2ZmKTsKPiAr
Cj4gKwkJaWYgKGN1cnBhZ2Vfb2ZmID09IHNhdmVkX29mZikgewo+ICsJCQl0YWlsX3BhZ2UgPSBj
dXJfcGFnZTsKPiArCQkJZ290byB1c2VfdGFpbF9wYWdlOwo+ICsJCX0KPiArCgpbLi4uXQoKPiAr
aW50IGxvZ19yZXBsYXkoc3RydWN0IG50ZnNfaW5vZGUgKm5pLCBib29sICppbml0aWFsaXplZCkK
PiArewoKWy4uLl0KCj4gKwo+ICsJdmNuID0gbGU2NF90b19jcHUobHJoLT50YXJnZXRfdmNuKTsK
PiArCXZjbiAmPSB+KGxvZy0+Y2xzdF9wZXJfcGFnZSAtIDEpOwo+ICsKClRoaXMgJ3ZjbicgaXMg
b3ZlcndyaXR0ZW4gYSBmZXcgbGluZXMgYmVsb3cuCkVpdGhlciBpdCBpcyB1c2VsZXNzLCBlaXRo
ZXIgdGhlcmUgaXMgYW4gaXNzdWUgaW4gdGhlIGxvZ2ljLgoKPiArYWRkX2FsbG9jYXRlZF92Y25z
Ogo+ICsJZm9yIChpID0gMCwgdmNuID0gbGU2NF90b19jcHUobHJoLT50YXJnZXRfdmNuKSwKCmhl
cmUKCj4gKwkgICAgc2l6ZSA9ICh2Y24gKyAxKSA8PCBzYmktPmNsdXN0ZXJfYml0czsKPiArCSAg
ICAgaSA8IHQxNjsgaSsrLCB2Y24gKz0gMSwgc2l6ZSArPSBzYmktPmNsdXN0ZXJfc2l6ZSkgewo+
ICsJCWF0dHIgPSBvYS0+YXR0cjsKPiArCQlpZiAoIWF0dHItPm5vbl9yZXMpIHsKPiArCQkJaWYg
KHNpemUgPiBsZTMyX3RvX2NwdShhdHRyLT5yZXMuZGF0YV9zaXplKSkKPiArCQkJCWF0dHItPnJl
cy5kYXRhX3NpemUgPSBjcHVfdG9fbGUzMihzaXplKTsKPiArCQl9IGVsc2Ugewo+ICsJCQlpZiAo
c2l6ZSA+IGxlNjRfdG9fY3B1KGF0dHItPm5yZXMuZGF0YV9zaXplKSkKPiArCQkJCWF0dHItPm5y
ZXMudmFsaWRfc2l6ZSA9IGF0dHItPm5yZXMuZGF0YV9zaXplID0KPiArCQkJCQlhdHRyLT5ucmVz
LmFsbG9jX3NpemUgPQo+ICsJCQkJCQljcHVfdG9fbGU2NChzaXplKTsKPiArCQl9Cj4gKwl9Cj4g
Kwo+ICsJdDE2ID0gbGUxNl90b19jcHUobHJoLT51bmRvX29wKTsKPiArCWlmIChjYW5fc2tpcF9h
Y3Rpb24odDE2KSkKPiArCQlnb3RvIHJlYWRfbmV4dF9sb2dfdW5kb19hY3Rpb247Cj4gKwo+ICsJ
LyogUG9pbnQgdG8gdGhlIFJlZG8gZGF0YSBhbmQgZ2V0IGl0cyBsZW5ndGggKi8KPiArCWRhdGEg
PSBBZGQyUHRyKGxyaCwgbGUxNl90b19jcHUobHJoLT51bmRvX29mZikpOwo+ICsJZGxlbiA9IGxl
MTZfdG9fY3B1KGxyaC0+dW5kb19sZW4pOwo+ICsKPiArCS8qIGl0IGlzIHRpbWUgdG8gYXBwbHkg
dGhlIHVuZG8gYWN0aW9uICovCj4gKwllcnIgPSBkb19hY3Rpb24obG9nLCBvZSwgbHJoLCB0MTYs
IGRhdGEsIGRsZW4sIHJlY19sZW4sIE5VTEwpOwoKVGhpcyAnZXJyJyBpcyB1bnVzZWQuCk1heWJl
IHRoZXJlIGlzIG5vdGhpbmcgdGhhdCB3ZSBjYW4gZG8sIG9yIHRoZSBlcnJvciBoYW5kbGluZyBp
cyBtaXNzaW5nLgoKPiArCj4gK3JlYWRfbmV4dF9sb2dfdW5kb19hY3Rpb246Cj4gKwkvKgo+ICsJ
ICogS2VlcCByZWFkaW5nIGFuZCBsb29waW5nIGJhY2sgdW50aWwgd2UgaGF2ZSByZWFkIHRoZQo+
ICsJICogbGFzdCByZWNvcmQgZm9yIHRoaXMgdHJhbnNhY3Rpb24KPiArCSAqLwo+ICsJZXJyID0g
cmVhZF9uZXh0X2xvZ19yZWMobG9nLCBsY2IsICZyZWNfbHNuKTsKPiArCWlmIChlcnIpCj4gKwkJ
Z290byBvdXQ7Cj4gKwoKWy4uLl0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
