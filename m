Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 650857E8558
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zlb-00059v-ES;
	Fri, 10 Nov 2023 22:14:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1r0MO2-0004Xw-Dp for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 13:44:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9x7m2aZmHPMfCNES/3aaH5pH/5Dux0eaP78Puepx/vE=; b=LDAtEH/u0IG6QuCT29wNG6gZZ0
 /3+zHV7kbLguIp0HapT56Q7R6NcF/o0I9M5Vnni3ijtFEzL05Rz0rlKIpKv3nrvUh5nEGXS9OYYU4
 rPiedpVdbN5gdb/v+HFSzTNQc9w6AduNt9JSbkT0lugoebtAMUEmnswFBMTl+TPwZkLM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9x7m2aZmHPMfCNES/3aaH5pH/5Dux0eaP78Puepx/vE=; b=iYlYVZF1muPAhoQ8Zh5yva5uQy
 E2rUyYoH1Y9ofs2gwckMEuEf0z/Dy/3LxWuzbFDEaOl/Jk18UM9TTnZtxZIrlsM1+8ec7JP4cwFJ3
 Jvc5EF7V2VXo6gqoJE3C86jTW8Rc1zsQSzHGLHVcq+E3rMUDh5tFzlmfqNNxLauHh8c0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0MNy-00A4Dd-PN for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 07 Nov 2023 13:44:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 755B961202;
 Tue,  7 Nov 2023 13:44:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85995C433CA;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1699364686;
 bh=rxWCD86XNSuDAvBsfXLMERxDl1CKS+dH3af8HBg07kQ=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=aEVfle01ejHZcEGy0MVOzTlRZzwhHmFN2WCj4tqs0IV6KaIl/4vdxJJ3CtdAMFSo9
 ltgl9iZCMmHdYd83TSsvv1Y/mGTOA4NOQwb0Hr4uAZrV+mbeNzTabxUdy/SU1T9GmX
 G+gWtuNOX7WD42yuq2Ekc1tWhYP3QfVMageHceT+wgbEHT1WiM+tVyVonFHZ9P/SsC
 EgprqyqsRJGa5m0dy2z5n2NBKqk7RgMaNvk6oGz3zMXAoRwT8/PJT5ofzghCcUAlRL
 I5mHaobYC1u/yMpTM9v/zFJvtM5RVz2M6itXaJlsbq8H5ah6KmV3kUPgN/kDYVBEW/
 2zg+d9ZUYuRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 674A3C41535;
 Tue,  7 Nov 2023 13:44:46 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Tue, 07 Nov 2023 14:44:21 +0100
MIME-Version: 1.0
Message-Id: <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
In-Reply-To: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
To: Luis Chamberlain <mcgrof@kernel.org>, willy@infradead.org, 
 josh@joshtriplett.org, Kees Cook <keescook@chromium.org>, 
 David Howells <dhowells@redhat.com>, 
 Alexander Viro <viro@zeniv.linux.org.uk>, 
 Christian Brauner <brauner@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>, 
 Eric Biederman <ebiederm@xmission.com>, 
 Trond Myklebust <trond.myklebust@hammerspace.com>, 
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, 
 Jeff Layton <jlayton@kernel.org>, Neil Brown <neilb@suse.de>, 
 Olga Kornievskaia <kolga@netapp.com>, Dai Ngo <Dai.Ngo@oracle.com>, 
 Tom Talpey <tom@talpey.com>, Jan Kara <jack@suse.cz>, 
 Amir Goldstein <amir73il@gmail.com>, Matthew Bobrowski <repnop@google.com>, 
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>, 
 Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, 
 Joseph Qi <joseph.qi@linux.alibaba.com>, Iurii Zaikin <yzaikin@google.com>, 
 Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, 
 Chandan Babu R <chandan.babu@oracle.com>, 
 "Darrick J. Wong" <djwong@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>, 
 coda@cs.cmu.edu
