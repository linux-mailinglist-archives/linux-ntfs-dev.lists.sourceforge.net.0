Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C093A5A3F91
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 28 Aug 2022 22:09:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oSObC-00075V-Ta;
	Sun, 28 Aug 2022 20:09:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oSKxL-0007FK-Sn
 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 28 Aug 2022 16:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zJ58IbUxUfHQZ1l1Y+m3svyB3b0AMVU5Fh++cHS+4ec=; b=jeA5xXf8y3te8EHy4+Oo2Whdl3
 QxiH7qhEjjLfsgCyY33CIYtQ86kuOhkVQAJwGJ4cDQ5DcISVVxvNVK92D5ec5xALUayY63Tl+R2ih
 DwN7157w4EKmwy8l+mXlx99SncpQ5LVtcddPmTRp0XbDsTNT1ZSQr1e9RFdjJaUnGGYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zJ58IbUxUfHQZ1l1Y+m3svyB3b0AMVU5Fh++cHS+4ec=; b=MAz7HBuuL5NGCw3EULx7X4iw6C
 rlV25olefR8SH9ZItgpGbUcFk4K0EDHojOhhT/2s0NoV2jVkB4jJBC31tqQH3m3Y0/7kFWH82N7zF
 drzDgO5A7zYmYs2btznVxmGkb3FZszt6cyCgC/NwkjSoQAKm9Dao8kdxT0Lzjf44kADk=;
