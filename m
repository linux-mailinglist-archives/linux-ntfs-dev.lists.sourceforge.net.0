Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 772E14FA799
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 14:21:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndA5e-0001JG-Tj; Sat, 09 Apr 2022 12:21:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nYvHR-0002qv-7v
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Mar 2022 19:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MvexgkXKU4iAnrnVpFSK0y7PWvfl/2+Yu1E83Oh6AQI=; b=kasMXiKBHdELRFeCqkNqR0M/Dp
 WvV5ZdrHJqSdRHMq1hFaDrTs2yDoJWTaFVBM56BCBYlvJvfUtRHVyYg1oHeK5tLnlrgqOJqdr948x
 iO/I+HpIBh+kgruLEzkD6c/jcm6l6+cdBVDXgsulh2zwaBVGZsjeag3cg6WYiB2VNAsw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MvexgkXKU4iAnrnVpFSK0y7PWvfl/2+Yu1E83Oh6AQI=; b=RJGBMzdDp/T24UrW3SMLw+s+9A
 n+fdyb+EZcd/cbx0V7KnyMu8wNEv4Cb2hvLnjUHt25n/6Q/CZbsrXrODaabqhJlLu2yANhOnzblRN
 TWwDKRpxOu4WzpFIM1d/9ybnlE9K0yxBwqjKHz0xxbEEuFx0Eq/t+uFGTSoM8AzC+yAw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYvHM-0006wr-Mq
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Mar 2022 19:43:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4DE9C612BE;
 Mon, 28 Mar 2022 19:43:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38CD8C3410F;
 Mon, 28 Mar 2022 19:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648496627;
 bh=ingGZxMaEc9r5alfLYbLed9tPRonczPlahQ4UPFgo+s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uj2udP9xv6uTDYJPEi68+kRBALKcKW+hWXGTEw2tdvp3YOBBrlk4qXtGaatsKVFjE
 vcPm68q+rrPDN7vgMmoQRMJeXknUCUam56FYJk/mFu7Mjfg9nSBTigjbRcp4NZTTV3
 yXVZoF5OSfdeq2K3C03B/YQ/tUiQvvg/lNQOtsHkI7ud/6VmBjf4wNx/ELAk5P8UmL
 PXZFSiSWyDIpAI97j4n/IxwulDnGcIdTZYftt1TyNFYwjGinpvJ7kfkXY2h7xaLunK
 +gfVLCdvPc/hh7YD3gNRP7JwDQqvVkbKAgdiKZjfVmRSnkoB+t3P6csIEEIoRAsFxh
 I11AmU0xlUycQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 28 Mar 2022 15:43:43 -0400
Message-Id: <20220328194343.1586624-2-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328194343.1586624-1-sashal@kernel.org>
References: <20220328194343.1586624-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Dongliang Mu <mudongliangabcd@gmail.com> [ Upstream
 commit 714fbf2647b1a33d914edd695d4da92029c7e7c0 ] ntfs_read_inode_mount
 invokes
 ntfs_malloc_nofs with zero allocation size. It triggers one BUG in the
 __ntfs_malloc function. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nYvHM-0006wr-Mq
X-Mailman-Approved-At: Sat, 09 Apr 2022 12:21:14 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 4.14 2/2] ntfs: add sanity check on
 allocation size
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
Cc: Sasha Levin <sashal@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 Dongliang Mu <mudongliangabcd@gmail.com>,
 syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Dongliang Mu <mudongliangabcd@gmail.com>

[ Upstream commit 714fbf2647b1a33d914edd695d4da92029c7e7c0 ]

ntfs_read_inode_mount invokes ntfs_malloc_nofs with zero allocation
size.  It triggers one BUG in the __ntfs_malloc function.

Fix this by adding sanity check on ni->attr_list_size.

Link: https://lkml.kernel.org/r/20220120094914.47736-1-dzm91@hust.edu.cn
Reported-by: syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
Acked-by: Anton Altaparmakov <anton@tuxera.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ntfs/inode.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 8cd134750ebb..4150b3633f77 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1915,6 +1915,10 @@ int ntfs_read_inode_mount(struct inode *vi)
 		}
 		/* Now allocate memory for the attribute list. */
 		ni->attr_list_size = (u32)ntfs_attr_size(a);
+		if (!ni->attr_list_size) {
+			ntfs_error(sb, "Attr_list_size is zero");
+			goto put_err_out;
+		}
 		ni->attr_list = ntfs_malloc_nofs(ni->attr_list_size);
 		if (!ni->attr_list) {
 			ntfs_error(sb, "Not enough memory to allocate buffer "
-- 
2.34.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
