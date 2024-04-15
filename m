Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 207CB8A5A14
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 20:45:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwRKo-0003Ap-PD;
	Mon, 15 Apr 2024 18:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rwPhs-0001b6-Tx
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uOrEsRLhKT6ZKVtPRnTeUpJwpod8q+jzfgJFwajhhYI=; b=HxFjXrK257J8V7ssJU94fc3MlT
 8fHRug644KaaIEAxNDA4hJxYk5hVl9E0UJlF0Ysm/OSn2SVThT3NPjuwYa6Mw27T0HAkTJsjwKTai
 QxWK0Q6BYRXOBm+MFtC2GmYZEa44a1qxyLYA/NyjEDnK/mya8ALW4xxnp8SeMEYM83o0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uOrEsRLhKT6ZKVtPRnTeUpJwpod8q+jzfgJFwajhhYI=; b=anIpSAKhN3D+rKlGEPsk1GqRgL
 dpwYfipTIPlVPvCEZl5FQbXNSeBcEjxdNnwss7i4Nk9HJNkmnVIEJV47rTZjH8Cv+WoqSbx/7WNqH
 xSXgOMUa0CijcoC/XOQ42YSx7MX2nZw75UWWf6i/ExY7uQJqcRn8pCEYeJ5ULivOnQhU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwPhp-0001C7-KU for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=uOrEsRLhKT6ZKVtPRnTeUpJwpod8q+jzfgJFwajhhYI=; b=t4Xb2I1zIQ+nHD8XpAUxr6peIt
 yTVdzlk2Z51Z1B941Ni1dtCjKVs4YelQrv4MOpKn8RNNIsGoVo8MYTZGPN+jUwKrkuzL4kxchJtj8
 ZKjpVi4AxqMn3Bhf96fNAK5zLocoPjflNZoOqvKKEqcJ4n5WAb3iosv9esAU6jU7BN9nHgW6Kinel
 8WrBD/3jMcXOC5OFcfsiXiF8NpP8Ihd/83n+wXXGiN+P74WY5SVHKTVAkE3uUuSyy6qu5ZV+j6Fso
 PjgSVauXJdaAVlP0G4xzam8ImRsILxmpuynQut7iA8/4M2+DNbZALq3bHfGkepRROVjsWMR3kRYx9
 1POAhrkA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rwOEw-0000000Fy1B-3I56;
 Mon, 15 Apr 2024 15:27:26 +0000
Date: Mon, 15 Apr 2024 16:27:26 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Zh1HXjcluA0dXycM@casper.infradead.org>
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
X-Spam-Score: -5.2 (-----)
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
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [90.155.50.34 listed in list.dnswl.org]
X-Headers-End: 1rwPhp-0001C7-KU
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
 Johan Hovold <johan@kernel.org>,
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

I agree.

> >     To make it fully compatible
> >     we also need to make sure it's persistently mounted read-only.
> 
> My reaction to that is "only if it turns out we really need to".

Unfortunately, we do.  It seems that ntfs3 has some bugs, and (according
to Anton, the ntfs-classic maintainer) it's actually corrupting perfectly
good filesystems.  I'd expected that this kind of bug would have been
shaken out by now (it's been in the kernel for over two and a half years!)
but it seems like people just haven't been using it.



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
