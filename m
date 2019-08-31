Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A6FABBA8
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjE-0004DZ-Uj; Fri, 06 Sep 2019 15:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yefremov.denis@gmail.com>) id 1i46qs-0001Q1-3e
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 17:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lik2TQFtm24ZeMK7lbOS3RM+iMDhKtG/DlU1Hn/vZvk=; b=SOglPuu86A+qsIYGC04jQ35HGp
 8qh2oCajWUrC52nPlxNdToNkHkFRPraKBuGhI0zDKZDvIBUFwHrDZnjhDoFNXW9qWCm5uvcjAjNiQ
 DGBIwJGdSp/l2VFITrsawJ6H/dxikrxDw9yQZGdi8+CLTlyWCwuI4bogYevNPWR/y4NY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lik2TQFtm24ZeMK7lbOS3RM+iMDhKtG/DlU1Hn/vZvk=; b=BpcMtY+xqSPG80Vu/IHBRE9kAc
 qnqSLlXEb5igOJwgzvY6Dmt0x5XFX5B9CrRKVVwl08BnDtM4jpvkxiVWq+7QKtb3g+C6i7d+9d653
 GO6egWekFJf5IicVs8dKk9UakuXbBfFJf4sEuvS8I+kK7c553ucS/fC42nK9cXDPwP4o=;
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i46qn-004ZTl-6z
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 17:07:50 +0000
Received: by mail-ed1-f68.google.com with SMTP id o9so25117edq.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 31 Aug 2019 10:07:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Lik2TQFtm24ZeMK7lbOS3RM+iMDhKtG/DlU1Hn/vZvk=;
 b=dHgFNEjvzk2pE8rjimZ3Tl3ncdvvlCInTTIlLBEOi+cs6MOPvapk3hDyZlxcSYoyD3
 /EUBQBBqNSUQEDJVC+JqEh+FJg6MfRqQ3IxuJJ9fNasYPQW8n3zu08K3/+R3z8NDBc+h
 WToHuE9vhLmjHFziROFPamxAH2KvRHlRckAC7si/LCBE47XNZdtufdfdSdrcU9lVOgfS
 3OZKXESvEfAqpBSL6/x7DajCnSKch63R2gPSDvwi0GUBFV1u2rPsZvWUxhI54mNUssHQ
 qkIom3JdPiNEwFYK3ZR5cmtOHfFNMWwmW9ejbmr7uFrSKTaAV6QHmOaRC8gY3+xACuHX
 I/MA==
X-Gm-Message-State: APjAAAXIc2LkzPeBEztljpH7e3Gonii4s8FXEqhjVBFziamgUlhLP0KN
 oC/nj81j+Dm4f4cxPQTVs7I=
X-Google-Smtp-Source: APXvYqwYiVn+T/jnXqHdTksQFpnl6eq02sfkOXYISHWm5GobK2D0xg22AxYic/zL89Sp0zVPu8fsxw==
X-Received: by 2002:a50:88c5:: with SMTP id d63mr21674654edd.122.1567271258673; 
 Sat, 31 Aug 2019 10:07:38 -0700 (PDT)
