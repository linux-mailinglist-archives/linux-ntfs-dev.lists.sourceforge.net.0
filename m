Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F47541A393
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 28 Sep 2021 01:08:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mUzjN-0000cv-7r; Mon, 27 Sep 2021 23:08:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1mUrSg-0000Mq-Ci
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 27 Sep 2021 14:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ADWSPKEy+LIIpoLe1U0zxWcjoXt0BVOeeH5oLm2Cy6E=; b=Tju+Pg6v9dstJ+D0I5zxTQOMfd
 hxtIU+YxyFWqswj0FBItL74odK2zzmNtBGCmKHIEaGNpv+xJEgMl6IEGu9eSWfu2fyaoPLC1a6sY0
 Gy2RarByHHGMLj+exeRP7spN2AVXAkmxF9qiyqHePQuMaSh+ye5FVMPFYqCbjfx8AYcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ADWSPKEy+LIIpoLe1U0zxWcjoXt0BVOeeH5oLm2Cy6E=; b=Y
 hqecHC5HJtR6TOlOObIl+i2F72Xc8mNZ4drDYrN9YXHbkRz8c0sEzmRPCg11e5q7iXp0eJsPUOxGK
 iJT2hRWnOAw0Wc6kk5E81uWf6+731i/TSDROHopGMf/7/YM4lFnigoD+RSNcljUmJnMtPb94ZReah
 IYDJ7GJKGcfvApdg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mUrSb-007bWZ-0i
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 27 Sep 2021 14:18:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 606DF60EC0;
 Mon, 27 Sep 2021 14:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632752299;
 bh=i9UA8nXi2HqSCrUratcAGO/xQHmPOF8KqMc7/yV/Nx8=;
 h=From:To:Cc:Subject:Date:From;
 b=lWN3HznredrNPSogAcloFJ7fALhgrsrfvdpwQPrcfjP3LL7HV94IG4hnBe4G5onNY
 pxef/9s4A0ksQlGrAEZmSYaXktzR3KQVkfNtzotbI/SDVVX1ioTdoWjdtFqRPBicPI
 5MsUzK2V6VY5vjHb6BL9Kj+cC7z+fCq9skAYNHHArneYOg2S6+dfmUYvduMdUFVh1y
 pBGFHaT0HgG6K2REL1tlSz0oWLY4VC4vC9UqlYfz/jQZbb3TV3A0DYWUInFukB79iI
 9ShpZmeaCqCMOAJqfUl+Tbw255L+iIeCC932O+ErohqGLFKjIX5YCMyIm8crsC4nWl
 OY/rqJE9CNBiw==
From: Arnd Bergmann <arnd@kernel.org>
To: Anton Altaparmakov <anton@tuxera.com>, Kees Cook <keescook@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 27 Sep 2021 16:18:03 +0200
Message-Id: <20210927141815.1711736-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Arnd Bergmann <arnd@arndb.de> On ARM64 randconfig
 builds, 
 we occasionally get warnings for NTFS: fs/ntfs/aops.c: In function
 'ntfs_write_mst_block':
 fs/ntfs/aops.c:1328:1: error: the frame size of 2224 bytes is larger than
 2048 bytes [-Werror=frame-larger-than=] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mUrSb-007bWZ-0i
X-Mailman-Approved-At: Mon, 27 Sep 2021 23:08:15 +0000
Subject: [Linux-NTFS-Dev] [PATCH] [RFC] ntfs: disable for 64KB because of
 stack overflow risk
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

On ARM64 randconfig builds, we occasionally get warnings for NTFS:

fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
fs/ntfs/aops.c:1328:1: error: the frame size of 2224 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]

The problem here is that with 64KB pages, we get two arrays on the
stack that each have 128 pointers, for a total of 2KB. Before
the VLA change, this could already happen with 512-byte blocks,
however in practice NTFS should usually have 4KB blocks and not
be affected by this (see link).

Now the stack usage is always > 2KB on any architecture with 64KB
pages. Since both NTFS and 64KB page support are fairly rare,
we may get away with just marking the combination as disallowed
in Kconfig and see if anyone complains before we find a different
way to address it.

Fixes: ac4ecf968acb ("ntfs: aops: remove VLA usage")
Link: https://support.microsoft.com/en-us/help/140365/default-cluster-size-for-ntfs-fat-and-exfat
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/ntfs/Kconfig | 1 +
 fs/ntfs/aops.c  | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index 1667a7e590d8..b770f0209b9c 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -2,6 +2,7 @@
 config NTFS_FS
 	tristate "NTFS file system support"
 	select NLS
+	depends on !PAGE_SIZE_64KB && !ARM64_64K_PAGES
 	help
 	  NTFS is the file system of Microsoft Windows NT, 2000, XP and 2003.
 
diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index bb0a43860ad2..76d59bd4c1eb 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -914,6 +914,9 @@ static int ntfs_write_mst_block(struct page *page,
 	bool sync, is_mft, page_is_dirty, rec_is_dirty;
 	unsigned char bh_size_bits;
 
+	/* Two arrays of MAX_BUF_PER_PAGE on the stack risks an overrun with 64K pages */
+	BUILD_BUG_ON(PAGE_SIZE >= 65536);
+
 	if (WARN_ON(rec_size < NTFS_BLOCK_SIZE))
 		return -EINVAL;
 
-- 
2.29.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
