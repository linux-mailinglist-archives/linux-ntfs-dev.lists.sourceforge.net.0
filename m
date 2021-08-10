Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 475813E5DFF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmT-0007jO-As; Tue, 10 Aug 2021 14:31:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pali@kernel.org>) id 1mDMzX-0007lh-S9
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 08:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ciuKZKfiIZvxqUE3bUi/kCnC5ytDPC+eZO+mJ/8dfdY=; b=Eq3X6qNs7Z18g9VuCuSmA8aU0t
 SXZAuooAJBh/88sq1+YLvxJjv0of9VuexSNmIPFg06HdLVpTTtIkliS7NwoTQfVejR9CuwyAFc3hJ
 EzWbhtV+SoJzYs6rQpfXEclcYH2htAVWnWFsYIl1Gn7AvUinnG7oSJfzd25yFzMEsM88=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ciuKZKfiIZvxqUE3bUi/kCnC5ytDPC+eZO+mJ/8dfdY=; b=kqwEBVQ3s+yOyCAVNx2CIDMl+1
 HweHv+0A8mMbb7TvLuOrY8Oq/ovIvT9ojI0aBC5EMOXypyT7/mJxbiKxctuZ/H9DNKdXPz7pmefM+
 MInWhr/wClMjwNBrw/PWNVtl2CFMcguKVaJllaHZJZ17WI/DOadAQhtupJv3BbfS/l6s=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDMzU-0006Nj-Jm
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 08:20:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0703B60FD8;
 Tue, 10 Aug 2021 08:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628583598;
 bh=PJDJ6GCZzc0E0w7Naf8M+hrNPtronJmpF/C1OGxHItg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sercihlmX75ZdaIziA1OAVZE1A9UxhSDXt0z7cTiHimPjJRnvLvlBxQ7rpcDeJpXA
 RXbQAbgq04P8L36uY5rwwk0yJzpjisrIpiPADx7pVBBWB9ofeeJpTbZbJMANkOU4rS
 QnuYW/+vH+HIDiUdqM9zk3sEjYJIYgFqskiTRWakDG26f7V2zxH+oq2TNVi0er1Eyw
 NJD0RNzbeWvQib6P7b3+i6pD1x3a9rEH3j9VLXds4p2nRS8jwUy4Yu+64pHWFa9MbX
 JF0eh5UUeW4Lms5CDB0hOf7/2ZFOWvMPxfef3OpEhlQXqxr2D+cnFBMG0txscIHUgX
 tWY9sK3kvEfKg==
Received: by pali.im (Postfix)
 id 654B482D; Tue, 10 Aug 2021 10:19:55 +0200 (CEST)
Date: Tue, 10 Aug 2021 10:19:55 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210810081955.b5vdsfc2tdaabbgo@pali>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-9-almaz.alexandrovich@paragon-software.com>
 <20210810074740.mkjcow2inyjaakch@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810074740.mkjcow2inyjaakch@kari-VirtualBox>
User-Agent: NeoMutt/20180716
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mDMzU-0006Nj-Jm
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 08/10] fs/ntfs3: Add Kconfig,
 Makefile and doc
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
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com, hch@lst.de,
 mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tuesday 10 August 2021 10:47:40 Kari Argillander wrote:
> On Thu, Jul 29, 2021 at 04:49:41PM +0300, Konstantin Komarov wrote:
> > This adds Kconfig, Makefile and doc
> > 
> > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > ---
> >  Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++++
> 
> Still missing Documentation/filesystems/index.rst as I stated before
> https://lore.kernel.org/linux-fsdevel/20210103220739.2gkh6gy3iatv4fog@kari-VirtualBox/
> 
> >  fs/ntfs3/Kconfig                    |  46 ++++++++++++
> >  fs/ntfs3/Makefile                   |  36 ++++++++++
> >  3 files changed, 189 insertions(+)
> >  create mode 100644 Documentation/filesystems/ntfs3.rst
> >  create mode 100644 fs/ntfs3/Kconfig
> >  create mode 100644 fs/ntfs3/Makefile
> > 
> > diff --git a/Documentation/filesystems/ntfs3.rst b/Documentation/filesystems/ntfs3.rst
> 
> 
> > +Mount Options
> > +=============
> > +
> > +The list below describes mount options supported by NTFS3 driver in addition to
> > +generic ones.
> > +
> > +===============================================================================
> > +
> > +nls=name		This option informs the driver how to interpret path
> > +			strings and translate them to Unicode and back. If
> > +			this option is not set, the default codepage will be
> > +			used (CONFIG_NLS_DEFAULT).
> > +			Examples:
> > +				'nls=utf8'
> 
> It seems that kernel community will start use iocharset= as default. nls
> option can still be alias but will need deprecated message. See message
> https://lore.kernel.org/linux-fsdevel/20200102211855.gg62r7jshp742d6i@pali/
> 
> and current work from Pali
> https://lore.kernel.org/linux-fsdevel/20210808162453.1653-1-pali@kernel.org/
> 
> This is still RFC state so probably no horry, but good to know stuff. I
> also added Pali so he also knows.

I was already in loop :-)

Anyway, yes, above RFC patch migrates all drivers to use iocharset=
mount option as it is the option which is already used by most fs
drivers. So argument is consistency.

But having the preferred mount option name in new fs drivers would
decrease work needed to done in that patch series.

> > diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile
> > new file mode 100644
> > index 000000000..279701b62
> > --- /dev/null
> > +++ b/fs/ntfs3/Makefile
> > @@ -0,0 +1,36 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Makefile for the ntfs3 filesystem support.
> > +#
> > +
> > +# to check robot warnings
> > +ccflags-y += -Wint-to-pointer-cast \
> > +	$(call cc-option,-Wunused-but-set-variable,-Wunused-const-variable) \
> > +	$(call cc-option,-Wold-style-declaration,-Wout-of-line-declaration)
> 
> It is good idea to include this url in commit message.
> https://lore.kernel.org/linux-fsdevel/212218590.13874.1621431781547@office.mailbox.org/
> 
> And also add that signed off tag from Tor Vic.
> 
> > +
> > +obj-$(CONFIG_NTFS3_FS) += ntfs3.o
> > +
> > +ntfs3-y :=	attrib.o \
> > +		attrlist.o \
> > +		bitfunc.o \
> > +		bitmap.o \
> > +		dir.o \
> > +		fsntfs.o \
> > +		frecord.o \
> > +		file.o \
> > +		fslog.o \
> > +		inode.o \
> > +		index.o \
> > +		lznt.o \
> > +		namei.o \
> > +		record.o \
> > +		run.o \
> > +		super.o \
> > +		upcase.o \
> > +		xattr.o
> > +
> > +ntfs3-$(CONFIG_NTFS3_LZX_XPRESS) += $(addprefix lib/,\
> > +		decompress_common.o \
> > +		lzx_decompress.o \
> > +		xpress_decompress.o \
> > +		)
> > \ No newline at end of file
> > -- 
> > 2.25.4
> > 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
