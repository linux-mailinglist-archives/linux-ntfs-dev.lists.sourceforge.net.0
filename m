Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 827E382DBC8
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 15:49:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPOHf-0004t8-0z;
	Mon, 15 Jan 2024 14:49:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rPOHb-0004t1-1y
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 14:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DMqbdyi4eLyG/P84atg6xw7sLhpYbrXTR+c3A3qjimU=; b=AWA1TTdd9xKToYxgxHbMawOtMP
 hugEENyWAf6moHaakqC/vhur9ji0/mYuZafEHBhrAmT68cgt7343p1u93jgbHZTC9XGPi3WnSVnFa
 3YoixIB87H926VMQhTxXUenjlAckq1biDPRTBonMrsNQDyRP6x0sU95SmwoIKuznaFBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DMqbdyi4eLyG/P84atg6xw7sLhpYbrXTR+c3A3qjimU=; b=m49k0m9qIrDDFAINNmUGrrhCDE
 6jwjRi7hEgwdWUSwpshpHMM45dv+pfI+BdJQzelbDou2rrNuO3zeEOfXjTBOGIcyozIuKGGPKDy3y
 cHUW390dpQMpz7m45QU37PsPks1SIEwjMUyA2nrcS5JBOH+1R/c0kjMuwZPfy4XwjVyY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPOHY-00062J-IN for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 14:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DMqbdyi4eLyG/P84atg6xw7sLhpYbrXTR+c3A3qjimU=; b=ImWYwdwWIEfyR5eMq3znGWSWKz
 FrW8akY+9YiHOJjUSfxiMSp06YI3QteLOa2bzj+HwYKXKReTMO3l0Bmv/6occdwozYUVUFnSdo05x
 Y+cfLQEvFUcxbhEcv1x37XfDqIGL3z1wSJS+D93PouzIvpUSj7bduOrCIbzTOwkWAyUKaJCqIXUv3
 dDqjuYHJuzWdNs7cOTAs55UW08BeElvHj6qGHGafJq74AeOQvN28RWWQdySvYLgY7rRFX3/bv+VII
 zGFBEA37bAvBoAMspWlIRZilliqsMBBFyaqbltmSX6Q+7aHtjJNfJ2TzjLnMnRJoIobvEb9b9R1rT
 XwYCDuxg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1rPOH9-009yaj-8k; Mon, 15 Jan 2024 14:49:19 +0000
Date: Mon, 15 Jan 2024 14:49:19 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <ZaVF72QxQm/cN5yy@casper.infradead.org>
References: <20240115072025.2071931-1-willy@infradead.org>
 <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 15, 2024 at 11:00:35AM +0000, Anton Altaparmakov
 wrote: > Hi Matthew, > > On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:
 > > The replacement, NTFS3, was merged over two years ago. It [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPOHY-00062J-IN
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Christian Brauner <brauner@kernel.org>, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Jan 15, 2024 at 11:00:35AM +0000, Anton Altaparmakov wrote:
> Hi Matthew,
> 
> On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:
> > The replacement, NTFS3, was merged over two years ago.  It is now time to
> > remove the original from the tree as it is the last user of several APIs,
> > and it is not worth changing.
> 
> It was my impression that people are complaining ntfs3 is causing a whole
> lot of problems including corrupting people's data.  Also, it appears the
> maintainer has basically disappeared after it got merged.

I'm not terribly happy with how the maintainer behaves either, but
you've also been missing in action for nine years (if we're counting
code authored by you) or two years (if a R-b is enough).

According to your documentation, you don't support creating new files
or directories, so I'd suggest that your code has never been put through
the xfstests wringer in the way that ntfs3 has.

> Also, which APIs are you referring to?  I can take a look into those.

The biggest one for me is the folio work.  Everywhere in your code that
use a struct page needs to be converted to a struct folio.  Support for
large folios is optional, and I wouldn't bother trying to add that.
Take a look at, eg, nilfs2, ext4, ext2, iomap, NFS, AFS for some
filesystems which have been (at least mostly) converted.

Any functions in mm/folio-compat.c should no longer be called.

If we're being really ambitious, filesystems should stop using the
buffer cache and switch to using iomap.  There's a lot of work going
on and unmaintained filesystems are holding us back.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
