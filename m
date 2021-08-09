Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B06B3E5DEF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmR-0007e4-8n; Tue, 10 Aug 2021 14:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <slava@dubeyko.com>) id 1mDAHH-0001Oe-Vd
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 18:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=; b=LBMq9qUA5kBuChVtSlSMxYySBh
 Q2fEQ1Iuqip71yqYyrnyhwN/dQpVCVzhMYbve/nb/SG+DDsdT9+EtKiQSCanEdtaIEI1Twc6LaMzn
 5flT6gOn8n/lePUUd7ZK1ZA01cKce//JofnlS7ofpHPqRETKn9codWLy9t3s1ChDM41c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=; b=e5dL76muE2By4Twm8CnuvQZAhr
 8Nh6RnXd+ags6KOQWdLFE2RqV8JcnZvNMU5fIQF8qWX/9R8AhkKh7GpCM9n0jxxW54P5dmuMRnT6A
 FZ0zJSrw7A2lJ89T2Ra8fUvtvJHuh7nyqE7ORqQxgsO648J2OZUnROgRycRtUxqVEydw=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDAHD-00044L-FG
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 18:45:35 +0000
Received: by mail-pj1-f46.google.com with SMTP id nt11so6234236pjb.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 11:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=;
 b=k7xueK+4mzlwQUXdMpnpVWcp6qTmXBLHD5nXWjbJU/SR8aiAO7DEpGfbhjy+eH4Ptp
 WiCxbmhhS5Is71rOqmUmFzG/a4XoPsYskvlWEbqBBUAnrQSi8bVfZGtNCqHAEJn86L5s
 oHc83AkppqSnusxvPCkGq8eHlZA9QaCChWzFUh1s3dTWITsMWM1NrF9n8En51n0mdIJX
 U/oWCzdQnwSpHjb/G5iTbAhtUIzFy0nwxPuDH0v8Kbxq5XJQaCp5NKMDJ6WcI/qlixSO
 +e5VTir7JDVGm7xN8H///ivAJvQOLY5HXnctPnchpN+NiCnxnKF1GBS9YLFnyJnGyWAb
 e8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=;
 b=sC4IEYkA30Enl8+3CLXJRStdy3LbGYSBUPdevanhOwyf+eS/2dGYlFlzUUPuK4Vh0V
 g6u3NxiFEm6LuqBUzcgf6XPRFl1l6hvBlzsy/v6yd20Lkc3dknzMUS/ndRW2La0W+UEc
 V8QYiDcBqE2qQWJJcmbHM0PeEeTm7jKidvogndBkCn9Tst+31CbGrz4TW9kys/wgP88b
 Ogb/TkURywtLjkoOR1BM+7SLUCJQpRj5TzG2W4vE43feWZRz5q0YErWZfdDIxihArmaa
 NQCpmiv0TyQDU1cFbmU7G2VLidv3eDVHxpYN2B4Mbs6cWEj6D+8ZTEIyQ+7hzdanf1Bv
 cmFw==
X-Gm-Message-State: AOAM532c38NWDx6X2hYszOUgItn7GrL9eb4BVYjdo573oL76B9E0V5nI
 5DlZTrj5jnbeNhGTAAbQkIIsq2ucvfaBCE8Uffw=
X-Google-Smtp-Source: ABdhPJwBTUiS+76CDkMxJrLBv/Y+VhQj6kwC4MHhZsyJSCETZaOiVdDvWRCCGaqaWO6lSrHh5M+P0w==
X-Received: by 2002:a05:6214:18c7:: with SMTP id
 cy7mr24583469qvb.59.1628531509748; 
 Mon, 09 Aug 2021 10:51:49 -0700 (PDT)
Received: from smtpclient.apple ([2600:1700:42f0:6600:615b:6e84:29a:3bc6])
 by smtp.gmail.com with ESMTPSA id c27sm8499011qkp.5.2021.08.09.10.51.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Aug 2021 10:51:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Viacheslav Dubeyko <slava@dubeyko.com>
