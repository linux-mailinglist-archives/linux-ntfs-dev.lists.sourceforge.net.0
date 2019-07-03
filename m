Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B56355E54B
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  3 Jul 2019 15:21:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1hifCS-0008HT-Bm; Wed, 03 Jul 2019 13:21:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <huangfq.daxian@gmail.com>) id 1hif93-0003ji-KM
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Jul 2019 13:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hggecp1J+pdV9ln1gXz86pKkAe6jbFwdutsQVSWvACY=; b=K9c+g16ZcG74oOBkAZLFDTBghN
 Jc8IABtga3znIauRHV7A/deR4CaEbObGDodVtS3x8ntnh9tyLPnY8Eoyvf9p1Jbs2DLuZHkuR6gBR
 rb1vZqbKFTVohdL+s4BM3smI9pewYCiZFIwbrJdKuGQFl3LaRy84hdpGsBGNB5/7i3GU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hggecp1J+pdV9ln1gXz86pKkAe6jbFwdutsQVSWvACY=; b=PDis/SOHHtF04zBVvei7ffM8NQ
 5oFXW/kUMN63toG9H35NoBK93TOI18Rrap/UJ2UW5kk3iuyXgrswh619BoEDTzzji8nV65JS0SGDw
 rI5wqjgBJ+wkV1zWQmfxVT1j9HHQrcmCOi3n2DxSvAj5vnDWCA4dmr9Sg4Yldc2Ecr0o=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hif9I-004D6K-Kn
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Jul 2019 13:18:14 +0000
Received: by mail-pg1-f193.google.com with SMTP id z75so1247023pgz.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 03 Jul 2019 06:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Hggecp1J+pdV9ln1gXz86pKkAe6jbFwdutsQVSWvACY=;
 b=X7CQM8ZDr3/XMvsumnENiXiDx1duWsXiknUhw75n4V1facoPscVA7J7IfiQPophGdg
 XBKrXL+iiozX6syhhUpNBpNdcc5sz8CjIUzTL2lv9zW1iTi/Gw3BSTFSaPVJl8iOqPpB
 hlz+rA6lYu3wASur3Sq0vB8d+Ymg/ABfezuuUVDE7qBaAlpT9X+328MomvAh77JyNd/B
 NggFpl7qR8ndKWqnZj2XUYftoE85ZwrRxk4E31Cs2kI3V9/o9tRLTDGxdTsskEDkQgTV
 ZniA0xUX9jCPKJlQKnrVQD6wK0Q4d8jZdqA07pXo14RQWcCIolMxw/7FWPrYgtCY8wJa
 ppgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Hggecp1J+pdV9ln1gXz86pKkAe6jbFwdutsQVSWvACY=;
 b=pdPZXau+p6rWOEkHc12lduUlZo8w/EObbS9dlbJGzR6men7OPd91JLWOvUuoDiG3EU
 zGjeJ8mcnjLP23btlECKqBw/bDbqN36Atb6+JoO8tBhFmJWKd+sRu4T/VIVr40crWKgv
 iXsAndOYx/+fn2URw85Dvpb6sW9SSCHLvtHNvrKXOuesRpcuYn39lSgwzjA+Ht4/7MTk
 lB9gYLKcrUpdmAqLHoWWFfcFNFzgOi+NaDT+7N277UylRIF04yGXMjYFeuD7NPWXAqWb
 p18JTe+SEIsHhoQSsjVZ9D7HpKAZNlpX7hX+fL8t5iD061YSis1eZjtDCgeUN9zKjct8
 2wUA==
X-Gm-Message-State: APjAAAVV1Y/BHBMVOeovuF+Oqr4Tg1oQIBLNgeg8qCVWRIAkYY02LTMs
 I4YXm03tOY2uDBlTBJVtHSgMqsHz/N8=
X-Google-Smtp-Source: APXvYqzz9NU0QsBtLGX+R5YXtiP12B3R/8sZ5cDSZ7uLONpeJjwUii/XvzHhR+vuqiWCqhIOPLLEZw==
X-Received: by 2002:a65:664d:: with SMTP id z13mr33374105pgv.99.1562159886867; 
 Wed, 03 Jul 2019 06:18:06 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id k19sm8183914pgl.42.2019.07.03.06.18.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 06:18:06 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Date: Wed,  3 Jul 2019 21:17:58 +0800
Message-Id: <20190703131758.25875-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (huangfq.daxian[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hif9I-004D6K-Kn
X-Mailman-Approved-At: Wed, 03 Jul 2019 13:21:28 +0000
Subject: [Linux-NTFS-Dev] [PATCH 26/30] ntfs: Use kmemdup rather than
 duplicating its implementation
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
 Fuqian Huang <huangfq.daxian@gmail.com>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

kmemdup is introduced to duplicate a region of memory in a neat way.
Rather than kmalloc/kzalloc + memset, which the programmer needs to
write the size twice (sometimes lead to mistakes), kmemdup improves
readability, leads to smaller code and also reduce the chances of mistakes.
Suggestion to use kmemdup rather than using kmalloc/kzalloc + memset.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 fs/ntfs/dir.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index 3c4811469ae8..eed63f045bd5 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -1158,14 +1158,14 @@ static int ntfs_readdir(struct file *file, struct dir_context *actor)
 	 * map the mft record without deadlocking.
 	 */
 	rc = le32_to_cpu(ctx->attr->data.resident.value_length);
-	ir = kmalloc(rc, GFP_NOFS);
+	/* Copy the index root value (it has been verified in read_inode). */
+	ir = kmemdup((u8 *)ctx->attr +
+		le16_to_cpu(ctx->attr->data.resident.value_offset), rc, GFP_NOFS);
 	if (unlikely(!ir)) {
 		err = -ENOMEM;
 		goto err_out;
 	}
-	/* Copy the index root value (it has been verified in read_inode). */
-	memcpy(ir, (u8*)ctx->attr +
-			le16_to_cpu(ctx->attr->data.resident.value_offset), rc);
+
 	ntfs_attr_put_search_ctx(ctx);
 	unmap_mft_record(ndir);
 	ctx = NULL;
-- 
2.11.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
