Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 366DB8A5A15
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 20:45:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwRKp-0003B0-2l;
	Mon, 15 Apr 2024 18:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rwPlp-0004uS-A3
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:05:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=flNpZwqhQooF5jmhG68dzhFKaboC8kt1PXo3UuStORk=; b=LJ9Ffubl1VXyzdWCZM3dNxeaZY
 kFqKAWEStL36vhdMM1tw0McEdhIGMZrjt5Yh9z9srEO5pOuMbBiwZ3MkyXSa2XcEwJx8RvSIGcE2u
 ubi8611xHe6ryPETO7MNGXKlfKmiyWZa8pMqq/K3FrjAWeHOf20xKiy83SBa0bfR3kzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=flNpZwqhQooF5jmhG68dzhFKaboC8kt1PXo3UuStORk=; b=H8nVZZSpeLv/vTWPWn09kkoiZZ
 wP0DtKQZVI4RHFCQNQZiM5y3xNsZGNjuda8vVt2ABz9BlQDVUOX2McdZLjW3dNuuFtaa6Up6yjEJz
 YgtADVxVsT0ceGtqE/BQuM79/9t6+p/rKWKqouGzSA2aID1N96OfagUQp1CjGWmXKD3w=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwPln-0001Vr-Uj for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:05:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id A510FCE0E24;
 Mon, 15 Apr 2024 15:47:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBD1AC2BD11;
 Mon, 15 Apr 2024 15:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713196045;
 bh=kqmdoARUi+zYJ/sz9hO4Rz/kqq9WqkoTBom+XH8kNBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tZHIt/LJWow2GjwyaUJxdKlHEbLpW4MCyLzbZrXPZqxETYEFYarHOAwxDtv+m7u3P
 PWUMlJ9x0W8B8OMWNmFr7yQRsJ8THDb72j3n7Qr83sJVzSExcwHNNQnT+zIIiwab7H
 jau74tOiEP+dEmS3lDJvrqK9ArLErNfj8hYTFN9SjTwfET0vKBRo0vSGTo9SA3l+TS
 hnyh/YNs+LR0ZWW0JXuef17x2sxBrTt5ohH/ciJ2GBp4pxXx/tRGiQCcKjxWZp6JTf
 lZQz3Tct11TOq7siYkaEPrm/0ptKbLzBWGu8fNBkYVrkW7ShhKtqTjzl5rrRQxwY/F
 uW9W7kEX+5n5g==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rwOYF-000000007iH-3KuV;
 Mon, 15 Apr 2024 17:47:23 +0200
Date: Mon, 15 Apr 2024 17:47:23 +0200
From: Johan Hovold <johan@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Zh1MCw7Q0VIKrrMi@hovoldconsulting.com>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 08:23:46AM -0700,
 Linus Torvalds wrote:
 > On Mon, 15 Apr 2024 at 07:16, Christian Brauner <brauner@kernel.org> wrote:
 > > > > (1) Since the ntfs3 driver is supposed to serve as [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwPln-0001Vr-Uj
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

On Mon, Apr 15, 2024 at 08:23:46AM -0700, Linus Torvalds wrote:
> On Mon, 15 Apr 2024 at 07:16, Christian Brauner <brauner@kernel.org> wrote:
> >
> > (1) Since the ntfs3 driver is supposed to serve as a drop-in replacement
> >     for the legacy ntfs driver we should to it the same way we did it
> >     for ext3 and ext4 where ext4 registers itself also for the ext3
> >     driver. In other words, we would register ntfs3 as ntfs3 filesystem
> >     type and as legacy ntfs filesystem type.
> 
> I think that if just registering it under the same name solves the
> immediate issue, that's the one we should just go for.

I also tend to agree, but...

> >     To make it fully compatible
> >     we also need to make sure it's persistently mounted read-only.
> 
> My reaction to that is "only if it turns out we really need to".
> 
> It sounds unlikely that somebody has an old ntfs setup and then tries
> to mount things rw which didn't use to work and things go sideways if
> that then suddenly works.
> 
> But "unlikely" isn't "impossible", of course - it's just that I'd
> suggest we actually wait for that report to happen and ask what the
> heck they were doing and why they were doing that...

I think the "ntfs" alias must always be mounted read-only because you
can currently have an fstab entry which does not specify "ro" and this
mount would suddenly become writeable when updating to 6.9 (possibly by
a non-privileged user, etc).

We also need to do something about the ntfs3 driver spamming the logs
about broken corrections also when mounted read-only even if it doesn't
eat your filesystem then.

And it seems write-support should be disabled in the driver by default
until someone has tracked down why listing a directory can currently
corrupt your filesystem.

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
