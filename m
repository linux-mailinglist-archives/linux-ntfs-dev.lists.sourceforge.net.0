Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B854038F3
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Sep 2021 13:40:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mNvvo-0002sF-3M; Wed, 08 Sep 2021 11:39:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>) id 1mHmSU-0008UO-Nh
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 22 Aug 2021 12:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GmfcQqMspKcCJnCpUTyh+d3Z+oRBUwBi6kQQsKY+6Ek=; b=DaADbvXQnj08czXmFe8kbjL8qQ
 Lxrt7T1L+0vEs4fs0HdSkgQAuthxEKYw8AGl9R/VtN01sBEU1n+NtzpSLCXeI6lsLXvzYCx73F77h
 MC49Fm4v1nGs9sL7nrldHxjFw1cTsRtz7bSlgx1IYU8+0IwbhhVb8tNuFOfbGNEfHCc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GmfcQqMspKcCJnCpUTyh+d3Z+oRBUwBi6kQQsKY+6Ek=; b=N6CG6KOi/z4i66ccDTmgUWOL+7
 cOeEH29VJ/4iHQ3iYXwHp8890JjQZxFx6xktcznovg5UGyHyZEA1jeWKuEbGf7vEEidxdKkMNj6Q/
 UUu0uhEF3bOqNmPFk66JKKkgHOL0rzHvb80NMjZ3fOTFvg3HQ8Lfp20wjAlOCj06Lrf0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mHmST-00034h-EW
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 22 Aug 2021 12:20:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D91D6126A;
 Sun, 22 Aug 2021 12:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629634806;
 bh=fnzZTcKvp2q8oy8pfW79kIB0yHT1Ujv1I88z7SOBbJY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=snUzs/Pgaxs6SPoVblzbomb44FY/Eaz9Ifoc/aZJuP+sYyIyFNIQPrUCv8+5/8qkX
 P3gOlvie33pV9YYQPoKY/TDNzSqc6OK/7+S6+KMoB5ze3cZyGX7R/2h9W8+Vu8RV73
 dOB5PUtq0IM7aMy7kumqt8d7owvClL0zdBsYoSAsg/6r3J33ET4H8IbkwRYx+zTNSF
 5kPwM3ySNoYWLPZY4OPFxQLpqqlt/Ff9LMKxJQvXIl5maxqEOMrH9k7Meh3vlGtm2E
 aDSyeE33z6JZGvJlMqaX6q5IH0yXiLti7CXVsyODR+9WPhY9b62wQp6R6IPN3YRK+X
 QZAK8xe+Vlenw==
Received: by pali.im (Postfix)
 id 585407C7; Sun, 22 Aug 2021 14:20:03 +0200 (CEST)
Date: Sun, 22 Aug 2021 14:20:03 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>, viro@zeniv.linux.org.uk
Message-ID: <20210822122003.kb56lexgvv6prf2t@pali>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-5-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729134943.778917-5-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1mHmST-00034h-EW
X-Mailman-Approved-At: Wed, 08 Sep 2021 11:39:39 +0000
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
Cc: ebiggers@kernel.org, rdunlap@infradead.org, nborisov@suse.com,
 oleksandr@natalenko.name, dsterba@suse.cz, aaptel@suse.com,
 willy@infradead.org, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 dan.carpenter@oracle.com, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, andy.lavr@gmail.com, hch@lst.de,
 mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thursday 29 July 2021 16:49:37 Konstantin Komarov wrote:
> diff --git a/fs/ntfs3/file.c b/fs/ntfs3/file.c
> new file mode 100644
> index 000000000..b4369c61a
> --- /dev/null
> +++ b/fs/ntfs3/file.c
> @@ -0,0 +1,1130 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + *
> + * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
> + *
> + *  regular file handling primitives for ntfs-based filesystems
> + */
> +#include <linux/backing-dev.h>
> +#include <linux/buffer_head.h>
> +#include <linux/compat.h>
> +#include <linux/falloc.h>
> +#include <linux/fiemap.h>
> +#include <linux/msdos_fs.h> /* FAT_IOCTL_XXX */
> +#include <linux/nls.h>
> +
> +#include "debug.h"
> +#include "ntfs.h"
> +#include "ntfs_fs.h"
> +
> +static int ntfs_ioctl_fitrim(struct ntfs_sb_info *sbi, unsigned long arg)
> +{
> +	struct fstrim_range __user *user_range;
> +	struct fstrim_range range;
> +	struct request_queue *q = bdev_get_queue(sbi->sb->s_bdev);
> +	int err;
> +
> +	if (!capable(CAP_SYS_ADMIN))
> +		return -EPERM;
> +
> +	if (!blk_queue_discard(q))
> +		return -EOPNOTSUPP;
> +
> +	user_range = (struct fstrim_range __user *)arg;
> +	if (copy_from_user(&range, user_range, sizeof(range)))
> +		return -EFAULT;
> +
> +	range.minlen = max_t(u32, range.minlen, q->limits.discard_granularity);
> +
> +	err = ntfs_trim_fs(sbi, &range);
> +	if (err < 0)
> +		return err;
> +
> +	if (copy_to_user(user_range, &range, sizeof(range)))
> +		return -EFAULT;
> +
> +	return 0;
> +}
> +
> +static long ntfs_ioctl(struct file *filp, u32 cmd, unsigned long arg)
> +{
> +	struct inode *inode = file_inode(filp);
> +	struct ntfs_sb_info *sbi = inode->i_sb->s_fs_info;
> +	u32 __user *user_attr = (u32 __user *)arg;
> +
> +	switch (cmd) {
> +	case FAT_IOCTL_GET_ATTRIBUTES:
> +		return put_user(le32_to_cpu(ntfs_i(inode)->std_fa), user_attr);
> +
> +	case FAT_IOCTL_GET_VOLUME_ID:
> +		return put_user(sbi->volume.ser_num, user_attr);
> +
> +	case FITRIM:
> +		return ntfs_ioctl_fitrim(sbi, arg);
> +	}
> +	return -ENOTTY; /* Inappropriate ioctl for device */
> +}

Hello! What with these two FAT_* ioctls in NTFS code? Should NTFS driver
really implements FAT ioctls? Because they looks like some legacy API
which is even not implemented by current ntfs.ko driver.

Specially, should FS driver implements ioctl for get volume id which in
this way? Because basically every fs have some kind of uuid / volume id
and they can be already retrieved by appropriate userspace tool.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
