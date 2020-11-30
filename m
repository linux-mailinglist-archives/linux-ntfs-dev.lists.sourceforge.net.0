Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 581322D25AC
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Dec 2020 09:19:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kmYDT-0002vo-G1; Tue, 08 Dec 2020 08:19:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kjfkj-00071q-Kv
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 30 Nov 2020 09:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8TlenU83bF/S10rYwbSUYGnUM+Ph2zmDG0BqmNSK/8U=; b=goRY/D9+mSTYcvzA5mVk2QEwvx
 UNjugYGWgZ6BpbrPrvFuA6CZCWO3Dggi/oGOsGktgfVDcfy2F0TaRLv6AP+FRSugct43yzHOXT0NA
 D+uuuhalGSkW1pcJmy+3/ZmVm5RVLPI1e8yJ49z56Ut6ZDy4Lxw7Lct+lZv5KJIGZV84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8TlenU83bF/S10rYwbSUYGnUM+Ph2zmDG0BqmNSK/8U=; b=QM1feXX7TVkPAs2RLMjnB5NVgz
 cJF1eTZ/xtwHrBhwBxHsQ3s+Xu33TUY3QUYEcZKallWd8E9gnTXomgj2mOm4/kYu0NsHAdXSDPphC
 C4AeK07gVDETDhGsy6gBZ29SC1bPY8UcjoqB8Wgv47j3oJaRhEX65HHtPN1C/oKOZxwM=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kjfkZ-006MhB-63
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 30 Nov 2020 09:45:49 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 9DBE2821BC;
 Mon, 30 Nov 2020 12:45:28 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1606729528;
 bh=8TlenU83bF/S10rYwbSUYGnUM+Ph2zmDG0BqmNSK/8U=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=QOQ01eauL6ht3N8SaPL1BcNdGeTTxcigr3pmHv7SD2R/dz4jh04z0pl65Ycnw6Lu+
 hA0KJQ7+RhDhweE3wem7ld8EtZxKwO/jYRB3FzNhCdq+i+c8wjyYWMo2D8X7eQbUTu
 hjukRg6cNGrMGoD3Y1hrQAmLC0BAXJJ52lqz3M6E=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 30 Nov 2020 12:45:28 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Mon, 30 Nov 2020 12:45:28 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: =?utf-8?B?QXVyw6lsaWVuIEFwdGVs?= <aaptel@suse.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Thread-Topic: [PATCH v12 00/10] NTFS read-write driver GPL implementation by
 Paragon Software
Thread-Index: AQHWtE8SinU0JOvEpUGIgDz/vP0qk6nBKKSAgB9oZGA=
Date: Mon, 30 Nov 2020 09:45:27 +0000
Message-ID: <cbb04e9b419a4d16b106f179df07813f@paragon-software.com>
References: <20201106150909.1779040-1-almaz.alexandrovich@paragon-software.com>
 <87mtzptle4.fsf@suse.com>
In-Reply-To: <87mtzptle4.fsf@suse.com>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.8.36]
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kjfkZ-006MhB-63
X-Mailman-Approved-At: Tue, 08 Dec 2020 08:18:57 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v12 00/10] NTFS read-write driver GPL
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
Cc: "nborisov@suse.com" <nborisov@suse.com>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "willy@infradead.org" <willy@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "hch@lst.de" <hch@lst.de>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "joe@perches.com" <joe@perches.com>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

