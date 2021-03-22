Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C54E344FCC
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Mar 2021 20:21:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lOQ7b-0002AF-CL; Mon, 22 Mar 2021 19:21:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <rdunlap@infradead.org>) id 1lOPPA-0006X6-QZ
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Mar 2021 18:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rl+fpF7nw2v6vDCF7gkFj9YxtY+9uWMh+gGI7FFHeJw=; b=lZVIMG6nbjCgSKWDTc5pU9qZdi
 PbaCZ6POhY9ApoLbkFO/clViF0gLK4zrUbf1CKQlfHWdFB2e/wv/xTgooi0ud2Mk0I6Aw9gWNdWxY
 LTZVlTH3ycBplWDz97CvwVyXQn16QrvwB23YcaLu0/YGu9h+saZBqBh1KtyeSgcmPumI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rl+fpF7nw2v6vDCF7gkFj9YxtY+9uWMh+gGI7FFHeJw=; b=ecZwAFqjC/K8d+2fiItkQyeJva
 qFCxrUSDGpZmOnuH7IBlnlLU5GzwR5QGukPfj/ul58x4PmsPv1JH3w7EnRcJJ/Y7FWmigD/xUJox6
 GsaGecwZMikMMd+n6pFlvSCiOpeYeDOGturM0lhXHSxuz0aa7pir8A4pBTOZz9XsFwvs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lOPP0-0006Kl-9l
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Mar 2021 18:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Rl+fpF7nw2v6vDCF7gkFj9YxtY+9uWMh+gGI7FFHeJw=; b=oS13UTpVDkfitZDJJQI7pldZVT
 42OvFaFYBhhlEl0Q5RL3KJ2Dp/Wbui9q28TSjopAVr4Ir+D909UXPhreQjR1Siy1scboXBygLM1Yh
 X2q7G1l/8lBi7cnmAyjHYhQvHp2LoYLCWM55Pwr8yI+Z2rLJUlU2jIGcCZ1OqlJgsmjxBvSnUTuFU
 tpGIkIbDMYeqN5ebTQNwc0BhZJeidAZBltuNATUODIZqYOQ/U7IH5pZycZ0+lK07ruF1QhdAO2jC5
 VHRbS7bnIgUPbIi9vCfuvBBrfKTJtSdVLHNPbU2DhIYmcGZzhxMBGITXu337pij1StVfd/ubyuf0Y
 FSbdF81A==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lOPOL-008vG0-QS; Mon, 22 Mar 2021 18:35:16 +0000
To: Aditya Srivastava <yashsri421@gmail.com>, anton@tuxera.com
References: <CAKXUXMxU_7YBqyEeip5kpN5LpYmtR0MFF4QbdtOebxJHC1pkTA@mail.gmail.com>
 <20210322171131.14347-1-yashsri421@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <30d75349-4f62-d442-9976-ed921ed23dfe@infradead.org>
