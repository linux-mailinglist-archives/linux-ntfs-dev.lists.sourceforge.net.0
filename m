Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB4995FD3
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 20 Aug 2019 15:19:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i042V-0006M9-Ea; Tue, 20 Aug 2019 13:19:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkml@metux.net>) id 1i03Wx-0007sF-00
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 12:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+KyNX5g5JFWUk9RJ09KR/2vy8Twdev8n8MMMCiobpGo=; b=UmeBb1tx3w08dCdeuQIOYs+/IJ
 DO5pv1R4Kg5UIU/oFudKGyD03W+j2Myvdk+77rTEWBwjlQN7P3vmhZesOK+MdC9SYWjmxsrVFoLvC
 nYlEUY3Ka3Gfm0iIxGqG/okb36AicIiMeCZTa/dSIEc4m45AMcE2Hv/9r1gX2wM4aAFc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+KyNX5g5JFWUk9RJ09KR/2vy8Twdev8n8MMMCiobpGo=; b=GmaWN3Q81HynVzgHRCWGgDsief
 GwZbWBOiRAG0emspvWe76lZWGvGutM+SlJ/mVZJPGs33qGMvCUq+obJT6Sd9srJqLPwB2WDWSGhPz
 v/Sa5oMrt+d7Efbd8wt/qjRP7r4Jx+K99VHYgMQ12ufQUgpwkfHFxNnkWIF18cJN0x20=;
Received: from mout.kundenserver.de ([212.227.17.24])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i03Wv-009yAl-5v
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 12:46:30 +0000
Received: from [192.168.1.110] ([95.117.23.32]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M9nAB-1hwUEe3tHp-005rTd; Tue, 20 Aug 2019 14:21:38 +0200
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali.rohar@gmail.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>
References: <1566298572-12409-1-git-send-email-info@metux.net>
 <1566298572-12409-2-git-send-email-info@metux.net>
 <20190820111719.7blyk5jstgwde2ae@pali>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <02f5b546-5c30-4998-19b2-76b816a35371@metux.net>
Date: Tue, 20 Aug 2019 14:21:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820111719.7blyk5jstgwde2ae@pali>
Content-Language: en-US
X-Provags-ID: V03:K1:w2EFLBTJ6lqCF1cRxaNsgtU4Ayhs7iamqxZJGE8EtE5RjwoNC4t
 1wMHvKMvxJH7423duGgD6HfvMlQ5fOv9CxInJuDzD8b6Foay2URD9yM9ELRgAIiaqJ+RAlw
 3WZwlZ7Q2wnBdNZYvV8CtXbfSGpG1jO5ArUonHAYhqaFB5/k8Kpe6AxVlKldbotTp3Z8sjL
 a2YGl877B7l4bGQbSgKHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2Ilqwm7GdUs=:TQwtnZn3IlwB6moh9mJxcE
 6ONz9M0PV1dX37AcRDFcaXh8Bmgx76ByMpq3c8v3Sapr0GU8Wata/A6rThWCZBFX8+IhBj20G
 B8XDrd0oLHdCPneLDYu2QPyzwwXbsE1PUb4xJ/rtP3qVMypyF1l56+4c7RxB2a5LfZ8o+emLN
 S7z5A2PhwcrMJN4kPif4U+hOeWi/jD4k2RKflbr/iod3S3wIVaRO5N0loxWvoPqydqjQDhkMg
 noU8AkiB9Tl6kjlMLWQ8b+ytWzdFKhtetKU/EDRv8Ed7YU+uBeDfjq9mVZB0pcpk/hdEzIFvQ
 y1+PwShf/caomDOC2mjOLnrzB+pbrYZrNJ+NFN7JVYSpjx3pmCizuvCRaVjjBXNwltRMqvD7d
 ulNMbsLFYYn+KDh1Hlssb9nJEUd1BkMXJh0K6fyTYJMYI0hEt13OiztedsBK6KW2GS6ILwZvL
 hShqnpj5wVF56B61/yGWFnMWNn/BI2uNnyApJYwGWcoLXmiRNEN+U/rBtfad7pf+FAWlhTYwb
 tkRCaOwgtA7c6IH794FynLPVfJIXbPgvKbnlH/xfJt1CsZx5ZdaXNBhQPchSsx0/tBZgjrRLm
 8RpXZpusWU0fZwe5SjDVEnK9IXxpwlCFIj4qJGlcXP6uAXRJCp+oK7wprflxc7BY3O3emsnae
 /tuxnHAotBk/1FDXtbgzoLrj7YZKxG+KOWNsgw6LK28RPlcbu0xE3nEnoTJN7W/Zf9RqoiZC4
 QzNfrOvqfErMeE+OkKacBeYCQ1H4UAiPS9amBlFatthGOwatmV9U3CEYVtGXJEE6ypYKB872K
 WHWvVtwe/67l4Bv75AEKL+CunXvK112/Rl6jm3ijxknUMnDGrg15YUdRsDnRpnXwbdB58E5d2
 nQYllq8hul5eLUsJqZLAbKwb/MSqGjid0M6IB7s05GyfF1nzCTIA+unE/QR7B9Wd1Gp6yE7Rz
 oM9kBxHtNc/ae67BiIh7fsvMp/6eed6cmTaf/vEYINcXLfcRa8i2h7P13kTV5Ytqcjz5TNXbX
 Hw==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1i03Wv-009yAl-5v
X-Mailman-Approved-At: Tue, 20 Aug 2019 13:19:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/2] drivers: input: mouse: alps: drop
 unneeded likely() call around IS_ERR()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gMjAuMDguMTkgMTM6MTcsIFBhbGkgUm9ow6FyIHdyb3RlOgo+IE9uIFR1ZXNkYXkgMjAgQXVn