RnJvbTogQXVyw6lsaWVuIEFwdGVsIDxhYXB0ZWxAc3VzZS5jb20+DQpTZW50OiBUdWVzZGF5LCBO
b3ZlbWJlciAxMCwgMjAyMCA0OjAzIFBNDQo+IFRvOiBLb25zdGFudGluIEtvbWFyb3YgPGFsbWF6
LmFsZXhhbmRyb3ZpY2hAcGFyYWdvbi1zb2Z0d2FyZS5jb20+OyBsaW51eC1mc2RldmVsQHZnZXIu
a2VybmVsLm9yZw0KPiBDYzogdmlyb0B6ZW5pdi5saW51eC5vcmcudWs7IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IHBhbGlAa2VybmVsLm9yZzsgZHN0ZXJiYUBzdXNlLmN6OyB3aWxseUBp
bmZyYWRlYWQub3JnOw0KPiByZHVubGFwQGluZnJhZGVhZC5vcmc7IGpvZUBwZXJjaGVzLmNvbTsg
bWFya0BoYXJtc3RvbmUuY29tOyBuYm9yaXNvdkBzdXNlLmNvbTsgbGludXgtbnRmcy1kZXZAbGlz
dHMuc291cmNlZm9yZ2UubmV0Ow0KPiBhbnRvbkB0dXhlcmEuY29tOyBkYW4uY2FycGVudGVyQG9y
YWNsZS5jb207IGhjaEBsc3QuZGU7IGViaWdnZXJzQGtlcm5lbC5vcmc7IEtvbnN0YW50aW4gS29t
YXJvdg0KPiA8YWxtYXouYWxleGFuZHJvdmljaEBwYXJhZ29uLXNvZnR3YXJlLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2MTIgMDAvMTBdIE5URlMgcmVhZC13cml0ZSBkcml2ZXIgR1BMIGlt
cGxlbWVudGF0aW9uIGJ5IFBhcmFnb24gU29mdHdhcmUNCj4gDQo+IEhpIEtvbnN0YW50aW4sDQo+
IA0KPiBIYXZlIHlvdSBsb29rZWQgYXQgRXJpYyBCaWdnZXJzIGxhc3QgY29tbWVudHMgcmVnYXJk
aW5nIEtBU0FOIGFuZA0KPiBsb2NrZGVwPyBZb3UgY2FuIGVuYWJsZSBLQVNBTiBpbiBtZW51Y29u
ZmlnIGluIEtlcm5lbCBoYWNraW5nID4gTWVtb3J5DQo+IGRlYnVnZ2luZyA+IEtBU0FOLg0KPiAN
Cj4gV2l0aCB2MTIgSSdtIHN0aWxsIHNlZWluZyB0aGUgb3V0LW9mLWJvdW5kIHJlYWQgYW5kIHBv
dGVudGlhbCBkZWFkbG9jay4NCj4NCg0KSGkgQXVyZWxpZW4hIEFwb2xvZ2llcyBmb3IgdGhlIGRl
bGF5ZWQgcmVwbHkuIFllcywgd2UncmUgbG9va2luZyBpbnRvIGVhY2ggY29tbWVudA0KcmVjZWl2
ZWQgb24gdGhlIHBhdGNoZXMsIGFuZCB0cnlpbmcgdG8gdGFrZSBhY3Rpb25zIG9uIGVhY2ggcHJv
bXB0bHkuIE9uIHRoZSBLQVNBTg0KYW5kIGxvY2tkZXAgaXNzdWVzOiBpdCB0b29rIHNvbWUgdGlt
ZSB0byBmaWd1cmUgb3V0IGhvdyB0byBjYXRjaCBhbmQgZGVidWcgdGhlc2UgOikNCkJ1dCBub3cs
IHNvbWUgb2YgdGhlIHJlbGF0ZWQgaXNzdWVzIGFyZSByZXNvbHZlZC4gUGxlYXNlIHRyeSBvdXQg
dGhlIHYxMy4NCg0KPiANCj4gVGhlIGJhZCByZWFkOg0KPiANCj4gWyAgIDY5LjQ5NjEzMl0gQlVH
OiBLQVNBTjogc3RhY2stb3V0LW9mLWJvdW5kcyBpbiBoZHJfaW5zZXJ0X2RlKzB4MTMwLzB4MWIw
DQo+IFsgICA2OS40OTYxMzddIFJlYWQgb2Ygc2l6ZSAzMiBhdCBhZGRyIGZmZmY4ODgwMGI0ZmZi
NDggYnkgdGFzayBsbi8xMjQ2DQo+IC4uLi4NCj4gWyAgMTY2LjY3MTUwOV0gIGRvX3N5c2NhbGxf
NjQrMHgzMy8weDQwDQo+IFsgIDE2Ni42NzE1MDldICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3
ZnJhbWUrMHg0NC8weGE5DQo+IFsgIDE2Ni42NzE1MDldIFJJUDogMDAzMzoweDdmZTQ4NmE2ODIw
NA0KPiBbICAxNjYuNjcxNTA5XSBDb2RlOiAwMCBmNyBkOCA2NCA4OSAwMiA0OCBjNyBjMCBmZiBm
ZiBmZiBmZiBlYiBiNyAwZiAxZiA4MCAwMCAwMCAwMCAwMCA4YiAwNSBhYSBkMSAyYyAwMCA0OCA2
MyBmZiA4NSBjMCA3NSAxMyBiOCAwMSAwMCAwMCAwMCAwZiAwNQ0KPiA8NDg+IDNkIDAwIGYwIGZm
IGZmIDc3IDU0IGYzIGMzIDY2IDkwIDU1IDUzIDQ4IDg5IGQ1IDQ4IDg5IGYzIDQ4IDgzDQo+IFsg
IDE2Ni42NzE1MDldIFJTUDogMDAyYjowMDAwN2ZmZDRiNzZmZWU4IEVGTEFHUzogMDAwMDAyNDYg
T1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMDENCj4gWyAgMTY2LjY3MTUwOV0gUkFYOiBmZmZmZmZm
ZmZmZmZmZmRhIFJCWDogMDAwMDAwMDAwMDAwMDAwNCBSQ1g6IDAwMDA3ZmU0ODZhNjgyMDQNCj4g
WyAgMTY2LjY3MTUwOV0gUkRYOiAwMDAwMDAwMDAwMDAwMDA0IFJTSTogMDAwMDU1YjFkZDliYjdh
MCBSREk6IDAwMDAwMDAwMDAwMDAwMDENCj4gWyAgMTY2LjY3MTUwOV0gUkJQOiAwMDAwNTViMWRk
OWJiN2EwIFIwODogMDAwMDAwMDAwMDAwMDAwYSBSMDk6IDAwMDAwMDAwMDAwMDAwMDANCj4gWyAg
MTY2LjY3MTUwOV0gUjEwOiAwMDAwMDAwMDAwMDAwMDBhIFIxMTogMDAwMDAwMDAwMDAwMDI0NiBS
MTI6IDAwMDAwMDAwMDAwMDAwMDQNCj4gDQo+IENoZWVycywNCj4gLS0NCj4gQXVyw6lsaWVuIEFw
dGVsIC8gU1VTRSBMYWJzIFNhbWJhIFRlYW0NCj4gR1BHOiAxODM5IENCNUYgOUY1QiBGQjlCIEFB
OTcgIDhDOTkgMDNDOCBBNDlCIDUyMUIgRDVEMw0KPiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBH
ZXJtYW55IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgREUNCj4gR0Y6IEZl
bGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoIEhSQiAyNDcxNjUgKEFH
IE3DvG5jaGVuKQ0KDQpUaGFua3MhDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1E
ZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
