Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC1C8A5A16
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 20:45:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwRKp-0003BB-Bj;
	Mon, 15 Apr 2024 18:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rwQ56-0002b0-AF
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MsdpXRv+6Grw+o7mug0lreWM2Z55cSZgC2/P2Jngpy4=; b=fXQlWjnN8Xewy0ZCHBZWTGeWjx
 Swqb5vCTkkL+BDIh20UHsZOMvzigiixwSEZ9zSSAIqsy0S/teN14TLE9cReog/Q4b9dk8SfZ3Dfjp
 x6SrbcV9g/XHm1XtV6ctWFve0CGVKnmc5is6WKzNsSlp9QpjbK88EJRsymovcryPcoBc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MsdpXRv+6Grw+o7mug0lreWM2Z55cSZgC2/P2Jngpy4=; b=G9pMRukvYC20f+1TRlRkCU8Hh9
 ivCDjGqWBa32Zczqm8mabgWP3mtnBG5oo4ZgUgzqq77UiappDT1vjoA8vaY+XlRLYAdVYi39ewR1J
 wSX9i8UrTNct+6ntPFPNl3vd+py4djEInQWkL5CAx2RhQ37Db5eRugE2iu+n9jMfGRDk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwQ56-00039k-7I for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:25:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 895E060EAC;
 Mon, 15 Apr 2024 16:06:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C66DC2BD11;
 Mon, 15 Apr 2024 16:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713197165;
 bh=DHgzmazo1Glv7ZL1pMj7ynM9gjCt5b18g1EiYByuCMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T0MU7oX2cT1a03rWZMgFvCiVD8hPTXC89YYghSzOnBVzm6NbRi3wCCrG6D4K+cUe5
 49ccilD9ypoqL6tKwOoah1iwhBEc5+Jf2nFqaEjVLo1U/lHChB+ZfucL8bGGzAORa2
 BfCOgR8k9CLr81hRPuept9mqPFbbprBu671uOdfysjQnaCw3Z5IJcbd5UPtnuqKroQ
 kUGWsONyTPmwsFH6FvUi3LWVxhnECaIk8jWdYDXy8xeNeewTaPSdwaSmqp1JqNCiPG
 B7rDvXfpe4KyQWiuU84Yx29GYUQSK1FjIXMbFqx9OMMaiaYURDBqswfno8dF5LNwBD
 zwQ41sNQEaDEw==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rwOqJ-000000007z2-1tiT;
 Mon, 15 Apr 2024 18:06:03 +0200
Date: Mon, 15 Apr 2024 18:06:03 +0200
From: Johan Hovold <johan@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Zh1Qa2aB2Dg_-mW4@hovoldconsulting.com>
References: <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
 <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
 <20240415-warzen-rundgang-ce78bedb5f19@brauner>
 <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
 <Zh1MCw7Q0VIKrrMi@hovoldconsulting.com>
 <CAHk-=whN3V4Jzy+Mv8UZGTJ5VEk_ihCS8tu3VskW-HCfBg6r=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whN3V4Jzy+Mv8UZGTJ5VEk_ihCS8tu3VskW-HCfBg6r=g@mail.gmail.com>
X-Spam-Score: -7.4 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 08:51:13AM -0700,
 Linus Torvalds wrote:
 > On Mon, 15 Apr 2024 at 08:47, Johan Hovold <johan@kernel.org> wrote: >
 > > > I think the "ntfs" alias must always be mounted read-only [...] 
 Content analysis details:   (-7.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwQ56-00039k-7I
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

On Mon, Apr 15, 2024 at 08:51:13AM -0700, Linus Torvalds wrote:
> On Mon, 15 Apr 2024 at 08:47, Johan Hovold <johan@kernel.org> wrote:
> >
> > I think the "ntfs" alias must always be mounted read-only because you
> > can currently have an fstab entry which does not specify "ro" and this
> > mount would suddenly become writeable when updating to 6.9 (possibly by
> > a non-privileged user, etc).
> 
> Well, it would be fairly easy to do particularly if we just do it for
> the old legacy case.
> 
> Of course, even the legacy case had that CONFIG_NTFS_RW option, so
> people who depended on _that_ would want to be able to remount...

Ah, right, I forgot about CONFIG_NTFS_RW as I've never enabled it.

Judging from the now removed Kconfig entry perhaps not that many people
did:

	The only supported operation is overwriting existing files,
	without changing the file length.  No file or directory
	creation, deletion or renaming is possible. 

but I guess it still makes my argument above mostly moot.

At least if we disable write support in ntfs3 by default for now...

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
