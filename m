Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92880273E7F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 22 Sep 2020 11:25:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kKeXw-0002CV-JL; Tue, 22 Sep 2020 09:25:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiayang5@huawei.com>) id 1kKdht-0007uL-0J
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 22 Sep 2020 08:31:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kiBmYJwrFo+TBxL4QxEH6+hoZXuoclHv7syNt25MJ8U=; b=MQGG8ubbXhLas+kknR5q6okRT8
 5hnYy3RNY1FVOIfiX2eReEnDa/kvNo7FXo50AUwDE8vvNtC7SbV4RF0dCE0H+SObOLsyEnfdyUYDu
 LVDBz8uRF8wJFrlmNUzfcKZFko1o/syglFDd9lnHbmAgRy+tF7M74AqjBHdRFHKD820U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kiBmYJwrFo+TBxL4QxEH6+hoZXuoclHv7syNt25MJ8U=; b=a
 /46xGL8iZ29lVZijb14zGe0+1OtlcuFbIwYw0tDaAgFWs5yZTkpaKybw3FS2fPF2uXTO2u7lmXA0l
 ca1REiIhwAfHquhXcrL0tsYcxWV+52xCb1hVRmlp6/3mE0nRAIJ8qs/UaO1p4UL1xwSG1i8dW1GJ5
 Cg84NxjBBBNLkAeM=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kKdhY-002x4n-P4
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 22 Sep 2020 08:31:24 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2F9AE88BB097185FB0E6;
 Tue, 22 Sep 2020 16:30:46 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Tue, 22 Sep 2020
 16:30:38 +0800
From: Jia Yang <jiayang5@huawei.com>
To: <anton@tuxera.com>, <linux-ntfs-dev@lists.sourceforge.net>
Date: Tue, 22 Sep 2020 16:33:01 +0800
Message-ID: <20200922083301.2041371-1-jiayang5@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kKdhY-002x4n-P4
X-Mailman-Approved-At: Tue, 22 Sep 2020 09:25:10 +0000
Subject: [Linux-NTFS-Dev] [PATCH -next] fs/ntfs: Remove set but not used
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
Cc: jiayang5@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

fs/ntfs/logfile.c: In function 'ntfs_check_logfile':
fs/ntfs/logfile.c:481:21: warning:
variable 'log_page_mask' set but not used [-Wunused-but-set-variable]

Signed-off-by: Jia Yang <jiayang5@huawei.com>
---
 fs/ntfs/logfile.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
index a0c40f1be7ac..bc1bf217b38e 100644
--- a/fs/ntfs/logfile.c
+++ b/fs/ntfs/logfile.c
@@ -478,7 +478,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
 	u8 *kaddr = NULL;
 	RESTART_PAGE_HEADER *rstr1_ph = NULL;
 	RESTART_PAGE_HEADER *rstr2_ph = NULL;
-	int log_page_size, log_page_mask, err;
+	int log_page_size, err;
 	bool logfile_is_empty = true;
 	u8 log_page_bits;
 
@@ -501,7 +501,6 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
 		log_page_size = DefaultLogPageSize;
 	else
 		log_page_size = PAGE_SIZE;
-	log_page_mask = log_page_size - 1;
 	/*
 	 * Use ntfs_ffs() instead of ffs() to enable the compiler to
 	 * optimize log_page_size and log_page_bits into constants.
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
