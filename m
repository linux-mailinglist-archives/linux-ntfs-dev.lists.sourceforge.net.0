Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D109A5575AB
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 10:39:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4IND-0003Ml-Pj; Thu, 23 Jun 2022 08:39:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1o4Hiq-0002lE-1l
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 07:57:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XVLvDYg5VTJP/WCTb2FzODP6JkKQRHHSAQhwtZz4FnY=; b=UctACHkNvfkmbabk4ByUIPwOfz
 d+1XBxqxA19kQZXSQVuGOlUz7nr7w6T12Aa9z8MsTu1531jJUjiKt20ApETvcpQC8onji5qACNx59
 laI0SiWoh7hWnYGLHP0I/dygD/o1bbnVT4VRtGbYl8Qo+P1XtXiXXJPvrOWnX+Kw/fLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XVLvDYg5VTJP/WCTb2FzODP6JkKQRHHSAQhwtZz4FnY=; b=g3s5omljh1aYAC7s0Y9pBDanSr
 u8fKj3ltb8Iid+fjDwHh4ez8hKQRm71OtvLgC54seHnbveDC1Jx1yskriFmRTVN8R5EXR8I5Xsl5N
 tAZtqqA8FVv4cgRWznS/qjsU8rlzjQlj1cZoJiP/dUOadzZayJ1IQU6aDqTBBH3h2zh4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4Hin-00AyVk-V5
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 07:57:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AE9FDB821F6;
 Thu, 23 Jun 2022 07:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBF56C3411B;
 Thu, 23 Jun 2022 07:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1655971062;
 bh=ANhwfxxjIa4IJy2tXFg8crRrfMzdxUvybqtIlxYXVwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r5AREGxzJQcgEIjMRRPm7K6wf+HwUCOn5ip1jxvDeXOZcamO9qg02tG+BjFZ7A2SL
 pMcZ0S0GdZXhtXiKtUSqhKHhy1jKlQtHLjA2bjqfWfKPL+ZMcGYeakJm2SBqhG8UDf
 xnLvtFw7b0GXVSB/MJuwgcIhDsVdb+m7PzpDVfq0=
Date: Thu, 23 Jun 2022 09:57:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: cgel.zte@gmail.com
Message-ID: <YrQc8xq+QezRcLi7@kroah.com>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623035131.974098-1-xu.xin16@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623035131.974098-1-xu.xin16@zte.com.cn>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 23, 2022 at 03:51:31AM +0000, cgel.zte@gmail.com
 wrote: > From: xu xin <xu.xin16@zte.com.cn> > > As the bug description,
 attckers
 can use this bug to crash the system > When CONFIG_NTFS_FS [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o4Hin-00AyVk-V5
X-Mailman-Approved-At: Thu, 23 Jun 2022 08:39:33 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] fs/ntfs: fix BUG_ON of
 ntfs_read_block()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Yang Yang <yang.yang29@zte.com.cn>, xu.xin16@zte.com.cn,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Zhang wenya <zhang.wenya1@zte.com.cn>,
 anton@tuxera.com, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jun 23, 2022 at 03:51:31AM +0000, cgel.zte@gmail.com wrote:
> From: xu xin <xu.xin16@zte.com.cn>
> 
> As the bug description, attckers can use this bug to crash the system
> When CONFIG_NTFS_FS is set.
> 
> So remove the BUG_ON, and use WARN and return instead until someone
> really solve the bug.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
> Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
> Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
> Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
> Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
> Signed-off-by: xu xin <xu.xin16@zte.com.cn>
> ---
>  fs/ntfs/aops.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
> index 5f4fb6ca6f2e..b6fd7e711420 100644
> --- a/fs/ntfs/aops.c
> +++ b/fs/ntfs/aops.c
> @@ -183,7 +183,11 @@ static int ntfs_read_block(struct page *page)
>  	vol = ni->vol;
>  
>  	/* $MFT/$DATA must have its complete runlist in memory at all times. */
> -	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
> +	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
> +		WARN(1, "NTFS: ni->runlist.rl, ni->mft_no, and NInoAttr(ni) is null!\n");
> +		unlock_page(page);
> +		return -EINVAL;
> +	}
>  
>  	blocksize = vol->sb->s_blocksize;
>  	blocksize_bits = vol->sb->s_blocksize_bits;
> -- 
> 2.25.1
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
