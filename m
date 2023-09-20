Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BFA7A7546
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:06:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qisDg-0008A0-Vd;
	Wed, 20 Sep 2023 08:06:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qiq4R-0003JX-Kc
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 05:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5e3f4QzEJgcH/wzSbDI/gKJD4hMsGrXqzvw2fLNZQag=; b=SX1sEygP+mEDQwKPnV6YXeZMNe
 yJ0cbUMh0JamTbkqIX3EJW+bscl8uf7mOwHM30iA6No2QEWTFB/Q/LEJDZfDy+10s2neQgeh8Uhtv
 eFykxsB7JILesI5HqTIymMEWVHgKUSCuMOJqyKnKkjl4JyEh+hVA1uL+nhtJ+x11DqtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5e3f4QzEJgcH/wzSbDI/gKJD4hMsGrXqzvw2fLNZQag=; b=AkXPG7Amii4SPOd7OGb7NUwfKf
 ch8aMF6MymQELa4xHVBa1d7kugG6OL41STYDneESJmV3Yc/zCyeVB6GM1N8nVY2vu25D3zWeq+POY
 EAc/s74xH9MyW5fdEzgkKYhDNWEnFgsC5by/7TyR7KxmAw36do8Hj1lFylOjU3HukoUg=;
Received: from mail-vk1-f176.google.com ([209.85.221.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiq4P-0004L4-M4 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 05:48:19 +0000
Received: by mail-vk1-f176.google.com with SMTP id
 71dfb90a1353d-48faba23f51so2798397e0c.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 22:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695188890; x=1695793690; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5e3f4QzEJgcH/wzSbDI/gKJD4hMsGrXqzvw2fLNZQag=;
 b=NFbvWC7Yw06Y4aWhOc9cl4K488YjKFVgSAnEINH+WmuZS/jlVngrkpL5QdCS7VyZWv
 7cQmq8o7BvDCMpLS4+BlTe/5hP4Y7vj3h3HK1iaA/fe+yCOeoeMJiA3Wnay1EzLyZZKE
 dTwLtXYGCX1bhIOvCEiDImDazjsrXXDmMjowJVEfaEV7PBt7puArmtjRR6pK+B5KEfPe
 IhhE2hjmH9EcPvYZklWR7Xu6PeDKvRIZ6oFgeXpCuTVhpF9t5Igx1jRHlftfv2Du29yb
 uKgSptAmXiiK4PYEqvbvJ9gCAOALobKEYftSAOD4ZVBPjwgTyA+/1rhuZGW/NZE0yc2q
 VQ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695188890; x=1695793690;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5e3f4QzEJgcH/wzSbDI/gKJD4hMsGrXqzvw2fLNZQag=;
 b=YI/AFvI8+q178tenSI2ZIEQtYu0D7Mk6+wqK4p00y7ZnEx8DMb6qfyuw9o50jD86Yy
 A/9spxY737KibDyNlO/rnP0WxFjGZ4bzmP8wZDl5crsPI0vtGcOhiRhIBW47nd4SoF2L
 HNkM/CV+DJJbz5YKG9hFxiRgU2NP+FYOLPjyFIBd0uyYxEPlObV60XS6iIff0qpcUo74
 jhVwdm4ABMxz2eCCOMl+sIljVbFTjFfKYTVWEWD1c5dayzg5p1AbKOxY7Pad3Q1dJZEK
 0HX/vBsG5DNtpbkkkORx3N5AsfU2DYmlNUT+Gh+kvXtoVrAlswV7ldZnMuICua79o+SV
 Nnzg==
X-Gm-Message-State: AOJu0YxQrUiVbWsgUyixvGAfGI+qjD22I6MNMUVoCnWkQu0C+jMZfTzh
 3hZBmL0GPEtjqOp6sMgmh2LXO+U0qUBriPw8hFs=
X-Google-Smtp-Source: AGHT+IGnBGbbDBAQOh7vcWJKVBasqQrkD7T+LnvSe1XPBdxnGh5r46NefmsuEg6nHj7S9VfFtMPWSsD2r5Md+tnpJVE=
X-Received: by 2002:a1f:de43:0:b0:496:295a:843 with SMTP id
 v64-20020a1fde43000000b00496295a0843mr1735552vkg.13.1695188890584; Tue, 19
 Sep 2023 22:48:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-12-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-12-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 14:47:53 +0900
Message-ID: <CAKFNMo=WOCiFU0SDFTczCqRPEk3_sH7bXEHaGEE390+ouAuapA@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 1:56 PM Matthew Wilcox (Oracle)
   wrote: > > Both callers already have a folio, so pass it in and use it directly.
    > Removes a lot of hidden calls to compound_head(). > > Signe [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1qiq4P-0004L4-M4
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:05:58 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 11/26] nilfs2: Convert
 nilfs_copy_page() to nilfs_copy_folio()
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgMTo1NuKAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gQm90aCBjYWxsZXJzIGFscmVhZHkgaGF2ZSBhIGZvbGlvLCBzbyBwYXNzIGl0
IGluIGFuZCB1c2UgaXQgZGlyZWN0bHkuCj4gUmVtb3ZlcyBhIGxvdCBvZiBoaWRkZW4gY2FsbHMg
dG8gY29tcG91bmRfaGVhZCgpLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBXaWxjb3ggKE9y
YWNsZSkgPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gLS0tCj4gIGZzL25pbGZzMi9wYWdlLmMgfCA1
MCArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2ZzL25pbGZzMi9wYWdlLmMgYi9mcy9uaWxmczIvcGFnZS5jCj4gaW5kZXggMWMwNzVi
ZDkwNmM5Li42OTYyMTVkODk5YmYgMTAwNjQ0Cj4gLS0tIGEvZnMvbmlsZnMyL3BhZ2UuYwo+ICsr
KyBiL2ZzL25pbGZzMi9wYWdlLmMKPiBAQCAtMTg0LDMwICsxODQsMzIgQEAgdm9pZCBuaWxmc19w
YWdlX2J1ZyhzdHJ1Y3QgcGFnZSAqcGFnZSkKPiAgfQo+Cj4gIC8qKgo+IC0gKiBuaWxmc19jb3B5
X3BhZ2UgLS0gY29weSB0aGUgcGFnZSB3aXRoIGJ1ZmZlcnMKPiAtICogQGRzdDogZGVzdGluYXRp
b24gcGFnZQo+IC0gKiBAc3JjOiBzb3VyY2UgcGFnZQo+IC0gKiBAY29weV9kaXJ0eTogZmxhZyB3
aGV0aGVyIHRvIGNvcHkgZGlydHkgc3RhdGVzIG9uIHRoZSBwYWdlJ3MgYnVmZmVyIGhlYWRzLgo+
ICsgKiBuaWxmc19jb3B5X2ZvbGlvIC0tIGNvcHkgdGhlIGZvbGlvIHdpdGggYnVmZmVycwo+ICsg
KiBAZHN0OiBkZXN0aW5hdGlvbiBmb2xpbwo+ICsgKiBAc3JjOiBzb3VyY2UgZm9saW8KPiArICog
QGNvcHlfZGlydHk6IGZsYWcgd2hldGhlciB0byBjb3B5IGRpcnR5IHN0YXRlcyBvbiB0aGUgZm9s
aW8ncyBidWZmZXIgaGVhZHMuCj4gICAqCj4gLSAqIFRoaXMgZnVuY3Rpb24gaXMgZm9yIGJvdGgg
ZGF0YSBwYWdlcyBhbmQgYnRub2RlIHBhZ2VzLiAgVGhlIGRpcnR5IGZsYWcKPiAtICogc2hvdWxk
IGJlIHRyZWF0ZWQgYnkgY2FsbGVyLiAgVGhlIHBhZ2UgbXVzdCBub3QgYmUgdW5kZXIgaS9vLgo+
IC0gKiBCb3RoIHNyYyBhbmQgZHN0IHBhZ2UgbXVzdCBiZSBsb2NrZWQKPiArICogVGhpcyBmdW5j
dGlvbiBpcyBmb3IgYm90aCBkYXRhIGZvbGlvcyBhbmQgYnRub2RlIGZvbGlvcy4gIFRoZSBkaXJ0
eSBmbGFnCj4gKyAqIHNob3VsZCBiZSB0cmVhdGVkIGJ5IGNhbGxlci4gIFRoZSBmb2xpbyBtdXN0
IG5vdCBiZSB1bmRlciBpL28uCj4gKyAqIEJvdGggc3JjIGFuZCBkc3QgZm9saW8gbXVzdCBiZSBs
b2NrZWQKPiAgICovCj4gLXN0YXRpYyB2b2lkIG5pbGZzX2NvcHlfcGFnZShzdHJ1Y3QgcGFnZSAq
ZHN0LCBzdHJ1Y3QgcGFnZSAqc3JjLCBpbnQgY29weV9kaXJ0eSkKPiArc3RhdGljIHZvaWQgbmls
ZnNfY29weV9mb2xpbyhzdHJ1Y3QgZm9saW8gKmRzdCwgc3RydWN0IGZvbGlvICpzcmMsCj4gKyAg
ICAgICAgICAgICAgIGJvb2wgY29weV9kaXJ0eSkKPiAgewo+ICAgICAgICAgc3RydWN0IGJ1ZmZl
cl9oZWFkICpkYmgsICpkYnVmcywgKnNiaDsKPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgbWFzayA9
IE5JTEZTX0JVRkZFUl9JTkhFUkVOVF9CSVRTOwo+Cj4gLSAgICAgICBCVUdfT04oUGFnZVdyaXRl
YmFjayhkc3QpKTsKPiArICAgICAgIEJVR19PTihmb2xpb190ZXN0X3dyaXRlYmFjayhkc3QpKTsK
Pgo+IC0gICAgICAgc2JoID0gcGFnZV9idWZmZXJzKHNyYyk7Cj4gLSAgICAgICBpZiAoIXBhZ2Vf
aGFzX2J1ZmZlcnMoZHN0KSkKPiAtICAgICAgICAgICAgICAgY3JlYXRlX2VtcHR5X2J1ZmZlcnMo
ZHN0LCBzYmgtPmJfc2l6ZSwgMCk7Cj4gKyAgICAgICBzYmggPSBmb2xpb19idWZmZXJzKHNyYyk7
Cj4gKyAgICAgICBkYmggPSBmb2xpb19idWZmZXJzKGRzdCk7Cj4gKyAgICAgICBpZiAoIWRiaCkK
PiArICAgICAgICAgICAgICAgZGJoID0gZm9saW9fY3JlYXRlX2VtcHR5X2J1ZmZlcnMoZHN0LCBz
YmgtPmJfc2l6ZSwgMCk7Cj4KPiAgICAgICAgIGlmIChjb3B5X2RpcnR5KQo+ICAgICAgICAgICAg
ICAgICBtYXNrIHw9IEJJVChCSF9EaXJ0eSk7Cj4KPiAtICAgICAgIGRiaCA9IGRidWZzID0gcGFn
ZV9idWZmZXJzKGRzdCk7Cj4gKyAgICAgICBkYnVmcyA9IGRiaDsKPiAgICAgICAgIGRvIHsKPiAg
ICAgICAgICAgICAgICAgbG9ja19idWZmZXIoc2JoKTsKPiAgICAgICAgICAgICAgICAgbG9ja19i
dWZmZXIoZGJoKTsKPiBAQCAtMjE4LDE2ICsyMjAsMTYgQEAgc3RhdGljIHZvaWQgbmlsZnNfY29w
eV9wYWdlKHN0cnVjdCBwYWdlICpkc3QsIHN0cnVjdCBwYWdlICpzcmMsIGludCBjb3B5X2RpcnR5
KQo+ICAgICAgICAgICAgICAgICBkYmggPSBkYmgtPmJfdGhpc19wYWdlOwo+ICAgICAgICAgfSB3
aGlsZSAoZGJoICE9IGRidWZzKTsKPgo+IC0gICAgICAgY29weV9oaWdocGFnZShkc3QsIHNyYyk7
Cj4gKyAgICAgICBmb2xpb19jb3B5KGRzdCwgc3JjKTsKPgo+IC0gICAgICAgaWYgKFBhZ2VVcHRv
ZGF0ZShzcmMpICYmICFQYWdlVXB0b2RhdGUoZHN0KSkKPiAtICAgICAgICAgICAgICAgU2V0UGFn
ZVVwdG9kYXRlKGRzdCk7Cj4gLSAgICAgICBlbHNlIGlmICghUGFnZVVwdG9kYXRlKHNyYykgJiYg
UGFnZVVwdG9kYXRlKGRzdCkpCj4gLSAgICAgICAgICAgICAgIENsZWFyUGFnZVVwdG9kYXRlKGRz
dCk7Cj4gLSAgICAgICBpZiAoUGFnZU1hcHBlZFRvRGlzayhzcmMpICYmICFQYWdlTWFwcGVkVG9E
aXNrKGRzdCkpCj4gLSAgICAgICAgICAgICAgIFNldFBhZ2VNYXBwZWRUb0Rpc2soZHN0KTsKPiAt
ICAgICAgIGVsc2UgaWYgKCFQYWdlTWFwcGVkVG9EaXNrKHNyYykgJiYgUGFnZU1hcHBlZFRvRGlz
ayhkc3QpKQo+IC0gICAgICAgICAgICAgICBDbGVhclBhZ2VNYXBwZWRUb0Rpc2soZHN0KTsKPiAr
ICAgICAgIGlmIChmb2xpb190ZXN0X3VwdG9kYXRlKHNyYykgJiYgIWZvbGlvX3Rlc3RfdXB0b2Rh
dGUoZHN0KSkKPiArICAgICAgICAgICAgICAgZm9saW9fbWFya191cHRvZGF0ZShkc3QpOwo+ICsg
ICAgICAgZWxzZSBpZiAoIWZvbGlvX3Rlc3RfdXB0b2RhdGUoc3JjKSAmJiBmb2xpb190ZXN0X3Vw
dG9kYXRlKGRzdCkpCj4gKyAgICAgICAgICAgICAgIGZvbGlvX2NsZWFyX3VwdG9kYXRlKGRzdCk7
Cj4gKyAgICAgICBpZiAoZm9saW9fdGVzdF9tYXBwZWR0b2Rpc2soc3JjKSAmJiAhZm9saW9fdGVz
dF9tYXBwZWR0b2Rpc2soZHN0KSkKPiArICAgICAgICAgICAgICAgZm9saW9fc2V0X21hcHBlZHRv
ZGlzayhkc3QpOwo+ICsgICAgICAgZWxzZSBpZiAoIWZvbGlvX3Rlc3RfbWFwcGVkdG9kaXNrKHNy
YykgJiYgZm9saW9fdGVzdF9tYXBwZWR0b2Rpc2soZHN0KSkKPiArICAgICAgICAgICAgICAgZm9s
aW9fY2xlYXJfbWFwcGVkdG9kaXNrKGRzdCk7Cj4KPiAgICAgICAgIGRvIHsKPiAgICAgICAgICAg
ICAgICAgdW5sb2NrX2J1ZmZlcihzYmgpOwo+IEBAIC0yNjksNyArMjcxLDcgQEAgaW50IG5pbGZz
X2NvcHlfZGlydHlfcGFnZXMoc3RydWN0IGFkZHJlc3Nfc3BhY2UgKmRtYXAsCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgTklMRlNfUEFHRV9CVUcoJmZvbGlvLT5wYWdlLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJmb3VuZCBlbXB0eSBwYWdlIGluIGRhdCBwYWdl
IGNhY2hlIik7Cj4KPiAtICAgICAgICAgICAgICAgbmlsZnNfY29weV9wYWdlKCZkZm9saW8tPnBh
Z2UsICZmb2xpby0+cGFnZSwgMSk7Cj4gKyAgICAgICAgICAgICAgIG5pbGZzX2NvcHlfZm9saW8o
ZGZvbGlvLCBmb2xpbywgdHJ1ZSk7Cj4gICAgICAgICAgICAgICAgIGZpbGVtYXBfZGlydHlfZm9s
aW8oZm9saW9fbWFwcGluZyhkZm9saW8pLCBkZm9saW8pOwo+Cj4gICAgICAgICAgICAgICAgIGZv
bGlvX3VubG9jayhkZm9saW8pOwo+IEBAIC0zMTQsNyArMzE2LDcgQEAgdm9pZCBuaWxmc19jb3B5
X2JhY2tfcGFnZXMoc3RydWN0IGFkZHJlc3Nfc3BhY2UgKmRtYXAsCj4gICAgICAgICAgICAgICAg
IGlmICghSVNfRVJSKGRmb2xpbykpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBvdmVy
d3JpdGUgZXhpc3RpbmcgZm9saW8gaW4gdGhlIGRlc3RpbmF0aW9uIGNhY2hlICovCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgV0FSTl9PTihmb2xpb190ZXN0X2RpcnR5KGRmb2xpbykpOwo+IC0g
ICAgICAgICAgICAgICAgICAgICAgIG5pbGZzX2NvcHlfcGFnZSgmZGZvbGlvLT5wYWdlLCAmZm9s
aW8tPnBhZ2UsIDApOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG5pbGZzX2NvcHlfZm9saW8o
ZGZvbGlvLCBmb2xpbywgZmFsc2UpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGZvbGlvX3Vu
bG9jayhkZm9saW8pOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGZvbGlvX3B1dChkZm9saW8p
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIC8qIERvIHdlIG5vdCBuZWVkIHRvIHJlbW92ZSBm
b2xpbyBmcm9tIHNtYXAgaGVyZT8gKi8KPiAtLQo+IDIuNDAuMQo+CgpBY2tlZC1ieTogUnl1c3Vr
ZSBLb25pc2hpIDxrb25pc2hpLnJ5dXN1a2VAZ21haWwuY29tPgoKRXZlcnl0aGluZyBlbHNlIGxv
b2tzIGZpbmUgaWYgdGhlIGZvbGlvX2NvcHkgc3ltYm9sIGlzIGV4cG9ydGVkLgoKVGhhbmtzLApS
eXVzdWtlIEtvbmlzaGkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QKTGludXgtbnRmcy1kZXZAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2xpbnV4LW50ZnMtZGV2Cg==