X-Mailer: b4 0.13-dev-86aa5
X-Developer-Signature: v=1; a=openpgp-sha256; l=11575;
 i=j.granados@samsung.com; h=from:subject:message-id;
 bh=Bp4t+hG4KxriN9ysmR+FNphfogz/Zbj5hCur76JNJk4=;
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlSj9M0gQQGdSO41F/tFzCNJiybCW5DpRQbuKa+
 3ea3SYJrneJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZUo/TAAKCRC6l81St5ZB
 T/0OC/9NF1yUjynIukW4xr4twuJ6RJ7ZlhvpJGC6JFQ/ZnDqy/dY+psj3a4/wijg0cE2EPQ4VaJ
 fQyJD54QGHossklBLCKorZRgt9JPVw9KyJNYgppTSckcQHKOwF8AOODgWcdZ+RrYaLhf5HGXtZy
 y2QHvaR0ohmk/HLtyfg03UWXL4DyFtgFx6YdRWY638ntmc/xy9Wd8uRdKojRTMObLLwN1qHA77L
 IjnrJAJhSB4lmPBWm9ltGGjq72j5T9fk/1Za7uRO0IKviticlarAPXVIdG+GfEls2+aBT4/WKrZ
 ebNPqsZi0hoG3pDB4Pgrphn2H1NmY5rMpsiNPbQHPNeoukza+Adxpp+goAD5bCQeaiKknjKUU+E
 iNiuC8knteEAjr8rPMclNDZ9CmwWMsnOT/41BRAk64HXWI1GbBK6ZAZndd7CWScYNXOP+3pATcq
 yUiolFbUN81q008Dai2JW3lBWAifZMid5PNbu5Lw7ouLwTy4kxS8//ZHDjr0Utld25CQM=
X-Developer-Key: i=j.granados@samsung.com; a=openpgp;
 fpr=F1F8E46D30F0F6C4A45FF4465895FAAC338C6E77
X-Endpoint-Received: by B4 Relay for j.granados@samsung.com/default with
 auth_id=70
X-Original-From: Joel Granados <j.granados@samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Joel Granados <j.granados@samsung.com> This commit
 comes
 at the tail end of a greater effort to remove the empty elements at the end
 of the ctl_table arrays (sentinels) which will reduce the overall build time
 size of the kernel and run ti [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0MNy-00A4Dd-PN
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: [Linux-ntfs-dev] [PATCH 2/4] aio: Remove the now superfluous
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
Reply-To: j.granados@samsung.com
Cc: fsverity@lists.linux.dev, linux-aio@kvack.org, linux-nfs@vger.kernel.org,
 Joel Granados <j.granados@samsung.com>, ocfs2-devel@lists.linux.dev,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 codalist@coda.cs.cmu.edu, linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Joel Granados <j.granados@samsung.com>

This commit comes at the tail end of a greater effort to remove the
empty elements at the end of the ctl_table arrays (sentinels) which
will reduce the overall build time size of the kernel and run time
memory bloat by ~64 bytes per sentinel (further information Link :
https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)

Remove sentinel elements ctl_table struct. Special attention was placed in
making sure that an empty directory for fs/verity was created when
CONFIG_FS_VERITY_BUILTIN_SIGNATURES is not defined. In this case we use the
register sysctl call that expects a size.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 fs/aio.c                           | 1 -
 fs/coredump.c                      | 1 -
 fs/dcache.c                        | 1 -
 fs/devpts/inode.c                  | 1 -
 fs/eventpoll.c                     | 1 -
 fs/exec.c                          | 1 -
 fs/file_table.c                    | 1 -
 fs/inode.c                         | 1 -
 fs/lockd/svc.c                     | 1 -
 fs/locks.c                         | 1 -
 fs/namei.c                         | 1 -
 fs/namespace.c                     | 1 -
 fs/nfs/nfs4sysctl.c                | 1 -
 fs/nfs/sysctl.c                    | 1 -
 fs/notify/dnotify/dnotify.c        | 1 -
 fs/notify/fanotify/fanotify_user.c | 1 -
 fs/notify/inotify/inotify_user.c   | 1 -
 fs/ntfs/sysctl.c                   | 1 -
 fs/ocfs2/stackglue.c               | 1 -
 fs/pipe.c                          | 1 -
 fs/proc/proc_sysctl.c              | 1 -
 fs/quota/dquot.c                   | 1 -
 fs/sysctls.c                       | 1 -
 fs/userfaultfd.c                   | 1 -
 fs/verity/fsverity_private.h       | 2 +-
 fs/verity/init.c                   | 8 +++++---
 fs/xfs/xfs_sysctl.c                | 2 --
 27 files changed, 6 insertions(+), 30 deletions(-)

diff --git a/fs/aio.c b/fs/aio.c
index a4c2a6bac72c..da069d6b6c66 100644
--- a/fs/aio.c
+++ b/fs/aio.c
@@ -239,7 +239,6 @@ static struct ctl_table aio_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_doulongvec_minmax,
 	},
