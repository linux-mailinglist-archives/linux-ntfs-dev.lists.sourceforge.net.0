Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4CE46394A
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 30 Nov 2021 16:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ms4io-0002Fo-Gr; Tue, 30 Nov 2021 15:07:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1ms4Vb-0002r4-G3
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 30 Nov 2021 14:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n0eQFeplb6e/w81WK9BEJ7HH0foayOqgEtTqmWGdyfo=; b=mA4Yq8+1UE0inx0Fp/X0r7Gk0b
 nYBUEMOw5R1hgHhd6vaBJyk+DGsHgF3w6SNRGTcZd9BAqObiWtUKLyjRkqau23ZoYyqVQHUkOiE80
 k01rdLt8LkjNu/nrF911qWhbeJQitJoO5Zgv4G54plznQS2TFeKx8Vxk5PmINMd5Y1jU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n0eQFeplb6e/w81WK9BEJ7HH0foayOqgEtTqmWGdyfo=; b=SDCLRJJMKxweizaLz9Ku5MK6CV
 bAXayx4nZYFYIKdc34agGcqVCZ+UOSABs90zgJyE3hc4RV0kvSkcJOI7kgJzbyklbpL7O/2DOBEbk
 iT6vGdIlojK6aT7pXvX+T8aL7QLlfMJxqm8nd4b5ecJTdbKxa2SqgNlHIQgfexgNFgJs=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ms4VV-00GAOe-Lw
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 30 Nov 2021 14:53:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7372AB81A53;
 Tue, 30 Nov 2021 14:53:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2837C53FC7;
 Tue, 30 Nov 2021 14:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638283994;
 bh=sv6SHN8BiLPKNf1x5CfhepLuwQcvghPgfP6OXk2juBA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oHZxRmAVkmlTedR4+L4lO01LiwmGe9FnKT4XucP350tjFOvCSq5damahbTExcgkRd
 tqRDvWqm1f0Lb/mG+wB/s0nwfdfF4PbmUG8sZUky0rVAYWakU1H00yJ6mCUcjKOHSB
 LobuWo/GCNO8BKY3lWByW79uPFUN64zWYd/SojCCJapJc3PbmKNPfQqrVJ7/IonaWC
 mNPiF/XiekjeJkjh7WblaZkwmL10M2DHFaXuI3ZiPUsgVMioQKDgqdThx44m0PQzoM
 elwIpvNPxmO60HaDXhZgD823MGIN1Sdrmjr5pfJIt+UP8JrkvP80P9Y+QDa1xQ+YdC
 hGZ6lqQL9pUfA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Nov 2021 09:52:41 -0500
Message-Id: <20211130145243.946407-17-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211130145243.946407-1-sashal@kernel.org>
References: <20211130145243.946407-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Guenter Roeck <linux@roeck-us.net> [ Upstream commit
 4eec7faf6775263d9e450ae7ee5bc4101d4a0bc9 ] NTFS_RW code allocates page size
 dependent arrays on the stack. This results in build failures if the page
 size is 64k or larger. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ms4VV-00GAOe-Lw
X-Mailman-Approved-At: Tue, 30 Nov 2021 15:07:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 4.19 17/17] fs: ntfs: Limit NTFS_RW
 to page sizes smaller than 64k
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Guenter Roeck <linux@roeck-us.net>

[ Upstream commit 4eec7faf6775263d9e450ae7ee5bc4101d4a0bc9 ]

NTFS_RW code allocates page size dependent arrays on the stack. This
results in build failures if the page size is 64k or larger.

  fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
  fs/ntfs/aops.c:1311:1: error:
	the frame size of 2240 bytes is larger than 2048 bytes

Since commit f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
book3s") this affects ppc:allmodconfig builds, but other architectures
supporting page sizes of 64k or larger are also affected.

Increasing the maximum frame size for affected architectures just to
silence this error does not really help.  The frame size would have to
be set to a really large value for 256k pages.  Also, a large frame size
could potentially result in stack overruns in this code and elsewhere
and is therefore not desirable.  Make NTFS_RW dependent on page sizes
smaller than 64k instead.

Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Cc: Anton Altaparmakov <anton@tuxera.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ntfs/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index f5a868cc9152e..5b384ec44793f 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -51,6 +51,7 @@ config NTFS_DEBUG
 config NTFS_RW
 	bool "NTFS write support"
 	depends on NTFS_FS
+	depends on PAGE_SIZE_LESS_THAN_64KB
 	help
 	  This enables the partial, but safe, write support in the NTFS driver.
 
-- 
2.33.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