Date: Mon, 22 Mar 2021 11:35:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210322171131.14347-1-yashsri421@gmail.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lOPP0-0006Kl-9l
X-Mailman-Approved-At: Mon, 22 Mar 2021 19:21:29 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] ntfs: fix incorrect kernel-doc
 comment syntax in files
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
Cc: linux-ntfs-dev@lists.sourceforge.net, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 corbet@lwn.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 3/22/21 10:11 AM, Aditya Srivastava wrote:
> The opening comment mark '/**' is used for highlighting the beginning of
> kernel-doc comments.
> There are certain files in fs/ntfs which follow this syntax, but the
> content inside does not comply with kernel-doc.
> Such lines were probably not meant for kernel-doc parsing, but are parsed
> due to the presence of kernel-doc like comment syntax(i.e, '/**'),
> which causes unexpected warnings from kernel-doc.
> 
> E.g., presence of kernel-doc like comment in the header for
> fs/ntfs/attrib.c, causes these unexpected warnings by kernel-doc:
> "warning: Incorrect use of kernel-doc format:  * ntfs_map_runlist_nolock - map (a part of) a runlist of an ntfs inode"
> "warning: Function parameter or member 'ni' not described in 'ntfs_map_runlist_nolock'"
> "warning: Function parameter or member 'vcn' not described in 'ntfs_map_runlist_nolock'"
> "warning: Function parameter or member 'ctx' not described in 'ntfs_map_runlist_nolock'"
> "warning: expecting prototype for c(). Prototype was for ntfs_map_runlist_nolock() instead"
> 
> Similarly for other files too.
> 
> Provide a simple fix by replacing such occurrences with general comment
> format, i.e. '/*', to prevent kernel-doc from parsing it.
> 
> Also fix enum documentation format at "ntfs_compression_constants", in
> fs/ntfs/compress.c, by prefixing 'enum' keyword to the comment
> description.
> 
> Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
> Changes in v2:
> - prefix 'enum' keyword at "ntfs_compression_constants - enum of constants used in the compression code" comment in fs/ntfs/compress.c
> - modify comment message correspondingly
> 
>  fs/ntfs/aops.c     | 2 +-
>  fs/ntfs/aops.h     | 2 +-
>  fs/ntfs/attrib.c   | 2 +-
>  fs/ntfs/compress.c | 8 ++++----
>  fs/ntfs/dir.c      | 4 ++--
>  fs/ntfs/inode.c    | 2 +-
>  fs/ntfs/mft.c      | 2 +-
>  fs/ntfs/runlist.c  | 2 +-
>  8 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
> index bb0a43860ad2..1024cdec136a 100644
> --- a/fs/ntfs/aops.c
> +++ b/fs/ntfs/aops.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * aops.c - NTFS kernel address space operations and page cache handling.
>   *
>   * Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.
> diff --git a/fs/ntfs/aops.h b/fs/ntfs/aops.h
> index f0962d46bd67..2dcd46befdff 100644
> --- a/fs/ntfs/aops.h
> +++ b/fs/ntfs/aops.h
> @@ -1,5 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0-or-later */
> -/**
> +/*
>   * aops.h - Defines for NTFS kernel address space operations and page cache
>   *	    handling.  Part of the Linux-NTFS project.
>   *
> diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> index d563abc3e136..2911c04a33e0 100644
> --- a/fs/ntfs/attrib.c
> +++ b/fs/ntfs/attrib.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * attrib.c - NTFS attribute operations.  Part of the Linux-NTFS project.
>   *
>   * Copyright (c) 2001-2012 Anton Altaparmakov and Tuxera Inc.
> diff --git a/fs/ntfs/compress.c b/fs/ntfs/compress.c
> index d2f9d6a0ee32..e4e7587e8f7b 100644
> --- a/fs/ntfs/compress.c
> +++ b/fs/ntfs/compress.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * compress.c - NTFS kernel compressed attributes handling.
>   *		Part of the Linux-NTFS project.
>   *
> @@ -19,7 +19,7 @@
>  #include "ntfs.h"
>  
>  /**
> - * ntfs_compression_constants - enum of constants used in the compression code
> + * enum ntfs_compression_constants - enum of constants used in the compression code
>   */
>  typedef enum {
>  	/* Token types and access mask. */
> @@ -41,12 +41,12 @@ typedef enum {
>  	NTFS_MAX_CB_SIZE	= 64 * 1024,
>  } ntfs_compression_constants;
>  
> -/**
> +/*
>   * ntfs_compression_buffer - one buffer for the decompression engine
>   */
>  static u8 *ntfs_compression_buffer;
>  
> -/**
> +/*
>   * ntfs_cb_lock - spinlock which protects ntfs_compression_buffer
>   */
>  static DEFINE_SPINLOCK(ntfs_cb_lock);
> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> index cd96083a12c8..518c3a21a556 100644
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * dir.c - NTFS kernel directory operations. Part of the Linux-NTFS project.
>   *
>   * Copyright (c) 2001-2007 Anton Altaparmakov
> @@ -17,7 +17,7 @@
>  #include "debug.h"
>  #include "ntfs.h"
>  
> -/**
> +/*
>   * The little endian Unicode string $I30 as a global constant.
>   */
>  ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index f5c058b3192c..4277d0fd7d88 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * inode.c - NTFS kernel inode handling.
>   *
>   * Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index 0d62cd5bb7f8..d197d402933a 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * mft.c - NTFS kernel mft record operations. Part of the Linux-NTFS project.
>   *
>   * Copyright (c) 2001-2012 Anton Altaparmakov and Tuxera Inc.
> diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
> index 97932fb5179c..0d448e9881f7 100644
> --- a/fs/ntfs/runlist.c
> +++ b/fs/ntfs/runlist.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * runlist.c - NTFS runlist handling code.  Part of the Linux-NTFS project.
>   *
>   * Copyright (c) 2001-2007 Anton Altaparmakov
> 


-- 
~Randy



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
