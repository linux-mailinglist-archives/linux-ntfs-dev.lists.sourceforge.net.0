Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 848F64B384B
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 12 Feb 2022 23:01:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nJ0SS-0005rm-II; Sat, 12 Feb 2022 22:01:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hongnan.li@linux.alibaba.com>) id 1nIMtf-0001gM-Ul
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Feb 2022 03:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zR2AlpCQJQXHW0bQKxJ1GHa2RktjAokqqsPuyOURXGQ=; b=dbpek3pf1t50gqBEnJfwqrHoud
 HblxplQH7tNKf7qu2qxS7jSU7bf+uieIarqm/tkinH15PZZJ+ezFO6NOdEqbFotS6Vus8kGWcDCO7
 zY2HvVB7EwdVFU12pvEW/FWY0hjVSyEowif0/aMc2YUy9HVD+2HxGUAz+PmG/C94vgEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zR2AlpCQJQXHW0bQKxJ1GHa2RktjAokqqsPuyOURXGQ=; b=X
 5xnb0Wsb+djgQ6g9S+tnAVaOt6aKx++SxdKStwP3uYlongrlH68u7SL15Uc/TCbRQDHtB/N9yEwSF
 4jkGht6v/c1wSZXX5Khk2/3fZC3sdtOH8wtxotrCuXo3VU/5bW/KkgFGFLsWjGF6IVTnhwffojC/r
 f2BKBGK65tNfPOqM=;
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nIMta-00EkOX-SH
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Feb 2022 03:46:58 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R651e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400; MF=hongnan.li@linux.alibaba.com;
 NM=1; PH=DS; RN=2; SR=0; TI=SMTPD_---0V46vhdZ_1644548776; 
Received: from localhost(mailfrom:hongnan.li@linux.alibaba.com
 fp:SMTPD_---0V46vhdZ_1644548776) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 11 Feb 2022 11:06:16 +0800
