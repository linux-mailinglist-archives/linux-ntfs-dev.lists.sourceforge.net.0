Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 948273813E9
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 15 May 2021 00:48:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lhgbo-0007Rz-Dn; Fri, 14 May 2021 22:48:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@kernel.org>) id 1lhUgk-0003Zv-7T
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 10:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AE8y/MovTkfEdmpKiaeay/llu1wDUVGEXxyDNTigIqo=; b=INLLqynXk0y6Ghb7PQjO8f27T6
 tAdQ58MSyMBCkj35QL0Ts72GqxJCu/rP53ADuiI5F+uyo4On7Oo563BtpepQcjR4uSN1b7w1Dbel6
 jDv7pWcaXUOwdDY/gwBqpdSd5QRPAoy7U5TSeFIxJeolhZ2Jh6qopr8RNHrMXo0B6p8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AE8y/MovTkfEdmpKiaeay/llu1wDUVGEXxyDNTigIqo=; b=RGYpcRJHc5t5ZVA1TCOOinUTfG
 SJPfvQjSoYoQGoo8WTtfgY+sv2RAm/3uqiclGrv8U7Bm1uZTMWhcz5mF1caW7IJy6V2Zd58UcD4qi
 OKAYxAR12npK3aFt+8oWKpXKVaS23bq+SV9o8plm9Ae3qDSWWlGdD90ct5XTQtvz+9n4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhUga-0008Dr-Un
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 14 May 2021 10:04:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 22781613BC;
 Fri, 14 May 2021 10:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620986678;
 bh=59qmX/8bNt05Y62LGNDKy0eALe4d0WbxN5MMLh0uyE0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XJeJt9KiXSVd7Gjq10XACURQrKMRUKIA5Xi5HhXtHAF3CHfLFnIb47YVbTZ+sxreQ
 k4cGHJDE3p+eWz2chSFug4b80fJK3B/bEOgdL13hEDEfIscA9883HjawAPUbbPS1ZO
 NnRVZcIe/8XSfBiNSYROKJ59f3nrZ+qPB/t94c+KRhmlJZGsn28nLmyL647z+bhsGO
 sSDKnb0TC3CGNCOhIsdqzBG1+aqYOxmP12bKiDXKftDCLXUUPBQbm1ONjGxie8/j5P
 F9XIrsm90TU4dQQTq6HpLjeJkpiiMJ1WDj2eTIkhBdEgTL3BIz/y0hPjKS9cheoKoX
 7/LYqK0DGl9Zw==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-arch@vger.kernel.org
Date: Fri, 14 May 2021 12:00:56 +0200
Message-Id: <20210514100106.3404011-9-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210514100106.3404011-1-arnd@kernel.org>
References: <20210514100106.3404011-1-arnd@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhUga-0008Dr-Un
X-Mailman-Approved-At: Fri, 14 May 2021 22:48:38 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2 08/13] partitions: msdos: fix one-byte
 get_unaligned()
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
Cc: Jens Axboe <axboe@kernel.dk>, Arnd Bergmann <arnd@arndb.de>,
 linux-ntfs-dev@lists.sourceforge.net, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

A simplification of get_unaligned() clashes with callers that pass
in a character pointer, causing a harmless warning like:

block/partitions/msdos.c: In function 'msdos_partition':
include/asm-generic/unaligned.h:13:22: warning: 'packed' attribute ignored for field of type 'u8' {aka 'unsigned char'} [-Wattributes]

Remove the get_unaligned() call and just use the byte directly.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 block/partitions/ldm.h   | 2 +-
 block/partitions/msdos.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/block/partitions/ldm.h b/block/partitions/ldm.h
index d8d6beaa72c4..1a77ff09cc5f 100644
--- a/block/partitions/ldm.h
+++ b/block/partitions/ldm.h
@@ -85,7 +85,7 @@ struct parsed_partitions;
 #define TOC_BITMAP2		"log"		/* bitmaps in the TOCBLOCK. */
 
 /* Borrowed from msdos.c */
-#define SYS_IND(p)		(get_unaligned(&(p)->sys_ind))
+#define SYS_IND(p)		((p)->sys_ind)
 
 struct frag {				/* VBLK Fragment handling */
 	struct list_head list;
diff --git a/block/partitions/msdos.c b/block/partitions/msdos.c
index 8f2fcc080264..d78549d7619d 100644
--- a/block/partitions/msdos.c
+++ b/block/partitions/msdos.c
@@ -38,7 +38,7 @@
  */
 #include <asm/unaligned.h>
 
-#define SYS_IND(p)	get_unaligned(&p->sys_ind)
+#define SYS_IND(p)	(p->sys_ind)
 
 static inline sector_t nr_sects(struct msdos_partition *p)
 {
-- 
2.29.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
