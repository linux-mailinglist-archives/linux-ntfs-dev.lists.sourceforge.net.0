Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 104C67CD863
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 18 Oct 2023 11:39:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qt31o-0004wE-Lz;
	Wed, 18 Oct 2023 09:39:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qspxH-0007PR-Ul
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 17 Oct 2023 19:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nEdPLPUGt3bDYuqJR132GTKL4Kbaz2ZIt3XjP65gcfI=; b=nFAWQOD2S5bZIw9J9rKHll4JNg
 kKXehts/KBEw9Iz2ULHq1+4iknujvJUYqp2kD9omJPy4wZ9hu7r2SDLYhkDqi3kEq5GNTm5Jf202E
 0o7tdYLSAgymwEd/ohatC3L3iUc9XB5m3tPYpsFHFlXZFwHGefR2EC+BWxIrrLsyenA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nEdPLPUGt3bDYuqJR132GTKL4Kbaz2ZIt3XjP65gcfI=; b=XjHr81pf1Dq4YcJxSQ4Wck01cW
 1SarX1XzjNk/XN0Jz2/37A6/f73oIitz1aa1Zo0m0dX7ilko7FrLyAx2aLyA5xmn7j2G6n04hFk6R
 FV8xObtXu7ZSNBzf3k8RT9kXjGj8sPbJii3tfhK41+Kc9UpPiXa9X4maq2enP5w98MgQ=;
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qspxC-000wRR-E7 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 17 Oct 2023 19:42:14 +0000
Received: by mail-vs1-f47.google.com with SMTP id
 ada2fe7eead31-457c2d81f7fso2008878137.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 17 Oct 2023 12:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697571721; x=1698176521; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nEdPLPUGt3bDYuqJR132GTKL4Kbaz2ZIt3XjP65gcfI=;
 b=DFoGmE74PWfAKGKvQd/I3IBrBOaJ2FHfXrhWREsLS8WtbccZlUmWjaMeZz8urep0AG
 VQHeoWn8WnWvNruVqzd3Ts9yAk7wuOoQucsdEyJtOpjL0StkxJ/qPotdhXmIQmyY5jjM
 VLAeAIXnOowAzP9DnwXG6ME/z5fJqq1M45QRGv5/fuT5fAopAuLjWR0vebEJasZ/Zzeh
 VNypxr+RqEGLofxk+LrjUZWNwwfjgAKWiAA7Id/yLxsYgK/sEL/X+2vzi/2NSYd1ryEp
 7u/ZJN+1PhevXuxoMy15YL/mSBdv5zstl6dTGNcDwVH+f652kJM2LgXOyrInHIiPPxnp
 Ri3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697571721; x=1698176521;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nEdPLPUGt3bDYuqJR132GTKL4Kbaz2ZIt3XjP65gcfI=;
 b=dQyYK/kwhWLYi+Jn/2IwSWToxaWden+4X2ua46N8Eet1s5G/7J9StCeCn1QnalYtZ2
 oP3kcFu6C4PxW+ZDhMPI7z537Mwx7ZVfrfbhMMphp6x3NmvJXkI+cZvfz4M5u9qVhPz9
 LUl6PeP+VLAWazOUfDCGEFZaFc8vzeG+gtm4hev/1d+Xs1eLkRoDAcfyrQ6HGt6EDhE5
 B2dGB/WUXDTVtrVV9c7gv2R885mlh0/sEz0vk4hktNYehr37F3lDsLG+9syRmilO+6OU
 6EShjngoYJShHUU1m4DSELy0f+rxgLM3xqZaVdUE81tI2WidTp9Y0Cth3IYqReVBboS4
 8HiA==
X-Gm-Message-State: AOJu0Yy4m8krrggLTIMXMik5rygettD+MqDhZDaHtE6W75P49tuNyTIU
 cC+hRpO/G9vAV0NbjQ+06tE5tnNXAMmJ2bkqDrw=
X-Google-Smtp-Source: AGHT+IEGVouf3g52zAQZKqogAWOdoqW2ayEa2oclPTWNKWf5D8raecPXGS+4xiqVaAbbP8NV0hXO6xERMf3T6Nmer6s=
X-Received: by 2002:a67:c186:0:b0:457:dd92:f913 with SMTP id
 h6-20020a67c186000000b00457dd92f913mr3741772vsj.14.1697571721243; Tue, 17 Oct
 2023 12:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <20231016201114.1928083-1-willy@infradead.org>
 <20231016201114.1928083-2-willy@infradead.org>
