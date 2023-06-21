Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D95A7388B8
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 21 Jun 2023 17:20:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qBzdE-0001wZ-1T;
	Wed, 21 Jun 2023 15:20:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qBz8r-0001U3-CT
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 21 Jun 2023 14:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dZcnYY0Oxm9bRkMxDCNCZ0zbn8esw62Yk3QUiahNlYs=; b=N/Dd2EzcqgmQIN9uTpR0OaDDZ6
 CSmW7RreNjtwpSusoSP+Oru9PdF110LTP7fUGQee6QcT0R2xhgu4KumjI6ZKwiYjAeFq3tOVEagVI
 MkBCmU2kF44WBSqgYK7RDgB44RRne72CGzn5rv5P+jkN4EFJsBIQf+WsioemBrfgbVuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dZcnYY0Oxm9bRkMxDCNCZ0zbn8esw62Yk3QUiahNlYs=; b=kwm9oQMqc1BMyNms42gRsmuySe
 7RgSYR5GF14MztRo1yiC5Wl3TxDzW79tDmDL11NAvVDyrqkPS/6MONJNR4P/Lck2eSmABWKW8b/7h
 axn/h89rlpzDR2qYeQOuWA91wWZybWWklHzYORX8Opyg/e7LiqdKR9YVBmdwy0v3J1jE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBz8r-00Aich-3Q for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 21 Jun 2023 14:49:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AC6EE61596;
 Wed, 21 Jun 2023 14:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A691C433C8;
 Wed, 21 Jun 2023 14:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1687358939;
 bh=SEEgw3h/jPpL+PXMgRE1LQFrTLNf3+Q9wbIwlE7Cr0M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gcAdQAMzyrGX5k0WK/Id5YI5rykQYZBVvKLlxg5vMF+8k4rmqKh1fsU5cgbPB5gyB
 vp8R00GrGH2340dsBfafDn2Se13REpYMWmPPc/mWmdz+f9GMByUZMA69dm2pnlPbv7
 iuZ2BE+iuVDdFPLm1FwfOBv6S7rzo4BZ/m6bvFMQjoMwQYl3BPQoSuFeaTbn7yTchS
 9jR0ennu4zUPa/KqRRYBhLcpe54un12hHEVvSC3qv4nsz/FF6gfm1MOnlIxo80Smv8
 snJtL31ypO9aXMvcDf9+ceBmpf5j0wX+QnzNeXJV6NoMPtI4V3cG+PVgbA9Vdavq9D
 I8zzvMV7FFb8w==
From: Jeff Layton <jlayton@kernel.org>
To: Christian Brauner <brauner@kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>
Date: Wed, 21 Jun 2023 10:46:01 -0400
Message-ID: <20230621144735.55953-47-jlayton@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230621144735.55953-1-jlayton@kernel.org>
References: <20230621144507.55591-1-jlayton@kernel.org>
 <20230621144735.55953-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In later patches, we're going to change how the ctime.tv_nsec
 field is utilized. Switch to using accessor functions instead of raw accesses
 of inode->i_ctime. Signed-off-by: Jeff Layton <jlayton@kernel.org> ---
 fs/ntfs/inode.c
 | 15 ++++++++------- fs/ntfs/mft.c | 3 +-- 2 files changed, 9 insertions(+),
 9 deletions(-) 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qBz8r-00Aich-3Q
X-Mailman-Approved-At: Wed, 21 Jun 2023 15:20:26 +0000
Subject: [Linux-ntfs-dev] [PATCH 48/79] ntfs: switch to new ctime accessors
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.cz>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

In later patches, we're going to change how the ctime.tv_nsec field is
utilized. Switch to using accessor functions instead of raw accesses of
inode->i_ctime.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/ntfs/inode.c | 15 ++++++++-------
 fs/ntfs/mft.c   |  3 +--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..285142c22275 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -654,7 +654,7 @@ static int ntfs_read_locked_inode(struct inode *vi)
 	 * always changes, when mtime is changed. ctime can be changed on its
 	 * own, mtime is then not changed, e.g. when a file is renamed.
 	 */
