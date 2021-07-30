Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 734283DB753
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 30 Jul 2021 12:42:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m9PyS-0003eH-Ii; Fri, 30 Jul 2021 10:42:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1m9Myk-0008Cl-NQ
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 07:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TxJpHw7D+ZCqj68Hf0ohuQMnEb5h/cOGBhA8MEW/9FE=; b=EOrmXMk9kpgymGX7t14w1mVIkW
 eUKpYOsCxpE84VHUf2OJHUtlECr/YB1uAg2Gv17uIaU8YS6d17qzMsAtHzc9goRpO4/56BH6BXC6H
 kEABvApFMBgyIMQT2L8Q06PMJeynLzno9caDDTjKk1jeMeFTHXC5E81915kDYExc9NRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TxJpHw7D+ZCqj68Hf0ohuQMnEb5h/cOGBhA8MEW/9FE=; b=lWLUNRXwRInsnwBGSaw+ZRprrr
 q64JrGLOw+xtXkCso24mWTgV+2eiNpwJ2/ShqscIjuCm67IVy1sZuk/lhg3SsiYeh476HYm/Eoo57
 kz1PvfmLdRynQWriaXgFNj8fAiOS6Tmz4DjaZW6tKL8qLoCDiE7SDD2oYg3t5C+faS1o=;
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1m9Myb-0003Ck-Jh
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 07:30:40 +0000
Received: from [10.0.2.15] ([86.243.172.93]) by mwinf5d81 with ME
 id bKWP2500H21Fzsu03KWPbY; Fri, 30 Jul 2021 09:30:29 +0200
X-ME-Helo: [10.0.2.15]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 30 Jul 2021 09:30:29 +0200
X-ME-IP: 86.243.172.93
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-6-almaz.alexandrovich@paragon-software.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <46dbc10f-37a1-80f7-b4b5-e49eb867eff2@wanadoo.fr>
Date: Fri, 30 Jul 2021 09:30:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210729134943.778917-6-almaz.alexandrovich@paragon-software.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.127 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1m9Myb-0003Ck-Jh
X-Mailman-Approved-At: Fri, 30 Jul 2021 10:42:38 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 05/10] fs/ntfs3: Add attrib
 operations
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
dCBhIG1pbm9yIApjbGVhbi11cC4KCkl0IGlzIHJlcG9ydGVkIG9ubHkgaWYgYSBuZXcgaXRlcmF0
aW9uIGlzIGRvbmUgYW5kIGlmIGl0IG1ha2VzIHNlbnNlIHRvIAppbmNsdWRlIGl0LgoKQ0oKCkxl
IDI5LzA3LzIwMjEgw6AgMTU6NDksIEtvbnN0YW50aW4gS29tYXJvdiBhIMOpY3JpdMKgOgo+IFRo
aXMgYWRkcyBhdHRyaWIgb3BlcmF0aW9ucwo+IAo+IFNpZ25lZC1vZmYtYnk6IEtvbnN0YW50aW4g
S29tYXJvdiA8YWxtYXouYWxleGFuZHJvdmljaEBwYXJhZ29uLXNvZnR3YXJlLmNvbT4KPiAtLS0K
PiAgIGZzL250ZnMzL2F0dHJpYi5jICAgfCAyMDgyICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgIGZzL250ZnMzL2F0dHJsaXN0LmMgfCAgNDU2ICsrKysrKysr
KysKPiAgIGZzL250ZnMzL3hhdHRyLmMgICAgfCAxMDQ2ICsrKysrKysrKysrKysrKysrKysrKysK
PiAgIDMgZmlsZXMgY2hhbmdlZCwgMzU4NCBpbnNlcnRpb25zKCspCj4gICBjcmVhdGUgbW9kZSAx
MDA2NDQgZnMvbnRmczMvYXR0cmliLmMKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBmcy9udGZzMy9h
dHRybGlzdC5jCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZnMvbnRmczMveGF0dHIuYwo+IAo+IGRp
ZmYgLS1naXQgYS9mcy9udGZzMy9hdHRyaWIuYyBiL2ZzL250ZnMzL2F0dHJpYi5jCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAuLmJjYTg1ZTdiNgo+IC0tLSAvZGV2L251
bGwKPiArKysgYi9mcy9udGZzMy9hdHRyaWIuYwoKWy4uLl0KCj4gKy8qCj4gKyAqIGxvYWQgcnVu
cyBmb3IgZ2l2ZW4gcmFuZ2UgW2Zyb20gdG8pCj4gKyAqLwo+ICtpbnQgYXR0cl9sb2FkX3J1bnNf
cmFuZ2Uoc3RydWN0IG50ZnNfaW5vZGUgKm5pLCBlbnVtIEFUVFJfVFlQRSB0eXBlLAo+ICsJCQkg
Y29uc3QgX19sZTE2ICpuYW1lLCB1OCBuYW1lX2xlbiwgc3RydWN0IHJ1bnNfdHJlZSAqcnVuLAo+
ICsJCQkgdTY0IGZyb20sIHU2NCB0bykKPiArewo+ICsJc3RydWN0IG50ZnNfc2JfaW5mbyAqc2Jp
ID0gbmktPm1pLnNiaTsKPiArCXU4IGNsdXN0ZXJfYml0cyA9IHNiaS0+Y2x1c3Rlcl9iaXRzOwo+
ICsJQ0xTVCB2Y24gPSBmcm9tID4+IGNsdXN0ZXJfYml0czsKClRoaXMgaW5pdGlhbGl6YXRpb24g
aXMgb3ZlcndyaXR0ZW4gaW4gdGhlIGZvciBsb29wIGJlbG93LgpJdCBjYW4gYmUgcmVtb3ZlZC4K
Cj4gKwlDTFNUIHZjbl9sYXN0ID0gKHRvIC0gMSkgPj4gY2x1c3Rlcl9iaXRzOwo+ICsJQ0xTVCBs
Y24sIGNsZW47Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWZvciAodmNuID0gZnJvbSA+PiBjbHVzdGVy
X2JpdHM7IHZjbiA8PSB2Y25fbGFzdDsgdmNuICs9IGNsZW4pIHsKCmhlcmUKCj4gKwkJaWYgKCFy
dW5fbG9va3VwX2VudHJ5KHJ1biwgdmNuLCAmbGNuLCAmY2xlbiwgTlVMTCkpIHsKPiArCQkJZXJy
ID0gYXR0cl9sb2FkX3J1bnNfdmNuKG5pLCB0eXBlLCBuYW1lLCBuYW1lX2xlbiwgcnVuLAo+ICsJ
CQkJCQkgdmNuKTsKPiArCQkJaWYgKGVycikKPiArCQkJCXJldHVybiBlcnI7Cj4gKwkJCWNsZW4g
PSAwOyAvKm5leHQgcnVuX2xvb2t1cF9lbnRyeSh2Y24pIG11c3QgYmUgc3VjY2VzcyovCj4gKwkJ
fQo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9CgpbLi4uXQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlz
dApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