From: Hongnan Li <hongnan.li@linux.alibaba.com>
To: linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 11 Feb 2022 11:06:16 +0800
Message-Id: <20220211030616.100521-1-hongnan.li@linux.alibaba.com>
X-Mailer: git-send-email 2.19.1.6.gb485710b
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: hongnanli <hongnan.li@linux.alibaba.com> inode->i_mutex
 has been replaced with inode->i_rwsem long ago. Fix comments still mentioning
 i_mutex. Signed-off-by: hongnanli <hongnan.li@linux.alibaba.com> ---
 fs/ntfs/attrib.c
 | 4 ++-- fs/ntfs/dir.c | 8 ++++---- fs/ntfs/file.c | 10 +++++-----
 fs/ntfs/index.c | 6 +++--- fs/ntfs/inode.c | 4 ++-- fs/n [...] 
 Content analysis details:   (-8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1nIMta-00EkOX-SH
X-Mailman-Approved-At: Sat, 12 Feb 2022 22:01:28 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: fix comments mentioning i_mutex
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
Cc: anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: hongnanli <hongnan.li@linux.alibaba.com>

inode->i_mutex has been replaced with inode->i_rwsem long ago. Fix
comments still mentioning i_mutex.

Signed-off-by: hongnanli <hongnan.li@linux.alibaba.com>
---
 fs/ntfs/attrib.c |  4 ++--
 fs/ntfs/dir.c    |  8 ++++----
 fs/ntfs/file.c   | 10 +++++-----
 fs/ntfs/index.c  |  6 +++---
 fs/ntfs/inode.c  |  4 ++--
 fs/ntfs/namei.c  |  4 ++--
 6 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 2911c04a33e0..fc2cb551265b 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -1516,7 +1516,7 @@ int ntfs_resident_attr_value_resize(MFT_RECORD *m, ATTR_RECORD *a,
  * NOTE to self: No changes in the attribute list are required to move from
  *		 a resident to a non-resident attribute.
  *
- * Locking: - The caller must hold i_mutex on the inode.
+ * Locking: - The caller must hold i_rwsem on the inode.
  */
 int ntfs_attr_make_non_resident(ntfs_inode *ni, const u32 data_size)
 {
@@ -1721,7 +1721,7 @@ int ntfs_attr_make_non_resident(ntfs_inode *ni, const u32 data_size)
 	/*
 	 * This needs to be last since the address space operations ->readpage
 	 * and ->writepage can run concurrently with us as they are not
-	 * serialized on i_mutex.  Note, we are not allowed to fail once we flip
+	 * serialized on i_rwsem.  Note, we are not allowed to fail once we flip
 	 * this switch, which is another reason to do this last.
 	 */
 	NInoSetNonResident(ni);
diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index cd96083a12c8..26ac22528bd8 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -56,7 +56,7 @@ ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
  * work but we don't care for how quickly one can access them. This also fixes
  * the dcache aliasing issues.
  *
- * Locking:  - Caller must hold i_mutex on the directory.
+ * Locking:  - Caller must hold i_rwsem on the directory.
  *	     - Each page cache page in the index allocation mapping must be
  *	       locked whilst being accessed otherwise we may find a corrupt
  *	       page due to it being under ->writepage at the moment which
@@ -1071,11 +1071,11 @@ static inline int ntfs_filldir(ntfs_volume *vol,
  * While this will return the names in random order this doesn't matter for
  * ->readdir but OTOH results in a faster ->readdir.
  *
- * VFS calls ->readdir without BKL but with i_mutex held. This protects the VFS
+ * VFS calls ->readdir without BKL but with i_rwsem held. This protects the VFS
  * parts (e.g. ->f_pos and ->i_size, and it also protects against directory
  * modifications).
  *
- * Locking:  - Caller must hold i_mutex on the directory.
+ * Locking:  - Caller must hold i_rwsem on the directory.
  *	     - Each page cache page in the index allocation mapping must be
  *	       locked whilst being accessed otherwise we may find a corrupt
  *	       page due to it being under ->writepage at the moment which
@@ -1477,7 +1477,7 @@ static int ntfs_dir_open(struct inode *vi, struct file *filp)
  * Note: In the past @filp could be NULL so we ignore it as we don't need it
  * anyway.
  *
- * Locking: Caller must hold i_mutex on the inode.
+ * Locking: Caller must hold i_rwsem on the inode.
  *
  * TODO: We should probably also write all attribute/index inodes associated
  * with this inode but since we have no simple way of getting to them we ignore
diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index 2ae25e48a41a..82cba5c967fe 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -90,7 +90,7 @@ static int ntfs_file_open(struct inode *vi, struct file *filp)
  * this is the case, the necessary zeroing will also have happened and that all
  * metadata is self-consistent.
  *
- * Locking: i_mutex on the vfs inode corrseponsind to the ntfs inode @ni must be
+ * Locking: i_rwsem on the vfs inode corrseponsind to the ntfs inode @ni must be
  *	    held by the caller.
  */
 static int ntfs_attr_extend_initialized(ntfs_inode *ni, const s64 new_init_size)
@@ -458,7 +458,7 @@ static ssize_t ntfs_prepare_file_for_write(struct kiocb *iocb,
 	if (pos > ll) {
 		/*
 		 * Wait for ongoing direct i/o to complete before proceeding.
-		 * New direct i/o cannot start as we hold i_mutex.
+		 * New direct i/o cannot start as we hold i_rwsem.
 		 */
 		inode_dio_wait(vi);
 		err = ntfs_attr_extend_initialized(ni, pos);
@@ -548,7 +548,7 @@ static inline int ntfs_submit_bh_for_read(struct buffer_head *bh)
  * @bytes:	number of bytes to be written
  *
  * This is called for non-resident attributes from ntfs_file_buffered_write()
- * with i_mutex held on the inode (@pages[0]->mapping->host).  There are
+ * with i_rwsem held on the inode (@pages[0]->mapping->host).  There are
  * @nr_pages pages in @pages which are locked but not kmap()ped.  The source
  * data has not yet been copied into the @pages.
  * 
@@ -1505,7 +1505,7 @@ static inline int ntfs_commit_pages_after_non_resident_write(
  * @pos:	byte position in file at which the write begins
  * @bytes:	number of bytes to be written
  *
- * This is called from ntfs_file_buffered_write() with i_mutex held on the inode
+ * This is called from ntfs_file_buffered_write() with i_rwsem held on the inode
  * (@pages[0]->mapping->host).  There are @nr_pages pages in @pages which are
  * locked but not kmap()ped.  The source data has already been copied into the
  * @page.  ntfs_prepare_pages_for_non_resident_write() has been called before
@@ -1946,7 +1946,7 @@ static ssize_t ntfs_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
  * Also, if @datasync is true, we do not wait on the inode to be written out
  * but we always wait on the page cache pages to be written out.
  *
- * Locking: Caller must hold i_mutex on the inode.
+ * Locking: Caller must hold i_rwsem on the inode.
  *
  * TODO: We should probably also write all attribute/index inodes associated
  * with this inode but since we have no simple way of getting to them we ignore
diff --git a/fs/ntfs/index.c b/fs/ntfs/index.c
index d46c2c03a032..170eec12d83e 100644
--- a/fs/ntfs/index.c
+++ b/fs/ntfs/index.c
@@ -20,7 +20,7 @@
  * Allocate a new index context, initialize it with @idx_ni and return it.
  * Return NULL if allocation failed.
  *
- * Locking:  Caller must hold i_mutex on the index inode.
+ * Locking:  Caller must hold i_rwsem on the index inode.
  */
 ntfs_index_context *ntfs_index_ctx_get(ntfs_inode *idx_ni)
 {
@@ -38,7 +38,7 @@ ntfs_index_context *ntfs_index_ctx_get(ntfs_inode *idx_ni)
  *
  * Release the index context @ictx, releasing all associated resources.
  *
- * Locking:  Caller must hold i_mutex on the index inode.
+ * Locking:  Caller must hold i_rwsem on the index inode.
  */
 void ntfs_index_ctx_put(ntfs_index_context *ictx)
 {
@@ -94,7 +94,7 @@ void ntfs_index_ctx_put(ntfs_index_context *ictx)
  * or ntfs_index_entry_write() before the call to ntfs_index_ctx_put() to
  * ensure that the changes are written to disk.
  *
- * Locking:  - Caller must hold i_mutex on the index inode.
+ * Locking:  - Caller must hold i_rwsem on the index inode.
  *	     - Each page cache page in the index allocation mapping must be
  *	       locked whilst being accessed otherwise we may find a corrupt
  *	       page due to it being under ->writepage at the moment which
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 4474adb393ca..f1f76c7f2984 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -2339,7 +2339,7 @@ static const char *es = "  Leaving inconsistent metadata.  Unmount and run "
  *
  * Returns 0 on success or -errno on error.
  *
- * Called with ->i_mutex held.
+ * Called with ->i_rwsem held.
  */
 int ntfs_truncate(struct inode *vi)
 {
@@ -2865,7 +2865,7 @@ void ntfs_truncate_vfs(struct inode *vi) {
  * We also abort all changes of user, group, and mode as we do not implement
  * the NTFS ACLs yet.
  *
- * Called with ->i_mutex held.
+ * Called with ->i_rwsem held.
  */
 int ntfs_setattr(struct user_namespace *mnt_userns, struct dentry *dentry,
 		 struct iattr *attr)
diff --git a/fs/ntfs/namei.c b/fs/ntfs/namei.c
index 4e6a44bc654c..9e66805f3640 100644
--- a/fs/ntfs/namei.c
+++ b/fs/ntfs/namei.c
@@ -84,7 +84,7 @@
  *    name. We then convert the name to the current NLS code page, and proceed
  *    searching for a dentry with this name, etc, as in case 2), above.
  *
- * Locking: Caller must hold i_mutex on the directory.
+ * Locking: Caller must hold i_rwsem on the directory.
  */
 static struct dentry *ntfs_lookup(struct inode *dir_ino, struct dentry *dent,
 		unsigned int flags)
@@ -278,7 +278,7 @@ const struct inode_operations ntfs_dir_inode_ops = {
  * The code is based on the ext3 ->get_parent() implementation found in
  * fs/ext3/namei.c::ext3_get_parent().
  *
- * Note: ntfs_get_parent() is called with @d_inode(child_dent)->i_mutex down.
+ * Note: ntfs_get_parent() is called with @d_inode(child_dent)->i_rwsem down.
  *
  * Return the dentry of the parent directory on success or the error code on
  * error (IS_ERR() is true).
-- 
2.19.1.6.gb485710b



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
