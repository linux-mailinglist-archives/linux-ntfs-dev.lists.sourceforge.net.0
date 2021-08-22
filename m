Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD7D4038F8
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Sep 2021 13:40:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mNvvr-0002va-BP; Wed, 08 Sep 2021 11:39:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mHoVm-00033o-AD
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 22 Aug 2021 14:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=43NEJMr0brhfqyLpY3hPgyhFUTczXVAcWbtRqQQyC5A=; b=bO6KcZlsLlU7L5d9GzK+SHSl3L
 ji/LucpEWAtC967y9W7G8TlktQRFmDIP6Sh8NSWNDjQF6ylM34m/uInxIqHq0+syYO+kJgB4GZn/X
 A81jWsgUjGHG/GJzcmXpvQE9/clqPWGI4BThWhlyKiGD1I5LuiF+/xMmJvbKXSW1FshQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=43NEJMr0brhfqyLpY3hPgyhFUTczXVAcWbtRqQQyC5A=; b=KtFHYsr4gUVXwOhtS4GtiqiVws
 lRsMUsqKdpvJWydyPaEurNJBaxKeAAQf71KAeLEdT67U9MyTenH6hydrKqEIl6F/oErnRsu4L5agy
 i00OzS2A2wKuJbY7YFn5E1j+sv8jwZFnliW56L/0Sk9jqCiMz0aXh2erqCFE1eulL+v0=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mHoVi-0000NS-LS
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 22 Aug 2021 14:31:46 +0000
Received: by mail-lf1-f47.google.com with SMTP id g13so31999298lfj.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 22 Aug 2021 07:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=43NEJMr0brhfqyLpY3hPgyhFUTczXVAcWbtRqQQyC5A=;
 b=J9W4isTpQ7OZPErXo2Mo5+7UuchHyNqHkA9qicXQ6SUt28hTjkMSUbdxek7WJNTLH3
 e/7zXFAS+OKy+QwoeecamSGbZrUmEADanAgWlevCplyFPEz1QFwRxBDM/DLhhKx0Fcgn
 RR2TEfLnwuw+LWpT8UWve0nXC6fZ4vg2qwiKAICwvuirZK46rCH8yBui3UMdLIRFrCcO
 PVcYI9gAznpTHpJNLL3DYhLMBaXdsEt8s+6A4Jsf37XVS3G2QuASGYV8FvhVOKSruBvQ
 x60ifTGzB3okCjtsDVIAXEshTWKOEDzgRoO4N9yG2Nw2i2neINv27pxBMdzMQzdrlwQw
 nIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=43NEJMr0brhfqyLpY3hPgyhFUTczXVAcWbtRqQQyC5A=;
 b=qMQmrfNsCotxi+rAxD/tcaszIUkCi9IkiFk1eYuacr/DRK1ak6qXlW4CFttc7kzuie
 Ae6qGSttpsckVU8MR0UeDRpKiau+RZQOsKjXlkip4e7xbEY4bt+d308ZFMBf+Z8KuS9n
 xkfKnEgU5om+BZlM5VW54KgcgSh2JwqMfoUgEV3xfAOaZPcL1M5VBT0pDxi0PrPdetiG
 QPV9S2XJCdMtflUTYH31RRSeOKdLUjyfAOr/Z7qe8BwuppCNvLDYWqJkEqBhcl2sGWq6
 thECgbJWlpG9XITpx7Nu6LUQDng42XPtMufWbuu/Tt9hXhBR7gY5Mf6iteHVM20BQVov
 pSIA==
X-Gm-Message-State: AOAM530Frwo7fnkyv1srgkBQDquHSqu0CJgVbo6wyS8pKFRDd1Ro4tON
 hG7zu9aPxCyvsaM5ilLBzs4=
X-Google-Smtp-Source: ABdhPJyzVxUfiTwOFDSY/OKNym6ckuZ8IweoE+bquKIj4ImmrkFXBxw2dEjDxAulAE1byO3rREsV2w==
X-Received: by 2002:a05:6512:3888:: with SMTP id
 n8mr22711423lft.468.1629642696113; 
 Sun, 22 Aug 2021 07:31:36 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id k23sm1121170ljg.73.2021.08.22.07.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Aug 2021 07:31:35 -0700 (PDT)
