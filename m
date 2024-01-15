Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 795BC82D82F
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 12:16:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPKxc-0005LO-Hp;
	Mon, 15 Jan 2024 11:16:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mrkiko.rs@gmail.com>) id 1rPKpi-0004cE-Qi
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 11:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n8zZPv16a04c2JrdAylXruCjxboLXHW/YtOK6cugPVg=; b=Chs8UxpgTz2QbMWw68Y+BlRDXC
 m1oMelS149TfommNbFeMQ2lf/6ra9reo3m90rPel3q1kx+hbl9qNfYDuLzmDuBXbIVohzsxY4WF/h
 tgNY7wteqtCR+GxE+DhEw2WGCR9SWwgY0Yr8vLEUQVmy2Os00A+EovTi6R7AQuFAQgSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n8zZPv16a04c2JrdAylXruCjxboLXHW/YtOK6cugPVg=; b=CgZ7XS1x3QdZvI3oT7pcMFdB8o
 QVofzwUsi35jgeG+1JXjQ4BSkj+nC5/Mf6yw8cORSOcrCpqbIQ+3Zcrg+bMh3ZRVIRRUL9fBPY/8E
 i06aSCFMO4eqo8edAEaEkTBlE46Tlc88lfH/frAunFR5bsTy46sCZUD6sIXfo/X3xQGo=;
Received: from mail-lf1-f54.google.com ([209.85.167.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rPKpd-0002NV-RR for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 11:08:46 +0000
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-50eaaf2c7deso9652602e87.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Jan 2024 03:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705316911; x=1705921711; darn=lists.sourceforge.net;
 h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=n8zZPv16a04c2JrdAylXruCjxboLXHW/YtOK6cugPVg=;
 b=GnjdSDf+GWw1iC7EoYoZMY3F/q5IjMCBaN1aCiFVZU8halhj0MDGEuQuiD3xERKiiG
 Xg3oPbD0U0aTOkPm8UF0KzKrWbhjGwtoHuL3YCS9s0zU3WV6s/DjZaLNsrIsUxMLjcZt
 2XdLfNC3mBxXQ1AEP7JhXRTtNI4HjlLNjGsiTHzXObBohdUdc/YLpczeIiKpSAeL0ZjV
 lbk7Y6YnueWQWFF8bTK2iWACmxUUr7SHISXwD5fe1D1QtEMUH1+fBkOWjL8s150P7eha
 y7t1b2wrJz4zLCs8LOjyiL0cgHnJAlgJZp2KtQGi7VezieFVPOUAQzb1lOdZQGfxdPIF
 okFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705316911; x=1705921711;
 h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=n8zZPv16a04c2JrdAylXruCjxboLXHW/YtOK6cugPVg=;
 b=nkJMlNW/ga75g+xM/aCMJ/lNAt3hyyREfj54zNOHHRKW+OwOwdmIkpbABOc6EVtWln
 BBxNXK08G+wekZJtCwJ7MIHbxAIrV0JKeVdl3RWZmes8Mkf+YdFRuAhxGCI5p7nxIwze
 s/lFFPpeYLkSRiL5/DHy1V8FfrV2+LszMQOgOVJBjcagoMSckyYxHGBLu4xWofeiVSBf
 J8SCrgBuKZPP3PcUueRI1UiTDbT+a8b6t655vrNy6QSWveRYBH2c2n8F8hX5GphGmF0T
 3VbEXKU6Qd6/BJy/UAUXho6NbmOL+/QnLVvHVqnuoJ7JV8/ZwjgKjoZmm0vyZW9QuBl5
 a9Ww==
X-Gm-Message-State: AOJu0Yxemhft9C6gcpX+ubwtdbuS9nH3C6WZGgs2b/QIMDfQ3ZSFEtyB
 +5lJ1ldSnIVTIRuACN2zEgM4/euU8ex6k2a/
X-Google-Smtp-Source: AGHT+IGgAdKBX9EYgL2//c8WYkYqgwnBhB0dF1GytNx0iq9EFmXcKA0+uYVXLhqreQWLJzhUle94nQ==
X-Received: by 2002:ac2:5b1a:0:b0:50e:e1dc:9f20 with SMTP id
 v26-20020ac25b1a000000b0050ee1dc9f20mr2285955lfn.28.1705316910442; 
 Mon, 15 Jan 2024 03:08:30 -0800 (PST)
Received: from rivendell (static.167.156.21.65.clients.your-server.de.
 [65.21.156.167]) by smtp.gmail.com with ESMTPSA id
 dw13-20020a0565122c8d00b0050e7bc67cf7sm1444188lfb.138.2024.01.15.03.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jan 2024 03:08:29 -0800 (PST)
Date: Mon, 15 Jan 2024 12:08:29 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
In-Reply-To: <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
Message-ID: <00906203-9df2-ee5b-da37-b45073373ee0@gmail.com>
References: <20240115072025.2071931-1-willy@infradead.org>
 <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 15 Jan 2024, Anton Altaparmakov wrote: > Date: Mon, 
 15 Jan 2024 12:00:35 > From: Anton Altaparmakov > To: "Matthew Wilcox
 (Oracle)"
 , > Christian Brauner > Cc: linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, > ntf [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.54 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPKpd-0002NV-RR
X-Mailman-Approved-At: Mon, 15 Jan 2024 11:16:55 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] fs: Remove NTFS classic
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
 linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net



On Mon, 15 Jan 2024, Anton Altaparmakov wrote:

> Date: Mon, 15 Jan 2024 12:00:35
> From: Anton Altaparmakov <anton@tuxera.com>
> To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
>     Christian Brauner <brauner@kernel.org>
> Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
>     ntfs3@lists.linux.dev, Namjae Jeon <linkinjeon@kernel.org>
> Subject: Re: [PATCH] fs: Remove NTFS classic
> 
> Hi Matthew,
>
> On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:
>> The replacement, NTFS3, was merged over two years ago.  It is now time to
>> remove the original from the tree as it is the last user of several APIs,
>> and it is not worth changing.
>
> It was my impression that people are complaining ntfs3 is causing a whole lot 
> of problems including corrupting people's data.  Also, it appears the 
> maintainer has basically disappeared after it got merged.

To be fair - it's more like "intermittent" maintenance rather than "no maintenance".
Konstantin - would it be OK for you to have a co-maintainer to help out?

Enrico

>
> Is it really such a good idea to remove the original ntfs driver which 
> actually works fine and does not cause any problems when the replacement is 
> so poor and unmaintained?
>
> Also, which APIs are you referring to?  I can take a look into those.
>
> Best regards,
>
> 	Anton
> -- 
> Anton Altaparmakov <anton at tuxera.com> (replace at with @)
> Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
> Linux NTFS maintainer
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
