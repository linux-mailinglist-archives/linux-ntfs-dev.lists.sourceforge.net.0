Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CA939452C
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXm-00031U-3H; Fri, 28 May 2021 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lee.jones@linaro.org>) id 1ljhov-0004nF-4l
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lKuqwj4W0ZaBhd+1MfxBYEd6ybavmACFUynSnrbT09Y=; b=Wi2uUv/dgyfrmmXV3//4IrZIHE
 1V7J/Ud7PMOQVU3PwHUrxAciIrfvX7IoSRw2pMQWN5l7U/JRSa2v9qq28XImARmnzylsE3oR6mBc4
 4LtEBWCeFIbwypOO64s3+k8mpqTbzvexvtwC1/YtvWbAOTCFfRYHdjfqQQa/RKzLBtcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lKuqwj4W0ZaBhd+1MfxBYEd6ybavmACFUynSnrbT09Y=; b=iqCRDFJt1qGc1qspFD4Nlo0twj
 dpTFP7mDu/9PAxTFEgVC7yiCSHIPt27fVRAVKMFvG3jH7qYAIYQEP0C7F82wD71vlDOj+2HB053q2
 50893vJ5dHWmkw/4YP9mjillcHk7cgSZoxJRSq2Hld/81Knlz8ALEKLzwFYg7Rv5EOtk=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhoq-00GSau-F1
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:30:33 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 f6-20020a1c1f060000b0290175ca89f698so5307269wmf.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lKuqwj4W0ZaBhd+1MfxBYEd6ybavmACFUynSnrbT09Y=;
 b=TK0Jfj0dt4OTi6dd/sS/0Rz8Vi6QubSaA5C1z2R6tWQXCYVw+9C26s3IIfPRsbpnAG
 eA7mnHq/ffnac45EyLCdbGT6h82tLM3aWzUGrQufr3LwRaKFGTF0MM1UXE3MsPM47xj6
 F6c19/cJW+RwWaq55EtePiCb0Nx3YEPL4TOVc3sc74eKiiUeXc7mei8PzdEi5t+30/81
 jOtqBqRVjJ4H+cr3R1cRrrb4CQ1hldxeHbOIp2eh5zwCuHfPnVkHW++6ly74Z2iaDqNS
 FvMRYWMCfHXFDE+Ej3QjCM/aRNuC2mva4sXok6fCwQogCkQu+ZSXF49F5QLtjpM4vLxj
 UfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lKuqwj4W0ZaBhd+1MfxBYEd6ybavmACFUynSnrbT09Y=;
 b=bUvS9YWoi6zOD+7h5KJx7nS4LrwiETvQRwxAtlLxF6fHF7IXRQSSsWqGALzqY9TmON
 0gQjq3TOOJvmqgNuGfTP/S88vw9FRDGplmB3kC24fynpQ7Py3Bkg/1ZomShrTQKAkmUs
 l+/LQJBvOzaAnVyQZGlx1KvIGuXaFfWcAqMx3QCCugJJfxi5+8qfWFPCgyi38X3vU91u
 YpE69I/ukGgG8TVku1BqlCBgFu5FhK0/1NAOGVBnI84czOGl0T2ohR9KWzibATvEkbpE
 5jIduFBnEPeh23qbshJz/DTikXv5Lh6y9yDPGPIlJ9NQJuQZ1PWjL2T0MesoCZ306CyS
 jWZg==
X-Gm-Message-State: AOAM532tVvQTRE6SQEY88IMxHw7sMjx47X3XZuAZ/VjvISCGhGEbCRWy
 fOvn4L5oHFU0uKxntfAUanr1db1WQiRJwA==
X-Google-Smtp-Source: ABdhPJzFg/x/i8fn7ZXHlJMRZmv/eev+0CIUqdEEWaPuBJoXbC8cUegoDN/CoLc46P/JNjzuA2AV0w==
X-Received: by 2002:a1c:7d13:: with SMTP id y19mr3280861wmc.41.1621512051990; 
 Thu, 20 May 2021 05:00:51 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:51 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:35 +0100
Message-Id: <20210520120043.3462759-8-lee.jones@linaro.org>
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
 trust [209.85.128.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhoq-00GSau-F1
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 07/15] fs: ntfs: runlist: Demote
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

 fs/ntfs/runlist.c:16: warning: Incorrect use of kernel-doc format:  * ntfs_rl_mm - runlist memmove
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'base' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'dst' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'src' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'size' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: expecting prototype for c(). Prototype was for ntfs_rl_mm() instead
 fs/ntfs/runlist.c:35: warning: Function parameter or member 'dstbase' not described in 'ntfs_rl_mc'
 fs/ntfs/runlist.c:35: warning: Function parameter or member 'dst' not described in 'ntfs_rl_mc'
 fs/ntfs/runlist.c:35: warning: Function parameter or member 'srcbase' not described in 'ntfs_rl_mc'
 fs/ntfs/runlist.c:35: warning: Function parameter or member 'src' not described in 'ntfs_rl_mc'
 fs/ntfs/runlist.c:35: warning: Function parameter or member 'size' not described in 'ntfs_rl_mc'

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/runlist.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
index 97932fb5179cd..6c7822cdf3ac1 100644
--- a/fs/ntfs/runlist.c
+++ b/fs/ntfs/runlist.c
@@ -12,7 +12,7 @@
 #include "malloc.h"
 #include "ntfs.h"
 
-/**
+/*
  * ntfs_rl_mm - runlist memmove
  *
  * It is up to the caller to serialize access to the runlist @base.
@@ -24,7 +24,7 @@ static inline void ntfs_rl_mm(runlist_element *base, int dst, int src,
 		memmove(base + dst, base + src, size * sizeof(*base));
 }
 
-/**
+/*
  * ntfs_rl_mc - runlist memory copy
  *
  * It is up to the caller to serialize access to the runlists @dstbase and
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
