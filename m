Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E3436BB17
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 26 Apr 2021 23:13:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lb8XV-00009E-6u; Mon, 26 Apr 2021 21:13:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <haoxu@linux.alibaba.com>) id 1lax3j-0006bE-2O
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 26 Apr 2021 08:57:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GXvRUc2n+bglcH3L7RRQW1ZAab5olOiH2MIyRCEEbuM=; b=ahS9oZWAO44tbIT76BHCgKNyWC
 maXnAb7H0FNH3CrSVDfR6h8Y0gfAix04/XFWXB3qotQfpz6bQt36hjAnBmQVJK89JWQL+SPO2xp4P
 20D5giX6MR/IT+/o6RRQWBKgDBt3o+XNBZ6RdwzFGrZXcKuDCYrTI2dit7mhBhjWkGu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GXvRUc2n+bglcH3L7RRQW1ZAab5olOiH2MIyRCEEbuM=; b=aquXxiEgESfBl8jPjNmr4N8GdN
 hiZI6XAAAOKz70miUSSmRaxqz7wmx0RQ6IaF5cbzrhJqIpPmtisYLpPmHugxQQY89VmfXG4OSPh1s
 mvYC6or9SSEoPd17mOKa4OuXV+h9H4qmFQ4/AQPmR2iSSdEbJ9xtLq9qi9RRZ6Sl5vsA=;
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lax3d-00Auek-5k
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 26 Apr 2021 08:57:39 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R211e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04420; MF=haoxu@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0UWnOySz_1619425013; 
Received: from e18g09479.et15sqa.tbsite.net(mailfrom:haoxu@linux.alibaba.com
 fp:SMTPD_---0UWnOySz_1619425013) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 26 Apr 2021 16:17:02 +0800
From: Hao Xu <haoxu@linux.alibaba.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Anton Altaparmakov <anton@tuxera.com>
Date: Mon, 26 Apr 2021 16:16:52 +0800
Message-Id: <1619425013-130530-2-git-send-email-haoxu@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1619425013-130530-1-git-send-email-haoxu@linux.alibaba.com>
References: <1619425013-130530-1-git-send-email-haoxu@linux.alibaba.com>
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lax3d-00Auek-5k
X-Mailman-Approved-At: Mon, 26 Apr 2021 21:13:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH 1/2] fs: remove redundant check
 buffer_uptodate()
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Joseph Qi <joseph.qi@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Now set_buffer_uptodate() will test first and then set, so we don't have
to check buffer_uptodate() first, remove it to simplify code.

Signed-off-by: Hao Xu <haoxu@linux.alibaba.com>
---
 fs/buffer.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 0cb7ffd4977c..195f224edd8e 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -1997,10 +1997,8 @@ int __block_write_begin_int(struct page *page, loff_t pos, unsigned len,
 	    block++, block_start=block_end, bh = bh->b_this_page) {
 		block_end = block_start + blocksize;
 		if (block_end <= from || block_start >= to) {
-			if (PageUptodate(page)) {
-				if (!buffer_uptodate(bh))
-					set_buffer_uptodate(bh);
-			}
+			if (PageUptodate(page))
+				set_buffer_uptodate(bh);
 			continue;
 		}
 		if (buffer_new(bh))
@@ -2031,8 +2029,7 @@ int __block_write_begin_int(struct page *page, loff_t pos, unsigned len,
 			}
 		}
 		if (PageUptodate(page)) {
-			if (!buffer_uptodate(bh))
-				set_buffer_uptodate(bh);
+			set_buffer_uptodate(bh);
 			continue; 
 		}
 		if (!buffer_uptodate(bh) && !buffer_delay(bh) &&
-- 
1.8.3.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
