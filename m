Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD4AABBA6
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjE-0004D3-Qh; Fri, 06 Sep 2019 15:00:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1i46WT-0000N4-Jk
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 16:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uYodOJxTQVBLku29tS+/O6QU+TayZoHQz3FEa0VOGCQ=; b=V3QwzSn5dXry1k6MHZWB0a/x/y
 h9ZSw4Bn32Xz7AyjiWu05Cdt4YAFpffWYTE0yjxhpkVvootkiMIkHtnze+p8UBFRc3NziQ+Gg0kmA
 4UYvrtwmP5OIz5mvGPEEibxiT7DW+2KnExDqibLa5fhvm46NMEyQAZ6gTyW74F+VCKTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uYodOJxTQVBLku29tS+/O6QU+TayZoHQz3FEa0VOGCQ=; b=Fsn4GZ4januDWlKOMUvPVAhf5k
 5qXiGS25DoaxJyq05X48B8PKhZxjRwOjxgsb1vDOsbcv7m2zMc3LCUrxX/hxn3FCPSJNwgNlZMSdK
 T25K242VCXQ6RioffcZ/tazIG6+Agn4Wj01IJcpdgCx5YQA+MRZejDyyyKKBbMd0wQe4=;
Received: from mout.web.de ([212.227.15.4])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i46WR-004YZQ-U8
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 16:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567269960;
 bh=rm6OZE6ljUkECvv5QtQiOpGwZf85BXps+g793IIacr0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=raKOvxSuxO0ebILYdQV2cnRxgQxF5DOMKENqU7Tu0URpWhrx2Wgn6EGvCUWUE041l
 a9ajp1/qpuIRW7B0Ni1CM1JTTrRWmXocwzvr1oOeJEZ3nAsw/6TL/cinypKHTE1x6V
 qCJqgU8IP8zqAwr2C+rwrI7oh7fttPRcs/w5qn3w=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.129.60]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MZDQ4-1hlThL3GXc-00KuZW; Sat, 31
 Aug 2019 18:46:00 +0200
To: Denis Efremov <efremov@linux.com>, Joe Perches <joe@perches.com>
References: <20190829165025.15750-1-efremov@linux.com>
 <0d9345ed-f16a-de0b-6125-1f663765eb46@web.de>
 <689c8baf-2298-f086-3461-5cd1cdd191c6@linux.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <493a7377-2de9-1d44-cd8f-c658793d15db@web.de>
