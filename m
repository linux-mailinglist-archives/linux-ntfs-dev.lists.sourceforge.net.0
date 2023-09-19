Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D28F7A6F4E
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 01:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qijvm-00063B-EH;
	Tue, 19 Sep 2023 23:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <agruenba@redhat.com>) id 1qijCx-00020R-Bi
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9cF5FIFh22usSjm39Z5xoUee1aW1ZyPpmGmyoy2xhnY=; b=SWLrobHS6JZeD6F19tvSmXOQQx
 6WuOURf3IE7L1EThdrX8eQ4l6MxDvzkBKCbmWEQSNnWoRO6FwuA4w7EO3fC1H56EvuEmSgB9owVED
 HFpxd6+us/RCMNbVoRNpNBQ2tSTSCI+RPOHQ/emjSVAHTW7hK370eh4Z4YbyVHP21fPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9cF5FIFh22usSjm39Z5xoUee1aW1ZyPpmGmyoy2xhnY=; b=iV8XccGTHOVjm/tTOQKfYOqeq+
 MjtttOWTIdpWoaZ/kov9mwBMrhXzLJRrnStzIQtXLlT0zRxbt+wHIjn0urN/0n203TbskxEVUet1F
 IeIxnrrX9LS1FBoNzJ+q1ftkS4sDamzfmKduZMIW4P2n2pX3ANDIHd/Mop2NODjshwtQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qijCv-0004GM-VS for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 22:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695162512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9cF5FIFh22usSjm39Z5xoUee1aW1ZyPpmGmyoy2xhnY=;
 b=gdjePfiLYaj5E1li0cfkqDNx92o4DRV/au1ym3/Lgjuoxw6HWP1bCmmbHYgjrb4M+mzBB3
 73R0j21Hp70T2FdNcD3Krsj9U4dOwA8aUpL5COTGRDPN0kHKGU2UKSFrIOn/3laJJaiHIM
 qHDLoVN551zwI6VAwZwDLA2ouxNyogU=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-tBrGCPeSMseWbd9g39yhrg-1; Tue, 19 Sep 2023 18:28:31 -0400
X-MC-Unique: tBrGCPeSMseWbd9g39yhrg-1
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-1c5b80fe118so3422555ad.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Sep 2023 15:28:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695162510; x=1695767310;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9cF5FIFh22usSjm39Z5xoUee1aW1ZyPpmGmyoy2xhnY=;
 b=fx2d7ug26ZL8F52fmxER0uWduMqKJV3Il7SxTIVwv65aQbzSQIPsRyfDx3t7B2Lqke
 Rp7VdMp9XGl4AIxNgEnX9OE3ZvmMj/l+LXDg85DXH43gm2hpX9Xo0Kl6kLS6CEgehpt4
 DUva6TF90OevQdC+nQmR7aTg9v4dPdSjIwmjictJSfJn+TJqedceLcjPuzGoXhjx42EW
 7EI6KEhB4/e9HnYVdiM4g9y/c/VG1Hiszj4ZJOqTrIZN4fF6ihQeOoZco61wHhTSJGox
 mZRWQRBQU3R389gliCerQFqi06uyeDq1fxv9gHuymyWQ9yQzMrBHCZkPChOcJLzqXWRf
 nDXw==
X-Gm-Message-State: AOJu0YwvxVXNpvuPsHg+ksqWw2coaZOaCoX+chMFT7F59rlZaZZR7F/h
 xzyy54ukosqrhgTsCIqDE2FnXAaRP4q0rpF9pOJ83G9msPMR+nVpKgwzSGT5JOOeuE30oTAmHnA
 vt3MtfE1p0VaUJwJDRXS2zHRPUSv+TXp5ufl7xU2lcbTXP/dhIR8=
X-Received: by 2002:a17:902:da8f:b0:1bb:a522:909a with SMTP id
 j15-20020a170902da8f00b001bba522909amr986878plx.37.1695162510067; 
 Tue, 19 Sep 2023 15:28:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpbtgLZQnmIFpoycfoBrG7qrX9HqojmUsDe+wFjYsm20sUgmgqY2dFFCaMUztlbeAKetFEUenxQQWdQ1mbOy0=
X-Received: by 2002:a17:902:da8f:b0:1bb:a522:909a with SMTP id
 j15-20020a170902da8f00b001bba522909amr986862plx.37.1695162509799; Tue, 19 Sep
 2023 15:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-6-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-6-willy@infradead.org>
