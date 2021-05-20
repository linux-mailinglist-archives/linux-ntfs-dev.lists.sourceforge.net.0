Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C2F39453A
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXm-00033u-UN; Fri, 28 May 2021 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhra-00060o-M1
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IrecHDGGhuuW2uy8xg0gZxiHWZxNzWt+fwsCAZdUnjQ=; b=OOMrb4yTFrvL0rsz9rvaHdkwFH
 IFYjYpCx7t+AknjXEcyT2ebeZOB9StYVD9+4XtxhhVCV0p9maXbM9Yil2AfxGVsQrMxRRFv/sYqGC
 oKqzXZowIxq9qmn+hvwpgVO+jsaFTHud4kIcLwS63Ln+SVLXXQC5XSDdc4aNDg37QOlc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IrecHDGGhuuW2uy8xg0gZxiHWZxNzWt+fwsCAZdUnjQ=; b=IAwdKPdPiB2S2pHC4TLfruyhWm
 xNJeQ7XXk2QPzszzx59PFbxbK8T+01kcEuLJA7aRBelEtXXkakZL1ms5oiLibfoaH4TJ+105Lue4r
 KTR0XKnYL07SkXryLXR5ppcyHBgRR6a8SeMDbOtcPC9We+/j3TVV3XWDmmmYMS8G480Y=;
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhrR-00GSit-9e
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:33:19 +0000
Received: by mail-wr1-f52.google.com with SMTP id p7so13759367wru.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IrecHDGGhuuW2uy8xg0gZxiHWZxNzWt+fwsCAZdUnjQ=;
 b=rC0jlPpG5RHjBDxkWP6NNtSMhwCFjhEGHCjW4b/2fv6q5dxzD3u4yKrrZkUFn0mP95
 XGJikuCsnZtTObKS4ap42LR3pshswKDXBSTalYJ40YDmmLwtqnmjdOjN79V05yT2b9Vt
 Sgj4W6p/+3Yc//WjeQt3SSSA74NO28vW0k6RYT4oQiXJYHE6NY4z0uKfB2GE6OX4eDAk
 ti3y0Q/4noMdeX6mXxcxAA9fmFA2MgWmANqYbyolieo7a1zPOZ54Lh4e7DqTTEA+pSKC
 F6WisuiQ5bZBUOvS6JiZWvdIbC62lKe68U43xvm7/l5TW+fe1GT/XTt5giCrRWLCAOu2
 KpSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IrecHDGGhuuW2uy8xg0gZxiHWZxNzWt+fwsCAZdUnjQ=;
 b=F5bFnOY6P2f6mpPgksABxq0/u6pAYsEDQBPYle6mqnAHtArbqFxvps6UaDOZott44N
 3aI2K9mMtvRlv6sTZfxdR6ZSf/ouK9quIjoL+Ahrpet1A7KxOp7zt7D1Pcqtvrz8PNDT
 iv1m4zeV5Y7ZduibCuMegjYoldNsmKEYIG8e16F4T/RbXY/6hcCXECx5/QhplLCYlOWM
 0O8D+bAGF+sSuLfBFNO8Eky4A6ilUIAQpeQZw5wHVchpOPUPKMF7wQatS/F1ufaDp7Dh
 u2NNjS2pdC125HZ1qrC5yurO/JTZ2C9UswDl56xZdNNiA9ZcrKqfc4bNgYq5ip8fu2xx
 a1Gw==
X-Gm-Message-State: AOAM5317Z9uR7Dq8/jA5X4YhM+2u9xQ6KdYiUuGee1iI25yOQvMDVzIK
 6ivzSOwOgEE+mh+pNNN5owQ9RGv46iCd1g==
X-Google-Smtp-Source: ABdhPJz7cC4NnNn65EdvJ8Uug3Zp0RDyzB8AKm1MBilLOc6LjMU4EPTgfxc0uvzy7btQJ+FNy+G8FA==
X-Received: by 2002:adf:a519:: with SMTP id i25mr3939197wrb.312.1621512056713; 
 Thu, 20 May 2021 05:00:56 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:56 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:41 +0100
Message-Id: <20210520120043.3462759-14-lee.jones@linaro.org>
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
 trust [209.85.221.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhrR-00GSit-9e
X-Mailman-Approved-At: Fri, 28 May 2021 15:37:00 +0000
Subject: [Linux-NTFS-Dev] [PATCH 13/15] fs: ntfs: mft: File headers to not
 make good candidates for kernel-doc
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

 fs/ntfs/mft.c:24: warning: expecting prototype for c(). Prototype was for MAX_BHS() instead

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/mft.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 0d62cd5bb7f84..d197d402933a7 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * mft.c - NTFS kernel mft record operations. Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2012 Anton Altaparmakov and Tuxera Inc.
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
