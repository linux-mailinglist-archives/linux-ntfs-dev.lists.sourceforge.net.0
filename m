Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 165DA3DB754
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 30 Jul 2021 12:42:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m9PyS-0003ez-T2; Fri, 30 Jul 2021 10:42:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1m9NtG-0007RA-HC
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 08:29:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EqksX5OyVqjbGV+knrCSmox/2l4JysZ2ojU/JcwIwTM=; b=b32svHzSvWEY6Lc2bV1WsCcFV9
 SYsTwfQkZISUmA4owAvgzWIFrIza6e5p3CInqaY8j9pjKgMFYW8LNqyQJR5IY8T5jbDs5fo118EVb
 rWKGeslfFoLlYgcAanH47SO8+gkzLN6qTlgXMVlMIBUAc3U6ll7RQAMt/qKBMQWdP4Cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EqksX5OyVqjbGV+knrCSmox/2l4JysZ2ojU/JcwIwTM=; b=SstXxjXpRlQuEnk5KsZ8pKO8cB
 Gq34+z93nlhvAkTQQEIvUn0P9YUvBbPVBQOcvz2avym6oqLdjdOpiX3brAHPssoyhbxKYwjn8lO+r
 E6ywtUsspABrT/Rn/9aRNXGDt5jy9tRHB15YkCnAXJXyPvcdzCsFyK0u+Ql8o4UA/REI=;
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1m9Nt8-007YTe-VV
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 08:29:10 +0000
Received: from [10.0.2.15] ([86.243.172.93]) by mwinf5d81 with ME
 id bLUv2500421Fzsu03LUvMV; Fri, 30 Jul 2021 10:28:56 +0200
