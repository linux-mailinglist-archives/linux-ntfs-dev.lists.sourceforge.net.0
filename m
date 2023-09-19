Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ABE7A6F4D
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 01:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qijvm-000636-61;
	Tue, 19 Sep 2023 23:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <agruenba@redhat.com>) id 1qijBv-0003aF-4x
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:27:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ji3zY74AAdaK/amC610EHUTsu6YY14D+u0Ic8yX0wF0=; b=OMdRos4/qLQHY2t3u5XyOWYooT
 n+sca2JuPgudZSZDScrt70sg7PX18+noMz3SEAr1TCE4zo/62fiW5d2tgOvH27Eb3bCoXm+pcRHIx
 u+yEvAA53BCsoyLF8lL6ySOU8AjtECvPhir3z4vqGQSZ/4eDAX/kmI5JMFFBS2OOSv00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ji3zY74AAdaK/amC610EHUTsu6YY14D+u0Ic8yX0wF0=; b=Dxhjclq7HfQdN2khPL4WrDf5rs
 tbCNdZGQ+QXZOOgdJ6pCKhE8r+cfpKaQaZ26sArF42gsPCyfV/n3F3FmVHHaqpDDE0kHYtJh6vy7v
 s/VWWy9/4J4KeZDXV0zQfjO9IJ9N81S6a1NKzXM8qi4KbiABHNZC+R8ls7A8DoCI+Mho=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qijBp-00047v-8E for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:27:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695162443;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ji3zY74AAdaK/amC610EHUTsu6YY14D+u0Ic8yX0wF0=;
 b=JIKpQWfA49zpIKNtrg5Aph4lwwQGKJyFRgdwxUCJ0InrRAD5FWx1T+ciJE1C8hKiRHPv3P
 N4I9EzBRdj1TpDKuIhQtdk3XTLExEikRFq8LiUw3hM3kL2ErxwOpVSdhFTxsy736+LLqjC
 uqBPqkyvq/H6WeXWITbuZLE5MbqQvm4=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-286-Mhs0kQEiOGS34ghDIpw9IQ-1; Tue, 19 Sep 2023 18:27:21 -0400
X-MC-Unique: Mhs0kQEiOGS34ghDIpw9IQ-1
Received: by mail-pg1-f198.google.com with SMTP id
 41be03b00d2f7-5703b4e92b7so4588847a12.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 15:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695162440; x=1695767240;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Ji3zY74AAdaK/amC610EHUTsu6YY14D+u0Ic8yX0wF0=;
 b=K4dUPYs/NIfeu1RVYsR2u+wRlFJWDm9WuDrnhiJTZPMDgL3ecFCETOQsty3qdnd2Ie
 2mD1khZdpqCzUznskzeUohWBy5Dlqf94JKtUUeH5LGFzEIYFzKHEpPXksmrnfohzUwre
 g5Y/8DN0PsEUUTXiFK10gHDxFH0+VmWnouofg7YF2umzxdf1mw4N+Gx/KlSuXG/zDEBa
 CMxwXpFIzXPyH657x1Xck3XAweeSQsA8Lb0RMqCv792sw0WBcUAOKc1ds3/4Kv2uBXAN
 6Aict58y9qFXpDoQvjW/3dtrUVVFvrO7E0F5p7aFv5zdW1geW/ToxxB/Vj326B19ZwBB
 qS1w==
X-Gm-Message-State: AOJu0YzNhnWx2VHABs5fpjYgjTKGlVxxhDewfIeB+Z7lHYVydK3EOHdi
 jZwoyJ3c0iJ0sJ5hQ48vrzaPyiaetb8bgMVuqaOb7YlWeqUwEyzjJQTInvSkpm56Z2HmjvTyKhu
 PPHCdSQ/+eq1b1wiuixM4e8Ea8giecTVr7FlOvVtZ/iV/ul7X/7o=
