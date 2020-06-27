Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A955820C45D
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Jun 2020 23:40:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jpIYl-0003B1-PO; Sat, 27 Jun 2020 21:40:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <luca.stefani.ge1@gmail.com>) id 1jpG6F-00045U-Sa
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Jun 2020 19:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IgGXNQ7fWTy9/DHdEJ1WMr+hd6n/xM/ksZHMNn+z7XQ=; b=MdPP3JdALK10wefoUuJvJ2nKC7
 o24mgaxiBszFEqVrnYDEtrveWF1Vv/WwkQVU8a4nip30IUTXexlHHKqf14ePh3yZilvfX85DbwXmB
 ckhciU6DNcWnK42yW9oG8bWxGY+YG0J1i1C6jZLuP9D/xT9OZmS+qnPTh4f+mjZcZQjc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IgGXNQ7fWTy9/DHdEJ1WMr+hd6n/xM/ksZHMNn+z7XQ=; b=L
 cUe7++n3bsFm3yO8+JXE1s8g5R3tARmerDNyOS7/fyJNB6H9oOZN56L3M0P3gJMWSlgs28jBJma8y
 2R6e+WMC9bYIUvAU+5ArT5ePX50U2TpWSrmoczO6INZzOo9qXHjzT9pg/PL9igYslZwcKjrHjyDzO
 pt4sTkgh+waKN/TE=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jpG6E-00HUgA-Bu
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Jun 2020 19:02:51 +0000
Received: by mail-wr1-f65.google.com with SMTP id f18so4526219wrs.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Jun 2020 12:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IgGXNQ7fWTy9/DHdEJ1WMr+hd6n/xM/ksZHMNn+z7XQ=;
 b=q3sloPs0DMwzvAslxctJXuCMG3rsK1P+QZasE5kgIlaLX/IddKEooCBqRprsAotaVg
 b8D8W7kmayqwM/AAIscGl5Rgdjq7isMJjHs8Xy79Ao9m5XxyX+Aj3d2Ufxsjb6bI+C2/
 NzAHrajq2H5EgyqdIf5pN17NA6kMKsaF1jNLGB8tLLPEucYKX0qriBEFI4VVcuQWavRV
 4Wp6V3IffUh9Io2/L7eKvzwMMrJxARl5MLkd3hLuakFGhmR3uTxr45+CTscqIvJHUzuC
 do91MmUV+RjOtFVwitOj/Sm0LyCGVNrOt/kKyp+o01ZUPLNdPYFWCgifB4kbcUxyaU1b
 9wfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IgGXNQ7fWTy9/DHdEJ1WMr+hd6n/xM/ksZHMNn+z7XQ=;
 b=o3Pwe1wQn+711jhaUSVv14f9jGkRUpAMBmEcQWvPXMsLtMV6ZNOxAHgqcVcAViX2TO
 FkZwBxNpU4HEfUwZsSdDUfHSSe9+HbFjBD68Xp89rLtY/bpYGSgcJkSA9m52QITad4gZ
 VtpBQNZcffmgwYc+KZg3vwbJhfrOCLcGFINrssINHTbg13oD4877za5qw1ftiWVlfp0a
 VRLMjqZgI3On4eoPT7ctml0mJxNyacypkCXAU+LtdwBDFGBp8KB76WLtwMpDlnk/HDqR
 0PdRrJXW684hRdgNGEdo6wP/0MuTsJa6MHM3elBIf7V4VN7V5fWC9QtAFrcNOByI+f9O
 dCZg==
X-Gm-Message-State: AOAM531THW6eXrVNv4DMnTpchh+WzZsM0WwZPjkszsQpNfUFt3oowCYh
 58BXvAuJt/Ntu1fPC9Rbnb0=
X-Google-Smtp-Source: ABdhPJzIeqqrCjdZc0F4SYkYdrCokw2wJOS6LfeIGhc1Cs+RbWyEeXbIuOB72kd5RUCCkOmOQSpFyQ==
X-Received: by 2002:a5d:6987:: with SMTP id g7mr9609023wru.79.1593284559063;
 Sat, 27 Jun 2020 12:02:39 -0700 (PDT)
Received: from luca020400-fedora.lan ([2001:b07:5d33:19f:fa9d:3c18:5a22:5026])
 by smtp.googlemail.com with ESMTPSA id
 h2sm28644664wrw.62.2020.06.27.12.02.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 12:02:38 -0700 (PDT)
