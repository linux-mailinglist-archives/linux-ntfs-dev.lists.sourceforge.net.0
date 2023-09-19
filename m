Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A727A673F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 16:49:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qic2D-0004Ww-PD;
	Tue, 19 Sep 2023 14:49:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qiaMU-0000bp-7s
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 13:01:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2w/wQ8V2E6A/A9h71MT3wsUIExlrWO06vblA9KgaYVM=; b=R9b2TWRR/xk6vU5TTwrJeCepvm
 6e1eHW9LCiuQ9p/zeKmL1i5Lxr+5VGBt1Kvcsiw15ELWtxk5wyBD/mlYK7Fi2Z/9atB9VkHBwXDOO
 klWVYMxGlYV9ZcfTZeIljC++xp2YGjE4ja7TBtL/SxJejLMHJ0G/Uw8S16NSU69MXIaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2w/wQ8V2E6A/A9h71MT3wsUIExlrWO06vblA9KgaYVM=; b=bq4I/dj0umMyIwCZRRlhpm9WSG
 4aKCpIXzF86/XHXIk2zpXjC6HhvzveDjv4UIiNTkCg0qwLxS3bsqKS42kAvFfSYZ1Si3W3OG2ezgM
 N8K7O3lYHuhT48FQslsinU9VXJlm11pre8Du8oQTZaSMHWy7qPUZVjb/Pe1lusiPHgAI=;