Received: from mail-pj1-f42.google.com ([209.85.216.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oSKxC-0001sE-Ft for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 28 Aug 2022 16:16:07 +0000
Received: by mail-pj1-f42.google.com with SMTP id
 z3-20020a17090abd8300b001fd803e34f1so3808769pjr.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 28 Aug 2022 09:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=zJ58IbUxUfHQZ1l1Y+m3svyB3b0AMVU5Fh++cHS+4ec=;
 b=WuBVTtVP2LABsmV48efXcFwxaXdc55lU8gWcRpaDpqcOkhekYrnTJsZdvHkK22Ci8V
 6vzElzsJ2PR9A89mOTQaaud0Lu9Vd+7njPZw2kvOWtRRwHzG3i/X+e+uV3UIT8D1NUFq
 lgn073uJZvuI773OJiDTRuh279wJ4BUCFMImlDONWqAGmKhBoEe+1prFZA8A9GFRx4wZ
 hGAHNozIHkpIj/jnPjLEG1l5HdcBJPoa5hCFScqEhxxUyhPE1r9JUvBbYm+6uSuanw03
 7PQRAh2EG3nNVKvCoYsQKuEiyG59TxHezkbPXYn5XGhD+9pb3IAtA48N0oaAtq4sTE/w
 2HnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=zJ58IbUxUfHQZ1l1Y+m3svyB3b0AMVU5Fh++cHS+4ec=;
 b=IFw4liAuL1YYvKYcSjiY3Cu6jZdmIg3ALBi/HYCirotIH1+YteQ8wQQWr/xA66RFjL
 2geGf5n/4eQqai/R+0aHMrBcjMJEFc1qYlVkCu3jdakE6EBw7lecRvpF65E+JHYINu22
 J6OvYNeLyv75lONjC1xnv1TwEFLrjQT71BJDzHAfBby93tqK7/CDF0dhJQ+KABESFoi3
 hga1aLWEpUNyhM05B4wbKTQgUx3IhebC6b/DXbVe8RQmnRVWU6/romzOv0TsU/P12UqY
 N1vHf9uCKiUPXoelV6MqgNvgRHkb8hLDLQ77RfplCJf7GB1B1CElnaEdd8lgFwTxGhMi
 73dw==
X-Gm-Message-State: ACgBeo0IDlO5mjsV9x671lgl5gSZGoU6g0G/44W8LKpAHFNvWnt20QCe
 HZJZCXgUFpfiOoFsIXWZrrR/HmYUWv8r/i7B
X-Google-Smtp-Source: AA6agR7YxRhxLB0cWsbupFoE/I9EfryO9AnHusPSztq9FIJchsOYA5b2YMBcDndwngcAKxO2Hje+EA==
X-Received: by 2002:a17:902:e851:b0:172:dda3:77d3 with SMTP id
 t17-20020a170902e85100b00172dda377d3mr12574751plg.19.1661703360860; 
 Sun, 28 Aug 2022 09:16:00 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 u17-20020a627911000000b00536b975b013sm5422879pfc.24.2022.08.28.09.15.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Aug 2022 09:16:00 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: dan.carpenter@oracle.com
Date: Mon, 29 Aug 2022 00:15:52 +0800
Message-Id: <20220828161552.3651-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220827105842.GM2030@kadam>
References: <20220827105842.GM2030@kadam>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 27 Aug 2022 at 18:59, Dan Carpenter wrote: > > On
 Sat, Aug 27, 2022 at 05:02:31PM +0800, Hawkins Jiawei wrote: > > On Sat, 27
 Aug 2022 at 14:42, Dan Carpenter wrote: > > > > > > On Fri, Au [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.42 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oSKxC-0001sE-Ft
X-Mailman-Approved-At: Sun, 28 Aug 2022 20:09:36 +0000
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

T24gU2F0LCAyNyBBdWcgMjAyMiBhdCAxODo1OSwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgQXVnIDI3LCAyMDIyIGF0IDA1OjAyOjMx
UE0gKzA4MDAsIEhhd2tpbnMgSmlhd2VpIHdyb3RlOgo+ID4gT24gU2F0LCAyNyBBdWcgMjAyMiBh
dCAxNDo0MiwgRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiB3cm90ZToK
PiA+ID4KPiA+ID4gT24gRnJpLCBBdWcgMjYsIDIwMjIgYXQgMTE6NDI6MzJQTSArMDgwMCwgSGF3
a2lucyBKaWF3ZWkgd3JvdGU6Cj4gPiA+ID4gT24gRnJpLCAyNiBBdWcgMjAyMiBhdCAyMzoxNSwg
RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPiB3cm90ZToKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBPbiBGcmksIEF1ZyAyNiwgMjAyMiBhdCAwODozMjo1N1BNICswODAwLCBIYXdr
aW5zIEppYXdlaSB3cm90ZToKPiA+ID4gPiA+ID4gPiBzeXogdGVzdCBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQgwqAgwqAg
bWFzdGVyCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBMb29rcyBsaWtlIGl0IGlzIGltcHJv
cGVyIGNoZWNrIG9yZGVyIHRoYXQgY2F1c2VzIHRoaXMgYnVnLgo+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiBTb3JyeSBmb3Igd3JvbmcgY29tbWFuZC4KPiA+ID4gPiA+ID4gI3N5eiB0ZXN0IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdCDCoCDCoCBtYXN0ZXIKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2Zz
L250ZnMvYXR0cmliLmMgYi9mcy9udGZzL2F0dHJpYi5jCj4gPiA+ID4gPiA+IGluZGV4IDUyNjE1
ZTYwOTBlMS4uNjQ4MGNkMmQzNzFkIDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9mcy9udGZzL2F0
dHJpYi5jCj4gPiA+ID4gPiA+ICsrKyBiL2ZzL250ZnMvYXR0cmliLmMKPiA+ID4gPiA+ID4gQEAg
LTU5NCwxMCArNTk0LDExIEBAIHN0YXRpYyBpbnQgbnRmc19hdHRyX2ZpbmQoY29uc3QgQVRUUl9U
WVBFIHR5cGUsIGNvbnN0IG50ZnNjaGFyICpuYW1lLAo+ID4gPiA+ID4gPiDCoCDCoCDCoCBmb3Ig
KDs7IGEgPSAoQVRUUl9SRUNPUkQqKSgodTgqKWEgKyBsZTMyX3RvX2NwdShhLT5sZW5ndGgpKSkg
ewo+ID4gPiA+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1OCAqbXJlY19lbmQgPSAodTggKilj
dHgtPm1yZWMgKwo+ID4gPiA+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGxlMzJfdG9fY3B1KGN0eC0+bXJlYy0+Ynl0ZXNfYWxsb2NhdGVkKTsKPiA+ID4g
PiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCBpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMgfHwg
KHU4KilhID4gbXJlY19lbmQpCj4gPiA+ID4gPiA+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgYnJlYWs7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhpcyBkZWZpbml0ZWx5IHNlZW1zIGxp
a2UgYSBidWcuIMKgQnV0IHlvdXIgY29kZSB3b24ndCBidWlsZC4gwqBTeXpib3QKPiA+ID4gPiA+
IG11c3QgaGF2ZSAtV2Vycm9yIHR1cm5lZCBvZmY/Cj4gPiA+ID4gSGkgRGFuLAo+ID4gPiA+IERp
ZCB5b3UgbWVhbiB3ZSBzaG91bGQgcHV0IHRoZSB2YXJpYWJsZSBkZWNsYXJlcyBhdCB0aGUgYmVn
aW5uaW5nIG9mIHRoZSBmdW5jdGlvbj8KPiA+ID4gPiAoQ29ycmVjdCBtZSBpZiBJIHVuZGVyc3Rh
bmQgYW55dGhpbmcgd3JvbmcpCj4gPiA+Cj4gPiA+IFlvdSBjYW4gZGVjbGFyZSBpdCBhdCB0aGUg
YmVnaW5uaW5nIG9mIHRoZSBibG9jay4KPiA+IE9LLCBJIHdpbGwgZG8gbGlrZSB0aGF0Lgo+ID4K
PiA+ID4KPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IEJ0dywgdGhpcyB3YXMgaW4gdGhlIG9y
aWdpbmFsIGNvZGUsIGJ1dCB0aG9zZSBjYXN0cyBhcmUgdWdseS4gwqBJZGVhbGx5Cj4gPiA+ID4g
PiB0aGVyZSB3b3VsZCBiZSBzb21lIHdheSB0byBnZXQgcmlkIG9mIHRoZW0uIMKgQnV0IG90aGVy
d2lzZSBhdCBsZWFzdAo+ID4gPiA+ID4gcHV0IGEgc3BhY2UgYWZ0ZXIgdGhlIHU4LiDCoCIodTgg
KilhIDwgKHU4ICopY3R4LT5tcmVjIi4KPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIHU4ICpuYW1lX2VuZCA9ICh1OCAqKWEgKyBsZTE2X3RvX2NwdShhLT5uYW1lX29m
ZnNldCkgKwo+ID4gPiA+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGEtPm5hbWVfbGVuZ3RoICogc2l6ZW9mKG50ZnNjaGFyKTsKPiA+ID4gPiA+ID4gLSDC
oCDCoCDCoCDCoCDCoCDCoCBpZiAoKHU4KilhIDwgKHU4KiljdHgtPm1yZWMgfHwgKHU4KilhID4g
bXJlY19lbmQgfHwKPiA+ID4gPiA+ID4gLSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBuYW1lX2Vu
ZCA+IG1yZWNfZW5kKQo+ID4gPiA+ID4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChuYW1lX2Vu
ZCA+IG1yZWNfZW5kKQo+ID4gPiA+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBicmVhazsKPiA+ID4gPiA+Cj4gPiA+ID4gPiByZWdhcmRzLAo+ID4gPiA+ID4gZGFuIGNhcnBl
bnRlcgo+ID4gPiA+IFNvIG1heWJlIEkgY2FuIHRyeSB0byByZWZhY3RvciB0aGVzZSBjb2Rlcy4g
QnV0IEkgd29uZGVyIGlmIHRoaXMgY2FuIGJlCj4gPiA+ID4gZG9uZSBpbiBhIHNlcGVyYXRlIGJ1
Zwo+ID4gPgo+ID4gPiBUaGUga2VybmVsIGhhcyBhIHN0cmljdCAib25lIHRoaW5nIHBlciBwYXRj
aCBydWxlIi4gwqBUaG9zZSBydWxlcyBhcmUKPiA+ID4gZm9yIHJldmlld2VycyBhbmQgZWFzaWVy
IGJhY2twb3J0aW5nLiDCoFNvIHRoZSB0cmljayBpcyB0byB3cml0ZSB0aGUKPiA+ID4gY29tbWl0
IG1lc3NhZ2UgdG8gcGVyc3VhZGUgdGhlIHJldmlld2VyIHRoYXQgdGhlIHdheSB5b3UndmUgd3Jp
dHRlbiB0aGUKPiA+ID4gcGF0Y2ggaXMgdGhlIGVhc2llc3Qgd2F5IHRvIHJldmlldyBpdC4gwqBT
byBoZXJlIGlzIGhvdyBJIHdvdWxkIHdyaXRlIHRoZQo+ID4gPiBjb21taXQgbWVzc2FnZToKPiA+
ID4KPiA+ID4gW1BBVENIXSBudGZzOiBmaXggb3V0IG9mIGJvdW5kcyByZWFkIGluIG50ZnNfYXR0
cl9maW5kKCkKPiA+ID4KPiA+ID4gVGhpcyBjb2RlIGRlZmVyZW5jZXMgImEiIHRvIGNhbGN1bGF0
ZSAibmFtZV9lbmQiIGFuZCB0aGVuIGl0IGNoZWNrcyB0bwo+ID4gPiBlbnN1cmUgdGhhdCAiYSIg
aXMgd2l0aGluIGJvdW5kcy4gwqBNb3ZlIHRoZSBib3VuZHMgY2hlY2tzIGVhcmxpZXIgYW5kCj4g
PiA+IGFkZCBzb21lIGNvbW1lbnRzIHRvIG1ha2UgaXQgbW9yZSBjbGVhciB3aGF0IHRoZXkncmUg
ZG9pbmcuIMKgVGhlbgo+ID4gPiBjYWxjdWxhdGUgIm5hbWVfZW5kIiBhbmQgY2hlY2sgdGhhdC4K
PiA+ID4KPiA+ID4gKEJ0dywgYXJlIHRoZSB3cmFwIGFyb3VuZCBjaGVja3MgcmVhbGx5IHN1ZmZp
Y2llbnQ/IMKgSXQgc2VlbXMgbGlrZSBpdAo+ID4gPiBjb3VsZCB3cmFwIHRvIHNvbWV0aGluZyBz
dGlsbCB3aXRoaW4gdGhlIC0+bXJlYyBidWZmZXIgYnV0IGJlZm9yZSB0aGUKPiA+ID4gY3VycmVu
dCBlbnRyeSBzbyBpdCB3b3VsZCBlbmQgdXAgaW4gYSBmb3JldmVyIGxvb3Agb3Igc29tZXRoaW5n
PykKPiA+IEkgYW0gbm90IGZvciBzdXJlLCBidXQgaXQgc2VlbXMgdGhhdCBpdCBpcyBPSyBiZWZv
cmUuCj4gPiBBcyBmb3IgdGhlIGZvcmV2ZXIgbG9vcCwgdGhlcmUgaXMgYSBicmVhayB3aGVuIGEt
Pmxlbmd0aCBpcyAwIGluIHRoZSBsb29wLAo+ID4gU28gSSB0aGluayBpdCBwcm9iYWJseSB3b3Vs
ZCBub3QgZW5kIHVwIGluIGEgZm9yZXZlciBsb29wPyhDb3JyZWN0IG1lIGlmCj4gPiBJIGFtIHdy
b25nKQo+ID4KPgo+IENoZWNraW5nIGZvciB6ZXJvIGlzIG5vdCBzdWZmaWNpZW50IGJlY2F1c2Ug
aXQgY2FuIHdyYXAgb24gMzIgYml0Cj4gc3lzdGVtcy4gwqBJdCBuZWVkcyBzb21ldGhpbmcgbGlr
ZToKPgo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiAtRU5PRU5U
Owo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGxlbiA9IGxlMzJfdG9fY3B1KGEtPmxlbmd0aCk7
Cj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKCFsZW4gfHwKPiDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAodm9pZCAqKWEgKyBsZW4gPCAodm9pZCAqKWEgfHwKPiDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCAodm9pZCAqKWEgKyBsZW4gPiBtcmVjX2VuZCkKPiDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBicmVhazsKPiDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBpZiAoYS0+dHlwZSAhPSB0eXBlKQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIGNvbnRpbnVlOwo+Cj4gU29ydCBvZiB1Z2x5LCBidXQgaG9wZWZ1bGx5IGl0IGdpdmVz
IHRoZSBpZGVhIG9mIHdoYXQgSSdtIHNheWluZy4KPgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRl
cgpIaSwgRGFuCkRvIHlvdSBtZWFuIHRoZXJlIG1heSBiZSBhbiBvdmVyZmxvdyBvbiAzMmJpdCBz
eXN0ZW1zPwpJdCBzZWVtcyB0aGF0IGl0IGlzLCBzbyBpdCBtYXkgZW5kIHVwIGluIGEgZm9yZXZl
ciBsb29wCmFzIHlvdSBwb2ludCBvdXQgYmVmb3JlLgoKSSB3aWxsIHRyeSB0byBhZGQgYW4gb3Zl
cmZsb3cgY2hlY2tpbmcgaGVscGVyIHRvIGZpeCBpdC4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGlu
dXgtTlRGUy1EZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
