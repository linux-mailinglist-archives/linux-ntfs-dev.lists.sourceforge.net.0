Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B518A698E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Apr 2024 13:24:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwgvJ-0006kw-4N;
	Tue, 16 Apr 2024 11:24:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rwgDc-0002WV-Vc
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Apr 2024 10:39:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gSxeQrvgEVoytipwrZWCqxklHP4D4YGcw+sSo9r46wk=; b=Fp3GnNEMcYqgFbyqHzv5uzCSn8
 GcJXgxNMW4gXTX0vxFjF/5vaafOLGvoL4+pr8pUJAMj2X5Xr7P8HNCLDpvDj3+IqxPMLH7/N9wFVF
 GZYEYohpYhUKgKaV3+4I6e5Q6k8w26ROtZlaU07o+emr/SpECtd38v3W+0tfuesj+APY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gSxeQrvgEVoytipwrZWCqxklHP4D4YGcw+sSo9r46wk=; b=YoURwi/+/Q9OyLmY6MBdHKh0AO
 dLV6WDeHtuVyu8okddAqGNnrQPGX+sT60PKiPQBbrb2Hl8hBaUe7WZFb1eNwCN2Bam5qjYsLRspA3
 NI0HiYeKgpApCe1+W66S/iQUQ7hZtMdwmzrn0lqtLt9WdML9KnIOYS/Oe8d0TD0+1SWk=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwgDc-00038B-HC for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Apr 2024 10:39:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 63E0ECE0F72;
 Tue, 16 Apr 2024 10:39:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA9C8C113CE;
 Tue, 16 Apr 2024 10:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713263943;
 bh=Jd5MpXhP+qK+dsdHRsCDInhYD1pfcATdgiBO7gOn1zA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hlAZphxnzI+e4qo37V7HdMS+DRAlCOAFQXzK1WwoNlq21Ad1TMDzW/gjlmVfcgdjq
 ddINeNgeW14SZrhLKkC1rq6eOzNndI/pfPZZNBwqZaSAY65xs0dg7Lwa2MOv96YnXD
 CRLcr8dCc9kQZmtm6xYTQctmIMgloXsIAh3Anox+maQIqzQZN2T1tCiPpoXoaoM0RL
 2wfgGIt6ddjLaMSi/yHgN8KiLS71WqLtEEvL1FV87l+WWlrM4PWjA50aD05UUvgBJ8
 nQPfyRGL1tJxVAkFswthCUMWiWkWs6i6IuINW9Y3CZxx/jmz2oicEvtA/dtvsO5aIs
 Wp4RDYIfvX0uw==
Date: Tue, 16 Apr 2024 12:38:56 +0200
From: Christian Brauner <brauner@kernel.org>
To: Johan Hovold <johan@kernel.org>, 
 Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240416-genutzt-bestleistung-f76707a9ddba@brauner>
References: <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
 <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
 <20240415-warzen-rundgang-ce78bedb5f19@brauner>
 <CAHk-=whPTEYv3F9tgvJf-OakOxyGw2jzRVD0BMkXmC5ANPj0YA@mail.gmail.com>
 <Zh1MCw7Q0VIKrrMi@hovoldconsulting.com>
 <CAHk-=whN3V4Jzy+Mv8UZGTJ5VEk_ihCS8tu3VskW-HCfBg6r=g@mail.gmail.com>
 <Zh1Qa2aB2Dg_-mW4@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4fboor3uxgqjpnzm"
