Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2D34FAB04
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 23:52:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndJ01-0005OG-2i; Sat, 09 Apr 2022 21:52:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <trix@redhat.com>) id 1ndDZC-000194-9F
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 16:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qtkyBcEIcgGitzE6/jMR0BHvrVCs5FpvV9wdXJQk7lw=; b=kZNHQ5L7EN21FCpIqelMf80VHm
 gx0MamzgpYxqpG4yG281+JMe5TfnBSvWAt1FFclJdayTVW2TB+1mLDC452eA7bZUwisBHGvFFbSWQ
 uiTW3ruKIM8XmX0bYAuCYhwyzWWDSI/iswfhc05k9uXCe+FCkSzPdSQoeG4kyosl0hRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qtkyBcEIcgGitzE6/jMR0BHvrVCs5FpvV9wdXJQk7lw=; b=AlVvBtM5etFziLyNMt9RGYEZo/
 YAELkM6eNS6DhtbhDM8xAzQCuk87Kz3wDpUio9RPthOzFN2t0d6ouDfFrvZCDpi1/eUPQQ+bxuoBP
 zY1jtxkArq6u1MAkBOuXmIKgFPNcNK/OXgB+Kmwc5a7RrRISgu+3ZIaACC1XgiovPP+0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndDZ5-00AxGR-9Z
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 16:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649520227;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qtkyBcEIcgGitzE6/jMR0BHvrVCs5FpvV9wdXJQk7lw=;
 b=So9ZYsvUUYFv0+tFpjXOlo0NjZ5sovPm3l8uLkZ+YqXt+U6SBPd1XiLb5v9GdlTFWdWDj/
 y0n25AHTzYXzpt8IBISMDnPHY1xM6otzEL6yCINzraP6hYamPGiqL7D2/QHuz7shCnI0tx
 ib0n7SpHLhmjNPPJuyzlhqkrQ0IOel8=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-626-qzvH8ZoZMZWWpRdIyiqA-A-1; Sat, 09 Apr 2022 12:03:44 -0400
X-MC-Unique: qzvH8ZoZMZWWpRdIyiqA-A-1
Received: by mail-qt1-f200.google.com with SMTP id
 cb16-20020a05622a1f9000b002ebce74a888so5952131qtb.15
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 09 Apr 2022 09:03:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=qtkyBcEIcgGitzE6/jMR0BHvrVCs5FpvV9wdXJQk7lw=;
 b=uX7em6nvZ4W6y+G7Jx9qlVHFkAZ7k+GgmH82vSm5EEQXl1+5kEUkx7mk/4B2qlmvbw
 dG2eIsC30XdLyZ7VzPeCE8LCtQ8w5kfPI3O/ONvV/lyaHltxD3PCA5HhsDzJDpUz8ijt
 0uL0IiG6Xqo6UtkotL4DSd7gb8nvMeUylvQ6IL3H3hTth/6LQeLqdeC0OFN3CIf7x2HU
 knuZ4qmnGhyUEucPU3q3sj0eTvCf4D3peYfj+m/ytA8cW9m6s0+bpj7Jl4Jic/+Qui+U
 gAoxeTzL1IRNwCRdk12NssbPmL4fK+s6/dpHhEKs/w4ZiYo3yuhkzz+Ky7WPn4aLY+Hy
 pRlA==
X-Gm-Message-State: AOAM531htq0J3bpkqV3u1Nggj8kjW2klu7DtbchYJmsuA0a3aYucnidX
 7oDurOQjaUPulMGDIzpnZi9IY5F8JWTVYTg+xpVlnh5fVn08PQsKjsm44sSgHsM/pnMf30/dUZx
 Pc1w9GAHJSwTHiYQnJYok5UkdI/2anuK9gg0=
X-Received: by 2002:a05:620a:4694:b0:67e:ca07:4d46 with SMTP id
 bq20-20020a05620a469400b0067eca074d46mr16310330qkb.624.1649520223782; 
 Sat, 09 Apr 2022 09:03:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9gLy9N+EtbprXxWppsB8/pZMfaSy4i+GT0eKsrmpJpPW6wWHSwAV/TaLkqZlqoRiGySXFDw==
X-Received: by 2002:a05:620a:4694:b0:67e:ca07:4d46 with SMTP id
 bq20-20020a05620a469400b0067eca074d46mr16310304qkb.624.1649520223470; 
 Sat, 09 Apr 2022 09:03:43 -0700 (PDT)
