Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75446227035
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 20 Jul 2020 23:16:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jxd8o-0005lV-Cj; Mon, 20 Jul 2020 21:16:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <natechancellor@gmail.com>) id 1jxaEk-0002X2-Ta
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jul 2020 18:10:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dwEJsfwlCgYoOoc7ZO6uJZf/vr4ZXlXX4a+d3KSul78=; b=QSjxCMnftlsIHaThpp0TWOTp8W
 I53t6oUzPpcj9Irf/SBR62o86LWq+WjHqMNzTwZgbaU60YUY5zHWnLFf7tMW4ft8tGXinHVPo7AO1
 VbNlWjuazb8r9eJR91PD5VAeJglFLiw5fAqUFUkP4L64X7jMPqjt4QSetQunolJTgdAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dwEJsfwlCgYoOoc7ZO6uJZf/vr4ZXlXX4a+d3KSul78=; b=V2AqrX4B2VKUEjZWH+smwLJcL7
 G5dOYSzdocybDTx/U4w+P+eGqYSz1G0MuFnbz3fWo7kUwCTpS+bJklaatoWgv8eQLyn3PFkGp1F9v
 zqrMkrVfD+TpoSn0EAyYpRCWov4LCWp6craZ4bWvjE5nepXdMFdqJbQoyudxJ+3qwrdY=;
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxaEj-001u1T-2Z
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jul 2020 18:10:02 +0000
Received: by mail-qt1-f194.google.com with SMTP id w9so1301016qts.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 20 Jul 2020 11:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dwEJsfwlCgYoOoc7ZO6uJZf/vr4ZXlXX4a+d3KSul78=;
 b=tN8yesRPMfvGOoe7LjdmwksRHEV9CfANZwTGD2WB1She1GOgdXPPh/yBn8ZOYyE4QH
 4jnnVTgXbnN06EmDApSrk15aC4ZKnEPr7fNu2s3mlwbz9Na8nsqp4P4FTmsRnjt8FgnD
 wfFNtv/iDHFLKxOZQs64LrvoRiQZuMnQtE+eVWjHK6Y1Mf9INicJj5m4RRrXwnGJqR3H
 4U/IAoJf/wy+wjfvimt6GfwehyO85dH7HSeT7EcAAbjbzzR6PHuodGEvcRgf3lmSOzQ1
 lwDXCoCccdB8HCgFX4AkyDO/HxEgtevAkoUmjoviHstoTu8Oz6807p55OpTD+xLq0ZsY
 vSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dwEJsfwlCgYoOoc7ZO6uJZf/vr4ZXlXX4a+d3KSul78=;
 b=s2IthnxkB7c1f1doUbNs1smawK8EeaIflzBEX0fDaLvtB6A4wuAVBO83c0DB/rJGwW
 fuia17PhWbPc4R6vRm5iyBBEjrP+RCRE6N91wCZxiZ+XSRnMEFAcMfZQeGqgWDhqXY9E
 TXBQAAAlir/bz6ZYnJ8Sd9Wm0h3ziEOy91QGqCMUXbVI5HZhN++K0MTi1Mzrzn5dyDc9
 +EKpZoA1KocJaNMwkF+bCUGNNTSpbJV4t3rO8AhmMriUJ/DFj7Gb7CHY3X2fLqMv4EE3
 YFlIDizxneyctEqKnp+q/ux5FPB4vhCWwpxroAaOatFOMTwuTxI81kY+aTwpvpR0tFdp
 yDMA==
X-Gm-Message-State: AOAM531qqxlZj9V1ZYnZEbvtwPjx1V0cNYdYe+2wDBgAeOsm5c3NveKr
 tsUxvAoFRyCzSxbaUxA4ENA=
X-Google-Smtp-Source: ABdhPJwRPEqgd7V9ut9+6Hy1hWEBVav428Xzxi706m1O9CYbZz2Rqgiku2MLIW3nnVOSMo4aO11hsw==
X-Received: by 2002:aed:252c:: with SMTP id v41mr25356387qtc.234.1595268587842; 
 Mon, 20 Jul 2020 11:09:47 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
 by smtp.gmail.com with ESMTPSA id x3sm274009qkd.62.2020.07.20.11.09.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 11:09:47 -0700 (PDT)
