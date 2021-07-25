Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 882793D7460
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 27 Jul 2021 13:30:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m8LIM-0000FK-Ce; Tue, 27 Jul 2021 11:30:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <yanp.bugz@gmail.com>) id 1m7hWJ-0007YZ-7B
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 25 Jul 2021 17:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U6ZDW1rdpW4Ju714iWVKDGQ1s3sxUf5am9BR8X9bDW0=; b=h3cWouTTwlATcsIuBpzLNA/RV0
 oECLyQjGwZ/RJUlW57/eZJT8FE+hUlaBn0SRShkZ3iYGEjgg+TZmSWVw/cPvFGoZpKyB7Vp/Wm4AI
 UnX5htBlHkfjLgaeSg4+Q5tQx5egDgSo3s7qgIOMwk4DZV8H/6IbREtl15QNGsi4/8Vk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U6ZDW1rdpW4Ju714iWVKDGQ1s3sxUf5am9BR8X9bDW0=; b=QC1ryimX9qm0n9M0yk1GilGLW0
 MW7E+iMoUdj49G1NiLGZRCIq3fE6qxIq2apzuWXgsbif/K8/3yyZHSaquJ/jyg6Ac9Xk05kJKbjcb
 dzT/W7chADcVy84GTtY0ErDpXAZop3wFNzvIpmBNYyHmMkZqTedijDm6UNgAl5Pdi4/A=;
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m7hWE-0007ZC-Kg
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 25 Jul 2021 17:02:31 +0000
Received: by mail-lj1-f174.google.com with SMTP id x7so8218213ljn.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 25 Jul 2021 10:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=U6ZDW1rdpW4Ju714iWVKDGQ1s3sxUf5am9BR8X9bDW0=;
 b=bzhZ5+Xj3YmSevmDTeZu++ync7DGr9v03Nk6+Q1i7z+g1dAX5xnkuva9YNrWr9YhRB
 ntnjbE1/Tet/jcsJGa73cOsolUo+xsfpXQDF/Fr8EDVbjz1aXJgh8xH1dZ0aive7opoN
 Kk3IxWLqlTQLC47WQSvF6lMVz38IejJRpvQ6ZX4aAr5QKJ3jdrlWTFjdKG/I96gF8nFO
 TTIXVLDMLZ3cdVPLkyPz30cIcyC3CAkxIzfIY4bXolYSDbT/DXnuNRFH4QGtdcNbET91
 5D1u0w4X52elcWXDqT7BAc8zHhl/Zjln2Z4oAdBC1vI9d/FfAMCCePo1YK6mikk588zT
 O5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=U6ZDW1rdpW4Ju714iWVKDGQ1s3sxUf5am9BR8X9bDW0=;
 b=a+V4Br3QVtsyIY/jSz/dZcf/il/Jz18GRbvI6z44sqeS0VAd+fX/vq/ECWFVEk6aMq
 2FffAhNwKSAk7GWWngdt4Hs2d+3lHNo2L8NDOIa+jQvfbzzeQzdYHWVWFS4KO+eLmvyv
 ts+U+RFJ6aoRqPz10pmpFTJQoeZrOo1vN25qq7AgtV4Wo1DD+HM/gG55+iWLbQlIKvWT
 wu7nTGSBM3z8r++el4hyzU9mquVu4Be3pjQtxjPjwZE4a6b1EzfToMJOTolgdsfnACdY
 7jQrD/VsjrgKLcKjHReVA/S8BrF9DmDPDEwRKbdE4NQnvsQhKYdxI00J4mDU19zK7EqR
 LPVw==
X-Gm-Message-State: AOAM533NIOnGbkf6l9EMVSeZflGT1FqDN4E7RjYL30+LUxFQq0cx4fxT
 08widSnr0Up8+gFSCOQDM5g=
X-Google-Smtp-Source: ABdhPJyBmhRcivncse1lvq/Bd/JD1ipEzEQC0EnemKCubbFX/En43DEYtZQTl5yc/mWBlhQfmHZ/qg==
X-Received: by 2002:a2e:5353:: with SMTP id t19mr9900009ljd.169.1627232540171; 
 Sun, 25 Jul 2021 10:02:20 -0700 (PDT)
