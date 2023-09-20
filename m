Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8F07A7544
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:06:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qisDg-00089G-Ap;
	Wed, 20 Sep 2023 08:06:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qio7O-0005Hi-GQ
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 03:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ngNBnUvO+0NVI0ss84Zb16ZvzrZCajcq442dwEgXZM=; b=EVlKB5uT7AekV90CfzkL3IuwYc
 NzKetea1957BEfd76zNEGowiTwz/HHpA3hkLNHV0wTDwOU5bslRKM85dXbExV8meP+T9D8l10ktjf
 SxF5w8a3L0oRH3xzgTVI7bvJ9TjSEJciYWS3imWRDt7NNPRexCpR6beUjRIO+I5ijJsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0ngNBnUvO+0NVI0ss84Zb16ZvzrZCajcq442dwEgXZM=; b=IJh0Hu6MtJD5oCnN5Cuj89sAv9
 NA5oFcWUwdowXdl895KgCHs/bfh3nQAcb2hnvK1ohn7XAZzS7/D3pwEbEw+n6LCVouDTYz9uJ+Qj3
 GmjlRTPhAqkqObs/OdDMpJXKL2uJc/bTNxPJvYx5013QJlBoC1PkEV27zN6YXC/tRcuk=;
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qio7N-0004Nr-T7 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 03:43:14 +0000
Received: by mail-vs1-f47.google.com with SMTP id
 ada2fe7eead31-4526a936dcaso1403825137.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 20:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695181388; x=1695786188; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0ngNBnUvO+0NVI0ss84Zb16ZvzrZCajcq442dwEgXZM=;
 b=kaXIRfUAx8VoxKT0X7529BPjSbNYnkBqLnplTbOb8YsCM7Ul2B+rcV/RUxsiYmpOod
 bM41zkUq/lsInz71ZnR25TCpn0+QMI4SkRbLzFYKTUMTenzlKZ6w7RX+KL9rpDxXA9CY
 HcoJJiwI2aeI0BBa+U1rz99yko+jOeY8JKP0lxQJp4uOJIudyTH6HkiNU3+vnH2XeglB
 v6uvZE1dT3JactH4nMrx+RYvODZWt5zBvXMBqtmsg9vFSOdVcxXaOShBO5ZWTiRGC0Nv
 AlaEYil1MYiAC3D8S6rLme6c6pKQexl5le5pNJCMK21j4X1CEKO9sHEc+g3ZeJjIQKzB
 x9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695181388; x=1695786188;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0ngNBnUvO+0NVI0ss84Zb16ZvzrZCajcq442dwEgXZM=;
 b=sSZsxYs0G2oXtf21Bi+gJmMzj7437cEvthvR6wmrfFcPxwB4LhxpEd5xIsD9g6U+zH
 qeZgdJmAOnhybYHfKRrYfvBMGmET6yztZih8gYLR/iCA4mbYbpcMSSyEZt11WWMSSSFP
 BnPmEqCW6p7awsGtr5vCyxP6ISIzd6SP3VpmyBMmf4unWktP9THgFU5ysyxegjwbPkki
 UYxz/O+LmleTPjenNCvv+BEg7hNTzX76s1xCzaql8H6L9JzBmqhYLwfhsjAGUUL9Hpvo
 yBZDSlYwpAvQQrEMW3FhumQAV9hQpvNT52IJcjpts3wDfQkt0ryuS5aOi2kWnc5LoHwG
 5Llg==
X-Gm-Message-State: AOJu0Yzggd+VAlmHB6RZEqLGFA3W4TmQLbUehnA5ipnkhHgdvCsNEFh6
 OLMHnNCcDvLqFTF49pO+v+k2+xHJY2hEdVCreXc=
X-Google-Smtp-Source: AGHT+IGPPyxUdWQmz12+jR8GRkg4Q7xlkbrev/wkMNzsTNm8rjJQLm794z9bRnC0gXpAvfWgdwBP7VgL2CwiFhgTFmo=
X-Received: by 2002:a67:f3d0:0:b0:44e:bc13:b761 with SMTP id
 j16-20020a67f3d0000000b0044ebc13b761mr1886156vsn.14.1695181388190; Tue, 19
 Sep 2023 20:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-10-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-10-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 12:42:51 +0900