Date: Mon, 20 Jul 2020 11:09:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Luca Stefani <luca.stefani.ge1@gmail.com>
Message-ID: <20200720180945.GA6045@ubuntu-n2-xlarge-x86>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
 <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (natechancellor[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxaEj-001u1T-2Z
X-Mailman-Approved-At: Mon, 20 Jul 2020 21:16:04 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] ntfs: Fix ntfs_test_inode and
 ntfs_init_locked_inode function type
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
Cc: freak07 <michalechner92@googlemail.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, akpm@linux-foundation.org,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, Jul 18, 2020 at 01:25:13PM +0200, Luca Stefani wrote:
> Clang's Control Flow Integrity (CFI) is a security mechanism that can
> help prevent JOP chains, deployed extensively in downstream kernels
> used in Android.
> 
> It's deployment is hindered by mismatches in function signatures.  For
> this case, we make callbacks match their intended function signature,
> and cast parameters within them rather than casting the callback when
> passed as a parameter.
> 
> When running `mount -t ntfs ...` we observe the following trace:
> 
> Call trace:
> __cfi_check_fail+0x1c/0x24
> name_to_dev_t+0x0/0x404
> iget5_locked+0x594/0x5e8
> ntfs_fill_super+0xbfc/0x43ec
> mount_bdev+0x30c/0x3cc
> ntfs_mount+0x18/0x24
> mount_fs+0x1b0/0x380
> vfs_kern_mount+0x90/0x398
> do_mount+0x5d8/0x1a10
> SyS_mount+0x108/0x144
> el0_svc_naked+0x34/0x38
> 
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> Tested-by: freak07 <michalechner92@googlemail.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  fs/ntfs/dir.c   |  2 +-
>  fs/ntfs/inode.c | 27 ++++++++++++++-------------
>  fs/ntfs/inode.h |  4 +---
>  fs/ntfs/mft.c   |  4 ++--
>  4 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> index 3c4811469ae8..e278bfc5ee7f 100644
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
>  	na.type = AT_BITMAP;
>  	na.name = I30;
>  	na.name_len = 4;
> -	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
>  	if (bmp_vi) {
>   		write_inode_now(bmp_vi, !datasync);
>  		iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..9bb9f0952b18 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,10 +30,10 @@
>  /**
>   * ntfs_test_inode - compare two (possibly fake) inodes for equality
>   * @vi:		vfs inode which to test
> - * @na:		ntfs attribute which is being tested with
> + * @data:	data which is being tested with
>   *
>   * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
> - * inode @vi for equality with the ntfs attribute @na.
> + * inode @vi for equality with the ntfs attribute @data.
>   *
>   * If searching for the normal file/directory inode, set @na->type to AT_UNUSED.
>   * @na->name and @na->name_len are then ignored.
> @@ -43,8 +43,9 @@
>   * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>   * allowed to sleep.
>   */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
>  {
> +	ntfs_attr *na = (ntfs_attr *)data;
>  	ntfs_inode *ni;
>  
>  	if (vi->i_ino != na->mft_no)
> @@ -72,9 +73,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  /**
>   * ntfs_init_locked_inode - initialize an inode
>   * @vi:		vfs inode to initialize
> - * @na:		ntfs attribute which to initialize @vi to
> + * @data:	data which to initialize @vi to
>   *
> - * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
> + * Initialize the vfs inode @vi with the values from the ntfs attribute @data in
>   * order to enable ntfs_test_inode() to do its work.
>   *
>   * If initializing the normal file/directory inode, set @na->type to AT_UNUSED.
> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>   * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>   * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>   */
> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
>  {
> +	ntfs_attr *na = (ntfs_attr *)data;
>  	ntfs_inode *ni = NTFS_I(vi);
>  
>  	vi->i_ino = na->mft_no;
> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>  	return 0;
>  }
>  
> -typedef int (*set_t)(struct inode *, void *);
>  static int ntfs_read_locked_inode(struct inode *vi);
>  static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
>  static int ntfs_read_locked_index_inode(struct inode *base_vi,
> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
>  	na.name = NULL;
>  	na.name_len = 0;
>  
> -	vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(sb, mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
>  	if (unlikely(!vi))
>  		return ERR_PTR(-ENOMEM);
>  
> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>  	na.name = name;
>  	na.name_len = name_len;
>  
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
>  	if (unlikely(!vi))
>  		return ERR_PTR(-ENOMEM);
>  
> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
>  	na.name = name;
>  	na.name_len = name_len;
>  
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
>  	if (unlikely(!vi))
>  		return ERR_PTR(-ENOMEM);
>  
> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
> index 98e670fbdd31..363e4e820673 100644
> --- a/fs/ntfs/inode.h
> +++ b/fs/ntfs/inode.h
> @@ -253,9 +253,7 @@ typedef struct {
>  	ATTR_TYPE type;
>  } ntfs_attr;
>  
> -typedef int (*test_t)(struct inode *, void *);
> -
> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
> +extern int ntfs_test_inode(struct inode *vi, void *data);
>  
>  extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
>  extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index fbb9f1bc623d..0d62cd5bb7f8 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>  		 * dirty code path of the inode dirty code path when writing
>  		 * $MFT occurs.
>  		 */
> -		vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
> +		vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
>  	}
>  	if (vi) {
>  		ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>  		vi = igrab(mft_vi);
>  		BUG_ON(vi != mft_vi);
>  	} else
> -		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
> +		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
>  				&na);
>  	if (!vi) {
>  		/*
> -- 
> 2.27.0
> 


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
