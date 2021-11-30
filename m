Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1263E463945
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 30 Nov 2021 16:07:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ms4io-0002GE-Ql; Tue, 30 Nov 2021 15:07:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1ms4Zq-0006Db-Nw
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 30 Nov 2021 14:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n0eQFeplb6e/w81WK9BEJ7HH0foayOqgEtTqmWGdyfo=; b=L+O2QVoNVFV2jpNDOk2KCY6xxV
 GFRBLn+xvQeVm10S/W+bAADZWKKq8rE4B/565HBKZZdFlkWnsyq7BqXufRrMeNDjjv6n7CMaB18HP
 CAC5CW8LMCgFkJ6Vr2QtI4PxmN9PYLLRMkT6Ez1qQ5OVgx9p7o6B7VJmugPGg9rjN52s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n0eQFeplb6e/w81WK9BEJ7HH0foayOqgEtTqmWGdyfo=; b=drFfhOBlVqFuc9qt2Cum/7MnJN
 XdS8aT6YW/z6E5ogp0fSWZ3tH5Yv4UyxlRi+mmnkAuqT6SgMVMGCreVZrSQ8ZisgkgsUgMKJALBs9
 eVVClpcaA5GtP5vq9LY6QmKuLpcG2C3ypZkOtLzScjhlLKkqAtxj34Ea/HkI5oCEZem4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ms4Vu-00GAQf-2O
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 30 Nov 2021 14:57:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D2205B81A68;
 Tue, 30 Nov 2021 14:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D595AC53FCF;
 Tue, 30 Nov 2021 14:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638284019;
 bh=sv6SHN8BiLPKNf1x5CfhepLuwQcvghPgfP6OXk2juBA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pwTTsdB8nSxOaERr10r7cHKNLMzFP7PEKJY2/rJW3GQ6ZOQhvVab6RkKGD0ePyQdd
 PHGobzslbY6v8SNg1DKmKAxinG+MxOl3foBlU4uBKYYQYQK20LJTFfYLmw22aImLH7
 pGiYbwuJT2nRUQ1L7be13tKY+8VJIK1Y49U1ASrhCuB1VMmQxlPpYs3ZcCj82eXva/
 KwwDSkHWox2UKBKT0Ha1LnQPdWT6h/4e9tPaHQ9xXZ68UBf4CjCe7p1C9FsWmU2/4h
 2A84BaaM/Gg6F8jrTQPemeeOdt3b0YsMDNA/aMkVqZB8geAObGt6NB0cca9m0IPe3Q
 rpJiCm6DbIeBQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 30 Nov 2021 09:53:15 -0500
Message-Id: <20211130145317.946676-14-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211130145317.946676-1-sashal@kernel.org>
References: <20211130145317.946676-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Headers-End: 1ms4Vu-00GAQf-2O
X-Mailman-Approved-At: Tue, 30 Nov 2021 15:07:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 4.14 14/14] fs: ntfs: Limit NTFS_RW
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
