Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2B12AC9DA
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Nov 2020 01:48:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kcHpU-00085q-R5; Tue, 10 Nov 2020 00:48:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alex.shi@linux.alibaba.com>) id 1kbfHl-0002B5-8l
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 08 Nov 2020 07:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=peAjRgTe8cbjPqWZ6WY3UUs5EaCdS2CLCZN7/LDXP3A=; b=eBHBdhmKt1TP3O2vaRnUh89BNZ
 wumMSnQXHb6UcQ0Zkt148DiHgnA4HwJ35VEsnZd1++0JLaaWRN9NiiyHiISJh+MD/Vy+d1fgh2Wy5
 PzmAYnGJ8BvJ5IE3KRk0q90rqY3p8BVMkS0U7hknWMx5I65UCeMRTduChLqGWnMr4Ch8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=peAjRgTe8cbjPqWZ6WY3UUs5EaCdS2CLCZN7/LDXP3A=; b=h
 7eW/WhxTK2bL0VZY8ZbZsgjh6rj6MWlhw8h6RcMPzEYBWG6mHaKTUXCIxVHQ+rNsqLVeEK/4dRV34
 3RHmZSe1XzzjjhXk85K2nNJ4CUbvOetnBRwaWtcMx8WbNQJEq/0N+CNZhkr0jMnUutcDPimUG+4+q
 2YwOA7LqAq02rdto=;