-	{}
 };
 
 static void __init aio_sysctl_init(void)
diff --git a/fs/coredump.c b/fs/coredump.c
index 9d235fa14ab9..f258c17c1841 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -981,7 +981,6 @@ static struct ctl_table coredump_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dointvec,
 	},
-	{ }
 };
 
 static int __init init_fs_coredump_sysctls(void)
diff --git a/fs/dcache.c b/fs/dcache.c
index 25ac74d30bff..bafdd455b0fe 100644
--- a/fs/dcache.c
+++ b/fs/dcache.c
@@ -191,7 +191,6 @@ static struct ctl_table fs_dcache_sysctls[] = {
 		.mode		= 0444,
 		.proc_handler	= proc_nr_dentry,
 	},
-	{ }
 };
 
 static int __init init_fs_dcache_sysctls(void)
diff --git a/fs/devpts/inode.c b/fs/devpts/inode.c
index 299c295a27a0..a4de1612b1db 100644
--- a/fs/devpts/inode.c
+++ b/fs/devpts/inode.c
@@ -69,7 +69,6 @@ static struct ctl_table pty_table[] = {
 		.data		= &pty_count,
 		.proc_handler	= proc_dointvec,
 	},
-	{}
 };
 
 struct pts_mount_opts {
diff --git a/fs/eventpoll.c b/fs/eventpoll.c
index 1d9a71a0c4c1..975fc5623102 100644
--- a/fs/eventpoll.c
+++ b/fs/eventpoll.c
@@ -322,7 +322,6 @@ static struct ctl_table epoll_table[] = {
 		.extra1		= &long_zero,
 		.extra2		= &long_max,
 	},
-	{ }
 };
 
 static void __init epoll_sysctls_init(void)
diff --git a/fs/exec.c b/fs/exec.c
index 6518e33ea813..7a18bde22f25 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -2167,7 +2167,6 @@ static struct ctl_table fs_exec_sysctls[] = {
 		.extra1		= SYSCTL_ZERO,
 		.extra2		= SYSCTL_TWO,
 	},
-	{ }
 };
 
 static int __init init_fs_exec_sysctls(void)
diff --git a/fs/file_table.c b/fs/file_table.c
index ee21b3da9d08..544f7d4f166f 100644
--- a/fs/file_table.c
+++ b/fs/file_table.c
@@ -137,7 +137,6 @@ static struct ctl_table fs_stat_sysctls[] = {
 		.extra1		= &sysctl_nr_open_min,
 		.extra2		= &sysctl_nr_open_max,
 	},
-	{ }
 };
 
 static int __init init_fs_stat_sysctls(void)
diff --git a/fs/inode.c b/fs/inode.c
index 35fd688168c5..ce16e3cda7bf 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -129,7 +129,6 @@ static struct ctl_table inodes_sysctls[] = {
 		.mode		= 0444,
 		.proc_handler	= proc_nr_inodes,
 	},
-	{ }
 };
 
 static int __init init_fs_inode_sysctls(void)
diff --git a/fs/lockd/svc.c b/fs/lockd/svc.c
index 6579948070a4..f784ff58bfd3 100644
--- a/fs/lockd/svc.c
+++ b/fs/lockd/svc.c
@@ -474,7 +474,6 @@ static struct ctl_table nlm_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dointvec,
 	},
-	{ }
 };
 
 #endif	/* CONFIG_SYSCTL */
diff --git a/fs/locks.c b/fs/locks.c
index 76ad05f8070a..6ecfc422fb37 100644
--- a/fs/locks.c
+++ b/fs/locks.c
@@ -111,7 +111,6 @@ static struct ctl_table locks_sysctls[] = {
 		.proc_handler	= proc_dointvec,
 	},
 #endif /* CONFIG_MMU */
-	{}
 };
 
 static int __init init_fs_locks_sysctls(void)