Received: from [192.168.0.14] (broadband-46-242-116-145.ip.moscow.rt.ru.
 [46.242.116.145])
 by smtp.gmail.com with ESMTPSA id k11sm2795263lfu.27.2021.07.25.10.02.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 25 Jul 2021 10:02:19 -0700 (PDT)
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org
References: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
From: Yan Pas <yanp.bugz@gmail.com>
Message-ID: <cc64ac69-f4e5-3fc4-1362-ced7cf68119a@gmail.com>
Date: Sun, 25 Jul 2021 20:02:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
Content-Language: en-US
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.174 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yanp.bugz[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: archlinux.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.174 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1m7hWE-0007ZC-Kg
X-Mailman-Approved-At: Tue, 27 Jul 2021 11:30:44 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v26 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGkgZXZlcnlvbmUhCgpJJ20gcmVndWxhciBBcmNoLWxpbnV4IHVzZXIgYW5kIGhhdmUgYmVlbiB1
c2luZyB5b3VyIGRyaXZlciBmb3IgYSB3aGlsZQooaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9w
YWNrYWdlcy9udGZzMy1ka21zLykuIFRoZXJlIGFyZSBhIGxvdCBvZgp1c2VycyB3aG8gdGVzdGVk
IHRoaXMgcGF0Y2ggYW5kIHNvbWUgb2YgdGhlbSwgbGlrZSBtZSwgaGF2ZSBjb21wbGFpbnRzLgoK
SSBmYWNlZCBzdGFsbGluZyBvZiBhIGt0aHJlYWQgd2l0aCBzb21lIG50ZnMgZnVuY3Rpb25zIGlu
IGEgc3RhY2t0cmFjZQp3aGlsZSByc3luY2luZyBvbmUgTlRGUyBwYXJ0aXRpb24gKFNBVEEpIHRv
IGFub3RoZXIgKFVTQiBIREQpCihodHRwczovL2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL250
ZnMzLWRrbXMvI2NvbW1lbnQtODE4ODE5KToKClsgNTUyOS41MDc1NjddIElORk86IHRhc2sga3dv
cmtlci8wOjE6MTggYmxvY2tlZCBmb3IgbW9yZSB0aGFuIDExMDUgc2Vjb25kcy4KWyA1NTI5LjUw
NzU4MF3CoMKgwqDCoMKgwqAgVGFpbnRlZDogUMKgwqDCoMKgwqDCoMKgwqDCoMKgIE9FwqDCoMKg
wqAgNS4xMy40LWFyY2gxLTEgIzEKWyA1NTI5LjUwNzU4NF0gImVjaG8gMCA+IC9wcm9jL3N5cy9r
ZXJuZWwvaHVuZ190YXNrX3RpbWVvdXRfc2VjcyIKZGlzYWJsZXMgdGhpcyBtZXNzYWdlLgpbIDU1
MjkuNTA3NTg2XSB0YXNrOmt3b3JrZXIvMDoxwqDCoMKgwqAgc3RhdGU6RCBzdGFjazrCoMKgwqAg
MCBwaWQ6wqDCoCAxOApwcGlkOsKgwqDCoMKgIDIgZmxhZ3M6MHgwMDAwNDAwMApbIDU1MjkuNTA3
NTk4XSBXb3JrcXVldWU6IHVzYl9odWJfd3EgaHViX2V2ZW50ClsgNTUyOS41MDc2MTJdIENhbGwg
VHJhY2U6ClsgNTUyOS41MDc2MTVdwqAgPyBvdXRfb2ZfbGluZV93YWl0X29uX2JpdF9sb2NrKzB4
YjAvMHhiMApbIDU1MjkuNTA3NjMxXcKgIF9fc2NoZWR1bGUrMHgzMTAvMHg5MzAKWyA1NTI5LjUw
NzY0MV3CoCA/IG91dF9vZl9saW5lX3dhaXRfb25fYml0X2xvY2srMHhiMC8weGIwClsgNTUyOS41
MDc2NDhdwqAgc2NoZWR1bGUrMHg1Yi8weGMwClsgNTUyOS41MDc2NTRdwqAgYml0X3dhaXQrMHhk
LzB4NjAKWyA1NTI5LjUwNzY2MV3CoCBfX3dhaXRfb25fYml0KzB4MmEvMHg5MApbIDU1MjkuNTA3
NjY5XcKgIF9faW5vZGVfd2FpdF9mb3Jfd3JpdGViYWNrKzB4YjAvMHhlMApbIDU1MjkuNTA3Njgw
XcKgID8gdmFyX3dha2VfZnVuY3Rpb24rMHgyMC8weDIwClsgNTUyOS41MDc2ODldwqAgd3JpdGVi
YWNrX3NpbmdsZV9pbm9kZSsweDY0LzB4MTQwClsgNTUyOS41MDc2OTldwqAgc3luY19pbm9kZV9t
ZXRhZGF0YSsweDNkLzB4NjAKWyA1NTI5LjUwNzcxMl3CoCBudGZzX3NldF9zdGF0ZSsweDEyNi8w
eDFhMCBbbnRmczNdClsgNTUyOS41MDc3MzhdwqAgbmlfd3JpdGVfaW5vZGUrMHgyNDQvMHhlZjAg
W250ZnMzXQpbIDU1MjkuNTA3NzY0XcKgID8gcGFnZXZlY19sb29rdXBfcmFuZ2VfdGFnKzB4MjQv
MHgzMApbIDU1MjkuNTA3NzcyXcKgID8gX19maWxlbWFwX2ZkYXRhd2FpdF9yYW5nZSsweDZmLzB4
ZjAKWyA1NTI5LjUwNzc4NV3CoCBfX3dyaXRlYmFja19zaW5nbGVfaW5vZGUrMHgyNjAvMHgzMTAK
WyA1NTI5LjUwNzc5NV3CoCB3cml0ZWJhY2tfc2luZ2xlX2lub2RlKzB4YTcvMHgxNDAKWyA1NTI5
LjUwNzgwM13CoCBzeW5jX2lub2RlX21ldGFkYXRhKzB4M2QvMHg2MApbIDU1MjkuNTA3ODE0XcKg
IG50ZnNfc2V0X3N0YXRlKzB4MTI2LzB4MWEwIFtudGZzM10KWyA1NTI5LjUwNzgzNF3CoCBudGZz
X3N5bmNfZnMrMHhmOS8weDEwMCBbbnRmczNdClsgNTUyOS41MDc4NTddwqAgc3luY19maWxlc3lz
dGVtKzB4NDAvMHg5MApbIDU1MjkuNTA3ODY4XcKgIGZzeW5jX2JkZXYrMHgyMS8weDYwClsgNTUy
OS41MDc4NzRdwqAgZGVsZXRlX3BhcnRpdGlvbisweDEzLzB4ODAKWyA1NTI5LjUwNzg4Ml3CoCBi
bGtfZHJvcF9wYXJ0aXRpb25zKzB4NWIvMHhhMApbIDU1MjkuNTA3ODg5XcKgIGRlbF9nZW5kaXNr
KzB4YTUvMHgyMjAKCi4uLgoKCkFsc28gYWRkaW5nIG50ZnMzIHBhcnRpdGlvbiAoMS40VEIpIHRv
IGZzdGFiIG1ha2VzIGJvb3RpbmcgbXVjaCBzbG93ZXI6Ckkgc2VlIHR3byBsaW5lcyBpbiBjb25z
b2xlIChzeXN0ZW1kIHZlcnNpb24gYW5kIHNvbWUgb3RoZXIgbGluZSkgYW5kIEhERApsZWQgY29u
c3RhbnRseSBmbGlja2VyaW5nIChzZWVtcyBsaWtlIG50ZnMzIGlzIHRyYXZlcnNpbmcgZW50aXJl
CnBhcnRpdGlvbikKKGh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcvcGtnYmFzZS9udGZzMy1ka21z
L2VkaXQtY29tbWVudC8/Y29tbWVudF9pZD04MTg2NzMpLgoKUmVnYXJkcywgWWFuLgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURl
diBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
