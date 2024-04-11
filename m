Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E89258A12DD
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 11 Apr 2024 13:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rusU9-0007gH-3z;
	Thu, 11 Apr 2024 11:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1rusU6-0007gA-AF for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 11 Apr 2024 11:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SwPj2AqRGe9EKGQD5/g1nxPhpUMvHtRCkQf9C+uu+cE=; b=YYJ8YqF9UEnjwK84fxhYI9ra9G
 RL7cGV3slGE4AfIx4X2z/KGVVd8nnRPRSpKxR9GFDMCExTA4krZd8JPm8zj4YOS88RMsNWZiae2o6
 ckgQ9CyoigNm0tbY0Zh0a3YyWKnNw4UwbQ1q3OXiRMvrLLQx5qIGxeXZvtEWRW9HQqhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SwPj2AqRGe9EKGQD5/g1nxPhpUMvHtRCkQf9C+uu+cE=; b=VR7JCC0l1LIzFtVAHpLlqMMKin
 9DskEPR+l8tEsjWZoNEXTXvKhKmVkO5YdBvk76k1ANFSXSM7rOZQ8Af7XLs/5ONc7YHKgeBD1Xhed
 Lo/KGmml0aTaAdM/9ev0Li1gutCWIqqj/7E8eJDCf8hNfzJmStQd0FLbScb0kqYEtrXs=;
