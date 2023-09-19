Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C03117A6F4F
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 01:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qijvm-00063X-VM;
	Tue, 19 Sep 2023 23:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <agruenba@redhat.com>) id 1qijJE-0001dW-7U
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQus7xN9bGIDtrSXQ5yUpeC9VO6X9bRJrGYUnimnUlQ=; b=gB42/7/xT+QWQQc8fNyHMyioad
 VhNA2RhMcghWXCxgjbQSO1wFqPpB+nzuI7c4YutoFVUZMpaPCorOKgaFnkGvDy/cz+iYT8NU2sVkE
 lJRfRTrPPHKV1ANtKlJkdAhroGVrI6k42DsA3vabSZuCMSK4f4MgTMkm7xrWvni8rkhs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eQus7xN9bGIDtrSXQ5yUpeC9VO6X9bRJrGYUnimnUlQ=; b=gG412nkuTmEfzFx0i0IRnlFJ5D
 NWI00XvJX8oqtbe/yoXSN07SGCf6oopVpO0/mh9SmWJNa9ALbOW0QMcpoh+PguuIHFrAHcA1Af7Xc
 st71+Smhxee4a/sBph177SVVp4TU/A/yC745srhX6iJQ0VVQQrHtJYil7l1bzP7vp0Mc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qijJ9-00051Q-TJ for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695162897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eQus7xN9bGIDtrSXQ5yUpeC9VO6X9bRJrGYUnimnUlQ=;
 b=hHAkbY76Gx8MgkMEKojxlyrnYJUSX8i5DSgXZ06B3xtXlmic7Ps23SDcks7Yke4gwz3S4s
 yu+YPr1CPceWGyVus38q6vaA5755D+xCZkRvAIkPRLM9hFdtnC5dA8DD07i9S1cxqw7qXh
 JRtH8M5DxfOU8LdC5Pl1qclcIY/GCgQ=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-5oYa-sGMPMiOdq7QO9LAhg-1; Tue, 19 Sep 2023 18:34:56 -0400
X-MC-Unique: 5oYa-sGMPMiOdq7QO9LAhg-1
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-1c563506047so26361265ad.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 15:34:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695162893; x=1695767693;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eQus7xN9bGIDtrSXQ5yUpeC9VO6X9bRJrGYUnimnUlQ=;
 b=G4JrYzBC43+qrTDkWAedkVvDEP+YdenCvotwP6tD9fW6VgQmGkP9m+jofgPJtuzotW
 RjDghPr/xQWGi3SnrpB/q7kssYhpWw8lF4upMElHmE58GAFNiBBgHmZ366w7zBUSvSIL
 /QmKXrC712JDTaGuq1j02u/Keun53nCAszhZ61atOq6fRD/1OsxeSY7B5dgVmD4LE4TP
 uOy97vzh3fRPeU2oUwVyHytbbece5jPDS+JPcsUjFsGMidi6Vidv5VOmMqqIwXCwAPqj
 mI/Xn7vjf060kBWW3+A7IboKlLP8bK5uP9W18+xBi9WC0k8Guta0Ni+SMx6RrV4GXHFY
 FcVg==
X-Gm-Message-State: AOJu0YxrYDII35HQjYm2NqiYmHyutki+YQE01DzWpF7uzpV4y5ilhgow
 UZheX+FYjEZTW/653+pv5CfQEznzutJlhWjUSe7+OGbXAwpfBgCBArn7ljzLLBDSEo+1wTRk4sz
 CthcpbGIdNiaU7wCgTIxmvWJMN6TeeQOZflvm5EAmGZEkcpBpZmijzbMD1p9PSw==
X-Received: by 2002:a17:902:b7c1:b0:1c5:76b6:d94f with SMTP id
 v1-20020a170902b7c100b001c576b6d94fmr670934plz.31.1695162893574; 
 Tue, 19 Sep 2023 15:34:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu/S/lyzCqiFdVXm1k+F3+3GUX39OQdWtJW6vZV10el6lsOztHA7G1b8fJFoeMaNNk2ei0WeIxrr96YpLaY20=
X-Received: by 2002:a17:902:b7c1:b0:1c5:76b6:d94f with SMTP id
 v1-20020a170902b7c100b001c576b6d94fmr670921plz.31.1695162893309; Tue, 19 Sep
 2023 15:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-7-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-7-willy@infradead.org>
