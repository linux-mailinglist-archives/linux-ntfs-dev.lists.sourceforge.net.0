Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB167A7545
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:06:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qisDg-00089X-L1;
	Wed, 20 Sep 2023 08:06:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qiobM-0006zf-MZ
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 04:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n0rt7w3e82POtgPKP1THsIMl2ekopUlVw4b9tDepiWE=; b=aZ30tGGzvaThi19lDfUAomf0eg
 40P4C+4ttR/EeJE4fOCOzUIEx9DTqixNLInAcJZuPgAVSYeo6CXrjrUcrbSlq+lIVOv82m42B4CeU
 MfTXNxu9EZ8pV7NXmUK5vJhX0I1rjLxskaUjWAo+whZ9vG7Yjqnga598Wb1wB+9xOYnE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n0rt7w3e82POtgPKP1THsIMl2ekopUlVw4b9tDepiWE=; b=fyk3GZLwg83CJgKZumNJFNRg8+
 4pqbwNOD44buoAS4BMZdWLeAu3rNKaA8zKqnp5L7/lzSVAmQD6xQ+SilW15wT2yegxa5/94cthh2B
 Dexwsf5mtQod94RANmVHrsWzBNJcJAba7hRywiwnsKqlycwC+VbzVsqwJjo0zPHHF9Eo=;
