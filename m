Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 597A7A0BBD2
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 13 Jan 2025 16:26:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1tXMKw-00075g-P6;
	Mon, 13 Jan 2025 15:26:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1tWUye-0004ik-Bo
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 11 Jan 2025 06:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oR0J1yJ3iMDsAYZn016AHSObSP2Ip6FoC6wkatQksY8=; b=ebzRBqmASN/jmZjH2lufhF3WXu
 +dcsLRgoquCaAj5uyk4X4SzhJ9gDCmImnrhtISOxOM6x2EYOJ4IMsXXp2SNek6eg3cSZ5J4HrmwJa
 FZiSzqSpi9jGmhw5G3COYvwj9OxIh6X3ZrPxf9luFD05HFTBot54qMOI+pwHzygAqQiU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oR0J1yJ3iMDsAYZn016AHSObSP2Ip6FoC6wkatQksY8=; b=c
 9CipDxy68E8sV05S0KThOVAaTZfF6ljzUEBppekKR4rdlEWBbXRM6pJEkb7eOgWDoJNeR82ZqWPRo
 MTZobqHftMrxrtgFl2apPv0QssHPJsufvDzDQfUsA3oYmGAy7/Bw64eR4Gs33vfebHHmrTjG/HLHS
 i3GoLqU1g4WHf2cQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWUyc-0005jx-4A for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 11 Jan 2025 06:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=oR0J1yJ3iMDsAYZn016AHSObSP2Ip6FoC6wkatQksY8=; b=qE6DyCzI4YJEkaMceiNe0Hjgjd
 dGTXjlWYqRyESESuGPnIlfQL2rjC14HzXC8u27Wj98ATclSARGWMbqEY6E4kMsbKp7kC+jHFu4YOt
 ubAOhWCipsPhaR4Ob1Vu5WREVOkH9UQ9wNbniprnxsXQA+4Lri9vUezd+ceglVMVII+LeJtf/7DKF
 RoxZCZm2mL/VCToLeELnB4wj3Bxcf9ErjzFBDxwnoqw9Gh2N4fFusRl5OL/5e0hGfdpWoFSSx610m
 RpFkmhJgn/YJ9nySj9NCtjmcNEpLAwIawEhdRUrwNlfoXaBPfrJZq5tnrfmK/8haUXMZ8ezTsYmVX
 rLHN8sAg==;
Received: from [50.53.2.24] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
 id 1tWUyV-00000000H5q-1uMv; Sat, 11 Jan 2025 06:27:59 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-block@vger.kernel.org
Date: Fri, 10 Jan 2025 22:27:58 -0800
Message-ID: <20250111062758.910458-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove the file's first comment describing what the file is.
 This comment is not in kernel-doc format so it causes a kernel-doc warning.
 ldm.h:13: warning: expecting prototype for ldm(). Prototype was for
 _FS_PT_LDM_H_() instead 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.137.202.133 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.137.202.133 listed in sa-accredit.habeas.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tWUyc-0005jx-4A
X-Mailman-Approved-At: Mon, 13 Jan 2025 15:26:41 +0000
Subject: [Linux-ntfs-dev] [PATCH] partitions: ldm: remove the initial
 kernel-doc notation
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Randy Dunlap <rdunlap@infradead.org>, Jens Axboe <axboe@kernel.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Remove the file's first comment describing what the file is.
This comment is not in kernel-doc format so it causes a kernel-doc
warning.

ldm.h:13: warning: expecting prototype for ldm(). Prototype was for _FS_PT_LDM_H_() instead

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: "Richard Russon (FlatCap)" <ldm@flatcap.org>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: Jens Axboe <axboe@kernel.dk>
---
 block/partitions/ldm.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20250108.orig/block/partitions/ldm.h
+++ linux-next-20250108/block/partitions/ldm.h
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * ldm - Part of the Linux-NTFS project.
  *
  * Copyright (C) 2001,2002 Richard Russon <ldm@flatcap.org>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
