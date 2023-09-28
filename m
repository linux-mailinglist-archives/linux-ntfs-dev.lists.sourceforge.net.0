Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E387B19A7
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 28 Sep 2023 13:05:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qlopf-0004El-MO;
	Thu, 28 Sep 2023 11:05:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jlayton@kernel.org>) id 1qlope-0004Ee-7N
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Sep 2023 11:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h7bApjJI4HiL6Zf6XvzizckaNwimlLKVtzdoDEB2J1U=; b=Wx8y+ASM3rxBRJg1H8Y9sl2cIR
 +yH7KTYeTvi+Oom2y0855GQgSpZVv2CCRdaNL1y5N+0V0LgWFsWqs62KQ4Z5N0IHzmJhOI5V7/nBZ
 XtkU49L06d5elc0r4KNFRF3OLd0ELIBys7O9xhJemsK8AA8FJutDj0M5dBqMho9mKhqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h7bApjJI4HiL6Zf6XvzizckaNwimlLKVtzdoDEB2J1U=; b=gMnpH4TWhUJp8i08qmeRBNYZQy
 NauxlfMKJgHLODlYiNBQ9KYjoi1m3jf1mSGUqB3FQNAZ0hJ1vedTJxd9X+Qh1gHnECfvcGlX7SOws
 RR1h097d+Tk910N6Bqb8JVPPcNgaegDNRcOX5UiH6i0E6WKllVPt06WDWJcWhjlapQpM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlopd-0006KS-So for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Sep 2023 11:05:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ADE28615A9;
 Thu, 28 Sep 2023 11:05:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEE7AC433CD;
 Thu, 28 Sep 2023 11:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695899116;
 bh=iYzRYo8vFGKRND3wpSgS5AcDoJOSOrjRRyFvrT8djug=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hmNdPBmvApwFSgIvMG90dg/rmri7eMVBjXfenRypJWJjw09RAbm8TnO40XHCQKP1S
 flNbif3rant7lnwVUyWzf0llo8GQjlGI4arrDXpk9Vp1SEiJmoUXg/Tnkq9DfGwD7e
 vTlOZ3P//QBUTnvEoQBB+1iYVfxJoNq0ivRNOn3GtTZGn3Qlct8FessjdlQCdP90vt
 C95ARyOmEm0t//Sge7JSw/vtQLTh8o0ydvuxuJ0P6zkIZIBr4BOYDLXwyhfiqJ1KTY
 xxITkNTU+B8SKGko1OZf3sEkWssadvxtk+7T8Y9nUHhhoR/oilwit5qOU6vmLQfjeY
 KVySWnKJGfyJw==
