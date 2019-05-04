Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 649B0162C0
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  7 May 2019 13:25:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1hNyDq-0000UB-3N; Tue, 07 May 2019 11:25:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1hMrhi-0004zi-TJ
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 04 May 2019 10:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8lagairKQ2IHxb1AupQdirHdE3QvWSd+4j/J+Qo6l2E=; b=iHMoAJKvsJjIbsVMtL1pkFSqyT
 CEjJBogAJp/WKunVkD4RQPgoDq0keKu6+RTogLlC9DkVx4PZmpWOxUksg5Fy97TfX9ATNwlCEFS+A
 mJCDwrna4cbgnHjne4jTpG6DxWf7GD1on9S6GJrF1sNrO5cQQlM8KaB+642WdKDwFJIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8lagairKQ2IHxb1AupQdirHdE3QvWSd+4j/J+Qo6l2E=; b=d
 LPM8N8qJo+oxIXpMiejQr7DUjg0FhjUhu04nHuVXVWuowk0Jho8zFOTMYBzfR6LBXoIp3yZ/GsgU6
 fsXQXGgGWthPZ6hHgREAMYuQfrcJEkPM0oRBHphUnw9o12XMIrPMvw/3lefUn+uxUt+xRCbLAnrQ6
 69o88HoaC52Z39W8=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hMrhf-004pLb-09
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 04 May 2019 10:15:38 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5BDD631B4B829C42EB22;
 Sat,  4 May 2019 18:15:26 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Sat, 4 May 2019 18:15:20 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Sat, 4 May 2019 10:25:06 +0000
Message-ID: <20190504102506.99020-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hMrhf-004pLb-09
X-Mailman-Approved-At: Tue, 07 May 2019 11:25:20 +0000
Subject: [Linux-NTFS-Dev] [PATCH -next] ntfs: remove set but not used
 variable 'attr_len'
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
Cc: linux-ntfs-dev@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes gcc '-Wunused-but-set-variable' warning:

fs/ntfs/inode.c: In function 'ntfs_truncate':
fs/ntfs/inode.c:2357:6: warning:
 variable 'attr_len' set but not used [-Wunused-but-set-variable]

It is never use since introduction in
commit dd072330d1a6 ("NTFS: Implement fs/ntfs/inode.[hc]::ntfs_truncate().
It only supports       uncompressed and unencrypted files.")

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 fs/ntfs/inode.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index fb1a2b49a5da..1c8b669e7a52 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -2354,7 +2354,6 @@ int ntfs_truncate(struct inode *vi)
 	ATTR_RECORD *a;
 	const char *te = "  Leaving file length out of sync with i_size.";
 	int err, mp_size, size_change, alloc_change;
-	u32 attr_len;
 
 	ntfs_debug("Entering for inode 0x%lx.", vi->i_ino);
 	BUG_ON(NInoAttr(ni));
@@ -2728,7 +2727,6 @@ int ntfs_truncate(struct inode *vi)
 	 * this cannot fail since we are making the attribute smaller thus by
 	 * definition there is enough space to do so.
 	 */
-	attr_len = le32_to_cpu(a->length);
 	err = ntfs_attr_record_resize(m, a, mp_size +
 			le16_to_cpu(a->data.non_resident.mapping_pairs_offset));
 	BUG_ON(err);





_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
