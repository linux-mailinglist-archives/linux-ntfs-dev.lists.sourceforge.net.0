Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCFD559D40
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 24 Jun 2022 17:26:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4lCx-0005Mu-I3; Fri, 24 Jun 2022 15:26:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linkinjeon@kernel.org>) id 1o4kRE-00037D-Kr
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 14:37:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:References:In-Reply-To:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H4KHMUtwf1zNMRz8/ixThRzVygNtE2nEsO8vadnApUQ=; b=UQUbExjzskzZOAJiXDOE+9mEPh
 pXhLC+p3tl3kbpj6gB74hYaWjXYk64FaskVt2ULFsRE7qPsXf9VjdeTorWo4GRW2uc/uPD5TEhAyM
 5OXQ4juS3cCVkM3UR6H8xtKGRa9LEGCKv1Jl7zc7Lx6JatG9mjiapLhYKhk9hApoYOMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H4KHMUtwf1zNMRz8/ixThRzVygNtE2nEsO8vadnApUQ=; b=UZXWgffnmAyDoJA8SoKSZkglyS
 Wf2A/eGp596+acGTL2wlk3DvK45aHPN+0Nxq6BXRucbmensBG3pBokUTRC8pFTrOgyTVYQvxyR55V
 N9iT8R2gsfHuQPbohSdW14/6mUa+GaPeNKiHiVodhxLrWvtuAZq7M/ZxFp8m6E0wITG8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4kRD-0002OB-Hy
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 14:37:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 191246205C
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 24 Jun 2022 14:37:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCD88C341C6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 24 Jun 2022 14:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656081448;
 bh=CNBkSrLCaZGfawQUgSak+d02ko5fad5AVz/rJLSEs3U=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=u1hxhEbObejGel9t79BV/XwqoWz5imnrFY0iPN//c9MgONvFIMic89mLI2bdGFDcT
 FTMlW0y1eJFjPyNvQYvgHcz8+jAW+nf1zLoUP8x3afs6//woYRkXofQq2aaUabp2Nd
 ZPlIgDiNAc83gK3srvt+LEUSRvMbK1Lprsk/dr+uxFVok+GpQ0XZXSz6SuLNGMj0UP
 S48581ihx8iZeGuWVEvhHstN1tS2hIkTwAAB1IzViYHqD5R0EARapGuQh3pXChAyDb
 ED8nBsoY8f8x0X46cTzCxEuKv4qAxcyW+V+/WNk7LYhAdNfqofEyHuMrjmRr2K3y4O
 jGwRfq9yOTpbA==
Received: by mail-wm1-f43.google.com with SMTP id n185so1422932wmn.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 24 Jun 2022 07:37:28 -0700 (PDT)
X-Gm-Message-State: AJIora/wxIwS7YeW9Gm9mL7mb+A5gbRcG5pvGHKuzzSlzn8E5EwGY/VY
 QPmEG+mMnFebprOygkgR0SBJ/m6OkshEQnywhi8=
X-Google-Smtp-Source: AGRyM1toUIbPlNjeQV682apKJ2r7rupV5vchoSK9VTn7DESCMrOJKPYh0D/0cNa/9BwCGy8G4rV6ZJP6dP7UEjeL3O0=
X-Received: by 2002:a05:600c:4e0c:b0:39c:519f:9f35 with SMTP id
 b12-20020a05600c4e0c00b0039c519f9f35mr4276665wmq.153.1656081446878; Fri, 24
 Jun 2022 07:37:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:f805:0:0:0:0:0 with HTTP; Fri, 24 Jun 2022 07:37:26
 -0700 (PDT)
In-Reply-To: <7FBC6FD2-5D60-4EB8-96D5-A6014D271950@tuxera.com>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623094956.977053-1-xu.xin16@zte.com.cn>
 <YrSeAGmk4GZndtdn@sol.localdomain>
 <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
 <7FBC6FD2-5D60-4EB8-96D5-A6014D271950@tuxera.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Fri, 24 Jun 2022 23:37:26 +0900
