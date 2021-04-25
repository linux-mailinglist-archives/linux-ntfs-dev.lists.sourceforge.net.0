Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCC536A6F7
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 25 Apr 2021 13:55:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ladM6-0002Rr-2n; Sun, 25 Apr 2021 11:55:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yang.lee@linux.alibaba.com>) id 1lacRQ-0007FF-Bq
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 25 Apr 2021 10:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wnVYWKmXs7rxS6Yza3+TgTjcJsmccv4MoiP9mcP4AYo=; b=iXnzzO/zAIrKpg0TQdABPm6JE/
 BvkCuSJ2VmhuGYB9XFsxUk/TTBhOGoP/tGh4TCbYleHU4+7cL0fxfnqZn5RGW8Bt4ivewdJ0MFq68
 r0R2Fi7dBWIqU36WWnyTFfsR6FWmqB3XyGAF1OTsRy1B3wwCTQe14mNZPEUu2XSwCV+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wnVYWKmXs7rxS6Yza3+TgTjcJsmccv4MoiP9mcP4AYo=; b=nFzqVVi3njii8EUY/gxD/wdyzD
 Mt740vgzhhiPaMDCa3M2ENF65FhbDlOwN0C/LZ5t0JRNf4ov3ZHmA/NxhKfWbSbRlHFF/JFU+6n4X
 bORdRV6s5ulHrZBAKl3dyuCAHZ//wd3BK+5PijyQpy5hmpFAWNl6D8xtvPmOqmVpQYEg=;
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lacRF-00075F-UG
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 25 Apr 2021 10:56:44 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R501e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=7; SR=0; TI=SMTPD_---0UWgfJID_1619345757; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0UWgfJID_1619345757) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 25 Apr 2021 18:15:58 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: anton@tuxera.com
Date: Sun, 25 Apr 2021 18:15:54 +0800
Message-Id: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lacRF-00075F-UG
X-Mailman-Approved-At: Sun, 25 Apr 2021 11:53:38 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: drop unneeded assignment in
 ntfs_perform_write()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, nathan@kernel.org,
 clang-built-linux@googlegroups.com, Yang Li <yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

It is not required to initialize the local variable idx in
ntfs_perform_write(), the value is never actually read from
it.

make clang-analyzer on x86_64 allyesconfig reports:

fs/ntfs/file.c:1781:15: warning: Although the value stored to 'idx' is
used in the enclosing expression, the value is never actually read from
'idx'

Simplify the code and remove unneeded assignment to make clang-analyzer
happy.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 fs/ntfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index e5aab26..e39a26f 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -1774,11 +1774,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
 	last_vcn = -1;
 	do {
 		VCN vcn;
-		pgoff_t idx, start_idx;
+		pgoff_t start_idx;
 		unsigned ofs, do_pages, u;
 		size_t copied;
 
-		start_idx = idx = pos >> PAGE_SHIFT;
+		start_idx = pos >> PAGE_SHIFT;
 		ofs = pos & ~PAGE_MASK;
 		bytes = PAGE_SIZE - ofs;
 		do_pages = 1;
-- 
1.8.3.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
