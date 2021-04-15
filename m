Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49139362E6D
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 17 Apr 2021 09:56:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lXfoo-0007gR-1g; Sat, 17 Apr 2021 07:56:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <colin.king@canonical.com>) id 1lX1hE-0004uC-9T
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 15 Apr 2021 13:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m9FA+S5EWav3SiwmXikRBGhNiKLNIwumwf6wdltcbOc=; b=DRR0CvHE0D0g2UEfqoWQrOacjx
 s5Warf9v6x7eyZ7dXNRHig83xuT2Q0kN9WHk7H7afPU/WI+fEM9QqgHRIKn4zclB9Pw+UeHWDiUr2
 qr+zzhY6Cs1m9LAXNRRNst9zPrko/BSfDwKNCQ33738kUBsaiyYOvNrY+K9xRigaQb4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m9FA+S5EWav3SiwmXikRBGhNiKLNIwumwf6wdltcbOc=; b=S
 N7ukKrjdR98lH8D4yFimKqPGE5zvXHrsnICNoaC/U+z41Wv0MNU3pFy8+ZfEy8YJSUHOHbbfPBUMi
 3Cd/Jsc6ZW+Dwn5Rfd/HQv1UafTYvpmMU/n6+xHhqChxTC1BfwC3r0c5F24eHEFfrt+CcEvq+OTRM
 lDR0DcxMyXDa67EI=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA:128) (Exim 4.92.3) id 1lX1h9-0007gK-Bv
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 15 Apr 2021 13:06:12 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1lX1h1-0000Dq-Bl; Thu, 15 Apr 2021 13:05:59 +0000
From: Colin King <colin.king@canonical.com>
To: Richard Russon <ldm@flatcap.org>, Jens Axboe <axboe@kernel.dk>,
 linux-ntfs-dev@lists.sourceforge.net, linux-block@vger.kernel.org
Date: Thu, 15 Apr 2021 14:05:59 +0100
Message-Id: <20210415130559.1960198-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
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
X-Headers-End: 1lX1h9-0007gK-Bv
X-Mailman-Approved-At: Sat, 17 Apr 2021 07:56:41 +0000
Subject: [Linux-NTFS-Dev] [PATCH] partitions/ldm: remove redundant
 assignment to variable r_index
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

The variable r_index is being assigned a value that is never read,
the assignment is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 block/partitions/ldm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index d333786b5c7e..b40c0ac9022c 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -964,7 +964,6 @@ static bool ldm_parse_prt3(const u8 *buffer, int buflen, struct vblk *vb)
 		}
 		len = r_index;
 	} else {
-		r_index = 0;
 		len = r_diskid;
 	}
 	if (len < 0) {
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
