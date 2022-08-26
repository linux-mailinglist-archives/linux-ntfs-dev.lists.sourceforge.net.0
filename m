Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EF75A2E15
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 26 Aug 2022 20:15:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRdrL-0004wb-H3;
	Fri, 26 Aug 2022 18:15:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRbaK-0004cJ-7C
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 15:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Xr0k1F/n6DXUYyny/jSc9xyKQVr9bMMBjQ0x9hJugc=; b=SfcLy/wnVOB5SzT8MgtuYaQUAw
 8fxnoutNm4daBX0c8/LxgYkQmLB36tLh6LA4PRPYocSxV3TaN9aflsfFO34a9C8GreDrNQDEMTkpW
 53FO4nIbb+4z27j4rTNgURyKKwwFDhlCqSw4BxWxT53jMmLF0wBA/T/8eVaVmw+wqW4I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9Xr0k1F/n6DXUYyny/jSc9xyKQVr9bMMBjQ0x9hJugc=; b=FZzOAKNJwGnbMPeAeiadBa7UNq
 XveuAYxuNdxlHJEArd2Q+QvSf/+Bv5dfGLLSaOqsW7ze/xyHEG9ngAj+bAcW3K7chC7w9BFno2iIU
 V2xKpjpjiZ1pAwUdYOoYEOkuURw1PJG24xUifFwZQXX1KmuPwli9lhq7RlWVbLLoHvBs=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRbaG-00015e-Vy for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 15:49:28 +0000
Received: by mail-pj1-f47.google.com with SMTP id e19so2023698pju.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 26 Aug 2022 08:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=9Xr0k1F/n6DXUYyny/jSc9xyKQVr9bMMBjQ0x9hJugc=;
 b=EFek5s+75roAZuIl4BSgg8kXDr1+N1he6wQ9DGg6l6S91/oI41FAUIF1zAinsrbmEu
 QPE743pmSEttSnsgEY7SIvXx+NG59pxAfXWRmKW/vDRqcfiv4M+JSKkDRQZP50ynbPIs
 YuxCzxvqjk62RMWy7fSbDXP9JbxIU/v2XBmWOcyooYH+kCjF1xZgNytPj0TSEktMQkjQ
 3cAGIVmPZCQEzIBJ+2SVB8LeXK3IAwGiSJB5HNjNe7qKmcD1vAsklEO5RdrfgnE7hn2F
 cDeCGF++9Z1E55kAUk4Ub8jtVBAcazTYnzHCP8C65q5chM0dzRzXKmqyVuoCuDlhMDGl
 RjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=9Xr0k1F/n6DXUYyny/jSc9xyKQVr9bMMBjQ0x9hJugc=;
 b=47KP2TtfN62iuxtKGEzEt6t+O9E0tdCHAFwbAjOS/cnk03YLJkiIWa9bhMK9eTOLA2
 dIF8PjUsVuquMo0yq9QD4S7MS8Cj2ggO93uT2J+tudXMCIq9LNs8OYoNrj7J/7MiJXlx
 9/6GPfprDr35N82cxPiILoAjf+90/xgzs/CubGBsEAh4Fkv8O3+Cup6J0yvaKQSn85xM
 8qDdIPORxq3HCcPuKd3wKeaomwKnIG4SRKmnqIKrynvvWzn8CvJfMjqYD6pypjSBSNxQ
 kFSXB/hsb/uu78nQq7xCJD0OOoBdPaMJn9qV/rQEAs/6xkH4+CoVzrPij9nVfGHgbN7M
 T/MQ==
X-Gm-Message-State: ACgBeo2zdNYQRFzZHIiQKnfbU0ho6GlCa3uw0JGHtzHmZRjhdWV2wrOR
 y282Z626bgbQVkMvcQ57/m4=
X-Google-Smtp-Source: AA6agR40CnhS7gTvEftrm3vIxOndD/sHMM/MGhyRdeYci8Oq8W9u/jnQ5Cxvolba0GoK9xvfVY52bQ==
X-Received: by 2002:a17:90b:4a0e:b0:1fb:4c5e:9584 with SMTP id
 kk14-20020a17090b4a0e00b001fb4c5e9584mr5137723pjb.152.1661528959477; 
 Fri, 26 Aug 2022 08:49:19 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 e11-20020a170902784b00b00173164792aasm1741388pln.127.2022.08.26.08.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 08:49:19 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: dan.carpenter@oracle.com
