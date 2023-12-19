Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 654F7818626
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Dec 2023 12:17:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rFY5y-0007ek-AB;
	Tue, 19 Dec 2023 11:17:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1rFUnL-0007QN-Ko
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Dec 2023 07:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cjn8hX1KT394HEpidPrpbNcXmODugTQJomA9o+lP4vg=; b=fy8mzAqvIm0Gl4a4/gIQoK2r0l
 PcBTyclIJPvM/78cdWVO+DVlIQgKqhYC3w0PSW1sJcKfYb5YpvdZH7riY4C89FIOsWpeEcIQnVwd4
 1owkK/RQhW8cxGQYR822s1Rb1M5M0hpbWgqVbHa5WQj7/XslZpThgTI+ECpcS0RlMLFE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cjn8hX1KT394HEpidPrpbNcXmODugTQJomA9o+lP4vg=; b=d919zL2WG3ZuaDJlTysKzp/yyH
 meNHqBSwhaic0VE1D6SpRtl8wEjcdnE0HWPDGPdnmhiBGIoxV6avF1M/gMnbglW5h7CV7DPDX4wKn
 yZXcrvhovkRntxQTC4pScmQnft8/f/PfKaVFp+BxcsQwE0gPb7jJq03sS6z8xjN/z3Z8=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFUnL-0004HL-Cs for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Dec 2023 07:45:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2BAD8CE170E
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Dec 2023 07:45:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A5BCC433CA
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Dec 2023 07:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1702971923;
 bh=0yhIdF83SvlKvcfOUfED/VuBoVXBPBniiBY53TSs5gg=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=Cpx3LraSQV4LvH8/dizlYHlg9v3s4ihUwdhEDFFk6fgxJ9QfaAqHVcUSZDeGBUCgg
 +I2NjFiVgN4P+rGVP5Pt0yWHSk9pHZs0hZbpUaIqPIue9702Be0o9x2Z735pHEVkny
 SmunxjP9693k0h+XfOusTywZFC6mmEwTPbA+9S7n3c/CJOl2lHKx36rkqKP1RzrkPY
 V3u+3BB9rD9nBRqBVheeZhv2OqcWcttQCKFz2ZNH6qWWRUPv3jUoQtgD1Jscr6dqWZ
 bdMi/10UXx0MgzkRQAevHxme6RrCiDQze6Lro8eYACRsAMcIDU1cWmmzyEbj55G2i4
 ncSIZMwsk50UA==
Received: by mail-oo1-f47.google.com with SMTP id
 006d021491bc7-593f4dbcaaaso4216eaf.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 18 Dec 2023 23:45:23 -0800 (PST)
X-Gm-Message-State: AOJu0Yyvc+wHOjEnB/P9IEub/6kd0l4icksOYYzSSH0bazQHirC5jwmd
 DTVwCXZ4ecaRj2Fs3OQSSLYs305pbT/4ziY4YQk=
X-Google-Smtp-Source: AGHT+IGWpMyZrzsgBFQEmfedcmWbX0ZdkN9kKdn/VbDYin9z3hpoShCxhCTp12i6DjZX6ZVX20X1S3HoloE9iyRAQRE=
X-Received: by 2002:a05:6871:70b:b0:203:4ca1:ba1e with SMTP id
 f11-20020a056871070b00b002034ca1ba1emr247540oap.36.1702971922691; Mon, 18 Dec
 2023 23:45:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a8a:746:0:b0:507:5de0:116e with HTTP; Mon, 18 Dec 2023
 23:45:21 -0800 (PST)
In-Reply-To: <20231219045414.24670-1-rdunlap@infradead.org>
References: <20231219045414.24670-1-rdunlap@infradead.org>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Tue, 19 Dec 2023 16:45:21 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_n+bQfD-249T59+EASZU1zHVSP7ukVDMyiebXWEv5AbA@mail.gmail.com>
Message-ID: <CAKYAXd_n+bQfD-249T59+EASZU1zHVSP7ukVDMyiebXWEv5AbA@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-12-19 13:54 GMT+09:00,
 Randy Dunlap <rdunlap@infradead.org>:
 > Correct the kernel-doc function parameter warnings for function >
 ntfs_dir_fsync()
 to prevent the following kernel-doc warnings: > > [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rFUnL-0004HL-Cs
X-Mailman-Approved-At: Tue, 19 Dec 2023 11:17:02 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: dir.c: fix kernel-doc function
 parameter warnings
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Christian Brauner <brauner@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-12-19 13:54 GMT+09:00, Randy Dunlap <rdunlap@infradead.org>:
> Correct the kernel-doc function parameter warnings for function
> ntfs_dir_fsync() to prevent the following kernel-doc warnings:
>
> dir.c:1489: warning: Function parameter or member 'start' not described in
> 'ntfs_dir_fsync'
> dir.c:1489: warning: Function parameter or member 'end' not described in
> 'ntfs_dir_fsync'
> dir.c:1489: warning: Excess function parameter 'dentry' description in
> 'ntfs_dir_fsync'
>
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Anton Altaparmakov <anton@tuxera.com>
> Cc: Namjae Jeon <linkinjeon@kernel.org>
> Cc: linux-ntfs-dev@lists.sourceforge.net
> Cc: Andrew Morton <akpm@linux-foundation.org>
As you may already know, the same warning is probably coming from
ntfs_file_fsync() in file.c.
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>
Thanks!
> ---
>  fs/ntfs/dir.c |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff -- a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1462,7 +1462,8 @@ static int ntfs_dir_open(struct inode *v
>  /**
>   * ntfs_dir_fsync - sync a directory to disk
>   * @filp:	directory to be synced
> - * @dentry:	dentry describing the directory to sync
> + * @start:	offset in bytes of the beginning of data range to sync
> + * @end:	offset in bytes of the end of data range (inclusive)
>   * @datasync:	if non-zero only flush user data and not metadata
>   *
>   * Data integrity sync of a directory to disk.  Used for fsync, fdatasync,
> and
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