Date: Sun, 22 Aug 2021 17:31:33 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210822143133.4meiisx2tbfgrz5l@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-5-almaz.alexandrovich@paragon-software.com>
 <20210822122003.kb56lexgvv6prf2t@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210822122003.kb56lexgvv6prf2t@pali>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mHoVi-0000NS-LS
X-Mailman-Approved-At: Wed, 08 Sep 2021 11:39:38 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 04/10] fs/ntfs3: Add file
 operations and implementation
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Aug 22, 2021 at 02:20:03PM +0200, Pali Roh=E1r wrote:
> On Thursday 29 July 2021 16:49:37 Konstantin Komarov wrote:
> > diff --git a/fs/ntfs3/file.c b/fs/ntfs3/file.c
> > new file mode 100644
> > index 000000000..b4369c61a
> > --- /dev/null
> > +++ b/fs/ntfs3/file.c
> > @@ -0,0 +1,1130 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + *
> > + * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
> > + *
> > + *  regular file handling primitives for ntfs-based filesystems
> > + */
> > +#include <linux/backing-dev.h>
> > +#include <linux/buffer_head.h>
> > +#include <linux/compat.h>
> > +#include <linux/falloc.h>
> > +#include <linux/fiemap.h>
> > +#include <linux/msdos_fs.h> /* FAT_IOCTL_XXX */
> > +#include <linux/nls.h>
> > +
> > +#include "debug.h"
> > +#include "ntfs.h"
> > +#include "ntfs_fs.h"
> > +
> > +static int ntfs_ioctl_fitrim(struct ntfs_sb_info *sbi, unsigned long a=
rg)
> > +{
> > +	struct fstrim_range __user *user_range;
> > +	struct fstrim_range range;
> > +	struct request_queue *q =3D bdev_get_queue(sbi->sb->s_bdev);
> > +	int err;
> > +
> > +	if (!capable(CAP_SYS_ADMIN))
> > +		return -EPERM;
> > +
> > +	if (!blk_queue_discard(q))
> > +		return -EOPNOTSUPP;
> > +
> > +	user_range =3D (struct fstrim_range __user *)arg;
> > +	if (copy_from_user(&range, user_range, sizeof(range)))
> > +		return -EFAULT;
> > +
> > +	range.minlen =3D max_t(u32, range.minlen, q->limits.discard_granulari=
ty);
> > +
> > +	err =3D ntfs_trim_fs(sbi, &range);
> > +	if (err < 0)
> > +		return err;
> > +
> > +	if (copy_to_user(user_range, &range, sizeof(range)))
> > +		return -EFAULT;
> > +
> > +	return 0;
> > +}
> > +
> > +static long ntfs_ioctl(struct file *filp, u32 cmd, unsigned long arg)
> > +{
> > +	struct inode *inode =3D file_inode(filp);
> > +	struct ntfs_sb_info *sbi =3D inode->i_sb->s_fs_info;
> > +	u32 __user *user_attr =3D (u32 __user *)arg;
> > +
> > +	switch (cmd) {
> > +	case FAT_IOCTL_GET_ATTRIBUTES:
> > +		return put_user(le32_to_cpu(ntfs_i(inode)->std_fa), user_attr);
> > +
> > +	case FAT_IOCTL_GET_VOLUME_ID:
> > +		return put_user(sbi->volume.ser_num, user_attr);
> > +
> > +	case FITRIM:
> > +		return ntfs_ioctl_fitrim(sbi, arg);
> > +	}
> > +	return -ENOTTY; /* Inappropriate ioctl for device */
> > +}
> =

> Hello! What with these two FAT_* ioctls in NTFS code? Should NTFS driver
> really implements FAT ioctls? Because they looks like some legacy API
> which is even not implemented by current ntfs.ko driver.

I was looking same thing when doing new ioctl for shutdown. These
should be dropped completly before this gets upstream. Then we have
more time to think what ioctl calls should used and which are
necessarry.

> Specially, should FS driver implements ioctl for get volume id which in
> this way? Because basically every fs have some kind of uuid / volume id
> and they can be already retrieved by appropriate userspace tool.

My first impression when looking this code was that this is just copy
paste work from fat driver. FITRIM is exactly the same. Whoever
copyed it must have not thinked this very closly. Good thing you
bringing this up.

I didn't want to just yet because there is quite lot messages and
things which are in Komarov todo list. Hopefully radio silence will
end soon. I'm afraid next message will be "Please pull" for Linus
and then it cannot happend because of radio silence.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
