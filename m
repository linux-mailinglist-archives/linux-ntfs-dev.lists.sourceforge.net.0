Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4B5ABBA5
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjE-0004Cx-Mp; Fri, 06 Sep 2019 15:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yefremov.denis@gmail.com>) id 1i45hm-0008QS-Js
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 15:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKTao77VaiaPvCbgcc+WiGV1j5w0joNictAVXbGzljc=; b=fjnC84/mxACgEmHphANBRspiFR
 oPVvfFkSZ9lS5WbM7vwwZ0v9zIagouEaV0BcJTIogjJekO64qEli7Vpe7ReadsFihIkwq1PgFIVbT
 5ZZxEhHSMESdPVwpFNdA95nWM09zJxKQ6KCNtLTb9LRlMoT5n+zslZ2ltIzn4Qbvo+ag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AKTao77VaiaPvCbgcc+WiGV1j5w0joNictAVXbGzljc=; b=XZF2Jb4l7Yj8E8fUQTbb3kWcKJ
 f84L1pgi6CI3muw251Yfi4HM9tMXFrDl5b3XtcMfWYutAP8HHYCP0+JnfO5KpzRkFRVlfPJJGMATB
 PKLEb293TgKYqKuPyNSOoHxEBa3t6uUmmc4gc8j2zwhP8j/5MxuiwagMYDBS0y/s7iRs=;
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i45hl-004WeT-7p
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 15:54:22 +0000
Received: by mail-ed1-f65.google.com with SMTP id t50so11480988edd.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 31 Aug 2019 08:54:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AKTao77VaiaPvCbgcc+WiGV1j5w0joNictAVXbGzljc=;
 b=JGPcDmavfqtkZjGrvQ95BNcQzdH8JXsijvfyzOldHykgKUNqXnROplCMN9X8Tul8+M
 Xp+ZF6zahVpQaUIjc0gjus4/04QfzncqFdBpe6+mjPjntLWdYR5ws6vNhHfC9fFpIWGf
 CBj5wd2FdhfEkBsdS6Bp4edtrdXk7ICvRVFCi+c83RZjy9q5dn2e1NP3SfhqfTwc3+LA
 mTyzY0VF3aJeQZcwM7w3Kdh8A9RIWRRTyeaMxAYc+tLEOszOoAclEgr8jRWxhsVO0TeC
 H0U5CgbfVlDWyg/ElO4QURNBkJ4Gw+qlp1NyfXqcCxY9lSMcQDUNvQCV3ndmkYRYx6II
 Ynzg==
X-Gm-Message-State: APjAAAXinrKrLPGQXt8uGQKpZTDqdzHF14GOLINBZJvg0K4EsTlhZ+cn
 atba281hFOyzbUwnhHxZOjw=
X-Google-Smtp-Source: APXvYqyUxiSvMtW/KeHJ5cA0AWsETqOjW7ApTaHBEHBAazWa/5cJ0LHfDHET8v0+ffDbuRqUR6oAiw==
X-Received: by 2002:a05:6402:154e:: with SMTP id
 p14mr21582628edx.101.1567266854794; 
 Sat, 31 Aug 2019 08:54:14 -0700 (PDT)
Received: from [10.68.32.192] (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.gmail.com with ESMTPSA id i19sm1234644ejf.7.2019.08.31.08.54.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 31 Aug 2019 08:54:14 -0700 (PDT)
To: Markus Elfring <Markus.Elfring@web.de>, Joe Perches <joe@perches.com>
References: <20190829165025.15750-1-efremov@linux.com>
 <0d9345ed-f16a-de0b-6125-1f663765eb46@web.de>
From: Denis Efremov <efremov@linux.com>
Message-ID: <689c8baf-2298-f086-3461-5cd1cdd191c6@linux.com>
Date: Sat, 31 Aug 2019 18:54:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0d9345ed-f16a-de0b-6125-1f663765eb46@web.de>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yefremov.denis[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i45hl-004WeT-7p
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

CgpPbiAzMS4wOC4yMDE5IDEyOjE1LCBNYXJrdXMgRWxmcmluZyB3cm90ZToKPj4gKyMgbmVzdGVk
IGxpa2VseS91bmxpa2VseSBjYWxscwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCRsaW5lID1+IC9c
Yig/Oig/OnVuKT9saWtlbHkpXHMqXChccyohP1xzKihJU19FUlIoPzpfT1JfTlVMTHxfVkFMVUUp
P3xXQVJOKS8pIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgV0FSTigiTElLRUxZX01JU1VT
RSIsCj4gCj4gSG93IGRvIHlvdSB0aGluayBhYm91dCB0byB1c2UgdGhlIHNwZWNpZmljYXRpb24g
4oCcKD86SVNfRVJSKD86Xyg/Ok9SX05VTEx8VkFMVUUpKT98V0FSTinigJ0KPiBpbiB0aGlzIHJl
Z3VsYXIgZXhwcmVzc2lvbj8KCkhtbSwgCig/OiAgIDwtIENhdGNoIGdyb3VwIGlzIHJlcXVpcmVk
IGhlcmUsIHNpbmNlIGl0IGlzIHVzZWQgaW4gZGlhZ25vc3RpYyBtZXNzYWdlLAogICAgICAgICBz
ZWUgJDEKICAgSVNfRVJSCiAgICg/Ol8gPC0gQW5vdGhlciBhdG9taWMgZ3JvdXAganVzdCB0byBz
aG93IHRoYXQgJ18nIGlzIGEgY29tbW9uIHByZWZpeD8KICAgICAgICAgICBJJ20gbm90IHN1cmUg
YWJvdXQgdGhpcy4gVXN1YWxseSwgUGVybCBpbnRlcnByZXRlciBpcyB2ZXJ5IGdvb2QgYXQgb3B0
aW1pemluZyBzdWNoIHRoaW5ncy4KICAgICAgICAgICBZb3UgY291bGQgc2VlIHRoaXMgb3B0aW1p
emF0aW9uIGlmIHlvdSBydW4gcGVybCB3aXRoIC1NcmU9ZGVidWcuCiAgICAgKD86T1JfTlVMTHxW
QUxVRSkpP3xXQVJOKQoKUmVnYXJkcywKRGVuaXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgt
TlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