From: Jeff Layton <jlayton@kernel.org>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 28 Sep 2023 07:03:02 -0400
Message-ID: <20230928110413.33032-52-jlayton@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928110413.33032-1-jlayton@kernel.org>
References: <20230928110300.32891-1-jlayton@kernel.org>
 <20230928110413.33032-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Jeff Layton <jlayton@kernel.org> ---
 fs/ntfs/inode.c
 | 25 +++++++++++++ fs/ntfs/mft.c | 2 +- 2 files changed, 14 insertions(+),
 13 deletions(-) diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c index
 99ac6ea277c4..aba1e22db4e9
 100644 --- a/fs/ntfs/inode.c +++ b/fs/ntfs/inode.c @@ -648, 7 +648, 7 @@ static
 int ntfs_read_locked_inode(struct inode *v [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlopd-0006KS-So
Subject: [Linux-ntfs-dev] [PATCH 53/87] fs/ntfs: convert to new inode {a,
 m}time accessors
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
Cc: linux-ntfs-dev@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/ntfs/inode.c | 25 +++++++++++++------------
 fs/ntfs/mft.c   |  2 +-
 2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 99ac6ea277c4..aba1e22db4e9 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -648,7 +648,7 @@ static int ntfs_read_locked_inode(struct inode *vi)
 	 * mtime is the last change of the data within the file. Not changed
 	 * when only metadata is changed, e.g. a rename doesn't affect mtime.
 	 */
-	vi->i_mtime = ntfs2utc(si->last_data_change_time);
+	inode_set_mtime_to_ts(vi, ntfs2utc(si->last_data_change_time));
 	/*
 	 * ctime is the last change of the metadata of the file. This obviously
 	 * always changes, when mtime is changed. ctime can be changed on its
@@ -659,7 +659,7 @@ static int ntfs_read_locked_inode(struct inode *vi)
 	 * Last access to the data within the file. Not changed during a rename
 	 * for example but changed whenever the file is written to.
 	 */
-	vi->i_atime = ntfs2utc(si->last_access_time);
+	inode_set_atime_to_ts(vi, ntfs2utc(si->last_access_time));
 
 	/* Find the attribute list attribute if present. */
 	ntfs_attr_reinit_search_ctx(ctx);
@@ -1217,9 +1217,9 @@ static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi)
 	vi->i_uid	= base_vi->i_uid;
 	vi->i_gid	= base_vi->i_gid;
 	set_nlink(vi, base_vi->i_nlink);
-	vi->i_mtime	= base_vi->i_mtime;
+	inode_set_mtime_to_ts(vi, inode_get_mtime(base_vi));
 	inode_set_ctime_to_ts(vi, inode_get_ctime(base_vi));
-	vi->i_atime	= base_vi->i_atime;
+	inode_set_atime_to_ts(vi, inode_get_atime(base_vi));
 	vi->i_generation = ni->seq_no = base_ni->seq_no;
 
 	/* Set inode type to zero but preserve permissions. */
@@ -1483,9 +1483,9 @@ static int ntfs_read_locked_index_inode(struct inode *base_vi, struct inode *vi)
 	vi->i_uid	= base_vi->i_uid;
 	vi->i_gid	= base_vi->i_gid;
 	set_nlink(vi, base_vi->i_nlink);
-	vi->i_mtime	= base_vi->i_mtime;
+	inode_set_mtime_to_ts(vi, inode_get_mtime(base_vi));
 	inode_set_ctime_to_ts(vi, inode_get_ctime(base_vi));
-	vi->i_atime	= base_vi->i_atime;
+	inode_set_atime_to_ts(vi, inode_get_atime(base_vi));
 	vi->i_generation = ni->seq_no = base_ni->seq_no;
 	/* Set inode type to zero but preserve permissions. */
 	vi->i_mode	= base_vi->i_mode & ~S_IFMT;
@@ -2805,13 +2805,14 @@ int ntfs_truncate(struct inode *vi)
 	if (!IS_NOCMTIME(VFS_I(base_ni)) && !IS_RDONLY(VFS_I(base_ni))) {
 		struct timespec64 now = current_time(VFS_I(base_ni));
 		struct timespec64 ctime = inode_get_ctime(VFS_I(base_ni));
+		struct timespec64 mtime = inode_get_mtime(VFS_I(base_ni));
 		int sync_it = 0;
 
-		if (!timespec64_equal(&VFS_I(base_ni)->i_mtime, &now) ||
+		if (!timespec64_equal(&mtime, &now) ||
 		    !timespec64_equal(&ctime, &now))
 			sync_it = 1;
 		inode_set_ctime_to_ts(VFS_I(base_ni), now);
-		VFS_I(base_ni)->i_mtime = now;
+		inode_set_mtime_to_ts(VFS_I(base_ni), now);
 
 		if (sync_it)
 			mark_inode_dirty_sync(VFS_I(base_ni));
@@ -2925,9 +2926,9 @@ int ntfs_setattr(struct mnt_idmap *idmap, struct dentry *dentry,
 		}
 	}
 	if (ia_valid & ATTR_ATIME)
-		vi->i_atime = attr->ia_atime;
+		inode_set_atime_to_ts(vi, attr->ia_atime);
 	if (ia_valid & ATTR_MTIME)
-		vi->i_mtime = attr->ia_mtime;
+		inode_set_mtime_to_ts(vi, attr->ia_mtime);
 	if (ia_valid & ATTR_CTIME)
 		inode_set_ctime_to_ts(vi, attr->ia_ctime);
 	mark_inode_dirty(vi);
@@ -2996,7 +2997,7 @@ int __ntfs_write_inode(struct inode *vi, int sync)
 	si = (STANDARD_INFORMATION*)((u8*)ctx->attr +
 			le16_to_cpu(ctx->attr->data.resident.value_offset));
 	/* Update the access times if they have changed. */
-	nt = utc2ntfs(vi->i_mtime);
+	nt = utc2ntfs(inode_get_mtime(vi));
 	if (si->last_data_change_time != nt) {
 		ntfs_debug("Updating mtime for inode 0x%lx: old = 0x%llx, "
 				"new = 0x%llx", vi->i_ino, (long long)
@@ -3014,7 +3015,7 @@ int __ntfs_write_inode(struct inode *vi, int sync)
 		si->last_mft_change_time = nt;
 		modified = true;
 	}
-	nt = utc2ntfs(vi->i_atime);
+	nt = utc2ntfs(inode_get_atime(vi));
 	if (si->last_access_time != nt) {
 		ntfs_debug("Updating atime for inode 0x%lx: old = 0x%llx, "
 				"new = 0x%llx", vi->i_ino,
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index ad1a8f72da22..6fd1dc4b08c8 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -2682,7 +2682,7 @@ ntfs_inode *ntfs_mft_record_alloc(ntfs_volume *vol, const int mode,
 			vi->i_mode &= ~S_IWUGO;
 
 		/* Set the inode times to the current time. */
-		vi->i_atime = vi->i_mtime = inode_set_ctime_current(vi);
+		simple_inode_init_ts(vi);
 		/*
 		 * Set the file size to 0, the ntfs inode sizes are set to 0 by
 		 * the call to ntfs_init_big_inode() below.
-- 
2.41.0



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
