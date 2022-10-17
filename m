Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9196601B8C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 17 Oct 2022 23:54:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1okY4W-000716-Kb;
	Mon, 17 Oct 2022 21:54:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1okXjV-0001Pe-Fx
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 17 Oct 2022 21:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mrrqbi0ETnzpqhsWzfV/EevlRMo1cT5WVvO8a9vtxFI=; b=GCcjYaPOeMh8oefm1kat7XKBUN
 lxmi8/RtQSbCCNfgB+HMXmt37Ayj2WzQBSBtEtLaFtRqJojaV/LO/bggzI5Hr3EoDeaW+O2Sq49MK
 5xraiaU8cSEbPob9tO8IjLJRhRtPPtJPRtXGAh2eEgiSfVj1UeIkAtzyMnpDYfbtpVtE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Mrrqbi0ETnzpqhsWzfV/EevlRMo1cT5WVvO8a9vtxFI=; b=R
 yLGx0WqSeCdYfR4vJ1cP9cEMzyO2agojl4iI+e+UlTszBS582Q/5t7CbKQknfDRwIIPPcMFVF5Han
 zZ8cM+07NUJdz5uoBFJa+tl8xN76rCphKJZclSXWh0DEcut2W5rU1jymOgyJPP1XN7wntVg6FrlQ/
 laedI0DjzhWLV4Mc=;
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1okXjT-007PCA-B9 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 17 Oct 2022 21:33:13 +0000
Received: by mail-wr1-f52.google.com with SMTP id f11so20489916wrm.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 17 Oct 2022 14:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Mrrqbi0ETnzpqhsWzfV/EevlRMo1cT5WVvO8a9vtxFI=;
 b=UdHksNN5rbd+RRvD3BeLgx17CdEj+flAObUVYgo/sRpGqkAIUan5iaac3ySA8qkQkd
 hx7QqP4GyoXDJhwSq3nVouYXs6WH+8+GTb+0iu6RVkOhL900KXB7x7y3mGx9tc3w2Cbt
 daLkdaGHUZJo6LlVfb1DWX4A2IsthEaCLoc2LHEOzJIrcxVNXwqUC0+BWwPDjqluTxgP
 g78+v+UbeomWaUKDZf/8J1WCBJKwbJUFE5bLuQJ4WdR0jVVIi4J5Mtsanij9uK5V8mFm
 81nr5Won27d5y53ictdytiaZ+tJ0BWHwR8w9aA26c82fwwJ294zaE1C9DIXDqM/3av4V
 8/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Mrrqbi0ETnzpqhsWzfV/EevlRMo1cT5WVvO8a9vtxFI=;
 b=4Okfj91NGX2k2Ah/gppbcmGoLr94LKwabkW94/MIkE3Gpc2/RNLowDJgug+YCWJonX
 Gj3gukm5X4pHaQqCXe8NPDtLBaUcrvrMRiVdWcHoJRG7DObTwxuA+7dHli3OE/TFhA8A
 3jZKfCrw5bJTH1xYkkACq481bKRTEpevuVDBrGPt95lqW5T2KsBbVVPdBBlB40cvU1Qv
 Q+DF/G91CnZ8UnDoAvDbRBZlrqG6ZLezY4TvW3UMyj8JX+dZfWeR1m0T4i+QTCaCkfNM
 PxBDIVQep6YjwcaN10ok5gMGOzd84bH92Sy3iTbNMyiMtGKDKTdq7PN4OktF5onT3bPe
 LVPA==
X-Gm-Message-State: ACrzQf2g7ULKtMUC6HhUDLqbdeCVw4Gcjk2aKSPQ7j+dzYmvjsblOpZu
 CjC8JDdoKOuMvhr1rY0EH4bLtPVNtwg4bQ==
X-Google-Smtp-Source: AMsMyM477UyaymfEn2BUTuCU3QmLWSbebTtZ9HUU9ZTvd0l6IBA7/FDwH3gmK40/MblMYKXehCNNOA==
X-Received: by 2002:a5d:6745:0:b0:22f:ed4:65d7 with SMTP id
 l5-20020a5d6745000000b0022f0ed465d7mr7549035wrw.259.1666042384871; 
 Mon, 17 Oct 2022 14:33:04 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 j19-20020a05600c1c1300b003c6c1686b10sm18151187wms.7.2022.10.17.14.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Oct 2022 14:33:04 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net
Date: Mon, 17 Oct 2022 22:33:03 +0100
Message-Id: <20221017213303.862794-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pointer m is being assigned a value that is never read, 
 it is being re-assigned to a NULL later on. The assignment is redundant and
 can be removed. Cleans up clang scan build warning: fs/ntfs/file.c:194:3:
 warning: Value stored to 'm' is never read [deadcode.DeadStores] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.52 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1okXjT-007PCA-B9
X-Mailman-Approved-At: Mon, 17 Oct 2022 21:54:55 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove redundant assignment to
 pointer m
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The pointer m is being assigned a value that is never read, it
is being re-assigned to a NULL later on. The assignment is
redundant and can be removed.

Cleans up clang scan build warning:
fs/ntfs/file.c:194:3: warning: Value stored to 'm' is never
read [deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/ntfs/file.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index c481b14e4fd9..56d08374739a 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -191,7 +191,6 @@ static int ntfs_attr_extend_initialized(ntfs_inode *ni, const s64 new_init_size)
 				err = -EIO;
 			goto err_out;
 		}
-		m = ctx->mrec;
 		a = ctx->attr;
 		BUG_ON(!a->non_resident);
 		BUG_ON(old_i_size != (loff_t)
-- 
2.37.3



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
