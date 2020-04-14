Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA401A81DA
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Apr 2020 17:17:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jONJO-0004ad-FV; Tue, 14 Apr 2020 15:17:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <luca.stefani.ge1@gmail.com>) id 1jONFA-0004Ms-Q1
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 14 Apr 2020 15:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rxT3vou5Ng+mQOZHM3dbFCXV6meSuH1elQDi0zPfdzI=; b=SbTGeNGXj1ZVKW5Hvl/Jc+/phs
 i8aK79MVE1Hfr1a3RxgCab1tXNlbx7unas+KFLkD5a3pZtQaAyiXqTLzATECs3CHWcUsUBjOmm6s6
 CV1NuqY4Az3reGo+cQN+7s7f6IJySPXyPx00dzSUg6kWlIPyAszXg3sbM5wFdapz9i9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rxT3vou5Ng+mQOZHM3dbFCXV6meSuH1elQDi0zPfdzI=; b=YZGW7nevve4BwtzjCY3/l6NeVf
 1BFKLH2yGe/6tjBePhn3wfE80bymBscnXwdBPQ+pSS4W2ppAD3WricpjFv45B5wTIDw1qvhMiTKpK
 hv14138YHQT9nGe9ANlXIB6MmKpsJ2rOqTeP4ZODerozGPWxHlZ1B1HGb1AJHYSdoMg8=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jONF9-000s0I-47
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 14 Apr 2020 15:12:56 +0000
Received: by mail-wr1-f66.google.com with SMTP id k1so7526165wrx.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 14 Apr 2020 08:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rxT3vou5Ng+mQOZHM3dbFCXV6meSuH1elQDi0zPfdzI=;
 b=d0lbYpoHGJvCsc+g8nt+4TtD3NySeZvbdlGW1KKvb6a20nuvghJPaqzeBDra+EjoI/
 dH4/9TSUOa3OdEaJb+wI8zRamhlIJjfO3l2FmGsRGjcTkVlSZ1cZvFJUItmYMPk1Ujr5
 yFPykgC0yt8FOSIW35+fzjqSOcvq/CDRitl7+gbJBDu1/d174wVg38jGrsifgLMafxqp
 Eda6AlxwCgiYpZqaYXF25odui3kZ6HnsdSLmHFCJGhcRRA8RO/UCBpq4QpnNHp7DuuM5
 hVDpxTdMp/wJrcRgFCXfSAfopEiKvSa2+jEPam4H7FcU9qgoJz2G58KR59LckaLnfTou
 chuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rxT3vou5Ng+mQOZHM3dbFCXV6meSuH1elQDi0zPfdzI=;
 b=E+uonoZDX/a4UE5jsA8NYbvpkmMXoXeNGEmqMMw5LLyOOMFD2K1zXXkjpyzusAyzHg
 N12Hd7EU1ZJIqCYOc4nj84L92rxYzhSbvZ2p/Cc8YxNlSazd4xbF3H6hbR7Txpq1oDYl
 qDSwryGiGPz1o4fBlfSs4V2np13MO5+i+UHjZl3OUDSVfamBpV+dVf/0t6b5pjx2aNA1
 BvtsVP9KI3eTpbMyvpaUYA3YfrcvrNOAOJgOaKwtYjw/plj30h7Xi/gvgoDseRK3WTop
 CPcVor0XSpUQQ91Ero2e/gbMY/yfE5W9ubIQ3dIzNf9GlqPaLdRPT0/HZ8tFihKUlkI6
 s78w==
X-Gm-Message-State: AGi0PuYUHMzSRWHk7dfnnmpgne9zLAX6WhkHTP0yGAfZvitWJl5HaSvb
 67p5KI8ck8aRI8Q1Edy2p78=
X-Google-Smtp-Source: APiQypK3G3FyKLKbfD9Pms5jxsBQE/WA38s7A6vwbkv/il5B79vmC9oQSkYQLlfH5eFcm/iHa9xaBA==
X-Received: by 2002:adf:f1cd:: with SMTP id z13mr13562208wro.166.1586877168520; 
 Tue, 14 Apr 2020 08:12:48 -0700 (PDT)
Received: from luca020400-arch.lan ([2001:b07:5d33:19f:e2b6:8927:31e7:d93f])
 by smtp.googlemail.com with ESMTPSA id q4sm20622523wmj.1.2020.04.14.08.12.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:12:47 -0700 (PDT)
From: Luca Stefani <luca.stefani.ge1@gmail.com>
To: 
Date: Tue, 14 Apr 2020 17:12:46 +0200
Message-Id: <20200414151246.627197-1-luca.stefani.ge1@gmail.com>
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
 trust [209.85.221.66 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (luca.stefani.ge1[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jONF9-000s0I-47
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
 fs/ntfs/dir.c   |  2 +-
 fs/ntfs/inode.c | 23 ++++++++++++-----------
 fs/ntfs/inode.h |  4 +---
 fs/ntfs/mft.c   |  5 ++---
 4 files changed, 16 insertions(+), 18 deletions(-)

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
index d4359a1df3d5..34c919bc0dfe 100644
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
+	ntfs_attr *na = data;
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
+	ntfs_attr *na = data;
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
index 3aac5c917afe..1f1dbf4c41b5 100644
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
@@ -1019,8 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
 		vi = igrab(mft_vi);
 		BUG_ON(vi != mft_vi);
 	} else
-		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
-				&na);
+		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode, &na);
 	if (!vi) {
 		/*
 		 * The base inode is not in icache, write this extent mft
-- 
2.26.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
