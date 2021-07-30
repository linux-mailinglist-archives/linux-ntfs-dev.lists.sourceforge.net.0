Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4163F3DB751
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 30 Jul 2021 12:42:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m9PyS-0003ei-RN; Fri, 30 Jul 2021 10:42:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1m9Nch-0000b9-Qn
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 08:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dsu8pp9RUoYo7qGDXo2LNAtDiPmM2JTZ64W7/NMCVzI=; b=lLcaE+wK3inIZpSHZVnr8ZfWxY
 YMEwPonyUoEclEuNqr3qJ062itZLc0HmLJJyZ3rabJ1uysrImtM0WU6yryCozGOaWSpgGgqO6W0jj
 L9D2l3+iHuiJqWil/t/oZkLZSqG3pvMxDSHyydY4NvflswkKmO4Y6dUwpBOjdbCvGLNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dsu8pp9RUoYo7qGDXo2LNAtDiPmM2JTZ64W7/NMCVzI=; b=gQK5ZtPNUpGfo5C/1ikRrY/Oyt
 Y3FeJkiytu8eO1ft2221IeQVyOzKb5NZFWRGD0Ua82RR8Fzx7PG8ajW0zWWYOl329y2tjFmcKVm/5
 r78/uE12EOtq17vK7uX1iCq9v4JS3c5QKXBWL15x5rFdsN6tCtsJIYckp/YeInzdpCKM=;
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1m9Ncf-007XOx-AR
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 08:12:03 +0000
Received: from [10.0.2.15] ([86.243.172.93]) by mwinf5d81 with ME
 id bLBr2500S21Fzsu03LBrEA; Fri, 30 Jul 2021 10:11:53 +0200
X-ME-Helo: [10.0.2.15]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 30 Jul 2021 10:11:53 +0200
X-ME-IP: 86.243.172.93
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-4-almaz.alexandrovich@paragon-software.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <33a0225a-7264-ff4c-b48e-d1a1c3d368c4@wanadoo.fr>
Date: Fri, 30 Jul 2021 10:11:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210729134943.778917-4-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1m9Ncf-007XOx-AR
X-Mailman-Approved-At: Fri, 30 Jul 2021 10:42:38 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 03/10] fs/ntfs3: Add bitmap
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

