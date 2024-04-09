Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 315A089F119
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 10 Apr 2024 13:45:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruWOS-0003jU-9l;
	Wed, 10 Apr 2024 11:45:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1ruD2Z-0006bS-AB
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 15:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6N7Nx5uvU68ziitgHdeC71YVVrhmX53E6PG4d6+nXBc=; b=W+WA2c6L8F2ES1+xodHYPPbgi4
 gzVVFosj2Oy+XJIFGU1gEh2Z7NAgzz+Heoii4IDTg6aIEXEaQl0jlwmxIztf5wcmRKe1PclmYOXc/
 vgO6n5IWoFyUE1aQpcCj3uEzIUTGI1RoXz++KL5+lFncXcC7ddbgsyab6buLRUbGVHTQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6N7Nx5uvU68ziitgHdeC71YVVrhmX53E6PG4d6+nXBc=; b=fzJqF7cB2nntCYotUqJMt5nlXV
 YeZqXbTy8ccJaL0m4VlzR4+ZKmUP8K4QtRVXB+RitMA8v9pjneozSSRmfYDQvlTox4QVjX+jjaSpL
 IKknVDIssl0bIqz63Z6P5zMdQrC44GRg28jt8aaU7uFz1diG+eBfAEF3IwYOVcf44sqw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruD2Y-0006Qm-Np for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 15:05:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5A644617DA
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue,  9 Apr 2024 15:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02932C43390
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue,  9 Apr 2024 15:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712675128;
 bh=mJt7v6CLSOYzx1gtAyi5VoQyh9G4Ztq0Q2FlAeZxZmo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fCn2zHwPhopHz3aJMqQuvT0XcsT7uQACdH7RpIfWCKsUDLkk3gf5FGDw4zWpYrgvD
 uHsoSSt5qLptwNNbfqus0tnv+lz8+j1GLA7xNJuWdgoxedmWIxOy1qpgIkLedk9xDZ
 Tk/2gjwceeSc1HSDRiACiU5Lt1elWa15BD6BnZoSUoi2ONmiPBp5pZJ4PFLwkkq164
 yQAbCmUhBIsj30JKInNCV4w8feoC9IBwwj2hTtDSdwUhcdDk808VmE/4jVrvoWs8eH
 2mdyLkcgR2mZGl6rkNdcwmbWQYw5RmNuI3DaQ9sgQ+yZZNlJVIt3ARO7x5S0Mba2We
 Bx23czV4vYapQ==
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-22ec8db3803so401637fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 09 Apr 2024 08:05:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVS25NgH1LskeCmEt8DQeDfONiorl4qW8XyYGUMXy9NY7d+HLle6rZBv3otMH5oUxn8crGBkVKE19q7lblc4uKjnHd04gWQd/kSs6LXWcAa63tCVi4=
X-Gm-Message-State: AOJu0YwXfoqBMpy5u1GwtzV4LijrG70JcTcx7ytr/unQHhQwkBfD5Sl3
 +yXPQDr/SLo6cPAHmxtkNxG5t4uQiSYYZSGmIimtaARwquTlH5ITx8+qJe59gEfMvO45cLx/R1l
 1wHleHjQH/dM7BvDvP8/UY9nSi6w=
X-Google-Smtp-Source: AGHT+IGDUO0rZ4GKVyVieaHSmKzYKqNHjEuMKn4kB8H+BP9iyv6DlSuHKVlwMC/rIyJebF0i0bhH71zkmEuwl5+N0cA=
X-Received: by 2002:a05:6870:f727:b0:222:81cc:ac9c with SMTP id
 ej39-20020a056870f72700b0022281ccac9cmr12216666oab.5.1712675127270; Tue, 09
 Apr 2024 08:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240409140059.3806717-1-arnd@kernel.org>
 <20240409140059.3806717-3-arnd@kernel.org>
