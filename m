Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF867A75F6
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:36:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qish3-0004ih-4M;
	Wed, 20 Sep 2023 08:36:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qisMr-00084m-S6
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 08:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zJxfyTLNGZAN0qgRxWWT6/oteEKQT8o70eVgdNPEM/Q=; b=D3VTC+KRT8BwUusKNNcGMeti16
 YBS65bh4M7sY69zQ9qLwDE5EO757PX+jNn2EfD2NNewAIlMmOrbFHyDMvTRZ8M9noev4ErplwpdxS
 DQNG/Hap7mubBaI4X77SzboCe6ygTbgGSDoyBHFwRKdl1RFq7fG9g1HoAIeOZFVaUzv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zJxfyTLNGZAN0qgRxWWT6/oteEKQT8o70eVgdNPEM/Q=; b=eOKhgI4IoUy8oCXPXFrYbc2T4k
 ckPTde6YCTOnGr7m54Vui92xtJX8JiuAc4UEqQTX8xf9h3GbV7MGJiV3hZ05mYISeU9uU8opMxWYI
 4/7qnfVSXJcCK2ngzE5n1bn7ZTvrHOKTP7HccyzVK8CM0Mkrj/EOKe7GIOxtdW8yRQPo=;
Received: from mail-vk1-f182.google.com ([209.85.221.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qisMo-0004Pb-7E for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 08:15:28 +0000
Received: by mail-vk1-f182.google.com with SMTP id
 71dfb90a1353d-49352207f33so2432834e0c.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 01:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695197720; x=1695802520; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zJxfyTLNGZAN0qgRxWWT6/oteEKQT8o70eVgdNPEM/Q=;
 b=ZH6BzJkEN7Me0zYwdypdhQF78Fy4Hj68+dI/MrxYCVec0j+j4gcodWyTn30rRe6jxv
 //Eerq4UnUuEuxmbJEkYQvSEyCctCmFb9pfgxG9RVECay3kXfNhcG1kCze11AqIG1NUd
 lwXy4Chfq5+owKLKsGUsDdgiC1zq7JJyoSYIckivgyKM2X6wq9m31AVzJjR100GX7P32
 pH5jN7Gjdha2XFxmzIb/lRDJSTflyA14B6mzhLg2Pgxq9FnCYcZCINO0NAoPlh4XJiXU
 eVx6ug+5RgHJ9PciQd2KukdmOsGm/tumZuK2GUK2ps1vI3in3UANW6eYryh7A/ognwzn
 ZmrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695197720; x=1695802520;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zJxfyTLNGZAN0qgRxWWT6/oteEKQT8o70eVgdNPEM/Q=;
 b=Sv/HrzvfF4sPt0wsLrlqkKbLVIPYa2IA9YTEMUFKzlogTLRz61roL2Bz3kOFPQRGgz
 2G6hfz9AlOVW1A4ridFYHdykrY52g9aObSXNnY0loO8+eZiQdw2PtzAdhZLXdOnsc2n/
 V6Nkr0HCkxGiQYOF5rbWKyYO/N32JPZnv5Iqrp6KqQj+ODV+oUXW5jQr7BtMarjlTlV6
 HRVbQ4B+fuNP+CTYr+JQGQjq1L9Qpe8qKyAuMyYDtOu9kvdAUbl+Z3jddhQEn0myYCig
 GBUex+l51J5O6BYJUM+FT+YZGgPIN6bSDX4jMgXsQ7YCDkPn0ze/K3rQC6Bsez30X6ft
 Ylww==
X-Gm-Message-State: AOJu0YwV+ad1M0aYPTPkezoVHDnyXK8BlQSGUkAuuotymRV7ZKVtSAqm
 g21pAb+bSRLGm9ALMO4+aQ4LKLeFv4/ijmVcQRHkMjw3RBfYlw==
X-Google-Smtp-Source: AGHT+IEsfO4EAx787RgGydCMUNs6b7OZCMZLpCKdedAcjUM4XsQ/CD9NHXWZexv599YssdpWeGgAwMzr8a3yyUbhRVE=
X-Received: by 2002:a1f:6643:0:b0:48d:38fe:3133 with SMTP id
 a64-20020a1f6643000000b0048d38fe3133mr1913731vkc.16.1695197720435; Wed, 20
 Sep 2023 01:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-15-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-15-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 17:15:04 +0900
Message-ID: <CAKFNMo=uGWNL5pe7JK7-GBKR1L6tsxmtRH5+p4mPrri=CeJXUw@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 3:47 PM Matthew Wilcox (Oracle)
   wrote: > > All users have now been converted to get_nth_block(). > > Signed-off-by:
    Matthew Wilcox (Oracle) > --- > fs/nilfs2/page.h | 6 --- [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.182 listed in wl.mailspike.net]
X-Headers-End: 1qisMo-0004Pb-7E
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:36:20 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 14/26] nilfs2: Remove
 nilfs_page_get_nth_block
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgMzo0N+KAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gQWxsIHVzZXJzIGhhdmUgbm93IGJlZW4gY29udmVydGVkIHRvIGdldF9udGhf
YmxvY2soKS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxs
eUBpbmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9uaWxmczIvcGFnZS5oIHwgNiAtLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMvbmlsZnMy
L3BhZ2UuaCBiL2ZzL25pbGZzMi9wYWdlLmgKPiBpbmRleCAzNDRkNzE5NDJkMzYuLmQyNDllYTFj
ZWZmZiAxMDA2NDQKPiAtLS0gYS9mcy9uaWxmczIvcGFnZS5oCj4gKysrIGIvZnMvbmlsZnMyL3Bh
Z2UuaAo+IEBAIC01MiwxMCArNTIsNCBAQCB1bnNpZ25lZCBsb25nIG5pbGZzX2ZpbmRfdW5jb21t
aXR0ZWRfZXh0ZW50KHN0cnVjdCBpbm9kZSAqaW5vZGUsCj4gICNkZWZpbmUgTklMRlNfUEFHRV9C
VUcocGFnZSwgbSwgYS4uLikgXAo+ICAgICAgICAgZG8geyBuaWxmc19wYWdlX2J1ZyhwYWdlKTsg
QlVHKCk7IH0gd2hpbGUgKDApCj4KPiAtc3RhdGljIGlubGluZSBzdHJ1Y3QgYnVmZmVyX2hlYWQg
Kgo+IC1uaWxmc19wYWdlX2dldF9udGhfYmxvY2soc3RydWN0IHBhZ2UgKnBhZ2UsIHVuc2lnbmVk
IGludCBjb3VudCkKPiAtewo+IC0gICAgICAgcmV0dXJuIGdldF9udGhfYmgocGFnZV9idWZmZXJz
KHBhZ2UpLCBjb3VudCk7Cj4gLX0KPiAtCj4gICNlbmRpZiAvKiBfTklMRlNfUEFHRV9IICovCj4g
LS0KPiAyLjQwLjEKPgoKQWNrZWQtYnk6IFJ5dXN1a2UgS29uaXNoaSA8a29uaXNoaS5yeXVzdWtl
QGdtYWlsLmNvbT4KClRoYW5rcywKUnl1c3VrZSBLb25pc2hpCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0
CkxpbnV4LW50ZnMtZGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
