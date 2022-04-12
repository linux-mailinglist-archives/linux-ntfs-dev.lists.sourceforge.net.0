Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 826714FF2EE
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Apr 2022 11:07:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1neYy5-0002al-8b; Wed, 13 Apr 2022 09:07:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michalorzel.eng@gmail.com>) id 1neINF-0007Lt-Tw
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 12 Apr 2022 15:24:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VStffjPSoNuLVmgDL/ileLhw4nppALw1IFNpnjw+ytU=; b=mivUfGcv1Uyn50nQxwXNjaLUXs
 hQj4zCqZyrOogrSt1MQkad1aL3fkKzQB4Ai6+BaRAXVLMzJFLIg6g4eJ9Krp4OO61KWtXgWOyS6Bi
 MdP0CZ8OlY199tbq1iYN9Bv5MYOhS1fiXwdtguvxdpVoO9+mtOF2kLLih+zrhYSwS/Qo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VStffjPSoNuLVmgDL/ileLhw4nppALw1IFNpnjw+ytU=; b=B8Zr5mQYvIM26D6gVd85JVLv4a
 QjBZhzVs820FYHQGmnE9Fj295N00OXaxPmQ4t0CkCFqOAVyfMixYbJLg5jh1YSx/8KqYjl80JBPLK
 UBQF4hx2uroNfc3rGwuLgNHc7Xj3wGmp/3aCMn9K1VW1N6m1MvgrR4xQz5dlSGaH5Q6c=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1neINC-00EE6f-CI
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 12 Apr 2022 15:24:10 +0000
Received: by mail-lj1-f174.google.com with SMTP id s13so24529022ljd.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Apr 2022 08:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=VStffjPSoNuLVmgDL/ileLhw4nppALw1IFNpnjw+ytU=;
 b=BSrsVveb2Ov8wixMuMVEF0afp0t9GItWPOTZos5ZRGOn853uCe9L80l6HaT2uoI+PZ
 dnHRW8B+/F0Sd7bg/sTthP04nX1KwcfAOL56k2+KMbjyeYLsg73rBvNISTLBaGgRHsCj
 qXLus9ixicO3LD1Jqd+lgKZrsqX7YMX3jKZQM2Qbv67Vx2nvzT93b8R2oq8FJrmt+Qzk
 bLEwY6oHS8k4dWdTg/DZ6gNtfD+p4KTG4hfq/f7cG0GJOS0abEpiu7NF/roFpvTzDH5k
 yMuJZ29VRGw4x8NAGwc+lBpY0x+47fLIRfyAbG3+Ert2383Es+T7wYv83OScKUWw8sMy
 qgVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=VStffjPSoNuLVmgDL/ileLhw4nppALw1IFNpnjw+ytU=;
 b=J32zkBTtIYEg6Nwi3uuY2uDhEoIkRK02nH+skI7fwh0SxKidWYEh8nlLbJYcBodNK9
 pbufB/bp8ANa7gFK3zlRMap09P5UFMinY2L0MUUiFW4c2YyiEwVxTtuEi1vSNRLk5F6k
 sLTmVdC2m3E9NkrogBV1JvYhbO3BO/AI/U9RCRttb4d2s3AKuIezBmosYOE1Tcf+RDTr
 Ztd0wsEuaa27vmdFhfnCB0Ntqburh5IQWu2pCpdPymW9P5/csqvAXp6d91v62fOKThhf
 RXueugUEhAVZss6XBFphNJg7ctlj8T2x4yJQdV/GB//nU8XwE5Xo8GGBjtakyyPfCllG
 Invg==
X-Gm-Message-State: AOAM5311358mOeX4LDgs18+4iUr1bkuOZF0FsV7fKpbe/uqEqwP4tipR
 vueyM8IQBSFtz2Qjm5eA6p8=
X-Google-Smtp-Source: ABdhPJx8ntIZ64Ep+1//eaVIjzbkY6UpyEKqOwRsH3Vumux5OXak8LEcuT8NThTvX5bZM+fbF/uzDA==
X-Received: by 2002:a2e:381a:0:b0:24b:68ae:4169 with SMTP id
 f26-20020a2e381a000000b0024b68ae4169mr5020616lja.208.1649777039712; 
 Tue, 12 Apr 2022 08:23:59 -0700 (PDT)
Received: from [192.168.31.104] (static-91-225-135-18.devs.futuro.pl.
 [91.225.135.18]) by smtp.gmail.com with ESMTPSA id
 o26-20020a198c1a000000b0046bc20821f6sm126079lfd.115.2022.04.12.08.23.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 08:23:59 -0700 (PDT)
Message-ID: <1c8fa321-d91e-c906-a7da-c252a112191b@gmail.com>
Date: Tue, 12 Apr 2022 17:23:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Tom Rix <trix@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20220409101933.207157-1-michalorzel.eng@gmail.com>
 <20220409101933.207157-2-michalorzel.eng@gmail.com>
 <a56d1184-d399-d5f8-765f-5a4f35dacd5e@redhat.com>
 <446a3e88-4c14-300d-862a-1279274c3760@gmail.com>
 <c2c40f00-777c-f19a-eb5f-6e978ddd6bcf@redhat.com>
