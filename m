Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C568A7A75F5
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:36:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qish2-0004iV-OI;
	Wed, 20 Sep 2023 08:36:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qisFS-0006G3-9K
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 08:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9cH5sDHtnVKWCV3iCYyvX8z8Hs3DAvkXrfeXQp9YY8c=; b=AeW1Y+pZ5rWAgCewjedAYwtN2C
 MntwHSR1+3XT+qk1AGmqbGUlO5y0IegoCGDzCGCpkJSF9S8jAH7rh8Kwlq8UD8kKsMIDHCKT/ksKO
 pfTD/cW3V16Jh26jsFjEoN+vLU1Tgl4x8dYGxpVmGRDp0GF1iMNxErl/dHQ20K+bE4aA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9cH5sDHtnVKWCV3iCYyvX8z8Hs3DAvkXrfeXQp9YY8c=; b=b7UCdg+fS/g2BAQRlOGtp3k/28
 XO/DINcX04lYadbW8Zn7Z+2J1dLXtPT22Qhr/WBamBghnvASpMK6L80yeh9v2n/GkZsWrIKDW/AM3
 LtoHaKfXiJ1PohlzfXeVlk1w4OiaoJAaanIsYjLsbJyILPEU7UGZ75ODu016wpuqoTO4=;
Received: from mail-vk1-f179.google.com ([209.85.221.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qisFN-00GJcr-Ke for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 08:07:49 +0000
Received: by mail-vk1-f179.google.com with SMTP id
 71dfb90a1353d-4935f87ca26so2733518e0c.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 01:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695197256; x=1695802056; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9cH5sDHtnVKWCV3iCYyvX8z8Hs3DAvkXrfeXQp9YY8c=;
 b=brqe0Kr7bmjQPeSsG2qytguDrTyHXS3XHSiXnX9i5mq5dikj2EAfaCAOXbzrMBijbW
 ttiE9TXvI4TevZdlTvvy6RYme5PCjsCV9hVGLEhiFoThVjueIxeLKJVk3YZIwTCAA81k
 g35kBYy3cYrrQDUBUJ5AWWejEGojXwdAyRwnj0ZoTWc4wsvi2ODfo6ly7fW5LkRTh4qf
 9FahJH2JUR+nvgPJorijj41Ax/TUX6L/Ojf8GRaQgvJnrLXj9f1vH7XOXCyUbzz4AEu9
 lhONXqBzc5/b0kBp2fNoHgP0uBtzmFFsJ/oJ52O/LWRZryKMvNZX80X7Wyd9LKvU1scq
 hbww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695197256; x=1695802056;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9cH5sDHtnVKWCV3iCYyvX8z8Hs3DAvkXrfeXQp9YY8c=;
 b=lqqTrCc4OFlTKRaVrtiMqf21i9cFZltLaArm98EL/kIb26nyzUNU07Wh3e1bNMZGbW
 rap7xZPXHlFPQggW0PKWa94uJhuaWa/VTN198ag2UduWJIp/61JdgNgx26d6BzN8D9RU
 I3WedRcRaLQ6vMQtm/IYwzu3oAeYNdXRYb8VcI2q/uWwdWVd9lYXO+nmvHJNr2SdX6xz
 7GM1LVXQ3jyu2Hc86SHGMHwzvE6B123IZiA6CXrvUCbqVYbf/7qtih3c8Zo5o99ZuJ11
 Cp1C2MPnrWN+gU+D4uj62R96tUD3B8T8ITwvdd/kcKo9rPhPuwwVucx05gQd6bknmWl7
 +w8g==
X-Gm-Message-State: AOJu0YzAGQrTA6pQZzgiXxMCReXvd4U9F/Mln0YSEDgp5Vy10r8pQZZ9
 96wDAMe1RuoeOLuj/wLqUPu/X1kpXaiTrYtOvFQ=
X-Google-Smtp-Source: AGHT+IFkmee8vYqiRU2MDwPCUYc12H9bxQ6dbTyVl2uMQTPK3nmmRGzDpQBcuukLJM94BaZ9yBg2NObfT5FOrPxTcNo=
X-Received: by 2002:a1f:4c41:0:b0:48f:e0c4:1a1 with SMTP id
 z62-20020a1f4c41000000b0048fe0c401a1mr1862870vka.12.1695197256424; Wed, 20
 Sep 2023 01:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-14-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-14-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 17:07:20 +0900
Message-ID: <CAKFNMokMe_QOPuLXsvUJf2+qZLUyi7Z_JFAKvh853N6ZV3yGyA@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 6:25 PM Matthew Wilcox (Oracle)
   wrote: > > Remove a number of folio->page->folio conversions. > > Signed-off-by:
    Matthew Wilcox (Oracle) > --- > fs/nilfs2/mdt.c | 16 ++++++ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.179 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1qisFN-00GJcr-Ke
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:36:20 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 13/26] nilfs2: Convert
 nilfs_mdt_get_frozen_buffer to use a folio
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgNjoyNeKAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gUmVtb3ZlIGEgbnVtYmVyIG9mIGZvbGlvLT5wYWdlLT5mb2xpbyBjb252ZXJz
aW9ucy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxseUBp
bmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9uaWxmczIvbWR0LmMgfCAxNiArKysrKysrKystLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZnMvbmlsZnMyL21kdC5jIGIvZnMvbmlsZnMyL21kdC5jCj4gaW5kZXgg
MTFiN2NmNGFjYzkyLi43Yjc1NGU2NDk0ZDcgMTAwNjQ0Cj4gLS0tIGEvZnMvbmlsZnMyL21kdC5j
Cj4gKysrIGIvZnMvbmlsZnMyL21kdC5jCj4gQEAgLTU5MiwxNyArNTkyLDE5IEBAIG5pbGZzX21k
dF9nZXRfZnJvemVuX2J1ZmZlcihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgYnVmZmVyX2hl
YWQgKmJoKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbmlsZnNfc2hhZG93X21hcCAqc2hhZG93ID0g
TklMRlNfTURUKGlub2RlKS0+bWlfc2hhZG93Owo+ICAgICAgICAgc3RydWN0IGJ1ZmZlcl9oZWFk
ICpiaF9mcm96ZW4gPSBOVUxMOwo+IC0gICAgICAgc3RydWN0IHBhZ2UgKnBhZ2U7Cj4gKyAgICAg
ICBzdHJ1Y3QgZm9saW8gKmZvbGlvOwo+ICAgICAgICAgaW50IG47Cj4KPiAtICAgICAgIHBhZ2Ug
PSBmaW5kX2xvY2tfcGFnZShzaGFkb3ctPmlub2RlLT5pX21hcHBpbmcsIGJoLT5iX2ZvbGlvLT5p
bmRleCk7Cj4gLSAgICAgICBpZiAocGFnZSkgewo+IC0gICAgICAgICAgICAgICBpZiAocGFnZV9o
YXNfYnVmZmVycyhwYWdlKSkgewo+ICsgICAgICAgZm9saW8gPSBmaWxlbWFwX2xvY2tfZm9saW8o
c2hhZG93LT5pbm9kZS0+aV9tYXBwaW5nLAo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJoLT5i
X2ZvbGlvLT5pbmRleCk7Cj4gKyAgICAgICBpZiAoIUlTX0VSUihmb2xpbykpIHsKPiArICAgICAg
ICAgICAgICAgYmhfZnJvemVuID0gZm9saW9fYnVmZmVycyhmb2xpbyk7Cj4gKyAgICAgICAgICAg
ICAgIGlmIChiaF9mcm96ZW4pIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBuID0gYmhfb2Zm
c2V0KGJoKSA+PiBpbm9kZS0+aV9ibGtiaXRzOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGJo
X2Zyb3plbiA9IG5pbGZzX3BhZ2VfZ2V0X250aF9ibG9jayhwYWdlLCBuKTsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBiaF9mcm96ZW4gPSBnZXRfbnRoX2JoKGJoX2Zyb3plbiwgbik7Cj4gICAg
ICAgICAgICAgICAgIH0KPiAtICAgICAgICAgICAgICAgdW5sb2NrX3BhZ2UocGFnZSk7Cj4gLSAg
ICAgICAgICAgICAgIHB1dF9wYWdlKHBhZ2UpOwo+ICsgICAgICAgICAgICAgICBmb2xpb191bmxv
Y2soZm9saW8pOwo+ICsgICAgICAgICAgICAgICBmb2xpb19wdXQoZm9saW8pOwo+ICAgICAgICAg
fQo+ICAgICAgICAgcmV0dXJuIGJoX2Zyb3plbjsKPiAgfQo+IC0tCj4gMi40MC4xCj4KCkFja2Vk
LWJ5OiBSeXVzdWtlIEtvbmlzaGkgPGtvbmlzaGkucnl1c3VrZUBnbWFpbC5jb20+CgpMb29rcyBn
b29kIHRvIG1lLgoKVGhhbmtzLApSeXVzdWtlIEtvbmlzaGkKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QK
TGludXgtbnRmcy1kZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