X-ME-Helo: [10.0.2.15]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 30 Jul 2021 10:28:56 +0200
X-ME-IP: 86.243.172.93
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-3-almaz.alexandrovich@paragon-software.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <22a587a2-a7d0-2250-7f3d-8e6fe3b98a28@wanadoo.fr>
Date: Fri, 30 Jul 2021 10:28:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210729134943.778917-3-almaz.alexandrovich@paragon-software.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m9Nt8-007YTe-VV
X-Mailman-Approved-At: Fri, 30 Jul 2021 10:42:38 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 02/10] fs/ntfs3: Add initialization
 of super block
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
bid0IHRha2UgaXQgdG9vIHNlcmlvdXNseSBpbnRvIGNvbnNpZGVyYXRpb24sIHRoaXMgaXMganVz
dCBzb21lIG1pbm9yIApjbGVhbi11cC4KClRoZSBvbmx5IG9uZSB0aGF0IG1heSBsb29rIGludGVy
ZXN0ZWQgaXMgaW4gJ2luZHhfZmluZCgpJwoKQ0oKCgpMZSAyOS8wNy8yMDIxIMOgIDE1OjQ5LCBL
b25zdGFudGluIEtvbWFyb3YgYSDDqWNyaXTCoDoKPiBUaGlzIGFkZHMgaW5pdGlhbGl6YXRpb24g
b2Ygc3VwZXIgYmxvY2sKPiAKPiBTaWduZWQtb2ZmLWJ5OiBLb25zdGFudGluIEtvbWFyb3YgPGFs
bWF6LmFsZXhhbmRyb3ZpY2hAcGFyYWdvbi1zb2Z0d2FyZS5jb20+Cj4gLS0tCj4gICBmcy9udGZz
My9mc250ZnMuYyB8IDI1NDIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICAgZnMvbnRmczMvaW5kZXguYyAgfCAyNjQxICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwo+ICAgZnMvbnRmczMvaW5vZGUuYyAgfCAyMDM0ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIGZzL250ZnMzL3N1cGVyLmMgIHwgMTUw
MCArKysrKysrKysrKysrKysrKysrKysrKysrCj4gICA0IGZpbGVzIGNoYW5nZWQsIDg3MTcgaW5z
ZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZzL250ZnMzL2ZzbnRmcy5jCj4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgZnMvbnRmczMvaW5kZXguYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGZzL250ZnMzL2lub2RlLmMKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9udGZzMy9zdXBlci5j
Cj4gCj4gZGlmZiAtLWdpdCBhL2ZzL250ZnMzL2ZzbnRmcy5jIGIvZnMvbnRmczMvZnNudGZzLmMK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMC4uMzI3MzU2YjA4Cj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2ZzL250ZnMzL2ZzbnRmcy5jCgpbLi4uXQoKPiAraW50IG50ZnNf
bG9va19mb3JfZnJlZV9zcGFjZShzdHJ1Y3QgbnRmc19zYl9pbmZvICpzYmksIENMU1QgbGNuLCBD
TFNUIGxlbiwKPiArCQkJICAgICBDTFNUICpuZXdfbGNuLCBDTFNUICpuZXdfbGVuLAo+ICsJCQkg
ICAgIGVudW0gQUxMT0NBVEVfT1BUIG9wdCkKPiArewoKWy4uLl0KCj4gKwo+ICsJaWYgKHpsZW4g
PD0gTlRGU19NSU5fTUZUX1pPTkUpCj4gKwkJZ290byBub19zcGFjZTsKPiArCj4gKwkvKiBIb3cg
bWFueSBjbHVzdGVycyB0byBjYXQgZnJvbSB6b25lICovCj4gKwl6bGNuID0gd25kX3pvbmVfYml0
KHduZCk7Cj4gKwl6bGVuMiA9IHpsZW4gPj4gMTsKPiArCXp0cmltID0gbGVuID4gemxlbiA/IHps
ZW4gOiAobGVuID4gemxlbjIgPyBsZW4gOiB6bGVuMik7Cj4gKwluZXdfemxlbiA9IHpsZW4gLSB6
dHJpbTsKPiArCj4gKwlpZiAobmV3X3psZW4gPCBOVEZTX01JTl9NRlRfWk9ORSkgewo+ICsJCW5l
d196bGVuID0gTlRGU19NSU5fTUZUX1pPTkU7Cj4gKwkJaWYgKG5ld196bGVuID4gemxlbikKPiAr
CQkJbmV3X3psZW4gPSB6bGVuOwoKVW5sZXNzIEkgbWlzc2VkIHNvbWV0aGluZywgJ3psZW4nIGlz
IGtub3duIHRvIGJlID4gTlRGU19NSU5fTUZUX1pPTkUgCmhlcmUgKHNlZSBhIGZldyBsaW5lcyBh
Ym92ZSkuCkFuZCwgaWYgdGhpcyAnaWYnIGlzIHRha2VuLCAnbmV3X3psZW4nIGlzIDw9IE5URlNf
TUlOX01GVF9aT05FLgoKU28gdGhpcyB0ZXN0IGNhbiBuZXZlciBtYXRjaCBhbmQgY2FuIGJlIHJl
bW92ZWQuIChvciByZW1vdmVkIGJ5IGEgCmNvbW1lbnQgaWYgaXQgbWFrZXMgc2Vuc2UpCgo+ICsJ
fQo+ICsKPiArCXduZF96b25lX3NldCh3bmQsIHpsY24sIG5ld196bGVuKTsKPiArCj4gKwkvKiBh
bGxvY2F0ZSBjb250aW51ZXMgY2x1c3RlcnMgKi8KPiArCSpuZXdfbGVuID0KPiArCQl3bmRfZmlu
ZCh3bmQsIGxlbiwgMCwKPiArCQkJIEJJVE1BUF9GSU5EX01BUktfQVNfVVNFRCB8IEJJVE1BUF9G
SU5EX0ZVTEwsICZhX2xjbik7CgpbLi4uXQoKPiBkaWZmIC0tZ2l0IGEvZnMvbnRmczMvaW5kZXgu
YyBiL2ZzL250ZnMzL2luZGV4LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAw
MDAwMC4uOTMxYTcyNDFlCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2ZzL250ZnMzL2luZGV4LmMK
PiBAQCAtMCwwICsxLDI2NDEgQEAKClsuLi5dCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IE5URlNf
REUgKmhkcl9maW5kX3NwbGl0KGNvbnN0IHN0cnVjdCBJTkRFWF9IRFIgKmhkcikKPiArewo+ICsJ
c2l6ZV90IG87Cj4gKwljb25zdCBzdHJ1Y3QgTlRGU19ERSAqZSA9IGhkcl9maXJzdF9kZShoZHIp
Owo+ICsJdTMyIHVzZWRfMiA9IGxlMzJfdG9fY3B1KGhkci0+dXNlZCkgPj4gMTsKPiArCXUxNiBl
c2l6ZSA9IGxlMTZfdG9fY3B1KGUtPnNpemUpOwoKZSBpcyBOVUxMIGNoZWNrIHRoZSBsaW5lIGFm
dGVyLgoKPiArCj4gKwlpZiAoIWUgfHwgZGVfaXNfbGFzdChlKSkKPiArCQlyZXR1cm4gTlVMTDsK
PiArCj4gKwlmb3IgKG8gPSBsZTMyX3RvX2NwdShoZHItPmRlX29mZikgKyBlc2l6ZTsgbyA8IHVz
ZWRfMjsgbyArPSBlc2l6ZSkgewo+ICsJCWNvbnN0IHN0cnVjdCBOVEZTX0RFICpwID0gZTsKPiAr
Cj4gKwkJZSA9IEFkZDJQdHIoaGRyLCBvKTsKPiArCj4gKwkJLyogV2UgbXVzdCBub3QgcmV0dXJu
IEVORCBlbnRyeSAqLwo+ICsJCWlmIChkZV9pc19sYXN0KGUpKQo+ICsJCQlyZXR1cm4gcDsKPiAr
Cj4gKwkJZXNpemUgPSBsZTE2X3RvX2NwdShlLT5zaXplKTsKPiArCX0KPiArCj4gKwlyZXR1cm4g
ZTsKPiArfQoKWy4uLl0KCj4gK2ludCBpbmR4X2ZpbmQoc3RydWN0IG50ZnNfaW5kZXggKmluZHgs
IHN0cnVjdCBudGZzX2lub2RlICpuaSwKPiArCSAgICAgIGNvbnN0IHN0cnVjdCBJTkRFWF9ST09U
ICpyb290LCBjb25zdCB2b2lkICprZXksIHNpemVfdCBrZXlfbGVuLAo+ICsJICAgICAgY29uc3Qg
dm9pZCAqY3R4LCBpbnQgKmRpZmYsIHN0cnVjdCBOVEZTX0RFICoqZW50cnksCj4gKwkgICAgICBz
dHJ1Y3QgbnRmc19mbmQgKmZuZCkKPiArewo+ICsJaW50IGVycjsKPiArCXN0cnVjdCBOVEZTX0RF
ICplOwo+ICsJY29uc3Qgc3RydWN0IElOREVYX0hEUiAqaGRyOwo+ICsJc3RydWN0IGluZHhfbm9k
ZSAqbm9kZTsKPiArCj4gKwlpZiAoIXJvb3QpCj4gKwkJcm9vdCA9IGluZHhfZ2V0X3Jvb3QoJm5p
LT5kaXIsIG5pLCBOVUxMLCBOVUxMKTsKPiArCj4gKwlpZiAoIXJvb3QpIHsKPiArCQllcnIgPSAt
RUlOVkFMOwo+ICsJCWdvdG8gb3V0Owo+ICsJfQo+ICsKPiArCWhkciA9ICZyb290LT5paGRyOwo+
ICsKPiArCS8qIENoZWNrIGNhY2hlICovCj4gKwllID0gZm5kLT5sZXZlbCA/IGZuZC0+ZGVbZm5k
LT5sZXZlbCAtIDFdIDogZm5kLT5yb290X2RlOwo+ICsJaWYgKGUgJiYgIWRlX2lzX2xhc3QoZSkg
JiYKPiArCSAgICAhKCppbmR4LT5jbXApKGtleSwga2V5X2xlbiwgZSArIDEsIGxlMTZfdG9fY3B1
KGUtPmtleV9zaXplKSwgY3R4KSkgewo+ICsJCSplbnRyeSA9IGU7Cj4gKwkJKmRpZmYgPSAwOwo+
ICsJCXJldHVybiAwOwo+ICsJfQo+ICsKPiArCS8qIFNvZnQgZmluZGVyIHJlc2V0ICovCj4gKwlm
bmRfY2xlYXIoZm5kKTsKPiArCj4gKwkvKiBMb29rdXAgZW50cnkgdGhhdCBpcyA8PSB0byB0aGUg
c2VhcmNoIHZhbHVlICovCj4gKwllID0gaGRyX2ZpbmRfZShpbmR4LCBoZHIsIGtleSwga2V5X2xl
biwgY3R4LCBkaWZmKTsKPiArCWlmICghZSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlp
ZiAoZm5kKQoKVGhpcyBOVUxMIGNoZWNrIGxvb2tzIHNwdXJpb3VzIGJlY2F1c2UgJ2ZuZCcgaGFz
IGFscmVhZHkgYmVlbiAKZGVyZWZlcmVuY2VkIHNldmVyYWwgdGltZXMgYXQgdGhpcyBwb2ludC4K
RWl0aGVyIGl0IGlzIHVzZWxlc3MsIGVpdGhlciB0aGVyZSBpcyBzb21lIHRyb3VibGUgZWxzZXdo
ZXJlLgoKPiArCQlmbmQtPnJvb3RfZGUgPSBlOwo+ICsKPiArCWVyciA9IDA7Cj4gKwoKWy4uLl0K
Cj4gK3N0YXRpYyBpbnQgaW5keF9jcmVhdGVfYWxsb2NhdGUoc3RydWN0IG50ZnNfaW5kZXggKmlu
ZHgsIHN0cnVjdCBudGZzX2lub2RlICpuaSwKPiArCQkJCUNMU1QgKnZibikKPiArewo+ICsJaW50
IGVyciA9IC1FTk9NRU07CgpUaGlzIGluaXRpYWxpemF0aW9uIGlzIG92ZXJ3cml0dGVuIGJlbG93
LgpJdCBjYW4gYmUgcmVtb3ZlZC4KCj4gKwlzdHJ1Y3QgbnRmc19zYl9pbmZvICpzYmkgPSBuaS0+
bWkuc2JpOwo+ICsJc3RydWN0IEFUVFJJQiAqYml0bWFwOwo+ICsJc3RydWN0IEFUVFJJQiAqYWxs
b2M7Cj4gKwl1MzIgZGF0YV9zaXplID0gMXUgPDwgaW5keC0+aW5kZXhfYml0czsKPiArCXUzMiBh
bGxvY19zaXplID0gbnRmc191cF9jbHVzdGVyKHNiaSwgZGF0YV9zaXplKTsKPiArCUNMU1QgbGVu
ID0gYWxsb2Nfc2l6ZSA+PiBzYmktPmNsdXN0ZXJfYml0czsKPiArCWNvbnN0IHN0cnVjdCBJTkRF
WF9OQU1FUyAqaW4gPSAmc19pbmRleF9uYW1lc1tpbmR4LT50eXBlXTsKPiArCUNMU1QgYWxlbjsK
PiArCXN0cnVjdCBydW5zX3RyZWUgcnVuOwo+ICsKPiArCXJ1bl9pbml0KCZydW4pOwo+ICsKPiAr
CWVyciA9IGF0dHJfYWxsb2NhdGVfY2x1c3RlcnMoc2JpLCAmcnVuLCAwLCAwLCBsZW4sIE5VTEws
IDAsICZhbGVuLCAwLAo+ICsJCQkJICAgICBOVUxMKTsKCmhlcmUKCj4gKwlpZiAoZXJyKQo+ICsJ
CWdvdG8gb3V0Owo+ICsKPiArCWVyciA9IG5pX2luc2VydF9ub25yZXNpZGVudChuaSwgQVRUUl9B
TExPQywgaW4tPm5hbWUsIGluLT5uYW1lX2xlbiwKPiArCQkJCSAgICAmcnVuLCAwLCBsZW4sIDAs
ICZhbGxvYywgTlVMTCk7CgpbLi4uXQoKPiBkaWZmIC0tZ2l0IGEvZnMvbnRmczMvc3VwZXIuYyBi
L2ZzL250ZnMzL3N1cGVyLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MC4uYzU2MzQzMTI0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2ZzL250ZnMzL3N1cGVyLmMKClsu
Li5dCgo+ICtzdGF0aWMgaW50IG50ZnNfc3luY19mcyhzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBp
bnQgd2FpdCkKPiArewo+ICsJaW50IGVyciA9IDAsIGVycjI7Cj4gKwlzdHJ1Y3QgbnRmc19zYl9p
bmZvICpzYmkgPSBzYi0+c19mc19pbmZvOwo+ICsJc3RydWN0IG50ZnNfaW5vZGUgKm5pOwo+ICsJ
c3RydWN0IGlub2RlICppbm9kZTsKPiArCj4gKwluaSA9IHNiaS0+c2VjdXJpdHkubmk7Cj4gKwlp
ZiAobmkpIHsKPiArCQlpbm9kZSA9ICZuaS0+dmZzX2lub2RlOwo+ICsJCWVycjIgPSBfbmlfd3Jp
dGVfaW5vZGUoaW5vZGUsIHdhaXQpOwo+ICsJCWlmIChlcnIyICYmICFlcnIpCgonZXJyJyBpcyBr
bm93biB0byBiZSAwIGhlcmUsIHNvIHRoaXMgdGVzdCBjYW4gYmUgc2ltcGxpZmllZC4KCj4gKwkJ
CWVyciA9IGVycjI7Cj4gKwl9Cj4gKwo+ICsJbmkgPSBzYmktPm9iamlkLm5pOwo+ICsJaWYgKG5p
KSB7Cj4gKwkJaW5vZGUgPSAmbmktPnZmc19pbm9kZTsKPiArCQllcnIyID0gX25pX3dyaXRlX2lu
b2RlKGlub2RlLCB3YWl0KTsKPiArCQlpZiAoZXJyMiAmJiAhZXJyKQo+ICsJCQllcnIgPSBlcnIy
Owo+ICsJfQoKWy4uLl0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2xpbnV4LW50ZnMtZGV2Cg==