X-Gmail-Original-Message-ID: <CAKYAXd-cg5rvXo-MYZ29+wiE3BYbg4vqDHrOHtu77ox-+7dPBw@mail.gmail.com>
Message-ID: <CAKYAXd-cg5rvXo-MYZ29+wiE3BYbg4vqDHrOHtu77ox-+7dPBw@mail.gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-06-24 21:19 GMT+09:00,
 Anton Altaparmakov <anton@tuxera.com>:
 > Hi, > > On 24 Jun 2022, at 03:33,
 Namjae Jeon > <linkinjeon@kernel.org<mailto:linkinjeon@kernel.org>>
 wrote: > > 2022-06-24 2:08 GM [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o4kRD-0002OB-Hy
X-Mailman-Approved-At: Fri, 24 Jun 2022 15:26:52 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of
 ntfs_read_block()
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
Cc: Yang Yang <yang.yang29@zte.com.cn>, "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "cgel.zte@gmail.com" <cgel.zte@gmail.com>, Zeal Robot <zealci@zte.com.cn>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>,
 "xu.xin16@zte.com.cn" <xu.xin16@zte.com.cn>,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 "syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com"
 <syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Zhang wenya <zhang.wenya1@zte.com.cn>, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

MjAyMi0wNi0yNCAyMToxOSBHTVQrMDk6MDAsIEFudG9uIEFsdGFwYXJtYWtvdiA8YW50b25AdHV4
ZXJhLmNvbT46Cj4gSGksCj4KPiBPbiAyNCBKdW4gMjAyMiwgYXQgMDM6MzMsIE5hbWphZSBKZW9u
Cj4gPGxpbmtpbmplb25Aa2VybmVsLm9yZzxtYWlsdG86bGlua2luamVvbkBrZXJuZWwub3JnPj4g
d3JvdGU6Cj4KPiAyMDIyLTA2LTI0IDI6MDggR01UKzA5OjAwLCBFcmljIEJpZ2dlcnMKPiA8ZWJp
Z2dlcnNAa2VybmVsLm9yZzxtYWlsdG86ZWJpZ2dlcnNAa2VybmVsLm9yZz4+Ogo+IE9uIFRodSwg
SnVuIDIzLCAyMDIyIGF0IDA5OjQ5OjU2QU0gKzAwMDAsCj4gY2dlbC56dGVAZ21haWwuY29tPG1h
aWx0bzpjZ2VsLnp0ZUBnbWFpbC5jb20+IHdyb3RlOgo+IEZyb206IHh1IHhpbiA8eHUueGluMTZA
enRlLmNvbS5jbjxtYWlsdG86eHUueGluMTZAenRlLmNvbS5jbj4+Cj4KPiBBcyB0aGUgYnVnIGRl
c2NyaXB0aW9uIGF0Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIyMDYyMzAzMzYz
NS45NzM5MjktMS14dS54aW4xNkB6dGUuY29tLmNuLwo+IGF0dGNrZXJzIGNhbiB1c2UgdGhpcyBi
dWcgdG8gY3Jhc2ggdGhlIHN5c3RlbS4KPgo+IFNvIHRvIGF2b2lkIHBhbmljLCByZW1vdmUgdGhl
IEJVR19PTiwgYW5kIHVzZSBudGZzX3dhcm5pbmcgdG8gb3V0cHV0IGEKPiB3YXJuaW5nIHRvIHRo
ZSBzeXNsb2cgYW5kIHJldHVybiBpbnN0ZWFkIHVudGlsIHNvbWVvbmUgcmVhbGx5IHNvbHZlCj4g
dGhlIHByb2JsZW0uCj4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFJlcG9ydGVkLWJ5
OiBaZWFsIFJvYm90IDx6ZWFsY2lAenRlLmNvbS5jbj4KPiBSZXBvcnRlZC1ieTogc3l6Ym90KzZh
NWE3NjcyZjY2M2NjZThiMTU2QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiBSZXZpZXdlZC1i
eTogU29uZ3lpIFpoYW5nIDx6aGFuZy5zb25neWlAenRlLmNvbS5jbj4KPiBSZXZpZXdlZC1ieTog
WWFuZyBZYW5nIDx5YW5nLnlhbmcyOUB6dGUuY29tLmNuPgo+IFJldmlld2VkLWJ5OiBKaWFuZyBY
dWV4aW48amlhbmcueHVleGluQHp0ZS5jb20uY24+Cj4gUmV2aWV3ZWQtYnk6IFpoYW5nIHdlbnlh
PHpoYW5nLndlbnlhMUB6dGUuY29tLmNuPgo+IFNpZ25lZC1vZmYtYnk6IHh1IHhpbiA8eHUueGlu
MTZAenRlLmNvbS5jbj4KPiAtLS0KPgo+IENoYW5nZSBmb3IgdjI6Cj4gLSBVc2UgbnRmc193YXJu
aW5nIGluc3RlYWQgb2YgV0FSTigpLgo+IC0gQWRkIHRoZSB0YWcgQ2M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcuCj4gLS0tCj4gZnMvbnRmcy9hb3BzLmMgfCA3ICsrKysrKy0KPiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMv
bnRmcy9hb3BzLmMgYi9mcy9udGZzL2FvcHMuYwo+IGluZGV4IDVmNGZiNmNhNmYyZS4uODRkNjhl
ZmI0YWNlIDEwMDY0NAo+IC0tLSBhL2ZzL250ZnMvYW9wcy5jCj4gKysrIGIvZnMvbnRmcy9hb3Bz
LmMKPiBAQCAtMTgzLDcgKzE4MywxMiBAQCBzdGF0aWMgaW50IG50ZnNfcmVhZF9ibG9jayhzdHJ1
Y3QgcGFnZSAqcGFnZSkKPiB2b2wgPSBuaS0+dm9sOwo+Cj4gLyogJE1GVC8kREFUQSBtdXN0IGhh
dmUgaXRzIGNvbXBsZXRlIHJ1bmxpc3QgaW4gbWVtb3J5IGF0IGFsbCB0aW1lcy4gKi8KPiAtIEJV
R19PTighbmktPnJ1bmxpc3QucmwgJiYgIW5pLT5tZnRfbm8gJiYgIU5Jbm9BdHRyKG5pKSk7Cj4g
KyBpZiAodW5saWtlbHkoIW5pLT5ydW5saXN0LnJsICYmICFuaS0+bWZ0X25vICYmICFOSW5vQXR0
cihuaSkpKSB7Cj4gKyBudGZzX3dhcm5pbmcodmktPmlfc2IsICJFcnJvciBiZWNhdXNlIG5pLT5y
dW5saXN0LnJsLCBuaS0+bWZ0X25vLCAiCj4gKyAiYW5kIE5Jbm9BdHRyKG5pKSBpcyBudWxsLiIp
Owo+ICsgdW5sb2NrX3BhZ2UocGFnZSk7Cj4gKyByZXR1cm4gLUVJTlZBTDsKPiArIH0KPgo+IEEg
YmV0dGVyIHdhcm5pbmcgbWVzc2FnZSB0aGF0IGRvZXNuJ3QgcmVseSBvbiBpbXBsZW1lbnRhdGlv
biBkZXRhaWxzCj4gKHN0cnVjdAo+IGZpZWxkIGFuZCBtYWNybyBuYW1lcykgd291bGQgYmUgIlJ1
bmxpc3Qgb2YgJE1GVC8kREFUQSBpcyBub3QgY2FjaGVkIi4KPiBBbHNvLAo+IHdoeSBkb2VzIHRo
aXMgc2l0dWF0aW9uIGhhcHBlbiBpbiB0aGUgZmlyc3QgcGxhY2U/IElzIHRoZXJlIGEgd2F5IHRv
Cj4gcHJldmVudAo+IHRoaXMgc2l0dWF0aW9uIGluIHRoZSBmaXJzdCBwbGFjZT8KPgo+IG50ZnNf
bWFwcGluZ19wYWlyc19kZWNvbXByZXNzKCkgc2hvdWxkIHJldHVybiBlcnJvciBwb2ludGVyIGlu
c3RlYWQgb2YKPiBOVUxMLgo+Cj4gQ2FsbGVycyBpcyBjaGVja2luZyBlcnJvciB2YWx1ZSB1c2lu
ZyBJU19FUlIoKS4gYW5kIHRoZSBtYXBwaW5nIHBhaXJzCj4gYXJyYXkgb2YgQE1GVCBlbnRyeSBp
cyBlbXB0eSwgSSB0aGluayBpdCdzIGNvcnJ1cHRlZCwgaXQgc2hvdWxkIGNhdXNlCj4gbW91bnQg
ZmFpbHVyZS4KPgo+IE5BSwo+Cj4gU29ycnkgYnV0IHRoaXMgcGF0Y2ggaXMgaW5jb3JyZWN0LiAg
SXQgaXMgcGVyZmVjdGx5IHZhbGlkIHRvIGhhdmUgYW4gZW1wdHkKPiBub24tcmVzaWRlbnQgYXR0
cmlidXRlLiAgRS5nLiBpZiB5b3UgdHJ1bmNhdGUgYSBmaWxlIHRvIHplcm8gc2l6ZSB0aGlzIGlz
Cj4gZXhhY3RseSB3aGF0IHlvdSB3aWxsIGdldCBvbi1kaXNrIGFuZCB3aGVuIHlvdSB0aGVuIHVu
bW91bnQgYW5kIG1vdW50IG5leHQKPiB0aW1lIGFuZCB0cnkgdG8gYWNjZXNzIHRoYXQgZmlsZSB3
aXRoIHlvdXIgcGF0Y2ggeW91IHdpbGwgbm93IGdldCBhbiAtRUlPCj4gZXJyb3IgdHJ5aW5nIHRv
IGFjY2VzcyB0aGUgZmlsZSBhbmQgeW91IHdpbGwgbm90IGJlIGFibGUgdG8gd3JpdGUgdG8gdGhl
Cj4gZmlsZSBub3IgdHJ1bmNhdGUgaXQgYXMgeW91IHdpbGwga2VlcCBnZXR0aW5nIHRoZSBpL28g
ZXJyb3IuClNvcnJ5LCBJIGNhbid0IHJlcHJvZHVjZSB0aGUgaXNzdWUgeW91IGRlc2NyaWJlZD8K
CnJvb3RAbGlua2luamVvbi1aMTBQQS1EOC1TZXJpZXM6L21udC90ZXN0IyBscyAtYWwKdG90YWwg
NTkyOApkcnd4LS0tLS0tIDEgcm9vdCByb290ICAgIDQwOTYgIDbsm5QgMjQgMjM6MDEgIC4KZHJ3
eHIteHIteCA3IHJvb3Qgcm9vdCAgICA0MDk2ICA17JuUIDI5IDEyOjQ3ICAuLgotcnctLS0tLS0t
IDEgcm9vdCByb290IDYwNTk0MDkgIDnsm5QgMjIgIDIwMjAgIGZvbwpkcnd4LS0tLS0tIDEgcm9v
dCByb290ICAgICAgIDAgIDbsm5QgMjQgMjI6MzAgJ1N5c3RlbSBWb2x1bWUgSW5mb3JtYXRpb24n
CnJvb3RAbGlua2luamVvbi1aMTBQQS1EOC1TZXJpZXM6L21udC90ZXN0IyB0cnVuY2F0ZSAtcyAw
IGZvbwpyb290QGxpbmtpbmplb24tWjEwUEEtRDgtU2VyaWVzOi9tbnQvdGVzdCMgbHMgLWFsCnRv
dGFsIDgKZHJ3eC0tLS0tLSAxIHJvb3Qgcm9vdCA0MDk2ICA27JuUIDI0IDIzOjAxICAuCmRyd3hy
LXhyLXggNyByb290IHJvb3QgNDA5NiAgNeyblCAyOSAxMjo0NyAgLi4KLXJ3LS0tLS0tLSAxIHJv
b3Qgcm9vdCAgICAwICA27JuUIDI0IDIzOjExICBmb28KZHJ3eC0tLS0tLSAxIHJvb3Qgcm9vdCAg
ICAwICA27JuUIDI0IDIyOjMwICdTeXN0ZW0gVm9sdW1lIEluZm9ybWF0aW9uJwpyb290QGxpbmtp
bmplb24tWjEwUEEtRDgtU2VyaWVzOi9tbnQvdGVzdCMgY2QgLi4Kcm9vdEBsaW5raW5qZW9uLVox
MFBBLUQ4LVNlcmllczovbW50IyBzdWRvIHVtb3VudCAvbW50L3Rlc3QKcm9vdEBsaW5raW5qZW9u
LVoxMFBBLUQ4LVNlcmllczovbW50IyBzdWRvIG1vdW50IC10IG50ZnMgL2Rldi9zZGUyIC9tbnQv
dGVzdC8Kcm9vdEBsaW5raW5qZW9uLVoxMFBBLUQ4LVNlcmllczovbW50IyBjZCAvbW50L3Rlc3Qv
CnJvb3RAbGlua2luamVvbi1aMTBQQS1EOC1TZXJpZXM6L21udC90ZXN0IyBjYXQgZm9vCnJvb3RA
bGlua2luamVvbi1aMTBQQS1EOC1TZXJpZXM6L21udC90ZXN0IyB0cnVuY2F0ZSAtcyAxMDQ4NTc2
IGZvbwpyb290QGxpbmtpbmplb24tWjEwUEEtRDgtU2VyaWVzOi9tbnQvdGVzdCMgbHMgLWFsCnRv
dGFsIDEwMzIKZHJ3eC0tLS0tLSAxIHJvb3Qgcm9vdCAgICA0MDk2ICA27JuUIDI0IDIzOjAxICAu
CmRyd3hyLXhyLXggNyByb290IHJvb3QgICAgNDA5NiAgNeyblCAyOSAxMjo0NyAgLi4KLXJ3LS0t
LS0tLSAxIHJvb3Qgcm9vdCAxMDQ4NTc2ICA27JuUIDI0IDIzOjEyICBmb28KZHJ3eC0tLS0tLSAx
IHJvb3Qgcm9vdCAgICAgICAwICA27JuUIDI0IDIyOjMwICdTeXN0ZW0gVm9sdW1lIEluZm9ybWF0
aW9uJwpyb290QGxpbmtpbmplb24tWjEwUEEtRDgtU2VyaWVzOi9tbnQvdGVzdCMgZWNobyAiaGVs
bG8gd29ybGQiID4gZm9vCnJvb3RAbGlua2luamVvbi1aMTBQQS1EOC1TZXJpZXM6L21udC90ZXN0
IyBjYXQgZm9vCmhlbGxvIHdvcmxkCgo+Cj4gVGhlIGNvcnJlY3Qgc29sdXRpb24gaXMgdG8gdXNl
IElTX0VSUl9PUl9OVUxMKCkgaW4gcGxhY2VzIHdoZXJlIGFuIGVtcHR5Cj4gYXR0cmlidXRlIGlz
IG5vdCBhY2NlcHRhYmxlLiAgU3VjaCBhIGNhc2UgaXMgZm9yIGV4YW1wbGUgd2hlbiBtb3VudGlu
ZyB0aGUKPiAkTUZUOjokREFUQTo6dW5uYW1lZCBhdHRyaWJ1dGUgY2Fubm90IGJlIGVtcHR5IHdo
aWNoIHNob3VsZCB0aGVuIGJlCj4gYWRkcmVzc2VkIGluc2lkZSBpbiBmcy9udGZzL2lub2RlLmM6
Om50ZnNfcmVhZF9pbm9kZV9tb3VudCgpLiAgVGhlcmUgbWF5IGJlCj4gbW9yZSBjYWxsIHNpdGVz
IHRvIG50ZnNfbWFwcGluZ19wYWlyc19kZWNvbXByZXNzKCkgd2hpY2ggcmVxdWlyZSBzaW1pbGFy
Cj4gdHJlYXRtZW50LiAgTmVlZCB0byBnbyB0aHJvdWdoIHRoZSBjb2RlIHRvIHNlZS4uLgpJIHRo
aW5rIHRoYXQgaXQgaXMgbmVlZGVkIGV2ZXJ5d2hlcmUgdGhhdCBjYWxscyBpdC4gQW0gSSBtaXNz
aW5nIHNvbWV0aGluZyA/CgpJIGNhbiBub3QgdW5kZXJzdGFuZCB3aHkgdGhlIGJlbG93IGNvZGUg
aXMgbmVlZGVkIGluCm50ZnNfbWFwcGluZ19wYWlyc19kZWNvbXByZXNzKCkuCgovKiBJZiB0aGUg
bWFwcGluZyBwYWlycyBhcnJheSBpcyB2YWxpZCBidXQgZW1wdHksIG5vdGhpbmcgdG8gZG8uICov
CiAgICAgICAgaWYgKCF2Y24gJiYgISpidWYpIHsKICAgICAgICAgICAgICAgIHJldHVybiBvbGRf
cmw7CiAgICAgICAgfQoKVGhlcmUgaXMgbm8gZGVzY3JpcHRpb24gaW4gcGF0Y2guIGFuZCB0aGlz
IGNvZGUgaXMgbm90IGluCm50ZnNfbWFwcGluZ19wYWlyc19kZWNvbXByZXNzKCkgaW4gbnRmcy0z
Zy4gSXMgdGhlcmUgYW55IGNhc2UgdGhlCmNhbGxlciBnZXQgTlVMTCBydW5saXN0IHBvaW50ZXIg
ZnJvbSBudGZzX21hcHBpbmdfcGFpcnNfZGVjb21wcmVzcygpCmluIGN1cnJlbnQgbnRmcyBjb2Rl
PwoKTlRGUzogRml4IGhhbmRsaW5nIG9mIHZhbGlkIGJ1dCBlbXB0eSBtYXBwaW5nIHBhaXJzIGFy
cmF5IGluCiAgICAgIGZzL250ZnMvcnVubGlzdC5jOjpudGZzX21hcHBpbmdfcGFpcnNfZGVjb21w
cmVzcygpLgoKU2lnbmVkLW9mZi1ieTogQW50b24gQWx0YXBhcm1ha292IDxhaWEyMUBjYW50YWIu
bmV0PgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9y
dmFsZHMvbGludXguZ2l0L2NvbW1pdC9mcy9udGZzL3J1bmxpc3QuYz9oPXY1LjE5LXJjMyZpZD0y
YjBhZGEyYjhlMDg2YzI2N2RkMTE2YTM5YWQ0MWZmMGE3MTdiNjY1Cj4KPiBCZXN0IHJlZ2FyZHMs
Cj4KPiBBbnRvbgo+Cj4KPiBJIGhhdmVuJ3QgY2hlY2tlZCBpZiB0aGlzIHBhdGNoIGZpeCB0aGUg
cHJvYmxlbS4gWHUsIENhbiB5b3UgY2hlY2sgaXQgPwo+Cj4gZGlmZiAtLWdpdCBhL2ZzL250ZnMv
cnVubGlzdC5jIGIvZnMvbnRmcy9ydW5saXN0LmMKPiBpbmRleCA5NzkzMmZiNTE3OWMuLjMxMjYz
ZmUwNzcyZiAxMDA2NDQKPiAtLS0gYS9mcy9udGZzL3J1bmxpc3QuYwo+ICsrKyBiL2ZzL250ZnMv
cnVubGlzdC5jCj4gQEAgLTc2Niw4ICs3NjYsMTEgQEAgcnVubGlzdF9lbGVtZW50Cj4gKm50ZnNf
bWFwcGluZ19wYWlyc19kZWNvbXByZXNzKGNvbnN0IG50ZnNfdm9sdW1lICp2b2wsCj4gcmV0dXJu
IEVSUl9QVFIoLUVJTyk7Cj4gfQo+IC8qIElmIHRoZSBtYXBwaW5nIHBhaXJzIGFycmF5IGlzIHZh
bGlkIGJ1dCBlbXB0eSwgbm90aGluZyB0byBkby4gKi8KPiAtIGlmICghdmNuICYmICEqYnVmKQo+
ICsgaWYgKCF2Y24gJiYgISpidWYpIHsKPiArIGlmICghb2xkX3JsKQo+ICsgcmV0dXJuIEVSUl9Q
VFIoLUVJTyk7Cj4gcmV0dXJuIG9sZF9ybDsKPiArIH0KPiAvKiBDdXJyZW50IHBvc2l0aW9uIGlu
IHJ1bmxpc3QgYXJyYXkuICovCj4gcmxwb3MgPSAwOwo+IC8qIEFsbG9jYXRlIGZpcnN0IHBhZ2Ug
YW5kIHNldCBjdXJyZW50IHJ1bmxpc3Qgc2l6ZSB0byBvbmUgcGFnZS4gKi8KPgo+Cj4gLSBFcmlj
Cj4KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgt
bnRmcy1kZXYK