diff --git a/fs/namei.c b/fs/namei.c
index 567ee547492b..fb552161c981 100644
--- a/fs/namei.c
+++ b/fs/namei.c
@@ -1070,7 +1070,6 @@ static struct ctl_table namei_sysctls[] = {
 		.extra1		= SYSCTL_ZERO,
 		.extra2		= SYSCTL_TWO,
 	},
-	{ }
 };
 
 static int __init init_fs_namei_sysctls(void)
diff --git a/fs/namespace.c b/fs/namespace.c
index e157efc54023..e95d4328539d 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -5008,7 +5008,6 @@ static struct ctl_table fs_namespace_sysctls[] = {
 		.proc_handler	= proc_dointvec_minmax,
 		.extra1		= SYSCTL_ONE,
 	},
-	{ }
 };
 
 static int __init init_fs_namespace_sysctls(void)
diff --git a/fs/nfs/nfs4sysctl.c b/fs/nfs/nfs4sysctl.c
index e776200e9a11..886a7c4c60b3 100644
--- a/fs/nfs/nfs4sysctl.c
+++ b/fs/nfs/nfs4sysctl.c
@@ -34,7 +34,6 @@ static struct ctl_table nfs4_cb_sysctls[] = {
 		.mode = 0644,
 		.proc_handler = proc_dointvec,
 	},
-	{ }
 };
 
 int nfs4_register_sysctl(void)
diff --git a/fs/nfs/sysctl.c b/fs/nfs/sysctl.c
index f39e2089bc4c..e645be1a3381 100644
--- a/fs/nfs/sysctl.c
+++ b/fs/nfs/sysctl.c
@@ -29,7 +29,6 @@ static struct ctl_table nfs_cb_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dointvec,
 	},
-	{ }
 };
 
 int nfs_register_sysctl(void)
diff --git a/fs/notify/dnotify/dnotify.c b/fs/notify/dnotify/dnotify.c
index ebdcc25df0f7..8151ed5ddefc 100644
--- a/fs/notify/dnotify/dnotify.c
+++ b/fs/notify/dnotify/dnotify.c
@@ -29,7 +29,6 @@ static struct ctl_table dnotify_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dointvec,
 	},
-	{}
 };
 static void __init dnotify_sysctl_init(void)
 {
diff --git a/fs/notify/fanotify/fanotify_user.c b/fs/notify/fanotify/fanotify_user.c
index f69c451018e3..80539839af0c 100644
--- a/fs/notify/fanotify/fanotify_user.c
+++ b/fs/notify/fanotify/fanotify_user.c
@@ -86,7 +86,6 @@ static struct ctl_table fanotify_table[] = {
 		.proc_handler	= proc_dointvec_minmax,
 		.extra1		= SYSCTL_ZERO
 	},
-	{ }
 };
 
 static void __init fanotify_sysctls_init(void)
diff --git a/fs/notify/inotify/inotify_user.c b/fs/notify/inotify/inotify_user.c
index 1c4bfdab008d..3e222a271da6 100644
--- a/fs/notify/inotify/inotify_user.c
+++ b/fs/notify/inotify/inotify_user.c
@@ -85,7 +85,6 @@ static struct ctl_table inotify_table[] = {
 		.proc_handler	= proc_dointvec_minmax,
 		.extra1		= SYSCTL_ZERO
 	},
-	{ }
 };
 
 static void __init inotify_sysctls_init(void)
diff --git a/fs/ntfs/sysctl.c b/fs/ntfs/sysctl.c
index 174fe536a1c0..4e980170d86a 100644
--- a/fs/ntfs/sysctl.c
+++ b/fs/ntfs/sysctl.c
@@ -28,7 +28,6 @@ static struct ctl_table ntfs_sysctls[] = {
 		.mode		= 0644,			/* Mode, proc handler. */
 		.proc_handler	= proc_dointvec
 	},
-	{}
 };
 
 /* Storage for the sysctls header. */
diff --git a/fs/ocfs2/stackglue.c b/fs/ocfs2/stackglue.c
index a8d5ca98fa57..20aa37b67cfb 100644
--- a/fs/ocfs2/stackglue.c
+++ b/fs/ocfs2/stackglue.c
@@ -658,7 +658,6 @@ static struct ctl_table ocfs2_nm_table[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dostring,
 	},
-	{ }
 };
 
 static struct ctl_table_header *ocfs2_table_header;