Received: from [10.68.32.192] (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.gmail.com with ESMTPSA id i23sm1739594edv.11.2019.08.31.10.07.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 31 Aug 2019 10:07:38 -0700 (PDT)
To: Markus Elfring <Markus.Elfring@web.de>, Joe Perches <joe@perches.com>
References: <20190829165025.15750-1-efremov@linux.com>
 <0d9345ed-f16a-de0b-6125-1f663765eb46@web.de>
 <689c8baf-2298-f086-3461-5cd1cdd191c6@linux.com>
 <493a7377-2de9-1d44-cd8f-c658793d15db@web.de>
From: Denis Efremov <efremov@linux.com>
Message-ID: <c5e4479d-2fb3-b5a5-00c3-b06e5177d869@linux.com>
Date: Sat, 31 Aug 2019 20:07:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <493a7377-2de9-1d44-cd8f-c658793d15db@web.de>
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yefremov.denis[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i46qn-004ZTl-6z
X-Mailman-Approved-At: Fri, 06 Sep 2019 15:00:43 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v3 01/11] checkpatch: check for nested
 (un)?likely() calls
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
Cc: dri-devel@lists.freedesktop.org, Leon Romanovsky <leon@kernel.org>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, linux-rdma@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Saeed Mahameed <saeedm@mellanox.com>, linux-input@vger.kernel.org,
 xen-devel@lists.xenproject.org, Boris Pismenny <borisp@mellanox.com>,
 linux-arm-msm@vger.kernel.org, linux-wimax@intel.com,
 Enrico Weigelt <lkml@metux.net>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Andy Whitcroft <apw@canonical.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Sean Paul <sean@poorly.run>,
 Anton Altaparmakov <anton@tuxera.com>,
 =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali.rohar@gmail.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

CgpPbiAzMS4wOC4yMDE5IDE5OjQ1LCBNYXJrdXMgRWxmcmluZyB3cm90ZToKPj4+PiArIyBuZXN0
ZWQgbGlrZWx5L3VubGlrZWx5IGNhbGxzCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICgkbGluZSA9
fiAvXGIoPzooPzp1bik/bGlrZWx5KVxzKlwoXHMqIT9ccyooSVNfRVJSKD86X09SX05VTEx8X1ZB
TFVFKT98V0FSTikvKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgV0FSTigiTElLRUxZ
X01JU1VTRSIsCj4+Pgo+Pj4gSG93IGRvIHlvdSB0aGluayBhYm91dCB0byB1c2UgdGhlIHNwZWNp
ZmljYXRpb24g4oCcKD86SVNfRVJSKD86Xyg/Ok9SX05VTEx8VkFMVUUpKT98V0FSTinigJ0KPj4+
IGluIHRoaXMgcmVndWxhciBleHByZXNzaW9uPwo+IOKApgo+PiAgICBJU19FUlIKPj4gICAgKD86
XyA8LSBBbm90aGVyIGF0b21pYyBncm91cCBqdXN0IHRvIHNob3cgdGhhdCAnXycgaXMgYSBjb21t
b24gcHJlZml4Pwo+IAo+IFllcy4gLSBJIGhvcGUgdGhhdCB0aGlzIHNwZWNpZmljYXRpb24gZGV0
YWlsIGNhbiBoZWxwIGEgYml0LgoKSSdtIG5vdCBzdXJlIHRoYXQgYW5vdGhlciBwYWlyIG9mIGJy
YWNrZXRzIGZvciBhIHNpbmdsZSBjaGFyIHdvcnRoIGl0LgoKPj4gICAgICAgICAgICBVc3VhbGx5
LCBQZXJsIGludGVycHJldGVyIGlzIHZlcnkgZ29vZCBhdCBvcHRpbWl6aW5nIHN1Y2ggdGhpbmdz
LgoKVGhlIGludGVycHJldGVyIG9wdGltaXplcyBpdCBpbnRlcm5hbGx5OgplY2hvICdJU19FUlJf
T1JfTlVMTCcgfCBwZXJsIC1NcmU9ZGVidWcgLW5lICcvSVNfRVJSKD86X09SX05VTEx8X1ZBTFVF
KT8vICYmIHByaW50JwpDb21waWxpbmcgUkV4ICJJU19FUlIoPzpfT1JfTlVMTHxfVkFMVUUpPyIK
RmluYWwgcHJvZ3JhbToKICAgMTogRVhBQ1QgPElTX0VSUj4gKDQpCiAgIDQ6IENVUkxZWFswXXsw
LDF9ICgxNikKICAgNjogICBFWEFDVCA8Xz4gKDgpICAgICAgPC0tIGNvbW1vbiBwcmVmaXgKICAg
ODogICBUUklFLUVYQUNUW09WXSAoMTUpCiAgICAgICAgPE9SX05VTEw+IAogICAgICAgIDxWQUxV
RT4KLi4uCj4gCj4gV291bGQgeW91IGxpa2UgdG8gaGVscCB0aGlzIHNvZnR3YXJlIGNvbXBvbmVu
dCBieSBvbWl0dGluZyBhIHBhaXIgb2YKPiBub24tY2FwdHVyaW5nIHBhcmVudGhlc2VzIGF0IHRo
ZSBiZWdpbm5pbmc/Cj4gCj4gXGIoPzp1bik/bGlrZWx5XHMqCgpUaGlzIHBhaXIgb2YgYnJhY2tl
dHMgaXMgcmVxdWlyZWQgdG8gbWF0Y2ggInVubGlrZWx5IiBhbmQgaXQncwpvcHRpb25hbCBpbiBv
cmRlciB0byBtYXRjaCAibGlrZWx5Ii4KClJlZ2FyZHMsCkRlbmlzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1EZXYgbWFpbGluZyBs
aXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