In-Reply-To: <20210808162453.1653-3-pali@kernel.org>
Date: Mon, 9 Aug 2021 10:51:44 -0700
Message-Id: <DA573A41-865C-4171-8837-FD5A2C33F42B@dubeyko.com>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-3-pali@kernel.org>
To: =?utf-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mDAHD-00044L-FG
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [RFC PATCH 02/20] hfsplus: Add iocharset=
 mount option as alias for nls=
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 =?utf-8?Q?Marek_Beh=C3=BAn?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Cgo+IE9uIEF1ZyA4LCAyMDIxLCBhdCA5OjI0IEFNLCBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBPdGhlciBmcyBkcml2ZXJzIGFyZSB1c2luZyBpb2NoYXJzZXQ9IG1v
dW50IG9wdGlvbiBmb3Igc3BlY2lmeWluZyBjaGFyc2V0Lgo+IFNvIGFkZCBpdCBhbHNvIGZvciBo
ZnNwbHVzIGFuZCBtYXJrIG9sZCBubHM9IG1vdW50IG9wdGlvbiBhcyBkZXByZWNhdGVkLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gZnMv
aGZzcGx1cy9vcHRpb25zLmMgfCA3ICsrKysrKy0KPiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMvb3B0aW9u
cy5jIGIvZnMvaGZzcGx1cy9vcHRpb25zLmMKPiBpbmRleCAwNDdlMDVjNTc1NjAuLmE5NzU1NDhm
NmI5MSAxMDA2NDQKPiAtLS0gYS9mcy9oZnNwbHVzL29wdGlvbnMuYwo+ICsrKyBiL2ZzL2hmc3Bs
dXMvb3B0aW9ucy5jCj4gQEAgLTIzLDYgKzIzLDcgQEAgZW51bSB7Cj4gCW9wdF9jcmVhdG9yLCBv
cHRfdHlwZSwKPiAJb3B0X3VtYXNrLCBvcHRfdWlkLCBvcHRfZ2lkLAo+IAlvcHRfcGFydCwgb3B0
X3Nlc3Npb24sIG9wdF9ubHMsCj4gKwlvcHRfaW9jaGFyc2V0LAo+IAlvcHRfbm9kZWNvbXBvc2Us
IG9wdF9kZWNvbXBvc2UsCj4gCW9wdF9iYXJyaWVyLCBvcHRfbm9iYXJyaWVyLAo+IAlvcHRfZm9y
Y2UsIG9wdF9lcnIKPiBAQCAtMzcsNiArMzgsNyBAQCBzdGF0aWMgY29uc3QgbWF0Y2hfdGFibGVf
dCB0b2tlbnMgPSB7Cj4gCXsgb3B0X3BhcnQsICJwYXJ0PSV1IiB9LAo+IAl7IG9wdF9zZXNzaW9u
LCAic2Vzc2lvbj0ldSIgfSwKPiAJeyBvcHRfbmxzLCAibmxzPSVzIiB9LAo+ICsJeyBvcHRfaW9j
aGFyc2V0LCAiaW9jaGFyc2V0PSVzIiB9LAo+IAl7IG9wdF9kZWNvbXBvc2UsICJkZWNvbXBvc2Ui
IH0sCj4gCXsgb3B0X25vZGVjb21wb3NlLCAibm9kZWNvbXBvc2UiIH0sCj4gCXsgb3B0X2JhcnJp
ZXIsICJiYXJyaWVyIiB9LAo+IEBAIC0xNjYsNiArMTY4LDkgQEAgaW50IGhmc3BsdXNfcGFyc2Vf
b3B0aW9ucyhjaGFyICppbnB1dCwgc3RydWN0IGhmc3BsdXNfc2JfaW5mbyAqc2JpKQo+IAkJCX0K
PiAJCQlicmVhazsKPiAJCWNhc2Ugb3B0X25sczoKPiArCQkJcHJfd2Fybigib3B0aW9uIG5scz0g
aXMgZGVwcmVjYXRlZCwgdXNlIGlvY2hhcnNldD1cbiIpOwo+ICsJCQkvKiBmYWxsdGhyb3VnaCAq
Lwo+ICsJCWNhc2Ugb3B0X2lvY2hhcnNldDoKPiAJCQlpZiAoc2JpLT5ubHMpIHsKPiAJCQkJcHJf
ZXJyKCJ1bmFibGUgdG8gY2hhbmdlIG5scyBtYXBwaW5nXG4iKTsKPiAJCQkJcmV0dXJuIDA7Cj4g
QEAgLTIzMCw3ICsyMzUsNyBAQCBpbnQgaGZzcGx1c19zaG93X29wdGlvbnMoc3RydWN0IHNlcV9m
aWxlICpzZXEsIHN0cnVjdCBkZW50cnkgKnJvb3QpCj4gCWlmIChzYmktPnNlc3Npb24gPj0gMCkK
PiAJCXNlcV9wcmludGYoc2VxLCAiLHNlc3Npb249JXUiLCBzYmktPnNlc3Npb24pOwo+IAlpZiAo
c2JpLT5ubHMpCj4gLQkJc2VxX3ByaW50ZihzZXEsICIsbmxzPSVzIiwgc2JpLT5ubHMtPmNoYXJz
ZXQpOwo+ICsJCXNlcV9wcmludGYoc2VxLCAiLGlvY2hhcnNldD0lcyIsIHNiaS0+bmxzLT5jaGFy
c2V0KTsKPiAJaWYgKHRlc3RfYml0KEhGU1BMVVNfU0JfTk9ERUNPTVBPU0UsICZzYmktPmZsYWdz
KSkKPiAJCXNlcV9wdXRzKHNlcSwgIixub2RlY29tcG9zZSIpOwo+IAlpZiAodGVzdF9iaXQoSEZT
UExVU19TQl9OT0JBUlJJRVIsICZzYmktPmZsYWdzKSkKPiAtLSAKPiAyLjIwLjEKPiAKCkxvb2tz
IHJlYXNvbmFibGUuIEJ1dCBJIHdvdWxkIGxpa2UgdG8gYmUgc3VyZSB0aGF0IHRoZSBjb2RlIGhh
cyBiZWVuIHJlYXNvbmFibHkgdGVzdGVkLgoKVGhhbmtzLApTbGF2YS4KCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LU5URlMtRGV2IG1haWxp
bmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