dXN0IDIwMTkgMTI6NTY6MTIgRW5yaWNvIFdlaWdlbHQsIG1ldHV4IElUIGNvbnN1bHQgd3JvdGU6
Cj4+IEZyb206IEVucmljbyBXZWlnZWx0IDxpbmZvQG1ldHV4Lm5ldD4KPj4KPj4gSVNfRVJSKCkg
YWxyZWFkeSBjYWxscyB1bmxpa2VseSgpLCBzbyB0aGlzIGV4dHJhIHVubGlrZWx5KCkgY2FsbAo+
PiBhcm91bmQgSVNfRVJSKCkgaXMgbm90IG5lZWRlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRW5y
aWNvIFdlaWdlbHQgPGluZm9AbWV0dXgubmV0Pgo+PiAtLS0KPj4gICBkcml2ZXJzL2lucHV0L21v
dXNlL2FscHMuYyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW5wdXQvbW91c2UvYWxwcy5j
IGIvZHJpdmVycy9pbnB1dC9tb3VzZS9hbHBzLmMKPj4gaW5kZXggMzQ3MDBlZC4uZWQxNjYxNCAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pbnB1dC9tb3VzZS9hbHBzLmMKPj4gKysrIGIvZHJpdmVy
cy9pbnB1dC9tb3VzZS9hbHBzLmMKPj4gQEAgLTE0NzYsNyArMTQ3Niw3IEBAIHN0YXRpYyB2b2lk
IGFscHNfcmVwb3J0X2JhcmVfcHMyX3BhY2tldChzdHJ1Y3QgcHNtb3VzZSAqcHNtb3VzZSwKPj4g
ICAJCS8qIE9uIFYyIGRldmljZXMgdGhlIER1YWxQb2ludCBTdGljayByZXBvcnRzIGJhcmUgcGFj
a2V0cyAqLwo+PiAgIAkJZGV2ID0gcHJpdi0+ZGV2MjsKPj4gICAJCWRldjIgPSBwc21vdXNlLT5k
ZXY7Cj4+IC0JfSBlbHNlIGlmICh1bmxpa2VseShJU19FUlJfT1JfTlVMTChwcml2LT5kZXYzKSkp
IHsKPj4gKwl9IGVsc2UgaWYgKElTX0VSUl9PUl9OVUxMKHByaXYtPmRldjMpKSB7Cj4+ICAgCQkv
KiBSZWdpc3RlciBkZXYzIG1vdXNlIGlmIHdlIHJlY2VpdmVkIFBTLzIgcGFja2V0IGZpcnN0IHRp
bWUgKi8KPj4gICAJCWlmICghSVNfRVJSKHByaXYtPmRldjMpKQo+PiAgIAkJCXBzbW91c2VfcXVl
dWVfd29yayhwc21vdXNlLCAmcHJpdi0+ZGV2M19yZWdpc3Rlcl93b3JrLAo+IAo+IEhlbGxvISBU
d28gbW9udGhzIGFnbyBJIGFscmVhZHkgc2F3IHRoaXMgcGF0Y2guIFNlZSBkaXNjdXNzaW9uOgo+
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5NzcwOTkvCgpwaHVoLCB0aGF0
J3MgbG9uZyBjaGFpbiBvZiBsaW5rcyB0byBmb2xvdyA7LSkKClNvLCB5b3VyIHByaW1hcnkgYXJn
dW1lbnQgaXMganVzdCAqZG9jdW1lbnRpbmcqIHRoYXQgdGhpcyBzdXBwb3NlZCB0bwpiZSBhIHJh
cmUgY29uZGl0aW9uID8KCkluIHRoYXQgY2FzZSwgd291bGRuJ3QgYSBjb21tZW50IGJlIG1vcmUg
c3VpdGFibGUgZm9yIHRoYXQgPwoKSXQgc2VlbXMgdGhhdCB0aGlzIGlzc3VlIGlzIGNvbWluZyB1
cCBhZ2FpbiBhbmQgYWdhaW4gLi4uIHdoZW4gcGVvcGxlCnJ1biBjb2NjaSBzY2FucyAobGlrZSBJ
IGRpZG4ndCksIEknZCBzdXNwZWN0IHRoaXMgdG8gaGFwcGVuIGV2ZW4gbW9yZQppbiB0aGUgZnV0
dXJlLgoKCi0tbXR4CgotLSAKRW5yaWNvIFdlaWdlbHQsIG1ldHV4IElUIGNvbnN1bHQKRnJlZSBz
b2Z0d2FyZSBhbmQgTGludXggZW1iZWRkZWQgZW5naW5lZXJpbmcKaW5mb0BtZXR1eC5uZXQgLS0g
KzQ5LTE1MS0yNzU2NTI4NwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vbGludXgtbnRmcy1kZXYK