Date: Fri, 26 Aug 2022 23:42:32 +0800
Message-Id: <20220826154231.6634-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826151520.GF2071@kadam>
References: <20220826151520.GF2071@kadam>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 26 Aug 2022 at 23:15, Dan Carpenter wrote: > > On
 Fri, Aug 26, 2022 at 08:32:57PM +0800, Hawkins Jiawei wrote: > > > syz test
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oRbaG-00015e-Vy
X-Mailman-Approved-At: Fri, 26 Aug 2022 18:15:10 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in
 ntfs_attr_find
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, yin31149@gmail.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gRnJpLCAyNiBBdWcgMjAyMiBhdCAyMzoxNSwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgQXVnIDI2LCAyMDIyIGF0IDA4OjMyOjU3
UE0gKzA4MDAsIEhhd2tpbnMgSmlhd2VpIHdyb3RlOgo+ID4gPiBzeXogdGVzdCBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQg
bWFzdGVyCj4gPiA+Cj4gPiA+IExvb2tzIGxpa2UgaXQgaXMgaW1wcm9wZXIgY2hlY2sgb3JkZXIg
dGhhdCBjYXVzZXMgdGhpcyBidWcuCj4gPgo+ID4gU29ycnkgZm9yIHdyb25nIGNvbW1hbmQuCj4g
PiAjc3l6IHRlc3QgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0IG1hc3Rlcgo+ID4KPiA+IGRpZmYgLS1naXQgYS9mcy9udGZz
L2F0dHJpYi5jIGIvZnMvbnRmcy9hdHRyaWIuYwo+ID4gaW5kZXggNTI2MTVlNjA5MGUxLi42NDgw
Y2QyZDM3MWQgMTAwNjQ0Cj4gPiAtLS0gYS9mcy9udGZzL2F0dHJpYi5jCj4gPiArKysgYi9mcy9u
dGZzL2F0dHJpYi5jCj4gPiBAQCAtNTk0LDEwICs1OTQsMTEgQEAgc3RhdGljIGludCBudGZzX2F0
dHJfZmluZChjb25zdCBBVFRSX1RZUEUgdHlwZSwgY29uc3QgbnRmc2NoYXIgKm5hbWUsCj4gPiDC
oCDCoCDCoCBmb3IgKDs7IGEgPSAoQVRUUl9SRUNPUkQqKSgodTgqKWEgKyBsZTMyX3RvX2NwdShh
LT5sZW5ndGgpKSkgewo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgdTggKm1yZWNfZW5kID0gKHU4
ICopY3R4LT5tcmVjICsKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgbGUzMl90b19jcHUoY3R4LT5tcmVjLT5ieXRlc19hbGxvY2F0ZWQpOwo+ID4gKyDCoCDC
oCDCoCDCoCDCoCDCoCBpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhID4gbXJl
Y19lbmQpCj4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJyZWFrOwo+Cj4gVGhp
cyBkZWZpbml0ZWx5IHNlZW1zIGxpa2UgYSBidWcuIMKgQnV0IHlvdXIgY29kZSB3b24ndCBidWls
ZC4gwqBTeXpib3QKPiBtdXN0IGhhdmUgLVdlcnJvciB0dXJuZWQgb2ZmPwpIaSBEYW4sCkRpZCB5
b3UgbWVhbiB3ZSBzaG91bGQgcHV0IHRoZSB2YXJpYWJsZSBkZWNsYXJlcyBhdCB0aGUgYmVnaW5u
aW5nIG9mIHRoZSBmdW5jdGlvbj8KKENvcnJlY3QgbWUgaWYgSSB1bmRlcnN0YW5kIGFueXRoaW5n
IHdyb25nKQoKPgo+IEJ0dywgdGhpcyB3YXMgaW4gdGhlIG9yaWdpbmFsIGNvZGUsIGJ1dCB0aG9z
ZSBjYXN0cyBhcmUgdWdseS4gwqBJZGVhbGx5Cj4gdGhlcmUgd291bGQgYmUgc29tZSB3YXkgdG8g
Z2V0IHJpZCBvZiB0aGVtLiDCoEJ1dCBvdGhlcndpc2UgYXQgbGVhc3QKPiBwdXQgYSBzcGFjZSBh
ZnRlciB0aGUgdTguIMKgIih1OCAqKWEgPCAodTggKiljdHgtPm1yZWMiLgo+Cj4gPiDCoCDCoCDC
oCDCoCDCoCDCoCDCoCB1OCAqbmFtZV9lbmQgPSAodTggKilhICsgbGUxNl90b19jcHUoYS0+bmFt
ZV9vZmZzZXQpICsKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgYS0+bmFtZV9sZW5ndGggKiBzaXplb2YobnRmc2NoYXIpOwo+ID4gLSDCoCDCoCDCoCDCoCDC
oCDCoCBpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhID4gbXJlY19lbmQgfHwK
PiA+IC0gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgbmFtZV9lbmQgPiBtcmVjX2VuZCkKPiA+ICsg
wqAgwqAgwqAgwqAgwqAgwqAgaWYgKG5hbWVfZW5kID4gbXJlY19lbmQpCj4gPiDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBicmVhazsKPgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRl
cgpTbyBtYXliZSBJIGNhbiB0cnkgdG8gcmVmYWN0b3IgdGhlc2UgY29kZXMuIEJ1dCBJIHdvbmRl
ciBpZiB0aGlzIGNhbiBiZQpkb25lIGluIGEgc2VwZXJhdGUgYnVnCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1EZXYgbWFpbGluZyBs
aXN0CkxpbnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
