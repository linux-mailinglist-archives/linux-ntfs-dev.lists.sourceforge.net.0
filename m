Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5432D394532
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-00030K-FP; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhUJ-0000zH-Ga
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LSk8PJWA2mLFQptLpvRy6SQT0qGCu3VNDirVI3p3YFM=; b=GOgaekuU/beoa/PBLr6yCxx3pj
 W8FWrKtMZJ2WoFadGBcAeuHOWr0o9w5ZQNUxIcJ9+TaaVnnLpdsoWV0CZxBR/APYQQBOuVLcA7BiM
 YzVqLCX1144n4yBkxc7dnsgeo9LpWpaVeQpq8URr+G2LazpAYsplxcXNGumWCrSs6PvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LSk8PJWA2mLFQptLpvRy6SQT0qGCu3VNDirVI3p3YFM=; b=YJFib/LY6Ar9vkbE8QzFHaJbgs
 pn7CT473Nd9eAGfR8exdicuX1wHs5WvkeIv0r7+lB3LEcW8wmkL/UM9bF7Rxl+l7zuVzwOEtMXcxV
 d1tx8n7BmU8gVaACyKpt8uvGzLrQqH23+FLe6mXkh1T0I1lA/CeXaxZgLrKM6ueYgtRc=;
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljhUD-00035g-Cj
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:09:15 +0000
Received: by mail-lj1-f173.google.com with SMTP id 131so19414009ljj.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LSk8PJWA2mLFQptLpvRy6SQT0qGCu3VNDirVI3p3YFM=;
 b=ryk/qhWaGWbbs1acfB/NE3DeKWAKr1FiJRHcXoyvdhDZDhM0d4FyBU6CJ/6bC3F1Kt
 VoeK427t0Ocyjr7o7CNSAou5JIaKHZZJZG8bIfXxLuuMZnS98PCG4uR+VVEaCWHVVZS0
 0+TG4YXxlVmlSIEbQCkMyur7FFIKVZ99IN9mpiQLpRuK4hTbIEVpqvS5VfBpeEiRC+vZ
 z9K1Vzg1pzEvW5Q7grA659abPt4jvlDSAYj3Xie3v6VPbQz9hygPCtrtXSk36NIATWj7
 +i9GEhS7fIdnc353fUsxHV48/0emHfNmwr0bSp+6ZNutRsEp76b5ML9PAjUDfHHdrZgm
 IGIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LSk8PJWA2mLFQptLpvRy6SQT0qGCu3VNDirVI3p3YFM=;
 b=ukJAuanZ3vx7k8B9Nl2p/fg9G1pjn9GTrCNDjtVYK+gL+z4CVZ+cloDSKrr79xn3rJ
 hnstxMVhVfhMEqZ2DKjJ6vAi8inHLDQXvq/BsxErDmwpztCh/ekpwgXMIaF3ig9WfOLu
 d/w72EYLH+gKB/yeGQ2ukpPhTyIvLdxVxCNRxmL2ffeqLdYHx+t5B1+Cour03bZgOkhh
 +gwTWfARm1Tex0hAKUOxR2rk4/DbmuhGr5C3EEZj1rH5i1e9wt6XXaiYF1+CQrx+TYQV
 dhq265wkI9JNvVScf4kHIMxYYg2Q3uLN8cShNDPnXfl6gh1uJToTt2c1ixfD/e63jLHC
 Ba3g==
X-Gm-Message-State: AOAM532hfMa044sd6MApvthbEwIgD8SAfLkpO3v36kg87FzUjh/iYxgJ
 yR4h9Agnf+svuk2KDUb0VVhWS41ANnm44A==
X-Google-Smtp-Source: ABdhPJzu5t4scsuBudttjz2xSwz5DOedJgiewDQe4MinYJ1i57ogOz9OqzzK2ducKUUPjKe9tTVgAA==
X-Received: by 2002:a5d:44cb:: with SMTP id z11mr3984539wrr.159.1621512049315; 
 Thu, 20 May 2021 05:00:49 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:48 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:32 +0100
Message-Id: <20210520120043.3462759-5-lee.jones@linaro.org>
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
 trust [209.85.208.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.173 listed in wl.mailspike.net]
X-Headers-End: 1ljhUD-00035g-Cj
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 04/15] fs: ntfs: unistr: Add missing param
 descriptions for 'name{1, 2}_len'
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

 fs/ntfs/unistr.c:87: warning: Function parameter or member 'name1_len' not described in 'ntfs_collate_names'
 fs/ntfs/unistr.c:87: warning: Function parameter or member 'name2_len' not described in 'ntfs_collate_names'

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/unistr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/ntfs/unistr.c b/fs/ntfs/unistr.c
index a6b6c64f14a93..faa73be4201f1 100644
--- a/fs/ntfs/unistr.c
+++ b/fs/ntfs/unistr.c
@@ -65,7 +65,9 @@ bool ntfs_are_names_equal(const ntfschar *s1, size_t s1_len,
 /**
  * ntfs_collate_names - collate two Unicode names
  * @name1:	first Unicode name to compare
+ * @name1_len:	length of @name1
  * @name2:	second Unicode name to compare
+ * @name2_len:	length of @name2
  * @err_val:	if @name1 contains an invalid character return this value
  * @ic:		either CASE_SENSITIVE or IGNORE_CASE
  * @upcase:	upcase table (ignored if @ic is CASE_SENSITIVE)
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
