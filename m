Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 589547A7A41
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 13:19:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qivFC-0002C4-Oe;
	Wed, 20 Sep 2023 11:19:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <konishi.ryusuke@gmail.com>) id 1qiu1l-0001Cr-1I
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 10:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W2Sxc2lzUzNR93PpRUd+yVO8Zh7S3vyEBNQBpNy/0XM=; b=SEniFU1HSVKlWTuGq5WKCneRVw
 +c2BH6Ea8BHIiyr5bzLB+1fhmrZBh8Y2x+vKoKcHar1RyKAHu1yIuFZxIs52i2TLaWo2SrfFczIJN
 tJP5C8AUS/P27qoCPG4ljP4RDJ6AaOonGVn6G4loa7kKjuJ0zfBEsSypwdi2rNckBwsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W2Sxc2lzUzNR93PpRUd+yVO8Zh7S3vyEBNQBpNy/0XM=; b=KpPK7WvZCnGwvcnRnscLYI74Eu
 FG9TjvbzUcqncwy93FBr4ov0btS9FgQO90T8oSl8UXmxd8evqfaRr20NXJqV7WdJzEVNaEWxCP23h
 k3J4dLojombcy6N44uFTIKk7dXrNe8NwJqjAYpQNk0NaXAsYm+y8TJkyARr8bd8O8kjs=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiu1e-00GU30-Q5 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 10:01:47 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 46e09a7af769-6b9e478e122so4176246a34.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 03:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695204097; x=1695808897; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W2Sxc2lzUzNR93PpRUd+yVO8Zh7S3vyEBNQBpNy/0XM=;
 b=hB1ywxYu2IH6X20sZaLmM4LJ+O9J5025WOKGwuenO7o1FD2vxldqSqv6N7vUlrq/FT
 Ife4d9MmVXR7wovmp7G5DElxcMkp/2x456uknFjabDoFo08kjy3aDUtaG/U7uHXYysKL
 PnZDeb74thoW2+BMfL+7qXJ3r2Vj7vLEGWLWWk6581ZzDywlKcVVAmWM6ig9TfsKd7Fi
 f1lk3AvA22QJl8CnIE49dIlNnHuxgMwmQK3EfTHFeyHvziB8sB5LteqZGoXqvHgJyY1t
 +61e1zLHm46vqkwDsa9nK0TxuMS86XLZxDasrP9sWx7amNfd9Dlci9CBoZSJsUtwT2n9
 8dSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695204097; x=1695808897;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W2Sxc2lzUzNR93PpRUd+yVO8Zh7S3vyEBNQBpNy/0XM=;
 b=BZ9IQj4IMlvYA6yoIZXXXx0KyQEhuEldaLNhzkY9o6YZyHY6aooxV2g05zHr8sHT2w
 49MMOkqtRliQWdtaDNAdh7dySDXpKBQJ6Hcxh7kfXLjaTjNbVpxaku27YUCwoR3F/3qG
 GHCQbAuPZ4JqNtJZ78tWOJ/2zOGBQefZbyW8jfdkehUrnSbKJyUgJkdRy/MvtcGAok4l
 DV6XSQWh1s8nlPbWhW1AW3PtZdBQYjDfVuhBGPXwTCLVhNpdtbkz8BinMRFCmst9c5/P
 27j6Ynj6Nxvd8M9PtR5LexbK5ojuDOuSPFSJmdX/Tgln2B/b7uq/FUrTVdoBgKoE4Yc+
 kSrw==
X-Gm-Message-State: AOJu0Yz/JaKl2vlPymZHNXxX/131iL8j08bIGq8oo1sl8/2FgaQqufHx
 pMoi5qEkJRub5xIPaEVB6SYCRTMlWa5d7OTj5R82+F8wSvY9tw==
X-Google-Smtp-Source: AGHT+IF6TvvrFfInrhj56gdvCe5w+++P3HMf6bTBPikJlLKn+WLjAfLo6m95ThXJfvs6hZ63Kl1g7MzMNs/yRVqIDX8=
X-Received: by 2002:a05:6830:102:b0:6b9:b226:d08e with SMTP id
 i2-20020a056830010200b006b9b226d08emr2148062otp.34.1695204097042; Wed, 20 Sep
 2023 03:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-16-willy@infradead.org>