-	vi->i_ctime = ntfs2utc(si->last_mft_change_time);
+	inode_ctime_set(vi, ntfs2utc(si->last_mft_change_time));
 	/*
 	 * Last access to the data within the file. Not changed during a rename
 	 * for example but changed whenever the file is written to.
@@ -1218,7 +1218,7 @@ static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi)
 	vi->i_gid	= base_vi->i_gid;
 	set_nlink(vi, base_vi->i_nlink);
 	vi->i_mtime	= base_vi->i_mtime;
-	vi->i_ctime	= base_vi->i_ctime;
+	inode_ctime_set(vi, inode_ctime_peek(base_vi));
 	vi->i_atime	= base_vi->i_atime;
 	vi->i_generation = ni->seq_no = base_ni->seq_no;
 
@@ -1484,7 +1484,7 @@ static int ntfs_read_locked_index_inode(struct inode *base_vi, struct inode *vi)
 	vi->i_gid	= base_vi->i_gid;
 	set_nlink(vi, base_vi->i_nlink);
 	vi->i_mtime	= base_vi->i_mtime;
-	vi->i_ctime	= base_vi->i_ctime;
+	inode_ctime_set(vi, inode_ctime_peek(base_vi));
 	vi->i_atime	= base_vi->i_atime;
 	vi->i_generation = ni->seq_no = base_ni->seq_no;
 	/* Set inode type to zero but preserve permissions. */
@@ -2804,13 +2804,14 @@ int ntfs_truncate(struct inode *vi)
 	 */
 	if (!IS_NOCMTIME(VFS_I(base_ni)) && !IS_RDONLY(VFS_I(base_ni))) {
 		struct timespec64 now = current_time(VFS_I(base_ni));
+		struct timespec64 ctime = inode_ctime_peek(VFS_I(base_ni));
 		int sync_it = 0;
 
 		if (!timespec64_equal(&VFS_I(base_ni)->i_mtime, &now) ||
-		    !timespec64_equal(&VFS_I(base_ni)->i_ctime, &now))
+		    !timespec64_equal(&ctime, &now))
 			sync_it = 1;
 		VFS_I(base_ni)->i_mtime = now;
-		VFS_I(base_ni)->i_ctime = now;
+		inode_ctime_set(VFS_I(base_ni), now);
 
 		if (sync_it)
 			mark_inode_dirty_sync(VFS_I(base_ni));
@@ -2928,7 +2929,7 @@ int ntfs_setattr(struct mnt_idmap *idmap, struct dentry *dentry,
 	if (ia_valid & ATTR_MTIME)
 		vi->i_mtime = attr->ia_mtime;
 	if (ia_valid & ATTR_CTIME)
-		vi->i_ctime = attr->ia_ctime;
+		inode_ctime_set(vi, attr->ia_ctime);
 	mark_inode_dirty(vi);
 out:
 	return err;
@@ -3004,7 +3005,7 @@ int __ntfs_write_inode(struct inode *vi, int sync)
 		si->last_data_change_time = nt;
 		modified = true;
 	}
-	nt = utc2ntfs(vi->i_ctime);
+	nt = utc2ntfs(inode_ctime_peek(vi));
 	if (si->last_mft_change_time != nt) {
 		ntfs_debug("Updating ctime for inode 0x%lx: old = 0x%llx, "
 				"new = 0x%llx", vi->i_ino, (long long)
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 0155f106ec34..68821e312ed2 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -2682,8 +2682,7 @@ ntfs_inode *ntfs_mft_record_alloc(ntfs_volume *vol, const int mode,
 			vi->i_mode &= ~S_IWUGO;
 
 		/* Set the inode times to the current time. */
-		vi->i_atime = vi->i_mtime = vi->i_ctime =
-			current_time(vi);
+		vi->i_atime = vi->i_mtime = inode_ctime_set_current(vi);
 		/*
 		 * Set the file size to 0, the ntfs inode sizes are set to 0 by
 		 * the call to ntfs_init_big_inode() below.
-- 
2.41.0



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
