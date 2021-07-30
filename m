Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7A43DBC72
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 30 Jul 2021 17:39:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m9Ubg-0000Vv-6H; Fri, 30 Jul 2021 15:39:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qiaoyanbo_310@163.com>) id 1m9Twc-0002Fv-9j
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 14:57:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9WQ7FAT/naVSWd89d2D+8E1VEIXkJQgc9nMIZJSn5IQ=; b=iM4YUIrP92HvWqP1zWa3kbr8w0
 bn3jRvPXA44UPC4NilcDIAu3G4tZsjuWNjcjIoJKng73rh4r+yuYCkrtX3tFKSe4rf5vnXFV5+3l+
 Z51KDjCFIxHiqYFYaofzrVALczi1jSFqK6PWeDQ/a8PvVPiH1/hNkiWozBQufV+xQ6hM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9WQ7FAT/naVSWd89d2D+8E1VEIXkJQgc9nMIZJSn5IQ=; b=Q
 kPMa1ej6m1neftSqDT0y+IhXwiYG/oN5t4uGLxyy3WBv7tS7hTyNUZdPtGhLStdiBRxYqnw6SWz7U
 qD2v0zoSPG85W1alhUYmLSxq2fGdFxyA4DdJlg2W3q3K6La4PDWDYuGnmFrOu5HHylcom3Nl27cIW
 QTUXpNm8hKTHWKg0=;
Received: from m12-17.163.com ([220.181.12.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1m9TwS-0002Wc-Di
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Jul 2021 14:56:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=9WQ7F
 AT/naVSWd89d2D+8E1VEIXkJQgc9nMIZJSn5IQ=; b=cMVI7ogYq8hsgRvR3U4Zt
 YltVVf8y488o/Bx8+HdFQIcUinHGegBT/XmMwhfHPzVjy7+rPxVOCAe7WoaMDP99
 M+qOE2rz0KCaltaW1IvWg9wksMHtHYlqSnEV6aPN/03jsVV2zPePuLPwIfad9RsO
 KUv8hOtM0BHvJiG613tKew=
Received: from localhost (unknown [183.195.9.44])
 by smtp13 (Coremail) with SMTP id EcCowAB3hTksEwRhAgsvDg--.20349S2;
 Fri, 30 Jul 2021 22:56:44 +0800 (CST)
From: Yanbo Qiao <qiaoyanbo_310@163.com>
To: anton@tuxera.com
Date: Fri, 30 Jul 2021 22:55:18 +0800
Message-Id: <20210730145518.147805-1-qiaoyanbo_310@163.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CM-TRANSID: EcCowAB3hTksEwRhAgsvDg--.20349S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZw1Utw1fAry5Gr1UGF1fXrb_yoWxZrc_Ga
 n7Ar48Xw1UtF9rK3Zaka93JF4293W8Jrn5Zw10gFW3CF4Ygayqg34kJws0yrW7u398Gr45
 WFZ5Was0vry3tjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0QVyPUUUUU==
X-Originating-IP: [183.195.9.44]
X-CM-SenderInfo: 5tld055dqe0sqtrqqiywtou0bp/1tbi8AzfT1uocuItYwAAsB
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 HK_RANDOM_FROM         From username looks random
 1.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (qiaoyanbo_310[at]163.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zeku.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (qiaoyanbo_310[at]163.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m9TwS-0002Wc-Di
X-Mailman-Approved-At: Fri, 30 Jul 2021 15:39:27 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: delete unused header file
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Yanbo Qiao <qiaoyanbo_310@163.com>,
 Hui Su <suhui@zeku.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The linux/time.h file is referenced using the
current_kernel_time() function.The current_kernel_time()
was moved from fs/ntfs/time.h, so delete the header file.

Signed-off-by: Yanbo Qiao <qiaoyanbo_310@163.com>
Signed-off-by: Hui Su <suhui@zeku.com>
---
 fs/ntfs/time.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ntfs/time.h b/fs/ntfs/time.h
index 6b63261300cc..2c92abb5d8d2 100644
--- a/fs/ntfs/time.h
+++ b/fs/ntfs/time.h
@@ -8,7 +8,6 @@
 #ifndef _LINUX_NTFS_TIME_H
 #define _LINUX_NTFS_TIME_H
 
-#include <linux/time.h>		/* For current_kernel_time(). */
 #include <asm/div64.h>		/* For do_div(). */
 
 #include "endian.h"
-- 
2.30.2




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
