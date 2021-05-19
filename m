Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF56C388B90
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 19 May 2021 12:20:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ljJJ9-0000Zu-DS; Wed, 19 May 2021 10:20:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <ngompa13@gmail.com>) id 1ljDG5-00085a-Uu
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 19 May 2021 03:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=31hE0ciYwTpg7ijaPJpda+ORaHVM9Pjhxdh99gC9+RA=; b=HpeVgkJp7BgIDFuFZ47eUPb+Ke
 NS2X21X8zw89qm+ufjJLTo6cAIhJwhg7fwKb0n9S+MbMBjvrqU8ibeDMwIxpsH76LZgOSJrYzjARz
 CiEnKwiDZdIFeofNtcTGba4bwKQIItZtfgK/k4r/zUQ2lbQE/iwXE+L0q/ws5mxx42iM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=31hE0ciYwTpg7ijaPJpda+ORaHVM9Pjhxdh99gC9+RA=; b=L5XNTawPdaqhzzbc7aTvVhyuyb
 3dV3s251wyB9nXlQhQ99rdtITewcePJS3oz5X2wDrIXfkFd+MhqYY8L4SSq6xPUz8mwgUXaCvj1T3
 AimgRM75hbg499Rh5epvggJQD5Mvo71Gwt5sXnn93YofauevprT1xCnd/Jo4esVd+bAI=;
