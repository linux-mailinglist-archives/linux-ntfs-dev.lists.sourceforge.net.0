Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E6018294A
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 12 Mar 2020 07:48:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jCHdZ-00076N-1l; Thu, 12 Mar 2020 06:48:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengzengkai@huawei.com>) id 1jCFLn-0003Ph-5I
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Mar 2020 04:21:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S1keTW6WVN0+0vt9wLYD3uO417gsut7wZkLJEQGj87c=; b=iv9pVkh6gNrS6ivi8nhKsGa+xY
 l+KvLDpEC+Vj3DCNQll/Cn83/G8TdF1/9Nx+Lm2yjXVjk0ALPpEzL+HBCTQqBbo6zLvejO2Km72cO
 RoDrgfCE0Rk5U4tZYBZWqweMysr9yXC6+vAzP6kRV90kN+SSGg5K7tVkmiTxuoKYDh1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=S1keTW6WVN0+0vt9wLYD3uO417gsut7wZkLJEQGj87c=; b=c
 QuQ/EK7BkN1PF1yge2WFqmmbVTwhueAmE7MuMeF6H1JABplV/alWgXngAX54YXBCGGL/MsN9VloG7
 Xb63OkHsgEND01BSJfEjwOAdUfGsSJ8ZFTauXXOYCyenFhaI09aAY7vZ6M11E/VdKYTqCvuwkJ0XL
 cjoWcsgm+G1Rkp5w=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jCFLk-005EyG-AJ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Mar 2020 04:21:39 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B8E0EF47DA97923627FA;
 Thu, 12 Mar 2020 12:21:26 +0800 (CST)
Received: from huawei.com (10.175.113.25) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Thu, 12 Mar 2020
 12:21:19 +0800
From: Zheng Zengkai <zhengzengkai@huawei.com>
To: <anton@tuxera.com>
Date: Thu, 12 Mar 2020 12:13:53 +0800
Message-ID: <20200312041353.19877-1-zhengzengkai@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1jCFLk-005EyG-AJ
X-Mailman-Approved-At: Thu, 12 Mar 2020 06:48:08 +0000
Subject: [Linux-NTFS-Dev] [PATCH -next] fs/ntfs: fix set but not used
 variable 'log_page_mask'
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 zhengzengkai@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes gcc '-Wunused-but-set-variable' warning:

fs/ntfs/logfile.c: In function ntfs_check_logfile:
fs/ntfs/logfile.c:481:21:
 warning: variable log_page_mask set but not used [-Wunused-but-set-variable]

Actually log_page_mask can be used to replace 'log_page_size - 1' as it is set.

Signed-off-by: Zheng Zengkai <zhengzengkai@huawei.com>
---
 fs/ntfs/logfile.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
index a0c40f1be7ac..c35fcf389369 100644
--- a/fs/ntfs/logfile.c
+++ b/fs/ntfs/logfile.c
@@ -507,7 +507,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
 	 * optimize log_page_size and log_page_bits into constants.
 	 */
 	log_page_bits = ntfs_ffs(log_page_size) - 1;
-	size &= ~(s64)(log_page_size - 1);
+	size &= ~(s64)(log_page_mask);
 	/*
 	 * Ensure the log file is big enough to store at least the two restart
 	 * pages and the minimum number of log record pages.
-- 
2.20.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