In-Reply-To: <20240409140059.3806717-3-arnd@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 9 Apr 2024 17:05:15 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0h7XEV__S4pvQJt54Ab832z6PZFTNTRspfLF507MNo9Og@mail.gmail.com>
Message-ID: <CAJZ5v0h7XEV__S4pvQJt54Ab832z6PZFTNTRspfLF507MNo9Og@mail.gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
X-Spam-Score: -6.9 (------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Apr 9, 2024 at 4:01 PM Arnd Bergmann <arnd@kernel.org>
    wrote: > > From: Arnd Bergmann <arnd@arndb.de> > > gcc -Wstringop-truncation
    warns about copying a string that results in a > missing n [...] 
 
 Content analysis details:   (-6.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruD2Y-0006Qm-Np
X-Mailman-Approved-At: Wed, 10 Apr 2024 11:45:30 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/5] [v2] acpi: disable
 -Wstringop-truncation
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
Cc: Lin Ming <ming.m.lin@intel.com>, Richard Russon <ldm@flatcap.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, acpica-devel@lists.linux.dev,
 Robert Moore <robert.moore@intel.com>, linux-acpi@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, Nicolas Schier <nicolas@fjasle.eu>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linux-block@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Starikovskiy <astarikovskiy@suse.de>, Jens Axboe <axboe@kernel.dk>,
 Nathan Chancellor <nathan@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gVHVlLCBBcHIgOSwgMjAyNCBhdCA0OjAx4oCvUE0gQXJuZCBCZXJnbWFubiA8YXJuZEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IEZyb206IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4K
PiBnY2MgLVdzdHJpbmdvcC10cnVuY2F0aW9uIHdhcm5zIGFib3V0IGNvcHlpbmcgYSBzdHJpbmcg
dGhhdCByZXN1bHRzIGluIGEKPiBtaXNzaW5nIG51bCB0ZXJtaW5hdGlvbjoKPgo+IGRyaXZlcnMv
YWNwaS9hY3BpY2EvdGJmaW5kLmM6IEluIGZ1bmN0aW9uICdhY3BpX3RiX2ZpbmRfdGFibGUnOgo+
IGRyaXZlcnMvYWNwaS9hY3BpY2EvdGJmaW5kLmM6NjA6OTogZXJyb3I6ICdzdHJuY3B5JyBzcGVj
aWZpZWQgYm91bmQgNiBlcXVhbHMgZGVzdGluYXRpb24gc2l6ZSBbLVdlcnJvcj1zdHJpbmdvcC10
cnVuY2F0aW9uXQo+ICAgIDYwIHwgICAgICAgICBzdHJuY3B5KGhlYWRlci5vZW1faWQsIG9lbV9p
ZCwgQUNQSV9PRU1fSURfU0laRSk7Cj4gICAgICAgfCAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGRyaXZlcnMvYWNwaS9hY3BpY2EvdGJm
aW5kLmM6NjE6OTogZXJyb3I6ICdzdHJuY3B5JyBzcGVjaWZpZWQgYm91bmQgOCBlcXVhbHMgZGVz
dGluYXRpb24gc2l6ZSBbLVdlcnJvcj1zdHJpbmdvcC10cnVuY2F0aW9uXQo+ICAgIDYxIHwgICAg
ICAgICBzdHJuY3B5KGhlYWRlci5vZW1fdGFibGVfaWQsIG9lbV90YWJsZV9pZCwgQUNQSV9PRU1f
VEFCTEVfSURfU0laRSk7Cj4gICAgICAgfCAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+Cj4gVGhlIGNvZGUg
d29ya3MgYXMgaW50ZW5kZWQsIGFuZCB0aGUgd2FybmluZyBjb3VsZCBiZSBhZGRyZXNzZWQgYnkg
dXNpbmcKPiBhIG1lbWNweSgpLCBidXQgdHVybmluZyB0aGUgd2FybmluZyBvZmYgZm9yIHRoaXMg
ZmlsZSB3b3JrcyBlcXVhbGx5IHdlbGwKPiBhbmQgbWF5IGJlIGVhc2lyIHRvIG1lcmdlLgoKImVh
c2llciIgKGZpeGVkIHVwKS4KClRyaWNreSB0aGF0LCBidXQgT0subGV0J3MgZ2V0IHRoZSB3YXJu
aW5nIG9mZiB0aGUgdGFibGUuCgpBcHBsaWVkIGFzIDYuMTAgbWF0ZXJpYWwsIHRoYW5rcyEKCj4g
Rml4ZXM6IDQ3YzA4NzI5YmYxYyAoIkFDUElDQTogRml4IGZvciBMb2FkVGFibGUgb3BlcmF0b3Is
IGlucHV0IHN0cmluZ3MiKQo+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvQ0FK
WjV2MGhvVWZ2NTRLVzd5NDIyM01uOUU3RDR4dlI3d2hSRk5MVEJxQ1pNVXhUNTBRQG1haWwuZ21h
aWwuY29tLyN0Cj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4K
PiAtLS0KPiAgZHJpdmVycy9hY3BpL2FjcGljYS9NYWtlZmlsZSB8IDEgKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYWNwaWNh
L01ha2VmaWxlIGIvZHJpdmVycy9hY3BpL2FjcGljYS9NYWtlZmlsZQo+IGluZGV4IDMwZjNmYzEz
YzI5ZC4uOGQxOGFmMzk2ZGU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYWNwaS9hY3BpY2EvTWFr
ZWZpbGUKPiArKysgYi9kcml2ZXJzL2FjcGkvYWNwaWNhL01ha2VmaWxlCj4gQEAgLTUsNiArNSw3
IEBACj4KPiAgY2NmbGFncy15ICAgICAgICAgICAgICAgICAgICAgIDo9IC1EX0xJTlVYIC1EQlVJ
TERJTkdfQUNQSUNBCj4gIGNjZmxhZ3MtJChDT05GSUdfQUNQSV9ERUJVRykgICArPSAtREFDUElf
REVCVUdfT1VUUFVUCj4gK0NGTEFHU190YmZpbmQubyAgICAgICAgICAgICAgICArPSAkKGNhbGwg
Y2MtZGlzYWJsZS13YXJuaW5nLCBzdHJpbmdvcC10cnVuY2F0aW9uKQo+Cj4gICMgdXNlIGFjcGku
byB0byBwdXQgYWxsIGZpbGVzIGhlcmUgaW50byBhY3BpLm8gbW9kcGFyYW0gbmFtZXNwYWNlCj4g
IG9iai15ICArPSBhY3BpLm8KPiAtLQo+IDIuMzkuMgo+Cj4KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QK
TGludXgtbnRmcy1kZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
