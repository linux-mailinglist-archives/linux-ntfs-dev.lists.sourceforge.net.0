Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 897A14863EC
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  6 Jan 2022 12:48:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1n5RGE-0007lV-RZ; Thu, 06 Jan 2022 11:48:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <yang.lee@linux.alibaba.com>) id 1n5Hwf-0001pt-4R
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 06 Jan 2022 01:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=16v1iasjLotJOXOFNYgQSAQ8Dj/dQJdMBMl3/G94GfQ=; b=Ojsd8KbhTbhDBAd/KGMz0wgmnb
 mnPA8J3xeG+0OBMVYF+KieSJZv59ZjFE+BaWUr5NoK14HLODQ/2NiIbtCjoT4SpIpvaDQ7GFZfHkv
 OTquh33zkWB+svlbxGW8H1Vc69l/oKQR11o3ZNoglckIDi6ZbNUs6bTS4jlJA54wuvB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=16v1iasjLotJOXOFNYgQSAQ8Dj/dQJdMBMl3/G94GfQ=; b=b
 OViHFdmt1OXWCmvaO+1863nFGvoRrpBCY1kC8roGLpeKo2uDxqmUFo/QjEopjsQlzqJE1nAtubNzF
 u8wYcfaNKCOcT35lGS15gBT0EZDhVVe4x59sOt1gm9SLn+bcmM8nB5iUrBVHM5wOM3hQwpI31c8Mh
 9hWON+FHUh6hCMF8=;
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5Hwd-003WVS-0Q
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 06 Jan 2022 01:52:01 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R451e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0V13wOxI_1641433907; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0V13wOxI_1641433907) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 06 Jan 2022 09:51:48 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: anton@tuxera.com
Date: Thu,  6 Jan 2022 09:51:45 +0800
Message-Id: <20220106015145.67067-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: /** * attrib.c - NTFS attribute operations. Part of the
 Linux-NTFS
 The comments for the file should not be in kernel-doc format, which causes
 it to be incorrectly identified for function ntfs_map_runlist_nolock(), causing
 some warnings found by running scripts/kernel [...] 
 Content analysis details:   (-8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1n5Hwd-003WVS-0Q
X-Mailman-Approved-At: Thu, 06 Jan 2022 11:48:48 +0000
Subject: [Linux-NTFS-Dev] [PATCH -next] NTFS: Fix one kernel-doc comment
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Abaci Robot <abaci@linux.alibaba.com>,
 Yang Li <yang.lee@linux.alibaba.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

/**
 * attrib.c - NTFS attribute operations.  Part of the Linux-NTFS

The comments for the file should not be in kernel-doc format, which causes
it to be incorrectly identified for function ntfs_map_runlist_nolock(),
causing some warnings found by running scripts/kernel-doc.

fs/ntfs/attrib.c:25: warning: Incorrect use of kernel-doc format:  *
ntfs_map_runlist_nolock - map (a part of) a runlist of an ntfs inode
fs/ntfs/attrib.c:71: warning: Function parameter or member 'ni' not
described in 'ntfs_map_runlist_nolock'
fs/ntfs/attrib.c:71: warning: Function parameter or member 'vcn' not
described in 'ntfs_map_runlist_nolock'
fs/ntfs/attrib.c:71: warning: Function parameter or member 'ctx' not
described in 'ntfs_map_runlist_nolock'
fs/ntfs/attrib.c:71: warning: expecting prototype for attrib.c - NTFS
attribute operations.  Part of the Linux(). Prototype was for
ntfs_map_runlist_nolock() instead

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/ntfs/attrib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index d563abc3e136..2911c04a33e0 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * attrib.c - NTFS attribute operations.  Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2012 Anton Altaparmakov and Tuxera Inc.
-- 
2.20.1.7.g153144c



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
