Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D70FA2AC9D8
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Nov 2020 01:48:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kcHpU-00085y-UT; Tue, 10 Nov 2020 00:48:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alex.shi@linux.alibaba.com>) id 1kbfji-0003U3-FG
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 08 Nov 2020 08:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:From:Subject:Sender:Reply-To:To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wonvx0MX8WNZ1PFTDCtUr1Kueg0MxnStnaPDeVBhwjg=; b=GTcAT+tzAgDRGwVLfSra8G85AB
 I95AUTIKUPwhXYHqPWVULucmRE7HOZoGDD7oGjUHx1k4gLwR875CzVKk5OmVq18Q8oa0JiyiYayVR
 I/cRTA8SHKTBbU+2XJHKXzDSrm7hkELiYWEUkI+buqnfFvTryoR/6cW3olaOfSL+HgJg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:From:Subject:Sender:Reply-To:To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wonvx0MX8WNZ1PFTDCtUr1Kueg0MxnStnaPDeVBhwjg=; b=CXZ3UsttQ7S7nBK9FcNXnqm7zp
 zhtcZL87SJsHHMnBPBCcf8aSF1CSBendN7UJ5eKnEb88SMvOuJ0YcXGNqLDt71MzdJ5gT9ibWcrgM
 HqiM0ZYQ1Lp8uBe0Z/7xcht5KzyISj7HgLCIwzOpQNhyKJytjTQaFIas1+mC1hL/Yzu0=;
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kbfjR-00D78u-0i
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 08 Nov 2020 08:07:42 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R581e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=alimailimapcm10staff010182156082;
 MF=alex.shi@linux.alibaba.com; NM=1; PH=DS; RN=3; SR=0;
 TI=SMTPD_---0UEZhB8b_1604822833; 
Received: from IT-FVFX43SYHV2H.lan(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0UEZhB8b_1604822833) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 08 Nov 2020 16:07:14 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
References: <1604822056-65430-1-git-send-email-alex.shi@linux.alibaba.com>
Message-ID: <4194376f-898b-b602-81c3-210567712092@linux.alibaba.com>
Date: Sun, 8 Nov 2020 16:06:54 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <1604822056-65430-1-git-send-email-alex.shi@linux.alibaba.com>
X-Spam-Score: -6.8 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 1.2 MISSING_HEADERS        Missing To: header
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kbfjR-00D78u-0i
X-Mailman-Approved-At: Tue, 10 Nov 2020 00:48:12 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove unused varible attr_len
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

CgrlnKggMjAyMC8xMS84IOS4i+WNiDM6NTQsIEFsZXggU2hpIOWGmemBkzoKPiAgCSAqLwo+IC0J
YXR0cl9sZW4gPSBsZTMyX3RvX2NwdShhLT5sZW5ndGgpOwo+ICsJbGUzMl90b19jcHUoYS0+bGVu
Z3RoKTsKClRoaXMgbGluZSBpcyBhbHNvIHVzZWxlc3MuIGFuZCBzaG91bGQgYmUgcmVtb3ZlZC4g
c286CgpGcm9tIGQxYzZkZTcyMzk5NWFkZWVlY2I5MGM2ZmQ3NzgxMWRkODViNjk3ZTYgTW9uIFNl
cCAxNyAwMDowMDowMCAyMDAxCkZyb206IEFsZXggU2hpIDxhbGV4LnNoaUBsaW51eC5hbGliYWJh
LmNvbT4KRGF0ZTogU3VuLCA4IE5vdiAyMDIwIDE1OjUyOjMyICswODAwClN1YmplY3Q6IFtQQVRD
SF0gZnMvbnRmczogcmVtb3ZlIHVudXNlZCB2YXJpYmxlIGF0dHJfbGVuCk1JTUUtVmVyc2lvbjog
MS4wCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5z
ZmVyLUVuY29kaW5nOiA4Yml0CgpUaGlzIHZhcmlibGUgaXNuJ3QgdXNlZCBhbnltb3JlLCByZW1v
dmUgaXQgdG8gc2tpcCBXPTEgd2FybmluZzoKZnMvbnRmcy9pbm9kZS5jOjIzNTA6Njogd2Fybmlu
ZzogdmFyaWFibGUg4oCYYXR0cl9sZW7igJkgc2V0IGJ1dCBub3QgdXNlZApbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KClNpZ25lZC1vZmYtYnk6IEFsZXggU2hpIDxhbGV4LnNoaUBsaW51eC5h
bGliYWJhLmNvbT4KLS0tCiBmcy9udGZzL2lub2RlLmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9udGZzL2lub2RlLmMgYi9mcy9udGZzL2lu
b2RlLmMKaW5kZXggY2FmNTYzOTgxNTMyLi5mN2U0Y2JjMjZlYWYgMTAwNjQ0Ci0tLSBhL2ZzL250
ZnMvaW5vZGUuYworKysgYi9mcy9udGZzL2lub2RlLmMKQEAgLTIzNDcsNyArMjM0Nyw2IEBAIGlu
dCBudGZzX3RydW5jYXRlKHN0cnVjdCBpbm9kZSAqdmkpCiAJQVRUUl9SRUNPUkQgKmE7CiAJY29u
c3QgY2hhciAqdGUgPSAiICBMZWF2aW5nIGZpbGUgbGVuZ3RoIG91dCBvZiBzeW5jIHdpdGggaV9z
aXplLiI7CiAJaW50IGVyciwgbXBfc2l6ZSwgc2l6ZV9jaGFuZ2UsIGFsbG9jX2NoYW5nZTsKLQl1
MzIgYXR0cl9sZW47CiAKIAludGZzX2RlYnVnKCJFbnRlcmluZyBmb3IgaW5vZGUgMHglbHguIiwg
dmktPmlfaW5vKTsKIAlCVUdfT04oTklub0F0dHIobmkpKTsKQEAgLTI3MjEsNyArMjcyMCw2IEBA
IGludCBudGZzX3RydW5jYXRlKHN0cnVjdCBpbm9kZSAqdmkpCiAJICogdGhpcyBjYW5ub3QgZmFp
bCBzaW5jZSB3ZSBhcmUgbWFraW5nIHRoZSBhdHRyaWJ1dGUgc21hbGxlciB0aHVzIGJ5CiAJICog
ZGVmaW5pdGlvbiB0aGVyZSBpcyBlbm91Z2ggc3BhY2UgdG8gZG8gc28uCiAJICovCi0JYXR0cl9s
ZW4gPSBsZTMyX3RvX2NwdShhLT5sZW5ndGgpOwogCWVyciA9IG50ZnNfYXR0cl9yZWNvcmRfcmVz
aXplKG0sIGEsIG1wX3NpemUgKwogCQkJbGUxNl90b19jcHUoYS0+ZGF0YS5ub25fcmVzaWRlbnQu
bWFwcGluZ19wYWlyc19vZmZzZXQpKTsKIAlCVUdfT04oZXJyKTsKLS0gCjEuOC4zLjEKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1E
ZXYgbWFpbGluZyBsaXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
