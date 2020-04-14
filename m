Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 855491A81DB
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Apr 2020 17:17:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jONJO-0004aV-CS; Tue, 14 Apr 2020 15:17:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <luca.stefani.ge1@gmail.com>) id 1jON8V-00043v-4O
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 14 Apr 2020 15:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YCu8SmZlQQrvTwGnZEBEHTSKRA9LI4WZwU6LxVhIW2I=; b=jJuhv6HOuP9gNkARQi9688riaF
 r8eZJXz4tLGAvmDKjZxJ7SUlZ/XyzzbaNfLmPltj1EDzRCVRNCz74EfRFgenH7ANMxKxdqEWzzaT4
 1CNKm52LihDhFkUICZoQ/eXBxe43eL5dbokLaAFmpSC7aidJ3veEnw+VImVpM0uBNORw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YCu8SmZlQQrvTwGnZEBEHTSKRA9LI4WZwU6LxVhIW2I=; b=LMoiyq/qeK6KX27bMChIkpLxoq
 wJ4RxpUnT/lWUwhto0VtUFZiUJbzDpPIh9DfFI80AGZWQsQ5DZq7upjnhRjRj30Du0PNIBssh/zlr
 cBmHsWHTE0uHTlHJB3r9oItMNP4zsaJtCayZBJB6EuCxmvJejWn09c3hgH6HvA81IOZw=;
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jON8R-00EmRm-Uy
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 14 Apr 2020 15:06:03 +0000
Received: by mail-wm1-f67.google.com with SMTP id r26so14390130wmh.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 14 Apr 2020 08:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YCu8SmZlQQrvTwGnZEBEHTSKRA9LI4WZwU6LxVhIW2I=;
 b=hX+v2xexC+JxczsTf+vhb6u9QmWqqrDpHDHNVBzS6+xYJkukYlaXeHNMAIkS2Lk8/r
 sV23hdRSmBOCGVk4yRYPpVppXxgzy6FpFSZJyPfK+b35VJBPGr3zRCv4WDvhkLpbNy6N
 dbh8c6IsKzWMnkFeQd+BGgH/0RGhVr1spwyb2hvTSdBf66pfHJEHOhXRbQtqdLuPcC3i
 4ijIrOYZFMURcp85P1uMKJHCbW9BXJeiT8LhFf8IqSUDSBiEjcETq5nmHQUR0t016qRc
 4pHJIG1yn+pxEvPL0UuCPpSYVvvOuTK6f2xl0ImHvrS7viyq0ud4jCOPbMZTm91BJXnI
 UXeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YCu8SmZlQQrvTwGnZEBEHTSKRA9LI4WZwU6LxVhIW2I=;
 b=Lxc/YKbep5NZ/2M4inU2ae41S0/bkPQWhMBQ7gQZhiFU0fXLeIBZwKSyN2RJDbOJst
 nMlnKNmDid+wHR+DqJQ5Uzyy4Rk7lDCC5LuEUOSxY4qCwaaNplaq9Pj+/KWsgq8pEdHi
 rmpctW8tGxXFie1s1Cm8BqxbDa4x+dYhC1nrhTD1jPuaCz3EklEwpTvDgVO0cCNkDEo9
 mS6gBgtfBzgJriKZSKQwLgzzriGeYcKetmJaOPHYAwtIePDYlmATpfUec0Um70IrAqOE
 77lw9gdxYmV93FnGPbuy5Ea3W/yi+yg0FITsfJtG44yDO7O1xl/gCmWpp1V6trBjTYS8
 piMg==
X-Gm-Message-State: AGi0PuYX2XbNDGcKAa6g3xHIuGINQKQH8yoO0IgsCr5H6B9ZafioudW4
 SCNeNSJnPy/rmScm/ZEz6g8=
X-Google-Smtp-Source: APiQypJRDt+Uphs6DsJZlszr7x/jEoWuuTZWuj59pXPpC09iwHl/oRYuWEyFAltRc+tGFfgDiyYUGA==
X-Received: by 2002:a1c:e203:: with SMTP id z3mr307985wmg.71.1586876753226;
 Tue, 14 Apr 2020 08:05:53 -0700 (PDT)
Received: from luca020400-arch.lan ([2001:b07:5d33:19f:e2b6:8927:31e7:d93f])
 by smtp.googlemail.com with ESMTPSA id
 q143sm20078133wme.31.2020.04.14.08.05.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:05:52 -0700 (PDT)
From: Luca Stefani <luca.stefani.ge1@gmail.com>
To: 
Date: Tue, 14 Apr 2020 17:05:51 +0200
Message-Id: <20200414150551.625799-1-luca.stefani.ge1@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414145903.GA11720@infradead.org>
References: <20200414145903.GA11720@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlemail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (luca.stefani.ge1[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.67 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (luca.stefani.ge1[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jON8R-00EmRm-Uy
X-Mailman-Approved-At: Tue, 14 Apr 2020 15:17:15 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] ntfs: Fix ntfs_test_inode and
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 freak07 <michalechner92@googlemail.com>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>,
 Luca Stefani <luca.stefani.ge1@gmail.com>
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
Changes in v2:
* Addressed comments

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
index 3aac5c917afe..58234b42d68f 100644
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
2.26.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
