Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D761B4893
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 22 Apr 2020 17:26:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jRHGx-0006Kx-Ev; Wed, 22 Apr 2020 15:26:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jRF2L-0002kZ-H0
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 22 Apr 2020 13:03:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o+4CloF+NEoXA9e7vWhYLqWBsPP1aARfjFTClV0yWeA=; b=XFGCctkI6xv7TlvMikUdlzxIcF
 ZX+ZLHswAtC4QMswCkhgF1irJWGV5U44oX87sAQWrvKUEYnvsvO5L8DB6IFhxK8OgwNpPMPVdaI/L
 9LXtd9w2x++/HD84IGtO2xDUpw8r2rQTnWQqWHrxyFhBtT9gLr8QkMW53KIbq9MqlWEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=o+4CloF+NEoXA9e7vWhYLqWBsPP1aARfjFTClV0yWeA=; b=R
 6hod9b63biBhTCTecLY7vDVmo9PBU2nTtQGuEKW6/WWYsK4RT5QpCdL+bS+Hf9/gI04ZvrGeUHsA7
 tBH5pLZiW6PadMFL4G7aSudPXNaIvNQruZVbqefhxLQxaH+4A1BNFU7rA/f+ZNGswjDgfweejBLXR
 SeWKRBLblrGzbF6M=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jRF2J-006Jsg-02
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 22 Apr 2020 13:03:33 +0000
IronPort-SDR: XygDzCbtYrDvQdQjLmeC2lIkrBYaqUVLbybg9cAas+eeXlGFx6fCcq/gIIROwd6kaYNb3hjuis
 F819Era/zZtA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 06:03:20 -0700
IronPort-SDR: p23+6rBA3QDR5/MsAuw5wRg/51MtFoQOG1G3J3+YqZbElGpAjAK0kc3TTcxuwxOheK2NIV1Tqy
 wdD6YefPabcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,414,1580803200"; d="scan'208";a="290827168"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga002.fm.intel.com with ESMTP; 22 Apr 2020 06:03:19 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 0ECB558F; Wed, 22 Apr 2020 16:03:17 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Richard Russon (FlatCap)" <ldm@flatcap.org>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net
Date: Wed, 22 Apr 2020 16:03:17 +0300
Message-Id: <20200422130317.38683-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jRF2J-006Jsg-02
X-Mailman-Approved-At: Wed, 22 Apr 2020 15:26:46 +0000
Subject: [Linux-NTFS-Dev] [PATCH v1] partitions/ldm: Replace uuid_copy()
 with import_uuid() where it makes sense
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

There is a specific API to treat raw data as UUID, i.e. import_uuid().
Use it instead of uuid_copy() with explicit casting.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 block/partitions/ldm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index 6fdfcb40c537b..d333786b5c7eb 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -910,7 +910,7 @@ static bool ldm_parse_dsk4 (const u8 *buffer, int buflen, struct vblk *vb)
 		return false;
 
 	disk = &vb->vblk.disk;
-	uuid_copy(&disk->disk_id, (uuid_t *)(buffer + 0x18 + r_name));
+	import_uuid(&disk->disk_id, buffer + 0x18 + r_name);
 	return true;
 }
 
-- 
2.26.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
