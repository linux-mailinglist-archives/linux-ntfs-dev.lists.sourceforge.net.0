Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B016564F5
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 26 Dec 2022 21:37:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1p9uDa-0004uI-EP;
	Mon, 26 Dec 2022 20:37:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMs-00035f-Pz;
 Mon, 26 Dec 2022 14:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ovAPluK+FZaOPjm1vYrV40xUC7fin6Ot2B+M4QpC7jc=; b=bo5pqbjM/NbjuMMwQmbb7KivB2
 csz0BUvktr/gW9V0bMZD4M33oQxLsXSXdMefJOReIgjlThnukyMjBq4hvmrth/+ZOIGsxOS0U9PjX
 RCAsRlKBcwJksMSnhdFpoWMvDFqONX/RG8uXl1Bklb2/L6sI3s+tflMsVcQduFyacwLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ovAPluK+FZaOPjm1vYrV40xUC7fin6Ot2B+M4QpC7jc=; b=INjkPOEg3x/gGS36aCYDKkINKp
 2E5TbTuRAN5TaWDFtKbuDJfiBIUihbkidOix39MgZ185J9DameR1LAPSzrDDGCSkHySdY9vcK4mtc
 JbC/sj7DGkSR/a8arKgFuma91Nj0+2dVT81LI1totu7BnjKcvxazSKv2+ek9960kQ4IA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMr-0002CB-VN; Mon, 26 Dec 2022 14:22:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CE3F360EBB;
 Mon, 26 Dec 2022 14:22:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51663C433D2;
 Mon, 26 Dec 2022 14:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064537;
 bh=RK9DOOb9HQTHiFbnB9yl27BsQqt4tsB/kdDZtxluKjg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=A7as4conG80j3KTRyKa+pZqH2p0+HLcM2KRFTFrHeRHtwwEh0B3ScNLvlE5gT4QUH
 8/C3yU+iAcX7YjDaj9Ax2VnfevhCUw7yKVg6agLFv2tIavN2uYUuiXgrJEuPBEDSaN
 0WJLfE9fKshKT4R7zs+sVGwxdBh39MdfdfmgRTQPE8j9peTJWxIj7H+DY078+Mht6y
 5zY25iRlomgxKTKRQZgDx3E/Q2ZW1lsTglJE2ZZbrsdHh8AQB/NJcD34MLXljLhbD4
 wsCXF73UKZTVw369GLBx1RysIjZo+kgOTOoU3rnaYYkBimlp+HQRtuDtTqfgu1Nuke
 PozOaVpfexFtg==
Received: by pali.im (Postfix)
 id 0C7F39D7; Mon, 26 Dec 2022 15:22:17 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:47 +0100
Message-Id: <20221226142150.13324-16-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: NLS table for utf8 is broken and cannot be fixed. So instead
 of broken utf8 nls functions char2uni() and uni2char() use functions
 utf8s_to_utf16s()
 and utf16s_to_utf8s() which implements correct conversion between UTF-16
 and UTF-8. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMr-0002CB-VN
