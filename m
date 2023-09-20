Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C5A7A7542
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:06:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qisDg-000890-1I;
	Wed, 20 Sep 2023 08:06:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qio4m-0004tS-P4
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 03:40:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pbsTDv/vdTgo0XJKb9aBetBXttLdsN9uZRk25mtVFgs=; b=ZamK5bFOoNTSgIGys5ndMPGMfS
 UBTe7p0hz7Hg5runvD7ZgVJe42Ru/PkJsabyaku28vpSRt9EfayfJRafrT/gvrPKLJXfN6d3Ni/54
 TD6UnAUHW2h+QTZV2ijRt/+XHascc1/KLl7F163G3vn3NYDcZy0YupZ/ffKdCYJO5NXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pbsTDv/vdTgo0XJKb9aBetBXttLdsN9uZRk25mtVFgs=; b=QX1iVhFOVCqAgeQi7a4MOt03fY
 HhNrg5MdwPbFmdWF5cwqNwIL9FFul4SxajcMPwU9DXCs0AX6nJ10gXswsGz87wZCiatyu3rhSu+9X
 YR8FfBloBSFyl/1N9U0TFleoza/cgC3tgZfVUraaF0u5yDUfdhuFFQpTcFQQB5tnVeDc=;
Received: from mail-vs1-f46.google.com ([209.85.217.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qio4j-00Fwkv-0V for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 03:40:32 +0000
Received: by mail-vs1-f46.google.com with SMTP id
 ada2fe7eead31-452951b27d0so475218137.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 20:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695181223; x=1695786023; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pbsTDv/vdTgo0XJKb9aBetBXttLdsN9uZRk25mtVFgs=;
 b=Dm7iR22PikAVlCVbn5pDGMB1zykj0+axZJ+ytUqUCVeFJNoP5Oh++rkXrSjjxsqPce
 Ty6blaanA5T/C33o2wvoQO6vjLT1lkcz/0IKJT0Z2SYDlBe1a51C621+J+FzL4Qx8JTl
 GG3egiMW9SBF/HcCEZl/9BWfFUJqODYrM1k+RY+p5Hk9AW/pUz3TPohzEfp5Abzvm2js
 kFK5MYfVkwN2xW2J6+lk6A1iHSA0aHun2SzPmddy4X0PtYunKB0bM3GKAIxk9sV6pMuN
 KYLT9fw4IKbPxExXtaBrcY9jBPAbyJgmwEHkJtLKhPrLiibSCi5wwT80dzwDainl7cEX
 fqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695181223; x=1695786023;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pbsTDv/vdTgo0XJKb9aBetBXttLdsN9uZRk25mtVFgs=;
 b=GLujltADiuWk/57PuORhXZbgvM012/aJ1sN0+FVxB34gGZq1B9uiGYMs+G1YIcD/2i
 h2nGQ6Tjdi3bgmBR7bfTS2Q3Rdne/Phxu6SKVo5NKrBufy1Qq1p0y+2Zp1zYMm5Iijx2
 MaZ08OhjE3UICok/hlSU4/e/EHl5BRLHmp6wJyOYP6vNCoOeY8A+lofl7Jxf3I0v7y6E
 Q0aDMP0DzU0jP8VhIPr8H0Il4nUOe7NCxNu05bKus0UgseHipLL0g8m1dJYzz7OeP89I
 6Rp0+PHB9MiDHEvzQTLBE4WTCclNaDeFTBxa6LgVzrTEkUa70I7WeZYQp2xNrCyijENP
 5Rwg==
X-Gm-Message-State: AOJu0Yw7iitrZQWcRD7j0UK1s3923FlWYGOb2Ph3so/cc9v50n7oE/yY
 /vizlAReczPPfmHioI85omW/NcunoZYjXR4Ub9M=
X-Google-Smtp-Source: AGHT+IHEBWq/1XTZtP0mhqwg3tAU0M9kblloDD8+XtqFaWUz5y3r1rDHF8lseWtoSoONYJCT/DOmQ8XEC2PsGWaMvyQ=
X-Received: by 2002:a67:fe97:0:b0:452:62b2:36b with SMTP id
 b23-20020a67fe97000000b0045262b2036bmr1651569vsr.30.1695181223031; Tue, 19
 Sep 2023 20:40:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-5-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-5-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 12:40:06 +0900
Message-ID: <CAKFNMonYFYCXnJTkM+MQbDCfTWV19v+acYZwHs-W4NuBBHE7Tg@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 4:20 PM Matthew Wilcox (Oracle)
   wrote: > > Extract this useful helper from nilfs_page_get_nth_block() > >
   Signed-off-by: Matthew Wilcox (Oracle) > --- > fs/nilfs2/page.h | [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.217.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.217.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1qio4j-00Fwkv-0V
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:05:54 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 04/26] buffer: Add get_nth_bh()
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgNDoyMOKAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gRXh0cmFjdCB0aGlzIHVzZWZ1bCBoZWxwZXIgZnJvbSBuaWxmc19wYWdlX2dl
dF9udGhfYmxvY2soKQo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBXaWxjb3ggKE9yYWNsZSkg
PHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gLS0tCj4gIGZzL25pbGZzMi9wYWdlLmggICAgICAgICAg
ICB8ICA3ICstLS0tLS0KPiAgaW5jbHVkZS9saW51eC9idWZmZXJfaGVhZC5oIHwgMjIgKysrKysr
KysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMvbmlsZnMyL3BhZ2UuaCBiL2ZzL25pbGZz
Mi9wYWdlLmgKPiBpbmRleCAyMWRkY2RkNGQ2M2UuLjM0NGQ3MTk0MmQzNiAxMDA2NDQKPiAtLS0g
YS9mcy9uaWxmczIvcGFnZS5oCj4gKysrIGIvZnMvbmlsZnMyL3BhZ2UuaAo+IEBAIC01NSwxMiAr
NTUsNyBAQCB1bnNpZ25lZCBsb25nIG5pbGZzX2ZpbmRfdW5jb21taXR0ZWRfZXh0ZW50KHN0cnVj
dCBpbm9kZSAqaW5vZGUsCj4gIHN0YXRpYyBpbmxpbmUgc3RydWN0IGJ1ZmZlcl9oZWFkICoKPiAg
bmlsZnNfcGFnZV9nZXRfbnRoX2Jsb2NrKHN0cnVjdCBwYWdlICpwYWdlLCB1bnNpZ25lZCBpbnQg
Y291bnQpCj4gIHsKPiAtICAgICAgIHN0cnVjdCBidWZmZXJfaGVhZCAqYmggPSBwYWdlX2J1ZmZl
cnMocGFnZSk7Cj4gLQo+IC0gICAgICAgd2hpbGUgKGNvdW50LS0gPiAwKQo+IC0gICAgICAgICAg
ICAgICBiaCA9IGJoLT5iX3RoaXNfcGFnZTsKPiAtICAgICAgIGdldF9iaChiaCk7Cj4gLSAgICAg
ICByZXR1cm4gYmg7Cj4gKyAgICAgICByZXR1cm4gZ2V0X250aF9iaChwYWdlX2J1ZmZlcnMocGFn
ZSksIGNvdW50KTsKPiAgfQo+Cj4gICNlbmRpZiAvKiBfTklMRlNfUEFHRV9IICovCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvYnVmZmVyX2hlYWQuaCBiL2luY2x1ZGUvbGludXgvYnVmZmVy
X2hlYWQuaAo+IGluZGV4IDEwMDEyNDRhODk0MS4uOWZjNjE1ZWUxN2ZkIDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvbGludXgvYnVmZmVyX2hlYWQuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvYnVmZmVy
X2hlYWQuaAo+IEBAIC00NTcsNiArNDU3LDI4IEBAIF9fYnJlYWQoc3RydWN0IGJsb2NrX2Rldmlj
ZSAqYmRldiwgc2VjdG9yX3QgYmxvY2ssIHVuc2lnbmVkIHNpemUpCj4gICAgICAgICByZXR1cm4g
X19icmVhZF9nZnAoYmRldiwgYmxvY2ssIHNpemUsIF9fR0ZQX01PVkFCTEUpOwo+ICB9Cj4KPiAr
LyoqCj4gKyAqIGdldF9udGhfYmggLSBHZXQgYSByZWZlcmVuY2Ugb24gdGhlIG4ndGggYnVmZmVy
IGFmdGVyIHRoaXMgb25lLgo+ICsgKiBAYmg6IFRoZSBidWZmZXIgdG8gc3RhcnQgY291bnRpbmcg
ZnJvbS4KPiArICogQGNvdW50OiBIb3cgbWFueSBidWZmZXJzIHRvIHNraXAuCj4gKyAqCj4gKyAq
IFRoaXMgaXMgcHJpbWFyaWx5IHVzZWZ1bCBmb3IgZmluZGluZyB0aGUgbnRoIGJ1ZmZlciBpbiBh
IGZvbGlvOyBpbgo+ICsgKiB0aGF0IGNhc2UgeW91IHBhc3MgdGhlIGhlYWQgYnVmZmVyIGFuZCB0
aGUgYnl0ZSBvZmZzZXQgaW4gdGhlIGZvbGlvCj4gKyAqIGRpdmlkZWQgYnkgdGhlIGJsb2NrIHNp
emUuICBJdCBjYW4gYmUgdXNlZCBmb3Igb3RoZXIgcHVycG9zZXMsIGJ1dAo+ICsgKiBpdCB3aWxs
IHdyYXAgYXQgdGhlIGVuZCBvZiB0aGUgZm9saW8gcmF0aGVyIHRoYW4gcmV0dXJuaW5nIE5VTEwg
b3IKPiArICogcHJvY2VlZGluZyB0byB0aGUgbmV4dCBmb2xpbyBmb3IgeW91Lgo+ICsgKgo+ICsg
KiBSZXR1cm46IFRoZSByZXF1ZXN0ZWQgYnVmZmVyIHdpdGggYW4gZWxldmF0ZWQgcmVmY291bnQu
Cj4gKyAqLwo+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBidWZmZXJfaGVhZCAqZ2V0X250aF9iaChz
dHJ1Y3QgYnVmZmVyX2hlYWQgKmJoLAo+ICsgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgY291
bnQpCj4gK3sKPiArICAgICAgIHdoaWxlIChjb3VudC0tKQo+ICsgICAgICAgICAgICAgICBiaCA9
IGJoLT5iX3RoaXNfcGFnZTsKPiArICAgICAgIGdldF9iaChiaCk7Cj4gKyAgICAgICByZXR1cm4g
Ymg7Cj4gK30KPiArCj4gIGJvb2wgYmxvY2tfZGlydHlfZm9saW8oc3RydWN0IGFkZHJlc3Nfc3Bh
Y2UgKm1hcHBpbmcsIHN0cnVjdCBmb2xpbyAqZm9saW8pOwo+Cj4gICNpZmRlZiBDT05GSUdfQlVG
RkVSX0hFQUQKPiAtLQo+IDIuNDAuMQo+CgpBY2tlZC1ieTogUnl1c3VrZSBLb25pc2hpIDxrb25p
c2hpLnJ5dXN1a2VAZ21haWwuY29tPgoKTG9va3MgZ29vZCB0byBtZS4KClRoYW5rcywKUnl1c3Vr
ZSBLb25pc2hpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4LW50ZnMtZGV2QGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9s
aW51eC1udGZzLWRldgo=
