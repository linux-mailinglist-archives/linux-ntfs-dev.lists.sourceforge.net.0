Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E112E2AC9D9
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Nov 2020 01:48:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kcHpU-000867-Va; Tue, 10 Nov 2020 00:48:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alex.shi@linux.alibaba.com>) id 1kbfml-0006CH-5f
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 08 Nov 2020 08:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3wdriHxnAre0R/KR0+xM6f6LNC3VRWrcjSM7jFIdBcU=; b=f3pb117t48sBYTTNnr1CKccfap
 ySW0Kjl35Oc9gG3O6CB2/w9OA3DhOqT5eNuKD+/xEdW281s/BWkBE+T5DGXz5gPih3YppehBBTgsn
 5K4PbsXCotS7Kj89MJ3lwKrLqy0/J00YhTrsu+naIUKTgiqn2PaRAjQvun+89GXXSi/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3wdriHxnAre0R/KR0+xM6f6LNC3VRWrcjSM7jFIdBcU=; b=O
 5xUNU/j/h3Rm4d0TdSP3+V80klJGdiHX1FRvf4CWhRxyMAI2XbdMkRO7zpLDuuwqeKnuqFKYRVGqK
 KlqIeOiSOp2JuB8MWyNjsBYLxJSWE5OvB/0QzP+Eycar8u4WVw02GgS66y4nQeWWcIXlGNtPyBHzW
 1A6WODb0Z4Oh6hi4=;
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kbfmb-00D7IW-Fd
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 08 Nov 2020 08:10:49 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426; MF=alex.shi@linux.alibaba.com;
 NM=1; PH=DS; RN=3; SR=0; TI=SMTPD_---0UEabaDp_1604822057; 
Received: from aliy80.localdomain(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0UEabaDp_1604822057) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 08 Nov 2020 15:54:17 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: 
Date: Sun,  8 Nov 2020 15:54:16 +0800
Message-Id: <1604822056-65430-1-git-send-email-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1kbfmb-00D7IW-Fd
X-Mailman-Approved-At: Tue, 10 Nov 2020 00:48:12 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove unused varible attr_len
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

VGhpcyB2YXJpYmxlIGlzbid0IHVzZWQgYW55bW9yZSwgcmVtb3ZlIGl0IHRvIHNraXAgVz0xIHdh
cm5pbmc6CmZzL250ZnMvaW5vZGUuYzoyMzUwOjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGF0dHJf
bGVu4oCZIHNldCBidXQgbm90IHVzZWQKWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCgpTaWdu
ZWQtb2ZmLWJ5OiBBbGV4IFNoaSA8YWxleC5zaGlAbGludXguYWxpYmFiYS5jb20+CkNjOiBBbnRv
biBBbHRhcGFybWFrb3YgPGFudG9uQHR1eGVyYS5jb20+IApDYzogbGludXgtbnRmcy1kZXZAbGlz
dHMuc291cmNlZm9yZ2UubmV0IApDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAKLS0t
CiBmcy9udGZzL2lub2RlLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2ZzL250ZnMvaW5vZGUuYyBiL2ZzL250ZnMv
aW5vZGUuYwppbmRleCBjYWY1NjM5ODE1MzIuLmQzMTI3ZWEyMDFlYyAxMDA2NDQKLS0tIGEvZnMv
bnRmcy9pbm9kZS5jCisrKyBiL2ZzL250ZnMvaW5vZGUuYwpAQCAtMjM0Nyw3ICsyMzQ3LDYgQEAg
aW50IG50ZnNfdHJ1bmNhdGUoc3RydWN0IGlub2RlICp2aSkKIAlBVFRSX1JFQ09SRCAqYTsKIAlj
b25zdCBjaGFyICp0ZSA9ICIgIExlYXZpbmcgZmlsZSBsZW5ndGggb3V0IG9mIHN5bmMgd2l0aCBp
X3NpemUuIjsKIAlpbnQgZXJyLCBtcF9zaXplLCBzaXplX2NoYW5nZSwgYWxsb2NfY2hhbmdlOwot
CXUzMiBhdHRyX2xlbjsKIAogCW50ZnNfZGVidWcoIkVudGVyaW5nIGZvciBpbm9kZSAweCVseC4i
LCB2aS0+aV9pbm8pOwogCUJVR19PTihOSW5vQXR0cihuaSkpOwpAQCAtMjcyMSw3ICsyNzIwLDcg
QEAgaW50IG50ZnNfdHJ1bmNhdGUoc3RydWN0IGlub2RlICp2aSkKIAkgKiB0aGlzIGNhbm5vdCBm
YWlsIHNpbmNlIHdlIGFyZSBtYWtpbmcgdGhlIGF0dHJpYnV0ZSBzbWFsbGVyIHRodXMgYnkKIAkg
KiBkZWZpbml0aW9uIHRoZXJlIGlzIGVub3VnaCBzcGFjZSB0byBkbyBzby4KIAkgKi8KLQlhdHRy
X2xlbiA9IGxlMzJfdG9fY3B1KGEtPmxlbmd0aCk7CisJbGUzMl90b19jcHUoYS0+bGVuZ3RoKTsK
IAllcnIgPSBudGZzX2F0dHJfcmVjb3JkX3Jlc2l6ZShtLCBhLCBtcF9zaXplICsKIAkJCWxlMTZf
dG9fY3B1KGEtPmRhdGEubm9uX3Jlc2lkZW50Lm1hcHBpbmdfcGFpcnNfb2Zmc2V0KSk7CiAJQlVH
X09OKGVycik7Ci0tIAoxLjguMy4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURl
dkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
