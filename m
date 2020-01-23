Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DE314666D
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jan 2020 12:15:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1iuaSZ-0000wL-SW; Thu, 23 Jan 2020 11:15:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <colin.king@canonical.com>) id 1iuQNH-0000Ox-IP
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jan 2020 00:29:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=niT5MJIwDPh1F9QQlZaT09NvlVvmG+M7u1EDGg2fXrg=; b=FzkCvZHkG4sCvQpn+pCErTWlsq
 x1ib+yDirm8W6SiUlWcw1e/pL/s0mobYx6QIFynDOO9stiy9yFdHyVlOeXnmHNSTF2vtu27TnQxo7
 5zfOGapaBaz8TO5NoV16YSblZqX+jswyaqQcRwUfOFxT1HJl3kUfunlRgj+/TetYanKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=niT5MJIwDPh1F9QQlZaT09NvlVvmG+M7u1EDGg2fXrg=; b=C
 zbPsewrYE8YrX0UyRTSqVA11LIYTv5wkTKMJiWPBLX85mv/cO1resJjDUGdP574gqjxefT3zyiFTe
 9TVyimpsqhuMCEFdWPrsHTS8O6SfhTFrXbtNueZ8Mk7EJFCJrEW8y75AQAks8EvdV5IOi8POV1oo8
 1F7PwOzHuz1si2c0=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA:128) (Exim 4.92.2) id 1iuQNF-00FD46-CJ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jan 2020 00:29:31 +0000
Received: from [82.43.126.140] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iuQN8-0004aM-9o; Thu, 23 Jan 2020 00:29:22 +0000
From: Colin King <colin.king@canonical.com>
To: Richard Russon <ldm@flatcap.org>, Jens Axboe <axboe@kernel.dk>,
 linux-ntfs-dev@lists.sourceforge.net, linux-block@vger.kernel.org
Date: Thu, 23 Jan 2020 00:29:21 +0000
Message-Id: <20200123002921.2832716-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iuQNF-00FD46-CJ
X-Mailman-Approved-At: Thu, 23 Jan 2020 11:15:38 +0000
Subject: [Linux-NTFS-Dev] [PATCH] partitions/ldm: fix spelling mistake "to"
 -> "too"
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

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a ldm_error message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 block/partitions/ldm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index fe5d970e2e60..a2d97ee1908c 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -1233,7 +1233,7 @@ static bool ldm_frag_add (const u8 *data, int size, struct list_head *frags)
 	BUG_ON (!data || !frags);
 
 	if (size < 2 * VBLK_SIZE_HEAD) {
-		ldm_error("Value of size is to small.");
+		ldm_error("Value of size is too small.");
 		return false;
 	}
 
-- 
2.24.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
