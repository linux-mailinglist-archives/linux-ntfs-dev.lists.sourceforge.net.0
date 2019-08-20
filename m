Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C166964D6
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 20 Aug 2019 17:44:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i06Ij-0008Bs-FT; Tue, 20 Aug 2019 15:44:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali.rohar@gmail.com>) id 1i051a-0005oS-TK
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 14:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zOwERsJ6pnvcMb1zFd5T4pWVO52IElodtx1VRz6WwZc=; b=aCBFr9UGYiLlbB/RuzrIFKFfhs
 tCt4qeTt/jYxmlLdQPvuYi9vAIHJfk66oZk6cYcxAjUu4dd2BwOZIToyU7Yn6CNa+W0KRfsNpC3JF
 I/TV7C1MPN6A1zKeRC7rb5vuOycTjAf8Nz8qjQa9iU+yBvC0PUulxsQyVAV20YciLhSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zOwERsJ6pnvcMb1zFd5T4pWVO52IElodtx1VRz6WwZc=; b=HCOXMJHCN/wrZiea42o8cslSU/
 TtGVma68Nbjgnfl+6Qt4zRjb3SVl5CdLuD8VVWfqSOoxPSDjVhqRv4XsiAxTC6nlQL9QwGEWofi7r
 NmUbmiaIhj4hMhYwGte4SNy7DCZQzNU8brS9YJLiFqeb4La1aiQ+ru4hZObrC9iWEnIk=;
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i051Y-00DNJm-V8
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 14:22:14 +0000
Received: by mail-wm1-f66.google.com with SMTP id v15so2806014wml.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 20 Aug 2019 07:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zOwERsJ6pnvcMb1zFd5T4pWVO52IElodtx1VRz6WwZc=;
 b=APMDSk3K4vfysSa6iwAgwywlG0bhR9RPzJaIfw6l0XZ/Z6pmcw20OHla33HS5ZprcW
 SnbcsIPkiz1YIX9guf+vvqzZq36lwrCFjtq/9HcW8k02OqgNVHyRecbX3EG2pnkAY1KH
 lnzUnQntNaqsS4aUVIz9gQGA8ItHZo5iyyNEDhqyUnR3U4BTVh/FSuCQYLbY41OZk5fF
 LGcodFbV9Mx3zrO9BKE4I1iDdSlOeUz7NWezHmMHJoGglgFvDn/xkK4+YgP4grGTh6V8
 iv0wEjGXUeNb74hmYbBJcckrRiGGS2mTVhBdt3RSoTFQFCBKtTSBF9NZn2BEgiEJLYiY
 lkiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zOwERsJ6pnvcMb1zFd5T4pWVO52IElodtx1VRz6WwZc=;
 b=BNBgTT4mccvymE0Cqc7IaOKpxXccDblH2+M6ZDrI8LsIyP9A5Nw+mbi9vmHRuXACUH
 6JhuiiNFo0d5prb8tEugzKKnF3MauJt3PWIGTq0uxOIaoAVkGgI+pAgMqAUoF47I2YX+
 rvAO7AcsCIWqvSfzA8GgbtdtTiYvMr7AEAOqLaUv2zDxfnLWWx1MwJpfl7vGM9r0MKOJ
 jwaRucONVqEQUTU8l5IDYP1pe6m39iN0jhvdPIiJbOzrYVzUqKE8gi8ZwUsR+KYIHX/1
 Fzjw51Kh7EZG+J3/82kIRfDSz3XY91C8IQIqVn6GfBGqLRZep87VwA49WQ7WQStXMnZg
 tvjQ==
X-Gm-Message-State: APjAAAXbYeWWP7zKkfU5E9uQh5BGUjrGXHPhNgB1Eej6iSd6cSPqGnmP
 E1Uwku0GdtZ5Mn3t59LFFuI=
