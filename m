Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66616394538
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXm-00032f-Oi; Fri, 28 May 2021 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lee.jones@linaro.org>) id 1ljhpw-0004qM-TJ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yPp50sRjpSjcHg4CewUW4Ob97fInHe87YC20ZeiqPkU=; b=PZ105fcE1epVv2hJ89OaOIMLde
 Pau7ntGVImJfoqNmm2jvx+GcKhHbvJL5obW9eVU5bK++TGb/ZvhiZSk3F//XIje3yopfNnzQrZj70
 uLAqloOBpjo/HF+ySYlOK+c+FzLIIUHhdlbwtK/Yo48FSnvRAWimPWNNyBC/qJBlz2BU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yPp50sRjpSjcHg4CewUW4Ob97fInHe87YC20ZeiqPkU=; b=d3UcOpbBBjiTnAHdocMHfnzw4k
 H5Qx85KaIITgsj/h4Yk5SwtmPwZ/JkBT7kbIr70FV4DolLPuYmapkBpo1lmtuXj0F2XkyNlRuW4Xe
 6nff+0XZy+vOhSFSANDyEOp0YlNPv+ouN+DqW/gUbx//PQdiu36vYQIZs4lmR3GbWGlI=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljhpo-0004uU-BY
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:31:35 +0000
Received: by mail-lf1-f41.google.com with SMTP id q7so22898505lfr.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yPp50sRjpSjcHg4CewUW4Ob97fInHe87YC20ZeiqPkU=;
 b=yrqrlWl7Etb/gUz4hfx9PAkGl3jodYC4xbwx907FkULtGVl02kEtYJFxZ5+6jYVb+C
 AMSmO3BeWby4jwnHuesif2+1Fy8eefHhe93oHhrsCnUMV1avjkT+t7CCVw0aPZvBC7fe
 qAp8MyvRjX0CiQ0U7Md4bIMU9NVqG7rGZJnYkqonL8lCAwOSdYeaBZTF0CP3gE0sHWEu
 C3wLDVgq7SB84t86kAY5Z+jTZfBXe0llqxs0Os5z5MLVWU3m/z02Hdvc0GPdgx4TgEON
 2hmwjQHc/TIXa+sRlX8vTpGTSNjkcqGnRRDMLdsTQNTVNcV8uGmccsxGfwP2wFf1wK+5
 Qniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yPp50sRjpSjcHg4CewUW4Ob97fInHe87YC20ZeiqPkU=;
 b=UJFCZCxccTBY2ILNF8rk56XeZ7YBh5af9GjFIzjDs2EjwCsQ+wiSRH8SwC3sIJdAV9
 PE/kp3gUNDIcyCIkd5ZBxA3ByfDNbw3q4wURuElmTdpHHoC41SCBVkZj/kvcty6c9XYO
 dQjXdfja9ezkv+oeaQwKQAiqW2LIrht4Vxt8R2Y01MCpnffrVyFzcJDVuP4b/J2sWMvF
 rdBMu+N8baFJ1EvU21WSbHk/S2b3vGEsufo1VoeU6SPAjXFoI4+J9wv+VSGYretL8JTn
 jAoS3F+QZ0azygCWdNEtnhoAycipI3iT+rt2jntcAghKDjmzrIZ6rFrGCTv/6jg89VXT
 VKPQ==
X-Gm-Message-State: AOAM532WPhcxCQe9VoJju0opvpqVy+GKOl94yB7GDardCMKBYsd/C7Os
 Cq/bcS6mpSJMMXYfd/s3DWg4D4oLU3XDyQ==
X-Google-Smtp-Source: ABdhPJzFe+B/HMVmIyYSPjn67BV8Ik2wPqYPAqSevrZzEpjj5bb7Ecj4wzcCrFEzH+iePz55vceCcw==
X-Received: by 2002:adf:fa42:: with SMTP id y2mr3948139wrr.12.1621512057470;
 Thu, 20 May 2021 05:00:57 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:57 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:42 +0100
Message-Id: <20210520120043.3462759-15-lee.jones@linaro.org>
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
 trust [209.85.167.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
X-Headers-End: 1ljhpo-0004uU-BY
X-Mailman-Approved-At: Fri, 28 May 2021 15:37:00 +0000
Subject: [Linux-NTFS-Dev] [PATCH 14/15] fs: ntfs: compress: File headers are
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

 fs/ntfs/compress.c:24: warning: cannot understand function prototype: 'typedef enum '
 fs/ntfs/compress.c:24: warning: cannot understand function prototype: 'typedef enum '
 fs/ntfs/compress.c:24: warning: cannot understand function prototype: 'typedef enum '
 fs/ntfs/compress.c:24: warning: cannot understand function prototype: 'typedef enum '
 fs/ntfs/compress.c:24: warning: cannot understand function prototype: 'typedef enum '

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/compress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/compress.c b/fs/ntfs/compress.c
index 12444ac8f8ec5..a0a539b206171 100644
--- a/fs/ntfs/compress.c
+++ b/fs/ntfs/compress.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * compress.c - NTFS kernel compressed attributes handling.
  *		Part of the Linux-NTFS project.
  *
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
