Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D71EB388B8F
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 19 May 2021 12:20:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ljJJ9-0000Zl-7F; Wed, 19 May 2021 10:20:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <ngompa13@gmail.com>) id 1ljDCz-0007yF-Ss
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 19 May 2021 03:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VtBZr8UfGMe2NRXG2EkfLojRcmF6PYYjekObnrreHsU=; b=Nlkw9CyA8KNFqVU8O9EiVNkX1v
 MuFRW9Hr8Nu/JQVSljYSg6ZhjPXVk4Q0esKmUrUGHUDH9hTarg99Lh5ynUn4tbdiUhKYkh+JtDDnz
 LgQXGg/nb/x42FqJ8Qf82TXDL59FGByUCK+R+G34WBYdHXJDSOmdIW6QmVqLDf8nzOyw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VtBZr8UfGMe2NRXG2EkfLojRcmF6PYYjekObnrreHsU=; b=mNUagyDqIG5ef8XPagkIinuDqV
 Uz9tcvLkyvkRVwJvoAjVlMYzWFUDveINZcUGwiL8H8QK9PP2LDrU+LsU7dJDcXbb8CAMZh+r1rU5F
 iWRqdtpzHsAkl6PgZT1lYftU/Wx9jYFHS9K6s4gUdY0bMv/oW2436n0niB4j6xrW4Lfc=;
Received: from mail-qv1-f43.google.com ([209.85.219.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljDCn-00DuhY-3s
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 19 May 2021 03:49:22 +0000
Received: by mail-qv1-f43.google.com with SMTP id a7so1820060qvf.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 18 May 2021 20:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VtBZr8UfGMe2NRXG2EkfLojRcmF6PYYjekObnrreHsU=;
 b=axMoBxLv+eZZMTcswYPFe2DQjcb55bhqevaXwvMUByl443AFQxAf0zJW/Ptd4iEasv
 nxXM/I98/W365Sb/36K8tGE2e1DTDpsUHsY/RcrzlB/bGIlufLjOSF6Bcue/FTuHPq7K
 SSfMJgasP9pPKu12RVkxCqQH0X4IRKqp+GL6gRkSTuYko7GczAWk8Jo0NC15KJqxVLGf
 4fz3xGcgkJokdFmfc7nuqSMUKSLVTGLJgjR8jpijTA4fKGIJhT5KTKay81VavEhYePSl
 SUr7A/VQ3a+sfcz34M8N02bRVsoT3h6oSbkpr6JuK8H4Olsj6UmhaD4/4ClSOBXjjkD3
 k7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VtBZr8UfGMe2NRXG2EkfLojRcmF6PYYjekObnrreHsU=;
 b=bM5KWcf8aUb/4vPAnlLTH3HoItdl1YTvXj11LY4vu788T5iwGvdcP+8jLQ9Q+a1eA8
 wn6dA8F1oCGmIetvQbhDCqvNFquk9FyD2LavSbDHrmWiahhgCZxk/72+oeMPVIuVaS+v
 akBNSX3/HPvLPMmTTGt+mVm0aQNNzMtRinXdoulHJH3Tq+E8zrQffvw2CKq9pzKOa9MX
 qJS69YWlfB7YEMWArsCyEI/PJRjgPqaqWTZh/rqI/TG1V60U5jsh4Kony+2ZcAzO2/3G
 ODA+1TLyT+iqWZ1e6WorEBPgYKiS/28v3Y0whKP0Llhs1OkrFe/NMWvFb8JWbVQbDmdX
 zwAQ==
X-Gm-Message-State: AOAM532/iuQboT7sFp+eo6qXMii2G2XRnd1FXzeMvTtP8/Lxb+Dm8MoU
 Cmmc7QTnkK3JmGn7mrYJ2ec=
X-Google-Smtp-Source: ABdhPJyFiDNJDKDcXCyymUBk8gf4+xLUJX/gBr29YpuwXrXW6tdAjJRippor0H5ZzGmd2hDBWEpKlA==
X-Received: by 2002:a0c:c447:: with SMTP id t7mr10246194qvi.60.1621396143393; 
 Tue, 18 May 2021 20:49:03 -0700 (PDT)
Received: from Belldandy-Slimbook.infra.opensuse.org
 (ool-18e49371.dyn.optonline.net. [24.228.147.113])
 by smtp.gmail.com with ESMTPSA id g5sm9869746qtv.56.2021.05.18.20.49.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 20:49:02 -0700 (PDT)
From: Neal Gompa <ngompa13@gmail.com>
To: almaz.alexandrovich@paragon-software.com
Date: Tue, 18 May 2021 23:47:59 -0400
Message-Id: <20210519034759.259670-1-ngompa13@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
References: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ngompa13[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (ngompa13[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljDCn-00DuhY-3s
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
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 kari.argillander@gmail.com, anton@tuxera.com, Neal Gompa <ngompa13@gmail.com>,
 joe@perches.com, linux-fsdevel@vger.kernel.org, mark@harmstone.com,
 andy.lavr@gmail.com, pali@kernel.org, hch@lst.de, dan.carpenter@oracle.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

SGV5IGFsbCwKCkkndmUgYmVlbiBwbGF5aW5nIGFyb3VuZCB3aXRoIHRoaXMgcGF0Y2ggc2V0IGxv
Y2FsbHkgYW5kIGl0IHNlZW1zIHRvIHdvcmsKcXVpdGUgd2VsbC4gSSBoYXZlbid0IHNlZW4gYW55
IHJlcGxpZXMgZnJvbSBhbnkgYm90cyBvciBodW1hbnMgaW5kaWNhdGluZwp0aGF0IHRoZXJlIG1p
Z2h0IGJlIGFueXRoaW5nIHdyb25nIG9uIHRoZSBsaXN0IG9yIGluIFBhdGNod29yayAod2hpY2gK
ZG9lcyBub3QgbmVjZXNzYXJpbHkgbWVhbiB0aGF0IHRoZXJlIHdhc24ndCBhbnkgZmVlZGJhY2ss
IEkgY291bGQgZXF1YWxseQpiZSBxdWl0ZSBiYWQgYXQgZmluZGluZyByZXNwb25zZXMhKS4KCkNv
dWxkIHNvbWVvbmUgcGxlYXNlIHJldmlldyB0aGlzIHRvIHNlZSBpZiBpdCdzIGZpbmFsbHkgc3Vp
dGFibGUgZm9yCnVwc3RyZWFtIGluY2x1c2lvbj8KClRoYW5rcyBpbiBhZHZhbmNlIGFuZCBiZXN0
IHJlZ2FyZHMsCk5lYWwKCi0tIArnnJ/lrp/jga/jgYTjgaTjgoLkuIDjgaTvvIEvIEFsd2F5cywg
dGhlcmUncyBvbmx5IG9uZSB0cnV0aCEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1OVEZTLURldiBtYWlsaW5nIGxpc3QKTGludXgtTlRGUy1E
ZXZAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2xpbnV4LW50ZnMtZGV2Cg==