From: Luca Stefani <luca.stefani.ge1@gmail.com>
To: 
Date: Sat, 27 Jun 2020 21:02:30 +0200
Message-Id: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (luca.stefani.ge1[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (luca.stefani.ge1[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jpG6E-00HUgA-Bu
X-Mailman-Approved-At: Sat, 27 Jun 2020 21:40:26 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Fix ntfs_test_inode and
 ntfs_init_locked_inode function type
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
Cc: freak07 <michalechner92@googlemail.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Luca Stefani <luca.stefani.ge1@gmail.com>, clang-built-linux@googlegroups.com,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

If the kernel is built with CFI we hit a __cfi_check_fail
while mounting a partition

Call trace:
__cfi_check_fail+0x1c/0x24
name_to_dev_t+0x0/0x404
iget5_locked+0x594/0x5e8
ntfs_fill_super+0xbfc/0x43ec
mount_bdev+0x30c/0x3cc
ntfs_mount+0x18/0x24
mount_fs+0x1b0/0x380
vfs_kern_mount+0x90/0x398
do_mount+0x5d8/0x1a10
SyS_mount+0x108/0x144
el0_svc_naked+0x34/0x38

Fixing iget5_locked and ilookup5 callers seems enough

Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
Tested-by: freak07 <michalechner92@googlemail.com>
---
 fs/ntfs/dir.c   |  2 +-
 fs/ntfs/inode.c | 23 ++++++++++++-----------
 fs/ntfs/inode.h |  4 +---
 fs/ntfs/mft.c   |  4 ++--
 4 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index 3c4811469ae8..e278bfc5ee7f 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
 	na.type = AT_BITMAP;
 	na.name = I30;
 	na.name_len = 4;
-	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
+	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
 	if (bmp_vi) {
  		write_inode_now(bmp_vi, !datasync);
 		iput(bmp_vi);
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index d4359a1df3d5..a5d3bebe7a85 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -30,7 +30,7 @@
 /**
  * ntfs_test_inode - compare two (possibly fake) inodes for equality
  * @vi:		vfs inode which to test
- * @na:		ntfs attribute which is being tested with
+ * @data:		data which is being tested with
  *
  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
  * inode @vi for equality with the ntfs attribute @na.
@@ -43,8 +43,9 @@
  * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
  * allowed to sleep.
  */
-int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
+int ntfs_test_inode(struct inode *vi, void *data)
 {
+	ntfs_attr *na = (ntfs_attr *)data;
 	ntfs_inode *ni;
 
 	if (vi->i_ino != na->mft_no)
@@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
 /**
  * ntfs_init_locked_inode - initialize an inode
  * @vi:		vfs inode to initialize
- * @na:		ntfs attribute which to initialize @vi to
+ * @data:		data which to initialize @vi to
  *
  * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
  * order to enable ntfs_test_inode() to do its work.
@@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
  * NOTE: This function runs with the inode->i_lock spin lock held so it is not
  * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
  */
-static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
+static int ntfs_init_locked_inode(struct inode *vi, void *data)
 {
+	ntfs_attr *na = (ntfs_attr *)data;
 	ntfs_inode *ni = NTFS_I(vi);
 
 	vi->i_ino = na->mft_no;
@@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
 	return 0;
 }
 
-typedef int (*set_t)(struct inode *, void *);
 static int ntfs_read_locked_inode(struct inode *vi);
 static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
 static int ntfs_read_locked_index_inode(struct inode *base_vi,
@@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
 	na.name = NULL;
 	na.name_len = 0;
 
-	vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
-			(set_t)ntfs_init_locked_inode, &na);
+	vi = iget5_locked(sb, mft_no, ntfs_test_inode,
+			ntfs_init_locked_inode, &na);
 	if (unlikely(!vi))
 		return ERR_PTR(-ENOMEM);
 
@@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
 	na.name = name;
 	na.name_len = name_len;
 
-	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
-			(set_t)ntfs_init_locked_inode, &na);
+	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
+			ntfs_init_locked_inode, &na);
 	if (unlikely(!vi))
 		return ERR_PTR(-ENOMEM);
 
@@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
 	na.name = name;
 	na.name_len = name_len;
 
-	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
-			(set_t)ntfs_init_locked_inode, &na);
+	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
+			ntfs_init_locked_inode, &na);
 	if (unlikely(!vi))
 		return ERR_PTR(-ENOMEM);
 
diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
index 98e670fbdd31..363e4e820673 100644
--- a/fs/ntfs/inode.h
+++ b/fs/ntfs/inode.h
@@ -253,9 +253,7 @@ typedef struct {
 	ATTR_TYPE type;
 } ntfs_attr;
 
-typedef int (*test_t)(struct inode *, void *);
-
-extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
+extern int ntfs_test_inode(struct inode *vi, void *data);
 
 extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
 extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index fbb9f1bc623d..0d62cd5bb7f8 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
 		 * dirty code path of the inode dirty code path when writing
 		 * $MFT occurs.
 		 */
-		vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
+		vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
 	}
 	if (vi) {
 		ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
@@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
 		vi = igrab(mft_vi);
 		BUG_ON(vi != mft_vi);
 	} else
-		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
+		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
 				&na);
 	if (!vi) {
 		/*
-- 
2.26.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
