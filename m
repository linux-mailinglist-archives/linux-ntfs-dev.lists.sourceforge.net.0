Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6C9832664
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Jan 2024 10:16:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rQkzP-0006R9-6b;
	Fri, 19 Jan 2024 09:16:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <djwong@kernel.org>) id 1rQdno-0007Ye-KV
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 Jan 2024 01:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xFuzbIu0n9vr3K6Yf+97YDcVgyuAK7Z3bC1Q7idYAbc=; b=BBFDJ7RmEPeXnV2JnHpGN0MVEm
 hz/yUXK0soi0qewj/nwD9kFlmRy4Alye65vm/i40UBBnmkL/a51sBmOgPloAGiLfDDpo5r/BLDEG0
 NwMATlz+RC91R1euapJ8YwDZiCg1cJ4ByflI4ISQ/0TzmkYsswlsZN+sgYW0RwgRJTXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xFuzbIu0n9vr3K6Yf+97YDcVgyuAK7Z3bC1Q7idYAbc=; b=R75scD6+NHH0761qplrb87CQjE
 TwoOuNUNca7oG8M5OR3Cule5ds9kCgPGvjyX9jkOKKZ87imNjfHxoPy+NyiDcakSrGd/+gC7Y3moI
 No6pMhyvvRhU1aEXiaS7nmQgDDoDlbsjbGxfVmlM9GHRTaREMgOE21qyU28HSvhUFUSg=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rQdnn-0004tu-35 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 Jan 2024 01:36:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 117B7B81A94;
 Fri, 19 Jan 2024 01:35:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61ACAC433C7;
 Fri, 19 Jan 2024 01:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705628157;
 bh=/ZfBCWmKyNYBScnBAqemNsyShCkWcxOBncpAtpEWVpQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pnmxjqCfMbdtcQd4B/aZ9FYiMlXjDpLoOG5if9v8CV8fFE2+Ckq1ZKGT0saqx8VE3
 Rl6gCUzJVaF2ufyuLQR0lu9WDrcW/buZCPitTWDfs+vLE2xDRz79W2O1L9JINJyUnU
 LimS0XUSQ7FgR3fXW/L6sGaPlbZRCQCJ8StLrTXPe98HbBJNw63HKKyXv2cHcaPtyK
 HA3yD/hG61bInR4Iqp7+mVZ4WMxLmOm/sTYxhup5HfgNhCjUWE3E6TWYvU2A6FafCQ
 +ksYWfTKzyTWFQJhNsqh96iha2FSaWOrUd5D2shSOi50ilKgXEJNSLAXRF7NyT+1Jl
 +xspb4K52Rtxg==
Date: Thu, 18 Jan 2024 17:35:56 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Shrikanth Hegde <sshegde@linux.ibm.com>
Message-ID: <20240119013556.GT674499@frogsfrogsfrogs>
References: <20240118080326.13137-1-sshegde@linux.ibm.com>
 <20240118080326.13137-3-sshegde@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240118080326.13137-3-sshegde@linux.ibm.com>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 18, 2024 at 01:33:25PM +0530, Shrikanth Hegde
 wrote: > when a ifdef is used in the below manner,
 second one could be considered
 as > duplicate. > > ifdef DEFINE_A > ...code block... > ifde [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rQdnn-0004tu-35
X-Mailman-Approved-At: Fri, 19 Jan 2024 09:16:37 +0000
Subject: Re: [Linux-ntfs-dev] [RFC PATCH 2/3] fs: remove duplicate ifdefs
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
Cc: linux-ntfs-dev@lists.sourceforge.net, mpe@ellerman.id.au,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, peterz@infradead.org,
 linuxppc-dev@lists.ozlabs.org, mingo@kernel.org, anton@tuxera.com,
 chandan.babu@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jan 18, 2024 at 01:33:25PM +0530, Shrikanth Hegde wrote:
> when a ifdef is used in the below manner, second one could be considered as
> duplicate.
> 
> ifdef DEFINE_A
> ...code block...
> ifdef DEFINE_A
> ...code block...
> endif
> ...code block...
> endif
> 
> There are few places in fs code where above pattern was seen.
> No functional change is intended here. It only aims to improve code
> readability.
> 
> Signed-off-by: Shrikanth Hegde <sshegde@linux.ibm.com>
> ---
>  fs/ntfs/inode.c    | 2 --
>  fs/xfs/xfs_sysfs.c | 4 ----
>  2 files changed, 6 deletions(-)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index aba1e22db4e9..d2c8622d53d1 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -2859,11 +2859,9 @@ int ntfs_truncate(struct inode *vi)
>   *
>   * See ntfs_truncate() description above for details.
>   */
> -#ifdef NTFS_RW
>  void ntfs_truncate_vfs(struct inode *vi) {
>  	ntfs_truncate(vi);
>  }
> -#endif
> 
>  /**
>   * ntfs_setattr - called from notify_change() when an attribute is being changed
> diff --git a/fs/xfs/xfs_sysfs.c b/fs/xfs/xfs_sysfs.c
> index 17485666b672..d2391eec37fe 100644
> --- a/fs/xfs/xfs_sysfs.c
> +++ b/fs/xfs/xfs_sysfs.c
> @@ -193,7 +193,6 @@ always_cow_show(
>  }
>  XFS_SYSFS_ATTR_RW(always_cow);
> 
> -#ifdef DEBUG
>  /*
>   * Override how many threads the parallel work queue is allowed to create.
>   * This has to be a debug-only global (instead of an errortag) because one of
> @@ -260,7 +259,6 @@ larp_show(
>  	return snprintf(buf, PAGE_SIZE, "%d\n", xfs_globals.larp);
>  }
>  XFS_SYSFS_ATTR_RW(larp);
> -#endif /* DEBUG */
> 
>  STATIC ssize_t
>  bload_leaf_slack_store(
> @@ -319,10 +317,8 @@ static struct attribute *xfs_dbg_attrs[] = {
>  	ATTR_LIST(log_recovery_delay),
>  	ATTR_LIST(mount_delay),
>  	ATTR_LIST(always_cow),
> -#ifdef DEBUG
>  	ATTR_LIST(pwork_threads),
>  	ATTR_LIST(larp),
> -#endif

The xfs part seems fine to me bcause I think some bot already
complained about this...

Reviewed-by: Darrick J. Wong <djwong@kernel.org>

--D

>  	ATTR_LIST(bload_leaf_slack),
>  	ATTR_LIST(bload_node_slack),
>  	NULL,
> --
> 2.39.3
> 
> 


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
