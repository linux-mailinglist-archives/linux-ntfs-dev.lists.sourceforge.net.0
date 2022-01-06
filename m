Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A794863EB
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  6 Jan 2022 12:48:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1n5RGE-0007la-VK; Thu, 06 Jan 2022 11:48:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rdunlap@infradead.org>) id 1n5I6Y-0002Bs-RD
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 06 Jan 2022 02:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FVF/TCzPTrNkd86Ozi+iwBwca5oDi+G1GC25DxmABZY=; b=AKg3OPPaPxURNe7obt1fZDnlQl
 sWjb4U+rRTQNBFX8n35elVLdU2YrMbOPx1yrKvC4RaSA4+ivnlIx6V2K/l3CN6cdkZ7J/kCz5ZLDw
 RYM1u1RdNu9qRVq9yfyuHhURJtV1UWHTIYsCGNpn4Zd4WTJ38iWGmJ8CO9VkxO3hn2QM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FVF/TCzPTrNkd86Ozi+iwBwca5oDi+G1GC25DxmABZY=; b=SBbBiFI2yRofIK59eELKHPiJ3i
 bXA3IlNHs3zdAHRzCBXInTz6FlzYNVg1LVUky/x55beKj1FCs7gYKwP+7XfhHYJwge2ZkyyDIYD6J
 Ob7iGJlJtpT4HB6d+AQp1UES9ARF91CbjyhvJbDsz6lCDI/sBBMATktM3QVsp5zGv6Qw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5I6W-003Wno-Nx
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 06 Jan 2022 02:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=FVF/TCzPTrNkd86Ozi+iwBwca5oDi+G1GC25DxmABZY=; b=a7/jkvgm4YHilMWQxkrNHCVI0N
 ywHbH/vRS7VKfJTKdUCurv6JI3vFLuw6ZhxNUr7aLvMw2GsX1IW7sg/AeKX80W/MWvbFU6O/myttr
 eszlSUXcKQwY+mVEvICIju+jrgKSD/hknMM/WpEm/3wPtRqmUHmTO5jVlwZpEegGn9pSP6r5q7r8X
 5/kCjnRRX5VfpEDaovpSlDRIQzyAH3GfTUFpgEbjWVwwZjafk5DKfvLsUfKDh0mCGRbuNNyN6TFax
 WQ2RX4jMs42xgm5soN/2Nc8ZJNFHOGlQ9ga4aoEqZ6iTDpJAamoB6Axr0uNKleKNCWYzyVLvzBCDf
 Eii8MCOg==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5I6D-00F4gI-MX; Thu, 06 Jan 2022 02:01:53 +0000
Message-ID: <64e8bd65-4801-4e09-3c35-03e3ff73c094@infradead.org>
Date: Wed, 5 Jan 2022 18:01:49 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: Yang Li <yang.lee@linux.alibaba.com>, anton@tuxera.com
References: <20220106015145.67067-1-yang.lee@linux.alibaba.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20220106015145.67067-1-yang.lee@linux.alibaba.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/5/22 17:51, Yang Li wrote: > /** > * attrib.c - NTFS
 attribute operations. Part of the Linux-NTFS > > The comments for the file
 should not be in kernel-doc format, which causes > it to be incorre [...]
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n5I6W-003Wno-Nx
X-Mailman-Approved-At: Thu, 06 Jan 2022 11:48:48 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH -next] NTFS: Fix one kernel-doc comment
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
Cc: linux-ntfs-dev@lists.sourceforge.net, akpm@linux-foundation.org,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net



On 1/5/22 17:51, Yang Li wrote:
> /**
>  * attrib.c - NTFS attribute operations.  Part of the Linux-NTFS
> 
> The comments for the file should not be in kernel-doc format, which causes
> it to be incorrectly identified for function ntfs_map_runlist_nolock(),
> causing some warnings found by running scripts/kernel-doc.
> 
> fs/ntfs/attrib.c:25: warning: Incorrect use of kernel-doc format:  *
> ntfs_map_runlist_nolock - map (a part of) a runlist of an ntfs inode
> fs/ntfs/attrib.c:71: warning: Function parameter or member 'ni' not
> described in 'ntfs_map_runlist_nolock'
> fs/ntfs/attrib.c:71: warning: Function parameter or member 'vcn' not
> described in 'ntfs_map_runlist_nolock'
> fs/ntfs/attrib.c:71: warning: Function parameter or member 'ctx' not
> described in 'ntfs_map_runlist_nolock'
> fs/ntfs/attrib.c:71: warning: expecting prototype for attrib.c - NTFS
> attribute operations.  Part of the Linux(). Prototype was for
> ntfs_map_runlist_nolock() instead
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

[adding akpm]

> ---
>  fs/ntfs/attrib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
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

-- 
~Randy


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
