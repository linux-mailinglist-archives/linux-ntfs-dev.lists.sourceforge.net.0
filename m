Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8ED7E855D
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zld-0005BK-D9;
	Fri, 10 Nov 2023 22:14:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <djwong@kernel.org>) id 1r0Or0-0006tM-Qr
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 16:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ub5R7SbVqB5BkKyuxlA+gdxL1O+I86XoVFx3CGlccE=; b=CD1xdzVjebxpRL6Q26e6GUvK17
 MjPaQY2CdvOt82oHE4y/7ok5PnuUCPINUOu/PryHaHpEGOZPj28L2LhGWECo+29DU79WtzpgdTf1I
 Ht9b4SG0nBuw65xqwXzMHwPeIpRwPF2lr7q5zKHWi9FTaXJpried54ygFDx5HhYUVN08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7ub5R7SbVqB5BkKyuxlA+gdxL1O+I86XoVFx3CGlccE=; b=TZL0BZL0EYyjBVpiMuIAErFhty
 /njhvYbHHGGDmrzZHN2fRiRgwFy/dqaay/MgfA/SNQ//Zao+z0yqUq41AqNwHsAHyxcpok4ycfa0v
 lcqCeQ91sogjytklBzLOHjkB0FY7rxjPPxg9+P/ujdF5ZSNFP80yZ2vvDKVzZWTq+yEk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0Oqv-0007Js-Re for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 16:23:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 47A33611B4;
 Tue,  7 Nov 2023 16:22:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0E9EC433C8;
 Tue,  7 Nov 2023 16:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699374172;
 bh=oEEeVwYnDflAWQUdmWxA+uKK5d3q1w1QuqPhPVZtnfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lkVp3FgFUTez6P2DY2BpCXkx+JapuOkwl82+e40NbKzKXp93H6P88ljygV+OSy812
 uRLnVQ/lMoA+5/3HWioXucF3YWJmgzPfXVpFkDmVt5bl7EPDJLWysCxeduGzRkFfQP
 w21Zg4x/JSXtIRlfvRqKGfasoCEDx6TUKjB8D5X7vfdW2TBFWWgdQeP4vNfhYt6m+q
 SOt52vdG+xLEsA99fawA/zjBjuWdaQpyxN/JKc6hfQHNaP+v/00s3PJSeilEt4p11i
 +tp+CLA6tRe9GdslazMcWtIb05Rdn60OX3ZAPZnB8YJS+8vyA/6hHbWrzK7KXMp0ys
 DEHeaM2ASRrmA==