Received: from mail-yb1-f171.google.com ([209.85.219.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljDFu-0001cC-0O
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 19 May 2021 03:52:33 +0000
Received: by mail-yb1-f171.google.com with SMTP id f9so16234092ybo.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 18 May 2021 20:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=31hE0ciYwTpg7ijaPJpda+ORaHVM9Pjhxdh99gC9+RA=;
 b=p4iDSVkrgcvn+HHZidr1i5wNQ3OUoko1t7M2/s2QOszmvRF8YhW4g9O6NuEsiClc9O
 ewD5PTbhrwSuWAS9+mTajpNSVTya1IJ9nMUMi4s5QDfwKIiLQeUySJWu9C5j2IOqbkok
 zmBXizZUu6Pf+BoPmRWFMe5ubLJh7lopdqFwyo6IkEtWwyPittAttdv5r7/8GyfB502n
 mFX3TarqSW9mkIxsGAfNP6BijHzX/ZZqWA7c2Zd3i2no1b4sLJHa90Af91HQyoluvIRA
 6Im2dhGkhae80pdVB+9raVGymESWcEH8a6g7U2I2zAFcQowBhv6yIvf60wqUY711HOFA
 ZstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=31hE0ciYwTpg7ijaPJpda+ORaHVM9Pjhxdh99gC9+RA=;
 b=WDjjDHWME6HB0RH8jD3AT+Koi/27G4kenNyOxoaPVUsnQ82AtUY37vZJDDT3SiuAIO
 yvTQrBplM7/eyAgO1gbJqElqxsAr/2HCIiOHTCkAgbLb2J5vSjLf2RpR4nlUVT23eS3h
 VAjQRIUsZI1WFUO4Ias5tVciXh0sspqt5tkET4QCwNTJTyI5Nftn9C2oW7AlxioEvoMV
 kgoNIPhPNA33zIYihG7FzrkhLSTacEbXJkb6R85JQ88wszAlCbd/odmKG8N3D4lkVREG
 x03ixplzsABeUG7RbMhq7VXkzYmVaUELHYcKiv3JYWsmG3nQFs0hjvvn5G4WO12/2F1c
 E8Ig==
X-Gm-Message-State: AOAM5316FDobbR9OlXpuDV+PmrNV+zx/s8bHzs2lqB6+ocVUxxgIDGDN
 WR4P5x9C5DR+V3n3LbwWVPnUW2oVTP2nWGWn+Ps=
X-Google-Smtp-Source: ABdhPJwzRozfRNytfnSHdCd5fzojx5eQbNvBYy02DQsJh1O+6/LZkjMwoy2GqtQrBMIXNWhTQIOkymcgh69RlP43UQE=
X-Received: by 2002:a25:3084:: with SMTP id
 w126mr12755882ybw.109.1621396337197; 
 Tue, 18 May 2021 20:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
 <20210519034759.259670-1-ngompa13@gmail.com>
In-Reply-To: <20210519034759.259670-1-ngompa13@gmail.com>
From: Neal Gompa <ngompa13@gmail.com>
Date: Tue, 18 May 2021 23:51:41 -0400
Message-ID: <CAEg-Je-cNTew93EWVK3fPVfRWyy7Xd9nst0Sv+eVXdbS2USGyQ@mail.gmail.com>
To: almaz.alexandrovich@paragon-software.com
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ngompa13[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (ngompa13[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.171 listed in wl.mailspike.net]
X-Headers-End: 1ljDFu-0001cC-0O
X-Mailman-Approved-At: Wed, 19 May 2021 10:20:05 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v26 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: nborisov@suse.com, linux-ntfs-dev@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 oleksandr@natalenko.name, rdunlap@infradead.org, aaptel@suse.com,
 Matthew Wilcox <willy@infradead.org>, David Sterba <dsterba@suse.cz>,
 ebiggers@kernel.org, kari.argillander@gmail.com, anton@tuxera.com,
 joe@perches.com, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Mark Harmstone <mark@harmstone.com>, andy.lavr@gmail.com, pali@kernel.org,
 Christoph Hellwig <hch@lst.de>, dan.carpenter@oracle.com,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

T24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgMTE6NDkgUE0gTmVhbCBHb21wYSA8bmdvbXBhMTNAZ21h
aWwuY29tPiB3cm90ZToKPgo+IEhleSBhbGwsCj4KPiBJJ3ZlIGJlZW4gcGxheWluZyBhcm91bmQg
d2l0aCB0aGlzIHBhdGNoIHNldCBsb2NhbGx5IGFuZCBpdCBzZWVtcyB0byB3b3JrCj4gcXVpdGUg
d2VsbC4gSSBoYXZlbid0IHNlZW4gYW55IHJlcGxpZXMgZnJvbSBhbnkgYm90cyBvciBodW1hbnMg
aW5kaWNhdGluZwo+IHRoYXQgdGhlcmUgbWlnaHQgYmUgYW55dGhpbmcgd3Jvbmcgb24gdGhlIGxp
c3Qgb3IgaW4gUGF0Y2h3b3JrICh3aGljaAo+IGRvZXMgbm90IG5lY2Vzc2FyaWx5IG1lYW4gdGhh
dCB0aGVyZSB3YXNuJ3QgYW55IGZlZWRiYWNrLCBJIGNvdWxkIGVxdWFsbHkKPiBiZSBxdWl0ZSBi
YWQgYXQgZmluZGluZyByZXNwb25zZXMhKS4KPgo+IENvdWxkIHNvbWVvbmUgcGxlYXNlIHJldmll
dyB0aGlzIHRvIHNlZSBpZiBpdCdzIGZpbmFsbHkgc3VpdGFibGUgZm9yCj4gdXBzdHJlYW0gaW5j
bHVzaW9uPwo+CgpPaCwgYW5kIEkgYWxzbyBmb3Jnb3QuLi4KClRlc3RlZC1ieTogTmVhbCBHb21w
YSA8bmdvbXBhMTNAZ21haWwuY29tPgoKCgotLSAK55yf5a6f44Gv44GE44Gk44KC5LiA44Gk77yB
LyBBbHdheXMsIHRoZXJlJ3Mgb25seSBvbmUgdHJ1dGghCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtTlRGUy1EZXYgbWFpbGluZyBsaXN0Ckxp
bnV4LU5URlMtRGV2QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eC1udGZzLWRldgo=
