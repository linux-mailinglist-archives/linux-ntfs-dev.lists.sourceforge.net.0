Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16472ABBAA
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjF-0004Dw-2D; Fri, 06 Sep 2019 15:00:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1i479y-0002A5-OO
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 17:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yQM2//yRNIKgrYfmnX/+7v7UH1bRgtDE8fxceDLJw/k=; b=R0oBHmcSsq3h6qRZd+tpHpv0DR
 ZU8acD7JFl652q+EANW+Of57nlSVdCyigDq84JYf+9/A/G2FWxOMmva96lQOFkVtSp4QIqmaOYlw4
 Ygf0ZLP51h+wWkIhEeZ5QP8b98Oe6OuobXSIVvDrzZrHUKTWV83Wn/IXXT9Z5udyrsAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yQM2//yRNIKgrYfmnX/+7v7UH1bRgtDE8fxceDLJw/k=; b=b8nir15ChaSefJJdkfcmuV4sQr
 ouA1p/4JghUfS8uoY5jCWl2l2kc6mC2KUaWr7LqlJpvVEa3zWmYjY0E2bMu0lPZl6Jm8q5cqA9hLk
 HSoExGdgOZOZUBh9Wcy96RLidzerICFWqsDjolNkXTiQdu3vZed1ioOs1I/cT81dgCYI=;
Received: from mout.web.de ([212.227.17.11])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i479v-004aTG-P8
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Aug 2019 17:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1567272409;
 bh=yQM2//yRNIKgrYfmnX/+7v7UH1bRgtDE8fxceDLJw/k=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=UkIS6ScHG/qq282SfeEUAdUONVKFj7prfUF8eSqrnN6DyDK62xc7SzB7c22BXhpGw
 hoAB7QU4wg2CRz7ANop+2kDZdkkyohT4GldaiAJC0qt8G6QJIe9Ju0HE2CsyUUkY86
 QdEM6a9xRIS9MNZmavk+JdGCFC49nUa0AncAvJlU=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.129.60]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LnB1F-1igkgH456r-00hR0L; Sat, 31
 Aug 2019 19:26:49 +0200
To: Denis Efremov <efremov@linux.com>, Joe Perches <joe@perches.com>
References: <20190829165025.15750-1-efremov@linux.com>
 <0d9345ed-f16a-de0b-6125-1f663765eb46@web.de>
 <689c8baf-2298-f086-3461-5cd1cdd191c6@linux.com>
 <493a7377-2de9-1d44-cd8f-c658793d15db@web.de>
 <c5e4479d-2fb3-b5a5-00c3-b06e5177d869@linux.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <9de9fb8f-f13f-e9bb-c68d-0ba81010ae8b@web.de>