In-Reply-To: <20231016201114.1928083-2-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 18 Oct 2023 04:41:44 +0900
Message-ID: <CAKFNMonj9XQe1PdeCny7N8MFAHwQVQNDf6A2S4g-gxX4iJLvZQ@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Oct 17, 2023 at 5:11 AM Matthew Wilcox (Oracle)
   wrote: > > Rename grow_dev_page() to grow_dev_folio() and make it return a
    bool. > Document what that bool means; it's more subtle than it fir [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.217.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.217.47 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qspxC-000wRR-E7
X-Mailman-Approved-At: Wed, 18 Oct 2023 09:39:47 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2 01/27] buffer: Return bool from
 grow_dev_folio()
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

T24gVHVlLCBPY3QgMTcsIDIwMjMgYXQgNToxMeKAr0FNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gUmVuYW1lIGdyb3dfZGV2X3BhZ2UoKSB0byBncm93X2Rldl9mb2xpbygpIGFu
ZCBtYWtlIGl0IHJldHVybiBhIGJvb2wuCj4gRG9jdW1lbnQgd2hhdCB0aGF0IGJvb2wgbWVhbnM7
IGl0J3MgbW9yZSBzdWJ0bGUgdGhhbiBpdCBmaXJzdCBhcHBlYXJzLgo+IEFsc28gcmVuYW1lIHRo
ZSAnZmFpbGVkJyBsYWJlbCB0byAndW5sb2NrJyBiZWFjdXNlIGl0J3Mgbm90IGV4YWN0bHkKPiAn
ZmFpbGVkJy4gIEl0IGp1c3QgaGFzbid0IHN1Y2NlZWRlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1h
dHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxseUBpbmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9i
dWZmZXIuYyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZnMvYnVmZmVyLmMgYi9mcy9idWZmZXIuYwo+IGluZGV4IGIzM2NjNzRlOTY0OS4u
ZGVjNDFkODQwNDRiIDEwMDY0NAo+IC0tLSBhL2ZzL2J1ZmZlci5jCj4gKysrIGIvZnMvYnVmZmVy
LmMKPiBAQCAtMTAyNCwyNCArMTAyNCwyNiBAQCBzdGF0aWMgc2VjdG9yX3QgZm9saW9faW5pdF9i
dWZmZXJzKHN0cnVjdCBmb2xpbyAqZm9saW8sCj4gIH0KPgo+ICAvKgo+IC0gKiBDcmVhdGUgdGhl
IHBhZ2UtY2FjaGUgcGFnZSB0aGF0IGNvbnRhaW5zIHRoZSByZXF1ZXN0ZWQgYmxvY2suCj4gKyAq
IENyZWF0ZSB0aGUgcGFnZS1jYWNoZSBmb2xpbyB0aGF0IGNvbnRhaW5zIHRoZSByZXF1ZXN0ZWQg
YmxvY2suCj4gICAqCj4gICAqIFRoaXMgaXMgdXNlZCBwdXJlbHkgZm9yIGJsb2NrZGV2IG1hcHBp
bmdzLgo+ICsgKgo+ICsgKiBSZXR1cm5zIGZhbHNlIGlmIHdlIGhhdmUgYSAncGVybWFuZW50JyBm
YWlsdXJlLiAgUmV0dXJucyB0cnVlIGlmCj4gKyAqIHdlIHN1Y2NlZWRlZCwgb3IgdGhlIGNhbGxl
ciBzaG91bGQgcmV0cnkuCj4gICAqLwo+IC1zdGF0aWMgaW50Cj4gLWdyb3dfZGV2X3BhZ2Uoc3Ry
dWN0IGJsb2NrX2RldmljZSAqYmRldiwgc2VjdG9yX3QgYmxvY2ssCj4gK3N0YXRpYyBib29sIGdy
b3dfZGV2X2ZvbGlvKHN0cnVjdCBibG9ja19kZXZpY2UgKmJkZXYsIHNlY3Rvcl90IGJsb2NrLAo+
ICAgICAgICAgICAgICAgcGdvZmZfdCBpbmRleCwgaW50IHNpemUsIGludCBzaXplYml0cywgZ2Zw
X3QgZ2ZwKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaW5vZGUgKmlub2RlID0gYmRldi0+YmRfaW5v
ZGU7Cj4gICAgICAgICBzdHJ1Y3QgZm9saW8gKmZvbGlvOwo+ICAgICAgICAgc3RydWN0IGJ1ZmZl
cl9oZWFkICpiaDsKPiAgICAgICAgIHNlY3Rvcl90IGVuZF9ibG9jazsKPiAtICAgICAgIGludCBy
ZXQgPSAwOwo+ICsgICAgICAgYm9vbCByZXQ7Cj4KPiAgICAgICAgIGZvbGlvID0gX19maWxlbWFw
X2dldF9mb2xpbyhpbm9kZS0+aV9tYXBwaW5nLCBpbmRleCwKPiAgICAgICAgICAgICAgICAgICAg
ICAgICBGR1BfTE9DSyB8IEZHUF9BQ0NFU1NFRCB8IEZHUF9DUkVBVCwgZ2ZwKTsKPiAgICAgICAg
IGlmIChJU19FUlIoZm9saW8pKQo+IC0gICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihmb2xp
byk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPgo+ICAgICAgICAgYmggPSBmb2xp
b19idWZmZXJzKGZvbGlvKTsKPiAgICAgICAgIGlmIChiaCkgewo+IEBAIC0xMDUwLDE0ICsxMDUy
LDE3IEBAIGdyb3dfZGV2X3BhZ2Uoc3RydWN0IGJsb2NrX2RldmljZSAqYmRldiwgc2VjdG9yX3Qg
YmxvY2ssCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChzZWN0b3Jf
dClpbmRleCA8PCBzaXplYml0cywgc2l6ZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZ290
byBkb25lOwo+ICAgICAgICAgICAgICAgICB9Cj4gKwo+ICsgICAgICAgICAgICAgICAvKiBDYWxs
ZXIgc2hvdWxkIHJldHJ5IGlmIHRoaXMgY2FsbCBmYWlscyAqLwo+ICsgICAgICAgICAgICAgICBy
ZXQgPSB0cnVlOwo+ICAgICAgICAgICAgICAgICBpZiAoIXRyeV90b19mcmVlX2J1ZmZlcnMoZm9s
aW8pKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZmFpbGVkOwo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGdvdG8gdW5sb2NrOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICByZXQgPSAt
RU5PTUVNOwo+ICsgICAgICAgcmV0ID0gZmFsc2U7Cj4gICAgICAgICBiaCA9IGZvbGlvX2FsbG9j
X2J1ZmZlcnMoZm9saW8sIHNpemUsIGdmcCB8IF9fR0ZQX0FDQ09VTlQpOwo+ICAgICAgICAgaWYg
KCFiaCkKPiAtICAgICAgICAgICAgICAgZ290byBmYWlsZWQ7Cj4gKyAgICAgICAgICAgICAgIGdv
dG8gdW5sb2NrOwo+Cj4gICAgICAgICAvKgo+ICAgICAgICAgICogTGluayB0aGUgZm9saW8gdG8g
dGhlIGJ1ZmZlcnMgYW5kIGluaXRpYWxpc2UgdGhlbS4gIFRha2UgdGhlCj4gQEAgLTEwNzAsMTkg
KzEwNzUsMTkgQEAgZ3Jvd19kZXZfcGFnZShzdHJ1Y3QgYmxvY2tfZGV2aWNlICpiZGV2LCBzZWN0
b3JfdCBibG9jaywKPiAgICAgICAgICAgICAgICAgICAgICAgICAoc2VjdG9yX3QpaW5kZXggPDwg
c2l6ZWJpdHMsIHNpemUpOwo+ICAgICAgICAgc3Bpbl91bmxvY2soJmlub2RlLT5pX21hcHBpbmct
PnByaXZhdGVfbG9jayk7Cj4gIGRvbmU6Cj4gLSAgICAgICByZXQgPSAoYmxvY2sgPCBlbmRfYmxv
Y2spID8gMSA6IC1FTlhJTzsKPiAtZmFpbGVkOgo+ICsgICAgICAgcmV0ID0gYmxvY2sgPCBlbmRf
YmxvY2s7Cj4gK3VubG9jazoKPiAgICAgICAgIGZvbGlvX3VubG9jayhmb2xpbyk7Cj4gICAgICAg
ICBmb2xpb19wdXQoZm9saW8pOwo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gIC8qCj4g
LSAqIENyZWF0ZSBidWZmZXJzIGZvciB0aGUgc3BlY2lmaWVkIGJsb2NrIGRldmljZSBibG9jaydz
IHBhZ2UuICBJZgo+IC0gKiB0aGF0IHBhZ2Ugd2FzIGRpcnR5LCB0aGUgYnVmZmVycyBhcmUgc2V0
IGRpcnR5IGFsc28uCj4gKyAqIENyZWF0ZSBidWZmZXJzIGZvciB0aGUgc3BlY2lmaWVkIGJsb2Nr
IGRldmljZSBibG9jaydzIGZvbGlvLiAgSWYKPiArICogdGhhdCBmb2xpbyB3YXMgZGlydHksIHRo
ZSBidWZmZXJzIGFyZSBzZXQgZGlydHkgYWxzby4KPiAgICovCj4gLXN0YXRpYyBpbnQKPiAtZ3Jv
d19idWZmZXJzKHN0cnVjdCBibG9ja19kZXZpY2UgKmJkZXYsIHNlY3Rvcl90IGJsb2NrLCBpbnQg
c2l6ZSwgZ2ZwX3QgZ2ZwKQo+ICtzdGF0aWMgYm9vbCBncm93X2J1ZmZlcnMoc3RydWN0IGJsb2Nr
X2RldmljZSAqYmRldiwgc2VjdG9yX3QgYmxvY2ssCj4gKyAgICAgICAgICAgICAgIGludCBzaXpl
LCBnZnBfdCBnZnApCj4gIHsKPiAgICAgICAgIHBnb2ZmX3QgaW5kZXg7Cj4gICAgICAgICBpbnQg
c2l6ZWJpdHM7Cj4gQEAgLTEwOTksMTEgKzExMDQsMTEgQEAgZ3Jvd19idWZmZXJzKHN0cnVjdCBi
bG9ja19kZXZpY2UgKmJkZXYsIHNlY3Rvcl90IGJsb2NrLCBpbnQgc2l6ZSwgZ2ZwX3QgZ2ZwKQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICJkZXZpY2UgJXBnXG4iLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIF9fZnVuY19fLCAodW5zaWduZWQgbG9uZyBsb25nKWJsb2NrLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGJkZXYpOwo+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICAvKiBD
cmVhdGUgYSBwYWdlIHdpdGggdGhlIHByb3BlciBzaXplIGJ1ZmZlcnMuLiAqLwo+IC0gICAgICAg
cmV0dXJuIGdyb3dfZGV2X3BhZ2UoYmRldiwgYmxvY2ssIGluZGV4LCBzaXplLCBzaXplYml0cywg
Z2ZwKTsKPiArICAgICAgIC8qIENyZWF0ZSBhIGZvbGlvIHdpdGggdGhlIHByb3BlciBzaXplIGJ1
ZmZlcnMuLiAqLwo+ICsgICAgICAgcmV0dXJuIGdyb3dfZGV2X2ZvbGlvKGJkZXYsIGJsb2NrLCBp
bmRleCwgc2l6ZSwgc2l6ZWJpdHMsIGdmcCk7Cj4gIH0KPgo+ICBzdGF0aWMgc3RydWN0IGJ1ZmZl
cl9oZWFkICoKPiAtLQo+IDIuNDAuMQoKVGhpcyBjaGFuZ2VzIHRoZSByZXR1cm4gdHlwZSBvZiBn
cm93X2J1ZmZlcnMoKSBmcm9tICJpbnQiICB0byAiYm9vbCIuCkJ1dCwgaXQgc2VlbXMgdGhhdCB0
aGUgY2FsbGVyLCBfX2dldGJsa19zbG93KCksIGhhcyBub3QgY2hhbmdlZCB0aGUKdHlwZSBvZiB0
aGUgdmFyaWFibGUgInJldCIgdGhhdCByZWNlaXZlcyBpdHMgcmV0dXJuIHZhbHVlOgoKICAgICAg
ICBmb3IgKDs7KSB7CiAgICAgICAgICAgICAgICBzdHJ1Y3QgYnVmZmVyX2hlYWQgKmJoOwogICAg
ICAgICAgICAgICAgaW50IHJldDsKCiAgICAgICAgICAgICAgICBiaCA9IF9fZmluZF9nZXRfYmxv
Y2soYmRldiwgYmxvY2ssIHNpemUpOwogICAgICAgICAgICAgICAgaWYgKGJoKQogICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gYmg7CgogICAgICAgICAgICAgICAgcmV0ID0gZ3Jvd19idWZm
ZXJzKGJkZXYsIGJsb2NrLCBzaXplLCBnZnApOwogICAgICAgICAgICAgICAgaWYgKHJldCA8IDAp
CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwogICAgICAgIH0KClNvLCBpdCBs
b29rcyBsaWtlIHRoZSBlcnJvciBjaGVjayBpbW1lZGlhdGVseSBhZnRlciBjYWxsaW5nCmdyb3df
YnVmZmVycygpIHdpbGwgbm90IGJyYW5jaCBsaWtlIGJlZm9yZS4KSXMgdGhpcyBva2F5ID8gICBP
ciwgYW0gSSBtaXNzaW5nIHNvbWUgb3RoZXIgY2hhbmdlcz8KCkFsc28sIHRoZXJlIGlzIGEgdHlw
byBpbiB0aGUgY2hhbmdlbG9nOiAiYmVhY3VzZSIgLT4gImJlY2F1c2UiLgoKUmVnYXJkcywKUnl1
c3VrZSBLb25pc2hpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4LW50ZnMtZGV2QGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9saW51eC1udGZzLWRldgo=
