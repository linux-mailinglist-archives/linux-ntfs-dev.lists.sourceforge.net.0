Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FE0964D5
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 20 Aug 2019 17:44:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i06Ij-0008Bk-E7; Tue, 20 Aug 2019 15:44:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengbin13@huawei.com>) id 1i04og-0003gP-MP
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 14:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bh0PR5epSeV7F4cT5Ykx0RXwiUqB4oCPPVdkushtNCM=; b=Dp9R3BYJtdoVYV3sVZW0swy7UK
 0VJ3gKH0W/3Eo13r5Lbf4PRlml9W0vl4Aa0SZoagoSBO4SzE9pI/usE6osLX4LHTRxgGkI0VaXlBQ
 a71ZldTMuVVovFlSMkqT9bmGUMlu6z0S0vF6haOmHpC7YzEjpWkbdh2E2UD44f1CJmIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bh0PR5epSeV7F4cT5Ykx0RXwiUqB4oCPPVdkushtNCM=; b=O
 OmTL8E8vih8SXz7OycUL7skFtvMVDBjXHpl1fO6QfE86NielQinY5pc44eJ89SS6Sm7eCgsCXBUha
 Lmtz6bMxV7b928vzIECZ4IHWtwFJkEmTQ7nCu25B+Z80hBhDpPAOaLL1IQ/tnzPlWjrU/hyIX9Dc1
 Jrxb3QpAfI1Rboso=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i04oe-00DMDB-Cs
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 14:08:54 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5AD6F6640AF846DE111C;
 Tue, 20 Aug 2019 22:08:45 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Tue, 20 Aug 2019
 22:08:37 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <anton@tuxera.com>, <linux-ntfs-dev@lists.sourceforge.net>
Date: Tue, 20 Aug 2019 22:15:08 +0800
Message-ID: <1566310508-65490-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
X-Headers-End: 1i04oe-00DMDB-Cs
X-Mailman-Approved-At: Tue, 20 Aug 2019 15:43:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: remove unused variable
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
Cc: zhengbin13@huawei.com, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

variable base_ni,attr_len,log_page_mask set but not used, remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 fs/ntfs/file.c    | 5 +----
 fs/ntfs/inode.c   | 2 --
 fs/ntfs/logfile.c | 3 +--
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index f42967b..e5aab26 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -323,7 +323,7 @@ static ssize_t ntfs_prepare_file_for_write(struct kiocb *iocb,
 	unsigned long flags;
 	struct file *file = iocb->ki_filp;
 	struct inode *vi = file_inode(file);
-	ntfs_inode *base_ni, *ni = NTFS_I(vi);
+	ntfs_inode *ni = NTFS_I(vi);
 	ntfs_volume *vol = ni->vol;

 	ntfs_debug("Entering for i_ino 0x%lx, attribute type 0x%x, pos "
@@ -365,9 +365,6 @@ static ssize_t ntfs_prepare_file_for_write(struct kiocb *iocb,
 		err = -EOPNOTSUPP;
 		goto out;
 	}
-	base_ni = ni;
-	if (NInoAttr(ni))
-		base_ni = ni->ext.base_ntfs_ino;
 	err = file_remove_privs(file);
 	if (unlikely(err))
 		goto out;
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 8baa34b..b874242 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -2340,7 +2340,6 @@ int ntfs_truncate(struct inode *vi)
 	ATTR_RECORD *a;
 	const char *te = "  Leaving file length out of sync with i_size.";
 	int err, mp_size, size_change, alloc_change;
-	u32 attr_len;

 	ntfs_debug("Entering for inode 0x%lx.", vi->i_ino);
 	BUG_ON(NInoAttr(ni));
@@ -2714,7 +2713,6 @@ int ntfs_truncate(struct inode *vi)
 	 * this cannot fail since we are making the attribute smaller thus by
 	 * definition there is enough space to do so.
 	 */
-	attr_len = le32_to_cpu(a->length);
 	err = ntfs_attr_record_resize(m, a, mp_size +
 			le16_to_cpu(a->data.non_resident.mapping_pairs_offset));
 	BUG_ON(err);
diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
index a0c40f1..bc1bf21 100644
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
2.7.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
