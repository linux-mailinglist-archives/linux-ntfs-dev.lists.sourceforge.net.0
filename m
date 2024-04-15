Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2269B8A5A18
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 20:45:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwRKp-0003Bn-Up;
	Mon, 15 Apr 2024 18:45:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1rwQs9-0003X7-O5
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 18:16:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WYfOEsGC0slx6ThijhpmfrIi/hp4YLF9aD3FqVog84w=; b=BbCELd/7dYp9GFbFEgWPjO0H0T
 qiLScKknHq+8uoiCmtTbwhOM8X4vAwu5+Dy2P1lMvsbakUDAYz7nWDQVwCa26uWlzqvGom7FbLXqL
 ebhrOk8+KOqwlbP4yegrfSdM87u+EjynyshxV5aNgo8q30xCgQgeNsPhrPcNnN5ir3DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WYfOEsGC0slx6ThijhpmfrIi/hp4YLF9aD3FqVog84w=; b=HjYUB/Ju5MxV4ly1rdwMNVvUMk
 4A1fJT7sV3FU9+2lbPWAbuygZjI9bXjoEGvSXl4c1Bkgp0D876l09hE2DaT/EE9GssEOdG6deXQI/
 qpduLQ9s4qgiOx7k9xVzrQoyGXLLi5YZyx/dJyIy6Yt2GgoxhyyKJRt//kpcI83nizLw=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwQs6-0006r0-El for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 18:16:06 +0000
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-56c5d05128dso3718960a12.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Apr 2024 11:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1713204951; x=1713809751;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WYfOEsGC0slx6ThijhpmfrIi/hp4YLF9aD3FqVog84w=;
 b=DzznYKM3pPn6zCOs5TsgtGWKfFDR9IZAad7u01ARBGyFBRNhLsUTnIifgrWcFgwpdT
 +nDeZy0XkHABTSuTLJl3YuftbrTA71I0jQ9Nw4tWuMxRYCNckWxvE5vvaKjPvCdQ/+ji
 1nBND+LMGm3bL+z7kx2SvNTAzkCDz0JjEILj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713204951; x=1713809751;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WYfOEsGC0slx6ThijhpmfrIi/hp4YLF9aD3FqVog84w=;
 b=ngSGR06d+Swkc/uD7G0gnOpjmdG3nEn+0JLCvDaRnPiUp7sJppAjD5kMB4psigHltt
 lwKZ6dQD13TLyTg5+Rq+6Ee5e6U3p+rq5+8zZghfRkRDyL47wgoGfxgRSp9WRwX5X3cq
 Hxxlqsx9l7Oi2JKvKU35p7YstvHAvqhwIYWRqukdDId1E0ODSoZFLVNT9V+RGrj7FHpi
 OmeQIOYbiy1Quvocc/2PaQEc5sqOTh7/d3u2uCBa43VC9zJ4FX/R+lAnnydUrb2/25Kr
 P4VA2wIYj9yMG8r8AUiylKTn3b/Op33tW/EL7SqZrCKW27yqdq2mI7JZbrr5dWbOnGxz
 AU0A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVuLdCyphgnrhqvoOwdn/RgbnMwl0RdhZ+ADFDCkss8/0GuXpGMVMnx70s9bwDwPCpMHYWtY1/2zDJbl+n3E7zeJk7oRqwnmc6ojFw5+XwSieykcJc=
X-Gm-Message-State: AOJu0YzW85BB1CR9gFY8lM+9xHov6mfWB9WoOyVr/YSz3gRTVLX6sRpT
 TPCj6/H9sVNdj2DPyimgErgO18RO85XViMjuNpcE9NxrpaungpZwUpAZrB2fkaLN7s77ZYxtsH+
 mWqOc9w==
X-Google-Smtp-Source: AGHT+IFGozHu4olTzn2sCmKixmZ568izM+Fql6DKbUgi57DJaWJ5w/bsxl7LRS1V7X3ZxahH+7w8Yw==
X-Received: by 2002:a17:907:6d27:b0:a52:2a36:38bf with SMTP id
 sa39-20020a1709076d2700b00a522a3638bfmr8522120ejc.55.1713194643728; 
 Mon, 15 Apr 2024 08:24:03 -0700 (PDT)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com.
 [209.85.208.53]) by smtp.gmail.com with ESMTPSA id
 wn5-20020a170907068500b00a4df061728fsm5587578ejb.83.2024.04.15.08.24.03
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Apr 2024 08:24:03 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-56e477db7fbso5289147a12.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Apr 2024 08:24:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWRGI+Lfea7WHLGVYOkd27xR5BPN7fq4ic1TJAirsy0UyoM6Ryzm5caSsIIl99nvs26hE4A3AuaHMEvchwIIT3J504wf5jzWabRYHKQD+geE9gDS5U=
X-Received: by 2002:a17:906:e0da:b0:a52:5c9a:1c8b with SMTP id
 gl26-20020a170906e0da00b00a525c9a1c8bmr2466375ejb.5.1713194642825; Mon, 15
 Apr 2024 08:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
 <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
 <20240415-warzen-rundgang-ce78bedb5f19@brauner>
In-Reply-To: <20240415-warzen-rundgang-ce78bedb5f19@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 15 Apr 2024 08:23:46 -0700
X-Gmail-Original-Message-ID: <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
Message-ID: <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 15 Apr 2024 at 07:16,
 Christian Brauner <brauner@kernel.org>
 wrote: > > (1) Since the ntfs3 driver is supposed to serve as a drop-in
 replacement
 > for the legacy ntfs driver we should to it th [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.208.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rwQs6-0006r0-El
X-Mailman-Approved-At: Mon, 15 Apr 2024 18:45:42 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Johan Hovold <johan@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, 15 Apr 2024 at 07:16, Christian Brauner <brauner@kernel.org> wrote:
>
> (1) Since the ntfs3 driver is supposed to serve as a drop-in replacement
>     for the legacy ntfs driver we should to it the same way we did it
>     for ext3 and ext4 where ext4 registers itself also for the ext3
>     driver. In other words, we would register ntfs3 as ntfs3 filesystem
>     type and as legacy ntfs filesystem type.

I think that if just registering it under the same name solves the
immediate issue, that's the one we should just go for.

>     To make it fully compatible
>     we also need to make sure it's persistently mounted read-only.

My reaction to that is "only if it turns out we really need to".

It sounds unlikely that somebody has an old ntfs setup and then tries
to mount things rw which didn't use to work and things go sideways if
that then suddenly works.

But "unlikely" isn't "impossible", of course - it's just that I'd
suggest we actually wait for that report to happen and ask what the
heck they were doing and why they were doing that...

              Linus


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