In-Reply-To: <20230919045135.3635437-16-willy@infradead.org>
From: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Date: Wed, 20 Sep 2023 19:01:20 +0900
Message-ID: <CAKFNMonL+TobLB6e6g0kKQsGY0-FP1fkQyuNQKqS8+B-QH4qig@mail.gmail.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Sep 19, 2023 at 3:47 PM Matthew Wilcox (Oracle)
   wrote: > > This function was already using a folio, so this update to the
   new API > removes a single folio->page->folio conversion. > > Signed [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [konishi.ryusuke[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.43 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qiu1e-00GU30-Q5
X-Mailman-Approved-At: Wed, 20 Sep 2023 11:19:43 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 15/26] nilfs2: Convert
 nilfs_lookup_dirty_data_buffers to use folio_create_empty_buffers
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

T24gVHVlLCBTZXAgMTksIDIwMjMgYXQgMzo0N+KAr1BNIE1hdHRoZXcgV2lsY294IChPcmFjbGUp
IHdyb3RlOgo+Cj4gVGhpcyBmdW5jdGlvbiB3YXMgYWxyZWFkeSB1c2luZyBhIGZvbGlvLCBzbyB0
aGlzIHVwZGF0ZSB0byB0aGUgbmV3IEFQSQo+IHJlbW92ZXMgYSBzaW5nbGUgZm9saW8tPnBhZ2Ut
PmZvbGlvIGNvbnZlcnNpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IFdpbGNveCAoT3Jh
Y2xlKSA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KPiAtLS0KPiAgZnMvbmlsZnMyL3NlZ21lbnQuYyB8
IDcgKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzL25pbGZzMi9zZWdtZW50LmMgYi9mcy9uaWxmczIvc2Vn
bWVudC5jCj4gaW5kZXggN2VjMTY4Nzk3NTZlLi45NDM4OGZlODNjZjggMTAwNjQ0Cj4gLS0tIGEv
ZnMvbmlsZnMyL3NlZ21lbnQuYwo+ICsrKyBiL2ZzL25pbGZzMi9zZWdtZW50LmMKPiBAQCAtNzMx
LDEwICs3MzEsOSBAQCBzdGF0aWMgc2l6ZV90IG5pbGZzX2xvb2t1cF9kaXJ0eV9kYXRhX2J1ZmZl
cnMoc3RydWN0IGlub2RlICppbm9kZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51
ZTsKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgICAgICAgICBoZWFkID0gZm9saW9fYnVm
ZmVycyhmb2xpbyk7Cj4gLSAgICAgICAgICAgICAgIGlmICghaGVhZCkgewo+IC0gICAgICAgICAg
ICAgICAgICAgICAgIGNyZWF0ZV9lbXB0eV9idWZmZXJzKCZmb2xpby0+cGFnZSwgaV9ibG9ja3Np
emUoaW5vZGUpLCAwKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBoZWFkID0gZm9saW9fYnVm
ZmVycyhmb2xpbyk7Cj4gLSAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgaWYgKCFo
ZWFkKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGhlYWQgPSBmb2xpb19jcmVhdGVfZW1wdHlf
YnVmZmVycyhmb2xpbywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aV9ibG9ja3NpemUoaW5vZGUpLCAwKTsKPiAgICAgICAgICAgICAgICAgZm9saW9fdW5sb2NrKGZv
bGlvKTsKPgo+ICAgICAgICAgICAgICAgICBiaCA9IGhlYWQ7Cj4gLS0KPiAyLjQwLjEKPgoKQWNr
ZWQtYnk6IFJ5dXN1a2UgS29uaXNoaSA8a29uaXNoaS5yeXVzdWtlQGdtYWlsLmNvbT4KCgpOb3cs
IEkndmUgc2VlbiBhbGwgdGhlIGNoYW5nZXMgdG8gbmlsZnMyIGluY2x1ZGluZyB0aGUgbGFzdCBw
YXRjaC4KSXQncyBhbG1vc3QgYSBkaXJlY3QgY29udmVyc2lvbiB0aHJvdWdob3V0LCBhbmQgSSBk
b24ndCBzZWUgYW55IGlzc3Vlcwp3aXRoIHRoZSBuaWxmczIgcGFydCBvdGhlciB0aGFuIHRoZSBi
dWlsZCBpc3N1ZS4KCldpdGggYWxsIDI2IHBhdGNoZXMgYXBwbGllZCwgbmlsZnMyIGlzIHJ1bm5p
bmcgd2l0aG91dCBwcm9ibGVtcyBpbgphY3R1YWwgbWFjaGluZSB0ZXN0cyBpbmNsdWRpbmcgc3Ry
ZXNzIHRlc3RzLgoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBlZmZvcnRzLgoKUmVnYXJk
cywKUnl1c3VrZSBLb25pc2hpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtbnRmcy1kZXYgbWFpbGluZyBsaXN0CkxpbnV4LW50ZnMtZGV2QGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9saW51eC1udGZzLWRldgo=
