Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B90F28895AF
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 09:35:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rofo2-0005Vx-5A;
	Mon, 25 Mar 2024 08:35:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rofo0-0005Vp-8Q
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 08:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZIz/5aoRYFWU3x+ktOs9dkIT3xbLzAP6+w0hFv3qTGw=; b=NS4Gx9Hl7lm1a+n4qRwnCUEmtr
 iFdTTqLA6floDe1ViwSLXUhLoQZa1A7NNOe//AIr/0OxQrZaE5GxeysghwsQ3IHtuwM6bUAGPfL7O
 tyO4nnSSSqg2DnPx9k7DYuCw6tUuy13Hku3/3sN5XKE0yI/vQpkslGO7ep/Uh9SOIGJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZIz/5aoRYFWU3x+ktOs9dkIT3xbLzAP6+w0hFv3qTGw=; b=bj8Ah+69EXiBZmrVgT7z3GPf3E
 P1GmFAV2DxBKWcBTNCN2jZKMuqVxMazY0ZP1/u5LxBM2NNLEPFSj5xgUwUjkXcJAxQStzeYS0j7pW
 SJySSWwObQ+VgHFqYeW38Rv+94f3jiRfQLOTTw94uexiymzx5Hgs3l3T8S0RMrxrgrYo=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rofnz-0005AX-1Y for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 08:35:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8D01BCE0FF4;
 Mon, 25 Mar 2024 08:35:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6BFC433C7;
 Mon, 25 Mar 2024 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711355735;
 bh=y59cd9WcJC4gK4HZjgpG4z/0FSdH1Dwax+LQaSel8+g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CDn+FI1STZ/g3WJA/OZUrjJ7wdIdu72tXUh5B0Dx1Er6R8Wbwr4ITxNyZM534YU6C
 itMiYTHWJgXoYwkx2HI6UD3BS4XwHOsJPcG+BnRakKwmgFD+4bebjE7JuamFB2UuH/
 75DczSOiRbqcnhiOvDElqXe7pPy3MpnDM4UkZTVjGd6+KmyFPXjIzXYlRKKCBidHZH
 Ghl583dYq+1e3jwOlk8kADZPl6ATk4OCH/zzxe18sV7UQLac3oZsVe1xwD8yenf7x1
 Ika9B1qqhdt3rUKK7TD9Zmy6Kw9ujcSdvZwdnLCPlGS6dD7q6gT+AUy46vRHK87/qU
 7UPoVwR2xEr1A==
From: Christian Brauner <brauner@kernel.org>
To: Johan Hovold <johan@kernel.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>,
 ntfs3@lists.linux.dev
Date: Mon, 25 Mar 2024 09:34:36 +0100
Message-ID: <20240325-hinkriegen-zuziehen-d7e2c490427a@brauner>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2852; i=brauner@kernel.org;
 h=from:subject:message-id; bh=ASW+F5BIMFmdhYm8IeYvSAIs5mRF1/bUC6XpI1O2tso=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaQxmst5B8oFGGdO+sjXXHt28ov6LXerHsw2+BB5XSHl7
 fF890DmjlIWBjEuBlkxRRaHdpNwueU8FZuNMjVg5rAygQxh4OIUgIlodzEyfNdsc91zcd16n1ab
 jcxV3v4S8+JrLI8xKrtdZbpeXvGSn5HhxfX9Di/OeNzgPFpT8WaV9guR/7NmCqRHv8xIc7B2tDP
 lAQA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Johan Hovold reported that removing the legacy ntfs driver
 broke boot for him since his fstab uses the legacy ntfs driver to access
 firmware from the original Windows partition. Use ntfs3 as an alias for legacy
 ntfs if CONFIG_NTFS_FS is selected. This is similar to how ext3 is treated.
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rofnz-0005AX-1Y
Subject: [Linux-ntfs-dev] [PATCH 1/2] ntfs3: serve as alias for the legacy
 ntfs driver
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
 Christian Brauner <brauner@kernel.org>, regressions@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Johan Hovold reported that removing the legacy ntfs driver broke boot
for him since his fstab uses the legacy ntfs driver to access firmware
from the original Windows partition.

Use ntfs3 as an alias for legacy ntfs if CONFIG_NTFS_FS is selected.
This is similar to how ext3 is treated.

Fixes: 7ffa8f3d3023 ("fs: Remove NTFS classic")
Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: Johan Hovold <johan@kernel.org>
Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
Signed-off-by: Christian Brauner <brauner@kernel.org>
---
Hey,

This is so far compile tested. It would be great if someone could test
this. @Johan?

Thanks!
Christian
---
 fs/ntfs3/Kconfig |  9 +++++++++
 fs/ntfs3/super.c | 31 +++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/fs/ntfs3/Kconfig b/fs/ntfs3/Kconfig
index cdfdf51e55d7..7bc31d69f680 100644
--- a/fs/ntfs3/Kconfig
+++ b/fs/ntfs3/Kconfig
@@ -46,3 +46,12 @@ config NTFS3_FS_POSIX_ACL
 	  NOTE: this is linux only feature. Windows will ignore these ACLs.
 
 	  If you don't know what Access Control Lists are, say N.
+
+config NTFS_FS
+	tristate "NTFS file system support"
+	select NTFS3_FS
+	select BUFFER_HEAD
+	select NLS
+	help
+	  This config option is here only for backward compatibility. NTFS
+	  filesystem is now handled by the NTFS3 driver.
diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
index 9df7c20d066f..8d2e51bae2cb 100644
--- a/fs/ntfs3/super.c
+++ b/fs/ntfs3/super.c
@@ -1798,6 +1798,35 @@ static struct file_system_type ntfs_fs_type = {
 	.kill_sb		= ntfs3_kill_sb,
 	.fs_flags		= FS_REQUIRES_DEV | FS_ALLOW_IDMAP,
 };
+
+#if IS_ENABLED(CONFIG_NTFS_FS)
+static struct file_system_type ntfs_legacy_fs_type = {
+	.owner			= THIS_MODULE,
+	.name			= "ntfs",
+	.init_fs_context	= ntfs_init_fs_context,
+	.parameters		= ntfs_fs_parameters,
+	.kill_sb		= ntfs3_kill_sb,
+	.fs_flags		= FS_REQUIRES_DEV | FS_ALLOW_IDMAP,
+};
+MODULE_ALIAS_FS("ntfs");
+
+static inline void register_as_ntfs_legacy(void)
+{
+	int err = register_filesystem(&ntfs_legacy_fs_type);
+	if (err)
+		pr_warn("ntfs3: Failed to register legacy ntfs filesystem driver: %d\n", err);
+}
+
+static inline void unregister_as_ntfs_legacy(void)
+{
+	unregister_filesystem(&ntfs_legacy_fs_type);
+}
+#else
+static inline void register_as_ntfs_legacy(void) {}
+static inline void unregister_as_ntfs_legacy(void) {}
+#endif
+
+
 // clang-format on
 
 static int __init init_ntfs_fs(void)
@@ -1832,6 +1861,7 @@ static int __init init_ntfs_fs(void)
 		goto out1;
 	}
 
+	register_as_ntfs_legacy();
 	err = register_filesystem(&ntfs_fs_type);
 	if (err)
 		goto out;
@@ -1849,6 +1879,7 @@ static void __exit exit_ntfs_fs(void)
 	rcu_barrier();
 	kmem_cache_destroy(ntfs_inode_cachep);
 	unregister_filesystem(&ntfs_fs_type);
+	unregister_as_ntfs_legacy();
 	ntfs3_exit_bitmap();
 
 #ifdef CONFIG_PROC_FS
-- 
2.43.0



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
