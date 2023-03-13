Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB58A6B9413
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xC-0001SU-Ve;
	Tue, 14 Mar 2023 12:40:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1pbfsS-0006FP-IF
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Mar 2023 10:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VHdNtQjCqb3Vt8pNGTQr7HY3gsesOM01FBMwNyxFwks=; b=Bba7XfdICTWdznOJJWO40k4HPk
 28ei8EShDgc658pDdWY/Qu/23nU1sZ7wNhd69FDQvX154xSQzFxezkgHQBlQtgGSJnhAX1NDPriLN
 I+LOrWmVt+XMlYETxFqO+/WIT7s2Ct6c20TGpiH2Y5ZtYZ5jy9XlWbdGxXhb0ipEwzB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VHdNtQjCqb3Vt8pNGTQr7HY3gsesOM01FBMwNyxFwks=; b=Owbc3IhnbKRllgDXk9LLPdQcIj
 cIfOKl2GCJd1mDrjOHXfKfp7wVtBKKQLuX5VdkX5yY2UFX6TtstJf6ngdaqW1+ZzRUkFbqS8zLIls
 HJY+NNeWWEZof+13xVYSOBmnka0Il1fCwNdenX7ZpprD1lYGDoZSYzinBwWh7/6kXlUc=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbfsK-006Qfq-JH for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 13 Mar 2023 10:58:05 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 8DEB722A3B;
 Mon, 13 Mar 2023 10:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1678703564; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VHdNtQjCqb3Vt8pNGTQr7HY3gsesOM01FBMwNyxFwks=;
 b=TDFAXWoNCSFC+7ZyGnFGVUf1HEAm0TqX7utOhqoMZuBLF8xETy6TYVXmM9OAkVQLZRkJvv
 2eYx9wD8XXHFZGR2Wmb9Yxq+hvCe/rOItxSiwffPFRFgFBJrdxSbs9qQ2fMrQ42EUPKdBF
 JUU+aEaDYZGsbh7yZV5PqMzmdegikBc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1678703564;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VHdNtQjCqb3Vt8pNGTQr7HY3gsesOM01FBMwNyxFwks=;
 b=xvBXW1Sl3GB6cxLigExGWfi9IS4Ne2TE0awxiYTCT8ts8wRxqpCVMwC2debR/zfU56zVEY
 joEUdy0756SHz1BA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7D1FB139F9;
 Mon, 13 Mar 2023 10:32:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id U2j0Hcz7DmQsQgAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 13 Mar 2023 10:32:44 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 018BCA06FD; Mon, 13 Mar 2023 11:32:43 +0100 (CET)
Date: Mon, 13 Mar 2023 11:32:43 +0100
From: Jan Kara <jack@suse.cz>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20230313103243.ubn3mw3nkkcdyi5c@quack3>
References: <20230310231206.3952808-1-mcgrof@kernel.org>
 <20230310231206.3952808-4-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230310231206.3952808-4-mcgrof@kernel.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri 10-03-23 15:12:04, Luis Chamberlain wrote: > There
 is no need to declare two tables to just create directories, > this can be
 easily be done with a prefix path with register_sysctl(). > > Simpl [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pbfsK-006Qfq-JH
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 3/5] quota: simplify two-level sysctl
 registration for fs_dqstats_table
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
Cc: j.granados@samsung.com, jaharkes@cs.cmu.edu, keescook@chromium.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 patches@lists.linux.dev, codalist@coda.cs.cmu.edu, dhowells@redhat.com,
 coda@cs.cmu.edu, linux-cachefs@redhat.com, ebiederm@xmission.com,
 jack@suse.com, linux-fsdevel@vger.kernel.org, yzaikin@google.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri 10-03-23 15:12:04, Luis Chamberlain wrote:
> There is no need to declare two tables to just create directories,
> this can be easily be done with a prefix path with register_sysctl().
> 
> Simplify this registration.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Thanks. I've taken the patch into my tree.

								Honza

> ---
>  fs/quota/dquot.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
> index a6357f728034..90cb70c82012 100644
> --- a/fs/quota/dquot.c
> +++ b/fs/quota/dquot.c
> @@ -2948,24 +2948,6 @@ static struct ctl_table fs_dqstats_table[] = {
>  	{ },
>  };
>  
> -static struct ctl_table fs_table[] = {
> -	{
> -		.procname	= "quota",
> -		.mode		= 0555,
> -		.child		= fs_dqstats_table,
> -	},
> -	{ },
> -};
> -
> -static struct ctl_table sys_table[] = {
> -	{
> -		.procname	= "fs",
> -		.mode		= 0555,
> -		.child		= fs_table,
> -	},
> -	{ },
> -};
> -
>  static int __init dquot_init(void)
>  {
>  	int i, ret;
> @@ -2973,7 +2955,7 @@ static int __init dquot_init(void)
>  
>  	printk(KERN_NOTICE "VFS: Disk quotas %s\n", __DQUOT_VERSION__);
>  
> -	register_sysctl_table(sys_table);
> +	register_sysctl("fs/quota", fs_dqstats_table);
>  
>  	dquot_cachep = kmem_cache_create("dquot",
>  			sizeof(struct dquot), sizeof(unsigned long) * 4,
> -- 
> 2.39.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