X-Mailman-Approved-At: Mon, 26 Dec 2022 20:37:02 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH v2 15/18] ntfs: Do not use broken utf8
 NLS table for iocharset=utf8 mount option
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
KCkgdXNlCmZ1bmN0aW9ucyB1dGY4c190b191dGYxNnMoKSBhbmQgdXRmMTZzX3RvX3V0ZjhzKCkg
d2hpY2ggaW1wbGVtZW50cyBjb3JyZWN0CmNvbnZlcnNpb24gYmV0d2VlbiBVVEYtMTYgYW5kIFVU
Ri04LgoKVGhlc2UgZnVuY3Rpb25zIGltcGxlbWVudHMgYWxzbyBjb3JyZWN0IHByb2Nlc3Npbmcg
b2YgVVRGLTE2IHN1cnJvZ2F0ZQpwYWlycyBhbmQgdGhlcmVmb3JlIGFmdGVyIHRoaXMgY2hhbmdl
IG50ZnMgZHJpdmVyIHdvdWxkIGJlIGFibGUgdG8gY29ycmVjdGx5CmhhbmRsZSBhbHNvIGZpbGUg
bmFtZXMgd2l0aCA0LWJ5dGUgVVRGLTggc2VxdWVuY2VzLgoKV2hlbiBpb2NoYXRzZXQ9dXRmOCBp
cyB1c2VkIHRoZW4gc2V0IHZvbC0+bmxzX21hcCB0byBOVUxMIGFuZCB1c2UgaXQgZm9yCmRpc3Rp
bmd1aXNoIGJldHdlZW4gdGhlIGZhY3QgaWYgTkxTIHRhYmxlIG9yIG5hdGl2ZSBVVEYtOCBmdW5j
dGlvbnMgc2hvdWxkCmJlIHVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBr
ZXJuZWwub3JnPgotLS0KIGZzL250ZnMvZGlyLmMgICAgfCAgNiArKysrLS0KIGZzL250ZnMvaW5v
ZGUuYyAgfCAgNSArKysrLQogZnMvbnRmcy9zdXBlci5jICB8IDQxICsrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiBmcy9udGZzL3VuaXN0ci5jIHwgMjggKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLQogNCBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAy
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9udGZzL2Rpci5jIGIvZnMvbnRmcy9kaXIu
YwppbmRleCBjZDk2MDgzYTEyYzguLjAzNTU4MmI5MmFhMiAxMDA2NDQKLS0tIGEvZnMvbnRmcy9k
aXIuYworKysgYi9mcy9udGZzL2Rpci5jCkBAIC0xMDM0LDcgKzEwMzQsOCBAQCBzdGF0aWMgaW5s
aW5lIGludCBudGZzX2ZpbGxkaXIobnRmc192b2x1bWUgKnZvbCwKIAl9CiAJbmFtZV9sZW4gPSBu
dGZzX3Vjc3RvbmxzKHZvbCwgKG50ZnNjaGFyKikmaWUtPmtleS5maWxlX25hbWUuZmlsZV9uYW1l
LAogCQkJaWUtPmtleS5maWxlX25hbWUuZmlsZV9uYW1lX2xlbmd0aCwgJm5hbWUsCi0JCQlOVEZT
X01BWF9OQU1FX0xFTiAqIE5MU19NQVhfQ0hBUlNFVF9TSVpFICsgMSk7CisJCQlOVEZTX01BWF9O
QU1FX0xFTiAqCisJCQkodm9sLT5ubHNfbWFwID8gTkxTX01BWF9DSEFSU0VUX1NJWkUgOiA0KSAr
IDEpOwogCWlmIChuYW1lX2xlbiA8PSAwKSB7CiAJCW50ZnNfd2FybmluZyh2b2wtPnNiLCAiU2tp
cHBpbmcgdW5yZXByZXNlbnRhYmxlIGlub2RlIDB4JWxseC4iLAogCQkJCShsb25nIGxvbmcpTVJF
Rl9MRShpZS0+ZGF0YS5kaXIuaW5kZXhlZF9maWxlKSk7CkBAIC0xMTE4LDcgKzExMTksOCBAQCBz
dGF0aWMgaW50IG50ZnNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IGRpcl9jb250
ZXh0ICphY3RvcikKIAkgKiBBbGxvY2F0ZSBhIGJ1ZmZlciB0byBzdG9yZSB0aGUgY3VycmVudCBu
YW1lIGJlaW5nIHByb2Nlc3NlZAogCSAqIGNvbnZlcnRlZCB0byBmb3JtYXQgZGV0ZXJtaW5lZCBi
eSBjdXJyZW50IE5MUy4KIAkgKi8KLQluYW1lID0ga21hbGxvYyhOVEZTX01BWF9OQU1FX0xFTiAq
IE5MU19NQVhfQ0hBUlNFVF9TSVpFICsgMSwgR0ZQX05PRlMpOworCW5hbWUgPSBrbWFsbG9jKE5U
RlNfTUFYX05BTUVfTEVOICoKKwkJICAgICAgICh2b2wtPm5sc19tYXAgPyBOTFNfTUFYX0NIQVJT
RVRfU0laRSA6IDQpICsgMSwgR0ZQX05PRlMpOwogCWlmICh1bmxpa2VseSghbmFtZSkpIHsKIAkJ
ZXJyID0gLUVOT01FTTsKIAkJZ290byBlcnJfb3V0OwpkaWZmIC0tZ2l0IGEvZnMvbnRmcy9pbm9k
ZS5jIGIvZnMvbnRmcy9pbm9kZS5jCmluZGV4IDJhYjA3MWM0NTYwZC4uNzk1YjU0OTVhODk3IDEw
MDY0NAotLS0gYS9mcy9udGZzL2lub2RlLmMKKysrIGIvZnMvbnRmcy9pbm9kZS5jCkBAIC0yMzE0
LDcgKzIzMTQsMTAgQEAgaW50IG50ZnNfc2hvd19vcHRpb25zKHN0cnVjdCBzZXFfZmlsZSAqc2Ys
IHN0cnVjdCBkZW50cnkgKnJvb3QpCiAJCXNlcV9wcmludGYoc2YsICIsZm1hc2s9MCVvIiwgdm9s
LT5mbWFzayk7CiAJCXNlcV9wcmludGYoc2YsICIsZG1hc2s9MCVvIiwgdm9sLT5kbWFzayk7CiAJ
fQotCXNlcV9wcmludGYoc2YsICIsaW9jaGFyc2V0PSVzIiwgdm9sLT5ubHNfbWFwLT5jaGFyc2V0
KTsKKwlpZiAodm9sLT5ubHNfbWFwKQorCQlzZXFfcHJpbnRmKHNmLCAiLGlvY2hhcnNldD0lcyIs
IHZvbC0+bmxzX21hcC0+Y2hhcnNldCk7CisJZWxzZQorCQlzZXFfcHV0cyhzZiwgIixpb2NoYXJz
ZXQ9dXRmOCIpOwogCWlmIChOVm9sQ2FzZVNlbnNpdGl2ZSh2b2wpKQogCQlzZXFfcHJpbnRmKHNm
LCAiLGNhc2Vfc2Vuc2l0aXZlIik7CiAJaWYgKE5Wb2xTaG93U3lzdGVtRmlsZXModm9sKSkKZGlm
ZiAtLWdpdCBhL2ZzL250ZnMvc3VwZXIuYyBiL2ZzL250ZnMvc3VwZXIuYwppbmRleCBiNGYyNjAz
NWU3NTAuLmIxNWNkOTJhOWRhZCAxMDA2NDQKLS0tIGEvZnMvbnRmcy9zdXBlci5jCisrKyBiL2Zz
L250ZnMvc3VwZXIuYwpAQCAtODQsNyArODQsNyBAQCBzdGF0aWMgaW50IHNpbXBsZV9nZXRib29s
KGNoYXIgKnMsIGJvb2wgKnNldHZhbCkKICAqCiAgKiBQYXJzZSB0aGUgcmVjb2duaXplZCBvcHRp
b25zIGluIEBvcHQgZm9yIHRoZSBudGZzIHZvbHVtZSBkZXNjcmliZWQgYnkgQHZvbC4KICAqLwot
c3RhdGljIGJvb2wgcGFyc2Vfb3B0aW9ucyhudGZzX3ZvbHVtZSAqdm9sLCBjaGFyICpvcHQpCitz
dGF0aWMgYm9vbCBwYXJzZV9vcHRpb25zKG50ZnNfdm9sdW1lICp2b2wsIGNoYXIgKm9wdCwgaW50
IHJlbW91bnQpCiB7CiAJY2hhciAqcCwgKnYsICpvdjsKIAlzdGF0aWMgY2hhciAqdXRmOCA9ICJ1
dGY4IjsKQEAgLTk1LDYgKzk1LDcgQEAgc3RhdGljIGJvb2wgcGFyc2Vfb3B0aW9ucyhudGZzX3Zv
bHVtZSAqdm9sLCBjaGFyICpvcHQpCiAJaW50IG1mdF96b25lX211bHRpcGxpZXIgPSAtMSwgb25f
ZXJyb3JzID0gLTE7CiAJaW50IHNob3dfc3lzX2ZpbGVzID0gLTEsIGNhc2Vfc2Vuc2l0aXZlID0g
LTEsIGRpc2FibGVfc3BhcnNlID0gLTE7CiAJc3RydWN0IG5sc190YWJsZSAqbmxzX21hcCA9IE5V
TEw7CisJaW50IGhhdmVfaW9jaGFyc2V0ID0gMDsKIAogCS8qIEkgYW0gbGF6eS4uLiAoLTggKi8K
ICNkZWZpbmUgTlRGU19HRVRPUFRfV0lUSF9ERUZBVUxUKG9wdGlvbiwgdmFyaWFibGUsIGRlZmF1
bHRfdmFsdWUpCVwKQEAgLTE5NiwxMiArMTk3LDE2IEBAIHN0YXRpYyBib29sIHBhcnNlX29wdGlv
bnMobnRmc192b2x1bWUgKnZvbCwgY2hhciAqb3B0KQogCQkJCWdvdG8gbmVlZHNfYXJnOwogdXNl
X3V0Zjg6CiAJCQl1bmxvYWRfbmxzKG5sc19tYXApOwotCQkJbmxzX21hcCA9IGxvYWRfbmxzKHYp
OwotCQkJaWYgKCFubHNfbWFwKSB7Ci0JCQkJbnRmc19lcnJvcih2b2wtPnNiLCAiTkxTIGNoYXJh
Y3RlciBzZXQgIgotCQkJCQkgICAiJXMgbm90IGZvdW5kLiIsIHYpOwotCQkJCXJldHVybiBmYWxz
ZTsKKwkJCW5sc19tYXAgPSBOVUxMOworCQkJaWYgKHN0cmNtcCh2LCAidXRmOCIpICE9IDApIHsK
KwkJCQlubHNfbWFwID0gbG9hZF9ubHModik7CisJCQkJaWYgKCFubHNfbWFwKSB7CisJCQkJCW50
ZnNfZXJyb3Iodm9sLT5zYiwgIk5MUyBjaGFyYWN0ZXIgc2V0ICIKKwkJCQkJCSAgICIlcyBub3Qg
Zm91bmQuIiwgdik7CisJCQkJCXJldHVybiBmYWxzZTsKKwkJCQl9CiAJCQl9CisJCQloYXZlX2lv
Y2hhcnNldCA9IDE7CiAJCX0gZWxzZSBpZiAoIXN0cmNtcChwLCAidXRmOCIpKSB7CiAJCQlib29s
IHZhbCA9IGZhbHNlOwogCQkJbnRmc193YXJuaW5nKHZvbC0+c2IsICJPcHRpb24gdXRmOCBpcyBu
byBsb25nZXIgIgpAQCAtMjQxLDI1ICsyNDYsMjcgQEAgc3RhdGljIGJvb2wgcGFyc2Vfb3B0aW9u
cyhudGZzX3ZvbHVtZSAqdm9sLCBjaGFyICpvcHQpCiAJCQlyZXR1cm4gZmFsc2U7CiAJCX0KIAl9
Ci0JaWYgKG5sc19tYXApIHsKLQkJaWYgKHZvbC0+bmxzX21hcCAmJiB2b2wtPm5sc19tYXAgIT0g
bmxzX21hcCkgeworCWlmIChoYXZlX2lvY2hhcnNldCkgeworCQlpZiAocmVtb3VudCAmJiB2b2wt
Pm5sc19tYXAgIT0gbmxzX21hcCkgewogCQkJbnRmc19lcnJvcih2b2wtPnNiLCAiQ2Fubm90IGNo
YW5nZSBOTFMgY2hhcmFjdGVyIHNldCAiCiAJCQkJCSJvbiByZW1vdW50LiIpOwogCQkJcmV0dXJu
IGZhbHNlOwotCQl9IC8qIGVsc2UgKCF2b2wtPm5sc19tYXApICovCi0JCW50ZnNfZGVidWcoIlVz
aW5nIE5MUyBjaGFyYWN0ZXIgc2V0ICVzLiIsIG5sc19tYXAtPmNoYXJzZXQpOwotCQl2b2wtPm5s
c19tYXAgPSBubHNfbWFwOwotCX0gZWxzZSAvKiAoIW5sc19tYXApICovIHsKLQkJaWYgKCF2b2wt
Pm5sc19tYXApIHsKKwkJfSBlbHNlIGlmICghcmVtb3VudCkgeworCQkJbnRmc19kZWJ1ZygiVXNp
bmcgTkxTIGNoYXJhY3RlciBzZXQgJXMuIiwKKwkJCQkJbmxzX21hcCA/IG5sc19tYXAtPmNoYXJz
ZXQgOiAidXRmOCIpOworCQkJdm9sLT5ubHNfbWFwID0gbmxzX21hcDsKKwkJfQorCX0gZWxzZSBp
ZiAoIXJlbW91bnQpIHsKKwkJaWYgKHN0cmNtcChDT05GSUdfTkxTX0RFRkFVTFQsICJ1dGY4Iikg
IT0gMCkgewogCQkJdm9sLT5ubHNfbWFwID0gbG9hZF9ubHNfZGVmYXVsdCgpOwogCQkJaWYgKCF2
b2wtPm5sc19tYXApIHsKIAkJCQludGZzX2Vycm9yKHZvbC0+c2IsICJGYWlsZWQgdG8gbG9hZCBk
ZWZhdWx0ICIKIAkJCQkJCSJOTFMgY2hhcmFjdGVyIHNldC4iKTsKIAkJCQlyZXR1cm4gZmFsc2U7
CiAJCQl9Ci0JCQludGZzX2RlYnVnKCJVc2luZyBkZWZhdWx0IE5MUyBjaGFyYWN0ZXIgc2V0ICgl
cykuIiwKLQkJCQkJdm9sLT5ubHNfbWFwLT5jaGFyc2V0KTsKIAkJfQorCQludGZzX2RlYnVnKCJV
c2luZyBkZWZhdWx0IE5MUyBjaGFyYWN0ZXIgc2V0ICglcykuIiwKKwkJCQl2b2wtPm5sc19tYXAg
PyB2b2wtPm5sc19tYXAtPmNoYXJzZXQgOiAidXRmOCIpOwogCX0KIAlpZiAobWZ0X3pvbmVfbXVs
dGlwbGllciAhPSAtMSkgewogCQlpZiAodm9sLT5tZnRfem9uZV9tdWx0aXBsaWVyICYmIHZvbC0+
bWZ0X3pvbmVfbXVsdGlwbGllciAhPQpAQCAtNTM0LDcgKzU0MSw3IEBAIHN0YXRpYyBpbnQgbnRm
c19yZW1vdW50KHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIGludCAqZmxhZ3MsIGNoYXIgKm9wdCkK
IAogCS8vIFRPRE86IERlYWwgd2l0aCAqZmxhZ3MuCiAKLQlpZiAoIXBhcnNlX29wdGlvbnModm9s
LCBvcHQpKQorCWlmICghcGFyc2Vfb3B0aW9ucyh2b2wsIG9wdCwgMSkpCiAJCXJldHVybiAtRUlO
VkFMOwogCiAJbnRmc19kZWJ1ZygiRG9uZS4iKTsKQEAgLTI3MzIsNyArMjczOSw3IEBAIHN0YXRp
YyBpbnQgbnRmc19maWxsX3N1cGVyKHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIHZvaWQgKm9wdCwg
Y29uc3QgaW50IHNpbGVudCkKIAlOVm9sU2V0U3BhcnNlRW5hYmxlZCh2b2wpOwogCiAJLyogSW1w
b3J0YW50IHRvIGdldCB0aGUgbW91bnQgb3B0aW9ucyBkZWFsdCB3aXRoIG5vdy4gKi8KLQlpZiAo
IXBhcnNlX29wdGlvbnModm9sLCAoY2hhciopb3B0KSkKKwlpZiAoIXBhcnNlX29wdGlvbnModm9s
LCAoY2hhciopb3B0LCAwKSkKIAkJZ290byBlcnJfb3V0X25vdzsKIAogCS8qIFdlIHN1cHBvcnQg
c2VjdG9yIHNpemVzIHVwIHRvIHRoZSBQQUdFX1NJWkUuICovCmRpZmYgLS1naXQgYS9mcy9udGZz
L3VuaXN0ci5jIGIvZnMvbnRmcy91bmlzdHIuYwppbmRleCA3NWE3ZjczYmNjZGQuLmM1MjE0MTI2
NWY5OSAxMDA2NDQKLS0tIGEvZnMvbnRmcy91bmlzdHIuYworKysgYi9mcy9udGZzL3VuaXN0ci5j
CkBAIC0yNTQsNiArMjU0LDE3IEBAIGludCBudGZzX25sc3RvdWNzKGNvbnN0IG50ZnNfdm9sdW1l
ICp2b2wsIGNvbnN0IGNoYXIgKmlucywKIAlpZiAobGlrZWx5KGlucykpIHsKIAkJdWNzID0ga21l
bV9jYWNoZV9hbGxvYyhudGZzX25hbWVfY2FjaGUsIEdGUF9OT0ZTKTsKIAkJaWYgKGxpa2VseSh1
Y3MpKSB7CisJCQlpZiAoIW5scykgeworCQkJCXdjX2xlbiA9IHV0ZjhzX3RvX3V0ZjE2cyhpbnMs
IGluc19sZW4sCisJCQkJCQkJIFVURjE2X0xJVFRMRV9FTkRJQU4sCisJCQkJCQkJICh3Y2hhcl90
ICopdWNzLAorCQkJCQkJCSBOVEZTX01BWF9OQU1FX0xFTik7CisJCQkJaWYgKHdjX2xlbiA8IDAg
fHwgd2NfbGVuID49IE5URlNfTUFYX05BTUVfTEVOKQorCQkJCQlnb3RvIG5hbWVfZXJyOworCQkJ
CXVjc1t3Y19sZW5dID0gMDsKKwkJCQkqb3V0cyA9IHVjczsKKwkJCQlyZXR1cm4gbzsKKwkJCX0K
IAkJCWZvciAoaSA9IG8gPSAwOyBpIDwgaW5zX2xlbjsgaSArPSB3Y19sZW4pIHsKIAkJCQl3Y19s
ZW4gPSBubHMtPmNoYXIydW5pKGlucyArIGksIGluc19sZW4gLSBpLAogCQkJCQkJJndjKTsKQEAg
LTI4Myw3ICsyOTQsNyBAQCBpbnQgbnRmc19ubHN0b3Vjcyhjb25zdCBudGZzX3ZvbHVtZSAqdm9s
LCBjb25zdCBjaGFyICppbnMsCiAJaWYgKHdjX2xlbiA8IDApIHsKIAkJbnRmc19lcnJvcih2b2wt
PnNiLCAiTmFtZSB1c2luZyBjaGFyYWN0ZXIgc2V0ICVzIGNvbnRhaW5zICIKIAkJCQkiY2hhcmFj
dGVycyB0aGF0IGNhbm5vdCBiZSBjb252ZXJ0ZWQgdG8gIgotCQkJCSJVbmljb2RlLiIsIG5scy0+
Y2hhcnNldCk7CisJCQkJIlVuaWNvZGUuIiwgbmxzID8gbmxzLT5jaGFyc2V0IDogInV0ZjgiKTsK
IAkJaSA9IC1FSUxTRVE7CiAJfSBlbHNlIC8qIGlmIChvID49IE5URlNfTUFYX05BTUVfTEVOKSAq
LyB7CiAJCW50ZnNfZXJyb3Iodm9sLT5zYiwgIk5hbWUgaXMgdG9vIGxvbmcgKG1heGltdW0gbGVu
Z3RoIGZvciBhICIKQEAgLTMzNSwxMSArMzQ2LDIyIEBAIGludCBudGZzX3Vjc3RvbmxzKGNvbnN0
IG50ZnNfdm9sdW1lICp2b2wsIGNvbnN0IG50ZnNjaGFyICppbnMsCiAJCQlnb3RvIGNvbnZlcnNp
b25fZXJyOwogCQl9CiAJCWlmICghbnMpIHsKLQkJCW5zX2xlbiA9IGluc19sZW4gKiBOTFNfTUFY
X0NIQVJTRVRfU0laRTsKKwkJCW5zX2xlbiA9IGluc19sZW4gKiAobmxzID8gTkxTX01BWF9DSEFS
U0VUX1NJWkUgOiA0KTsKIAkJCW5zID0ga21hbGxvYyhuc19sZW4gKyAxLCBHRlBfTk9GUyk7CiAJ
CQlpZiAoIW5zKQogCQkJCWdvdG8gbWVtX2Vycl9vdXQ7CiAJCX0KKwkJaWYgKCFubHMpIHsKKwkJ
CW8gPSB1dGYxNnNfdG9fdXRmOHMoKGNvbnN0IHdjaGFyX3QgKilpbnMsIGluc19sZW4sCisJCQkJ
CSAgICBVVEYxNl9MSVRUTEVfRU5ESUFOLCBucywgbnNfbGVuKTsKKwkJCWlmIChvID49IG5zX2xl
bikgeworCQkJCXdjID0gLUVOQU1FVE9PTE9ORzsKKwkJCQlnb3RvIGNvbnZlcnNpb25fZXJyOwor
CQkJfQorCQkJbnNbb10gPSAwOworCQkJKm91dHMgPSBuczsKKwkJCXJldHVybiBvOworCQl9CiAJ
CWZvciAoaSA9IG8gPSAwOyBpIDwgaW5zX2xlbjsgaSsrKSB7CiByZXRyeToJCQl3YyA9IG5scy0+
dW5pMmNoYXIobGUxNl90b19jcHUoaW5zW2ldKSwgbnMgKyBvLAogCQkJCQluc19sZW4gLSBvKTsK
QEAgLTM3Myw3ICszOTUsNyBAQCByZXRyeToJCQl3YyA9IG5scy0+dW5pMmNoYXIobGUxNl90b19j
cHUoaW5zW2ldKSwgbnMgKyBvLAogCW50ZnNfZXJyb3Iodm9sLT5zYiwgIlVuaWNvZGUgbmFtZSBj
b250YWlucyBjaGFyYWN0ZXJzIHRoYXQgY2Fubm90IGJlICIKIAkJCSJjb252ZXJ0ZWQgdG8gY2hh
cmFjdGVyIHNldCAlcy4gIFlvdSBtaWdodCB3YW50IHRvICIKIAkJCSJ0cnkgdG8gdXNlIHRoZSBt
b3VudCBvcHRpb24gaW9jaGFyc2V0PXV0ZjguIiwKLQkJCW5scy0+Y2hhcnNldCk7CisJCQlubHMg
PyBubHMtPmNoYXJzZXQgOiAidXRmOCIpOwogCWlmIChucyAhPSAqb3V0cykKIAkJa2ZyZWUobnMp
OwogCWlmICh3YyAhPSAtRU5BTUVUT09MT05HKQotLSAKMi4yMC4xCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcg
bGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