Content-Disposition: inline
In-Reply-To: <Zh1Qa2aB2Dg_-mW4@hovoldconsulting.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 06:06:03PM +0200, Johan Hovold wrote:
 > On Mon, Apr 15, 2024 at 08:51:13AM -0700, Linus Torvalds wrote: > > On
 Mon, 15 Apr 2024 at 08:47, Johan Hovold <johan@kernel.org> wrote: [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwgDc-00038B-HC
X-Mailman-Approved-At: Tue, 16 Apr 2024 11:24:24 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--4fboor3uxgqjpnzm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Apr 15, 2024 at 06:06:03PM +0200, Johan Hovold wrote:
> On Mon, Apr 15, 2024 at 08:51:13AM -0700, Linus Torvalds wrote:
> > On Mon, 15 Apr 2024 at 08:47, Johan Hovold <johan@kernel.org> wrote:
> > >
> > > I think the "ntfs" alias must always be mounted read-only because you
> > > can currently have an fstab entry which does not specify "ro" and this
> > > mount would suddenly become writeable when updating to 6.9 (possibly by
> > > a non-privileged user, etc).
> > 
> > Well, it would be fairly easy to do particularly if we just do it for
> > the old legacy case.
> > 
> > Of course, even the legacy case had that CONFIG_NTFS_RW option, so
> > people who depended on _that_ would want to be able to remount...
> 
> Ah, right, I forgot about CONFIG_NTFS_RW as I've never enabled it.
> 
> Judging from the now removed Kconfig entry perhaps not that many people
> did:
> 
> 	The only supported operation is overwriting existing files,
> 	without changing the file length.  No file or directory
> 	creation, deletion or renaming is possible. 
> 
> but I guess it still makes my argument above mostly moot.
> 
> At least if we disable write support in ntfs3 by default for now...

I think we can disable write support in ntfs3 for now. I've picked up
the patch to make ntfs3 serve I sent some time ago that Johan tested
now.

The only thing left is to disable write support for ntfs3 as legacy ntfs
driver for now. I took a stab at this. The following two patches
I'm appending _should_ be enough iiuc. Johan, please take a look and
please test.

This is also available on:

https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git vfs.fixes

So feel free to pull from there and look there as well.

--4fboor3uxgqjpnzm
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment;
	filename="0001-ntfs3-enforce-read-only-when-used-as-legacy-ntfs-dri.patch"

From 1a2af5ca9b66bd3d4040f9987c78faff128e552f Mon Sep 17 00:00:00 2001
From: Christian Brauner <brauner@kernel.org>
Date: Tue, 16 Apr 2024 12:08:51 +0200
Subject: [PATCH 1/2] ntfs3: enforce read-only when used as legacy ntfs driver

Ensure that ntfs3 is mounted read-only when it is used to provide the
legacy ntfs driver.

Signed-off-by: Christian Brauner <brauner@kernel.org>
---
 fs/ntfs3/ntfs_fs.h |  2 ++
 fs/ntfs3/super.c   | 34 ++++++++++++++++++++++++++++++----
 2 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/fs/ntfs3/ntfs_fs.h b/fs/ntfs3/ntfs_fs.h
index 79356fd29a14..184c8bc76b92 100644
--- a/fs/ntfs3/ntfs_fs.h
+++ b/fs/ntfs3/ntfs_fs.h
@@ -1154,4 +1154,6 @@ static inline void le64_sub_cpu(__le64 *var, u64 val)
 	*var = cpu_to_le64(le64_to_cpu(*var) - val);
 }
 
+bool is_legacy_ntfs(struct super_block *sb);
+
 #endif /* _LINUX_NTFS3_NTFS_FS_H */
diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
index 8d2e51bae2cb..d7f3e03a4010 100644
--- a/fs/ntfs3/super.c
+++ b/fs/ntfs3/super.c
@@ -408,6 +408,12 @@ static int ntfs_fs_reconfigure(struct fs_context *fc)
 	struct ntfs_mount_options *new_opts = fc->fs_private;
 	int ro_rw;
 
