Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E505748FF2
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  5 Jul 2023 23:35:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qHA9L-0006JI-B0;
	Wed, 05 Jul 2023 21:35:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qH7o9-0007ob-Qq
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 05 Jul 2023 19:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6p/jD2qgu3Ta8+OfCkVGYmt0yytFObZ0xAYF5VRvddo=; b=JG8VUzXOY7Yluj3l4lRTfJdwr7
 WS5HzFE7kHBou6BdrlCT+qz8834DXh8Dx1x0lTyQvtEoQxJ//2jJQlejdXt6vsG+xWw9kgZEe/Isk
 dcXi29AzxjYU69yKsHSnc2MVwwPB72lk57e/EKVjMIbMUt0/ou6+XfmgrYWh/BLjJ0Ik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6p/jD2qgu3Ta8+OfCkVGYmt0yytFObZ0xAYF5VRvddo=; b=GifGJ5V7/X/p/IEouGl8arR/v2
 mZYBEOJ3r8JF0vSD4OifQcVCEZdnkRmgced4VwuhWxs/fFv9qsc0dSTKpJkOa1uN2+TAKV2FmoRwQ
 tUiQRNCjLxABhCb5sy8aUcphY4DuEd48N0OslZ5R/M/6hwku2YnZsM0IAd9ZEUfHzEc0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qH7o9-007UOT-UQ for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 05 Jul 2023 19:04:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8CEEE616FF;
 Wed,  5 Jul 2023 19:04:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99645C433C7;
 Wed,  5 Jul 2023 19:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688583892;
 bh=jvaW2KRmybks7mvs3yOwXVr/qAGA1M2OOs0qv92r5E8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g1xtWtERR9DQpMMBKqDExHVrFEjpaDxc4hzZ3Y7fdDV2lCxsUP6+Ed5TSxXK4taET
 ttP2JTp9wZ6FOXip1TYDrYEdcSq0M8GJ+UqIiDUZLN3UMqVZUEMn0SU+ifk7M3GR4f
 Ehvrkqw8+sKz+uxAFmV+9Isjs7Y1SiYrqcNfxVFKiFT1h9hc8J6Utbpl/CCrewFVgX
 tV7x2ReErdrhiIKM+VucEI9tsu4Gf1oIxbCnkoOt9BMmGg4cQR42vmDeBoweJwAuBr
 u/VeLLD9+TEUqc8/gefyIln5ueL8vAh3LcJ/cgYls9OG9Duts/iqGX4a+7ZUUhrppQ
 OfJ5s89rA1viw==
From: Jeff Layton <jlayton@kernel.org>
To: Christian Brauner <brauner@kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>
Date: Wed,  5 Jul 2023 15:01:25 -0400
Message-ID: <20230705190309.579783-58-jlayton@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705190309.579783-1-jlayton@kernel.org>
References: <20230705185755.579053-1-jlayton@kernel.org>
 <20230705190309.579783-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In later patches, we're going to change how the inode's ctime
 field is used. Switch to using accessor functions instead of raw accesses
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qH7o9-007UOT-UQ
X-Mailman-Approved-At: Wed, 05 Jul 2023 21:34:55 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 60/92] ntfs: convert to ctime accessor
 functions
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Al Viro <viro@zeniv.linux.org.uk>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

In later patches, we're going to change how the inode's ctime field is
used. Switch to using accessor functions instead of raw accesses of
inode->i_ctime.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/ntfs/inode.c | 15 ++++++++-------
 fs/ntfs/mft.c   |  3 +--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..99ac6ea277c4 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -654,7 +654,7 @@ static int ntfs_read_locked_inode(struct inode *vi)
 	 * always changes, when mtime is changed. ctime can be changed on its
 	 * own, mtime is then not changed, e.g. when a file is renamed.
 	 */
