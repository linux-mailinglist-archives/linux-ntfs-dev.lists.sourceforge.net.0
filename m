Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8362A1B63
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1ED-0001wM-29; Sun, 01 Nov 2020 00:28:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1kYmcQ-0002Tg-Bh
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Oct 2020 08:52:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zdmFDlbIIG0TocbJkT2Bxtb52GXawDJ7JJWcQctFTtE=; b=aK3D7MRE24Fgy65dx4vTpqMG4u
 EFZOvDOKNQ/y+ZDMPgxBKoRb0AvPyCKKEtz1/dMPp+drJlzMg/o+ogSs7jBQn+h8D5dRnL9m5/A7c
 GDLw7D2s5oo7B5uHIG70jF4SbtTN6K2d1UKPUFmM71ep171czs0ClJJBIaw+kM8EMhJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zdmFDlbIIG0TocbJkT2Bxtb52GXawDJ7JJWcQctFTtE=; b=VTxrvkeJKyGowiwhI3Fh2atK4f
 gQUa7/O4vd8U0r/sf3xbVEn0N3u58eXX+YW4KGzaZyXAxDazsfc8KfRBW2yay2piuSRm994ZYV95A
 WzlR/Xur7BDSfkKw3+4zsE9zcwKKacm6+ekuBa1lP6pmw6hnU8Xu0dskuR0rzTp39I5Q=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYmc5-00DwAW-LE
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 31 Oct 2020 08:52:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E7C4267373; Sat, 31 Oct 2020 09:51:42 +0100 (CET)
Date: Sat, 31 Oct 2020 09:51:42 +0100
From: Christoph Hellwig <hch@lst.de>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Message-ID: <20201031085142.GA5949@lst.de>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
 <20201030164122.vuao3avogggnk42q@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030164122.vuao3avogggnk42q@pali>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kYmc5-00DwAW-LE
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:09 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v11 00/10] NTFS read-write driver GPL
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
Cc: mark@harmstone.com, nborisov@suse.com, rdunlap@infradead.org,
 dsterba@suse.cz, willy@infradead.org, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com,
 Christoph Hellwig <hch@lst.de>, anton@tuxera.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Oct 30, 2020 at 05:41:22PM +0100, Pali Roh=E1r wrote:
> I would like to open discussion about two ntfs kernel drivers. Do we
> really need two drivers (one read only - current version and one
> read/write - this new version)?
> =

> What other people think?
> =

> I remember that Christoph (added to loop) had in past a good argument
> about old staging exfat driver (it had support also for fat32/vfat),
> that it would cause problems if two filesystem drivers would provide
> support for same filesystem.

Yes, we really should not have two drivers normally.  I think Konstantin
and Anton need to have a chat on how to go forard.  Without knowing the
details read-write support sounds like a killer feature we'd really want
if there aren't any code quality or other feature regression problems,
but I haven't had a chance to look at the code at all yet.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