diff --git a/fs/pipe.c b/fs/pipe.c
index 6c1a9b1db907..6bc1c4ae81d5 100644
--- a/fs/pipe.c
+++ b/fs/pipe.c
@@ -1492,7 +1492,6 @@ static struct ctl_table fs_pipe_sysctls[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_doulongvec_minmax,
 	},
-	{ }
 };
 #endif
 
diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index de484195f49f..4e06c4d69906 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -71,7 +71,6 @@ static struct ctl_table root_table[] = {
 		.procname = "",
 		.mode = S_IFDIR|S_IRUGO|S_IXUGO,
 	},
-	{ }
 };
 static struct ctl_table_root sysctl_table_root = {
 	.default_set.dir.header = {
diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
index 9e72bfe8bbad..69b03e13e6f2 100644
--- a/fs/quota/dquot.c
+++ b/fs/quota/dquot.c
@@ -2949,7 +2949,6 @@ static struct ctl_table fs_dqstats_table[] = {
 		.proc_handler	= proc_dointvec,
 	},
 #endif
-	{ },
 };
 
 static int __init dquot_init(void)
diff --git a/fs/sysctls.c b/fs/sysctls.c
index 76a0aee8c229..8dbde9a802fa 100644
--- a/fs/sysctls.c
+++ b/fs/sysctls.c
@@ -26,7 +26,6 @@ static struct ctl_table fs_shared_sysctls[] = {
 		.extra1		= SYSCTL_ZERO,
 		.extra2		= SYSCTL_MAXOLDUID,
 	},
-	{ }
 };
 
 static int __init init_fs_sysctls(void)
diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
index 56eaae9dac1a..7668285779c1 100644
--- a/fs/userfaultfd.c
+++ b/fs/userfaultfd.c
@@ -45,7 +45,6 @@ static struct ctl_table vm_userfaultfd_table[] = {
 		.extra1		= SYSCTL_ZERO,
 		.extra2		= SYSCTL_ONE,
 	},
-	{ }
 };
 #endif
 
diff --git a/fs/verity/fsverity_private.h b/fs/verity/fsverity_private.h
index d071a6e32581..8191bf7ad706 100644
--- a/fs/verity/fsverity_private.h
+++ b/fs/verity/fsverity_private.h
@@ -122,8 +122,8 @@ void __init fsverity_init_info_cache(void);
 
 /* signature.c */
 
-#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
 extern int fsverity_require_signatures;
+#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
 int fsverity_verify_signature(const struct fsverity_info *vi,
 			      const u8 *signature, size_t sig_size);
 
diff --git a/fs/verity/init.c b/fs/verity/init.c
index a29f062f6047..e31045dd4f6c 100644
--- a/fs/verity/init.c
+++ b/fs/verity/init.c
@@ -13,7 +13,6 @@
 static struct ctl_table_header *fsverity_sysctl_header;
 
 static struct ctl_table fsverity_sysctl_table[] = {
-#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
 	{
 		.procname       = "require_signatures",
 		.data           = &fsverity_require_signatures,
@@ -23,14 +22,17 @@ static struct ctl_table fsverity_sysctl_table[] = {
 		.extra1         = SYSCTL_ZERO,
 		.extra2         = SYSCTL_ONE,
 	},
-#endif
-	{ }
 };
 
 static void __init fsverity_init_sysctl(void)
 {
+#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
 	fsverity_sysctl_header = register_sysctl("fs/verity",
 						 fsverity_sysctl_table);
+#else
+	fsverity_sysctl_header = register_sysctl_sz("fs/verity",
+						 fsverity_sysctl_table, 0);
+#endif
 	if (!fsverity_sysctl_header)
 		panic("fsverity sysctl registration failed");
 }
diff --git a/fs/xfs/xfs_sysctl.c b/fs/xfs/xfs_sysctl.c
index fade33735393..a191f6560f98 100644
--- a/fs/xfs/xfs_sysctl.c
+++ b/fs/xfs/xfs_sysctl.c
@@ -206,8 +206,6 @@ static struct ctl_table xfs_table[] = {
 		.extra2		= &xfs_params.stats_clear.max
 	},
 #endif /* CONFIG_PROC_FS */
-
-	{}
 };
 
 int

-- 
2.30.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