Received: from relayaws-01.paragon-software.com ([35.157.23.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rusU5-0002SW-9M for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 11 Apr 2024 11:20:50 +0000
Received: from relayfre-01.paragon-software.com (unknown [172.30.72.12])
 by relayaws-01.paragon-software.com (Postfix) with ESMTPS id 7673F21C9;
 Thu, 11 Apr 2024 10:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1712832987;
 bh=SwPj2AqRGe9EKGQD5/g1nxPhpUMvHtRCkQf9C+uu+cE=;
 h=Date:Subject:To:CC:References:From:In-Reply-To;
 b=E+av8V1vKLYJqxE7KjFej4qFk6fsvOTM3Fz39RvH1jAkaKvbkswHzV4nLp2MRc4Gy
 ql3LHp0J5j0PU7FMULek2PQ1FiCGZV5VdeoNAT5T8oX9/l9J9nPhvLSp95Ec0mpoq/
 FmqViTZmmwV5QUeH/GJJp6Z/y03YmL07J3p5/TT0=
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 690381D3B;
 Thu, 11 Apr 2024 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1712833433;
 bh=SwPj2AqRGe9EKGQD5/g1nxPhpUMvHtRCkQf9C+uu+cE=;
 h=Date:Subject:To:CC:References:From:In-Reply-To;
 b=PQuAJ0qbHs67I+20oz0pVuV7L2TyeUN0W4GNYGky+eSlnK/Y6y5cD3DQ0vxXiMSlJ
 cOfU02eJPgyd7O40MJRSkOXZZC90EblgFrEsL8gUUPMN/j0UJFBWPJy0YU+OJqlkuK
 uP+tzVVsCnmCiv9+VTlwdE5cXxlMZ/m8akEb3Ay8=
Received: from [192.168.211.72] (192.168.211.72) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 11 Apr 2024 14:03:52 +0300
Message-ID: <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
Date: Thu, 11 Apr 2024 14:03:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux regressions mailing list <regressions@lists.linux.dev>, Christian
 Brauner <brauner@kernel.org>, Johan Hovold <johan@kernel.org>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
Content-Language: en-US
In-Reply-To: <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
X-Originating-IP: [192.168.211.72]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 04.04.2024 11:06,
 Linux regression tracking (Thorsten Leemhuis)
 wrote: > On 25.03.24 13:05, Christian Brauner wrote: >> On Mon, Mar 25, 2024
 at 11:12:00AM +0100, Johan Hovold wrote: >>> On Mon, Mar [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rusU5-0002SW-9M
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
From: Konstantin Komarov via Linux-ntfs-dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gMDQuMDQuMjAyNCAxMTowNiwgTGludXggcmVncmVzc2lvbiB0cmFja2luZyAoVGhvcnN0ZW4g
TGVlbWh1aXMpIHdyb3RlOgo+IE9uIDI1LjAzLjI0IDEzOjA1LCBDaHJpc3RpYW4gQnJhdW5lciB3
cm90ZToKPj4gT24gTW9uLCBNYXIgMjUsIDIwMjQgYXQgMTE6MTI6MDBBTSArMDEwMCwgSm9oYW4g
SG92b2xkIHdyb3RlOgo+Pj4gT24gTW9uLCBNYXIgMjUsIDIwMjQgYXQgMDk6MzQ6MzhBTSArMDEw
MCwgQ2hyaXN0aWFuIEJyYXVuZXIgd3JvdGU6Cj4+Pj4gVGhpcyBjYXVzZXMgdmlzaWJsZSBjaGFu
Z2VzIGZvciB1c2VycyB0aGF0IHJlbHkgb24gbnRmczMgdG8gc2VydmUgYXMgYW4KPj4+PiBhbHRl
cm5hdGl2ZSBmb3IgdGhlIGxlZ2FjeSBudGZzIGRyaXZlci4gUHJpbnQgc3RhdGVtZW50cyBzdWNo
IGFzIHRoaXMKPj4+PiBzaG91bGQgcHJvYmFibHkgYmUgbWFkZSBjb25kaXRpb25hbCBvbiBhIGRl
YnVnIGNvbmZpZyBvcHRpb24gb3Igc2ltaWxhci4KPj4+Pgo+Pj4+IENjOiAiTWF0dGhldyBXaWxj
b3ggKE9yYWNsZSkiIDx3aWxseUBpbmZyYWRlYWQub3JnPgo+Pj4+IENjOiBKb2hhbiBIb3ZvbGQg
PGpvaGFuQGtlcm5lbC5vcmc+Cj4+Pj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9a
ZjJ6UGY1VE81b1l0M0kzQGhvdm9sZGNvbnN1bHRpbmcuY29tCj4+Pj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXN0aWFuIEJyYXVuZXIgPGJyYXVuZXJAa2VybmVsLm9yZz4KPj4+IFRlc3RlZC1ieTogSm9o
YW4gSG92b2xkIDxqb2hhbitsaW5hcm9Aa2VybmVsLm9yZz4KPj4+Cj4+PiBJIGFsc28gc2VlIGEK
Pj4+Cj4+PiAJbnRmczM6IE1heCBsaW5rIGNvdW50IDQwMDAKPj4+Cj4+PiBtZXNzYWdlIG9uIG1v
dW50IHdoaWNoIHdhc24ndCB0aGVyZSB3aXRoIE5URlMgbGVnYWN5LiBJcyB0aGF0IGJlbmlnbgo+
Pj4gYW5kIHNob3VsZCBiZSBzdXBwcmVzc2VkIHRvbyBwZXJoYXBzPwo+PiBXZSBuZWVkIGEgcmVw
bHkgZnJvbSB0aGUgbnRmczMgbWFpbnRhaW5lcnMgaGVyZS4KPiBUaG9zZSBhcmUga25vd24gZm9y
IHRha2VuIHRoZWlyIHRpbWUgdG8gcmVzcG9uZCAtLSBsaWtlIHdlIHNlZSBoZXJlLCBhcwo+IG5v
dGhpbmcgaGFwcGVuZWQgZm9yIDEwIGRheXMgbm93LiBXaGljaCBtYWtlcyB3ZSB3b25kZXI6IHNo
b3VsZCB3ZSBhdAo+IGxlYXN0IGJyaW5nIHRoZSBmaXJzdCBwYXRjaCBmcm9tIHRoaXMgc2VyaWVz
IG9udG8gdGhlIHRyYWNrIHRvd2FyZHMKPiBtYWlubGluZT8KPgo+IEZXSVcsIHF1aWNrIHNpZGUg
bm90ZToganVzdCBub3RpY2VkIHRoZXJlIHdhcyBhbm90aGVyIHJlcG9ydCBhYm91dCB0aGUKPiAi
Q29ycmVjdCBsaW5rcyBjb3VudCAtPiAxLiIgbWVzc2FnZXM6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzYyMTVhODhhLTdkNzgtNGFiYi05MTFmLThhM2U3MDMzZGEzZUBnbXguY29tLwo+
Cj4gQ2lhbywgVGhvcnN0ZW4gKHdlYXJpbmcgaGlzICd0aGUgTGludXgga2VybmVsJ3MgcmVncmVz
c2lvbiB0cmFja2VyJyBoYXQpCj4gLS0KPiBFdmVyeXRoaW5nIHlvdSB3YW5uYSBrbm93IGFib3V0
IExpbnV4IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNraW5nOgo+IGh0dHBzOi8vbGludXgtcmVndHJh
Y2tpbmcubGVlbWh1aXMuaW5mby9hYm91dC8jdGxkcgo+IElmIEkgZGlkIHNvbWV0aGluZyBzdHVw
aWQsIHBsZWFzZSB0ZWxsIG1lLCBhcyBleHBsYWluZWQgb24gdGhhdCBwYWdlLgo+Cj4gI3JlZ3pi
b3QgZHVwbGljYXRlOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC82MjE1YTg4YS03ZDc4
LTRhYmItOTExZi04YTNlNzAzM2RhM2VAZ214LmNvbS8KPiAjcmVnemJvdCBwb2tlCj4KSGVsbG8g
Q2hyaXN0aWFuLCBKb2hhbiwgYWxsLAoKVGhlcmUgaXMgbm8gcHJvYmxlbSBpbiBzdXBwcmVzc2lu
ZyB0aGUgb3V0cHV0IG9mIGFueSBtZXNzYWdlcyBkdXJpbmcgCm1vdW50aW5nLCBsaWtlOgoKZGlm
ZiAtLWdpdCBhL2ZzL250ZnMzL3N1cGVyLmMgYi9mcy9udGZzMy9zdXBlci5jCmluZGV4IGNlZjU0
NjdmZDkyOC4uNDY0M2IwNmIxNTUwIDEwMDY0NAotLS0gYS9mcy9udGZzMy9zdXBlci5jCisrKyBi
L2ZzL250ZnMzL3N1cGVyLmMKQEAgLTE4MDQsOCArMTgwNCw2IEBAIHN0YXRpYyBpbnQgX19pbml0
IGluaXRfbnRmc19mcyh2b2lkKQp7CiDCoMKgwqDCoMKgwqDCoCBpbnQgZXJyOwotwqDCoMKgwqDC
oMKgIHByX2luZm8oIm50ZnMzOiBNYXggbGluayBjb3VudCAldVxuIiwgTlRGU19MSU5LX01BWCk7
Ci0KIMKgwqDCoMKgwqDCoMKgIGlmIChJU19FTkFCTEVEKENPTkZJR19OVEZTM19GU19QT1NJWF9B
Q0wpKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByX2luZm8oIm50ZnMzOiBFbmFi
bGVkIExpbnV4IFBPU0lYIEFDTHMgc3VwcG9ydFxuIik7CiDCoMKgwqDCoMKgwqDCoCBpZiAoSVNf
RU5BQkxFRChDT05GSUdfTlRGUzNfNjRCSVRfQ0xVU1RFUikpCgpNZXNzYWdlcyBsaWtlIHRoaXM6
CgpkaWZmIC0tZ2l0IGEvZnMvbnRmczMvaW5vZGUuYyBiL2ZzL250ZnMzL2lub2RlLmMKaW5kZXgg
ZWI3YThjOWZiYTAxLi44Y2M5NGE2YTk3ZWQgMTAwNjQ0Ci0tLSBhL2ZzL250ZnMzL2lub2RlLmMK
KysrIGIvZnMvbnRmczMvaW5vZGUuYwpAQCAtNDI0LDcgKzQyNCw2IEBAIHN0YXRpYyBzdHJ1Y3Qg
aW5vZGUgKm50ZnNfcmVhZF9tZnQoc3RydWN0IGlub2RlICppbm9kZSwKIMKgwqAgwqBpZiAobmFt
ZXMgIT0gbGUxNl90b19jcHUocmVjLT5oYXJkX2xpbmtzKSkgewogwqDCoCDCoMKgwqDCoCAvKiBD
b3JyZWN0IG1pbm9yIGVycm9yIG9uIHRoZSBmbHkuIERvIG5vdCBtYXJrIGlub2RlIGFzIGRpcnR5
LiAqLwotwqDCoMKgIMKgwqDCoCBudGZzX2lub2RlX3dhcm4oaW5vZGUsICJDb3JyZWN0IGxpbmtz
IGNvdW50IC0+ICV1LiIsIG5hbWVzKTsKIMKgwqAgwqDCoMKgwqAgcmVjLT5oYXJkX2xpbmtzID0g
Y3B1X3RvX2xlMTYobmFtZXMpOwogwqDCoCDCoMKgwqDCoCBuaS0+bWkuZGlydHkgPSB0cnVlOwog
wqDCoCDCoH0KCmNhbiBhbHNvIGJlIHN1cHByZXNzZWQgZm9yIHRoZSBzYWtlIG9mIHNlYW1sZXNz
IHRyYW5zaXRpb24gZnJvbSBhIHJlbW90ZSAKTlRGUyBkcml2ZXIuCkhvd2V2ZXIsIEkgYmVsaWV2
ZSB0aGF0IGZpbGUgc3lzdGVtIGNvcnJlY3Rpb25zIHNob3VsZCBiZSByZXBvcnRlZCB0byAKdGhl
IHVzZXIuCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QKTGludXgtbnRmcy1kZXZAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xp
bnV4LW50ZnMtZGV2Cg==
