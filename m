Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 497D6394530
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-0002zo-2y; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhS1-0005Gy-Kt
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vSYwp3QUO2YAhp1nmIDTgLX8YA5Z78Ipy39KrYbLSpw=; b=guN6rjd/GmQc/f3itVXHE1+Gc8
 Pr+RchFEVao8rt27b8x2JDW2rPd/wJz5XCTNtFP+tSVVZXeujD/GkznbtW2McUFWn1yJ1eie09K8E
 yBltjf6gXBiWVv0A0TY/s3XRsSw60BF0f+z040sG6CQoIuriMI/CitAstfdDAfOESABk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vSYwp3QUO2YAhp1nmIDTgLX8YA5Z78Ipy39KrYbLSpw=; b=asm0qZ/LkPF0PIOPwkLxlGnj4O
 ZT+VJSwuVA+W8LDI/8s+8wP2VFqUtar7lEQjryIJnxZuSokn0c0h54c5o1a2OpQXO05jz6dTOTiYg
 /qYVuvK9USHygnptAOL84s6HyA+MJ0SLPEVqBBJRF/U1OIiyFo4qZgtW7ICPZMbel6kU=;
Received: from mail-lj1-f170.google.com ([209.85.208.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljhRo-0002wr-RU
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:06:54 +0000
Received: by mail-lj1-f170.google.com with SMTP id f12so19410643ljp.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vSYwp3QUO2YAhp1nmIDTgLX8YA5Z78Ipy39KrYbLSpw=;
 b=AVcVXUsLdTRkxi3Ow2TCUfpN9x8yEfzbiWzuXm0RhB1htxhozoNaqHiWOLYKHLgJiZ
 SxTVCC99KwjMuMAr4w6OH/54XXkX9XZDIExHnxNA0ski3rkjzXa/zcXwj5Ufn1ONOEZl
 GrrjpS99U2SmhsPbt7QAkm9UWsXq02cuwHr1JZWtAMy6MDtFyQHWgsGd96zW0rENQAHx
 /RBQWz20Rdb4ra7ZySXi4mXi+nuSzfG1HQlR+RQS7CXlN1Nun40NOMCMXdFPhg7IjOF0
 vPrC8mz8uavm5RIirEvcm73cZ5fB0IO9qOsNqC/3H8USlzJoDRW3kSobQTaoXAYwDBkw
 wjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vSYwp3QUO2YAhp1nmIDTgLX8YA5Z78Ipy39KrYbLSpw=;
 b=KMYoSlSuuSzSPhKiWStfKf+cmAxCYoMrrwuKsJCL3FwcXI29JszKOq2sy1mq0fXrH5
 GmcqcGbwF4zVnLCNEiX/YLVcQaiONhSzTBP5oDxeUT4wNSSpH/w06N9WiaaUHA2ywpRW
 jryzWE0fT4JYzcQlDtHJ+JMTO20KKPuAUoAX9MZ98RZV5gAdqBsWreVwG5cBtyOvPJ24
 G1UzB04jUUHTO6RQVo8TVnBByX/s7MmSQu7pN98YiiBBjYkCWVHv2o7JopHz67PuZgah
 MkMQywVu9+WXSxZFo9GNY4xTqYdbGqumIn6W2iH0cxiTT6PlDKkm7R6c70nn3uB4LT7b
 uGRQ==
X-Gm-Message-State: AOAM5306pkgz/WPd0yK+cgsnWAjYY3VC8YVhGBS5DdPsOcaBXEBwXPzz
 Mf8qQyhetokj2YMuUaIZCjyveXmgSVa7pA==
X-Google-Smtp-Source: ABdhPJxhm/PGu7aWMLpLOXhb7NIFn1A5wj3ebAXlbn9pX23PRDc6WgsS6XXmzmI/aQuFVVs2CmPtEA==
X-Received: by 2002:adf:fdce:: with SMTP id i14mr3789207wrs.303.1621512053613; 
 Thu, 20 May 2021 05:00:53 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:53 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:37 +0100
Message-Id: <20210520120043.3462759-10-lee.jones@linaro.org>
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
 for more information. [URIs: linaro.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.170 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.170 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhRo-0002wr-RU
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 09/15] fs: ntfs: attrib: File headers are
 not good candidates for kernel-doc
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

 fs/ntfs/attrib.c:25: warning: Incorrect use of kernel-doc format:  * ntfs_map_runlist_nolock - map (a part of) a runlist of an ntfs inode
 fs/ntfs/attrib.c:71: warning: Function parameter or member 'ni' not described in 'ntfs_map_runlist_nolock'
 fs/ntfs/attrib.c:71: warning: Function parameter or member 'vcn' not described in 'ntfs_map_runlist_nolock'
 fs/ntfs/attrib.c:71: warning: Function parameter or member 'ctx' not described in 'ntfs_map_runlist_nolock'
 fs/ntfs/attrib.c:71: warning: expecting prototype for c(). Prototype was for ntfs_map_runlist_nolock() instead

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/attrib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index d563abc3e1364..2911c04a33e01 100644
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
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