Received: from mail-vs1-f43.google.com ([209.85.217.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiobK-00FzFV-09 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 04:14:12 +0000
Received: by mail-vs1-f43.google.com with SMTP id
 ada2fe7eead31-4526b9078b2so1187099137.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 21:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695183242; x=1695788042; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n0rt7w3e82POtgPKP1THsIMl2ekopUlVw4b9tDepiWE=;
 b=SeZMMrnmXJ4bcY66AbBO3WSoWMXYemE6IVs7h3K8Fe+r+pNL1NimMURaEwhXnZHpb7
 wmJPUMyg5dDa/zdKUoDv7XDPbeLHFFhmI/whvaSjvmIDfsY7nu2S30gQ8MqRp1TlNLyg
 e7pShm5lmbt9EI2ojj3zSqlt2Lq3bhzbLDQgmJblF/iYGRwd7O6R+e88mJtMevGwtMwj
 t+/tMAt66HU3dTXSJ3lmvXytjjMWaB2ofTsVPhwGZHlgi7R/4eOlNirRh+gUeJeehYTe
 UoMQuDdhKkw7LRZMxjea6V64YM3/sDd6agPkECDTdrgtP2hCtWfdCs8wlhdHll5Eg//z
 k6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695183242; x=1695788042;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=n0rt7w3e82POtgPKP1THsIMl2ekopUlVw4b9tDepiWE=;
 b=BcNEeoQClzc7PdeXolZvMs+5QMAKDsTR76wK/nBxac9WgJZH4VyHhEeWxQHFjIkwOK
 65aOSvfNP1RMV1l7aSapINikiSBG5vc9vilq0KnvmWwGiRXZ+Pc+Amd+iO5LvSVggUqF
 BU0ih1Vr+TIZh9lw7rUY91/hnCzaKZ1zz1lKjnXuZXLO6h+zmQvrK/9yJN2KJD+CB/he
 9Gb8JJJkaQb0nSfRVJNbRBG1LUVx6rxsUNfzDN2Scs5Q7cxMK+eG4dw0WjMMswjvucFs
 GZZiIG5hNTH6p7PJyECuZc5LBNt5CTvOCuIpcSDSssMlNz1xcuFylelKBufuoZtNnX92
 YHng==
X-Gm-Message-State: AOJu0YxPkcvp5aDssCX6Lszm4YZAiNdQkxYJ55Z9c1EoVs/U9A4b3YrR
 5bfjf/88M9c2VC+WopmEnV3nH4scI04RDG/Z/nQ=
X-Google-Smtp-Source: AGHT+IGCKO6LeP33eZK46vTIa58jvzUXNGW5L0NVntBiKaEkNCqYCRfexXS3jzHPQ4GIsPMvj/0pYBrkJxVEdJ5Rjcw=
X-Received: by 2002:a05:6102:184:b0:452:635b:8440 with SMTP id
 r4-20020a056102018400b00452635b8440mr1509703vsq.30.1695183242192; Tue, 19 Sep
 2023 21:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-11-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-11-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 13:13:45 +0900
Message-ID: <CAKFNMomBNvU-cRbrHMem8qPtLdfeO7VgKdSwxPixA1-vZMyDVg@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 7:20 PM Matthew Wilcox (Oracle)
   wrote: > > Remove a number of folio->page->folio conversions. > > Signed-off-by:
    Matthew Wilcox (Oracle) > --- > fs/nilfs2/page.c | 26 +++++ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.217.43 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.217.43 listed in wl.mailspike.net]
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
X-Headers-End: 1qiobK-00FzFV-09
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:05:57 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 10/26] nilfs2: Convert
 nilfs_grab_buffer() to use a folio
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgNzoyMOKAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gUmVtb3ZlIGEgbnVtYmVyIG9mIGZvbGlvLT5wYWdlLT5mb2xpbyBjb252ZXJz
aW9ucy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxseUBp
bmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9uaWxmczIvcGFnZS5jIHwgMjYgKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEzIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzL25pbGZzMi9wYWdlLmMgYi9mcy9uaWxmczIv
cGFnZS5jCj4gaW5kZXggYjRlNTRkMDc5YjdkLi4xYzA3NWJkOTA2YzkgMTAwNjQ0Cj4gLS0tIGEv
ZnMvbmlsZnMyL3BhZ2UuYwo+ICsrKyBiL2ZzL25pbGZzMi9wYWdlLmMKPiBAQCAtMjUsMTkgKzI1
LDE5IEBACj4gICAgICAgICAoQklUKEJIX1VwdG9kYXRlKSB8IEJJVChCSF9NYXBwZWQpIHwgQklU
KEJIX05JTEZTX05vZGUpIHwgICAgICAgXAo+ICAgICAgICAgIEJJVChCSF9OSUxGU19Wb2xhdGls
ZSkgfCBCSVQoQkhfTklMRlNfQ2hlY2tlZCkpCj4KPiAtc3RhdGljIHN0cnVjdCBidWZmZXJfaGVh
ZCAqCj4gLV9fbmlsZnNfZ2V0X3BhZ2VfYmxvY2soc3RydWN0IHBhZ2UgKnBhZ2UsIHVuc2lnbmVk
IGxvbmcgYmxvY2ssIHBnb2ZmX3QgaW5kZXgsCj4gLSAgICAgICAgICAgICAgICAgICAgICBpbnQg
YmxrYml0cywgdW5zaWduZWQgbG9uZyBiX3N0YXRlKQo+ICtzdGF0aWMgc3RydWN0IGJ1ZmZlcl9o
ZWFkICpfX25pbGZzX2dldF9mb2xpb19ibG9jayhzdHJ1Y3QgZm9saW8gKmZvbGlvLAo+ICsgICAg
ICAgICAgICAgICB1bnNpZ25lZCBsb25nIGJsb2NrLCBwZ29mZl90IGluZGV4LCBpbnQgYmxrYml0
cywKPiArICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBiX3N0YXRlKQo+Cj4gIHsKPiAgICAg
ICAgIHVuc2lnbmVkIGxvbmcgZmlyc3RfYmxvY2s7Cj4gLSAgICAgICBzdHJ1Y3QgYnVmZmVyX2hl
YWQgKmJoOwo+ICsgICAgICAgc3RydWN0IGJ1ZmZlcl9oZWFkICpiaCA9IGZvbGlvX2J1ZmZlcnMo
Zm9saW8pOwo+Cj4gLSAgICAgICBpZiAoIXBhZ2VfaGFzX2J1ZmZlcnMocGFnZSkpCj4gLSAgICAg
ICAgICAgICAgIGNyZWF0ZV9lbXB0eV9idWZmZXJzKHBhZ2UsIDEgPDwgYmxrYml0cywgYl9zdGF0
ZSk7Cj4gKyAgICAgICBpZiAoIWJoKQo+ICsgICAgICAgICAgICAgICBiaCA9IGZvbGlvX2NyZWF0
ZV9lbXB0eV9idWZmZXJzKGZvbGlvLCAxIDw8IGJsa2JpdHMsIGJfc3RhdGUpOwo+Cj4gICAgICAg
ICBmaXJzdF9ibG9jayA9ICh1bnNpZ25lZCBsb25nKWluZGV4IDw8IChQQUdFX1NISUZUIC0gYmxr
Yml0cyk7Cj4gLSAgICAgICBiaCA9IG5pbGZzX3BhZ2VfZ2V0X250aF9ibG9jayhwYWdlLCBibG9j
ayAtIGZpcnN0X2Jsb2NrKTsKPiArICAgICAgIGJoID0gZ2V0X250aF9iaChiaCwgYmxvY2sgLSBm
aXJzdF9ibG9jayk7Cj4KPiAgICAgICAgIHRvdWNoX2J1ZmZlcihiaCk7Cj4gICAgICAgICB3YWl0
X29uX2J1ZmZlcihiaCk7Cj4gQEAgLTUxLDE3ICs1MSwxNyBAQCBzdHJ1Y3QgYnVmZmVyX2hlYWQg
Km5pbGZzX2dyYWJfYnVmZmVyKHN0cnVjdCBpbm9kZSAqaW5vZGUsCj4gIHsKPiAgICAgICAgIGlu
dCBibGtiaXRzID0gaW5vZGUtPmlfYmxrYml0czsKPiAgICAgICAgIHBnb2ZmX3QgaW5kZXggPSBi
bGtvZmYgPj4gKFBBR0VfU0hJRlQgLSBibGtiaXRzKTsKPiAtICAgICAgIHN0cnVjdCBwYWdlICpw
YWdlOwo+ICsgICAgICAgc3RydWN0IGZvbGlvICpmb2xpbzsKPiAgICAgICAgIHN0cnVjdCBidWZm
ZXJfaGVhZCAqYmg7Cj4KPiAtICAgICAgIHBhZ2UgPSBncmFiX2NhY2hlX3BhZ2UobWFwcGluZywg
aW5kZXgpOwo+IC0gICAgICAgaWYgKHVubGlrZWx5KCFwYWdlKSkKPiArICAgICAgIGZvbGlvID0g
ZmlsZW1hcF9ncmFiX2ZvbGlvKG1hcHBpbmcsIGluZGV4KTsKPiArICAgICAgIGlmIChJU19FUlIo
Zm9saW8pKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPgo+IC0gICAgICAgYmggPSBf
X25pbGZzX2dldF9wYWdlX2Jsb2NrKHBhZ2UsIGJsa29mZiwgaW5kZXgsIGJsa2JpdHMsIGJfc3Rh
dGUpOwo+ICsgICAgICAgYmggPSBfX25pbGZzX2dldF9mb2xpb19ibG9jayhmb2xpbywgYmxrb2Zm
LCBpbmRleCwgYmxrYml0cywgYl9zdGF0ZSk7Cj4gICAgICAgICBpZiAodW5saWtlbHkoIWJoKSkg
ewo+IC0gICAgICAgICAgICAgICB1bmxvY2tfcGFnZShwYWdlKTsKPiAtICAgICAgICAgICAgICAg
cHV0X3BhZ2UocGFnZSk7Cj4gKyAgICAgICAgICAgICAgIGZvbGlvX3VubG9jayhmb2xpbyk7Cj4g
KyAgICAgICAgICAgICAgIGZvbGlvX3B1dChmb2xpbyk7Cj4gICAgICAgICAgICAgICAgIHJldHVy
biBOVUxMOwo+ICAgICAgICAgfQo+ICAgICAgICAgcmV0dXJuIGJoOwo+IC0tCj4gMi40MC4xCj4K
CkFja2VkLWJ5OiBSeXVzdWtlIEtvbmlzaGkgPGtvbmlzaGkucnl1c3VrZUBnbWFpbC5jb20+CgpM
b29rcyBnb29kIHRvIG1lLgoKVGhhbmtzLApSeXVzdWtlIEtvbmlzaGkKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5n
IGxpc3QKTGludXgtbnRmcy1kZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
