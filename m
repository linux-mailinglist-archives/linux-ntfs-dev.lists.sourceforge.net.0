Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 797FE8A5CB9
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 23:12:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwTdB-0001TN-UN;
	Mon, 15 Apr 2024 21:12:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1rwSXb-0008LT-1Q
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 20:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SUbBz+0Pa/+6Pdxji7ckXlL4204e0k2uOmCa11XX1Xk=; b=hhd1xfjjWQvz83HwlTyQvgnxeH
 qHr5cudeG6kTiD0eehjNMpdFtNTYdu1us3G82Ewj6hkdhDa+WXQJvCXbysNhRx1B3dcomC2yjiOU1
 A8hUre8XWyaNZ7NWdN/KiP1CkPv0i+vuHAliIXK3VahKZ9NnampZxLUukdhBr6ryrl1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SUbBz+0Pa/+6Pdxji7ckXlL4204e0k2uOmCa11XX1Xk=; b=I8l+TEEhD8hZccZ2UgEvp2sRf/
 vvcg91QbX+U6imuvqvLMqlPF8ANxuXYO6Kq7j02aQ8DeaC6XjVu7QfhQyh5N2xlrbfxgxcXimYAOb
 HSrJhNwWUJ9KVLnoq5hpwQavB8d8hEbaQ27mgQsFMW9LEK7oY4wRva4OUbivWE4D2s68=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwSXa-0004PX-M0 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 20:02:59 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-417f5268b12so31653495e9.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Apr 2024 13:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1713211367; x=1713816167;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SUbBz+0Pa/+6Pdxji7ckXlL4204e0k2uOmCa11XX1Xk=;
 b=Ypxg7wlXqyf0d+1yja5X8PmIHj1ZlG9iZKEM9YqE9dqZVba+x6fXRILKDDCWQJMsOf
 SPJyycheEtf6v3fcOeIDlGUUyorTiKZWaKr8u5k8Kbo39NNJxrVBRF9VHp0I34hjMXs6
 zE0G2iJFsfjLzdxpPIfXcxWdX8L4Vpx9l7+30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713211367; x=1713816167;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SUbBz+0Pa/+6Pdxji7ckXlL4204e0k2uOmCa11XX1Xk=;
 b=sWDIyxOHic06YbreuK2PSwNTjGTlHtOieRbZrBq5FfWUQyQRnACF+f0eiW6fUOINiH
 sPMXFnvzCvaSmx0zGXQzepdbQ58Gk3HQ/ZRh2DGVFx6Wqm4wDTDO0NZmQ3rEh/5EbJnI
 mrOxE5H2RoIIzlrsdsz09YCUiRq5CH2qm+w1r3c/TQVGPdbO7PHg4dJdXZSmSQYXOQBp
 u4oZzmXWgsNIp72PtRRRPyuNWmRm1TmhMP6VzLnyfI9qhPLA1UVrfETlqmjLmL3qUten
 z1ORk8Xo3IM5/FUGai0NNCXAkuVV7gnIxt0w8I13CFLEJiPNo3uAFTdbDbWCZszEkVRR
 28mw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUcCrB3mC1FLzuybZTJzlWBlA08nH1g4IjsQB8bDL0mNPJJUEIKglaPqAgXsQdW7Ne97BG2oHxNGUr4fc6nq95L0Ecl8I5gkU9WyEmmuRHgjHZbqYo=
X-Gm-Message-State: AOJu0YxH2CC6KcD2IQiiNY7LpQDtcq90xIyUHAaCgxUQWjuLUtcccNB/
 DmLiBLApE7VYmanxdfEm0a+HJK6D7gweh0mztwWJ4CqXN/uD8xCjD6RLSzpgJOhUle+K2AhRuYn
 Ioaw1nA==
X-Google-Smtp-Source: AGHT+IEniCy1iKA8itukISi8+rulTrGIg2XLALBraFhOL2cfhne8yztg8ugcHXunSsF2yv8QHMnqgg==
X-Received: by 2002:a2e:b00e:0:b0:2d8:36f9:67af with SMTP id
 y14-20020a2eb00e000000b002d836f967afmr7255190ljk.44.1713196291066; 
 Mon, 15 Apr 2024 08:51:31 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com.
 [209.85.167.54]) by smtp.gmail.com with ESMTPSA id
 p7-20020a2e9a87000000b002d9e3a525bfsm1252255lji.41.2024.04.15.08.51.30
 for <linux-ntfs-dev@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Apr 2024 08:51:30 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-518e2283bd3so1925193e87.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Apr 2024 08:51:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWD7WOq3J0X3maU9HRjKKKUw6nJxRrgW4suc1Ws3Oxa1GXESlHp49snV9AOF7+JqoBmlwfsYCi6TiOblhrdrhPkAjMXPBFVTkQ+uZYl04zSG8WOsPQ=
X-Received: by 2002:a05:6512:110d:b0:518:b409:ba09 with SMTP id
 l13-20020a056512110d00b00518b409ba09mr5784322lfg.19.1713196289845; Mon, 15
 Apr 2024 08:51:29 -0700 (PDT)
MIME-Version: 1.0
References: <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
 <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
 <20240415-warzen-rundgang-ce78bedb5f19@brauner>
 <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
 <Zh1MCw7Q0VIKrrMi@hovoldconsulting.com>
In-Reply-To: <Zh1MCw7Q0VIKrrMi@hovoldconsulting.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 15 Apr 2024 08:51:13 -0700
X-Gmail-Original-Message-ID: <CAHk-=whN3V4Jzy+Mv8UZGTJ5VEk_ihCS8tu3VskW-HCfBg6r=g@mail.gmail.com>
Message-ID: <CAHk-=whN3V4Jzy+Mv8UZGTJ5VEk_ihCS8tu3VskW-HCfBg6r=g@mail.gmail.com>
To: Johan Hovold <johan@kernel.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 15 Apr 2024 at 08:47, Johan Hovold <johan@kernel.org>
 wrote: > > I think the "ntfs" alias must always be mounted read-only because
 you > can currently have an fstab entry which does not specif [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rwSXa-0004PX-M0
X-Mailman-Approved-At: Mon, 15 Apr 2024 21:12:49 +0000
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
Cc: Christian Brauner <brauner@kernel.org>,
 Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, 15 Apr 2024 at 08:47, Johan Hovold <johan@kernel.org> wrote:
>
> I think the "ntfs" alias must always be mounted read-only because you
> can currently have an fstab entry which does not specify "ro" and this
> mount would suddenly become writeable when updating to 6.9 (possibly by
> a non-privileged user, etc).

Well, it would be fairly easy to do particularly if we just do it for
the old legacy case.

Of course, even the legacy case had that CONFIG_NTFS_RW option, so
people who depended on _that_ would want to be able to remount...

               Linus


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
