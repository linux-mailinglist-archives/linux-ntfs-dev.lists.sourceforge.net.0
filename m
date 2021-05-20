Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D5394535
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXm-00031s-73; Fri, 28 May 2021 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhpc-0006Zf-HJ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nw6y5j8qU4eges0MGOk6KmW889wb/0DapvaK8UiBK7s=; b=kC6MT5i+FLhhXGe55hPcR4iZ1s
 r1YsLci8kOkJAbQ7cbKOFeTfdxmD4bxhldVZk43jhIIJMRHtBjxL+wFGBWtnBnxn/hPFrRQ28qFdf
 I9dLFZqYX7UWZz4W09SUF2ghT/W8RoLpeNjXLRa+h2GsJRopSRa2+pJmWCdRmMbGQ99g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nw6y5j8qU4eges0MGOk6KmW889wb/0DapvaK8UiBK7s=; b=loGjO71LgisvtEW7ASYz9dB8Lx
 XU1bgBGHnPI7d12jXyeljUWDj3Ha3T1GyKSOxh/SDPqV5t8qylQA9I+u1SyJTRcO0SUcS3x9irAlh
 lJ8YJgnLYneWY9KISFHVKcuueeyVFjABOWGg8EyxWvZIsQU9q5WIlq63YNM94/dT4uWk=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhpT-00GScD-8P
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:31:18 +0000
Received: by mail-wm1-f44.google.com with SMTP id o127so9074112wmo.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nw6y5j8qU4eges0MGOk6KmW889wb/0DapvaK8UiBK7s=;
 b=roecU/drLhH4IFhoHfGwrkR9tJfH5U6k2EwGXuwIZGhrVrKEqNJ8AW3hv0A17+3/XX
 Y7JHqhLSAYYa5zkpQWgjyZ3Gok2OQhQgRCm6Wrqz/fKLw1pi73WLbq/z5dOtoWDYYh4n
 HxXuQh3SRkdSBmbotRXYCy4PH+DrMm3KcV4JYFe+H6h15gZrEtJk011mP7fzxWc7XmKI
 npbrlQNanWVHsOawY12M81yDIESdjPuZtWTI4Lz/eKvGnsEKkmwfsPK+KwiBfQwTUCE6
 m9PTJeAOXhRR4blO0Hk/AqCC1q9u5CVFcyh+nW14NOo0Me55L0rrIoPxggNiGEnA/i78
 Iu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nw6y5j8qU4eges0MGOk6KmW889wb/0DapvaK8UiBK7s=;
 b=oYFwwqYVDIM4gI5wWVUPokESI1QwQY6u/MjX8e0ysHrHsbjAstAf6gKiCVz54VEPgp
 pIT+809+ha2H78TrrkY8AqhpTJKF/+4deeMALBcBnrkIM1+FTuSEi1Eah5pIEWq7+Qjt
 aSuUqB17V2EmXpcCk+VS4ZGAyAkcdpQUMSBc3ejYKy3SMFnvXx4Rbw5uZQNJcqdVIvu+
 rc242K6ZDENuZM4s+UdyUONAuS7I96Cbqi853lv9Zs8NYhWa2DxrXbUFeq8l0EVCv08l
 04WTxMgZfJNToQ5PR51udF1h7pwEfX13Q7l3gDxfplNhny99ANcXwrQTwYk9J0JF81Uh
 MYLA==
X-Gm-Message-State: AOAM5335cvoX4Nz3psUx9RTX/FuGZ5A5noR57T1MsO4c+1QDoAvowD21
 lfICO88eLfS5kGVly8i3HsQKtr1HgzvuvQ==
X-Google-Smtp-Source: ABdhPJxY0Iwx5yvyEzeodlC7iILYo6lkRltYLShJydLnWFBpgu4Q7LYdr7qqpG1Oo8gUwE32WThUFg==
X-Received: by 2002:a1c:c911:: with SMTP id f17mr3340871wmb.45.1621512051157; 
 Thu, 20 May 2021 05:00:51 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:50 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:34 +0100
Message-Id: <20210520120043.3462759-7-lee.jones@linaro.org>
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
 trust [209.85.128.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhpT-00GScD-8P
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 06/15] fs: ntfs: dir: Supply missing
 descriptions for 'start' and 'end' and demote other headers
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
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes the following W=1 kernel build warning(s):

 fs/ntfs/dir.c:21: warning: Incorrect use of kernel-doc format:  * The little endian Unicode string $I30 as a global constant.
 fs/ntfs/dir.c:23: warning: cannot understand function prototype: 'ntfschar I30[5] = '
 fs/ntfs/dir.c:1489: warning: Function parameter or member 'start' not described in 'ntfs_dir_fsync'
 fs/ntfs/dir.c:1489: warning: Function parameter or member 'end' not described in 'ntfs_dir_fsync'
 fs/ntfs/dir.c:1489: warning: Excess function parameter 'dentry' description in 'ntfs_dir_fsync'

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/dir.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index cd96083a12c8e..35f301313e46b 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * dir.c - NTFS kernel directory operations. Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2007 Anton Altaparmakov
@@ -17,7 +17,7 @@
 #include "debug.h"
 #include "ntfs.h"
 
-/**
+/*
  * The little endian Unicode string $I30 as a global constant.
  */
 ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
@@ -1462,7 +1462,8 @@ static int ntfs_dir_open(struct inode *vi, struct file *filp)
 /**
  * ntfs_dir_fsync - sync a directory to disk
  * @filp:	directory to be synced
- * @dentry:	dentry describing the directory to sync
+ * @start:	offset in bytes where the range starts
+ * @end:	offset in bytes where the range ends (inclusive)
  * @datasync:	if non-zero only flush user data and not metadata
  *
  * Data integrity sync of a directory to disk.  Used for fsync, fdatasync, and
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
