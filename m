Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD706564F6
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 26 Dec 2022 21:37:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1p9uDa-0004us-NW;
	Mon, 26 Dec 2022 20:37:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMv-0001xs-0y;
 Mon, 26 Dec 2022 14:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X4Tjri0bpjl6+3YTehB44rO7d2yTB3OmstzEJiq8eKU=; b=EbwvksHmfXsuJLlPXDnY7aOmCB
 kPEph/TBw+vj1lv4LB085xy7G6FeOdAZveBh+eryekczAhlX4/DuXQxIJgDYGCGBhpQ4auhFnFTWc
 uHhd1Ck8htaFwerBgh/MzGs9ukAXtG2KuPOclRg0VlZw9pcV8nrrNZj/CF5092nZJkHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X4Tjri0bpjl6+3YTehB44rO7d2yTB3OmstzEJiq8eKU=; b=mKGHAT7Yw3EWeISRyIqcbUN2qU
 cWiAne6YOYhu7wT7pF83BhOVJbrGSirtzLcCWqnnnGR7SZt20cBoe67MdmFsXKitJBXxXAP2uU0PZ
 nTvpRtX3kmDQK7hwzWM4YlPud87vjjPUtWCOMPmOUSS9VTIa6sk1VmnYn1pu0gHznws0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMt-00DHhh-8l; Mon, 26 Dec 2022 14:22:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DA4D160EBA;
 Mon, 26 Dec 2022 14:22:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F32A9C433EF;
 Mon, 26 Dec 2022 14:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064533;
 bh=y7MXoqLkJePjPQXj3TFzpaNKan0GSNj9EZYy1FjI9g4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=S3ViSU88TaCehP3ML1X9O0tbfUFnzVxZAaKgV1lWa4jeRpmGD7Yo8jaoIGA84PNL7
 L0JMUibflgJbT3PuFYAEM7tLDxz8lY/TNmxgQd8IB4j0ScHQf1H8HTmitora8vDBiV
 6NKhpgoaNEHDmgDZI/0BgjB/Xw92r9UOLjsC8i8kSKfXQwr3+/CI6wpTuIrlLXdOqg
 90g0hWvdyFlXX06PJWdSDJXhG4DfhNhn6hlhkEP+gvkKFSuGORNmP3M4KRsci/4Cx5
 2B7t0F5CStktntNVl049TvyQmvSaVXbf32PqNmBdznjno2ekvADz/+YlmSDbws9wPh
 7f4LbuEO54lIA==
Received: by pali.im (Postfix)
 id AE1A99D7; Mon, 26 Dec 2022 15:22:12 +0100 (CET)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Anton Altaparmakov <anton@tuxera.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Steve French <sfrench@samba.org>,
 Paulo Alcantara <pc@cjr.nz>, Ronnie Sahlberg <lsahlber@redhat.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Pavel Machek <pavel@ucw.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>
Date: Mon, 26 Dec 2022 15:21:43 +0100
Message-Id: <20221226142150.13324-12-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: NLS table for utf8 is broken and cannot be fixed. So instead
 of broken utf8 nls functions char2uni() and uni2char() use functions
 utf8_to_utf32()
 and utf32_to_utf8() which implements correct encoding and decoding between
 Unicode code points and UTF-8 [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMt-00DHhh-8l
X-Mailman-Approved-At: Mon, 26 Dec 2022 20:37:01 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH v2 11/18] hfsplus: Do not use broken
 utf8 NLS table for iocharset=utf8 mount option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