From: Michal Orzel <michalorzel.eng@gmail.com>
In-Reply-To: <c2c40f00-777c-f19a-eb5f-6e978ddd6bcf@redhat.com>
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tom, On 09.04.2022 18:03, Tom Rix wrote: > > On 4/9/22
 6:20 AM, Michal Orzel wrote: >> Hi Tom, >> >>> On 4/9/22 3:19 AM, Michal Orzel
 wrote: >>>> Get rid of redundant assignments which end up in values not [...]
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michalorzel.eng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.174 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1neINC-00EE6f-CI
X-Mailman-Approved-At: Wed, 13 Apr 2022 09:07:14 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] block: Remove redundant assignments
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
Cc: linux-block@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGkgVG9tLAoKT24gMDkuMDQuMjAyMiAxODowMywgVG9tIFJpeCB3cm90ZToKPiAKPiBPbiA0Lzkv
MjIgNjoyMCBBTSwgTWljaGFsIE9yemVsIHdyb3RlOgo+PiBIaSBUb20sCj4+Cj4+PiBPbiA0Lzkv
MjIgMzoxOSBBTSwgTWljaGFsIE9yemVsIHdyb3RlOgo+Pj4+IEdldCByaWQgb2YgcmVkdW5kYW50
IGFzc2lnbm1lbnRzIHdoaWNoIGVuZCB1cCBpbiB2YWx1ZXMgbm90IGJlaW5nCj4+Pj4gcmVhZCBl
aXRoZXIgYmVjYXVzZSB0aGV5IGFyZSBvdmVyd3JpdHRlbiBvciB0aGUgZnVuY3Rpb24gZW5kcy4K
Pj4+IFRoaXMgbG9nIGlzIHRoZSBzYW1lIGFzIHlvdXIgbGFzdCBwYXRjaC4KPj4+Cj4+PiBJbnN0
ZWFkIG9mIGEgZ2VuZXJhbCBzdGF0ZW1lbnQgb24gZGVhZHN0b3JlcywgYSBtb3JlIHNwZWNpZmlj
Cj4+Pgo+Pj4gYW5hbHlzaXMgb2YgdGhlIHNldHRpbmcgYmVpbmcgcmVtb3ZlZCB3b3VsZCBiZSBo
ZWxwZnVsLgo+Pj4KPj4+IFRoaXMgd2lsbCBtZWFuIHNwbGl0dGluZyB0aGUgcGF0Y2ggdG8gbWF0
Y2ggdGhlIGFuYWx5c2lzLgo+Pj4KPj4+IFRvbQo+Pj4KPj4gSSB0aGluayB0aGF0IHRoaXMgZXhw
bGFuYXRpb24gaW4gYSBjb21taXQgaXMgZW5vdWdoIGZvciBzdWNoIGEgdHJpdmlhbCBwYXRjaC4K
Pj4gSXQgaW5mb3JtcyB0aGF0IHdlIGFyZSBmaXhpbmcgY2xhbmctdGlkeSBmaW5kaW5ncyByZWxh
dGVkIHRvIGRlYWRzdG9yZXMKPj4gaW4gYSBibG9jayBzdWJzeXN0ZW0uIFdoYXQgYW5hbHlzaXMg
d291bGQgeW91IHdhbnQgdG8gc2VlPwo+PiBTb21ldGhpbmcgbGlrZSAiUmVtb3ZlIGRlYWRzdG9y
ZSBhc3NpZ25tZW50IHJldCA9IC1FSU5WQUzCoCBpbiBhIGZ1bmN0aW9uIGJpb19tYXBfdXNlcl9p
b3YiID8KPj4gSSB0aGluayB0aGF0IGl0IHdpbGwgY3JlYXRlIHRvbyBtdWNoIG9mIG5vdCBuZWVk
ZWQgb3ZlcmhlYWQuCj4gCj4gVGhlIGNvbXBpbGVyIHNob3VsZCByZW1vdmUgdGhlc2UgYWxyZWFk
eS7CoCBBbGwgb2YgdGhlIHN0YXRpYyBhbmFseXplcnMgcHJvZHVjZSBmYWxzZSBwb3NpdGl2ZXMs
IGlmIHlvdSBkbyBub3QgcHJvdmlkZSBhbmFseXNpcyB0aGUgcmV2aWV3ZXIgaGFzIHRvIGFzc3Vt
ZSB5b3UgaGF2ZSBub3QgZG9uZSBhbnkgYW5kIGhhcyB0byBkbyB0aGUgZmFsc2UgcG9zaXRpdmUg
YW5hbHlzaXMgdGhlbXNlbHZlcy4gVGhpcyBidXJkZW5zIHRoZSByZXZpZXdlciBmb3Igc29tZXRo
aW5nIG9mIHNtYWxsIHZhbHVlIHRoYXQgY2FuIGJlIGRpc21pc3NlZCBhcyBjaHVybi4KPiAKPiBU
b20KPiAKCk9rLCBJIHdpbGwgc3BsaXQgdGhlIHBhdGNoIGludG8gc2VyaWVzIGluIHYyIGFuZCBJ
IHdpbGwgYWRkIHNvbWUgYW5hbHlzaXMgaW50byBjb21taXQgbXNnLgoKQ2hlZXJzLApNaWNoYWwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1O
VEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMt
ZGV2Cg==
