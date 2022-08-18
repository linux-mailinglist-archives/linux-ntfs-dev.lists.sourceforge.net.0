Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9844598FB6
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Aug 2022 23:41:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oOnGF-0006Ud-KV;
	Thu, 18 Aug 2022 21:41:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1oOgK8-0005h3-P9
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 14:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GpYi5kcB7vtNPJ/5AspONSGAjwP/p8OVH1B6C5LznKQ=; b=B4K5TYNhhmgh2+xPMG+fFNK6hO
 Q7cv7BGjc2frMGGALWfhv5ycOR8WUV9wqMi+GC9slUgICjkOUo3LTQSO1p/KASKZG8BBDCZ8/OGuQ
 r5wu6Ig9FcKkJjuC7WV2l8oc6im8eDRg6jZIgQnUx1rUCkByTlHq45zSRmlDhbfUNQIA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GpYi5kcB7vtNPJ/5AspONSGAjwP/p8OVH1B6C5LznKQ=; b=PN4NWixCmKEO7CdUwLMrjHsL0U
 KFDZoO9TkDIHB7JZgnA+UZHptRxgCW8A/I//3ld0wrfa+yX1o1rK4TxQ5NrH5Q0ZzR17oE2wsOm4Q
 dvwpBMXQcVsTMQof2Cn/GOGtfyovuEKH1lzcB4iEVY2Celn0gbMMJdMBlMSFAV6EVG/E=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oOgJg-0001SA-AD for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 14:16:17 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id F37FD37ABB;
 Thu, 18 Aug 2022 14:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1660832162; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GpYi5kcB7vtNPJ/5AspONSGAjwP/p8OVH1B6C5LznKQ=;
 b=OFgpA0ZBjKabpg3z110AmJ8jzy/U/tFq7VhbMfB35zC9BdU5GFZhbEWr3y4G0cWvMhSwy8
 2m2DkejS/+6vBeyDVYxUzC4dQ9D0n05JwoyrbPNby/1RQx7BoVTHAiSeTpeZwYn4lnBY/z
 QlnBH6TYIYoR5/utubHZ98l3Z6BqS7E=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1660832162;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GpYi5kcB7vtNPJ/5AspONSGAjwP/p8OVH1B6C5LznKQ=;
 b=A5fRpnAdGBcZsbPFXW9+z0b0TxPKR/QSrQKadPAh34ThEXZtC5+665CxpD2WqJpa24djlq
 0ODq/3Q8q9byr4BQ==
Received: from quack3.suse.cz (unknown [10.163.43.118])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id B452D2C188;
 Thu, 18 Aug 2022 14:16:01 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 7076CA066C; Thu, 18 Aug 2022 16:15:49 +0200 (CEST)
Date: Thu, 18 Aug 2022 16:15:49 +0200
From: Jan Kara <jack@suse.cz>
To: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
Message-ID: <20220818141549.5db4qxcnkr2miqo2@quack3>
References: <cover.1660788334.git.ritesh.list@gmail.com>
 <a98a6ddfac68f73d684c2724952e825bc1f4d238.1660788334.git.ritesh.list@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a98a6ddfac68f73d684c2724952e825bc1f4d238.1660788334.git.ritesh.list@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 18-08-22 10:34:39,
 Ritesh Harjani (IBM) wrote: > submit_bh
 always returns 0. This patch drops the useless return value of > submit_bh
 from __sync_dirty_buffer(). Once all of submit_bh callers a [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oOgJg-0001SA-AD
X-Mailman-Approved-At: Thu, 18 Aug 2022 21:41:05 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCHv3 3/4] fs/buffer: Drop useless return
 value of submit_bh
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
 Alexander Viro <viro@zeniv.linux.org.uk>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu 18-08-22 10:34:39, Ritesh Harjani (IBM) wrote:
> submit_bh always returns 0. This patch drops the useless return value of
> submit_bh from __sync_dirty_buffer(). Once all of submit_bh callers are
> cleaned up, we can make it's return type as void.
> 
> Signed-off-by: Ritesh Harjani (IBM) <ritesh.list@gmail.com>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/buffer.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/buffer.c b/fs/buffer.c
> index 55e762a58eb6..c21b72c06eb0 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2801,8 +2801,6 @@ EXPORT_SYMBOL(write_dirty_buffer);
>   */
>  int __sync_dirty_buffer(struct buffer_head *bh, blk_opf_t op_flags)
>  {
> -	int ret = 0;
> -
>  	WARN_ON(atomic_read(&bh->b_count) < 1);
>  	lock_buffer(bh);
>  	if (test_clear_buffer_dirty(bh)) {
> @@ -2817,14 +2815,14 @@ int __sync_dirty_buffer(struct buffer_head *bh, blk_opf_t op_flags)
>  
>  		get_bh(bh);
>  		bh->b_end_io = end_buffer_write_sync;
> -		ret = submit_bh(REQ_OP_WRITE | op_flags, bh);
> +		submit_bh(REQ_OP_WRITE | op_flags, bh);
>  		wait_on_buffer(bh);
> -		if (!ret && !buffer_uptodate(bh))
> -			ret = -EIO;
> +		if (!buffer_uptodate(bh))
> +			return -EIO;
>  	} else {
>  		unlock_buffer(bh);
>  	}
> -	return ret;
> +	return 0;
>  }
>  EXPORT_SYMBOL(__sync_dirty_buffer);
>  
> -- 
> 2.35.3
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