From: Andreas Gruenbacher <agruenba@redhat.com>
Date: Wed, 20 Sep 2023 00:28:18 +0200
Message-ID: <CAHc6FU7S8pC7yZETf9y0j2c+BS2QSK0370WoDcw+AwxLUgfobA@mail.gmail.com>
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
   <willy@infradead.org> wrote: > Use the folio APIs, removing numerous hidden
    calls to compound_head(). > Also remove the stale comment about th [...] 
 
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
X-Headers-End: 1qijCv-0004GM-VS
X-Mailman-Approved-At: Tue, 19 Sep 2023 23:14:56 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 05/26] gfs2: Convert inode unstuffing
 to use a folio
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
Cjx3aWxseUBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiBVc2UgdGhlIGZvbGlvIEFQSXMsIHJlbW92
aW5nIG51bWVyb3VzIGhpZGRlbiBjYWxscyB0byBjb21wb3VuZF9oZWFkKCkuCj4gQWxzbyByZW1v
dmUgdGhlIHN0YWxlIGNvbW1lbnQgYWJvdXQgdGhlIHBhZ2UgYmVpbmcgbG9va2VkIHVwIGlmIGl0
J3MgTlVMTC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgV2lsY294IChPcmFjbGUpIDx3aWxs
eUBpbmZyYWRlYWQub3JnPgo+IC0tLQo+ICBmcy9nZnMyL2JtYXAuYyB8IDQ4ICsrKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MjMgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMvZ2Zz
Mi9ibWFwLmMgYi9mcy9nZnMyL2JtYXAuYwo+IGluZGV4IGVmNzAxN2ZiNjk1MS4uMjQ3ZDJjMTY1
OTNjIDEwMDY0NAo+IC0tLSBhL2ZzL2dmczIvYm1hcC5jCj4gKysrIGIvZnMvZ2ZzMi9ibWFwLmMK
PiBAQCAtNDMsNTMgKzQzLDUxIEBAIHN0cnVjdCBtZXRhcGF0aCB7Cj4gIHN0YXRpYyBpbnQgcHVu
Y2hfaG9sZShzdHJ1Y3QgZ2ZzMl9pbm9kZSAqaXAsIHU2NCBvZmZzZXQsIHU2NCBsZW5ndGgpOwo+
Cj4gIC8qKgo+IC0gKiBnZnMyX3Vuc3R1ZmZlcl9wYWdlIC0gdW5zdHVmZiBhIHN0dWZmZWQgaW5v
ZGUgaW50byBhIGJsb2NrIGNhY2hlZCBieSBhIHBhZ2UKPiArICogZ2ZzMl91bnN0dWZmZXJfZm9s
aW8gLSB1bnN0dWZmIGEgc3R1ZmZlZCBpbm9kZSBpbnRvIGEgYmxvY2sgY2FjaGVkIGJ5IGEgZm9s
aW8KPiAgICogQGlwOiB0aGUgaW5vZGUKPiAgICogQGRpYmg6IHRoZSBkaW5vZGUgYnVmZmVyCj4g
ICAqIEBibG9jazogdGhlIGJsb2NrIG51bWJlciB0aGF0IHdhcyBhbGxvY2F0ZWQKPiAtICogQHBh
Z2U6IFRoZSAob3B0aW9uYWwpIHBhZ2UuIFRoaXMgaXMgbG9va2VkIHVwIGlmIEBwYWdlIGlzIE5V
TEwKPiArICogQGZvbGlvOiBUaGUgZm9saW8uCj4gICAqCj4gICAqIFJldHVybnM6IGVycm5vCj4g
ICAqLwo+IC0KPiAtc3RhdGljIGludCBnZnMyX3Vuc3R1ZmZlcl9wYWdlKHN0cnVjdCBnZnMyX2lu
b2RlICppcCwgc3RydWN0IGJ1ZmZlcl9oZWFkICpkaWJoLAo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1NjQgYmxvY2ssIHN0cnVjdCBwYWdlICpwYWdlKQo+ICtzdGF0aWMgaW50IGdm
czJfdW5zdHVmZmVyX2ZvbGlvKHN0cnVjdCBnZnMyX2lub2RlICppcCwgc3RydWN0IGJ1ZmZlcl9o
ZWFkICpkaWJoLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1NjQgYmxvY2ssIHN0
cnVjdCBmb2xpbyAqZm9saW8pCj4gIHsKPiAgICAgICAgIHN0cnVjdCBpbm9kZSAqaW5vZGUgPSAm
aXAtPmlfaW5vZGU7Cj4KPiAtICAgICAgIGlmICghUGFnZVVwdG9kYXRlKHBhZ2UpKSB7Cj4gLSAg
ICAgICAgICAgICAgIHZvaWQgKmthZGRyID0ga21hcChwYWdlKTsKPiArICAgICAgIGlmICghZm9s
aW9fdGVzdF91cHRvZGF0ZShmb2xpbykpIHsKPiArICAgICAgICAgICAgICAgdm9pZCAqa2FkZHIg
PSBrbWFwX2xvY2FsX2ZvbGlvKGZvbGlvLCAwKTsKPiAgICAgICAgICAgICAgICAgdTY0IGRzaXpl
ID0gaV9zaXplX3JlYWQoaW5vZGUpOwo+Cj4gICAgICAgICAgICAgICAgIG1lbWNweShrYWRkciwg
ZGliaC0+Yl9kYXRhICsgc2l6ZW9mKHN0cnVjdCBnZnMyX2Rpbm9kZSksIGRzaXplKTsKPiAtICAg
ICAgICAgICAgICAgbWVtc2V0KGthZGRyICsgZHNpemUsIDAsIFBBR0VfU0laRSAtIGRzaXplKTsK
PiAtICAgICAgICAgICAgICAga3VubWFwKHBhZ2UpOwo+ICsgICAgICAgICAgICAgICBtZW1zZXQo
a2FkZHIgKyBkc2l6ZSwgMCwgZm9saW9fc2l6ZShmb2xpbykgLSBkc2l6ZSk7Cj4gKyAgICAgICAg
ICAgICAgIGt1bm1hcF9sb2NhbChrYWRkcik7Cj4KPiAtICAgICAgICAgICAgICAgU2V0UGFnZVVw
dG9kYXRlKHBhZ2UpOwo+ICsgICAgICAgICAgICAgICBmb2xpb19tYXJrX3VwdG9kYXRlKGZvbGlv
KTsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgaWYgKGdmczJfaXNfamRhdGEoaXApKSB7Cj4gLSAg
ICAgICAgICAgICAgIHN0cnVjdCBidWZmZXJfaGVhZCAqYmg7Cj4gKyAgICAgICAgICAgICAgIHN0
cnVjdCBidWZmZXJfaGVhZCAqYmggPSBmb2xpb19idWZmZXJzKGZvbGlvKTsKPgo+IC0gICAgICAg
ICAgICAgICBpZiAoIXBhZ2VfaGFzX2J1ZmZlcnMocGFnZSkpCj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgY3JlYXRlX2VtcHR5X2J1ZmZlcnMocGFnZSwgQklUKGlub2RlLT5pX2Jsa2JpdHMpLAo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEJJVChCSF9VcHRv
ZGF0ZSkpOwo+ICsgICAgICAgICAgICAgICBpZiAoIWJoKQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGJoID0gZm9saW9fY3JlYXRlX2VtcHR5X2J1ZmZlcnMoZm9saW8sCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBCSVQoaW5vZGUtPmlfYmxrYml0cyksIEJJVChCSF9VcHRvZGF0
ZSkpOwo+Cj4gLSAgICAgICAgICAgICAgIGJoID0gcGFnZV9idWZmZXJzKHBhZ2UpOwo+ICAgICAg
ICAgICAgICAgICBpZiAoIWJ1ZmZlcl9tYXBwZWQoYmgpKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIG1hcF9iaChiaCwgaW5vZGUtPmlfc2IsIGJsb2NrKTsKPgo+ICAgICAgICAgICAgICAgICBz
ZXRfYnVmZmVyX3VwdG9kYXRlKGJoKTsKPiAgICAgICAgICAgICAgICAgZ2ZzMl90cmFuc19hZGRf
ZGF0YShpcC0+aV9nbCwgYmgpOwo+ICAgICAgICAgfSBlbHNlIHsKPiAtICAgICAgICAgICAgICAg
c2V0X3BhZ2VfZGlydHkocGFnZSk7Cj4gKyAgICAgICAgICAgICAgIGZvbGlvX21hcmtfZGlydHko
Zm9saW8pOwo+ICAgICAgICAgICAgICAgICBnZnMyX29yZGVyZWRfYWRkX2lub2RlKGlwKTsKPiAg
ICAgICAgIH0KPgo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IC1zdGF0aWMgaW50IF9fZ2Zz
Ml91bnN0dWZmX2lub2RlKHN0cnVjdCBnZnMyX2lub2RlICppcCwgc3RydWN0IHBhZ2UgKnBhZ2Up
Cj4gK3N0YXRpYyBpbnQgX19nZnMyX3Vuc3R1ZmZfaW5vZGUoc3RydWN0IGdmczJfaW5vZGUgKmlw
LCBzdHJ1Y3QgZm9saW8gKmZvbGlvKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgYnVmZmVyX2hlYWQg
KmJoLCAqZGliaDsKPiAgICAgICAgIHN0cnVjdCBnZnMyX2Rpbm9kZSAqZGk7Cj4gQEAgLTExOCw3
ICsxMTYsNyBAQCBzdGF0aWMgaW50IF9fZ2ZzMl91bnN0dWZmX2lub2RlKHN0cnVjdCBnZnMyX2lu
b2RlICppcCwgc3RydWN0IHBhZ2UgKnBhZ2UpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGRpYmgsIHNpemVvZihzdHJ1Y3QgZ2ZzMl9kaW5vZGUpKTsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICBicmVsc2UoYmgpOwo+ICAgICAgICAgICAgICAgICB9IGVs
c2Ugewo+IC0gICAgICAgICAgICAgICAgICAgICAgIGVycm9yID0gZ2ZzMl91bnN0dWZmZXJfcGFn
ZShpcCwgZGliaCwgYmxvY2ssIHBhZ2UpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGVycm9y
ID0gZ2ZzMl91bnN0dWZmZXJfZm9saW8oaXAsIGRpYmgsIGJsb2NrLCBmb2xpbyk7Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKGVycm9yKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZ290byBvdXRfYnJlbHNlOwo+ICAgICAgICAgICAgICAgICB9Cj4gQEAgLTE1NywxNyAr
MTU1LDE3IEBAIHN0YXRpYyBpbnQgX19nZnMyX3Vuc3R1ZmZfaW5vZGUoc3RydWN0IGdmczJfaW5v
ZGUgKmlwLCBzdHJ1Y3QgcGFnZSAqcGFnZSkKPiAgaW50IGdmczJfdW5zdHVmZl9kaW5vZGUoc3Ry
dWN0IGdmczJfaW5vZGUgKmlwKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaW5vZGUgKmlub2RlID0g
JmlwLT5pX2lub2RlOwo+IC0gICAgICAgc3RydWN0IHBhZ2UgKnBhZ2U7Cj4gKyAgICAgICBzdHJ1
Y3QgZm9saW8gKmZvbGlvOwo+ICAgICAgICAgaW50IGVycm9yOwo+Cj4gICAgICAgICBkb3duX3dy
aXRlKCZpcC0+aV9yd19tdXRleCk7Cj4gLSAgICAgICBwYWdlID0gZ3JhYl9jYWNoZV9wYWdlKGlu
b2RlLT5pX21hcHBpbmcsIDApOwo+IC0gICAgICAgZXJyb3IgPSAtRU5PTUVNOwo+IC0gICAgICAg
aWYgKCFwYWdlKQo+ICsgICAgICAgZm9saW8gPSBmaWxlbWFwX2dyYWJfZm9saW8oaW5vZGUtPmlf
bWFwcGluZywgMCk7Cj4gKyAgICAgICBlcnJvciA9IFBUUl9FUlIoZm9saW8pOwo+ICsgICAgICAg
aWYgKElTX0VSUihmb2xpbykpCj4gICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+IC0gICAgICAg
ZXJyb3IgPSBfX2dmczJfdW5zdHVmZl9pbm9kZShpcCwgcGFnZSk7Cj4gLSAgICAgICB1bmxvY2tf
cGFnZShwYWdlKTsKPiAtICAgICAgIHB1dF9wYWdlKHBhZ2UpOwo+ICsgICAgICAgZXJyb3IgPSBf
X2dmczJfdW5zdHVmZl9pbm9kZShpcCwgZm9saW8pOwo+ICsgICAgICAgZm9saW9fdW5sb2NrKGZv
bGlvKTsKPiArICAgICAgIGZvbGlvX3B1dChmb2xpbyk7Cj4gIG91dDoKPiAgICAgICAgIHVwX3dy
aXRlKCZpcC0+aV9yd19tdXRleCk7Cj4gICAgICAgICByZXR1cm4gZXJyb3I7Cj4gLS0KPiAyLjQw
LjEKPgoKUmV2aWV3ZWQtYnk6IEFuZHJlYXMgR3J1ZW5iYWNoZXIgPGFncnVlbmJhQHJlZGhhdC5j
b20+CgpUaGFua3MsCkFuZHJlYXMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4LW50ZnMtZGV2
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
