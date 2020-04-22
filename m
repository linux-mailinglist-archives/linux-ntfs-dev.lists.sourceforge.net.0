Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6C91B39F8
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 22 Apr 2020 10:25:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jRAgy-0001tV-Pu; Wed, 22 Apr 2020 08:25:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wubo40@huawei.com>) id 1jR99Q-0006Kf-BU
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 22 Apr 2020 06:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VR/q7z6lGJO0iiIc+sAeI0MVU4iMQrews6G6x7IV3Kg=; b=SJDSHboQz8CP66NSOCWOtIWLbK
 few+PXMzklu00uXw+98M7FYyPhujkmzPNLgeEhLyWMXqzCCSHRKupxpcoCNfHvE1YqSX/6cOC0ahh
 NEyJi7cHClYF1o/7xMUB7xc6AtlQeoBL+2vXUzKLtj1OLyOnONHTiJWH7nTCenzGjtgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VR/q7z6lGJO0iiIc+sAeI0MVU4iMQrews6G6x7IV3Kg=; b=P
 V45fsQRUBnUGLeYmBkwTXnmtO+2SM3pjvEN+uTBEdr++9yeWExlKkMIA+5e+TWHrJd+ZI7QEfIq8T
 tTW0af6439J66ZMUo5BIigJHhMzXV6lo1X9xflHoJFT/35UuHrq2OXg6PE/MuEjDXxSs3KpFtO/hm
 wM9UpWYcUpdk0jGQ=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jR99O-009fNk-CB
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 22 Apr 2020 06:46:28 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 70195140242CF1A3330A;
 Wed, 22 Apr 2020 14:46:10 +0800 (CST)
Received: from huawei.com (10.175.105.27) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Wed, 22 Apr 2020
 14:46:02 +0800
From: Wu Bo <wubo40@huawei.com>
To: <anton@tuxera.com>
Date: Wed, 22 Apr 2020 14:45:19 +0800
Message-ID: <1587537919-393126-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.105.27]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jR99O-009fNk-CB
X-Mailman-Approved-At: Wed, 22 Apr 2020 08:25:11 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs:ntfs:remove unneeded semicolon in
 super.c
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linfeilong@huawei.com,
 linux-kernel@vger.kernel.org, wubo40@huawei.com, liuzhiqiang26@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fix the following coccicheck warning:

fs/ntfs/super.c:1615:2-3: Unneeded semicolon
fs/ntfs/super.c:1684:2-3: Unneeded semicolon

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 fs/ntfs/super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 7dc3bc6..d78d312 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume *vol)
 		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
@@ -1681,7 +1681,7 @@ static bool load_and_init_upcase(ntfs_volume *vol)
 		memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
-- 
1.8.3.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