Date: Tue, 7 Nov 2023 08:22:51 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: j.granados@samsung.com
Message-ID: <20231107162251.GL1205143@frogsfrogsfrogs>
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
 <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via
 B4 Relay wrote: > From: Joel Granados <j.granados@samsung.com> > > This commit
 comes at the tail end of a greater effort to remove the > emp [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0Oqv-0007Js-Re
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
 Neil Brown <neilb@suse.de>, Amir Goldstein <amir73il@gmail.com>,
 David Howells <dhowells@redhat.com>, Olga Kornievskaia <kolga@netapp.com>,
 linux-nfs@vger.kernel.org, coda@cs.cmu.edu, Mark Fasheh <mark@fasheh.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, willy@infradead.org, codalist@coda.cs.cmu.edu,
 Eric Biggers <ebiggers@kernel.org>, Matthew Bobrowski <repnop@google.com>,
 Chuck Lever <chuck.lever@oracle.com>, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, josh@joshtriplett.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Alexander Viro <viro@zeniv.linux.org.uk>,
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
> From: Joel Granados <j.granados@samsung.com>
> 
> This commit comes at the tail end of a greater effort to remove the
> empty elements at the end of the ctl_table arrays (sentinels) which
> will reduce the overall build time size of the kernel and run time
> memory bloat by ~64 bytes per sentinel (further information Link :
> https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
> 
> Remove sentinel elements ctl_table struct. Special attention was placed in
> making sure that an empty directory for fs/verity was created when
> CONFIG_FS_VERITY_BUILTIN_SIGNATURES is not defined. In this case we use the
> register sysctl call that expects a size.
> 
> Signed-off-by: Joel Granados <j.granados@samsung.com>
> ---
>  fs/aio.c                           | 1 -
>  fs/coredump.c                      | 1 -
>  fs/dcache.c                        | 1 -
>  fs/devpts/inode.c                  | 1 -
>  fs/eventpoll.c                     | 1 -
>  fs/exec.c                          | 1 -
>  fs/file_table.c                    | 1 -
>  fs/inode.c                         | 1 -
>  fs/lockd/svc.c                     | 1 -
>  fs/locks.c                         | 1 -
>  fs/namei.c                         | 1 -
>  fs/namespace.c                     | 1 -
>  fs/nfs/nfs4sysctl.c                | 1 -
>  fs/nfs/sysctl.c                    | 1 -
>  fs/notify/dnotify/dnotify.c        | 1 -
>  fs/notify/fanotify/fanotify_user.c | 1 -
>  fs/notify/inotify/inotify_user.c   | 1 -
>  fs/ntfs/sysctl.c                   | 1 -
>  fs/ocfs2/stackglue.c               | 1 -
>  fs/pipe.c                          | 1 -
>  fs/proc/proc_sysctl.c              | 1 -
>  fs/quota/dquot.c                   | 1 -
>  fs/sysctls.c                       | 1 -
>  fs/userfaultfd.c                   | 1 -
>  fs/verity/fsverity_private.h       | 2 +-
>  fs/verity/init.c                   | 8 +++++---
>  fs/xfs/xfs_sysctl.c                | 2 --

Not sure why an xfs change came in on a patch tagged "aio:"; I would
have expected "fs:" or "vfs:" or something.  For the XFS part:

Reviewed-by: Darrick J. Wong <djwong@kernel.org>

--D

>  27 files changed, 6 insertions(+), 30 deletions(-)
> 
> diff --git a/fs/aio.c b/fs/aio.c
> index a4c2a6bac72c..da069d6b6c66 100644
> --- a/fs/aio.c
> +++ b/fs/aio.c
> @@ -239,7 +239,6 @@ static struct ctl_table aio_sysctls[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_doulongvec_minmax,
>  	},
> -	{}
>  };
>  
>  static void __init aio_sysctl_init(void)
> diff --git a/fs/coredump.c b/fs/coredump.c
> index 9d235fa14ab9..f258c17c1841 100644
> --- a/fs/coredump.c
> +++ b/fs/coredump.c
> @@ -981,7 +981,6 @@ static struct ctl_table coredump_sysctls[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_dointvec,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_coredump_sysctls(void)
> diff --git a/fs/dcache.c b/fs/dcache.c
> index 25ac74d30bff..bafdd455b0fe 100644
> --- a/fs/dcache.c
> +++ b/fs/dcache.c
> @@ -191,7 +191,6 @@ static struct ctl_table fs_dcache_sysctls[] = {
>  		.mode		= 0444,
>  		.proc_handler	= proc_nr_dentry,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_dcache_sysctls(void)
> diff --git a/fs/devpts/inode.c b/fs/devpts/inode.c
> index 299c295a27a0..a4de1612b1db 100644
> --- a/fs/devpts/inode.c
> +++ b/fs/devpts/inode.c
> @@ -69,7 +69,6 @@ static struct ctl_table pty_table[] = {
>  		.data		= &pty_count,
>  		.proc_handler	= proc_dointvec,
>  	},
> -	{}
>  };
>  
>  struct pts_mount_opts {
> diff --git a/fs/eventpoll.c b/fs/eventpoll.c
> index 1d9a71a0c4c1..975fc5623102 100644
> --- a/fs/eventpoll.c
> +++ b/fs/eventpoll.c
> @@ -322,7 +322,6 @@ static struct ctl_table epoll_table[] = {
>  		.extra1		= &long_zero,
>  		.extra2		= &long_max,
>  	},
> -	{ }
>  };
>  
>  static void __init epoll_sysctls_init(void)
> diff --git a/fs/exec.c b/fs/exec.c
> index 6518e33ea813..7a18bde22f25 100644
> --- a/fs/exec.c
> +++ b/fs/exec.c
> @@ -2167,7 +2167,6 @@ static struct ctl_table fs_exec_sysctls[] = {
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_TWO,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_exec_sysctls(void)
> diff --git a/fs/file_table.c b/fs/file_table.c
> index ee21b3da9d08..544f7d4f166f 100644
> --- a/fs/file_table.c
> +++ b/fs/file_table.c
> @@ -137,7 +137,6 @@ static struct ctl_table fs_stat_sysctls[] = {
>  		.extra1		= &sysctl_nr_open_min,
>  		.extra2		= &sysctl_nr_open_max,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_stat_sysctls(void)
> diff --git a/fs/inode.c b/fs/inode.c
> index 35fd688168c5..ce16e3cda7bf 100644
> --- a/fs/inode.c
> +++ b/fs/inode.c
> @@ -129,7 +129,6 @@ static struct ctl_table inodes_sysctls[] = {
>  		.mode		= 0444,
>  		.proc_handler	= proc_nr_inodes,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_inode_sysctls(void)
> diff --git a/fs/lockd/svc.c b/fs/lockd/svc.c
> index 6579948070a4..f784ff58bfd3 100644
> --- a/fs/lockd/svc.c
> +++ b/fs/lockd/svc.c
> @@ -474,7 +474,6 @@ static struct ctl_table nlm_sysctls[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_dointvec,
>  	},
> -	{ }
>  };
>  
>  #endif	/* CONFIG_SYSCTL */
> diff --git a/fs/locks.c b/fs/locks.c
> index 76ad05f8070a..6ecfc422fb37 100644
> --- a/fs/locks.c
> +++ b/fs/locks.c
> @@ -111,7 +111,6 @@ static struct ctl_table locks_sysctls[] = {
>  		.proc_handler	= proc_dointvec,
>  	},
>  #endif /* CONFIG_MMU */
> -	{}
>  };
>  
>  static int __init init_fs_locks_sysctls(void)
> diff --git a/fs/namei.c b/fs/namei.c
> index 567ee547492b..fb552161c981 100644
> --- a/fs/namei.c
> +++ b/fs/namei.c
> @@ -1070,7 +1070,6 @@ static struct ctl_table namei_sysctls[] = {
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_TWO,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_namei_sysctls(void)
> diff --git a/fs/namespace.c b/fs/namespace.c
> index e157efc54023..e95d4328539d 100644
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -5008,7 +5008,6 @@ static struct ctl_table fs_namespace_sysctls[] = {
>  		.proc_handler	= proc_dointvec_minmax,
>  		.extra1		= SYSCTL_ONE,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_namespace_sysctls(void)
> diff --git a/fs/nfs/nfs4sysctl.c b/fs/nfs/nfs4sysctl.c
> index e776200e9a11..886a7c4c60b3 100644
> --- a/fs/nfs/nfs4sysctl.c
> +++ b/fs/nfs/nfs4sysctl.c
> @@ -34,7 +34,6 @@ static struct ctl_table nfs4_cb_sysctls[] = {
>  		.mode = 0644,
>  		.proc_handler = proc_dointvec,
>  	},
> -	{ }
>  };
>  
>  int nfs4_register_sysctl(void)
> diff --git a/fs/nfs/sysctl.c b/fs/nfs/sysctl.c
> index f39e2089bc4c..e645be1a3381 100644
> --- a/fs/nfs/sysctl.c
> +++ b/fs/nfs/sysctl.c
> @@ -29,7 +29,6 @@ static struct ctl_table nfs_cb_sysctls[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_dointvec,
>  	},
> -	{ }
>  };
>  
>  int nfs_register_sysctl(void)
> diff --git a/fs/notify/dnotify/dnotify.c b/fs/notify/dnotify/dnotify.c
> index ebdcc25df0f7..8151ed5ddefc 100644
> --- a/fs/notify/dnotify/dnotify.c
> +++ b/fs/notify/dnotify/dnotify.c
> @@ -29,7 +29,6 @@ static struct ctl_table dnotify_sysctls[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_dointvec,
>  	},
> -	{}
>  };
>  static void __init dnotify_sysctl_init(void)
>  {
> diff --git a/fs/notify/fanotify/fanotify_user.c b/fs/notify/fanotify/fanotify_user.c
> index f69c451018e3..80539839af0c 100644
> --- a/fs/notify/fanotify/fanotify_user.c
> +++ b/fs/notify/fanotify/fanotify_user.c
> @@ -86,7 +86,6 @@ static struct ctl_table fanotify_table[] = {
>  		.proc_handler	= proc_dointvec_minmax,
>  		.extra1		= SYSCTL_ZERO
>  	},
> -	{ }
>  };
>  
>  static void __init fanotify_sysctls_init(void)
> diff --git a/fs/notify/inotify/inotify_user.c b/fs/notify/inotify/inotify_user.c
> index 1c4bfdab008d..3e222a271da6 100644
> --- a/fs/notify/inotify/inotify_user.c
> +++ b/fs/notify/inotify/inotify_user.c
> @@ -85,7 +85,6 @@ static struct ctl_table inotify_table[] = {
>  		.proc_handler	= proc_dointvec_minmax,
>  		.extra1		= SYSCTL_ZERO
>  	},
> -	{ }
>  };
>  
>  static void __init inotify_sysctls_init(void)
> diff --git a/fs/ntfs/sysctl.c b/fs/ntfs/sysctl.c
> index 174fe536a1c0..4e980170d86a 100644
> --- a/fs/ntfs/sysctl.c
> +++ b/fs/ntfs/sysctl.c
> @@ -28,7 +28,6 @@ static struct ctl_table ntfs_sysctls[] = {
>  		.mode		= 0644,			/* Mode, proc handler. */
>  		.proc_handler	= proc_dointvec
>  	},
> -	{}
>  };
>  
>  /* Storage for the sysctls header. */
> diff --git a/fs/ocfs2/stackglue.c b/fs/ocfs2/stackglue.c
> index a8d5ca98fa57..20aa37b67cfb 100644
> --- a/fs/ocfs2/stackglue.c
> +++ b/fs/ocfs2/stackglue.c
> @@ -658,7 +658,6 @@ static struct ctl_table ocfs2_nm_table[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_dostring,
>  	},
> -	{ }
>  };
>  
>  static struct ctl_table_header *ocfs2_table_header;
> diff --git a/fs/pipe.c b/fs/pipe.c
> index 6c1a9b1db907..6bc1c4ae81d5 100644
> --- a/fs/pipe.c
> +++ b/fs/pipe.c
> @@ -1492,7 +1492,6 @@ static struct ctl_table fs_pipe_sysctls[] = {
>  		.mode		= 0644,
>  		.proc_handler	= proc_doulongvec_minmax,
>  	},
> -	{ }
>  };
>  #endif
>  
> diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
> index de484195f49f..4e06c4d69906 100644
> --- a/fs/proc/proc_sysctl.c
> +++ b/fs/proc/proc_sysctl.c
> @@ -71,7 +71,6 @@ static struct ctl_table root_table[] = {
>  		.procname = "",
>  		.mode = S_IFDIR|S_IRUGO|S_IXUGO,
>  	},
> -	{ }
>  };
>  static struct ctl_table_root sysctl_table_root = {
>  	.default_set.dir.header = {
> diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
> index 9e72bfe8bbad..69b03e13e6f2 100644
> --- a/fs/quota/dquot.c
> +++ b/fs/quota/dquot.c
> @@ -2949,7 +2949,6 @@ static struct ctl_table fs_dqstats_table[] = {
>  		.proc_handler	= proc_dointvec,
>  	},
>  #endif
> -	{ },
>  };
>  
>  static int __init dquot_init(void)
> diff --git a/fs/sysctls.c b/fs/sysctls.c
> index 76a0aee8c229..8dbde9a802fa 100644
> --- a/fs/sysctls.c
> +++ b/fs/sysctls.c
> @@ -26,7 +26,6 @@ static struct ctl_table fs_shared_sysctls[] = {
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_MAXOLDUID,
>  	},
> -	{ }
>  };
>  
>  static int __init init_fs_sysctls(void)
> diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
> index 56eaae9dac1a..7668285779c1 100644
> --- a/fs/userfaultfd.c
> +++ b/fs/userfaultfd.c
> @@ -45,7 +45,6 @@ static struct ctl_table vm_userfaultfd_table[] = {
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_ONE,
>  	},
> -	{ }
>  };
>  #endif
>  
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
>  }
> diff --git a/fs/xfs/xfs_sysctl.c b/fs/xfs/xfs_sysctl.c
> index fade33735393..a191f6560f98 100644
> --- a/fs/xfs/xfs_sysctl.c
> +++ b/fs/xfs/xfs_sysctl.c
> @@ -206,8 +206,6 @@ static struct ctl_table xfs_table[] = {
>  		.extra2		= &xfs_params.stats_clear.max
>  	},
>  #endif /* CONFIG_PROC_FS */
> -
> -	{}
>  };
>  
>  int
> 
> -- 
> 2.30.2
> 


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
