Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5AA394536
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-00030r-N0; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhn1-0005B0-Pi
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XDQ+0forDI+XgtxHNWp1Ewtgv/EwMZvwyzCeimdDgZ8=; b=SY/9R406PpIMfzsY16Ox9vcGYG
 +4kXQ6KznC9/w74KcTi/Cek4bEuyaW3lVwUU2/dxkwoE95zGdrAKnm3Z1xCuFeETdaQWRpIMtlTqB
 6G4ykh5kFMRxo2ZkfqcQpsl3rL28D7U4IiwWzEB2LjTlp+w/itaw8hZr2o1YMXDb+FEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XDQ+0forDI+XgtxHNWp1Ewtgv/EwMZvwyzCeimdDgZ8=; b=cdrfl5OBGFWUbLrLVCIPvFdLHJ
 dgvFtsJreJQlTqJ2a4tEobmNHAhETJOiG2f0+t3OApn3oPuhXJld30dgsqLXyoQCBiJFsoRzNQ4jJ
 KaGKSTbKQUtiWT2ul/GKwWygqqPy6E44IMJoYjB25ndadoTych3G+7x0iT8eioD+k+o4=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhmn-00GSVk-FJ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:28:36 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 h3-20020a05600c3503b0290176f13c7715so5110341wmq.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XDQ+0forDI+XgtxHNWp1Ewtgv/EwMZvwyzCeimdDgZ8=;
 b=UQ8jATvg5qZJZ40FrCfEejT72ibMD+ZoTVHlGUdxS/hsBtRFmXyU9eQ5aVrsgNapC5
 qfPeY7eQd82PqUSXW4tuYQK7j06S+q7YZm1nCQwhNKdRIkrGU2r8QXqHv2yyjkkvCnFU
 gwVj/xz43N8CjyIQqnpywzM/fMFc9KvR0LrsG8j60bq493u2MDyUbZPoL3/3n+P8E7LQ
 G+LHXzn0UPe4fr9I/DGk+w3anuI4iEn+SNqxx7hX0LaMVs54Xsck9eNhbnWwYWfE3ipL
 1ADKPI5HOOUlLHX2EApE9TO7JrA0ynyOAx+fcBH4uDojBo3C0xwsjNjPtfu5k5L+YiPq
 TziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XDQ+0forDI+XgtxHNWp1Ewtgv/EwMZvwyzCeimdDgZ8=;
 b=eBg1NCMHRsuf1XpHMRIA0UwdVOqqs0sF1ARStpI7tKawChhOaeLr8lvk3jq7wn6tKf
 +1wxXdz7UxZ0JaBzXjir7kOhemASTTc3CID0tLnGvQqV9Ru7odN1vAv8Mrq4VMMtkm6r
 ZB8IGGlTFAZ7HG+QAfI9yFDgc62RRJ8DBl1hfqjMYh9wGrX0VBKbFZa5boVY5cMUROTS
 sjQak1iS7ZqnwpD74atBch647ocdh9LvDtm8LtEGDd5nLVCCPqZ8No2QOw03NJcBkBS2
 PehvNZ3TikxpIx6YrYAAK+13ElMtXuXTAJKoiyFdb1o4sZQ/taWk5LWnFVi8MV2RDFXU
 o1TA==
X-Gm-Message-State: AOAM531Jp2hBAqR5L0+gkmu3yk4U9l7BvtOKnXJu5nlPuq5qQBKgk0N5
 h4o45NwD9TgEpD4ggZPOG9Rb8tBZR19LYQ==
X-Google-Smtp-Source: ABdhPJxDGK6DYgptDfmPmzXFOsIjgnHJ7h9Uu+mHkSB9wKBaMaX21LZP3U6FBoBQuhdLRWDqqVsEkg==
X-Received: by 2002:a05:600c:b58:: with SMTP id
 k24mr3625260wmr.155.1621512054372; 
 Thu, 20 May 2021 05:00:54 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:54 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:38 +0100
Message-Id: <20210520120043.3462759-11-lee.jones@linaro.org>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhmn-00GSVk-FJ
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 10/15] fs: ntfs: aops: Demote kernel-doc
 abuses
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

 fs/ntfs/aops.c:30: warning: Incorrect use of kernel-doc format:  * ntfs_end_buffer_async_read - async io completion for reading attributes
 fs/ntfs/aops.c:46: warning: Function parameter or member 'bh' not described in 'ntfs_end_buffer_async_read'
 fs/ntfs/aops.c:46: warning: Function parameter or member 'uptodate' not described in 'ntfs_end_buffer_async_read'
 fs/ntfs/aops.c:46: warning: expecting prototype for c(). Prototype was for ntfs_end_buffer_async_read() instead
 fs/ntfs/aops.c:1652: warning: cannot understand function prototype: 'const struct address_space_operations ntfs_normal_aops = '
 fs/ntfs/aops.c:1667: warning: cannot understand function prototype: 'const struct address_space_operations ntfs_compressed_aops = '
 fs/ntfs/aops.c:1682: warning: cannot understand function prototype: 'const struct address_space_operations ntfs_mst_aops = '

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/aops.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index bb0a43860ad26..0f2a7dc9f1698 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * aops.c - NTFS kernel address space operations and page cache handling.
  *
  * Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.
@@ -1643,7 +1643,7 @@ static sector_t ntfs_bmap(struct address_space *mapping, sector_t block)
 	return block;
 }
 
-/**
+/*
  * ntfs_normal_aops - address space operations for normal inodes and attributes
  *
  * Note these are not used for compressed or mst protected inodes and
@@ -1661,7 +1661,7 @@ const struct address_space_operations ntfs_normal_aops = {
 	.error_remove_page = generic_error_remove_page,
 };
 
-/**
+/*
  * ntfs_compressed_aops - address space operations for compressed inodes
  */
 const struct address_space_operations ntfs_compressed_aops = {
@@ -1675,7 +1675,7 @@ const struct address_space_operations ntfs_compressed_aops = {
 	.error_remove_page = generic_error_remove_page,
 };
 
-/**
+/*
  * ntfs_mst_aops - general address space operations for mst protecteed inodes
  *		   and attributes
  */
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
