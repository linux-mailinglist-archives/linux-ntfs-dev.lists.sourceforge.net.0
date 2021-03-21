Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 211BF3433C5
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 21 Mar 2021 18:38:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lO21e-0004WR-Jm; Sun, 21 Mar 2021 17:38:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukas.bulwahn@gmail.com>) id 1lO1s8-0007aq-1s
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 21 Mar 2021 17:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6zm0aiiO73U4b8eE9BfMLdrO9fYZI85feI/kWWq6N+0=; b=XB7HE5+9mWN7uMaQDMUx6lCf8O
 lx/ywt6yHSohganOBo+T8Qc+densNs3zsKLJtsNG6zSSPxfcnChzQ3XS+oSam5qgq3k0qnHKxJKOm
 cpftDLAZPeYhMFXWl4DzjZeia0/lCFNdHLP3bhBgAy5UKfKpVDMCmRwvLjgUJwjqct10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6zm0aiiO73U4b8eE9BfMLdrO9fYZI85feI/kWWq6N+0=; b=IigT6Oo5jHGEuJvPCLbH3xuyZg
 JpHqaJ7oHp80ORYjQ6Oh9vy5t/ZcqMVj8qVvJnlUa/wzxSvZOjmnNmbyuEv5oTEUG3osPUKxJ7n7a
 U1dDjkGlUPDWLUGDhXLHw8dAHNrEusddg5cGK3ztb+x6voG9NsMUFXNgPLmVdp7M1+Wg=;
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lO1rv-0003eM-0V
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 21 Mar 2021 17:28:15 +0000
Received: by mail-io1-f42.google.com with SMTP id f19so11518769ion.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 21 Mar 2021 10:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6zm0aiiO73U4b8eE9BfMLdrO9fYZI85feI/kWWq6N+0=;
 b=ODKt5GlH0QYUbBjSA0VzWTIrTFU7hNZx4Trf723HnKNdyxS7hrEYsCUB5+uKs7tX5E
 QE1i5iGdkIOJfxBdXIg1C1i6ZeWpSMYwZn1dHRYh5OytXv30xGhxU/Z+VW75q1NpznpI
 8mvur6kDTaWexnhsYokgiRWkbdVDRf9pvz6XkvP8RIzoJUXR+maNsnlHrbh8uJiStFej
 Q6nrhgNJqM9YY9fK8AGn3JbRNiYHqY0DqRvnCxtXqYqbZ9FhPf48uWJgM1auugstu0mc
 n272BTDpxEGQu80J8vl+j8+7N2DvZ9Nsa/UXBUQnVIo0prREbCQyoUTVVougJl6+qKod
 WnwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6zm0aiiO73U4b8eE9BfMLdrO9fYZI85feI/kWWq6N+0=;
 b=URag/lu0yTVcFbMi9Ri8fvfObKRl80f5bBrnXgOzRGoCs+AxvrW9gptRxNqkFOU8L3
 jp3pBNbH8Bpx07WGM/xMBa5ajG0PwYDh3y7Z/szdwDnTg4/tnrqmz+rfpOFjr91n5LT0
 aSFFrocTvC+dkKhAjWxAdKeCmrDp3kTYBerBwwyUqjm1XmDF96E//KsLi+MJtvxt6QoZ
 ZqT3iCGTeWtDMXaEVH+8lkoq1e4oFaVOyQyD/cYYY3kKZeGP8PUquhosB8oYZ7h2/VcA
 0rebf7Bm8Uiisrux0cYHlW2el6f3VzSaHLY4BtVNfZb3FubiCwvFANWnXrS90BQ4fLQU
 q2iw==
X-Gm-Message-State: AOAM532/EL66XSV/UCdrASZF+NylhssonduSTYZWWN1k72sYBCnYVe3u
 cf23ElwVizbwapUoIX7TSJRNtqZ76e0y3R8elPo=
X-Google-Smtp-Source: ABdhPJw8hFlwEyVE+neX6S01GcwG0x51SBVyZUZnXE+zOIURumHfftQt2i5MNfVCK7WrZCXNUioDdwMMiy6RYRI6yWg=
X-Received: by 2002:a05:6638:2bb:: with SMTP id
 d27mr8072342jaq.98.1616347677213; 
 Sun, 21 Mar 2021 10:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210320162939.32707-1-yashsri421@gmail.com>
In-Reply-To: <20210320162939.32707-1-yashsri421@gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sun, 21 Mar 2021 18:27:46 +0100
Message-ID: <CAKXUXMxU_7YBqyEeip5kpN5LpYmtR0MFF4QbdtOebxJHC1pkTA@mail.gmail.com>
To: Aditya Srivastava <yashsri421@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lukas.bulwahn[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lO1rv-0003eM-0V
X-Mailman-Approved-At: Sun, 21 Mar 2021 17:38:05 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: fix incorrect kernel-doc comment
 syntax in files
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
Cc: Jonathan Corbet <corbet@lwn.net>, linux-ntfs-dev@lists.sourceforge.net,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-kernel-mentees@lists.linuxfoundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, Mar 20, 2021 at 5:29 PM Aditya Srivastava <yashsri421@gmail.com> wrote:
>
> The opening comment mark '/**' is used for highlighting the beginning of
> kernel-doc comments.
> There are certain files in fs/ntfs which follow this syntax, but the
> content inside does not comply with kernel-doc.
> Such lines were probably not meant for kernel-doc parsing, but are parsed
> due to the presence of kernel-doc like comment syntax(i.e, '/**'), which
> causes unexpected warnings from kernel-doc.
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
> Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
> ---
> * Applies perfectly on next-20210319
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
>   *         handling.  Part of the Linux-NTFS project.
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
> index d2f9d6a0ee32..014dbd079ad5 100644
> --- a/fs/ntfs/compress.c
> +++ b/fs/ntfs/compress.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * compress.c - NTFS kernel compressed attributes handling.
>   *             Part of the Linux-NTFS project.
>   *
> @@ -18,7 +18,7 @@
>  #include "debug.h"
>  #include "ntfs.h"
>
> -/**
> +/*
>   * ntfs_compression_constants - enum of constants used in the compression code

here this one should probably be prefixed with enum; then, it should
be valid kernel-doc.

>   */
>  typedef enum {
> @@ -41,12 +41,12 @@ typedef enum {
>         NTFS_MAX_CB_SIZE        = 64 * 1024,
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
> --
> 2.17.1
>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