TkxTIHRhYmxlIGZvciB1dGY4IGlzIGJyb2tlbiBhbmQgY2Fubm90IGJlIGZpeGVkLgoKU28gaW5z
dGVhZCBvZiBicm9rZW4gdXRmOCBubHMgZnVuY3Rpb25zIGNoYXIydW5pKCkgYW5kIHVuaTJjaGFy
KCkgdXNlCmZ1bmN0aW9ucyB1dGY4X3RvX3V0ZjMyKCkgYW5kIHV0ZjMyX3RvX3V0ZjgoKSB3aGlj
aCBpbXBsZW1lbnRzIGNvcnJlY3QKZW5jb2RpbmcgYW5kIGRlY29kaW5nIGJldHdlZW4gVW5pY29k
ZSBjb2RlIHBvaW50cyBhbmQgVVRGLTggc2VxdWVuY2UuCgpOb3RlIHRoYXQgdGhpcyBmcyBkcml2
ZXIgZG9lcyBub3Qgc3VwcG9ydCBmdWxsIFVuaWNvZGUgcmFuZ2UsIHNwZWNpYWxseQpVVEYtMTYg
c3Vycm9nYXRlIHBhaXJzIGFyZSB1bnN1cHBvcnRlZC4gVGhpcyBwYXRjaCBkb2VzIG5vdCBjaGFu
Z2UgdGhpcwpsaW1pdGF0aW9uIGFuZCBzdXBwb3J0IGZvciBVVEYtMTYgc3Vycm9nYXRlIHBhaXJz
IHN0YXkgdW5pbXBsZW1lbnRlZC4KCldoZW4gaW9jaGF0c2V0PXV0ZjggaXMgdXNlZCB0aGVuIHNl
dCBzYmktPm5scyB0byBOVUxMIGFuZCB1c2UgaXQgZm9yCmRpc3Rpbmd1aXNoIGJldHdlZW4gdGhl
IGZhY3QgaWYgTkxTIHRhYmxlIG9yIG5hdGl2ZSBVVEYtOCBmdW5jdGlvbnMgc2hvdWxkCmJlIHVz
ZWQuCgpTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgotLS0KIGZz
L2hmc3BsdXMvZGlyLmMgICAgICAgICAgICB8ICA3ICsrKysrLS0KIGZzL2hmc3BsdXMvb3B0aW9u
cy5jICAgICAgICB8IDMyICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiBmcy9oZnNw
bHVzL3N1cGVyLmMgICAgICAgICAgfCAgNyArLS0tLS0tCiBmcy9oZnNwbHVzL3VuaWNvZGUuYyAg
ICAgICAgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCiBmcy9oZnNwbHVzL3hh
dHRyLmMgICAgICAgICAgfCAyMCArKysrKysrKysrKysrLS0tLS0tLQogZnMvaGZzcGx1cy94YXR0
cl9zZWN1cml0eS5jIHwgIDYgKysrKy0tCiA2IGZpbGVzIGNoYW5nZWQsIDY5IGluc2VydGlvbnMo
KyksIDM0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMvZGlyLmMgYi9mcy9o
ZnNwbHVzL2Rpci5jCmluZGV4IDg0NzE0YmJjY2MxMi4uYjE5Y2I2YzM0ZGQyIDEwMDY0NAotLS0g
YS9mcy9oZnNwbHVzL2Rpci5jCisrKyBiL2ZzL2hmc3BsdXMvZGlyLmMKQEAgLTE0NCw3ICsxNDQs
OSBAQCBzdGF0aWMgaW50IGhmc3BsdXNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0
IGRpcl9jb250ZXh0ICpjdHgpCiAJZXJyID0gaGZzX2ZpbmRfaW5pdChIRlNQTFVTX1NCKHNiKS0+
Y2F0X3RyZWUsICZmZCk7CiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKLQlzdHJidWYgPSBrbWFs
bG9jKE5MU19NQVhfQ0hBUlNFVF9TSVpFICogSEZTUExVU19NQVhfU1RSTEVOICsgMSwgR0ZQX0tF
Uk5FTCk7CisJbGVuID0gKEhGU1BMVVNfU0Ioc2IpLT5ubHMgPyBOTFNfTUFYX0NIQVJTRVRfU0la
RSA6IDQpICoKKwkgICAgICBIRlNQTFVTX01BWF9TVFJMRU4gKyAxOworCXN0cmJ1ZiA9IGttYWxs
b2MobGVuLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXN0cmJ1ZikgewogCQllcnIgPSAtRU5PTUVNOwog
CQlnb3RvIG91dDsKQEAgLTIwMyw3ICsyMDUsOCBAQCBzdGF0aWMgaW50IGhmc3BsdXNfcmVhZGRp
cihzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IGRpcl9jb250ZXh0ICpjdHgpCiAJCWhmc19ibm9k
ZV9yZWFkKGZkLmJub2RlLCAmZW50cnksIGZkLmVudHJ5b2Zmc2V0LAogCQkJZmQuZW50cnlsZW5n
dGgpOwogCQl0eXBlID0gYmUxNl90b19jcHUoZW50cnkudHlwZSk7Ci0JCWxlbiA9IE5MU19NQVhf
Q0hBUlNFVF9TSVpFICogSEZTUExVU19NQVhfU1RSTEVOOworCQlsZW4gPSAoSEZTUExVU19TQihz
YiktPm5scyA/IE5MU19NQVhfQ0hBUlNFVF9TSVpFIDogNCkgKgorCQkgICAgICBIRlNQTFVTX01B
WF9TVFJMRU47CiAJCWVyciA9IGhmc3BsdXNfdW5pMmFzYyhzYiwgJmZkLmtleS0+Y2F0Lm5hbWUs
IHN0cmJ1ZiwgJmxlbik7CiAJCWlmIChlcnIpCiAJCQlnb3RvIG91dDsKZGlmZiAtLWdpdCBhL2Zz
L2hmc3BsdXMvb3B0aW9ucy5jIGIvZnMvaGZzcGx1cy9vcHRpb25zLmMKaW5kZXggZDNkYzBkNGJh
NzdmLi5lZGU3Nzc2ZDFkYTkgMTAwNjQ0Ci0tLSBhL2ZzL2hmc3BsdXMvb3B0aW9ucy5jCisrKyBi
L2ZzL2hmc3BsdXMvb3B0aW9ucy5jCkBAIC0xMDQsNiArMTA0LDkgQEAgaW50IGhmc3BsdXNfcGFy
c2Vfb3B0aW9ucyhjaGFyICppbnB1dCwgc3RydWN0IGhmc3BsdXNfc2JfaW5mbyAqc2JpKQogCWNo
YXIgKnA7CiAJc3Vic3RyaW5nX3QgYXJnc1tNQVhfT1BUX0FSR1NdOwogCWludCB0bXAsIHRva2Vu
OworCWJvb2wgaGF2ZV9pb2NoYXJzZXQ7CisKKwloYXZlX2lvY2hhcnNldCA9IGZhbHNlOwogCiAJ
aWYgKCFpbnB1dCkKIAkJZ290byBkb25lOwpAQCAtMTc1LDIwICsxNzgsMjQgQEAgaW50IGhmc3Bs
dXNfcGFyc2Vfb3B0aW9ucyhjaGFyICppbnB1dCwgc3RydWN0IGhmc3BsdXNfc2JfaW5mbyAqc2Jp
KQogCQkJcHJfd2Fybigib3B0aW9uIG5scz0gaXMgZGVwcmVjYXRlZCwgdXNlIGlvY2hhcnNldD1c
biIpOwogCQkJZmFsbHRocm91Z2g7CiAJCWNhc2Ugb3B0X2lvY2hhcnNldDoKLQkJCWlmIChzYmkt
Pm5scykgeworCQkJaWYgKGhhdmVfaW9jaGFyc2V0KSB7CiAJCQkJcHJfZXJyKCJ1bmFibGUgdG8g
Y2hhbmdlIG5scyBtYXBwaW5nXG4iKTsKIAkJCQlyZXR1cm4gMDsKIAkJCX0KIAkJCXAgPSBtYXRj
aF9zdHJkdXAoJmFyZ3NbMF0pOwotCQkJaWYgKHApCi0JCQkJc2JpLT5ubHMgPSBsb2FkX25scyhw
KTsKLQkJCWlmICghc2JpLT5ubHMpIHsKLQkJCQlwcl9lcnIoInVuYWJsZSB0byBsb2FkIG5scyBt
YXBwaW5nIFwiJXNcIlxuIiwKLQkJCQkgICAgICAgcCk7Ci0JCQkJa2ZyZWUocCk7CisJCQlpZiAo
IXApCiAJCQkJcmV0dXJuIDA7CisJCQlpZiAoc3RyY21wKHAsICJ1dGY4IikgIT0gMCkgeworCQkJ
CXNiaS0+bmxzID0gbG9hZF9ubHMocCk7CisJCQkJaWYgKCFzYmktPm5scykgeworCQkJCQlwcl9l
cnIoInVuYWJsZSB0byBsb2FkIG5scyBtYXBwaW5nICIKKwkJCQkJCSJcIiVzXCJcbiIsIHApOwor
CQkJCQlrZnJlZShwKTsKKwkJCQkJcmV0dXJuIDA7CisJCQkJfQogCQkJfQogCQkJa2ZyZWUocCk7
CisJCQloYXZlX2lvY2hhcnNldCA9IHRydWU7CiAJCQlicmVhazsKIAkJY2FzZSBvcHRfZGVjb21w
b3NlOgogCQkJY2xlYXJfYml0KEhGU1BMVVNfU0JfTk9ERUNPTVBPU0UsICZzYmktPmZsYWdzKTsK
QEAgLTIxMSwxMyArMjE4LDEwIEBAIGludCBoZnNwbHVzX3BhcnNlX29wdGlvbnMoY2hhciAqaW5w
dXQsIHN0cnVjdCBoZnNwbHVzX3NiX2luZm8gKnNiaSkKIAl9CiAKIGRvbmU6Ci0JaWYgKCFzYmkt
Pm5scykgewotCQkvKiB0cnkgdXRmOCBmaXJzdCwgYXMgdGhpcyBpcyB0aGUgb2xkIGRlZmF1bHQg
YmVoYXZpb3VyICovCi0JCXNiaS0+bmxzID0gbG9hZF9ubHMoInV0ZjgiKTsKLQkJaWYgKCFzYmkt
Pm5scykKLQkJCXNiaS0+bmxzID0gbG9hZF9ubHNfZGVmYXVsdCgpOwotCQlpZiAoIXNiaS0+bmxz
KQotCQkJcmV0dXJuIDA7CisJaWYgKCFoYXZlX2lvY2hhcnNldCkgeworCQkvKiB1c2UgdXRmOCwg
YXMgdGhpcyBpcyB0aGUgb2xkIGRlZmF1bHQgYmVoYXZpb3VyICovCisJCXByX2RlYnVnKCJ1c2lu
ZyBuYXRpdmUgVVRGLTggd2l0aG91dCBubHNcbiIpOworCQkvKiBubyBzYmktPm5scyBtZWFucyB0
aGF0IG5hdGl2ZSBVVEYtOCBjb2RlIGlzIHVzZWQgKi8KIAl9CiAKIAlyZXR1cm4gMTsKZGlmZiAt
LWdpdCBhL2ZzL2hmc3BsdXMvc3VwZXIuYyBiL2ZzL2hmc3BsdXMvc3VwZXIuYwppbmRleCAxMjJl
ZDg5ZWJmOWYuLjhhNjZhNzdhZDNlMSAxMDA2NDQKLS0tIGEvZnMvaGZzcGx1cy9zdXBlci5jCisr
KyBiL2ZzL2hmc3BsdXMvc3VwZXIuYwpAQCAtNDAzLDExICs0MDMsNyBAQCBzdGF0aWMgaW50IGhm
c3BsdXNfZmlsbF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCB2b2lkICpkYXRhLCBpbnQg
c2lsZW50KQogCiAJLyogdGVtcG9yYXJpbHkgdXNlIHV0ZjggdG8gY29ycmVjdGx5IGZpbmQgdGhl
IGhpZGRlbiBkaXIgYmVsb3cgKi8KIAlubHMgPSBzYmktPm5sczsKLQlzYmktPm5scyA9IGxvYWRf
bmxzKCJ1dGY4Iik7Ci0JaWYgKCFzYmktPm5scykgewotCQlwcl9lcnIoInVuYWJsZSB0byBsb2Fk
IG5scyBmb3IgdXRmOFxuIik7Ci0JCWdvdG8gb3V0X3VubG9hZF9ubHM7Ci0JfQorCXNiaS0+bmxz
ID0gTlVMTDsKIAogCS8qIEdyYWIgdGhlIHZvbHVtZSBoZWFkZXIgKi8KIAlpZiAoaGZzcGx1c19y
ZWFkX3dyYXBwZXIoc2IpKSB7CkBAIC01ODUsNyArNTgxLDYgQEAgc3RhdGljIGludCBoZnNwbHVz
X2ZpbGxfc3VwZXIoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgdm9pZCAqZGF0YSwgaW50IHNpbGVu
dCkKIAkJfQogCX0KIAotCXVubG9hZF9ubHMoc2JpLT5ubHMpOwogCXNiaS0+bmxzID0gbmxzOwog
CXJldHVybiAwOwogCmRpZmYgLS1naXQgYS9mcy9oZnNwbHVzL3VuaWNvZGUuYyBiL2ZzL2hmc3Bs
dXMvdW5pY29kZS5jCmluZGV4IDczMzQyYzkyNWE0Yi4uZGM5YmU0MGQwNDlmIDEwMDY0NAotLS0g
YS9mcy9oZnNwbHVzL3VuaWNvZGUuYworKysgYi9mcy9oZnNwbHVzL3VuaWNvZGUuYwpAQCAtMTkw
LDcgKzE5MCwxMiBAQCBpbnQgaGZzcGx1c191bmkyYXNjKHN0cnVjdCBzdXBlcl9ibG9jayAqc2Is
CiAJCQkJYzAgPSAnOic7CiAJCQkJYnJlYWs7CiAJCQl9Ci0JCQlyZXMgPSBubHMtPnVuaTJjaGFy
KGMwLCBvcCwgbGVuKTsKKwkJCWlmIChubHMpCisJCQkJcmVzID0gbmxzLT51bmkyY2hhcihjMCwg
b3AsIGxlbik7CisJCQllbHNlIGlmIChsZW4gPiAwKQorCQkJCXJlcyA9IHV0ZjMyX3RvX3V0Zjgo
YzAsIG9wLCBsZW4pOworCQkJZWxzZQorCQkJCXJlcyA9IC1FTkFNRVRPT0xPTkc7CiAJCQlpZiAo
cmVzIDwgMCkgewogCQkJCWlmIChyZXMgPT0gLUVOQU1FVE9PTE9ORykKIAkJCQkJZ290byBvdXQ7
CkBAIC0yMzMsNyArMjM4LDEyIEBAIGludCBoZnNwbHVzX3VuaTJhc2Moc3RydWN0IHN1cGVyX2Js
b2NrICpzYiwKIAkJCWNjID0gYzA7CiAJCX0KIGRvbmU6Ci0JCXJlcyA9IG5scy0+dW5pMmNoYXIo
Y2MsIG9wLCBsZW4pOworCQlpZiAobmxzKQorCQkJcmVzID0gbmxzLT51bmkyY2hhcihjYywgb3As
IGxlbik7CisJCWVsc2UgaWYgKGxlbiA+IDApCisJCQlyZXMgPSB1dGYzMl90b191dGY4KGNjLCBv
cCwgbGVuKTsKKwkJZWxzZQorCQkJcmVzID0gLUVOQU1FVE9PTE9ORzsKIAkJaWYgKHJlcyA8IDAp
IHsKIAkJCWlmIChyZXMgPT0gLUVOQU1FVE9PTE9ORykKIAkJCQlnb3RvIG91dDsKQEAgLTI1Niw3
ICsyNjYsMjIgQEAgaW50IGhmc3BsdXNfdW5pMmFzYyhzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLAog
c3RhdGljIGlubGluZSBpbnQgYXNjMnVuaWNoYXIoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgY29u
c3QgY2hhciAqYXN0ciwgaW50IGxlbiwKIAkJCSAgICAgIHdjaGFyX3QgKnVjKQogewotCWludCBz
aXplID0gSEZTUExVU19TQihzYiktPm5scy0+Y2hhcjJ1bmkoYXN0ciwgbGVuLCB1Yyk7CisJc3Ry
dWN0IG5sc190YWJsZSAqbmxzID0gSEZTUExVU19TQihzYiktPm5sczsKKwl1bmljb2RlX3QgdTsK
KwlpbnQgc2l6ZTsKKworCWlmIChubHMpCisJCXNpemUgPSBubHMtPmNoYXIydW5pKGFzdHIsIGxl
biwgdWMpOworCWVsc2UgeworCQlzaXplID0gdXRmOF90b191dGYzMihhc3RyLCBsZW4sICZ1KTsK
KwkJaWYgKHNpemUgPj0gMCkgeworCQkJLyogVE9ETzogQWRkIHN1cHBvcnQgZm9yIFVURi0xNiBz
dXJyb2dhdGUgcGFpcnMgKi8KKwkJCWlmICh1IDw9IE1BWF9XQ0hBUl9UKQorCQkJCSp1YyA9IHU7
CisJCQllbHNlCisJCQkJc2l6ZSA9IC1FSU5WQUw7CisJCX0KKwl9CiAJaWYgKHNpemUgPD0gMCkg
ewogCQkqdWMgPSAnPyc7CiAJCXNpemUgPSAxOwpkaWZmIC0tZ2l0IGEvZnMvaGZzcGx1cy94YXR0
ci5jIGIvZnMvaGZzcGx1cy94YXR0ci5jCmluZGV4IDQ5ODkxYjEyYzQxNS4uNjA3ZjQ2YjNkMGYz
IDEwMDY0NAotLS0gYS9mcy9oZnNwbHVzL3hhdHRyLmMKKysrIGIvZnMvaGZzcGx1cy94YXR0ci5j
CkBAIC00MjIsMTEgKzQyMiwxMyBAQCBpbnQgaGZzcGx1c19zZXR4YXR0cihzdHJ1Y3QgaW5vZGUg
Kmlub2RlLCBjb25zdCBjaGFyICpuYW1lLAogCQkgICAgIGNvbnN0IHZvaWQgKnZhbHVlLCBzaXpl
X3Qgc2l6ZSwgaW50IGZsYWdzLAogCQkgICAgIGNvbnN0IGNoYXIgKnByZWZpeCwgc2l6ZV90IHBy
ZWZpeGxlbikKIHsKKwlpbnQgeGF0dHJfbmFtZV9sZW47CiAJY2hhciAqeGF0dHJfbmFtZTsKIAlp
bnQgcmVzOwogCi0JeGF0dHJfbmFtZSA9IGttYWxsb2MoTkxTX01BWF9DSEFSU0VUX1NJWkUgKiBI
RlNQTFVTX0FUVFJfTUFYX1NUUkxFTiArIDEsCi0JCUdGUF9LRVJORUwpOworCXhhdHRyX25hbWVf
bGVuID0gKEhGU1BMVVNfU0IoaW5vZGUtPmlfc2IpLT5ubHMgPyBOTFNfTUFYX0NIQVJTRVRfU0la
RSA6IDQpICoKKwkJCSBIRlNQTFVTX0FUVFJfTUFYX1NUUkxFTiArIDE7CisJeGF0dHJfbmFtZSA9
IGttYWxsb2MoeGF0dHJfbmFtZV9sZW4sIEdGUF9LRVJORUwpOwogCWlmICgheGF0dHJfbmFtZSkK
IAkJcmV0dXJuIC1FTk9NRU07CiAJc3RyY3B5KHhhdHRyX25hbWUsIHByZWZpeCk7CkBAIC01Nzgs
OSArNTgwLDExIEBAIHNzaXplX3QgaGZzcGx1c19nZXR4YXR0cihzdHJ1Y3QgaW5vZGUgKmlub2Rl
LCBjb25zdCBjaGFyICpuYW1lLAogewogCWludCByZXM7CiAJY2hhciAqeGF0dHJfbmFtZTsKKwlp
bnQgeGF0dHJfbmFtZV9sZW47CiAKLQl4YXR0cl9uYW1lID0ga21hbGxvYyhOTFNfTUFYX0NIQVJT
RVRfU0laRSAqIEhGU1BMVVNfQVRUUl9NQVhfU1RSTEVOICsgMSwKLQkJCSAgICAgR0ZQX0tFUk5F
TCk7CisJeGF0dHJfbmFtZV9sZW4gPSAoSEZTUExVU19TQihpbm9kZS0+aV9zYiktPm5scyA/IE5M
U19NQVhfQ0hBUlNFVF9TSVpFIDogNCkgKgorCQkJIEhGU1BMVVNfQVRUUl9NQVhfU1RSTEVOICsg
MTsKKwl4YXR0cl9uYW1lID0ga21hbGxvYyh4YXR0cl9uYW1lX2xlbiwgR0ZQX0tFUk5FTCk7CiAJ
aWYgKCF4YXR0cl9uYW1lKQogCQlyZXR1cm4gLUVOT01FTTsKIApAQCAtNjk5LDggKzcwMyw5IEBA
IHNzaXplX3QgaGZzcGx1c19saXN0eGF0dHIoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBjaGFyICpi
dWZmZXIsIHNpemVfdCBzaXplKQogCQlyZXR1cm4gZXJyOwogCX0KIAotCXN0cmJ1ZiA9IGttYWxs
b2MoTkxTX01BWF9DSEFSU0VUX1NJWkUgKiBIRlNQTFVTX0FUVFJfTUFYX1NUUkxFTiArCi0JCQlY
QVRUUl9NQUNfT1NYX1BSRUZJWF9MRU4gKyAxLCBHRlBfS0VSTkVMKTsKKwl4YXR0cl9uYW1lX2xl
biA9IChIRlNQTFVTX1NCKGlub2RlLT5pX3NiKS0+bmxzID8gTkxTX01BWF9DSEFSU0VUX1NJWkUg
OiA0KSAqCisJCQkgSEZTUExVU19BVFRSX01BWF9TVFJMRU4gKyBYQVRUUl9NQUNfT1NYX1BSRUZJ
WF9MRU4gKyAxOworCXN0cmJ1ZiA9IGttYWxsb2MoeGF0dHJfbmFtZV9sZW4sIEdGUF9LRVJORUwp
OwogCWlmICghc3RyYnVmKSB7CiAJCXJlcyA9IC1FTk9NRU07CiAJCWdvdG8gb3V0OwpAQCAtNzMy
LDcgKzczNyw4IEBAIHNzaXplX3QgaGZzcGx1c19saXN0eGF0dHIoc3RydWN0IGRlbnRyeSAqZGVu
dHJ5LCBjaGFyICpidWZmZXIsIHNpemVfdCBzaXplKQogCQlpZiAoYmUzMl90b19jcHUoYXR0cl9r
ZXkuY25pZCkgIT0gaW5vZGUtPmlfaW5vKQogCQkJZ290byBlbmRfbGlzdHhhdHRyOwogCi0JCXhh
dHRyX25hbWVfbGVuID0gTkxTX01BWF9DSEFSU0VUX1NJWkUgKiBIRlNQTFVTX0FUVFJfTUFYX1NU
UkxFTjsKKwkJeGF0dHJfbmFtZV9sZW4gPSAoSEZTUExVU19TQihpbm9kZS0+aV9zYiktPm5scyA/
IE5MU19NQVhfQ0hBUlNFVF9TSVpFIDogNCkgKgorCQkJCSBIRlNQTFVTX0FUVFJfTUFYX1NUUkxF
TjsKIAkJaWYgKGhmc3BsdXNfdW5pMmFzYyhpbm9kZS0+aV9zYiwKIAkJCShjb25zdCBzdHJ1Y3Qg
aGZzcGx1c191bmlzdHIgKikmZmQua2V5LT5hdHRyLmtleV9uYW1lLAogCQkJCQlzdHJidWYsICZ4
YXR0cl9uYW1lX2xlbikpIHsKZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMveGF0dHJfc2VjdXJpdHku
YyBiL2ZzL2hmc3BsdXMveGF0dHJfc2VjdXJpdHkuYwppbmRleCBjMWM3YTE2Y2JmMjEuLmI0YjQ1
Yzc5NmVmNCAxMDA2NDQKLS0tIGEvZnMvaGZzcGx1cy94YXR0cl9zZWN1cml0eS5jCisrKyBiL2Zz
L2hmc3BsdXMveGF0dHJfc2VjdXJpdHkuYwpAQCAtMzgsMTEgKzM4LDEzIEBAIHN0YXRpYyBpbnQg
aGZzcGx1c19pbml0eGF0dHJzKHN0cnVjdCBpbm9kZSAqaW5vZGUsCiAJCQkJdm9pZCAqZnNfaW5m
bykKIHsKIAljb25zdCBzdHJ1Y3QgeGF0dHIgKnhhdHRyOworCWludCB4YXR0cl9uYW1lX2xlbjsK
IAljaGFyICp4YXR0cl9uYW1lOwogCWludCBlcnIgPSAwOwogCi0JeGF0dHJfbmFtZSA9IGttYWxs
b2MoTkxTX01BWF9DSEFSU0VUX1NJWkUgKiBIRlNQTFVTX0FUVFJfTUFYX1NUUkxFTiArIDEsCi0J
CUdGUF9LRVJORUwpOworCXhhdHRyX25hbWVfbGVuID0gKEhGU1BMVVNfU0IoaW5vZGUtPmlfc2Ip
LT5ubHMgPyBOTFNfTUFYX0NIQVJTRVRfU0laRSA6IDQpICoKKwkJCSBIRlNQTFVTX0FUVFJfTUFY
X1NUUkxFTiArIDE7CisJeGF0dHJfbmFtZSA9IGttYWxsb2MoeGF0dHJfbmFtZV9sZW4sIEdGUF9L
RVJORUwpOwogCWlmICgheGF0dHJfbmFtZSkKIAkJcmV0dXJuIC1FTk9NRU07CiAJZm9yICh4YXR0
ciA9IHhhdHRyX2FycmF5OyB4YXR0ci0+bmFtZSAhPSBOVUxMOyB4YXR0cisrKSB7Ci0tIAoyLjIw
LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1u
dGZzLWRldgo=
