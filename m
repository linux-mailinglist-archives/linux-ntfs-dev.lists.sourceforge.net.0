Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2E8901B0
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 28 Mar 2024 15:24:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rpqgZ-000458-3r;
	Thu, 28 Mar 2024 14:24:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1rpqPD-0005VG-7G
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Mar 2024 14:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d095wkAl1j14IAFVHT/e19h8dAoWUNV1QlLln0/BFus=; b=eoITL33eMVp1yArTbRmxVBLgbW
 9KMsz6vUvoY4QMVPBVu3kqBCE0vrt8Fzn2/r0iBVXuRF1MCXmeJCdBXhvGmBjL1GtQ9KTD998hjBj
 sIuOYbj7YXcZi2vpgtUR8g8G4d7L4qJWkJQAN1EZYU9P06kXNFt8VUft6CJAZw6ez2VI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d095wkAl1j14IAFVHT/e19h8dAoWUNV1QlLln0/BFus=; b=gxl2IZ7giV6q+FhQGQWqpD+Zyd
 hNMwtZL3ZniKNbPaUhz95ERrpH/S8Es67QL6yADKi/wbSMTLfpYn1qhHRp0DurJGiY5g5dbf1q3Xb
 ngf91Mx+LWxA537yh7Xygvegij2Ul93CBzoorfXnWg7d9oCNrXNWT3eM+kh3Yf/uxa1Y=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpqPC-0006Iw-Jn for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Mar 2024 14:06:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 872CB6147D;
 Thu, 28 Mar 2024 14:06:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C68FAC433C7;
 Thu, 28 Mar 2024 14:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711634808;
 bh=yHFhPfrMMHs59SCQp+6DZsAO2LqRForPxbzKn/h9OZA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R998RHJ3bF9lTIX5YWthw9VZaOAKxAC8PYU9VG6hxbfvkV/2ojvYP+QAo5KdLlrQ7
 /wz84TbbA9274ily1eOENho1tB+8cFC9giRCQegDvg4tPyUwccnz0Bdw4+I8Moyt5s
 Rw0NhibOpG0YPZHN8OLMstOKFp8ZFMWrowVFFP0BQ5sTlgZ4NiVcAIGqdCXFuNq3ne
 uKY3f9mdvItaaz+H+E9vnv4jxK/06AW1LCwyelKi2hAuNcupkYrRwVqZD+9E7z3+B5
 dAytiqSnnjaHoDp+hvabvCDcEm3Rry4aP06xRnDKpxAYTsukGYcIucItdTYFK0MG4s
 JHhAW59Pcv4eg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kernel@vger.kernel.org, "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Jens Axboe <axboe@kernel.dk>
Date: Thu, 28 Mar 2024 15:04:51 +0100
Message-Id: <20240328140512.4148825-8-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240328140512.4148825-1-arnd@kernel.org>
References: <20240328140512.4148825-1-arnd@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Arnd Bergmann <arnd@arndb.de> The strncpy() here can
 cause a non-terminated string, which older gcc versions such as gcc-9 warn
 about: In function 'ldm_parse_tocblock', inlined from 'ldm_validate_tocblocks'
 at block/partitions/ldm.c:386:7,
 inlined from 'ldm_partition' at block/partitions/ldm.c:1457:7:
 block/partitions/ldm.c:134:2: er [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rpqPC-0006Iw-Jn
X-Mailman-Approved-At: Thu, 28 Mar 2024 14:24:54 +0000
Subject: [Linux-ntfs-dev] [PATCH 07/11] block/partitions/ldm: convert
 strncpy() to strscpy()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-block@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

The strncpy() here can cause a non-terminated string, which older gcc
versions such as gcc-9 warn about:

In function 'ldm_parse_tocblock',
    inlined from 'ldm_validate_tocblocks' at block/partitions/ldm.c:386:7,
    inlined from 'ldm_partition' at block/partitions/ldm.c:1457:7:
block/partitions/ldm.c:134:2: error: 'strncpy' specified bound 16 equals destination size [-Werror=stringop-truncation]
  134 |  strncpy (toc->bitmap1_name, data + 0x24, sizeof (toc->bitmap1_name));
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
block/partitions/ldm.c:145:2: error: 'strncpy' specified bound 16 equals destination size [-Werror=stringop-truncation]
  145 |  strncpy (toc->bitmap2_name, data + 0x46, sizeof (toc->bitmap2_name));
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

New versions notice that the code is correct after all because of the
following termination, but replacing the strncpy() with strscpy_pad()
or strcpy() avoids the warning and simplifies the code at the same time.

Use the padding version here to keep the existing behavior, in case
the code relies on not including uninitialized data.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 block/partitions/ldm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index 38e58960ae03..2bd42fedb907 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -131,8 +131,7 @@ static bool ldm_parse_tocblock (const u8 *data, struct tocblock *toc)
 		ldm_crit ("Cannot find TOCBLOCK, database may be corrupt.");
 		return false;
 	}
-	strncpy (toc->bitmap1_name, data + 0x24, sizeof (toc->bitmap1_name));
-	toc->bitmap1_name[sizeof (toc->bitmap1_name) - 1] = 0;
+	strscpy_pad(toc->bitmap1_name, data + 0x24, sizeof(toc->bitmap1_name));
 	toc->bitmap1_start = get_unaligned_be64(data + 0x2E);
 	toc->bitmap1_size  = get_unaligned_be64(data + 0x36);
 
@@ -142,8 +141,7 @@ static bool ldm_parse_tocblock (const u8 *data, struct tocblock *toc)
 				TOC_BITMAP1, toc->bitmap1_name);
 		return false;
 	}
-	strncpy (toc->bitmap2_name, data + 0x46, sizeof (toc->bitmap2_name));
-	toc->bitmap2_name[sizeof (toc->bitmap2_name) - 1] = 0;
+	strscpy_pad(toc->bitmap2_name, data + 0x46, sizeof(toc->bitmap2_name));
 	toc->bitmap2_start = get_unaligned_be64(data + 0x50);
 	toc->bitmap2_size  = get_unaligned_be64(data + 0x58);
 	if (strncmp (toc->bitmap2_name, TOC_BITMAP2,
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