Received: from localhost.localdomain (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 o6-20020a05620a22c600b0067d247816eesm15150840qki.85.2022.04.09.09.03.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 09:03:43 -0700 (PDT)
To: Michal Orzel <michalorzel.eng@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20220409101933.207157-1-michalorzel.eng@gmail.com>
 <20220409101933.207157-2-michalorzel.eng@gmail.com>
 <a56d1184-d399-d5f8-765f-5a4f35dacd5e@redhat.com>
 <446a3e88-4c14-300d-862a-1279274c3760@gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <c2c40f00-777c-f19a-eb5f-6e978ddd6bcf@redhat.com>
Date: Sat, 9 Apr 2022 09:03:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <446a3e88-4c14-300d-862a-1279274c3760@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/9/22 6:20 AM, Michal Orzel wrote: > Hi Tom,
 > >> On 4/9/22
 3:19 AM, Michal Orzel wrote: >>> Get rid of redundant assignments which end
 up in values not being >>> read either because they are over [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ndDZ5-00AxGR-9Z
X-Mailman-Approved-At: Sat, 09 Apr 2022 21:52:03 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] block: Remove redundant assignments
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
Cc: linux-block@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Ck9uIDQvOS8yMiA2OjIwIEFNLCBNaWNoYWwgT3J6ZWwgd3JvdGU6Cj4gSGkgVG9tLAo+Cj4+IE9u
IDQvOS8yMiAzOjE5IEFNLCBNaWNoYWwgT3J6ZWwgd3JvdGU6Cj4+PiBHZXQgcmlkIG9mIHJlZHVu
ZGFudCBhc3NpZ25tZW50cyB3aGljaCBlbmQgdXAgaW4gdmFsdWVzIG5vdCBiZWluZwo+Pj4gcmVh
ZCBlaXRoZXIgYmVjYXVzZSB0aGV5IGFyZSBvdmVyd3JpdHRlbiBvciB0aGUgZnVuY3Rpb24gZW5k
cy4KPj4gVGhpcyBsb2cgaXMgdGhlIHNhbWUgYXMgeW91ciBsYXN0IHBhdGNoLgo+Pgo+PiBJbnN0
ZWFkIG9mIGEgZ2VuZXJhbCBzdGF0ZW1lbnQgb24gZGVhZHN0b3JlcywgYSBtb3JlIHNwZWNpZmlj
Cj4+Cj4+IGFuYWx5c2lzIG9mIHRoZSBzZXR0aW5nIGJlaW5nIHJlbW92ZWQgd291bGQgYmUgaGVs
cGZ1bC4KPj4KPj4gVGhpcyB3aWxsIG1lYW4gc3BsaXR0aW5nIHRoZSBwYXRjaCB0byBtYXRjaCB0
aGUgYW5hbHlzaXMuCj4+Cj4+IFRvbQo+Pgo+IEkgdGhpbmsgdGhhdCB0aGlzIGV4cGxhbmF0aW9u
IGluIGEgY29tbWl0IGlzIGVub3VnaCBmb3Igc3VjaCBhIHRyaXZpYWwgcGF0Y2guCj4gSXQgaW5m
b3JtcyB0aGF0IHdlIGFyZSBmaXhpbmcgY2xhbmctdGlkeSBmaW5kaW5ncyByZWxhdGVkIHRvIGRl
YWRzdG9yZXMKPiBpbiBhIGJsb2NrIHN1YnN5c3RlbS4gV2hhdCBhbmFseXNpcyB3b3VsZCB5b3Ug
d2FudCB0byBzZWU/Cj4gU29tZXRoaW5nIGxpa2UgIlJlbW92ZSBkZWFkc3RvcmUgYXNzaWdubWVu
dCByZXQgPSAtRUlOVkFMICBpbiBhIGZ1bmN0aW9uIGJpb19tYXBfdXNlcl9pb3YiID8KPiBJIHRo
aW5rIHRoYXQgaXQgd2lsbCBjcmVhdGUgdG9vIG11Y2ggb2Ygbm90IG5lZWRlZCBvdmVyaGVhZC4K
ClRoZSBjb21waWxlciBzaG91bGQgcmVtb3ZlIHRoZXNlIGFscmVhZHkuwqAgQWxsIG9mIHRoZSBz
dGF0aWMgYW5hbHl6ZXJzIApwcm9kdWNlIGZhbHNlIHBvc2l0aXZlcywgaWYgeW91IGRvIG5vdCBw
cm92aWRlIGFuYWx5c2lzIHRoZSByZXZpZXdlciBoYXMgCnRvIGFzc3VtZSB5b3UgaGF2ZSBub3Qg
ZG9uZSBhbnkgYW5kIGhhcyB0byBkbyB0aGUgZmFsc2UgcG9zaXRpdmUgCmFuYWx5c2lzIHRoZW1z
ZWx2ZXMuIFRoaXMgYnVyZGVucyB0aGUgcmV2aWV3ZXIgZm9yIHNvbWV0aGluZyBvZiBzbWFsbCAK
dmFsdWUgdGhhdCBjYW4gYmUgZGlzbWlzc2VkIGFzIGNodXJuLgoKVG9tCgo+Cj4gQ2hlZXJzLAo+
IE1pY2hhbAo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LU5URlMtRGV2IG1haWxpbmcgbGlzdApMaW51eC1OVEZTLURldkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
bGludXgtbnRmcy1kZXYK
