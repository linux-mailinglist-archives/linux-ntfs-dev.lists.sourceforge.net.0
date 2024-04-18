Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1108A9820
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Apr 2024 13:04:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rxPYl-0003d8-RZ;
	Thu, 18 Apr 2024 11:04:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rxLNm-0000iS-A5
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Apr 2024 06:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vzVpqPi5kCb12nhzmemjnxbj2+gd3fM3XDjWjcPv3jY=; b=K1n2b1ROIbHmfD0ATjzRPs4VAX
 VFjiGrF+2k04VUGdByhSnPhDY4OdKEQV8M92z8XDhhi89YNDpjrT3gpwNayBOxLX9/vDakJAEr7QG
 2svxmx72DqXSPYKH/LnLJg0RXgapnQrqRaC01VqKfaMGKK7ZDI5TmmCkUtwF8kZ1bV1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vzVpqPi5kCb12nhzmemjnxbj2+gd3fM3XDjWjcPv3jY=; b=meSd9UHbAG9B0pZWNQfM4yMK5U
 ulnkuU2pOhbonyyuPinWjBK0xCPeD2fcsPPl+I/fJCj/4S9fvzp3BwvBYtLSJDwQDhtmkqmNjeKPW
 olAad1H/tjjsimUCHJu2Rk1KqxVbC4EtYeoGj3jcusijkNykGRNgO/56Wl2dXe/9lRFc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxLNm-0007xg-5Q for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Apr 2024 06:36:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A42CB61730;
 Thu, 18 Apr 2024 06:36:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 431DFC113CC;
 Thu, 18 Apr 2024 06:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713422179;
 bh=mrGvViLXE2Mtys96KlxXPpWUSmLfiAiORWlV5HWduYI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pt09tdFI852k4gRs4+vIvyJEIqllpjdD3URBRFDXWDwJXbWxvpjCVW2e3zVtPjrlC
 5FwlpI0XC6Vh2gSzOYN/gkRtXV0dUKKmjuh1A5Vbb0dXBhnzscA6VlzNLSR1CAkLNN
 gcTSqfDXlf2LQqwn+pmJtNKxOI8htCNJ5EX2dfc/mV6L+pHwCuFp0fzkJJRsqY3Sar
 J6+vuKnfuL5usGB7pKvJYQ+bXFzLCwt4+S3UiG2vbC2lXlJyPVE1awRDbevI1LnY0B
 1uq96psSGgzHQItcu8qCxbUhGssO6oSmG+KIDo0Ab2D/Msfe8ruzpjIPkmWhvqmlCf
 pVLxqOsnqptzA==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rxLNd-000000000Q3-0L4L;
 Thu, 18 Apr 2024 08:36:21 +0200
Date: Thu, 18 Apr 2024 08:36:21 +0200
From: Johan Hovold <johan@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <ZiC_ZQcIjM3xv3zT@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <015aa42b-abac-4810-8743-43913ab8e2d9@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <015aa42b-abac-4810-8743-43913ab8e2d9@paragon-software.com>
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 17, 2024 at 07:07:06PM +0300, Konstantin Komarov
 wrote: > On 25.03.2024 11:34, Christian Brauner wrote: > > This causes visible
 changes for users that rely on ntfs3 to serve as an > > alte [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rxLNm-0007xg-5Q
X-Mailman-Approved-At: Thu, 18 Apr 2024 11:04:07 +0000
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
Cc: Christian Brauner <brauner@kernel.org>, regressions@lists.linux.dev,
 linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Apr 17, 2024 at 07:07:06PM +0300, Konstantin Komarov wrote:
> On 25.03.2024 11:34, Christian Brauner wrote:
> > This causes visible changes for users that rely on ntfs3 to serve as an
> > alternative for the legacy ntfs driver. Print statements such as this
> > should probably be made conditional on a debug config option or similar.

> The initial and true reason for multiple warnings is the disregard of 
> short (DOS) names when counting hard links.
> 
> This patch should fixes this bug:
> https://lore.kernel.org/ntfs3/0cb0b314-e4f6-40a2-9628-0fe7d905a676@paragon-software.com/T/#u

As I just replied in that thread, I'm also seeing link counts being
reduced from 3 to 1, that is, to not just be decremented by one due to
the DOS name bug.

Are you sure there are no further issues here and that the patch is
indeed correct?

I did not test the patch, which is white-space damaged, but if it
addresses also the remaining warnings then the commit message would need
to be updated as well.

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