Date: Sat, 31 Aug 2019 19:26:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <c5e4479d-2fb3-b5a5-00c3-b06e5177d869@linux.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Mb7grKXZ9pH+xlAXEQYPZYdNH7QN+E5OessgUl8uganJH5/1n3T
 faLtS9zrYMJ4tIvgnpUrhBwevqlLRu+WYUkqulrjatf/4Qkg3CHTrYI4KoDABcY7W0k2oNC
 45f3xjVsLioWf+xVr2GDUCLyytlCv1ng76ThWmrQYq56NZnwNTIvNq0PEAQm8/i4TXitEj+
 /ahFCq9RdntQV/9iWiPBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qA2Afq3R9eE=:n56im/5XNmQSDU2whUsHZT
 JWxDOApUGiKyz+lhjRCHIfdg4n0FKbD6eqTLxIPtjRb7kqw+GdR5Gv5HaWC/LWRUri4LThy+e
 R14XMuFDdorTGQuJBlsEMRxbKEASNug2Z3mLBGScwQjiIyCgxf+lBQWEqYGZ3A+lirGuIRbPu
 lZueDm2OGgCWAI0pjQ9w0ncov1kxFrnNeCEJyUqtIniUjPK0PgybSPUASNFovplN5hkw34Ryo
 9UfbuVi7t171/ELkZs8lFG+8GHSq7udxuZLeDbzA1W3/9N8yyK4+NNEAGpLv3LDzZS33Q8r+b
 W53gtgzOiyeQJ/EQi/ZBR+RyOUDgC+cCgP4kk/Di9Zy22MYWVk4uwcWXYwZqwECE5zzivzt3O
 hMlR79MpYmgHsx1ZqYe5V7d/1J4X3QZDWxW6vVTQlu2a21n3NbPLANxvYjF6AppsWzPexPw4j
 pWbGoL8EQt09JDSb3HfmMwMnTcf2mN//SGzWrL39C2/Mn4mdePFg7YvGF3AY7P519jZh05ufI
 bV8Em6ZdVEHVELM02XSgFnrBzrE04EMX4jR0PjtEhK8QVYe/KPrAqX9WM260rTZEnOSHZtVDj
 L3BbuhArM3gfqNE4LGBqnZI4GmblM261L0r8wX3mDcj3gz61zRCUfOuiYMgbQ8C0nTNmey664
 P1QvpGTdR4iz9jWtxfnHkTZP26VBYflRVmvXxLV4j+CtxPB1H9t1aBqGQ4JaPWPIVZiEb87EP
 xFlDb4hVXB6YYEARImPfY0Dy+HQ4xXd1ojwiPe1HogoIEeNgxEBnTdklQH6UhpdZi6u2ijLFX
 X/uqZ5Ykw2+T1MdQEoA18itVy9q6hCDs9z77511E2ofAbiPTIioLIPZwRvJytbDCn/VyrY+t5
 Pt8v45FtuV2I1lxyEy5W7XRSuy0fHp7VcVtumo9NnSqY9it5k+3/h91IkuSy2c8t0qKYjm/38
 6PlXH2g/H9h4MY020bGg1TGmn3U9dehbdt9C94hGi3EWETi55LjjUDEDMF+Mma18lp8Vqz06b
 1PiVySlX5wkjKydt7erUI35M1ofg8Ag6Fx7MZCt9vOZVCgp6BXGB/cNtH5wbXLc5IdbExUyFD
 g5gYSgHm37PMmLyqoGMSAgjjdKfPttXkatanpSMaTKlfG4fU1Q7HP1P1zR1Gv6QeeZy5JTKmc
 CKqZUEQQza7L0tGVd5j/1MNOs3KwC1srew6rgnoI6tqkvyWQ==
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
X-Headers-End: 1i479v-004aTG-P8
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

Pj4+Pj4gKyMgbmVzdGVkIGxpa2VseS91bmxpa2VseSBjYWxscwo+Pj4+PiArwqDCoMKgwqDCoMKg
wqAgaWYgKCRsaW5lID1+IC9cYig/Oig/OnVuKT9saWtlbHkpXHMqXChccyohP1xzKihJU19FUlIo
PzpfT1JfTlVMTHxfVkFMVUUpP3xXQVJOKS8pIHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgV0FSTigiTElLRUxZX01JU1VTRSIsCuKApgo+PiBcYig/OnVuKT9saWtlbHlccyoKPgo+IFRo
aXMgcGFpciBvZiBicmFja2V0cyBpcyByZXF1aXJlZCB0byBtYXRjaCAidW5saWtlbHkiCj4gYW5k
IGl0J3Mgb3B0aW9uYWwgaW4gb3JkZXIgdG8gbWF0Y2ggImxpa2VseSIuCgpJIGFncmVlIGFsc28g
dG8gdGhpcyB2aWV3IGlmIHlvdSByZWZlciB0byB0aGUgc2hvcnRlbmVkIHJlZ3VsYXIgZXhwcmVz
c2lvbiBoZXJlLgpCdXQgSSBnb3QgYW4gb3RoZXIgZGV2ZWxvcG1lbnQgb3BpbmlvbiBmb3IgYW4g
ZXh0cmEgcGFpciBvZiBub24tY2FwdHVyaW5nIHBhcmVudGhlc2VzCmF0IHRoZSBmcm9udCAoZnJv
bSB0aGUgdmVyc2lvbiB3aGljaCB5b3Ugc3VnZ2VzdGVkKS4KClJlZ2FyZHMsCk1hcmt1cwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LU5URlMt
RGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
