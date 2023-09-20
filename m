Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3577A7547
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 10:06:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qisDh-0008AK-E3;
	Wed, 20 Sep 2023 08:06:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qirbG-0000nW-8N
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 07:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LQu/iPxRaWTK1rhHGERjdyj3zLGL4cZdjE4RNeJI6UE=; b=A0qNGxVUuftkJ8E4QQBq6oV+C7
 wYoCXctkv0FwzYV76J8wx2wWXsLicMPlO6+lZR8cgsy+fV30Ne7pfsicf27da4aoYkwdtsdBjRn/y
 sttxm1h7soi5hoCevt8mRlS/JH5r6pVTZvf6oT+llMTQ4Mx5U+S3uekliMHvCGem6uBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LQu/iPxRaWTK1rhHGERjdyj3zLGL4cZdjE4RNeJI6UE=; b=CkMwHspjduJP0WKkN82E4eg9eS
 GwU4QKlyZKJxrblGrLPx+vgbmVw0hJkwMbE9DpEnQZYwkXigsY2uPuZwYm4+MzoEGADOjdnwa5Of9
 QrxjwqXPEH715lYDg0aOqOF8vpQKFfzkYRagdt5pDg/2rdO8scKN44rRe1og8zUp4ras=;
Received: from mail-ua1-f41.google.com ([209.85.222.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qirbF-00GGWT-Jw for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 07:26:18 +0000
Received: by mail-ua1-f41.google.com with SMTP id
 a1e0cc1a2514c-7a7857e5290so2423907241.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 00:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695194771; x=1695799571; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LQu/iPxRaWTK1rhHGERjdyj3zLGL4cZdjE4RNeJI6UE=;
 b=CNamm4yJFa7qP6X7P0qpiv+Y9ZhiUlF9o63e6rghTXQKYDnpLSGgZOf3fCt/PMLQ5Y
 p/XNoSOO5yYEWaAETNufALIbv2rxKmtrVUGAkQGt11kxa3oUgN0hHupQc1b84FFV0BEW
 N36CVfD2UkbN2rDHGO8ESAAoWS9bpae5Y8jziJp7NP5S5NEAEnANc85BGA5zp/4+CV5B
 R9nZfz+siGCKmxOUQquESZJ5hwu4GiqYCgEnb9+l+kO7+7WvFWSK2w+1lz8K0pJ5c3zJ
 C8PcX+HXsVBA0T7GA9WfMKyYGqWaHhq8UecEivypMmQ1hlFHM1aBhhYAxynB0ZVH+9rP
 CDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695194771; x=1695799571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LQu/iPxRaWTK1rhHGERjdyj3zLGL4cZdjE4RNeJI6UE=;
 b=tt/kkcpVF62AvHM4a3BtMg9A+ZZGFafTwwmnn04jmZpKnOYBRJpJ9C+d5SMNHicfxL
 WueL3jkwPFOGyN5LTu14MrtaSeZHbHeSd+9GmdycvKH2qOOMlZSQP5ROTYvh6495mzCd
 VcBF7oZRKjfH23Bago8IMQmqFxWjVK9Mo2HC/EUzREyB7lMiU8phEHAlVEHISEtqHs1u
 mVlAFyJI+7BXQMMCO9GHcKnKoxlmky1mP8CdysTItfoArHnkd2uru9bxGdF0xRociAgn
 u+mF+q9EwqyfDkK0Q7gsHCrc/JS1wFTIVYiO8JF43QV2cRCz7bReUPCEZ5GGJ5We8KFK
 O3NA==
X-Gm-Message-State: AOJu0YxNjK1FdP/GY+OFxq39vLUXsZMfaQ4XuNDCrJY5H5+4QgeJBoA/
 lcJgOYD3n8hbVZTq29qTO0zEHhec/c3QcbqhgckofL/jvpmgCg==
X-Google-Smtp-Source: AGHT+IFQlFeFAcKAQ7LPppd3w6KDWjLwNbdHXda8Z23QhXjgisZYRRlc9Mek2KJpmLRFy8U78oSpyqfwiEocIqQmsWU=
X-Received: by 2002:a1f:e043:0:b0:495:e530:5155 with SMTP id
 x64-20020a1fe043000000b00495e5305155mr1981897vkg.3.1695194771638; Wed, 20 Sep
 2023 00:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-13-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-13-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 16:25:55 +0900
Message-ID: <CAKFNMokf=ucSpitwt2sF-nBPJPfL02MmorwXvdcw_h1zEoB7BA@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 3:04 PM Matthew Wilcox (Oracle)
   wrote: > > Remove a number of folio->page->folio conversions. > > Signed-off-by:
    Matthew Wilcox (Oracle) > --- > fs/nilfs2/mdt.c | 30 ++++++ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1qirbF-00GGWT-Jw
X-Mailman-Approved-At: Wed, 20 Sep 2023 08:05:58 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 12/26] nilfs2: Convert
 nilfs_mdt_forget_block() to use a folio
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgMzowNOKAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gUmVtb3ZlIGEgbnVtYmVyIG9mIGZvbGlvLT5wYWdlLT5mb2xpbyBjb252ZXJz
aW9ucy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxseUBp
bmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9uaWxmczIvbWR0LmMgfCAzMCArKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzL25pbGZzMi9tZHQuYyBiL2ZzL25pbGZz
Mi9tZHQuYwo+IGluZGV4IGRiMjI2MGQ2ZTQ0ZC4uMTFiN2NmNGFjYzkyIDEwMDY0NAo+IC0tLSBh
L2ZzL25pbGZzMi9tZHQuYwo+ICsrKyBiL2ZzL25pbGZzMi9tZHQuYwo+IEBAIC0zNTYsMzAgKzM1
NiwyOCBAQCBpbnQgbmlsZnNfbWR0X2RlbGV0ZV9ibG9jayhzdHJ1Y3QgaW5vZGUgKmlub2RlLCB1
bnNpZ25lZCBsb25nIGJsb2NrKQo+ICAgKi8KPiAgaW50IG5pbGZzX21kdF9mb3JnZXRfYmxvY2so
c3RydWN0IGlub2RlICppbm9kZSwgdW5zaWduZWQgbG9uZyBibG9jaykKPiAgewo+IC0gICAgICAg
cGdvZmZfdCBpbmRleCA9IChwZ29mZl90KWJsb2NrID4+Cj4gLSAgICAgICAgICAgICAgIChQQUdF
X1NISUZUIC0gaW5vZGUtPmlfYmxrYml0cyk7Cj4gLSAgICAgICBzdHJ1Y3QgcGFnZSAqcGFnZTsK
PiAtICAgICAgIHVuc2lnbmVkIGxvbmcgZmlyc3RfYmxvY2s7Cj4gKyAgICAgICBwZ29mZl90IGlu
ZGV4ID0gYmxvY2sgPj4gKFBBR0VfU0hJRlQgLSBpbm9kZS0+aV9ibGtiaXRzKTsKPiArICAgICAg
IHN0cnVjdCBmb2xpbyAqZm9saW87Cj4gKyAgICAgICBzdHJ1Y3QgYnVmZmVyX2hlYWQgKmJoOwo+
ICAgICAgICAgaW50IHJldCA9IDA7Cj4gICAgICAgICBpbnQgc3RpbGxfZGlydHk7Cj4KPiAtICAg
ICAgIHBhZ2UgPSBmaW5kX2xvY2tfcGFnZShpbm9kZS0+aV9tYXBwaW5nLCBpbmRleCk7Cj4gLSAg
ICAgICBpZiAoIXBhZ2UpCj4gKyAgICAgICBmb2xpbyA9IGZpbGVtYXBfbG9ja19mb2xpbyhpbm9k
ZS0+aV9tYXBwaW5nLCBpbmRleCk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGZvbGlvKSkKPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4KPiAtICAgICAgIHdhaXRfb25fcGFnZV93cml0
ZWJhY2socGFnZSk7Cj4gKyAgICAgICBmb2xpb193YWl0X3dyaXRlYmFjayhmb2xpbyk7Cj4KPiAt
ICAgICAgIGZpcnN0X2Jsb2NrID0gKHVuc2lnbmVkIGxvbmcpaW5kZXggPDwKPiAtICAgICAgICAg
ICAgICAgKFBBR0VfU0hJRlQgLSBpbm9kZS0+aV9ibGtiaXRzKTsKPiAtICAgICAgIGlmIChwYWdl
X2hhc19idWZmZXJzKHBhZ2UpKSB7Cj4gLSAgICAgICAgICAgICAgIHN0cnVjdCBidWZmZXJfaGVh
ZCAqYmg7Cj4gLQo+IC0gICAgICAgICAgICAgICBiaCA9IG5pbGZzX3BhZ2VfZ2V0X250aF9ibG9j
ayhwYWdlLCBibG9jayAtIGZpcnN0X2Jsb2NrKTsKPiArICAgICAgIGJoID0gZm9saW9fYnVmZmVy
cyhmb2xpbyk7Cj4gKyAgICAgICBpZiAoYmgpIHsKPiArICAgICAgICAgICAgICAgdW5zaWduZWQg
bG9uZyBmaXJzdF9ibG9jayA9IGluZGV4IDw8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAoUEFHRV9TSElGVCAtIGlub2RlLT5pX2Jsa2JpdHMpOwo+ICsgICAgICAgICAgICAgICBi
aCA9IGdldF9udGhfYmgoYmgsIGJsb2NrIC0gZmlyc3RfYmxvY2spOwo+ICAgICAgICAgICAgICAg
ICBuaWxmc19mb3JnZXRfYnVmZmVyKGJoKTsKPiAgICAgICAgIH0KPiAtICAgICAgIHN0aWxsX2Rp
cnR5ID0gUGFnZURpcnR5KHBhZ2UpOwo+IC0gICAgICAgdW5sb2NrX3BhZ2UocGFnZSk7Cj4gLSAg
ICAgICBwdXRfcGFnZShwYWdlKTsKPiArICAgICAgIHN0aWxsX2RpcnR5ID0gZm9saW9fdGVzdF9k
aXJ0eShmb2xpbyk7Cj4gKyAgICAgICBmb2xpb191bmxvY2soZm9saW8pOwo+ICsgICAgICAgZm9s
aW9fcHV0KGZvbGlvKTsKPgo+ICAgICAgICAgaWYgKHN0aWxsX2RpcnR5IHx8Cj4gICAgICAgICAg
ICAgaW52YWxpZGF0ZV9pbm9kZV9wYWdlczJfcmFuZ2UoaW5vZGUtPmlfbWFwcGluZywgaW5kZXgs
IGluZGV4KSAhPSAwKQo+IC0tCj4gMi40MC4xCj4KCkFja2VkLWJ5OiBSeXVzdWtlIEtvbmlzaGkg
PGtvbmlzaGkucnl1c3VrZUBnbWFpbC5jb20+CgpMb29rcyBnb29kIHRvIG1lLgoKVGhhbmtzLApS
eXVzdWtlIEtvbmlzaGkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udGZzLWRldiBtYWlsaW5nIGxpc3QKTGludXgtbnRmcy1kZXZAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2xpbnV4LW50ZnMtZGV2Cg==
