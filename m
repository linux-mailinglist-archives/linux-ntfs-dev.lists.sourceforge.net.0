Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9250D3E5DF4
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmR-0007dW-0c; Tue, 10 Aug 2021 14:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <slava@dubeyko.com>) id 1mD9Zu-0005D0-Pg
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 18:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AAhrsJC66Dx61Rd+R0En9xSeyn+Y7a3fdKNMwl3SmV8=; b=SuhE8W4EbxwwBruESoQ7MUMLjy
 mQmeIJOhzxJLbKDJ4q5y3peyn4dAZFUzmvpuPL5epX2zOAL+B/Snjg0pFZG87MbhmAKAuX65+rZgr
 4HBobOdrJKjbVxdQytely0jsqAt3NdYwYlpjpmRAax8OFsakdiDKY863CVyiEv+KCDWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AAhrsJC66Dx61Rd+R0En9xSeyn+Y7a3fdKNMwl3SmV8=; b=dQhWRQH93QYKRUqWGx6qJsTymm
 Nudl1fa0Pz6wGsogcC7uKu5yg6hejZqDMrINOjsjuFOFYUkXqomUdPx/wG73+oPZk+L8yP9Gz3j9n
 dZhK4YrYfUcQavcgHsw4vEuuwvQ1Pjtt5A9oinQmUbFs7hFGIvHckhoR5KRiMjcodcJw=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mD9Zp-0008WV-Gd
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 18:00:46 +0000
Received: by mail-qt1-f179.google.com with SMTP id l3so4795695qtk.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 11:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AAhrsJC66Dx61Rd+R0En9xSeyn+Y7a3fdKNMwl3SmV8=;
 b=C0z7fOVtv7xwyNq2ULxDTWBgiDiksaU5+3HrkSSE0+YAMfOwDGb3z2QxgMzpBwRhPv
 IJIv8Jcn2zdkSUNM5svDTPmzFJom/BDy2o4AuFQLhDPHTF6I15WVw/dSxJoqsVOSZ1Cb
 W4oQq3okSZ+c6t9/tXu1mtxGEjfyOfLs5PO3JPTOAzr1aESarTGuxT4PlJIfCs78j5tf
 EJr6/POmRH4eknj1regIdXrAR5fCHCeWaaDHnTNfXNqLroOKMPWZWQrn4b1SAFksBLPj
 3ozwqoWMzQNUQaaWHVTFNsV2eGVzErWUtSvwp7srUzrIDAjM/UP1OEZMwfJ6NvEMbgyW
 6e0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=AAhrsJC66Dx61Rd+R0En9xSeyn+Y7a3fdKNMwl3SmV8=;
 b=I2z7E16xthH83lmpvLgloGIbE2uqNlbwzmaF2SYVHrkxegfC7C9VKeudPpbY1KHXOH
 cpqxxYExa/+kum59Ro3GpVLJeIdgsKg+IiZ2qoofoDpaLhzlBO00TAJnHP70fj9V0m27
 CcHJfoCjoCUXJYwhULZlhZyoCeb7/behkXORwfDQ9nETwTwH4TmiKiuoEcJk0e0+7vTh
 wngNK5hptO1rs+N5Jnfp88GUyTc/rBgiyQuj/2wrNf+pt7Qcc90yshiiI4The44VyVHT
 suMV1rRovzmKK+kfj6eVFmEB4gSFtKj2cHfm3bn2NxfUrfHwRhJN2GtlTnCMJO21eeTh
 ueQA==
X-Gm-Message-State: AOAM530O7x744q3IcErwT6Eb8MwePwT0b6lGMU4Wg6ICvmCQ2pswbrwH
 8lh5q6a9nAzBfzQBA6g0mkhM1g==