From: Andreas Gruenbacher <agruenba@redhat.com>
Date: Wed, 20 Sep 2023 00:34:41 +0200
Message-ID: <CAHc6FU6JasO3-8VaOm3MieLEn599OTKPnZC5BwkNUMqNoJ+meA@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 7:00 AM Matthew Wilcox (Oracle)
   <willy@infradead.org> wrote: > Remove several folio->page->folio conversions.
    Also use __GFP_NOFAIL > instead of calling yield() and the new g [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qijJ9-00051Q-TJ
X-Mailman-Approved-At: Tue, 19 Sep 2023 23:14:56 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 06/26] gfs2: Convert gfs2_getbuf() to
 folios
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
ZS0+Zm9saW8gY29udmVyc2lvbnMuICBBbHNvIHVzZSBfX0dGUF9OT0ZBSUwKPiBpbnN0ZWFkIG9m
IGNhbGxpbmcgeWllbGQoKSBhbmQgdGhlIG5ldyBnZXRfbnRoX2JoKCkuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBNYXR0aGV3IFdpbGNveCAoT3JhY2xlKSA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KPiAtLS0K
PiAgZnMvZ2ZzMi9tZXRhX2lvLmMgfCAzOSArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzL2dmczIvbWV0YV9pby5jIGIvZnMvZ2ZzMi9tZXRhX2lv
LmMKPiBpbmRleCA5MjQzNjFmYTUxMGIuLmYxZmFjMWI0NTA1OSAxMDA2NDQKPiAtLS0gYS9mcy9n
ZnMyL21ldGFfaW8uYwo+ICsrKyBiL2ZzL2dmczIvbWV0YV9pby5jCj4gQEAgLTExNSw3ICsxMTUs
NyBAQCBzdHJ1Y3QgYnVmZmVyX2hlYWQgKmdmczJfZ2V0YnVmKHN0cnVjdCBnZnMyX2dsb2NrICpn
bCwgdTY0IGJsa25vLCBpbnQgY3JlYXRlKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgYWRkcmVzc19z
cGFjZSAqbWFwcGluZyA9IGdmczJfZ2xvY2syYXNwYWNlKGdsKTsKPiAgICAgICAgIHN0cnVjdCBn
ZnMyX3NiZCAqc2RwID0gZ2wtPmdsX25hbWUubG5fc2JkOwo+IC0gICAgICAgc3RydWN0IHBhZ2Ug
KnBhZ2U7Cj4gKyAgICAgICBzdHJ1Y3QgZm9saW8gKmZvbGlvOwo+ICAgICAgICAgc3RydWN0IGJ1
ZmZlcl9oZWFkICpiaDsKPiAgICAgICAgIHVuc2lnbmVkIGludCBzaGlmdDsKPiAgICAgICAgIHVu
c2lnbmVkIGxvbmcgaW5kZXg7Cj4gQEAgLTEyOSwzNiArMTI5LDMxIEBAIHN0cnVjdCBidWZmZXJf
aGVhZCAqZ2ZzMl9nZXRidWYoc3RydWN0IGdmczJfZ2xvY2sgKmdsLCB1NjQgYmxrbm8sIGludCBj
cmVhdGUpCj4gICAgICAgICBidWZudW0gPSBibGtubyAtIChpbmRleCA8PCBzaGlmdCk7ICAvKiBi
bG9jayBidWYgaW5kZXggd2l0aGluIHBhZ2UgKi8KPgo+ICAgICAgICAgaWYgKGNyZWF0ZSkgewo+
IC0gICAgICAgICAgICAgICBmb3IgKDs7KSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGFn
ZSA9IGdyYWJfY2FjaGVfcGFnZShtYXBwaW5nLCBpbmRleCk7Cj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKHBhZ2UpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsK
PiAtICAgICAgICAgICAgICAgICAgICAgICB5aWVsZCgpOwo+IC0gICAgICAgICAgICAgICB9Cj4g
LSAgICAgICAgICAgICAgIGlmICghcGFnZV9oYXNfYnVmZmVycyhwYWdlKSkKPiAtICAgICAgICAg
ICAgICAgICAgICAgICBjcmVhdGVfZW1wdHlfYnVmZmVycyhwYWdlLCBzZHAtPnNkX3NiLnNiX2Jz
aXplLCAwKTsKPiArICAgICAgICAgICAgICAgZm9saW8gPSBfX2ZpbGVtYXBfZ2V0X2ZvbGlvKG1h
cHBpbmcsIGluZGV4LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRkdQX0xPQ0sg
fCBGR1BfQUNDRVNTRUQgfCBGR1BfQ1JFQVQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBtYXBwaW5nX2dmcF9tYXNrKG1hcHBpbmcpIHwgX19HRlBfTk9GQUlMKTsKPiArICAgICAg
ICAgICAgICAgYmggPSBmb2xpb19idWZmZXJzKGZvbGlvKTsKPiArICAgICAgICAgICAgICAgaWYg
KCFiaCkKPiArICAgICAgICAgICAgICAgICAgICAgICBiaCA9IGZvbGlvX2NyZWF0ZV9lbXB0eV9i
dWZmZXJzKGZvbGlvLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2RwLT5zZF9z
Yi5zYl9ic2l6ZSwgMCk7Cj4gICAgICAgICB9IGVsc2Ugewo+IC0gICAgICAgICAgICAgICBwYWdl
ID0gZmluZF9nZXRfcGFnZV9mbGFncyhtYXBwaW5nLCBpbmRleCwKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBGR1BfTE9DS3xGR1BfQUNDRVNTRUQpOwo+
IC0gICAgICAgICAgICAgICBpZiAoIXBhZ2UpCj4gKyAgICAgICAgICAgICAgIGZvbGlvID0gX19m
aWxlbWFwX2dldF9mb2xpbyhtYXBwaW5nLCBpbmRleCwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEZHUF9MT0NLIHwgRkdQX0FDQ0VTU0VELCAwKTsKPiArICAgICAgICAgICAgICAg
aWYgKElTX0VSUihmb2xpbykpCj4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7
Cj4gLSAgICAgICAgICAgICAgIGlmICghcGFnZV9oYXNfYnVmZmVycyhwYWdlKSkgewo+IC0gICAg
ICAgICAgICAgICAgICAgICAgIGJoID0gTlVMTDsKPiAtICAgICAgICAgICAgICAgICAgICAgICBn
b3RvIG91dF91bmxvY2s7Cj4gLSAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgYmgg
PSBmb2xpb19idWZmZXJzKGZvbGlvKTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgLyogTG9jYXRl
IGhlYWRlciBmb3Igb3VyIGJ1ZmZlciB3aXRoaW4gb3VyIHBhZ2UgKi8KPiAtICAgICAgIGZvciAo
YmggPSBwYWdlX2J1ZmZlcnMocGFnZSk7IGJ1Zm51bS0tOyBiaCA9IGJoLT5iX3RoaXNfcGFnZSkK
PiAtICAgICAgICAgICAgICAgLyogRG8gbm90aGluZyAqLzsKPiAtICAgICAgIGdldF9iaChiaCk7
Cj4gKyAgICAgICBpZiAoIWJoKQo+ICsgICAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4K
PiArICAgICAgIGJoID0gZ2V0X250aF9iaChiaCwgYnVmbnVtKTsKPiAgICAgICAgIGlmICghYnVm
ZmVyX21hcHBlZChiaCkpCj4gICAgICAgICAgICAgICAgIG1hcF9iaChiaCwgc2RwLT5zZF92ZnMs
IGJsa25vKTsKPgo+ICBvdXRfdW5sb2NrOgo+IC0gICAgICAgdW5sb2NrX3BhZ2UocGFnZSk7Cj4g
LSAgICAgICBwdXRfcGFnZShwYWdlKTsKPiArICAgICAgIGZvbGlvX3VubG9jayhmb2xpbyk7Cj4g
KyAgICAgICBmb2xpb19wdXQoZm9saW8pOwo+Cj4gICAgICAgICByZXR1cm4gYmg7Cj4gIH0KPiAt
LQo+IDIuNDAuMQo+CgpSZXZpZXdlZC1ieTogQW5kcmVhcyBHcnVlbmJhY2hlciA8YWdydWVuYmFA
cmVkaGF0LmNvbT4KClRoYW5rcywKQW5kcmVhcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QKTGludXgt
bnRmcy1kZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
