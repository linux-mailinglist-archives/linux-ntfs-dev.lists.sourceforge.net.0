Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA1436A6CB
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 25 Apr 2021 12:52:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lacNQ-0002sL-P3; Sun, 25 Apr 2021 10:52:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wanjiabing@vivo.com>) id 1labhE-0001lP-Cg
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 25 Apr 2021 10:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0QZIVgvheiAout9ReV3JR/EBsOx+dZzBw0I6BebK/dk=; b=XYkCGauxfrSDrfipYs/snG/FY8
 e1qMSvq2ogSRVVRoinswtCOhiTESezWhSgHzD6NKfQ/19hWnB6fowojcV/4V6w84PAUneTOgHvRVt
 dX5UgPk/MQniZY2bdm2StX0BDdO2jnPF+hbxt4vOc8nweVieozMO9vumx5nGM1nZsIzI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0QZIVgvheiAout9ReV3JR/EBsOx+dZzBw0I6BebK/dk=; b=H
 CniwI04XStBbXo1opE5mdkzkDktEkzv4mjD9dAdln01Xngei3r+pcLYxPovuPPSxlgYL9jmH+0qtH
 kk6+rjsRfxV5o6Iac3VF4E3HL0wwHYlmczjNn9kWxSsMdyWMFOY1FpV7QxNqgViycLj6V//i+uOd1
 UHaT9vRgXHa4DjHo=;
Received: from [115.236.121.145] (helo=mail-m121145.qiye.163.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1labgz-006Cf5-98
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 25 Apr 2021 10:09:01 +0000
Received: from wanjb-virtual-machine.localdomain (unknown [36.152.145.182])
 by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 38CE68001DD;
 Sun, 25 Apr 2021 10:45:41 +0800 (CST)
From: Wan Jiabing <wanjiabing@vivo.com>
To: Anton Altaparmakov <anton@tuxera.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Sun, 25 Apr 2021 10:45:33 +0800
Message-Id: <20210425024533.12540-1-wanjiabing@vivo.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZQ0tDS1YeTUNCGUMdHk8aSR9VEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
 9ISFVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRQ6CRw*Hz8VOAMcTz8fND0y
 DjEwCwhVSlVKTUpCSEpDTE9KTEhJVTMWGhIXVQwaFRESGhkSFRw7DRINFFUYFBZFWVdZEgtZQVlI
 TVVKTklVSk9OVUpDSVlXWQgBWUFKTEtONwY+
X-HM-Tid: 0a7906eb1977b03akuuu38ce68001dd
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.236.121.145 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [115.236.121.145 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1labgz-006Cf5-98
X-Mailman-Approved-At: Sun, 25 Apr 2021 10:52:35 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Remove repeated uptodate check for
 buffer
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
Cc: kael_w@yeah.net, Wan Jiabing <wanjiabing@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

In commit 60f91826ca62 ("buffer: Avoid setting buffer bits that are already set"),
function set_buffer_##name was added a test_bit() to check buffer,
which is the same as function buffer_##name.
The !buffer_uptodate(bh) here is a repeated check. Remove it.

Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 fs/ntfs/logfile.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
index bc1bf217b38e..9695540ce581 100644
--- a/fs/ntfs/logfile.c
+++ b/fs/ntfs/logfile.c
@@ -796,8 +796,7 @@ bool ntfs_empty_logfile(struct inode *log_vi)
 			get_bh(bh);
 			/* Set the entire contents of the buffer to 0xff. */
 			memset(bh->b_data, -1, block_size);
-			if (!buffer_uptodate(bh))
-				set_buffer_uptodate(bh);
+			set_buffer_uptodate(bh);
 			if (buffer_dirty(bh))
 				clear_buffer_dirty(bh);
 			/*
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
