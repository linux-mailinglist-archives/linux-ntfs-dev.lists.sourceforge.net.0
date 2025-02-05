Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C87B9A3B964
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 19 Feb 2025 10:32:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1tkgRI-0001Zp-86;
	Wed, 19 Feb 2025 09:32:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1tfg66-0007rK-Db
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 05 Feb 2025 14:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8VijGU9HOfJ7t2vd6viFYSk5AsNNUcPaRYEOYvhA5jE=; b=D91lv4By38IQo5Rdq6YKmLC6TJ
 FcDsV1dG2WkpsKRQCPMYnL2U3UsoTKH0gvJlDmrewuxzYvLe37gGBoyILohO7PNd5pGQfl2ABWhWw
 8yjzyW3aaokTSohIdeUy2EaY1G+UVNZFr2zcKwJJ18Y08dQjtXyIMgYrqipEI2ShDht4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8VijGU9HOfJ7t2vd6viFYSk5AsNNUcPaRYEOYvhA5jE=; b=dWrI88wz+HMBe8U1LAYvF9VnT+
 vwTXEwgurZxz2I5Mu7icCrPH09ks6sts+B+CFAY4b4G6D4unFlobWEkd9qtIlbCo6icpelCbRreHF
 wcB3YoinFGU5kq/U4rMbjDIQRDjf96QqEeQGJXpLB8BV657CFUC2JantufEPq4fQwqsc=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfg65-0004Yw-P4 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 05 Feb 2025 14:09:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 81594A43660;
 Wed,  5 Feb 2025 13:49:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C84D1C4CED1;
 Wed,  5 Feb 2025 13:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1738763500;
 bh=ZY+o/l9iStL2e+pEG9C4K0KNV3F+E1KDem2EuVoHUA4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qZjBbiURcYagExgS09aQeDvprwz36KTN+JYiPHXhe+dkGPuijdLpWdK3Jdx1bRUvF
 YTeCWRVJ+e7+dti6MG1K910N0QG5gWWsa/eSmpuziyGOckcEuvlMDOudXPZA7Xtv8I
 dVQ4JPSOYJyBCBVlbCdJsa7I8DBf6OmYZ0zWoryQ=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Wed,  5 Feb 2025 14:36:17 +0100
Message-ID: <20250205134456.092775427@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250205134455.220373560@linuxfoundation.org>
References: <20250205134455.220373560@linuxfoundation.org>
User-Agent: quilt/0.68
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  6.12-stable review patch. If anyone has any objections,
 please let me know. From: Randy Dunlap <rdunlap@infradead.org> 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tfg65-0004Yw-P4
X-Mailman-Approved-At: Wed, 19 Feb 2025 09:32:15 +0000
Subject: [Linux-ntfs-dev] [PATCH 6.12 022/590] partitions: ldm: remove the
 initial kernel-doc notation
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, patches@lists.linux.dev,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

6.12-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Randy Dunlap <rdunlap@infradead.org>

[ Upstream commit e494e451611a3de6ae95f99e8339210c157d70fb ]

Remove the file's first comment describing what the file is.
This comment is not in kernel-doc format so it causes a kernel-doc
warning.

ldm.h:13: warning: expecting prototype for ldm(). Prototype was for _FS_PT_LDM_H_() instead

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Richard Russon (FlatCap) <ldm@flatcap.org>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: Jens Axboe <axboe@kernel.dk>
Link: https://lore.kernel.org/r/20250111062758.910458-1-rdunlap@infradead.org
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 block/partitions/ldm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/partitions/ldm.h b/block/partitions/ldm.h
index e259180c89148..aa3bd050d8cdd 100644
--- a/block/partitions/ldm.h
+++ b/block/partitions/ldm.h
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * ldm - Part of the Linux-NTFS project.
  *
  * Copyright (C) 2001,2002 Richard Russon <ldm@flatcap.org>
-- 
2.39.5





_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