TGUgMjkvMDcvMjAyMSDDoCAxNTo0OSwgS29uc3RhbnRpbiBLb21hcm92IGEgw6ljcml0wqA6Cj4g
VGhpcyBhZGRzIGJpdG1hcAo+IAo+IFNpZ25lZC1vZmYtYnk6IEtvbnN0YW50aW4gS29tYXJvdiA8
YWxtYXouYWxleGFuZHJvdmljaEBwYXJhZ29uLXNvZnR3YXJlLmNvbT4KPiAtLS0KPiAgIGZzL250
ZnMzL2JpdGZ1bmMuYyB8ICAxMzUgKysrKwo+ICAgZnMvbnRmczMvYml0bWFwLmMgIHwgMTUxOSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBj
aGFuZ2VkLCAxNjU0IGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9udGZz
My9iaXRmdW5jLmMKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9udGZzMy9iaXRtYXAuYwo+IAo+
IGRpZmYgLS1naXQgYS9mcy9udGZzMy9iaXRmdW5jLmMgYi9mcy9udGZzMy9iaXRmdW5jLmMKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMC4uMmRlNWZhZWYyCj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2ZzL250ZnMzL2JpdGZ1bmMuYwoKWy4uLl0KCj4gK2Jvb2wgYXJlX2Jp
dHNfc2V0KGNvbnN0IHVsb25nICpsbWFwLCBzaXplX3QgYml0LCBzaXplX3QgbmJpdHMpCj4gK3sK
PiArCXU4IG1hc2s7Cj4gKwlzaXplX3QgcG9zID0gYml0ICYgNzsKPiArCWNvbnN0IHU4ICptYXAg
PSAodTggKilsbWFwICsgKGJpdCA+PiAzKTsKPiArCj4gKwlpZiAocG9zKSB7Cj4gKwkJaWYgKDgg
LSBwb3MgPj0gbmJpdHMpIHsKPiArCQkJbWFzayA9IGZpbGxfbWFza1twb3MgKyBuYml0c10gJiB6
ZXJvX21hc2tbcG9zXTsKPiArCQkJcmV0dXJuICFuYml0cyB8fCAoKm1hcCAmIG1hc2spID09IG1h
c2s7Cj4gKwkJfQo+ICsKPiArCQltYXNrID0gemVyb19tYXNrW3Bvc107Cj4gKwkJaWYgKCgqbWFw
KysgJiBtYXNrKSAhPSBtYXNrKQo+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gKwkJbmJpdHMgLT0gOCAt
IHBvczsKPiArCX0KPiArCj4gKwlwb3MgPSAoKHNpemVfdCltYXApICYgKHNpemVvZihzaXplX3Qp
IC0gMSk7Cj4gKwlpZiAocG9zKSB7Cj4gKwkJcG9zID0gc2l6ZW9mKHNpemVfdCkgLSBwb3M7Cj4g
KwkJaWYgKG5iaXRzID49IHBvcyAqIDgpIHsKPiArCQkJZm9yIChuYml0cyAtPSBwb3MgKiA4OyBw
b3M7IHBvcy0tLCBtYXArKykgewo+ICsJCQkJaWYgKCptYXAgIT0gMHhGRikKPiArCQkJCQlyZXR1
cm4gZmFsc2U7Cj4gKwkJCX0KPiArCQl9Cj4gKwl9Cj4gKwo+ICsJZm9yIChwb3MgPSBuYml0cyAv
IEJJVFNfSU5fU0laRV9UOyBwb3M7IHBvcy0tLCBtYXAgKz0gc2l6ZW9mKHNpemVfdCkpIHsKPiAr
CQlpZiAoKigoc2l6ZV90ICopbWFwKSAhPSBNSU5VU19PTkVfVCkKPiArCQkJcmV0dXJuIGZhbHNl
Owo+ICsJfQo+ICsKPiArCWZvciAocG9zID0gKG5iaXRzICUgQklUU19JTl9TSVpFX1QpID4+IDM7
IHBvczsgcG9zLS0sIG1hcCsrKSB7Cj4gKwkJaWYgKCptYXAgIT0gMHhGRikKPiArCQkJcmV0dXJu
IGZhbHNlOwo+ICsJfQo+ICsKPiArCXBvcyA9IG5iaXRzICYgNzsKPiArCWlmIChwb3MpIHsKPiAr
CQl1OCBtYXNrID0gZmlsbF9tYXNrW3Bvc107CgpUaGVyZSBpcyBubyBuZWVkIHRvIGRlZmluZSBh
IG5ldyAnbWFzaycgdmFyaWFibGUgaGVyZSwgaXQganVzdCBzaGFkb3dzIAp0aGUgYWxyZWFkeSBl
eGlzdGluZyBvbmUuICd1OCcgY2FuIGJlIHJlbW92ZWQuCgo+ICsKPiArCQlpZiAoKCptYXAgJiBt
YXNrKSAhPSBtYXNrKQo+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gKwl9Cj4gKwo+ICsJLy8gQWxsIGJp
dHMgYXJlIG9uZXMKPiArCXJldHVybiB0cnVlOwo+ICt9Cj4gZGlmZiAtLWdpdCBhL2ZzL250ZnMz
L2JpdG1hcC5jIGIvZnMvbnRmczMvYml0bWFwLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMC4uMzJhYWIwMDMxCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2ZzL250ZnMz
L2JpdG1hcC5jCgpbLi4uXQoKPiArYm9vbCB3bmRfaXNfdXNlZChzdHJ1Y3Qgd25kX2JpdG1hcCAq
d25kLCBzaXplX3QgYml0LCBzaXplX3QgYml0cykKPiArewo+ICsJYm9vbCByZXQgPSBmYWxzZTsK
PiArCXN0cnVjdCBzdXBlcl9ibG9jayAqc2IgPSB3bmQtPnNiOwo+ICsJc2l6ZV90IGl3ID0gYml0
ID4+IChzYi0+c19ibG9ja3NpemVfYml0cyArIDMpOwo+ICsJdTMyIHdiaXRzID0gOCAqIHNiLT5z
X2Jsb2Nrc2l6ZTsKPiArCXUzMiB3Yml0ID0gYml0ICYgKHdiaXRzIC0gMSk7Cj4gKwlzaXplX3Qg
ZW5kOwo+ICsJc3RydWN0IHJiX25vZGUgKm47Cj4gKwlzdHJ1Y3QgZV9ub2RlICplOwo+ICsKPiAr
CWlmIChSQl9FTVBUWV9ST09UKCZ3bmQtPnN0YXJ0X3RyZWUpKQo+ICsJCWdvdG8gdXNlX3duZDsK
PiArCj4gKwllbmQgPSBiaXQgKyBiaXRzOwo+ICsJbiA9IHJiX2xvb2t1cCgmd25kLT5zdGFydF90
cmVlLCBlbmQgLSAxKTsKPiArCWlmICghbikKPiArCQlnb3RvIHVzZV93bmQ7Cj4gKwo+ICsJZSA9
IHJiX2VudHJ5KG4sIHN0cnVjdCBlX25vZGUsIHN0YXJ0Lm5vZGUpOwo+ICsJaWYgKGUtPnN0YXJ0
LmtleSArIGUtPmNvdW50LmtleSA+IGJpdCkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICt1c2Vf
d25kOgo+ICsJd2hpbGUgKGl3IDwgd25kLT5ud25kICYmIGJpdHMpIHsKPiArCQl1MzIgdGFpbCwg
b3A7Cj4gKwo+ICsJCWlmICh1bmxpa2VseShpdyArIDEgPT0gd25kLT5ud25kKSkKPiArCQkJd2Jp
dHMgPSB3bmQtPmJpdHNfbGFzdDsKPiArCj4gKwkJdGFpbCA9IHdiaXRzIC0gd2JpdDsKPiArCQlv
cCA9IHRhaWwgPCBiaXRzID8gdGFpbCA6IGJpdHM7Cj4gKwo+ICsJCWlmICh3bmQtPmZyZWVfYml0
c1tpd10pIHsKPiArCQkJYm9vbCByZXQ7CgpUaGlzICdyZXQnIHNoYWRvd3MgdGhlIG9uZSBkZWZp
bmVkIGFib3ZlLiBJdCBsb29rcyBzcHVyaW91cyBhbmQgY291bGQgCmNlcnRhaW5seSBiZSByZW1v
dmVkLgpIb3dldmVyIGlzIGxvb2tzIHNhZmUgYmVjYXVzZS4uLgoKPiArCQkJc3RydWN0IGJ1ZmZl
cl9oZWFkICpiaCA9IHduZF9tYXAod25kLCBpdyk7Cj4gKwo+ICsJCQlpZiAoSVNfRVJSKGJoKSkK
PiArCQkJCWdvdG8gb3V0Owo+ICsKPiArCQkJcmV0ID0gYXJlX2JpdHNfc2V0KCh1bG9uZyAqKWJo
LT5iX2RhdGEsIHdiaXQsIG9wKTsKPiArCQkJcHV0X2JoKGJoKTsKPiArCQkJaWYgKCFyZXQpCj4g
KwkJCQlnb3RvIG91dDsKCi4uLiBpZiAqdGhpcyogJ3JldCcgaXMgZmFsc2UsIHRoZSAqb3RoZXIq
ICdyZXQnIGlzIGZhbHNlIGFzIHdlbGwuCgo+ICsJCX0KPiArCj4gKwkJYml0cyAtPSBvcDsKPiAr
CQl3Yml0ID0gMDsKPiArCQlpdyArPSAxOwo+ICsJfQo+ICsJcmV0ID0gdHJ1ZTsKPiArCj4gK291
dDoKPiArCXJldHVybiByZXQ7Cj4gK30KClsuLi5dCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0CkxpbnV4
LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
