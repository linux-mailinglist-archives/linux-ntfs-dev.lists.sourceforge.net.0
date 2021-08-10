Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5613E5DF7
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmR-0007g0-Ur; Tue, 10 Aug 2021 14:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <djwong@kernel.org>) id 1mDLXk-0006aF-21
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 06:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BXoh00PCHmUZg3A7OfsxJ92gEhRu7vaOckIuu/8qVVw=; b=mmq4sY5Lbt4wX9iXvkdz4t9WuT
 jL6+zqxUHU002G6Z2N1P4wXVz0KKOdt8AYCvsEiMz7rvsabUtkzps9+QasU9Q+ff54iSEKpQfJjO+
 PhIN/mzX7EtQtkTydATC4+eZ0O1IgMTYT+cL7ndZeWtC3Tk5MEB8G0OX/3KqTTC4mF7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BXoh00PCHmUZg3A7OfsxJ92gEhRu7vaOckIuu/8qVVw=; b=FiH2l0EKgXHEhJkiwz5QFsQZ+Q
 bJgR/BkjHCMjb3gZLC8Lp1ATVjgZ+8BwZWR7AnAxOjVMoas4XK24gmxbGqsBxgEO4HjeWEWGuI6z1
 wuS31+X+Y2+fV6bddffi/hXxXbqZhs5Czwnu97ocfxMc+FIk2191DyAvAlfdqNLO4tpg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDLXe-0000yN-2G
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 06:47:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90D3461058;
 Tue, 10 Aug 2021 06:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628578028;
 bh=EwApVal98GJfGLrb0/RTF40PF/lUG0GVeGxLHsgKH7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CVN757FRS1gi/Y3lvE4P4YibmF7yaIUlKzDvclQOpm16d8lBEmubBUx/RUUJELrpd
 c+4sBjWHP9L4zatRbHZ43X2HalE8LN7679dg7k2h+yvqB/ekIlG2uQmHk9YAe3X1eS
 Jhc0/do/eA5qmKQTw98eSsVkTYCjC+Fgl2QxptfVikZHvOcmYHW7xexhTL9kl02OBG
 siGyHbhKAYYp67V0JHdxZRTGE/dXngEldBcHRGLuCSe5CVNXhKRfEefpxN4O7hPJtX
 2oucPH6NRTnh3QTIXgBVdWsi8jVk/B6sZ4tWmNWszdSmOz0Wga+k2HqfMtmCKDcoJ7
 D9ZXpWC15mJcg==
Date: Mon, 9 Aug 2021 23:47:08 -0700
From: "Darrick J. Wong" <djwong@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210810064708.GI3601405@magnolia>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210810054637.aap4zuiiparfl2gq@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810054637.aap4zuiiparfl2gq@kari-VirtualBox>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mDLXe-0000yN-2G
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:55 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 00/10] NTFS read-write driver GPL
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
Cc: ebiggers@kernel.org, andy.lavr@gmail.com, nborisov@suse.com,
 oleksandr@natalenko.name, rdunlap@infradead.org, dsterba@suse.cz,
 willy@infradead.org, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Aug 10, 2021 at 08:46:37AM +0300, Kari Argillander wrote:
> On Thu, Jul 29, 2021 at 04:49:33PM +0300, Konstantin Komarov wrote:
> > This patch adds NTFS Read-Write driver to fs/ntfs3.
> > 
> > Having decades of expertise in commercial file systems development and huge
> > test coverage, we at Paragon Software GmbH want to make our contribution to
> > the Open Source Community by providing implementation of NTFS Read-Write
> > driver for the Linux Kernel.
> > 
> > This is fully functional NTFS Read-Write driver. Current version works with
> > NTFS(including v3.1) and normal/compressed/sparse files and supports journal replaying.
> > 
> > We plan to support this version after the codebase once merged, and add new
> > features and fix bugs. For example, full journaling support over JBD will be
> > added in later updates.
> 
> I'm not expert but I have try to review this series best I can and have
> not found any major mistakes which prevents merging. Yeah there are
> couple bugs but because this is not going to replace NTFS driver just
> yet then IMO it is best that merge will happend sooner so development
> fot others get easier. I will also try to review future patches (from
> Paragon and others), test patches and make contribution at my own for this
> driver. So please use
> 
> Reviewed by: Kari Argillander <kari.argillander@gmail.com>

Nit: there's supposed to be a dash between 'Reviewed' and 'by'.

That said, thanks for putting your name out there! :)

--D


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
