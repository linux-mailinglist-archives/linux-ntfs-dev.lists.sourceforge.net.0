Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EECB5585B5
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 20:02:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4RAH-00048v-8u; Thu, 23 Jun 2022 18:02:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ebiggers@kernel.org>) id 1o4QJg-0002qi-EH
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 17:08:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x89A9M+2Ec4xpCAK0V/MWi2WT7jpKP3EfdIJRBuFEmw=; b=g8ccosU7xXA3PsugesL8iNriBI
 aJU4TA3TgkxxS9LMb5WtX1SlNNBuRoRbeHDzhMH3fLRDn3LVO78Pmh8OYNTc1CzExtnK6qJy5ZAVo
 hV7qHbGh4HtwpX7XddWAv4dtU4OOPjFDrPFv9qByGiFIRUV+3HPRdykWBE9bOFVX3W3U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x89A9M+2Ec4xpCAK0V/MWi2WT7jpKP3EfdIJRBuFEmw=; b=ducksxY9G6L/6c3++3Z46tnSdb
 WYzUZaKEZTKisqR9VuuL0tEOAStjZwxhqRx/xOjfNpcqOdf78LHaSqgxicK0bo45fGQpQXy++Rf/x
 hk1nWkUgWsDW1qtfizw8DwQW6Bw4T5f8mgViZLa+DfvZOIMoh6cb7XFOzb0tt5qKPPC0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4QJc-00BPvx-My
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 17:08:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 52A2A60AE6;
 Thu, 23 Jun 2022 17:08:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26E6AC3411B;
 Thu, 23 Jun 2022 17:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656004098;
 bh=de72aEPmiWhk8gVfT3liqSSGHCaeRekm8u+9NQohaUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fC2Hq0DsqYZk/Y/la3E9ChzRyhRvqK+C14cG9rRPKOo9XW3VxNyRyY+XJxtAI2J6V
 zjV4944fzCDsPaH9u7MapC0CIl0k8ALlcDcCZwUWPPH6yy/rXPiS/Faknap7CnvLdw
 /nwfIAaUZwX/KMRb4ITCw6xaHcHmliPDGYH4+85FZON/Uq5VpzpOWMfo31/lqA6dy4
 WYZ6nUJkWmHIvwqwYI5CkwPi7p1tW5oYyQoNrKfGSkZL0QE7CPl1Iu1RRVkg/iSVpZ
 QI5mm3aq6RqcpPogcGc9neDOQyjHy81EM6Z52gdIzvtBtZvjPmt4is2FwXCbotvwcl
 8nlpcKIw2sJfQ==
Date: Thu, 23 Jun 2022 10:08:16 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: cgel.zte@gmail.com
Message-ID: <YrSeAGmk4GZndtdn@sol.localdomain>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623094956.977053-1-xu.xin16@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623094956.977053-1-xu.xin16@zte.com.cn>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 23, 2022 at 09:49:56AM +0000, cgel.zte@gmail.com
 wrote: > From: xu xin <xu.xin16@zte.com.cn> > > As the bug description at
 > https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@z [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o4QJc-00BPvx-My
X-Mailman-Approved-At: Thu, 23 Jun 2022 18:02:48 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of
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

On Thu, Jun 23, 2022 at 09:49:56AM +0000, cgel.zte@gmail.com wrote:
> From: xu xin <xu.xin16@zte.com.cn>
> 
> As the bug description at
> https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
> attckers can use this bug to crash the system.
> 
> So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a
> warning to the syslog and return instead until someone really solve
> the problem.
> 
> Cc: stable@vger.kernel.org
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
> Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
> Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
> Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
> Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
> Signed-off-by: xu xin <xu.xin16@zte.com.cn>
> ---
> 
> Change for v2:
>  - Use ntfs_warning instead of WARN().
>  - Add the tag Cc: stable@vger.kernel.org.
> ---
>  fs/ntfs/aops.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
> index 5f4fb6ca6f2e..84d68efb4ace 100644
> --- a/fs/ntfs/aops.c
> +++ b/fs/ntfs/aops.c
> @@ -183,7 +183,12 @@ static int ntfs_read_block(struct page *page)
>  	vol = ni->vol;
>  
>  	/* $MFT/$DATA must have its complete runlist in memory at all times. */
> -	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
> +	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
> +		ntfs_warning(vi->i_sb, "Error because ni->runlist.rl, ni->mft_no, "
> +				"and NInoAttr(ni) is null.");
> +		unlock_page(page);
> +		return -EINVAL;
> +	}

A better warning message that doesn't rely on implementation details (struct
field and macro names) would be "Runlist of $MFT/$DATA is not cached".  Also,
why does this situation happen in the first place?  Is there a way to prevent
this situation in the first place?

- Eric


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
