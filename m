Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 893E97A6F4C
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 01:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qijvm-00063O-Md;
	Tue, 19 Sep 2023 23:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <agruenba@redhat.com>) id 1qijGm-00022c-AP
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0x5XQwTZHDcZyZxqW3gmQpgHS2gIGGzK97rIzkAXl3Q=; b=ihzcJWo+8l928iKwdfNOKaw7HD
 WgSQiteR9jriUeZjDk8RB9mj0cVM/SfkrUi9xVkpSbX1K5q+D+TFJ+e7O7LhJK3K+7JoapaqoASQs
 RuFtqjK3On1vhCl110ODA3ytoZ3hdvoU28yuP4VKrK3qCMuP8V9ilUjRkT7aS41+Y7do=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0x5XQwTZHDcZyZxqW3gmQpgHS2gIGGzK97rIzkAXl3Q=; b=iaGJ/hGp7izRfA7txqwm12rPPj
 HRBjHZefs1AOR/76p9at7h4/lnUH8kHDnbgGKW8hng2RP6iiLbNqJOItJyHSbRNJXeXKS4KC1XnJo
 HeWB2KTmFIwsuSlJs0x2tTFnGWfGwNKdhz4fhAx78Q7xn/z2IyhZQ9gYNdSizPfa17UQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qijGm-0004jm-1K for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695162746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0x5XQwTZHDcZyZxqW3gmQpgHS2gIGGzK97rIzkAXl3Q=;
 b=E4tmiOI4KUH/lhJZ7iHMmGveMH2tzhX4ll1igskT1ddWIGE7j73MhmQ0O0RrbUJjOukME7
 GNeJeRlKoXqwsFibGn40w1JctfO9UKo4urT+PbnwBYL45rdv2Azf1IhLpNOgIgUfXfJCS6
 A1OkerDDI6iRtG1bzhZrFLScjCd+deg=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-330-tIseh5C0OEy4Lw77D3o4dg-1; Tue, 19 Sep 2023 18:32:25 -0400
X-MC-Unique: tIseh5C0OEy4Lw77D3o4dg-1
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-1c0e161e18fso1963105ad.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 15:32:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695162744; x=1695767544;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0x5XQwTZHDcZyZxqW3gmQpgHS2gIGGzK97rIzkAXl3Q=;
 b=JOkp2jwLCdHXv9uIvqB9NHtBP5c4KVsM7RrqpS0AJFubMwe2or22MvAC/1GQKJw+Rr
 EsJfwy5uo6F9aJX4SB+X7xNuI7a7wxVXt36VZyPeHNpx1Y5YT2QmFIyfifeYMbGIQb5y
 UDEJ3YrJcmSZ+adsYHJB/IozoSf9qtusYwXeiZlyrOAV2DusaJH1jt2GVT5bezlpJx5B
 iOOqP9kePTUPYPWvXJxFnD3Gt74a2BJxr5SPIrYNmLMAsPmq3k8ojBaKVSvYIvxARE0W
 DlijheIZe0xe0WpbW/Xns9pLlGZZmnPkwX3Vl2gg6iZ5SN1mOfj/pJaI7rdqWfqnmnJz
 OVRQ==
X-Gm-Message-State: AOJu0YxrbAw38aFM2ofYzmLDTLfLIRLmL+U29fVKjAiK+1y1ZtlK4E/k
 KmyJf/9CzPCon0GyHjcK9JZMn1mmBlJ8+8P+9n5u6f+nY0qNGai3aiJ7ga5iaSYjL8W5a5+k4SC
 ZrU+erX1nak7HtUVGWgc5tMIz7BL3SjR6RigIiQanYf5EjKQQ4Yg=
X-Received: by 2002:a17:902:d506:b0:1c1:d5d1:a364 with SMTP id
 b6-20020a170902d50600b001c1d5d1a364mr1049148plg.33.1695162744531; 
 Tue, 19 Sep 2023 15:32:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFOULM5jJKa8+WVmIJMbHRINBpo1VdX9mETx9Rab+seQWE9KrxE0Bg8iBH2mY8M4Iw6bvu9y/B6LXEosx06DA=
X-Received: by 2002:a17:902:d506:b0:1c1:d5d1:a364 with SMTP id
 b6-20020a170902d50600b001c1d5d1a364mr1049128plg.33.1695162744239; Tue, 19 Sep
 2023 15:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-9-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-9-willy@infradead.org>
