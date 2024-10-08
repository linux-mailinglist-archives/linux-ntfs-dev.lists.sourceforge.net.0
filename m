Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4399944DF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Oct 2024 11:56:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1sy6x6-0001QQ-Tx;
	Tue, 08 Oct 2024 09:56:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <g.ryurikov@securitycode.ru>) id 1sy6C3-0000De-Pb
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Oct 2024 09:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y2l5Ho12WXLXc3s4eoz5lfW6298r///qon9AsIeSybs=; b=Nx+rJax+aVvT08SD3fWbeE2XMc
 yoNkThEz30jnLgSHuatKMSMUQd2dfBBYVb6mIZ5QQb6pKNXcTww7/ox3EgKOSfJQVT+7rCSwvaxV8
 BB7Xh+ml+nx4Ew6DEGNs+Wk1R5BfhfgULqAJEFX+0o0xA7/T6Pyozqhuw0BwJZVejArM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y2l5Ho12WXLXc3s4eoz5lfW6298r///qon9AsIeSybs=; b=m
 LZRq3Foz/vFqvjTbEYXdyc5uIy9Hn8pyQipPEWEq8qoZHOkg7eLvpY8cYsRIUxKIAkAaMvk1aoyOB
 AsKSRf5itTQnrjX/W3mFTnbDB7OWemWNyXhdrt4wTzTOngfjdfFgyUoCq8Jem+RvsK4f0v/MLTCbG
 MfJKIjNM1xDGgr08=;
Received: from msk-mailedge.securitycode.ru ([195.133.217.143])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sy6C2-0005b9-CY for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Oct 2024 09:07:47 +0000
From: George Rurikov <g.ryurikov@securitycode.ru>
To: <stable@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 8 Oct 2024 11:52:01 +0300
Message-ID: <20241008085201.2209609-1-g.ryurikov@securitycode.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-ClientProxiedBy: MSK-EX1.Securitycode.ru (172.17.8.91) To
 MSK-EX2.Securitycode.ru (172.17.8.92)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: George Ryurikov <g.ryurikov@securitycode.ru> Danila
 Chernetsov <listdansp@mail.ru> commit aa4b92c5234878d55da96d387ea4d3695ca5e4ab
 upstream. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1sy6C2-0005b9-CY
X-Mailman-Approved-At: Tue, 08 Oct 2024 09:56:24 +0000
Subject: [Linux-ntfs-dev] [PATCH 5.10] ntfs: do not dereference a null ctx
 on error
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
Cc: Christian Brauner <brauner@kernel.org>, lvc-project@linuxtesting.org,
 linux-ntfs-dev@lists.sourceforge.net,
 George Ryurikov <g.ryurikov@securitycode.ru>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>, Danila
 Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