X-Google-Smtp-Source: ABdhPJzBGaMUF7I+EqzTqVqs/l3Cby4L23FljkyG1TqQehnViMfTh5LhLZoOh/mvaEH+yytNB+IJ1g==
X-Received: by 2002:a05:622a:243:: with SMTP id
 c3mr10162127qtx.61.1628532033991; 
 Mon, 09 Aug 2021 11:00:33 -0700 (PDT)
Received: from smtpclient.apple ([2600:1700:42f0:6600:615b:6e84:29a:3bc6])
 by smtp.gmail.com with ESMTPSA id m188sm9658536qkc.99.2021.08.09.11.00.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Aug 2021 11:00:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Viacheslav Dubeyko <slava@dubeyko.com>
In-Reply-To: <YRFnz6kn1UbSCN/S@casper.infradead.org>
Date: Mon, 9 Aug 2021 11:00:29 -0700
Message-Id: <E85E6FF7-AA14-4FA6-82AA-859D93BD0069@dubeyko.com>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-12-pali@kernel.org>
 <D0302F93-BAE5-48F0-87D0-B68B10D7757B@dubeyko.com>
 <YRFnz6kn1UbSCN/S@casper.infradead.org>
To: Matthew Wilcox <willy@infradead.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mD9Zp-0008WV-Gd
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [RFC PATCH 11/20] hfs: Explicitly set
 hsb->nls_disk when hsb->nls_io is set
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
 Salah Triki <salah.triki@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>, Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 =?utf-8?Q?Marek_Beh=C3=BAn?= <marek.behun@nic.cz>,
 =?utf-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Cgo+IE9uIEF1ZyA5LCAyMDIxLCBhdCAxMDozNyBBTSwgTWF0dGhldyBXaWxjb3ggPHdpbGx5QGlu
