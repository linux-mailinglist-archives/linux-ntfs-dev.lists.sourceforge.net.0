Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF0E7E855E
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zld-0005Bx-MB;
	Fri, 10 Nov 2023 22:14:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ebiggers@kernel.org>) id 1r0ZSr-0002hJ-C0
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 08 Nov 2023 03:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bBtGOXDwP8DtXJ9yG16F8Y8l7U7l15Oz6qdG+MpsGYs=; b=ZHjMxhZLC8vduvzY6sYSLjvwrX
 9fewf2W3yYqYDCzfF5Mn3fdyIaxH1hmCb7nDjo3JIKqixhvKdyXXqB5dpGflRmFTsngamtZZvSYOd
 jw44Ffw7FA+TywL2JLcJlMl5f4dYUOfK8t+psKsNv4A2G+Tv/N0YRQzSq2qOsaEvMVdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bBtGOXDwP8DtXJ9yG16F8Y8l7U7l15Oz6qdG+MpsGYs=; b=XSOuzurPjjDkECdFsltxWxDGWX
 Bj2AS/8wYK+QTE2JXxate4502obdxbNI341jyTzTgvuC2TIZuStb8cvws9qWJjAJWnypdPzF+BNZi
 dagqm1iFzzTCzcC5si+WiqPByADhIUWnX9qq0klGtLtS/cvz/FJfnRAnMIstdjtgvEIs=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0ZSn-0004Bl-Ov for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 08 Nov 2023 03:42:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id DCE3BCE1000;
 Wed,  8 Nov 2023 03:42:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D38C433C7;
 Wed,  8 Nov 2023 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699414955;
 bh=FHJSt6kZtXx4ILd8DGDkhSrjysEg2O+K9F8kVqG0aKU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iWEeWkK0SMRDXg+vLARaKDp4eY6YdEa64mOvnmuTXOWdMjYfWETtJUiPu3qY3Hysk
 4LSEpc9dYfkzYX7g+al6cSuLAgDYpKHRP2mup9JRPb9e/5zjchsBgqWnDrbYowWf9o
 JXJkdsYkju/REM9+kegMkELz/TLUR8XEO8gftnzeUcG4ZPPkXz4HlcwoiX57arxoOR
 497OH+iqcR3VxDUMU3A+OR05jPgcI/pWScJ13aPmc7QdGcMKr+TCrdqSlbH3XAXWDw
 +hlzM/DVqfzlLBER49uo8vk6c6avLr24JVCdZ+gCZ+w6p5P9GNfkudf47jMAr59Ou4
 Ltd6ELYpy6t/w==
Date: Tue, 7 Nov 2023 19:42:31 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: j.granados@samsung.com
Message-ID: <20231108034231.GB2482@sol.localdomain>
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
 <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via
 B4 Relay wrote: > [PATCH 2/4] aio: Remove the now superfluous sentinel
 elements
 from ctl_table array The commit prefix should be "fs:". > Remove sentinel
 elements ctl_table struct. Special attention was placed in > making sure
 that an empty directory for fs/verity was created when >
 CONFIG_FS_VERITY_BUILTIN_SIGNATURES is not defined. [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0ZSn-0004Bl-Ov
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/4] aio: Remove the now superfluous
 sentinel elements from ctl_table array
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
Cc: linux-aio@kvack.org, Jan Kara <jack@suse.cz>, linux-cachefs@redhat.com,
 Neil Brown <neilb@suse.de>, "Darrick J. Wong" <djwong@kernel.org>,
 Amir Goldstein <amir73il@gmail.com>, David Howells <dhowells@redhat.com>,
 Olga Kornievskaia <kolga@netapp.com>, linux-nfs@vger.kernel.org,
 coda@cs.cmu.edu, Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 willy@infradead.org, codalist@coda.cs.cmu.edu,
 Matthew Bobrowski <repnop@google.com>, Chuck Lever <chuck.lever@oracle.com>,
 Iurii Zaikin <yzaikin@google.com>, Kees Cook <keescook@chromium.org>,
 josh@joshtriplett.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, fsverity@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, Christian Brauner <brauner@kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 linux-fsdevel@vger.kernel.org, Chandan Babu R <chandan.babu@oracle.com>,
 linux-mm@kvack.org, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via B4 Relay wrote:
> [PATCH 2/4] aio: Remove the now superfluous sentinel elements from ctl_table array

The commit prefix should be "fs:".

> Remove sentinel elements ctl_table struct. Special attention was placed in
> making sure that an empty directory for fs/verity was created when
> CONFIG_FS_VERITY_BUILTIN_SIGNATURES is not defined. In this case we use the
> register sysctl call that expects a size.
[...]
> diff --git a/fs/verity/fsverity_private.h b/fs/verity/fsverity_private.h
> index d071a6e32581..8191bf7ad706 100644
> --- a/fs/verity/fsverity_private.h
> +++ b/fs/verity/fsverity_private.h
> @@ -122,8 +122,8 @@ void __init fsverity_init_info_cache(void);
>  
>  /* signature.c */
>  
> -#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
>  extern int fsverity_require_signatures;
> +#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
>  int fsverity_verify_signature(const struct fsverity_info *vi,
>  			      const u8 *signature, size_t sig_size);
>  
> diff --git a/fs/verity/init.c b/fs/verity/init.c
> index a29f062f6047..e31045dd4f6c 100644
> --- a/fs/verity/init.c
> +++ b/fs/verity/init.c
> @@ -13,7 +13,6 @@
>  static struct ctl_table_header *fsverity_sysctl_header;
>  
>  static struct ctl_table fsverity_sysctl_table[] = {
> -#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
>  	{
>  		.procname       = "require_signatures",
>  		.data           = &fsverity_require_signatures,
> @@ -23,14 +22,17 @@ static struct ctl_table fsverity_sysctl_table[] = {
>  		.extra1         = SYSCTL_ZERO,
>  		.extra2         = SYSCTL_ONE,
>  	},
> -#endif
> -	{ }
>  };
>  
>  static void __init fsverity_init_sysctl(void)
>  {
> +#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
>  	fsverity_sysctl_header = register_sysctl("fs/verity",
>  						 fsverity_sysctl_table);
> +#else
> +	fsverity_sysctl_header = register_sysctl_sz("fs/verity",
> +						 fsverity_sysctl_table, 0);
> +#endif
>  	if (!fsverity_sysctl_header)
>  		panic("fsverity sysctl registration failed");

This does not make sense, and it causes a build error when CONFIG_FS_VERITY=y
and CONFIG_FS_VERITY_BUILTIN_SIGNATURES=n.

I think all you need to do is delete the sentinel element, the same as
everywhere else.  I just tested it, and it works fine.

BTW, the comments for register_sysctl_sz() and __register_sysctl_table() are
outdated, as they still say "A completely 0 filled entry terminates the table."

- Eric


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