Date: Sat, 31 Aug 2019 18:45:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <689c8baf-2298-f086-3461-5cd1cdd191c6@linux.com>
Content-Language: en-US
X-Provags-ID: V03:K1:1L+cCQO3edmOUlVMXKxVQgZQYa4LR/jTtaG/k7hY0jvFzGA9G9q
 HWi19KhhK9a1vfzvVYuIZawQquCygt1hO4oC97DaXB2ZpgVEbfkC8llW/u0M6xN9a3X8B9I
 msvOrseLQDgMS/NsyS+xIVvd3tQVj5U9trfr++c3L1f40GywlStbhlVWFhc08RKBS9HMKBY
 58JLvN2HaG49gVs5HlMVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VhEuvvzylo4=:3p6CN3+YeibT+QHrA0rJE8
 jXp3wri957zlevWfHS/c+PS52+oWo953j5HMygod2ge3Y7CGMlcqgLO0MPO5RRIg7uUvPXVFM
 379jZoUE5kueE12x3p4ssfNT8Fm40bbR+jTrCXJDStbDnLTby7FA7IxOhxfbUc637M9qsaozq
 FmM4+uZQ2lWEx+yu1wkEvI0kfMzEVrn5/vt7skK0+PeaH225xYdHu2LK2rf5RqoWu8WPSqfa2
 wEeJbNm8BfqiB2vL6LEdRAXX8gyfoGnPJ5Qm1q41RgQV7RCNhtrZo+EHZA/vPMHB6Eq0ecXBj
 LGuKKm+/SpFz1PzRYXO1QqR52QDdP4Cu35XBi2NP6Q844cSgBnw6RrzV/jW0EqOsVfU8z0Z5V
 Sf3HRXof4ewon2caaE3aiSGdgbw5wQYBJLK3QUfnmJWr0InQHtd8qQQe1T3c/qgrcB5ABDIrf
 GZy/9DqV5riGpZEJ9cZ+iM6InqL4SAVfUB2hhg7nwp5xXpCtIN6SuBm0bDDsPQDX2sfwE8guW
 0GyYcU2kOIqReqB2C0Hwlmv14+88GNDb2jQDqHdJjupiEI2Yz8Y3NjOW79mU0lD3Gk/L2fBCd
 zb4qLY9yzm9g3uA1hQGeawT+B57gkJxHc+dfi8XXQp0jia5L+4/ZX35Lh+NHzVpgMBPseOtPI
 /b/7AjeuTqZjq6tgNw8XpGjxQfSbObCUwWsAOPecaBheHriMYnCL6tGDaK+JYLOiqgcxR0vQ+
 nMb69XF1HSE0FedQzM+J9aJpESm4upQtZxDAZcnJTKGdT48hXsDzreMgJjovpa3ZlK2YhNZCt
 F1/HcTS8HDlnTxXJdzEMH7hHp7sAgT+KRAjvQ/md1wG4SHa4TzLWt4D/7V/nWZdX5z5JASkG8
 RCC4i5tjqfEYUw5MSfN0VC4DMobYPN10nDg1RLFcy5AMm6VQm4DlXjKh649CAl2sqLMbyQJ4p
 F2eVxN3UAlmeBgE0m9VQrV5QnQAQS5sRx/RrkYqe89C+NJXtR0us8uxiM5bm91xW6/0XsqPOF
 SMz5D3ZDmyQbEtiW0w/3QmZRRq3m/3ThmGL6SL9syddVXqxfGKKP7+e0OVOsM/Bwb3dBknXVi
 3zKeeIsDo25gEweJ/VGnfXPS3N4kmuIMK4I3EA6n2MlCUwXo4Sj7301iqCInTCS8lIWlrORY3
 5vagzkLNsyXxrogrmB742zfdWZxWbG0lAmOIS9Xm7sNu3ydg==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i46WR-004YZQ-U8
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

Pj4+ICsjIG5lc3RlZCBsaWtlbHkvdW5saWtlbHkgY2FsbHMKPj4+ICvCoMKgwqDCoMKgwqDCoCBp
ZiAoJGxpbmUgPX4gL1xiKD86KD86dW4pP2xpa2VseSlccypcKFxzKiE/XHMqKElTX0VSUig/Ol9P
Ul9OVUxMfF9WQUxVRSk/fFdBUk4pLykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgV0FS
TigiTElLRUxZX01JU1VTRSIsCj4+Cj4+IEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gdXNlIHRo
ZSBzcGVjaWZpY2F0aW9uIOKAnCg/OklTX0VSUig/Ol8oPzpPUl9OVUxMfFZBTFVFKSk/fFdBUk4p
4oCdCj4+IGluIHRoaXMgcmVndWxhciBleHByZXNzaW9uPwrigKYKPiAgICBJU19FUlIKPiAgICAo
PzpfIDwtIEFub3RoZXIgYXRvbWljIGdyb3VwIGp1c3QgdG8gc2hvdyB0aGF0ICdfJyBpcyBhIGNv
bW1vbiBwcmVmaXg/CgpZZXMuIC0gSSBob3BlIHRoYXQgdGhpcyBzcGVjaWZpY2F0aW9uIGRldGFp
bCBjYW4gaGVscCBhIGJpdC4KCgo+ICAgICAgICAgICAgVXN1YWxseSwgUGVybCBpbnRlcnByZXRl
ciBpcyB2ZXJ5IGdvb2QgYXQgb3B0aW1pemluZyBzdWNoIHRoaW5ncy4KCldvdWxkIHlvdSBsaWtl
IHRvIGhlbHAgdGhpcyBzb2Z0d2FyZSBjb21wb25lbnQgYnkgb21pdHRpbmcgYSBwYWlyIG9mCm5v
bi1jYXB0dXJpbmcgcGFyZW50aGVzZXMgYXQgdGhlIGJlZ2lubmluZz8KClxiKD86dW4pP2xpa2Vs
eVxzKgoKClJlZ2FyZHMsCk1hcmt1cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURl
dkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