ZnJhZGVhZC5vcmc+IHdyb3RlOgo+IAo+IE9uIE1vbiwgQXVnIDA5LCAyMDIxIGF0IDEwOjMxOjU1
QU0gLTA3MDAsIFZpYWNoZXNsYXYgRHViZXlrbyB3cm90ZToKPj4+IE9uIEF1ZyA4LCAyMDIxLCBh
dCA5OjI0IEFNLCBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPiB3cm90ZToKPj4+IAo+Pj4g
SXQgZG9lcyBub3QgbWFrZSBhbnkgc2Vuc2UgdG8gc2V0IGhzYi0+bmxzX2lvIChOTFMgaW9jaGFy
c2V0IHVzZWQgYmV0d2Vlbgo+Pj4gVkZTIGFuZCBoZnMgZHJpdmVyKSB3aGVuIGhzYi0+bmxzX2Rp
c2sgKE5MUyBjb2RlcGFnZSB1c2VkIGJldHdlZW4gaGZzCj4+PiBkcml2ZXIgYW5kIGRpc2spIGlz
IG5vdCBzZXQuCj4+PiAKPj4+IFJldmVyc2UgZW5naW5lZXJpbmcgZHJpdmVyIGNvZGUgc2hvd24g
d2hhdCBpcyBkb2luZyBpbiB0aGlzIHNwZWNpYWwgY2FzZToKPj4+IAo+Pj4gICBXaGVuIGNvZGVw
YWdlIHdhcyBub3QgZGVmaW5lZCBidXQgaW9jaGFyc2V0IHdhcyB0aGVuCj4+PiAgIGhmcyBkcml2
ZXIgY29waWVkIDhiaXQgY2hhcmFjdGVyIGZyb20gZGlzayBkaXJlY3RseSB0bwo+Pj4gICAxNmJp
dCB1bmljb2RlIHdjaGFyX3QgdHlwZS4gV2hpY2ggbWVhbnMgaXQgZGlkIGNvbnZlcnNpb24KPj4+
ICAgZnJvbSBMYXRpbjEgKElTTy04ODU5LTEpIHRvIFVuaWNvZGUgYmVjYXVzZSBmaXJzdCAyNTYK
Pj4+ICAgVW5pY29kZSBjb2RlIHBvaW50cyBtYXRjaGVzIDhiaXQgSVNPLTg4NTktMSBjb2RlcGFn
ZSB0YWJsZS4KPj4+ICAgU28gd2hlbiBpb2NoYXJzZXQgd2FzIHNwZWNpZmllZCBhbmQgY29kZXBh
Z2Ugbm90LCB0aGVuCj4+PiAgIGNvZGVwYWdlIHVzZWQgaW1wbGljaXQgdmFsdWUgImlzbzg4NTkt
MSIuCj4+PiAKPj4+IFNvIHdoZW4gaHNiLT5ubHNfZGlzayBpcyBub3Qgc2V0IGFuZCBoc2ItPm5s
c19pbyBpcyB0aGVuIGV4cGxpY2l0bHkgc2V0Cj4+PiBoc2ItPm5sc19kaXNrIHRvICJpc284ODU5
LTEiLgo+Pj4gCj4+PiBTdWNoIHNldHVwIGlzIG9idmlvdXNseSBpbmNvbXBhdGlibGUgd2l0aCBN
YWMgT1Mgc3lzdGVtcyBhcyB0aGV5IGRvIG5vdAo+Pj4gc3VwcG9ydCBpc284ODU5LTEgZW5jb2Rp
bmcgZm9yIGhmcy4gU28gcHJpbnQgd2FybmluZyBpbnRvIGRtZXNnIGFib3V0IHRoaXMKPj4+IGZh
Y3QuCj4+PiAKPj4+IEFmdGVyIHRoaXMgY2hhbmdlIGhzYi0+bmxzX2Rpc2sgaXMgYWx3YXlzIHNl
dCwgc28gcmVtb3ZlIGNvZGUgcGF0aHMgZm9yCj4+PiBjYXNlIHdoZW4gaHNiLT5ubHNfZGlzayB3
YXMgbm90IHNldCBhcyB0aGV5IGFyZSBub3QgbmVlZGVkIGFueW1vcmUuCj4+IAo+PiAKPj4gU291
bmRzIHJlYXNvbmFibGUuIEJ1dCBpdCB3aWxsIGJlIGdyZWF0IHRvIGtub3cgdGhhdCB0aGUgY2hh
bmdlIGhhcyBiZWVuIHRlc3RlZCByZWFzb25hYmx5IHdlbGwuCj4gCj4gSSBkb24ndCB0aGluayBp
dCdzIHJlYXNvbmFibGUgdG8gYXNrIFBhbGkgdG8gdGVzdCBldmVyeSBzaW5nbGUgZmlsZXN5c3Rl
bS4KPiBUaGF0J3Mgc29tZXRoaW5nIHRoZSBtYWludGFpbmVyIHNob3VsZCBkbywgYXMgeW91J3Jl
IG1vcmUgbGlrZWx5IHRvIGhhdmUKPiB0aGUgaW5mcmFzdHJ1Y3R1cmUgYWxyZWFkeSBzZXQgdXAg
dG8gZG8gdGVzdGluZyBvZiB5b3VyIGZpbGVzeXN0ZW0gYW5kCj4gYmUgYXdhcmUgb2YgZnVuIGNv
cm5lciBjYXNlcyBhbmQgdXNlIGNhc2VzIHRoYW4gc29tZW9uZSB3aG8ncyB3b3JraW5nCj4gYWNy
b3NzIGFsbCBmaWxlc3lzdGVtcy4KCkkgc2VlIHRoZSBwb2ludC4gQnV0IHRoZSB3aG9sZSBhcHBy
b2FjaCBuZWVkcyB0byBiZSB0ZXN0ZWQgYXMgbWluaW11bSBmb3Igb25lIHBhcnRpY3VsYXIgZmls
ZSBzeXN0ZW0uIDopIEFuZCBpdCBjb3VsZCBiZSBhbnkgZmF2b3JpdGUgb25lLgoKVGhhbmtzLApT
bGF2YS4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGlu
dXgtbnRmcy1kZXYK