RnJvbTogR2VvcmdlIFJ5dXJpa292IDxnLnJ5dXJpa292QHNlY3VyaXR5Y29kZS5ydT4KCkRhbmls
YSBDaGVybmV0c292IDxsaXN0ZGFuc3BAbWFpbC5ydT4KCmNvbW1pdCBhYTRiOTJjNTIzNDg3OGQ1
NWRhOTZkMzg3ZWE0ZDM2OTVjYTVlNGFiIHVwc3RyZWFtLgoKSW4gbnRmc19tZnRfZGF0YV9leHRl
bmRfYWxsb2NhdGlvbl9ub2xvY2soKSwgaWYgYW4gZXJyb3IgY29uZGl0aW9uIG9jY3Vycwpwcmlv
ciB0byAnY3R4JyBiZWluZyBzZXQgdG8gYSBub24tTlVMTCB2YWx1ZSwgYXZvaWQgZGVyZWZlcmVu
Y2luZyB0aGUgTlVMTAonY3R4JyBwb2ludGVyIGluIGVycm9yIGhhbmRsaW5nLgoKRm91bmQgYnkg
TGludXggVmVyaWZpY2F0aW9uIENlbnRlciAobGludXh0ZXN0aW5nLm9yZykgd2l0aCBTVkFDRS4K
ClNpZ25lZC1vZmYtYnk6IERhbmlsYSBDaGVybmV0c292IDxsaXN0ZGFuc3BAbWFpbC5ydT4KUmV2
aWV3ZWQtYnk6IE5hbWphZSBKZW9uIDxsaW5raW5qZW9uQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBCcmF1bmVyIDxicmF1bmVyQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6
IEdlb3JnZSBSeXVyaWtvdiA8Zy5yeXVyaWtvdkBzZWN1cml0eWNvZGUucnU+Ci0tLQogZnMvbnRm
cy9tZnQuYyB8IDM2ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2ZzL250ZnMvbWZ0LmMgYi9mcy9udGZzL21mdC5jCmluZGV4IDBkNjJjZDViYjdmOC4uM2ZlYjIx
ODE3NGZhIDEwMDY0NAotLS0gYS9mcy9udGZzL21mdC5jCisrKyBiL2ZzL250ZnMvbWZ0LmMKQEAg
LTE5NTUsMzYgKzE5NTUsMzggQEAgc3RhdGljIGludCBudGZzX21mdF9kYXRhX2V4dGVuZF9hbGxv
Y2F0aW9uX25vbG9jayhudGZzX3ZvbHVtZSAqdm9sKQogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJhdHRyaWJ1dGUuJXMiLCBlcyk7CiAgICAgICAgICAgICAgICBOVm9sU2V0RXJyb3Jz
KHZvbCk7CiAgICAgICAgfQotICAgICAgIGEgPSBjdHgtPmF0dHI7CisKICAgICAgICBpZiAobnRm
c19ybF90cnVuY2F0ZV9ub2xvY2sodm9sLCAmbWZ0X25pLT5ydW5saXN0LCBvbGRfbGFzdF92Y24p
KSB7CiAgICAgICAgICAgICAgICBudGZzX2Vycm9yKHZvbC0+c2IsICJGYWlsZWQgdG8gdHJ1bmNh
dGUgbWZ0IGRhdGEgYXR0cmlidXRlICIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAi
cnVubGlzdC4lcyIsIGVzKTsKICAgICAgICAgICAgICAgIE5Wb2xTZXRFcnJvcnModm9sKTsKICAg
ICAgICB9Ci0gICAgICAgaWYgKG1wX3JlYnVpbHQgJiYgIUlTX0VSUihjdHgtPm1yZWMpKSB7Ci0g
ICAgICAgICAgICAgICBpZiAobnRmc19tYXBwaW5nX3BhaXJzX2J1aWxkKHZvbCwgKHU4KilhICsg
bGUxNl90b19jcHUoCisgICAgICAgaWYgKGN0eCkgeworICAgICAgICAgICAgICAgYSA9IGN0eC0+
YXR0cjsKKyAgICAgICAgICAgICAgIGlmIChtcF9yZWJ1aWx0ICYmICFJU19FUlIoY3R4LT5tcmVj
KSkgeworICAgICAgICAgICAgICAgICAgICAgICBpZiAobnRmc19tYXBwaW5nX3BhaXJzX2J1aWxk
KHZvbCwgKHU4ICopYSArIGxlMTZfdG9fY3B1KAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGEtPmRhdGEubm9uX3Jlc2lkZW50Lm1hcHBpbmdfcGFpcnNfb2Zmc2V0KSwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvbGRfYWxlbiAtIGxlMTZfdG9fY3B1KAotICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGEtPmRhdGEubm9uX3Jlc2lkZW50Lm1hcHBpbmdfcGFpcnNf
b2Zmc2V0KSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGEtPmRhdGEu
bm9uX3Jlc2lkZW50Lm1hcHBpbmdfcGFpcnNfb2Zmc2V0KSwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBybDIsIGxsLCAtMSwgTlVMTCkpIHsKLSAgICAgICAgICAgICAgICAgICAgICAg
bnRmc19lcnJvcih2b2wtPnNiLCAiRmFpbGVkIHRvIHJlc3RvcmUgbWFwcGluZyBwYWlycyAiCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbnRmc19lcnJvcih2b2wtPnNiLCAiRmFpbGVk
IHRvIHJlc3RvcmUgbWFwcGluZyBwYWlycyAiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiYXJyYXkuJXMiLCBlcyk7Ci0gICAgICAgICAgICAgICAgICAgICAgIE5Wb2xT
ZXRFcnJvcnModm9sKTsKLSAgICAgICAgICAgICAgIH0KLSAgICAgICAgICAgICAgIGlmIChudGZz
X2F0dHJfcmVjb3JkX3Jlc2l6ZShjdHgtPm1yZWMsIGEsIG9sZF9hbGVuKSkgewotICAgICAgICAg
ICAgICAgICAgICAgICBudGZzX2Vycm9yKHZvbC0+c2IsICJGYWlsZWQgdG8gcmVzdG9yZSBhdHRy
aWJ1dGUgIgorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5Wb2xTZXRFcnJvcnModm9s
KTsKKyAgICAgICAgICAgICAgICAgICAgICAgfQorICAgICAgICAgICAgICAgICAgICAgICBpZiAo
bnRmc19hdHRyX3JlY29yZF9yZXNpemUoY3R4LT5tcmVjLCBhLCBvbGRfYWxlbikpIHsKKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBudGZzX2Vycm9yKHZvbC0+c2IsICJGYWlsZWQgdG8g
cmVzdG9yZSBhdHRyaWJ1dGUgIgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgInJlY29yZC4lcyIsIGVzKTsKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOVm9s
U2V0RXJyb3JzKHZvbCk7CisgICAgICAgICAgICAgICAgICAgICAgIH0KKyAgICAgICAgICAgICAg
ICAgICAgICAgZmx1c2hfZGNhY2hlX21mdF9yZWNvcmRfcGFnZShjdHgtPm50ZnNfaW5vKTsKKyAg
ICAgICAgICAgICAgICAgICAgICAgbWFya19tZnRfcmVjb3JkX2RpcnR5KGN0eC0+bnRmc19pbm8p
OworICAgICAgICAgICAgICAgfSBlbHNlIGlmIChJU19FUlIoY3R4LT5tcmVjKSkgeworICAgICAg
ICAgICAgICAgICAgICAgICBudGZzX2Vycm9yKHZvbC0+c2IsICJGYWlsZWQgdG8gcmVzdG9yZSBh
dHRyaWJ1dGUgc2VhcmNoICIKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY29udGV4
dC4lcyIsIGVzKTsKICAgICAgICAgICAgICAgICAgICAgICAgTlZvbFNldEVycm9ycyh2b2wpOwog
ICAgICAgICAgICAgICAgfQotICAgICAgICAgICAgICAgZmx1c2hfZGNhY2hlX21mdF9yZWNvcmRf
cGFnZShjdHgtPm50ZnNfaW5vKTsKLSAgICAgICAgICAgICAgIG1hcmtfbWZ0X3JlY29yZF9kaXJ0
eShjdHgtPm50ZnNfaW5vKTsKLSAgICAgICB9IGVsc2UgaWYgKElTX0VSUihjdHgtPm1yZWMpKSB7
Ci0gICAgICAgICAgICAgICBudGZzX2Vycm9yKHZvbC0+c2IsICJGYWlsZWQgdG8gcmVzdG9yZSBh
dHRyaWJ1dGUgc2VhcmNoICIKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY29udGV4
dC4lcyIsIGVzKTsKLSAgICAgICAgICAgICAgIE5Wb2xTZXRFcnJvcnModm9sKTsKLSAgICAgICB9
Ci0gICAgICAgaWYgKGN0eCkKICAgICAgICAgICAgICAgIG50ZnNfYXR0cl9wdXRfc2VhcmNoX2N0
eChjdHgpOworICAgICAgIH0KICAgICAgICBpZiAoIUlTX0VSUihtcmVjKSkKICAgICAgICAgICAg
ICAgIHVubWFwX21mdF9yZWNvcmQobWZ0X25pKTsKICAgICAgICB1cF93cml0ZSgmbWZ0X25pLT5y
dW5saXN0LmxvY2spOwotLQoyLjM0LjEKCtCX0LDRj9Cy0LvQtdC90LjQtSDQviDQutC+0L3RhNC4
0LTQtdC90YbQuNCw0LvRjNC90L7RgdGC0LgKCtCU0LDQvdC90L7QtSDRjdC70LXQutGC0YDQvtC9
0L3QvtC1INC/0LjRgdGM0LzQviDQuCDQu9GO0LHRi9C1INC/0YDQuNC70L7QttC10L3QuNGPINC6
INC90LXQvNGDINGP0LLQu9GP0Y7RgtGB0Y8g0LrQvtC90YTQuNC00LXQvdGG0LjQsNC70YzQvdGL
0LzQuCDQuCDQv9GA0LXQtNC90LDQt9C90LDRh9C10L3RiyDQuNGB0LrQu9GO0YfQuNGC0LXQu9GM
0L3QviDQtNC70Y8g0LDQtNGA0LXRgdCw0YLQsC4g0JXRgdC70Lgg0JLRiyDQvdC1INGP0LLQu9GP
0LXRgtC10YHRjCDQsNC00YDQtdGB0LDRgtC+0Lwg0LTQsNC90L3QvtCz0L4g0L/QuNGB0YzQvNCw
LCDQv9C+0LbQsNC70YPQudGB0YLQsCwg0YPQstC10LTQvtC80LjRgtC1INC90LXQvNC10LTQu9C1
0L3QvdC+INC+0YLQv9GA0LDQstC40YLQtdC70Y8sINC90LUg0YDQsNGB0LrRgNGL0LLQsNC50YLQ
tSDRgdC+0LTQtdGA0LbQsNC90LjQtSDQtNGA0YPQs9C40Lwg0LvQuNGG0LDQvCwg0L3QtSDQuNGB
0L/QvtC70YzQt9GD0LnRgtC1INC10LPQviDQsiDQutCw0LrQuNGFLdC70LjQsdC+INGG0LXQu9GP
0YUsINC90LUg0YXRgNCw0L3QuNGC0LUg0Lgg0L3QtSDQutC+0L/QuNGA0YPQudGC0LUg0LjQvdGE
0L7RgNC80LDRhtC40Y4g0LvRjtCx0YvQvCDRgdC/0L7RgdC+0LHQvtC8LgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW50ZnMtZGV2IG1haWxp
bmcgbGlzdApMaW51eC1udGZzLWRldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
