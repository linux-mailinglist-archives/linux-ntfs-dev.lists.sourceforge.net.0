Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2578539452D
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-0002zw-5D; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhSO-0000Ll-AC
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j+CY2ek6VxONI01tTBXSoeon9keiXFqschyXl+BU66Y=; b=Z4CT5oZ4RFR411towciHJZH3X3
 PCdOWw2cZNHQsHS1ilzO13HHgIsIEHJDP2yfX18HVgWG4cLb3Xrk0DLBbYBl+MD98jBc0Lre8yvfj
 1YL2FqVi/8GkKqhZlbtpFBK7hk6PzVAs2BYePdYdRHkATA1Q4QvB2dd1uqpgX2pou54c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j+CY2ek6VxONI01tTBXSoeon9keiXFqschyXl+BU66Y=; b=kgFPftr/vtaQ8P0uBfpAYqGikH
 3Al0W0KQKsQz55wjBzOVCrU0X4hHqrFrwB88oz5iaeHM5N8FouTvxtziq+zHKu76BQEPf6/Ec8hJi
 1OEsZgjGb73jM+g8cSkbYiwqepGScYUKurj55OAitnTHjVxIEq5zFADT7RcMBivbSllE=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljhSL-0002yQ-PN
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:07:15 +0000
Received: by mail-lf1-f45.google.com with SMTP id w33so16189506lfu.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j+CY2ek6VxONI01tTBXSoeon9keiXFqschyXl+BU66Y=;
 b=V5+2RfMRWw9e+4jMcoxCK9BrpOXh8PlzSSLwIs0vIDrCJDsdznoZ/mZHGEv9sMC+dS
 WaXQDXeiDr4ZKu9x8rcfVbqtEhwxUeltzqEKMlt5ryVIIqDUnFAYXq/7C8OZTodMf+Py
 Z1r7QcMjo87mi+vFVZKlzWMI6uvU0cyHyYGms3dyWHHeTg9OxiDAcp+paxqzY8y6+Zyc
 QelZGC8HL2Hl240TRgfyIHsEtnHFarUqmoKgNrfZjR/zq5BK5NTRMZ4Ixcs8qYCka5oL
 UiOAaYBiMPUveXcrPg1n+oFoTkR+Hxvl4hteENVEwM+WGL9Ie3upaBzw1r9vu57Wg9u9
 cVaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j+CY2ek6VxONI01tTBXSoeon9keiXFqschyXl+BU66Y=;
 b=CFuHwXjSUFtNNF6G0kTZy3CEOUgjVH8ijHzZEusutjqcjiTnk8sKkGj8hpMEfkeDy1
 R0/ZbKd/FlfrntHtsYDSoeLuXoZBVXNVOgGw1zEyMe/wf8YrtXi32qkgNFahVuv+BVA/
 GfA01JMYaCSmSFJk5q2q5z3tirauv6CSAXG0Uyh7YG5gN/nGPEcJoDxbiq0qSNTG5rnG
 KVBeAHvKpOmIfqJKei6kWT/1iK4+XqCmvXeyJW7LyPr0UMaVqz01F1Vr51PpUeiUkzLt
 HrkT/XHj4uGjhcqe2VzEaWLQl2cPS2JZEzQtEeGthz7Zsl5fvNVTpzMXObimUGLyZ/QL
 FROg==
X-Gm-Message-State: AOAM533P2u0yor7xhARVU7iyJCIVClmd3i9oMmJzAdiDIFIynanavM9F
 bT2zGdJqd422XF5BmZl35wio3Xp2IwrDyA==
X-Google-Smtp-Source: ABdhPJxoFmOkWT9VDnUJ9MEGL9uhaH5oolmp+D/Ie1OoOCnnLUyt4SbOgcGmeyEVpLs6D0FEJLYTCw==
X-Received: by 2002:adf:d231:: with SMTP id k17mr3821480wrh.78.1621512052831; 
 Thu, 20 May 2021 05:00:52 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:52 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:36 +0100
Message-Id: <20210520120043.3462759-9-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120043.3462759-1-lee.jones@linaro.org>
References: <20210520120043.3462759-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.45 listed in wl.mailspike.net]
X-Headers-End: 1ljhSL-0002yQ-PN
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 08/15] fs: ntfs: inode: Fix incorrect
 function name and demote file header
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
 Anton Altaparmakov <anton@tuxera.com>, to <linux-ntfs-dev@lists.sourceforge>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes the following W=1 kernel build warning(s):

 fs/ntfs/inode.c:31: warning: Incorrect use of kernel-doc format:  * ntfs_test_inode - compare two (possibly fake) inodes for equality
 fs/ntfs/inode.c:47: warning: Function parameter or member 'vi' not described in 'ntfs_test_inode'
 fs/ntfs/inode.c:47: warning: Function parameter or member 'data' not described in 'ntfs_test_inode'
 fs/ntfs/inode.c:47: warning: expecting prototype for c(). Prototype was for ntfs_test_inode() instead
 fs/ntfs/inode.c:2945: warning: expecting prototype for ntfs_write_inode(). Prototype was for __ntfs_write_inode() instead

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: to <linux-ntfs-dev@lists.sourceforge>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/inode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index f5c058b3192ce..b3badf5482956 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * inode.c - NTFS kernel inode handling.
  *
  * Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.
@@ -2924,7 +2924,7 @@ int ntfs_setattr(struct user_namespace *mnt_userns, struct dentry *dentry,
 }
 
 /**
- * ntfs_write_inode - write out a dirty inode
+ * __ntfs_write_inode - write out a dirty inode
  * @vi:		inode to write out
  * @sync:	if true, write out synchronously
  *
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