X-Received: by 2002:a05:6a21:7895:b0:13d:5b8e:db83 with SMTP id
 bf21-20020a056a21789500b0013d5b8edb83mr970434pzc.9.1695162440764; 
 Tue, 19 Sep 2023 15:27:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvdFAMQ3u88UkWAe1LyDTaTZ9DZaFRmPuZojxyrc2071D47l1IiQLEM8pi3uRxKzn4ewwGY98liyEB7kMo1sI=
X-Received: by 2002:a05:6a21:7895:b0:13d:5b8e:db83 with SMTP id
 bf21-20020a056a21789500b0013d5b8edb83mr970415pzc.9.1695162440533; Tue, 19 Sep
 2023 15:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-8-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-8-willy@infradead.org>
From: Andreas Gruenbacher <agruenba@redhat.com>
Date: Wed, 20 Sep 2023 00:27:08 +0200
Message-ID: <CAHc6FU4-RSAsc-LWw2OuLDecofapd30OZhxyjVKLXzJNwh-ZoA@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Thanks, but this patch has an unwanted semicolon in the subject.
    On Tue, Sep 19, 2023 at 7:00 AM Matthew Wilcox (Oracle) <willy@infradead.org>
    wrote: > > Use the folio APIs, saving four hidden calls to compound_head().
    > > Signed-off-by: Matthew Wilcox (Oracle) < [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [170.10.133.124 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qijBp-00047v-8E
X-Mailman-Approved-At: Tue, 19 Sep 2023 23:14:56 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 07/26] gfs2;
 Convert gfs2_getjdatabuf to use a folio
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

VGhhbmtzLAoKYnV0IHRoaXMgcGF0Y2ggaGFzIGFuIHVud2FudGVkIHNlbWljb2xvbiBpbiB0aGUg
c3ViamVjdC4KCk9uIFR1ZSwgU2VwIDE5LCAyMDIzIGF0IDc6MDDigK9BTSBNYXR0aGV3IFdpbGNv
eCAoT3JhY2xlKQo8d2lsbHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4KPiBVc2UgdGhlIGZvbGlv
IEFQSXMsIHNhdmluZyBmb3VyIGhpZGRlbiBjYWxscyB0byBjb21wb3VuZF9oZWFkKCkuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IFdpbGNveCAoT3JhY2xlKSA8d2lsbHlAaW5mcmFkZWFkLm9y
Zz4KPiAtLS0KPiAgZnMvZ2ZzMi9tZXRhX2lvLmMgfCAyMiArKysrKysrKy0tLS0tLS0tLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2ZzL2dmczIvbWV0YV9pby5jIGIvZnMvZ2ZzMi9tZXRhX2lvLmMKPiBpbmRl
eCBmMWZhYzFiNDUwNTkuLmIyODE5NjAxNTU0MyAxMDA2NDQKPiAtLS0gYS9mcy9nZnMyL21ldGFf
aW8uYwo+ICsrKyBiL2ZzL2dmczIvbWV0YV9pby5jCj4gQEAgLTQwMCwyNiArNDAwLDIwIEBAIHN0
YXRpYyBzdHJ1Y3QgYnVmZmVyX2hlYWQgKmdmczJfZ2V0amRhdGFidWYoc3RydWN0IGdmczJfaW5v
ZGUgKmlwLCB1NjQgYmxrbm8pCj4gIHsKPiAgICAgICAgIHN0cnVjdCBhZGRyZXNzX3NwYWNlICpt
YXBwaW5nID0gaXAtPmlfaW5vZGUuaV9tYXBwaW5nOwo+ICAgICAgICAgc3RydWN0IGdmczJfc2Jk
ICpzZHAgPSBHRlMyX1NCKCZpcC0+aV9pbm9kZSk7Cj4gLSAgICAgICBzdHJ1Y3QgcGFnZSAqcGFn
ZTsKPiArICAgICAgIHN0cnVjdCBmb2xpbyAqZm9saW87Cj4gICAgICAgICBzdHJ1Y3QgYnVmZmVy
X2hlYWQgKmJoOwo+ICAgICAgICAgdW5zaWduZWQgaW50IHNoaWZ0ID0gUEFHRV9TSElGVCAtIHNk
cC0+c2Rfc2Iuc2JfYnNpemVfc2hpZnQ7Cj4gICAgICAgICB1bnNpZ25lZCBsb25nIGluZGV4ID0g
Ymxrbm8gPj4gc2hpZnQ7IC8qIGNvbnZlcnQgYmxvY2sgdG8gcGFnZSAqLwo+ICAgICAgICAgdW5z
aWduZWQgaW50IGJ1Zm51bSA9IGJsa25vIC0gKGluZGV4IDw8IHNoaWZ0KTsKPgo+IC0gICAgICAg
cGFnZSA9IGZpbmRfZ2V0X3BhZ2VfZmxhZ3MobWFwcGluZywgaW5kZXgsIEZHUF9MT0NLfEZHUF9B
Q0NFU1NFRCk7Cj4gLSAgICAgICBpZiAoIXBhZ2UpCj4gLSAgICAgICAgICAgICAgIHJldHVybiBO
VUxMOwo+IC0gICAgICAgaWYgKCFwYWdlX2hhc19idWZmZXJzKHBhZ2UpKSB7Cj4gLSAgICAgICAg
ICAgICAgIHVubG9ja19wYWdlKHBhZ2UpOwo+IC0gICAgICAgICAgICAgICBwdXRfcGFnZShwYWdl
KTsKPiArICAgICAgIGZvbGlvID0gX19maWxlbWFwX2dldF9mb2xpbyhtYXBwaW5nLCBpbmRleCwg
RkdQX0xPQ0sgfCBGR1BfQUNDRVNTRUQsIDApOwo+ICsgICAgICAgaWYgKElTX0VSUihmb2xpbykp
Cj4gICAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+IC0gICAgICAgfQo+IC0gICAgICAgLyog
TG9jYXRlIGhlYWRlciBmb3Igb3VyIGJ1ZmZlciB3aXRoaW4gb3VyIHBhZ2UgKi8KPiAtICAgICAg
IGZvciAoYmggPSBwYWdlX2J1ZmZlcnMocGFnZSk7IGJ1Zm51bS0tOyBiaCA9IGJoLT5iX3RoaXNf
cGFnZSkKPiAtICAgICAgICAgICAgICAgLyogRG8gbm90aGluZyAqLzsKPiAtICAgICAgIGdldF9i
aChiaCk7Cj4gLSAgICAgICB1bmxvY2tfcGFnZShwYWdlKTsKPiAtICAgICAgIHB1dF9wYWdlKHBh
Z2UpOwo+ICsgICAgICAgYmggPSBmb2xpb19idWZmZXJzKGZvbGlvKTsKPiArICAgICAgIGlmIChi
aCkKPiArICAgICAgICAgICAgICAgZ2V0X250aF9iaChiaCwgYnVmbnVtKTsKCkFuZCB3ZSBuZWVk
IHRoaXMgaGVyZToKCiAgICBiaCA9IGdldF9udGhfYmgoYmgsIGJ1Zm51bSk7Cgo+ICsgICAgICAg
Zm9saW9fdW5sb2NrKGZvbGlvKTsKPiArICAgICAgIGZvbGlvX3B1dChmb2xpbyk7Cj4gICAgICAg
ICByZXR1cm4gYmg7Cj4gIH0KPgo+IC0tCj4gMi40MC4xCj4KPgoKUmV2aWV3ZWQtYnk6IEFuZHJl
YXMgR3J1ZW5iYWNoZXIgPGFncnVlbmJhQHJlZGhhdC5jb20+CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW50ZnMtZGV2IG1haWxpbmcgbGlz
dApMaW51eC1udGZzLWRldkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgtbnRmcy1kZXYK