Message-ID: <CAKFNMokgW2Js5RUpLujf72C+vpMmJbLM=0OfDpD6MvGwLWFphw@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 6:09 PM Matthew Wilcox (Oracle)
   wrote: > > Remove a number of folio->page->folio conversions. > > Signed-off-by:
    Matthew Wilcox (Oracle) > --- > fs/nilfs2/mdt.c | 20 ++++++ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.217.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.217.47 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1qio7N-0004Nr-T7
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:05:56 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 09/26] nilfs2: Convert
 nilfs_mdt_freeze_buffer to use a folio
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgNjowOeKAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gUmVtb3ZlIGEgbnVtYmVyIG9mIGZvbGlvLT5wYWdlLT5mb2xpbyBjb252ZXJz
aW9ucy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxseUBp
bmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9uaWxmczIvbWR0LmMgfCAyMCArKysrKysrKysrKy0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9mcy9uaWxmczIvbWR0LmMgYi9mcy9uaWxmczIvbWR0LmMKPiBp
bmRleCAxOWM4MTU4NjA1ZWQuLmRiMjI2MGQ2ZTQ0ZCAxMDA2NDQKPiAtLS0gYS9mcy9uaWxmczIv
bWR0LmMKPiArKysgYi9mcy9uaWxmczIvbWR0LmMKPiBAQCAtNTYwLDE3ICs1NjAsMTkgQEAgaW50
IG5pbGZzX21kdF9mcmVlemVfYnVmZmVyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBidWZm
ZXJfaGVhZCAqYmgpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBuaWxmc19zaGFkb3dfbWFwICpzaGFk
b3cgPSBOSUxGU19NRFQoaW5vZGUpLT5taV9zaGFkb3c7Cj4gICAgICAgICBzdHJ1Y3QgYnVmZmVy
X2hlYWQgKmJoX2Zyb3plbjsKPiAtICAgICAgIHN0cnVjdCBwYWdlICpwYWdlOwo+ICsgICAgICAg
c3RydWN0IGZvbGlvICpmb2xpbzsKPiAgICAgICAgIGludCBibGtiaXRzID0gaW5vZGUtPmlfYmxr
Yml0czsKPgo+IC0gICAgICAgcGFnZSA9IGdyYWJfY2FjaGVfcGFnZShzaGFkb3ctPmlub2RlLT5p
X21hcHBpbmcsIGJoLT5iX2ZvbGlvLT5pbmRleCk7Cj4gLSAgICAgICBpZiAoIXBhZ2UpCj4gLSAg
ICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ICsgICAgICAgZm9saW8gPSBmaWxlbWFwX2dy
YWJfZm9saW8oc2hhZG93LT5pbm9kZS0+aV9tYXBwaW5nLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGJoLT5iX2ZvbGlvLT5pbmRleCk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGZvbGlvKSkKPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZm9saW8pOwo+Cj4gLSAgICAgICBpZiAoIXBh
Z2VfaGFzX2J1ZmZlcnMocGFnZSkpCj4gLSAgICAgICAgICAgICAgIGNyZWF0ZV9lbXB0eV9idWZm
ZXJzKHBhZ2UsIDEgPDwgYmxrYml0cywgMCk7Cj4gKyAgICAgICBiaF9mcm96ZW4gPSBmb2xpb19i
dWZmZXJzKGZvbGlvKTsKPiArICAgICAgIGlmICghYmhfZnJvemVuKQo+ICsgICAgICAgICAgICAg
ICBiaF9mcm96ZW4gPSBmb2xpb19jcmVhdGVfZW1wdHlfYnVmZmVycyhmb2xpbywgMSA8PCBibGti
aXRzLCAwKTsKPgo+IC0gICAgICAgYmhfZnJvemVuID0gbmlsZnNfcGFnZV9nZXRfbnRoX2Jsb2Nr
KHBhZ2UsIGJoX29mZnNldChiaCkgPj4gYmxrYml0cyk7Cj4gKyAgICAgICBiaF9mcm96ZW4gPSBn
ZXRfbnRoX2JoKGJoX2Zyb3plbiwgYmhfb2Zmc2V0KGJoKSA+PiBibGtiaXRzKTsKPgo+ICAgICAg
ICAgaWYgKCFidWZmZXJfdXB0b2RhdGUoYmhfZnJvemVuKSkKPiAgICAgICAgICAgICAgICAgbmls
ZnNfY29weV9idWZmZXIoYmhfZnJvemVuLCBiaCk7Cj4gQEAgLTU4Miw4ICs1ODQsOCBAQCBpbnQg
bmlsZnNfbWR0X2ZyZWV6ZV9idWZmZXIoc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGJ1ZmZl
cl9oZWFkICpiaCkKPiAgICAgICAgICAgICAgICAgYnJlbHNlKGJoX2Zyb3plbik7IC8qIGFscmVh
ZHkgZnJvemVuICovCj4gICAgICAgICB9Cj4KPiAtICAgICAgIHVubG9ja19wYWdlKHBhZ2UpOwo+
IC0gICAgICAgcHV0X3BhZ2UocGFnZSk7Cj4gKyAgICAgICBmb2xpb191bmxvY2soZm9saW8pOwo+
ICsgICAgICAgZm9saW9fcHV0KGZvbGlvKTsKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAt
LQo+IDIuNDAuMQo+CgpBY2tlZC1ieTogUnl1c3VrZSBLb25pc2hpIDxrb25pc2hpLnJ5dXN1a2VA
Z21haWwuY29tPgoKTG9va3MgZ29vZCB0byBtZS4KClRoYW5rcywKUnl1c3VrZSBLb25pc2hpCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnRm
cy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4LW50ZnMtZGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRl
dgo=