Received: from out30-45.freemail.mail.aliyun.com ([115.124.30.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kbfHV-00D6MY-VL
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 08 Nov 2020 07:38:49 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407; MF=alex.shi@linux.alibaba.com;
 NM=1; PH=DS; RN=3; SR=0; TI=SMTPD_---0UEa2ewI_1604821095; 
Received: from aliy80.localdomain(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0UEa2ewI_1604821095) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 08 Nov 2020 15:38:15 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: 
Date: Sun,  8 Nov 2020 15:38:12 +0800
Message-Id: <1604821092-54631-1-git-send-email-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.45 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1kbfHV-00D6MY-VL
X-Mailman-Approved-At: Tue, 10 Nov 2020 00:48:12 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove unused varibles
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

V2UgYWN0dWFsbHkgZG9uJ3QgdXNlIHRoZXNlIHZhcmlibGVzLCBzbyByZW1vdmUgdGhlbSB0byBh
dm9pZCBnY2Mgd2FybmluZzoKZnMvbnRmcy9maWxlLmM6MzI2OjE0OiB3YXJuaW5nOiB2YXJpYWJs
ZSDigJhiYXNlX25p4oCZIHNldCBidXQgbm90IHVzZWQKWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFi
bGVdCmZzL250ZnMvbG9nZmlsZS5jOjQ4MToyMTogd2FybmluZzogdmFyaWFibGUg4oCYbG9nX3Bh
Z2VfbWFza+KAmSBzZXQgYnV0IG5vdAp1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQoK
U2lnbmVkLW9mZi1ieTogQWxleCBTaGkgPGFsZXguc2hpQGxpbnV4LmFsaWJhYmEuY29tPgpDYzog
QW50b24gQWx0YXBhcm1ha292IDxhbnRvbkB0dXhlcmEuY29tPiAKQ2M6IGxpbnV4LW50ZnMtZGV2
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAKQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcg
Ci0tLQogZnMvbnRmcy9maWxlLmMgICAgfCA1ICstLS0tCiBmcy9udGZzL2xvZ2ZpbGUuYyB8IDMg
Ky0tCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9mcy9udGZzL2ZpbGUuYyBiL2ZzL250ZnMvZmlsZS5jCmluZGV4IGY0Mjk2N2I3
MzhlYi4uZTVhYWIyNjVkZmYxIDEwMDY0NAotLS0gYS9mcy9udGZzL2ZpbGUuYworKysgYi9mcy9u
dGZzL2ZpbGUuYwpAQCAtMzIzLDcgKzMyMyw3IEBAIHN0YXRpYyBzc2l6ZV90IG50ZnNfcHJlcGFy
ZV9maWxlX2Zvcl93cml0ZShzdHJ1Y3Qga2lvY2IgKmlvY2IsCiAJdW5zaWduZWQgbG9uZyBmbGFn
czsKIAlzdHJ1Y3QgZmlsZSAqZmlsZSA9IGlvY2ItPmtpX2ZpbHA7CiAJc3RydWN0IGlub2RlICp2
aSA9IGZpbGVfaW5vZGUoZmlsZSk7Ci0JbnRmc19pbm9kZSAqYmFzZV9uaSwgKm5pID0gTlRGU19J
KHZpKTsKKwludGZzX2lub2RlICpuaSA9IE5URlNfSSh2aSk7CiAJbnRmc192b2x1bWUgKnZvbCA9
IG5pLT52b2w7CiAKIAludGZzX2RlYnVnKCJFbnRlcmluZyBmb3IgaV9pbm8gMHglbHgsIGF0dHJp
YnV0ZSB0eXBlIDB4JXgsIHBvcyAiCkBAIC0zNjUsOSArMzY1LDYgQEAgc3RhdGljIHNzaXplX3Qg
bnRmc19wcmVwYXJlX2ZpbGVfZm9yX3dyaXRlKHN0cnVjdCBraW9jYiAqaW9jYiwKIAkJZXJyID0g
LUVPUE5PVFNVUFA7CiAJCWdvdG8gb3V0OwogCX0KLQliYXNlX25pID0gbmk7Ci0JaWYgKE5Jbm9B
dHRyKG5pKSkKLQkJYmFzZV9uaSA9IG5pLT5leHQuYmFzZV9udGZzX2lubzsKIAllcnIgPSBmaWxl
X3JlbW92ZV9wcml2cyhmaWxlKTsKIAlpZiAodW5saWtlbHkoZXJyKSkKIAkJZ290byBvdXQ7CmRp
ZmYgLS1naXQgYS9mcy9udGZzL2xvZ2ZpbGUuYyBiL2ZzL250ZnMvbG9nZmlsZS5jCmluZGV4IGEw
YzQwZjFiZTdhYy4uYmMxYmYyMTdiMzhlIDEwMDY0NAotLS0gYS9mcy9udGZzL2xvZ2ZpbGUuYwor
KysgYi9mcy9udGZzL2xvZ2ZpbGUuYwpAQCAtNDc4LDcgKzQ3OCw3IEBAIGJvb2wgbnRmc19jaGVj
a19sb2dmaWxlKHN0cnVjdCBpbm9kZSAqbG9nX3ZpLCBSRVNUQVJUX1BBR0VfSEVBREVSICoqcnAp
CiAJdTggKmthZGRyID0gTlVMTDsKIAlSRVNUQVJUX1BBR0VfSEVBREVSICpyc3RyMV9waCA9IE5V
TEw7CiAJUkVTVEFSVF9QQUdFX0hFQURFUiAqcnN0cjJfcGggPSBOVUxMOwotCWludCBsb2dfcGFn
ZV9zaXplLCBsb2dfcGFnZV9tYXNrLCBlcnI7CisJaW50IGxvZ19wYWdlX3NpemUsIGVycjsKIAli
b29sIGxvZ2ZpbGVfaXNfZW1wdHkgPSB0cnVlOwogCXU4IGxvZ19wYWdlX2JpdHM7CiAKQEAgLTUw
MSw3ICs1MDEsNiBAQCBib29sIG50ZnNfY2hlY2tfbG9nZmlsZShzdHJ1Y3QgaW5vZGUgKmxvZ192
aSwgUkVTVEFSVF9QQUdFX0hFQURFUiAqKnJwKQogCQlsb2dfcGFnZV9zaXplID0gRGVmYXVsdExv
Z1BhZ2VTaXplOwogCWVsc2UKIAkJbG9nX3BhZ2Vfc2l6ZSA9IFBBR0VfU0laRTsKLQlsb2dfcGFn
ZV9tYXNrID0gbG9nX3BhZ2Vfc2l6ZSAtIDE7CiAJLyoKIAkgKiBVc2UgbnRmc19mZnMoKSBpbnN0
ZWFkIG9mIGZmcygpIHRvIGVuYWJsZSB0aGUgY29tcGlsZXIgdG8KIAkgKiBvcHRpbWl6ZSBsb2df
cGFnZV9zaXplIGFuZCBsb2dfcGFnZV9iaXRzIGludG8gY29uc3RhbnRzLgotLSAKMS44LjMuMQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1O
VEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMt
ZGV2Cg==
