Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C19973E5DFD
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmS-0007hh-VQ; Tue, 10 Aug 2021 14:31:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <kari.argillander@gmail.com>) id 1mDMUM-0006i2-U6
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 07:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9ho5vi/DVYwm8HX90yRCWh3kL6ZbH0pPpPt+rtsTu+E=; b=RKCinTRHuk2rUHnpc6y2FVOzFF
 JngrI4uVJtpO4Ozz7EFMSvvtf5+TfRSSMQi52WH/1I++Iznhv/5u1Z5M54OFX02PtQ1g93sRfdDix
 yJiWXYw7KZbyXwauAXcH2bOHv1HkxaiCJSdNuu3whANgHAxQHo4xJJXkxQsfJVg2tEWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9ho5vi/DVYwm8HX90yRCWh3kL6ZbH0pPpPt+rtsTu+E=; b=FX1cBactbIJc+LMoUJE7A3yWe5
 877tXo3TFErM0n04TS1UpHBefQpBsMWEqnhVAMDzEbOPDCpHBUUu2Ssj4SHc6GKg9Qx784vXci+oP
 DZJjOFUkyqW75ZHIefKiq20a81GEHFUi0ZhK/aCO/VNL6oZqeCX+Gc4IhdTvLcYdA3zk=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDMUI-001Z9j-Gj
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 07:47:54 +0000
Received: by mail-lf1-f47.google.com with SMTP id z20so2535385lfd.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 10 Aug 2021 00:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9ho5vi/DVYwm8HX90yRCWh3kL6ZbH0pPpPt+rtsTu+E=;
 b=Tq25JJsTwzCuLHsWd9rZoCPk3z64mDLARlSk6+OF1bu8+lJF6AiA2eUxq1xjeaH0rY
 rQILgAW4IsPYmnv2U/XsUxcbpintogfNKMqmMOG2SbcVjUt3MJ4fHJ8mtJzfGOx+TZ9e
 uc8L76lsWJU4YsBdWpxtXKDH+/G24jsxOdJHRqzrFOOeUpgwY96/T+HasQKBHlBmrOj1
 rqocaSnG9epHbk/fQ1lWBux5srmnIX1Pf4+ALLz+qQElDi69NJzlYFvTcwh+w9UDCQ5X
 PqiPbkwOZEYVyAQjqJ+fYNiDuBhK7bJYBJ9U7ftfnftbJh0xHrmOWyF4O0NYARUXgEAX
 bGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9ho5vi/DVYwm8HX90yRCWh3kL6ZbH0pPpPt+rtsTu+E=;
 b=ElXZgD0lxItEqRHAfqHoEp33fpmosHxKBFGzqseU2NjzD+nfa+6ODfAJo+nraln21u
 TrlO8GuK9B3FlhzRAe+rjJs3E2fI3FEHByDTbCi7Wu3HiVIuSbVzYlXaBLJzTYxEXvL2
 PYw0vWso4LMWm2ExtLJoI4W640Z1Kq6W5D42IaTLJMvPYHOFGTEjoseNO4/c2/wZQ/l8
 n05Tiwi6a1P47klKJ7SME5QGmOu+tykDWgAUwCXr3qJ0befUOl6Z0ppYwdSvAi/Ayp3j
 g78Tr+v4fMzEOuLrS49Yti/qj4LA3XSEKnNSkBmKlocRpqEN7MztZpPV4oDgIWoxpJQZ
 jPtA==
X-Gm-Message-State: AOAM530nkBCT/IorZRr4Vm6VkKJj+AQ5TOboXFuug9yTBr0OuFFViJvr
 rMm7566sZavZukSAVyKFXPI=
X-Google-Smtp-Source: ABdhPJwNu3wAQ5xPPvZPKr1/VluV1GfO/Sd7e30s19zJ3T6BV3QajBVWSPz5ccTJyW7KMMhPLGgKug==
X-Received: by 2002:a05:6512:2354:: with SMTP id
 p20mr20919562lfu.26.1628581663777; 
 Tue, 10 Aug 2021 00:47:43 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id u14sm2153481lfu.120.2021.08.10.00.47.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 00:47:43 -0700 (PDT)
Date: Tue, 10 Aug 2021 10:47:40 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Message-ID: <20210810074740.mkjcow2inyjaakch@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-9-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729134943.778917-9-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mDMUI-001Z9j-Gj
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 oleksandr@natalenko.name, rdunlap@infradead.org, aaptel@suse.com,
 willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jul 29, 2021 at 04:49:41PM +0300, Konstantin Komarov wrote:
> This adds Kconfig, Makefile and doc
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++++

Still missing Documentation/filesystems/index.rst as I stated before
https://lore.kernel.org/linux-fsdevel/20210103220739.2gkh6gy3iatv4fog@kari-VirtualBox/

>  fs/ntfs3/Kconfig                    |  46 ++++++++++++
>  fs/ntfs3/Makefile                   |  36 ++++++++++
>  3 files changed, 189 insertions(+)
>  create mode 100644 Documentation/filesystems/ntfs3.rst
>  create mode 100644 fs/ntfs3/Kconfig
>  create mode 100644 fs/ntfs3/Makefile
> 
> diff --git a/Documentation/filesystems/ntfs3.rst b/Documentation/filesystems/ntfs3.rst


> +Mount Options
> +=============
> +
> +The list below describes mount options supported by NTFS3 driver in addition to
> +generic ones.
> +
> +===============================================================================
> +
> +nls=name		This option informs the driver how to interpret path
> +			strings and translate them to Unicode and back. If
> +			this option is not set, the default codepage will be
> +			used (CONFIG_NLS_DEFAULT).
> +			Examples:
> +				'nls=utf8'

It seems that kernel community will start use iocharset= as default. nls
option can still be alias but will need deprecated message. See message
https://lore.kernel.org/linux-fsdevel/20200102211855.gg62r7jshp742d6i@pali/

and current work from Pali
https://lore.kernel.org/linux-fsdevel/20210808162453.1653-1-pali@kernel.org/

This is still RFC state so probably no horry, but good to know stuff. I
also added Pali so he also knows.

> diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile
> new file mode 100644
> index 000000000..279701b62
> --- /dev/null
> +++ b/fs/ntfs3/Makefile
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Makefile for the ntfs3 filesystem support.
> +#
> +
> +# to check robot warnings
> +ccflags-y += -Wint-to-pointer-cast \
> +	$(call cc-option,-Wunused-but-set-variable,-Wunused-const-variable) \
> +	$(call cc-option,-Wold-style-declaration,-Wout-of-line-declaration)

It is good idea to include this url in commit message.
https://lore.kernel.org/linux-fsdevel/212218590.13874.1621431781547@office.mailbox.org/

And also add that signed off tag from Tor Vic.

> +
> +obj-$(CONFIG_NTFS3_FS) += ntfs3.o
> +
> +ntfs3-y :=	attrib.o \
> +		attrlist.o \
> +		bitfunc.o \
> +		bitmap.o \
> +		dir.o \
> +		fsntfs.o \
> +		frecord.o \
> +		file.o \
> +		fslog.o \
> +		inode.o \
> +		index.o \
> +		lznt.o \
> +		namei.o \
> +		record.o \
> +		run.o \
> +		super.o \
> +		upcase.o \
> +		xattr.o
> +
> +ntfs3-$(CONFIG_NTFS3_LZX_XPRESS) += $(addprefix lib/,\
> +		decompress_common.o \
> +		lzx_decompress.o \
> +		xpress_decompress.o \
> +		)
> \ No newline at end of file
> -- 
> 2.25.4
> 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