Received: from mail-vk1-f174.google.com ([209.85.221.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiaMQ-0003Fa-2o for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 13:01:50 +0000
Received: by mail-vk1-f174.google.com with SMTP id
 71dfb90a1353d-493a661d7b6so4314513e0c.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 06:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695128504; x=1695733304; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2w/wQ8V2E6A/A9h71MT3wsUIExlrWO06vblA9KgaYVM=;
 b=DjtUfLwfG2f4073Ru0Ien+XhkvpA95V9QfcAyAocg8T272JtDI6mJc/SJ7bseE+2Vl
 aed6+E0TgtxxFCmLijNNXTM/WZpHMIr2z7AyGhi1/VkRfWteG08eGwIfRy5JlHIONhms
 WpjQS2KAavWxmy6McaGua/MfctqMW1uFJJoQEAqZD3g0juCC/ny7rbpuOF9jnO504V4B
 FzRw6XIZM4gFFj9zLYoq/qar07NP5a3IgafH4h4NAqxR0+bYL0Hzed+Lk6pL2L4F5uwA
 uGAA68vEcSTmu5fWP1T+miM3VKiS3iiRp2TVWgKdp0hxBU3llQkAne/0wSmO4KhRkkZp
 jtxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695128504; x=1695733304;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2w/wQ8V2E6A/A9h71MT3wsUIExlrWO06vblA9KgaYVM=;
 b=rhgsMfbGImHh1QRViGzlkGRvfViaW2i5td+Vh0MEue/52ip2Qndl0Z5fEC78RklbBA
 p+FAl9EkiMbyessaaGpU1/OfMsSYe0fBLgh7aG6aNQOENwlwpf5pVK6DXLAwVsbkkkhH
 YZiRsCr/w86jMYsA7ItUZnwP7VZM6JonQIirTYHY8rP1c9FNR+p36PyWPTHHUEuWH2FX
 7yB8doWqBk+/srBNzL8okSe+6msJ5exxeGGejTFYeANm0+HT2xncr/zS/+LfYyQjlbfF
 gNO7ZncuHC5hpwbDnKZLHpzc+ToxncFaubDp50fI3g96sye4WmFBgmWoz8Pstc+4M/tP
 SJpw==
X-Gm-Message-State: AOJu0YxWXB9jQjYr9BDlxO4Gfkx7fdQOI2xpk9Ve1SeXckIlgdZJ81/9
 3Ghy9NkkH1/JdHViSOvtHxRFKS+OWlZc5wygdSo=
X-Google-Smtp-Source: AGHT+IGt+cH+gF//llikjpiYbxgkUAmOFr3hKUulbwUJC348hXuZy75vYMRDDJ/wPMR9xuIT1pMOSxpCoePjUW6q3X0=
X-Received: by 2002:a05:6122:3657:b0:496:2d54:e6f0 with SMTP id
 dv23-20020a056122365700b004962d54e6f0mr921811vkb.6.1695128503713; Tue, 19 Sep
 2023 06:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-12-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-12-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Tue, 19 Sep 2023 22:01:27 +0900
Message-ID: <CAKFNMonjfsWBageg6vfWok9vvNEzjhXiqCCb+=cDFuwnTER95A@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Tue, Sep 19, 2023 at 1:56 PM Matthew Wilcox (Oracle)
    wrote: > > Both callers already have a folio, so pass it in and use it directly.
    > Removes a lot of hidden calls to compound_head(). > > Signe [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.174 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1qiaMQ-0003Fa-2o
X-Mailman-Approved-At: Tue, 19 Sep 2023 14:49:03 +0000
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

SGksCgpPbiBUdWUsIFNlcCAxOSwgMjAyMyBhdCAxOjU24oCvUE0gTWF0dGhldyBXaWxjb3ggKE9y
YWNsZSkgd3JvdGU6Cj4KPiBCb3RoIGNhbGxlcnMgYWxyZWFkeSBoYXZlIGEgZm9saW8sIHNvIHBh
c3MgaXQgaW4gYW5kIHVzZSBpdCBkaXJlY3RseS4KPiBSZW1vdmVzIGEgbG90IG9mIGhpZGRlbiBj
YWxscyB0byBjb21wb3VuZF9oZWFkKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IFdpbGNv
eCAoT3JhY2xlKSA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KPiAtLS0KPiAgZnMvbmlsZnMyL3BhZ2Uu
YyB8IDUwICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZnMvbmlsZnMyL3BhZ2UuYyBiL2ZzL25pbGZzMi9wYWdlLmMKPiBpbmRleCAx
YzA3NWJkOTA2YzkuLjY5NjIxNWQ4OTliZiAxMDA2NDQKPiAtLS0gYS9mcy9uaWxmczIvcGFnZS5j
Cj4gKysrIGIvZnMvbmlsZnMyL3BhZ2UuYwo+IEBAIC0xODQsMzAgKzE4NCwzMiBAQCB2b2lkIG5p
bGZzX3BhZ2VfYnVnKHN0cnVjdCBwYWdlICpwYWdlKQo+ICB9Cj4KPiAgLyoqCj4gLSAqIG5pbGZz
X2NvcHlfcGFnZSAtLSBjb3B5IHRoZSBwYWdlIHdpdGggYnVmZmVycwo+IC0gKiBAZHN0OiBkZXN0
aW5hdGlvbiBwYWdlCj4gLSAqIEBzcmM6IHNvdXJjZSBwYWdlCj4gLSAqIEBjb3B5X2RpcnR5OiBm
bGFnIHdoZXRoZXIgdG8gY29weSBkaXJ0eSBzdGF0ZXMgb24gdGhlIHBhZ2UncyBidWZmZXIgaGVh
ZHMuCj4gKyAqIG5pbGZzX2NvcHlfZm9saW8gLS0gY29weSB0aGUgZm9saW8gd2l0aCBidWZmZXJz
Cj4gKyAqIEBkc3Q6IGRlc3RpbmF0aW9uIGZvbGlvCj4gKyAqIEBzcmM6IHNvdXJjZSBmb2xpbwo+
ICsgKiBAY29weV9kaXJ0eTogZmxhZyB3aGV0aGVyIHRvIGNvcHkgZGlydHkgc3RhdGVzIG9uIHRo
ZSBmb2xpbydzIGJ1ZmZlciBoZWFkcy4KPiAgICoKPiAtICogVGhpcyBmdW5jdGlvbiBpcyBmb3Ig
Ym90aCBkYXRhIHBhZ2VzIGFuZCBidG5vZGUgcGFnZXMuICBUaGUgZGlydHkgZmxhZwo+IC0gKiBz
aG91bGQgYmUgdHJlYXRlZCBieSBjYWxsZXIuICBUaGUgcGFnZSBtdXN0IG5vdCBiZSB1bmRlciBp
L28uCj4gLSAqIEJvdGggc3JjIGFuZCBkc3QgcGFnZSBtdXN0IGJlIGxvY2tlZAo+ICsgKiBUaGlz
IGZ1bmN0aW9uIGlzIGZvciBib3RoIGRhdGEgZm9saW9zIGFuZCBidG5vZGUgZm9saW9zLiAgVGhl
IGRpcnR5IGZsYWcKPiArICogc2hvdWxkIGJlIHRyZWF0ZWQgYnkgY2FsbGVyLiAgVGhlIGZvbGlv
IG11c3Qgbm90IGJlIHVuZGVyIGkvby4KPiArICogQm90aCBzcmMgYW5kIGRzdCBmb2xpbyBtdXN0
IGJlIGxvY2tlZAo+ICAgKi8KPiAtc3RhdGljIHZvaWQgbmlsZnNfY29weV9wYWdlKHN0cnVjdCBw
YWdlICpkc3QsIHN0cnVjdCBwYWdlICpzcmMsIGludCBjb3B5X2RpcnR5KQo+ICtzdGF0aWMgdm9p
ZCBuaWxmc19jb3B5X2ZvbGlvKHN0cnVjdCBmb2xpbyAqZHN0LCBzdHJ1Y3QgZm9saW8gKnNyYywK
PiArICAgICAgICAgICAgICAgYm9vbCBjb3B5X2RpcnR5KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qg
YnVmZmVyX2hlYWQgKmRiaCwgKmRidWZzLCAqc2JoOwo+ICAgICAgICAgdW5zaWduZWQgbG9uZyBt
YXNrID0gTklMRlNfQlVGRkVSX0lOSEVSRU5UX0JJVFM7Cj4KPiAtICAgICAgIEJVR19PTihQYWdl
V3JpdGViYWNrKGRzdCkpOwo+ICsgICAgICAgQlVHX09OKGZvbGlvX3Rlc3Rfd3JpdGViYWNrKGRz
dCkpOwo+Cj4gLSAgICAgICBzYmggPSBwYWdlX2J1ZmZlcnMoc3JjKTsKPiAtICAgICAgIGlmICgh
cGFnZV9oYXNfYnVmZmVycyhkc3QpKQo+IC0gICAgICAgICAgICAgICBjcmVhdGVfZW1wdHlfYnVm
ZmVycyhkc3QsIHNiaC0+Yl9zaXplLCAwKTsKPiArICAgICAgIHNiaCA9IGZvbGlvX2J1ZmZlcnMo
c3JjKTsKPiArICAgICAgIGRiaCA9IGZvbGlvX2J1ZmZlcnMoZHN0KTsKPiArICAgICAgIGlmICgh
ZGJoKQo+ICsgICAgICAgICAgICAgICBkYmggPSBmb2xpb19jcmVhdGVfZW1wdHlfYnVmZmVycyhk
c3QsIHNiaC0+Yl9zaXplLCAwKTsKPgo+ICAgICAgICAgaWYgKGNvcHlfZGlydHkpCj4gICAgICAg
ICAgICAgICAgIG1hc2sgfD0gQklUKEJIX0RpcnR5KTsKPgo+IC0gICAgICAgZGJoID0gZGJ1ZnMg
PSBwYWdlX2J1ZmZlcnMoZHN0KTsKPiArICAgICAgIGRidWZzID0gZGJoOwo+ICAgICAgICAgZG8g
ewo+ICAgICAgICAgICAgICAgICBsb2NrX2J1ZmZlcihzYmgpOwo+ICAgICAgICAgICAgICAgICBs
b2NrX2J1ZmZlcihkYmgpOwo+IEBAIC0yMTgsMTYgKzIyMCwxNiBAQCBzdGF0aWMgdm9pZCBuaWxm
c19jb3B5X3BhZ2Uoc3RydWN0IHBhZ2UgKmRzdCwgc3RydWN0IHBhZ2UgKnNyYywgaW50IGNvcHlf
ZGlydHkpCj4gICAgICAgICAgICAgICAgIGRiaCA9IGRiaC0+Yl90aGlzX3BhZ2U7Cj4gICAgICAg
ICB9IHdoaWxlIChkYmggIT0gZGJ1ZnMpOwo+Cj4gLSAgICAgICBjb3B5X2hpZ2hwYWdlKGRzdCwg
c3JjKTsKPiArICAgICAgIGZvbGlvX2NvcHkoZHN0LCBzcmMpOwo+Cj4gLSAgICAgICBpZiAoUGFn
ZVVwdG9kYXRlKHNyYykgJiYgIVBhZ2VVcHRvZGF0ZShkc3QpKQo+IC0gICAgICAgICAgICAgICBT
ZXRQYWdlVXB0b2RhdGUoZHN0KTsKPiAtICAgICAgIGVsc2UgaWYgKCFQYWdlVXB0b2RhdGUoc3Jj
KSAmJiBQYWdlVXB0b2RhdGUoZHN0KSkKPiAtICAgICAgICAgICAgICAgQ2xlYXJQYWdlVXB0b2Rh
dGUoZHN0KTsKPiAtICAgICAgIGlmIChQYWdlTWFwcGVkVG9EaXNrKHNyYykgJiYgIVBhZ2VNYXBw
ZWRUb0Rpc2soZHN0KSkKPiAtICAgICAgICAgICAgICAgU2V0UGFnZU1hcHBlZFRvRGlzayhkc3Qp
Owo+IC0gICAgICAgZWxzZSBpZiAoIVBhZ2VNYXBwZWRUb0Rpc2soc3JjKSAmJiBQYWdlTWFwcGVk
VG9EaXNrKGRzdCkpCj4gLSAgICAgICAgICAgICAgIENsZWFyUGFnZU1hcHBlZFRvRGlzayhkc3Qp
Owo+ICsgICAgICAgaWYgKGZvbGlvX3Rlc3RfdXB0b2RhdGUoc3JjKSAmJiAhZm9saW9fdGVzdF91
cHRvZGF0ZShkc3QpKQo+ICsgICAgICAgICAgICAgICBmb2xpb19tYXJrX3VwdG9kYXRlKGRzdCk7
Cj4gKyAgICAgICBlbHNlIGlmICghZm9saW9fdGVzdF91cHRvZGF0ZShzcmMpICYmIGZvbGlvX3Rl
c3RfdXB0b2RhdGUoZHN0KSkKPiArICAgICAgICAgICAgICAgZm9saW9fY2xlYXJfdXB0b2RhdGUo
ZHN0KTsKPiArICAgICAgIGlmIChmb2xpb190ZXN0X21hcHBlZHRvZGlzayhzcmMpICYmICFmb2xp
b190ZXN0X21hcHBlZHRvZGlzayhkc3QpKQo+ICsgICAgICAgICAgICAgICBmb2xpb19zZXRfbWFw
cGVkdG9kaXNrKGRzdCk7Cj4gKyAgICAgICBlbHNlIGlmICghZm9saW9fdGVzdF9tYXBwZWR0b2Rp
c2soc3JjKSAmJiBmb2xpb190ZXN0X21hcHBlZHRvZGlzayhkc3QpKQo+ICsgICAgICAgICAgICAg
ICBmb2xpb19jbGVhcl9tYXBwZWR0b2Rpc2soZHN0KTsKPgo+ICAgICAgICAgZG8gewo+ICAgICAg
ICAgICAgICAgICB1bmxvY2tfYnVmZmVyKHNiaCk7Cj4gQEAgLTI2OSw3ICsyNzEsNyBAQCBpbnQg
bmlsZnNfY29weV9kaXJ0eV9wYWdlcyhzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqZG1hcCwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBOSUxGU19QQUdFX0JVRygmZm9saW8tPnBhZ2UsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImZvdW5kIGVtcHR5IHBhZ2UgaW4gZGF0
IHBhZ2UgY2FjaGUiKTsKPgo+IC0gICAgICAgICAgICAgICBuaWxmc19jb3B5X3BhZ2UoJmRmb2xp
by0+cGFnZSwgJmZvbGlvLT5wYWdlLCAxKTsKPiArICAgICAgICAgICAgICAgbmlsZnNfY29weV9m
b2xpbyhkZm9saW8sIGZvbGlvLCB0cnVlKTsKPiAgICAgICAgICAgICAgICAgZmlsZW1hcF9kaXJ0
eV9mb2xpbyhmb2xpb19tYXBwaW5nKGRmb2xpbyksIGRmb2xpbyk7Cj4KPiAgICAgICAgICAgICAg
ICAgZm9saW9fdW5sb2NrKGRmb2xpbyk7Cj4gQEAgLTMxNCw3ICszMTYsNyBAQCB2b2lkIG5pbGZz
X2NvcHlfYmFja19wYWdlcyhzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqZG1hcCwKPiAgICAgICAgICAg
ICAgICAgaWYgKCFJU19FUlIoZGZvbGlvKSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIC8q
IG92ZXJ3cml0ZSBleGlzdGluZyBmb2xpbyBpbiB0aGUgZGVzdGluYXRpb24gY2FjaGUgKi8KPiAg
ICAgICAgICAgICAgICAgICAgICAgICBXQVJOX09OKGZvbGlvX3Rlc3RfZGlydHkoZGZvbGlvKSk7
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgbmlsZnNfY29weV9wYWdlKCZkZm9saW8tPnBhZ2Us
ICZmb2xpby0+cGFnZSwgMCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbmlsZnNfY29weV9m
b2xpbyhkZm9saW8sIGZvbGlvLCBmYWxzZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZm9s
aW9fdW5sb2NrKGRmb2xpbyk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZm9saW9fcHV0KGRm
b2xpbyk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgLyogRG8gd2Ugbm90IG5lZWQgdG8gcmVt
b3ZlIGZvbGlvIGZyb20gc21hcCBoZXJlPyAqLwo+IC0tCj4gMi40MC4xCgpXaGVuIEkgdHJpZWQg
dG8gdGVzdCB0aGUgcGF0Y2hzZXQgYWdhaW5zdCA2LjYtcmMyLCBJIGVuY291bnRlcmVkIHRoZQpm
b2xsb3dpbmcgZXJyb3IgZHVyaW5nIHRoZSBidWlsZDoKCiBFUlJPUjogbW9kcG9zdDogImZvbGlv
X2NvcHkiIFtmcy9uaWxmczIvbmlsZnMyLmtvXSB1bmRlZmluZWQhCgpJdCBsb29rcyBsaWtlICJm
b2xpb19jb3B5IiBpcyBub3QgZXhwb3J0ZWQgdG8gbW9kdWxlcy4KCkknbGwgY29ycmVjdCB0aGlz
IG1hbnVhbGx5IGZvciBub3cgYW5kIHByb2NlZWQgd2l0aCB0aGUgcmV2aWV3IGFuZAp0ZXN0aW5n
LCBidXQgY291bGQgeW91IHBsZWFzZSBmaXggdGhpcyBidWlsZCBpc3N1ZSBpbiBzb21lIHdheSA/
CgpUaGFua3MsClJ5dXN1a2UgS29uaXNoaQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW50ZnMtZGV2IG1haWxpbmcgbGlzdApMaW51eC1udGZz
LWRldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