From: Andreas Gruenbacher <agruenba@redhat.com>
Date: Wed, 20 Sep 2023 00:32:12 +0200
Message-ID: <CAHc6FU5XnHsqXunoT5oVdupFE_NVuW_uyitZPLqgEzfUkr=V0g@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 7:00 AM Matthew Wilcox (Oracle)
   <willy@infradead.org> wrote: > Remove several folio->page->folio conversions.
    > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org> [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qijGm-0004jm-1K
X-Mailman-Approved-At: Tue, 19 Sep 2023 23:14:56 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 08/26] gfs2: Convert
 gfs2_write_buf_to_page() to use a folio
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgNzowMOKAr0FNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
Cjx3aWxseUBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiBSZW1vdmUgc2V2ZXJhbCBmb2xpby0+cGFn
ZS0+Zm9saW8gY29udmVyc2lvbnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IFdpbGNveCAo
T3JhY2xlKSA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KPiAtLS0KPiAgZnMvZ2ZzMi9xdW90YS5jIHwg
MzcgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMv
Z2ZzMi9xdW90YS5jIGIvZnMvZ2ZzMi9xdW90YS5jCj4gaW5kZXggMTcxYjI3MTNkMmU1Li4wZWU0
ODY1ZWJkY2EgMTAwNjQ0Cj4gLS0tIGEvZnMvZ2ZzMi9xdW90YS5jCj4gKysrIGIvZnMvZ2ZzMi9x
dW90YS5jCj4gQEAgLTczNiw3ICs3MzYsNyBAQCBzdGF0aWMgaW50IGdmczJfd3JpdGVfYnVmX3Rv
X3BhZ2Uoc3RydWN0IGdmczJfc2JkICpzZHAsIHVuc2lnbmVkIGxvbmcgaW5kZXgsCj4gICAgICAg
ICBzdHJ1Y3QgZ2ZzMl9pbm9kZSAqaXAgPSBHRlMyX0koc2RwLT5zZF9xdW90YV9pbm9kZSk7Cj4g
ICAgICAgICBzdHJ1Y3QgaW5vZGUgKmlub2RlID0gJmlwLT5pX2lub2RlOwo+ICAgICAgICAgc3Ry
dWN0IGFkZHJlc3Nfc3BhY2UgKm1hcHBpbmcgPSBpbm9kZS0+aV9tYXBwaW5nOwo+IC0gICAgICAg
c3RydWN0IHBhZ2UgKnBhZ2U7Cj4gKyAgICAgICBzdHJ1Y3QgZm9saW8gKmZvbGlvOwo+ICAgICAg
ICAgc3RydWN0IGJ1ZmZlcl9oZWFkICpiaDsKPiAgICAgICAgIHU2NCBibGs7Cj4gICAgICAgICB1
bnNpZ25lZCBic2l6ZSA9IHNkcC0+c2Rfc2Iuc2JfYnNpemUsIGJudW0gPSAwLCBib2ZmID0gMDsK
PiBAQCAtNzQ1LDE1ICs3NDUsMTUgQEAgc3RhdGljIGludCBnZnMyX3dyaXRlX2J1Zl90b19wYWdl
KHN0cnVjdCBnZnMyX3NiZCAqc2RwLCB1bnNpZ25lZCBsb25nIGluZGV4LAo+ICAgICAgICAgYmxr
ID0gaW5kZXggPDwgKFBBR0VfU0hJRlQgLSBzZHAtPnNkX3NiLnNiX2JzaXplX3NoaWZ0KTsKPiAg
ICAgICAgIGJvZmYgPSBvZmYgJSBic2l6ZTsKPgo+IC0gICAgICAgcGFnZSA9IGdyYWJfY2FjaGVf
cGFnZShtYXBwaW5nLCBpbmRleCk7Cj4gLSAgICAgICBpZiAoIXBhZ2UpCj4gLSAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PTUVNOwo+IC0gICAgICAgaWYgKCFwYWdlX2hhc19idWZmZXJzKHBhZ2Up
KQo+IC0gICAgICAgICAgICAgICBjcmVhdGVfZW1wdHlfYnVmZmVycyhwYWdlLCBic2l6ZSwgMCk7
Cj4gKyAgICAgICBmb2xpbyA9IGZpbGVtYXBfZ3JhYl9mb2xpbyhtYXBwaW5nLCBpbmRleCk7Cj4g
KyAgICAgICBpZiAoSVNfRVJSKGZvbGlvKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9F
UlIoZm9saW8pOwo+ICsgICAgICAgYmggPSBmb2xpb19idWZmZXJzKGZvbGlvKTsKPiArICAgICAg
IGlmICghYmgpCj4gKyAgICAgICAgICAgICAgIGJoID0gZm9saW9fY3JlYXRlX2VtcHR5X2J1ZmZl
cnMoZm9saW8sIGJzaXplLCAwKTsKPgo+IC0gICAgICAgYmggPSBwYWdlX2J1ZmZlcnMocGFnZSk7
Cj4gLSAgICAgICBmb3IoOzspIHsKPiAtICAgICAgICAgICAgICAgLyogRmluZCB0aGUgYmVnaW5u
aW5nIGJsb2NrIHdpdGhpbiB0aGUgcGFnZSAqLwo+ICsgICAgICAgZm9yICg7Oykgewo+ICsgICAg
ICAgICAgICAgICAvKiBGaW5kIHRoZSBiZWdpbm5pbmcgYmxvY2sgd2l0aGluIHRoZSBmb2xpbyAq
Lwo+ICAgICAgICAgICAgICAgICBpZiAocGdfb2ZmID49ICgoYm51bSAqIGJzaXplKSArIGJzaXpl
KSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJoID0gYmgtPmJfdGhpc19wYWdlOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGJudW0rKzsKPiBAQCAtNzY2LDkgKzc2NiwxMCBAQCBzdGF0
aWMgaW50IGdmczJfd3JpdGVfYnVmX3RvX3BhZ2Uoc3RydWN0IGdmczJfc2JkICpzZHAsIHVuc2ln
bmVkIGxvbmcgaW5kZXgsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIHVu
bG9ja19vdXQ7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgLyogSWYgaXQncyBhIG5ld2x5IGFs
bG9jYXRlZCBkaXNrIGJsb2NrLCB6ZXJvIGl0ICovCj4gICAgICAgICAgICAgICAgICAgICAgICAg
aWYgKGJ1ZmZlcl9uZXcoYmgpKQo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgemVy
b191c2VyKHBhZ2UsIGJudW0gKiBic2l6ZSwgYmgtPmJfc2l6ZSk7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBmb2xpb196ZXJvX3JhbmdlKGZvbGlvLCBibnVtICogYnNpemUsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmgtPmJfc2l6
ZSk7Cj4gICAgICAgICAgICAgICAgIH0KPiAtICAgICAgICAgICAgICAgaWYgKFBhZ2VVcHRvZGF0
ZShwYWdlKSkKPiArICAgICAgICAgICAgICAgaWYgKGZvbGlvX3Rlc3RfdXB0b2RhdGUoZm9saW8p
KQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHNldF9idWZmZXJfdXB0b2RhdGUoYmgpOwo+ICAg
ICAgICAgICAgICAgICBpZiAoYmhfcmVhZChiaCwgUkVRX01FVEEgfCBSRVFfUFJJTykgPCAwKQo+
ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gdW5sb2NrX291dDsKPiBAQCAtNzg0LDE3ICs3
ODUsMTcgQEAgc3RhdGljIGludCBnZnMyX3dyaXRlX2J1Zl90b19wYWdlKHN0cnVjdCBnZnMyX3Ni
ZCAqc2RwLCB1bnNpZ25lZCBsb25nIGluZGV4LAo+ICAgICAgICAgICAgICAgICBicmVhazsKPiAg
ICAgICAgIH0KPgo+IC0gICAgICAgLyogV3JpdGUgdG8gdGhlIHBhZ2UsIG5vdyB0aGF0IHdlIGhh
dmUgc2V0dXAgdGhlIGJ1ZmZlcihzKSAqLwo+IC0gICAgICAgbWVtY3B5X3RvX3BhZ2UocGFnZSwg
b2ZmLCBidWYsIGJ5dGVzKTsKPiAtICAgICAgIGZsdXNoX2RjYWNoZV9wYWdlKHBhZ2UpOwo+IC0g
ICAgICAgdW5sb2NrX3BhZ2UocGFnZSk7Cj4gLSAgICAgICBwdXRfcGFnZShwYWdlKTsKPiArICAg
ICAgIC8qIFdyaXRlIHRvIHRoZSBmb2xpbywgbm93IHRoYXQgd2UgaGF2ZSBzZXR1cCB0aGUgYnVm
ZmVyKHMpICovCj4gKyAgICAgICBtZW1jcHlfdG9fZm9saW8oZm9saW8sIG9mZiwgYnVmLCBieXRl
cyk7Cj4gKyAgICAgICBmbHVzaF9kY2FjaGVfZm9saW8oZm9saW8pOwo+ICsgICAgICAgZm9saW9f
dW5sb2NrKGZvbGlvKTsKPiArICAgICAgIGZvbGlvX3B1dChmb2xpbyk7Cj4KPiAgICAgICAgIHJl
dHVybiAwOwo+Cj4gIHVubG9ja19vdXQ6Cj4gLSAgICAgICB1bmxvY2tfcGFnZShwYWdlKTsKPiAt
ICAgICAgIHB1dF9wYWdlKHBhZ2UpOwo+ICsgICAgICAgZm9saW9fdW5sb2NrKGZvbGlvKTsKPiAr
ICAgICAgIGZvbGlvX3B1dChmb2xpbyk7Cj4gICAgICAgICByZXR1cm4gLUVJTzsKPiAgfQo+Cj4g
LS0KPiAyLjQwLjEKPgoKUmV2aWV3ZWQtYnk6IEFuZHJlYXMgR3J1ZW5iYWNoZXIgPGFncnVlbmJh
QHJlZGhhdC5jb20+CgpUaGFua3MsCkFuZHJlYXMKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4
LW50ZnMtZGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