-	vi->i_ctime = ntfs2utc(si->last_mft_change_time);
+	inode_set_ctime_to_ts(vi, ntfs2utc(si->last_mft_change_time));
 	/*
 	 * Last access to the data within the file. Not changed during a rename
 	 * for example but changed whenever the file is written to.
@@ -1218,7 +1218,7 @@ static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi)
 	vi->i_gid	= base_vi->i_gid;
 	set_nlink(vi, base_vi->i_nlink);
 	vi->i_mtime	= base_vi->i_mtime;
-	vi->i_ctime	= base_vi->i_ctime;
+	inode_set_ctime_to_ts(vi, inode_get_ctime(base_vi));
 	vi->i_atime	= base_vi->i_atime;
 	vi->i_generation = ni->seq_no = base_ni->seq_no;
 
@@ -1484,7 +1484,7 @@ static int ntfs_read_locked_index_inode(struct inode *base_vi, struct inode *vi)
 	vi->i_gid	= base_vi->i_gid;
 	set_nlink(vi, base_vi->i_nlink);
 	vi->i_mtime	= base_vi->i_mtime;
-	vi->i_ctime	= base_vi->i_ctime;
+	inode_set_ctime_to_ts(vi, inode_get_ctime(base_vi));
 	vi->i_atime	= base_vi->i_atime;
 	vi->i_generation = ni->seq_no = base_ni->seq_no;
 	/* Set inode type to zero but preserve permissions. */
@@ -2804,13 +2804,14 @@ int ntfs_truncate(struct inode *vi)
 	 */
 	if (!IS_NOCMTIME(VFS_I(base_ni)) && !IS_RDONLY(VFS_I(base_ni))) {
 		struct timespec64 now = current_time(VFS_I(base_ni));
+		struct timespec64 ctime = inode_get_ctime(VFS_I(base_ni));
 		int sync_it = 0;
 
 		if (!timespec64_equal(&VFS_I(base_ni)->i_mtime, &now) ||
-		    !timespec64_equal(&VFS_I(base_ni)->i_ctime, &now))
+		    !timespec64_equal(&ctime, &now))
 			sync_it = 1;
+		inode_set_ctime_to_ts(VFS_I(base_ni), now);
 		VFS_I(base_ni)->i_mtime = now;
-		VFS_I(base_ni)->i_ctime = now;
 
 		if (sync_it)
 			mark_inode_dirty_sync(VFS_I(base_ni));
@@ -2928,7 +2929,7 @@ int ntfs_setattr(struct mnt_idmap *idmap, struct dentry *dentry,
 	if (ia_valid & ATTR_MTIME)
 		vi->i_mtime = attr->ia_mtime;
 	if (ia_valid & ATTR_CTIME)
-		vi->i_ctime = attr->ia_ctime;
+		inode_set_ctime_to_ts(vi, attr->ia_ctime);
 	mark_inode_dirty(vi);
 out:
 	return err;
@@ -3004,7 +3005,7 @@ int __ntfs_write_inode(struct inode *vi, int sync)
 		si->last_data_change_time = nt;
 		modified = true;
 	}
-	nt = utc2ntfs(vi->i_ctime);
+	nt = utc2ntfs(inode_get_ctime(vi));
 	if (si->last_mft_change_time != nt) {
 		ntfs_debug("Updating ctime for inode 0x%lx: old = 0x%llx, "
 				"new = 0x%llx", vi->i_ino, (long long)
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 0155f106ec34..ad1a8f72da22 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -2682,8 +2682,7 @@ ntfs_inode *ntfs_mft_record_alloc(ntfs_volume *vol, const int mode,
 			vi->i_mode &= ~S_IWUGO;
 
 		/* Set the inode times to the current time. */
-		vi->i_atime = vi->i_mtime = vi->i_ctime =
-			current_time(vi);
+		vi->i_atime = vi->i_mtime = inode_set_ctime_current(vi);
 		/*
 		 * Set the file size to 0, the ntfs inode sizes are set to 0 by
 		 * the call to ntfs_init_big_inode() below.
-- 
2.41.0



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