+	/* If ntfs3 is used as legacy ntfs enforce read-only mode. */
+	if (is_legacy_ntfs(sb)) {
+		fc->sb_flags |= SB_RDONLY;
+		goto out;
+	}
+
 	ro_rw = sb_rdonly(sb) && !(fc->sb_flags & SB_RDONLY);
 	if (ro_rw && (sbi->flags & NTFS_FLAGS_NEED_REPLAY)) {
 		errorf(fc,
@@ -427,8 +433,6 @@ static int ntfs_fs_reconfigure(struct fs_context *fc)
 			fc,
 			"ntfs3: Cannot use different iocharset when remounting!");
 
-	sync_filesystem(sb);
-
 	if (ro_rw && (sbi->volume.flags & VOLUME_FLAG_DIRTY) &&
 	    !new_opts->force) {
 		errorf(fc,
@@ -436,6 +440,8 @@ static int ntfs_fs_reconfigure(struct fs_context *fc)
 		return -EINVAL;
 	}
 
+out:
+	sync_filesystem(sb);
 	swap(sbi->options, fc->fs_private);
 
 	return 0;
@@ -1730,7 +1736,7 @@ static const struct fs_context_operations ntfs_context_ops = {
  * This will called when mount/remount. We will first initialize
  * options so that if remount we can use just that.
  */
-static int ntfs_init_fs_context(struct fs_context *fc)
+static int __ntfs_init_fs_context(struct fs_context *fc)
 {
 	struct ntfs_mount_options *opts;
 	struct ntfs_sb_info *sbi;
@@ -1778,6 +1784,11 @@ static int ntfs_init_fs_context(struct fs_context *fc)
 	return -ENOMEM;
 }
 
+static int ntfs_init_fs_context(struct fs_context *fc)
+{
+	return __ntfs_init_fs_context(fc);
+}
+
 static void ntfs3_kill_sb(struct super_block *sb)
 {
 	struct ntfs_sb_info *sbi = sb->s_fs_info;
@@ -1800,10 +1811,20 @@ static struct file_system_type ntfs_fs_type = {
 };
 
 #if IS_ENABLED(CONFIG_NTFS_FS)
+static int ntfs_legacy_init_fs_context(struct fs_context *fc)
+{
+	int ret;
+
+	ret = __ntfs_init_fs_context(fc);
+	/* If ntfs3 is used as legacy ntfs enforce read-only mode. */
+	fc->sb_flags |= SB_RDONLY;
+	return ret;
+}
+
 static struct file_system_type ntfs_legacy_fs_type = {
 	.owner			= THIS_MODULE,
 	.name			= "ntfs",
-	.init_fs_context	= ntfs_init_fs_context,
+	.init_fs_context	= ntfs_legacy_init_fs_context,
 	.parameters		= ntfs_fs_parameters,
 	.kill_sb		= ntfs3_kill_sb,
 	.fs_flags		= FS_REQUIRES_DEV | FS_ALLOW_IDMAP,
@@ -1821,9 +1842,14 @@ static inline void unregister_as_ntfs_legacy(void)
 {
 	unregister_filesystem(&ntfs_legacy_fs_type);
 }
+bool is_legacy_ntfs(struct super_block *sb)
+{
+	return sb->s_type == &ntfs_legacy_fs_type;
+}
 #else
 static inline void register_as_ntfs_legacy(void) {}
 static inline void unregister_as_ntfs_legacy(void) {}
+bool is_legacy_ntfs(struct super_block *sb) { return false; }
 #endif
 
 
-- 
2.43.0


--4fboor3uxgqjpnzm
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment;
	filename="0002-ntfs3-add-legacy-ntfs-file-operations.patch"

From 5e646f22f0e9d5268d902dfd33a39154c0b5f578 Mon Sep 17 00:00:00 2001
From: Christian Brauner <brauner@kernel.org>
Date: Tue, 16 Apr 2024 12:20:50 +0200
Subject: [PATCH 2/2] ntfs3: add legacy ntfs file operations

To ensure that ioctl()s can't be used to circumvent write restrictions.

Signed-off-by: Christian Brauner <brauner@kernel.org>
---
 fs/ntfs3/dir.c     |  7 +++++++
 fs/ntfs3/file.c    |  8 ++++++++
 fs/ntfs3/inode.c   | 20 ++++++++++++++++----
 fs/ntfs3/ntfs_fs.h |  2 ++
 4 files changed, 33 insertions(+), 4 deletions(-)

diff --git a/fs/ntfs3/dir.c b/fs/ntfs3/dir.c
index 5cf3d9decf64..263635199b60 100644
--- a/fs/ntfs3/dir.c
+++ b/fs/ntfs3/dir.c
@@ -616,4 +616,11 @@ const struct file_operations ntfs_dir_operations = {
 	.compat_ioctl   = ntfs_compat_ioctl,
 #endif
 };
+
+const struct file_operations ntfs_legacy_dir_operations = {
+	.llseek		= generic_file_llseek,
+	.read		= generic_read_dir,
+	.iterate_shared	= ntfs_readdir,
+	.open		= ntfs_file_open,
+};
 // clang-format on
diff --git a/fs/ntfs3/file.c b/fs/ntfs3/file.c
index 5418662c80d8..b73969e05052 100644
--- a/fs/ntfs3/file.c
+++ b/fs/ntfs3/file.c
@@ -1236,4 +1236,12 @@ const struct file_operations ntfs_file_operations = {
 	.fallocate	= ntfs_fallocate,
 	.release	= ntfs_file_release,
 };
+
+const struct file_operations ntfs_legacy_file_operations = {
+	.llseek		= generic_file_llseek,
+	.read_iter	= ntfs_file_read_iter,
+	.splice_read	= ntfs_file_splice_read,
+	.open		= ntfs_file_open,
+	.release	= ntfs_file_release,
+};
 // clang-format on
diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index eb7a8c9fba01..d273eda1cf45 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -440,7 +440,10 @@ static struct inode *ntfs_read_mft(struct inode *inode,
 		 * Usually a hard links to directories are disabled.
 		 */
 		inode->i_op = &ntfs_dir_inode_operations;
-		inode->i_fop = &ntfs_dir_operations;
+		if (is_legacy_ntfs(inode->i_sb))
+			inode->i_fop = &ntfs_legacy_dir_operations;
+		else
+			inode->i_fop = &ntfs_dir_operations;
 		ni->i_valid = 0;
 	} else if (S_ISLNK(mode)) {
 		ni->std_fa &= ~FILE_ATTRIBUTE_DIRECTORY;
@@ -450,7 +453,10 @@ static struct inode *ntfs_read_mft(struct inode *inode,
 	} else if (S_ISREG(mode)) {
 		ni->std_fa &= ~FILE_ATTRIBUTE_DIRECTORY;
 		inode->i_op = &ntfs_file_inode_operations;
-		inode->i_fop = &ntfs_file_operations;
+		if (is_legacy_ntfs(inode->i_sb))
+			inode->i_fop = &ntfs_legacy_file_operations;
+		else
+			inode->i_fop = &ntfs_file_operations;
 		inode->i_mapping->a_ops = is_compressed(ni) ? &ntfs_aops_cmpr :
 							      &ntfs_aops;
 		if (ino != MFT_REC_MFT)
@@ -1614,7 +1620,10 @@ struct inode *ntfs_create_inode(struct mnt_idmap *idmap, struct inode *dir,
 
 	if (S_ISDIR(mode)) {
 		inode->i_op = &ntfs_dir_inode_operations;
-		inode->i_fop = &ntfs_dir_operations;
+		if (is_legacy_ntfs(inode->i_sb))
+			inode->i_fop = &ntfs_legacy_dir_operations;
+		else
+			inode->i_fop = &ntfs_dir_operations;
 	} else if (S_ISLNK(mode)) {
 		inode->i_op = &ntfs_link_inode_operations;
 		inode->i_fop = NULL;
@@ -1623,7 +1632,10 @@ struct inode *ntfs_create_inode(struct mnt_idmap *idmap, struct inode *dir,
 		inode_nohighmem(inode);
 	} else if (S_ISREG(mode)) {
 		inode->i_op = &ntfs_file_inode_operations;
-		inode->i_fop = &ntfs_file_operations;
+		if (is_legacy_ntfs(inode->i_sb))
+			inode->i_fop = &ntfs_legacy_file_operations;
+		else
+			inode->i_fop = &ntfs_file_operations;
 		inode->i_mapping->a_ops = is_compressed(ni) ? &ntfs_aops_cmpr :
 							      &ntfs_aops;
 		init_rwsem(&ni->file.run_lock);
diff --git a/fs/ntfs3/ntfs_fs.h b/fs/ntfs3/ntfs_fs.h
index 184c8bc76b92..5f4d288c6adf 100644
--- a/fs/ntfs3/ntfs_fs.h
+++ b/fs/ntfs3/ntfs_fs.h
@@ -493,6 +493,7 @@ struct inode *dir_search_u(struct inode *dir, const struct cpu_str *uni,
 			   struct ntfs_fnd *fnd);
 bool dir_is_empty(struct inode *dir);
 extern const struct file_operations ntfs_dir_operations;
+extern const struct file_operations ntfs_legacy_dir_operations;
 
 /* Globals from file.c */
 int ntfs_getattr(struct mnt_idmap *idmap, const struct path *path,
@@ -507,6 +508,7 @@ long ntfs_compat_ioctl(struct file *filp, u32 cmd, unsigned long arg);
 extern const struct inode_operations ntfs_special_inode_operations;
 extern const struct inode_operations ntfs_file_inode_operations;
 extern const struct file_operations ntfs_file_operations;
+extern const struct file_operations ntfs_legacy_file_operations;
 
 /* Globals from frecord.c */
 void ni_remove_mi(struct ntfs_inode *ni, struct mft_inode *mi);
-- 
2.43.0


--4fboor3uxgqjpnzm
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--4fboor3uxgqjpnzm
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--4fboor3uxgqjpnzm--

