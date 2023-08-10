Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C374778393
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 11 Aug 2023 00:23:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qUE3t-0005ko-VN;
	Thu, 10 Aug 2023 22:23:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qU9WH-00069v-1v
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 10 Aug 2023 17:32:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W7MuJWvD5sgfBqu5p2Xr2nWAcLuTehZcD2gOHaF4Bok=; b=i/clvzNwJuX+l2vJjdkQUeEAfO
 fH2Icanofu85njmiBSw9J0/bPGwDTXiRdogDczxJOEzb0cq5ZPmMr4PQX/LLBKXAuJWEyQTFLMLAy
 qfm1pFt+bffhB5tnO/R2OgIdirMHAegJlYGmNu/ewGAC8xgwJxj78yuZMmYokFeAnL6I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W7MuJWvD5sgfBqu5p2Xr2nWAcLuTehZcD2gOHaF4Bok=; b=NjljE3rPO/OUZy26bPh43xiR1Z
 HwozstdyEeTjsbgXfcR8H3oGhtPW1eNSQg0JWJaDq1I4Dx9//+ZYqr8vOa5qAEPzNvYUmFRikLHEi
 RokqwIwschHpLpuyC5Y5lcJ5Aj16bKsVpDhJDkNQULxx+vBo4pJnW42eBfLwPMwzL+Oc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qU9WC-001r5L-Cf for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 10 Aug 2023 17:32:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C320665957;
 Thu, 10 Aug 2023 17:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F11C433C8;
 Thu, 10 Aug 2023 17:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1691688730;
 bh=jqKPlFDYzdL8CJp3TA+4twzklky0wW7cWmS7m81wH+o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wIK/zj2SRsqJMsUjc8U5fOPZna2hBCpa6VhGWa1RTzraVJdrpH06+zrTRa8s9FwWd
 lDp9xMCp9LptZ1R++ywSKldAbIZCYW+mW82qZvhO+ukEgP0faf99pAx7cmbT8YCpRR
 K4ikjzLtlOJTE3grhFYBb/zdgTM1vH/Xtbj0AKt8=
Date: Thu, 10 Aug 2023 19:32:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Manas Ghandat <ghandatmanas@gmail.com>
Message-ID: <2023081050-extent-footsie-66c9@gregkh>
References: <2023080811-populace-raven-96d2@gregkh>
 <20230810161308.8577-1-ghandatmanas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230810161308.8577-1-ghandatmanas@gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 10, 2023 at 09:43:08PM +0530,
 Manas Ghandat wrote:
 > Added a check to the compression_unit so that out of bound doesn't occur.
 This probably needs more text to describe what is happening. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qU9WC-001r5L-Cf
X-Mailman-Approved-At: Thu, 10 Aug 2023 22:23:18 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v3] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Aug 10, 2023 at 09:43:08PM +0530, Manas Ghandat wrote:
> Added a check to the compression_unit so that out of bound doesn't occur.

This probably needs more text to describe what is happening.


> 
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0

What commit id does this fix?  Should it go to stable kernels?


> ---
> V2 -> V3: Fix patching issue.
> V1 -> V2: Cleaned up coding style.
> 
>  fs/ntfs/inode.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index 6c3f38d66579..a657322874ed 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode *vi)
>  					goto unm_err_out;
>  				}
>  				if (a->data.non_resident.compression_unit) {
> +					if (a->data.non_resident.compression_unit +
> +						vol->cluster_size_bits > 32) {

Should be indented a bit left, right?

> +						ntfs_error(vi->i_sb,
> +							"Found non-standard compression unit (%u).   Cannot handle this.",

Why all the extra ' ' characters?

thanks,

greg k-h


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