X-Google-Smtp-Source: APXvYqyoDJ+NhJVYkNMxkYTyJ1Ifs7tzzAIOI7wRqpQx7KO/aRu50l0+u1djS46XPRVVv2rqVvTPhA==
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr264094wmh.122.1566310926375; 
 Tue, 20 Aug 2019 07:22:06 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id g12sm19798762wrv.9.2019.08.20.07.22.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 07:22:05 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:22:04 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Message-ID: <20190820142204.x352bftlvnb7s57n@pali>
References: <1566298572-12409-1-git-send-email-info@metux.net>
 <1566298572-12409-2-git-send-email-info@metux.net>
 <20190820111719.7blyk5jstgwde2ae@pali>
 <02f5b546-5c30-4998-19b2-76b816a35371@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02f5b546-5c30-4998-19b2-76b816a35371@metux.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.66 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (pali.rohar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-Headers-End: 1i051Y-00DNJm-V8
X-Mailman-Approved-At: Tue, 20 Aug 2019 15:43:59 +0000
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
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gVHVlc2RheSAyMCBBdWd1c3QgMjAxOSAxNDoyMTozMyBFbnJpY28gV2VpZ2VsdCwgbWV0dXgg
SVQgY29uc3VsdCB3cm90ZToKPiBPbiAyMC4wOC4xOSAxMzoxNywgUGFsaSBSb2jDoXIgd3JvdGU6
Cj4gPiBPbiBUdWVzZGF5IDIwIEF1Z3VzdCAyMDE5IDEyOjU2OjEyIEVucmljbyBXZWlnZWx0LCBt
ZXR1eCBJVCBjb25zdWx0IHdyb3RlOgo+ID4gPiBGcm9tOiBFbnJpY28gV2VpZ2VsdCA8aW5mb0Bt
ZXR1eC5uZXQ+Cj4gPiA+IAo+ID4gPiBJU19FUlIoKSBhbHJlYWR5IGNhbGxzIHVubGlrZWx5KCks
IHNvIHRoaXMgZXh0cmEgdW5saWtlbHkoKSBjYWxsCj4gPiA+IGFyb3VuZCBJU19FUlIoKSBpcyBu
b3QgbmVlZGVkLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogRW5yaWNvIFdlaWdlbHQgPGlu
Zm9AbWV0dXgubmV0Pgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL2lucHV0L21vdXNlL2FscHMu
YyB8IDIgKy0KPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L21vdXNlL2FscHMu
YyBiL2RyaXZlcnMvaW5wdXQvbW91c2UvYWxwcy5jCj4gPiA+IGluZGV4IDM0NzAwZWQuLmVkMTY2
MTQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvaW5wdXQvbW91c2UvYWxwcy5jCj4gPiA+ICsr
KyBiL2RyaXZlcnMvaW5wdXQvbW91c2UvYWxwcy5jCj4gPiA+IEBAIC0xNDc2LDcgKzE0NzYsNyBA
QCBzdGF0aWMgdm9pZCBhbHBzX3JlcG9ydF9iYXJlX3BzMl9wYWNrZXQoc3RydWN0IHBzbW91c2Ug
KnBzbW91c2UsCj4gPiA+ICAgCQkvKiBPbiBWMiBkZXZpY2VzIHRoZSBEdWFsUG9pbnQgU3RpY2sg
cmVwb3J0cyBiYXJlIHBhY2tldHMgKi8KPiA+ID4gICAJCWRldiA9IHByaXYtPmRldjI7Cj4gPiA+
ICAgCQlkZXYyID0gcHNtb3VzZS0+ZGV2Owo+ID4gPiAtCX0gZWxzZSBpZiAodW5saWtlbHkoSVNf
RVJSX09SX05VTEwocHJpdi0+ZGV2MykpKSB7Cj4gPiA+ICsJfSBlbHNlIGlmIChJU19FUlJfT1Jf
TlVMTChwcml2LT5kZXYzKSkgewo+ID4gPiAgIAkJLyogUmVnaXN0ZXIgZGV2MyBtb3VzZSBpZiB3
ZSByZWNlaXZlZCBQUy8yIHBhY2tldCBmaXJzdCB0aW1lICovCj4gPiA+ICAgCQlpZiAoIUlTX0VS
Uihwcml2LT5kZXYzKSkKPiA+ID4gICAJCQlwc21vdXNlX3F1ZXVlX3dvcmsocHNtb3VzZSwgJnBy
aXYtPmRldjNfcmVnaXN0ZXJfd29yaywKPiA+IAo+ID4gSGVsbG8hIFR3byBtb250aHMgYWdvIEkg
YWxyZWFkeSBzYXcgdGhpcyBwYXRjaC4gU2VlIGRpc2N1c3Npb246Cj4gPiBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTc3MDk5Lwo+IAo+IHBodWgsIHRoYXQncyBsb25nIGNo
YWluIG9mIGxpbmtzIHRvIGZvbG93IDstKQo+IAo+IFNvLCB5b3VyIHByaW1hcnkgYXJndW1lbnQg
aXMganVzdCAqZG9jdW1lbnRpbmcqIHRoYXQgdGhpcyBzdXBwb3NlZCB0bwo+IGJlIGEgcmFyZSBj
b25kaXRpb24gPwoKWWVzLiBBbHNvIERtaXRyeSBzYWlkIHRoYXQgcHJlZmVyIGV4cGxpY2l0IHVu
bGlrZWx5LgoKPiBJbiB0aGF0IGNhc2UsIHdvdWxkbid0IGEgY29tbWVudCBiZSBtb3JlIHN1aXRh
YmxlIGZvciB0aGF0ID8KCkFuZCB3aHkgdG8gYWRkIGNvbW1lbnQgaWYgY3VycmVudCBzdGF0ZSBv
ZiBjb2RlIGlzIG1vcmUtcmVhZGFibGUgYW5kCmRvZXMgbm90IG5lZWQgaXQ/CgpJIGRvIG5vdCBz
ZWUgYW55dGhpbmcgd3Jvbmcgb24gdGhpcyBjb2RlIHBhdGguCgpQZW9wbGUgbm9ybWFsbHkgYWRk
IGNvbW1lbnRzIHRvIGNvZGUgd2hpY2ggaXMgcHJvYmxlbWF0aWMgdG8gdW5kZXJzdGFuZApvciBp
cyBzb21laG93IHRyaWNreSwgbm8gc28gb2J2aW91cyBvciBkb2N1bWVudCBob3cgc2hvdWxkIGNv
ZGUgYmVoYXZlLgoKPiBJdCBzZWVtcyB0aGF0IHRoaXMgaXNzdWUgaXMgY29taW5nIHVwIGFnYWlu
IGFuZCBhZ2FpbiAuLi4gd2hlbiBwZW9wbGUKPiBydW4gY29jY2kgc2NhbnMgKGxpa2UgSSBkaWRu
J3QpLCBJJ2Qgc3VzcGVjdCB0aGlzIHRvIGhhcHBlbiBldmVuIG1vcmUKPiBpbiB0aGUgZnV0dXJl
LgoKUGVvcGxlIGZpcnN0IG5lZWQgdG8gdW5kZXJzdGFuZCB0aGF0IHN0YXRpYyBjb2RlIGFuYWx5
c2lzIGNhbm5vdCB3b3JrCjEwMCUgcmVsaWFibHkgYW5kIGFsd2F5cyBpcyBuZWVkZWQgdG8gcHJv
cGVybHkgcmV2aWV3IGNoYW5nZXMuCgpBbmQgaWYgdGhlIG9ubHkgcmVhc29uIGZvciB0aGlzIGNo
YW5nZSBpcyB0byBzYXRpc2Z5IHNvbWUgc3RhdGljIGNvZGUKYW5hbHlzaXMgcHJvZ3JhbSwgd291
bGQgbm90IGl0IGJldHRlciB0byB0ZWFjaCB0aGlzIHByb2dyYW0gdG8gbm8KZ2VuZXJhdGUgc3Vj
aCBmYWxzZS1wb3NpdGl2ZSByZXN1bHRzPwoKLS0gClBhbGkgUm9ow6FyCnBhbGkucm9oYXJAZ21h
aWwuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51
eC1udGZzLWRldgo=
