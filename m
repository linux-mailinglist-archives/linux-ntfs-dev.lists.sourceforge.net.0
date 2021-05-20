Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 561DB394533
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-00030V-IA; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhl8-0004sV-7m
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y7j5Jz1TLm5Rclaa9Io/h5T5lIOMB5agFM7VL9F5JV8=; b=YVuwDbCSODgW62xDavtlESwJNc
 9rM8ZlfZw+3kDD6pQFVC607uKN/qbE950r5iRMl4o8Oi74R6JDC90xiFOCWQNraAtOGw3zkonfykd
 W6ufZW+SP20w7YUxoIUbxn+X+73bZ9X6XyKwh3UgiJDyvzbfvZY5TvCmiM/f0k5HJWX8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y7j5Jz1TLm5Rclaa9Io/h5T5lIOMB5agFM7VL9F5JV8=; b=QxSogSmNGZHy1qF/9MPL2anNUb
 3Eh/FeBED/av2jKdXdRYgn5/CX3DGpFt4tqE39tM9POawFKwep8rb/00TlY7/bF0+zGBOzxsWPsk6
 DMWjWQQXE7MpLp8iSncILh2OnvrLEbcN5/IU/fx8KF2wpTCsvJO9T+F4mQR6pUA21LV8=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhl0-00GSQT-FQ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:26:38 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 z137-20020a1c7e8f0000b02901774f2a7dc4so4997790wmc.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y7j5Jz1TLm5Rclaa9Io/h5T5lIOMB5agFM7VL9F5JV8=;
 b=neqXmRnp+z/d+ko1FGj3gZUAFj+eQmCOAJhcOGdoD2GYkQ/mPtmiMfJfF2ZCKn9g/A
 8DalntTdya/i3xr98TiesiA0nJKNE6n1AHw+t2BZvp3pKhwMEX1wqwp8WFbMQ1cjcu/y
 mOSOeUDY5P5veCUyoDRFIDqqe56p1XK/J/kRPSPXnDZie2ZgSXer+F/zxBnHK/zAkFCb
 HphcVKFkMMk7GFwI1kuyb24HtL/IoXUiN5DTj8s+rF8zt0YjXZY60fzwTucwF1JG7xch
 LdDnuUIs9zJx4mKxM5YyM8X7SB9+Z5ykSe3OdubsENXNgpkC2deNdQlQvBxPXDtGXyZH
 ec8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y7j5Jz1TLm5Rclaa9Io/h5T5lIOMB5agFM7VL9F5JV8=;
 b=ELqxcj8SZR/cNFsw00zAjUELsbf+LNhk021RVSpCRzt++wVzYROCOprIcMzvOaHOI5
 3pvf0cV+882KTYxM+TOPNtaiK5Zaz5vMN+mNByW6TmVOUu5rlYWJ+yzqByL1PXBF3PLr
 jow2ApdoUEWOEN6f3Xn1KNDsDRLilatEnAGhSG7PbLB8PeVyeGqXX1e4QTtlH6V2MZYZ
 SN1nZqeOIW1x1xDPAKJX1evbbZ4CbTLVOLcSSczqqwVKaiLCkdg/dQw8whFBScrn+Qgn
 1KSNOpVyxh2cQUrU+AtTGBI54nWV7IhRKbuFHhSIXzKES9SPaj5D9Ff0TEeHE6cbZ2Wx
 WJyA==
X-Gm-Message-State: AOAM530YoOWSoRQtIDzAH7Bo59l9njeCsJ9tMNzAaeXGLCdg2VHLTsra
 bjQCpR7dEoXQ2R8WD7ZcfUeQSH/7q4Sorw==
X-Google-Smtp-Source: ABdhPJxErTypmyFCxeAHlikIOyGLPrynMAjCeRS2KHBrnFhjVhQjhAPN4KDhFWM3+w9t7YqZNAW+Og==
X-Received: by 2002:a1c:c91a:: with SMTP id f26mr3685078wmb.15.1621512050310; 
 Thu, 20 May 2021 05:00:50 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:49 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:33 +0100
Message-Id: <20210520120043.3462759-6-lee.jones@linaro.org>
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
 trust [209.85.128.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhl0-00GSQT-FQ
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 05/15] fs: ntfs: compress: Demote a few
 non-conformant kernel-doc headers
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

 fs/ntfs/compress.c:22: warning: Incorrect use of kernel-doc format:  * ntfs_compression_constants - enum of constants used in the compression code
 fs/ntfs/compress.c:24: warning: cannot understand function prototype: 'typedef enum '
 fs/ntfs/compress.c:47: warning: cannot understand function prototype: 'u8 *ntfs_compression_buffer; '
 fs/ntfs/compress.c:52: warning: Function parameter or member 'ntfs_cb_lock' not described in 'DEFINE_SPINLOCK'
 fs/ntfs/compress.c:52: warning: expecting prototype for ntfs_cb_lock(). Prototype was for DEFINE_SPINLOCK() instead
 fs/ntfs/compress.c:88: warning: Function parameter or member 'page' not described in 'zero_partial_compressed_page'
 fs/ntfs/compress.c:88: warning: Function parameter or member 'initialized_size' not described in 'zero_partial_compressed_page'
 fs/ntfs/compress.c:107: warning: Function parameter or member 'page' not described in 'handle_bounds_compressed_page'
 fs/ntfs/compress.c:107: warning: Function parameter or member 'i_size' not described in 'handle_bounds_compressed_page'
 fs/ntfs/compress.c:107: warning: Function parameter or member 'initialized_size' not described in 'handle_bounds_compressed_page'

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/compress.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/ntfs/compress.c b/fs/ntfs/compress.c
index d2f9d6a0ee323..12444ac8f8ec5 100644
--- a/fs/ntfs/compress.c
+++ b/fs/ntfs/compress.c
@@ -18,7 +18,7 @@
 #include "debug.h"
 #include "ntfs.h"
 
-/**
+/*
  * ntfs_compression_constants - enum of constants used in the compression code
  */
 typedef enum {
@@ -41,12 +41,12 @@ typedef enum {
 	NTFS_MAX_CB_SIZE	= 64 * 1024,
 } ntfs_compression_constants;
 
-/**
+/*
  * ntfs_compression_buffer - one buffer for the decompression engine
  */
 static u8 *ntfs_compression_buffer;
 
-/**
+/*
  * ntfs_cb_lock - spinlock which protects ntfs_compression_buffer
  */
 static DEFINE_SPINLOCK(ntfs_cb_lock);
@@ -80,7 +80,7 @@ void free_compression_buffers(void)
 	ntfs_compression_buffer = NULL;
 }
 
-/**
+/*
  * zero_partial_compressed_page - zero out of bounds compressed page region
  */
 static void zero_partial_compressed_page(struct page *page,
@@ -99,7 +99,7 @@ static void zero_partial_compressed_page(struct page *page,
 	return;
 }
 
-/**
+/*
  * handle_bounds_compressed_page - test for&handle out of bounds compressed page
  */
 static inline void handle_bounds_compressed_page(struct page *page,
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
