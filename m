Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E015E5EA82
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  3 Jul 2019 19:32:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1hij71-0002Jt-Ul; Wed, 03 Jul 2019 17:32:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <huangfq.daxian@gmail.com>) id 1hiiAW-00087G-B9
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Jul 2019 16:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MlSA2nvOnfYwQ6hc08lXyQi3gXe/l2Rep+RjrEahV2Y=; b=Tj7hwhaKmINWD3raPHxVjalnX5
 boBWndjciVVGSChXFAvIfG6lEXzpN4wMwuivGECJk79H20Qa71jbUy0oQWHNKbChT2qEx3C/VnGgk
 QmibAHYOILZHKHrNsdg+gDMAv1vDCQ+nI4c5tSlzPWmJ+mAkmsftn4WZt8sMenR2dAp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MlSA2nvOnfYwQ6hc08lXyQi3gXe/l2Rep+RjrEahV2Y=; b=BX1Y80kORdl9vRnUF/HSF7e392
 wq+Th18n2zf+Bxs+6l/Hc4FbJhbpLEBkeaL9SpgsZr9V0YtViyqVI54n5OfP2ZxBo6rK4FXzxj6fh
 OyYujt/wb55D8TJqEPLeV2ZovFs8B2MByGBp5WPI5nxUxBlrF7KLvOkIDht30bHf9XF8=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hiiAf-006tdu-48
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Jul 2019 16:31:50 +0000
Received: by mail-pf1-f193.google.com with SMTP id c85so1547854pfc.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 03 Jul 2019 09:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MlSA2nvOnfYwQ6hc08lXyQi3gXe/l2Rep+RjrEahV2Y=;
 b=UxjYyJLk3JouNyJyjB0dpA9ndYov1t6khl8nW2QIbCybAZhH4k+6cKtC0YSgg1ffEI
 hJPEwlr4pgTg51ymvhJ28fzDaCLyselyLDmQ9t4Ze+MK6n57nP1fIvrrleZmZsKzr9sq
 OBHOQRDyrK3U3qB1oPbnkk4WN9vU4dx9TmBtNgPn0kGfk5a9MwcWiNPfO0TcoQLl8QXK
 MOSDEQ5zDdLrxLYLJk7Oyokg0tJFV06Izd3eUXyGGlwz7+AxJCYWRE9FhFG5F0jroMl3
 QAt7je6oOP3ooLwxakFGr2UXdqakfpzTu0X1PcBZGgdjd//j6GwR6D+MRvmPkr/iS/7O
 7tUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MlSA2nvOnfYwQ6hc08lXyQi3gXe/l2Rep+RjrEahV2Y=;
 b=ddJ18Ne5cqIxArkDyPQn8l0rmYsOtWMSHI03d7JbCZvt5e1Roi1caAsUT6ouD41vUK
 hzLGwu3ls9SXOwx/ZAxWhZ8usrv1iFTuf1r2y9MoDqCEKpCqBaQJHhHyJ8McbrSZURKt
 1HaaNE1xr1QoyR5TBdsEfF71PKA2POdwNU3Qv5zJGAmCBIhlXFqeaDj+528eIR4EWDi1
 gmhja+xDoxkA8XKoB2Zd2880GaL9TQ/JktHReR+p/rHyz7xjBghEUj+Zpo9Tl9Cxj6ub
 x80Aw0+tiLK2Vg1QL/FQCYdbdvCAf8YSvh7g7Y5C3kpSd1y1l/VV3t7bmVRF+3kpwRts
 ATCg==
X-Gm-Message-State: APjAAAUNCD/+6OZiiUGOSUrRVg+AKQk55ZjnYcQ5y0kciEGzwHIOk0h9
 ubVobDeI/cObHfLoc0Zar5k=
X-Google-Smtp-Source: APXvYqzWdwiKl7AypsUEuNDAGG3mV0bTa01bTSdGXxZwvJJjV9iSrOIjj28YH+SG6fAQ/WLNEpVkLQ==
X-Received: by 2002:a63:790c:: with SMTP id u12mr19839958pgc.424.1562171503462; 
 Wed, 03 Jul 2019 09:31:43 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id j15sm2978141pfr.146.2019.07.03.09.31.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 09:31:43 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Date: Thu,  4 Jul 2019 00:31:37 +0800
Message-Id: <20190703163137.811-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (huangfq.daxian[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hiiAf-006tdu-48
X-Mailman-Approved-At: Wed, 03 Jul 2019 17:32:06 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2 30/35] ntfs: Use kmemdup rather than
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
Rather than kmalloc/kzalloc + memcpy, which the programmer needs to
write the size twice (sometimes lead to mistakes), kmemdup improves
readability, leads to smaller code and also reduce the chances of mistakes.
Suggestion to use kmemdup rather than using kmalloc/kzalloc + memcpy.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v2:
  - Fix a typo in commit message (memset -> memcpy)

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
