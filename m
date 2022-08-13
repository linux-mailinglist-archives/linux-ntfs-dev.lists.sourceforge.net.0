Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DCA591CB5
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 13 Aug 2022 23:29:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oMyha-0006XA-V8;
	Sat, 13 Aug 2022 21:29:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tangmin@cdjrlc.com>) id 1oMtsU-0005hE-D2
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 13 Aug 2022 16:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ejBORuDbr76+rsTvY8IiokYFJnyR+mHW4JZh4UKCA9c=; b=ZLVxEBOEp3oSA5DsVfjlmMwMmp
 yTBMorUhOKqHbe+MI1rnHpGtmm2HYaA6gnRVrSzjXYmJbM3l8wKOeRiijLdBCA/kWghDBXkgsLsLf
 QUPz1OQbwg4Oaj5FKO4ooeyMSCDyYax5ATeh5eEBWwml1mXKaz7I2ALadFLaWFn/2azs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ejBORuDbr76+rsTvY8IiokYFJnyR+mHW4JZh4UKCA9c=; b=XI2jKYzJKQE83/tf0lXzXfPGc5
 3Jkncs/n8DuHHUS6ri3HBDamQTyr6JHJMqGX/bYVjvcffp8HHdAS5RBuZPrThFclAnFsabYRstCr9
 WanDxwLCoke3tP/AuwZLEeHu1U/a+JT92zzFH5jyOoVTUrXCpJYBxHHtYedF9UwxnUwo=;
Received: from bg4.exmail.qq.com ([43.154.221.58] helo=bg5.exmail.qq.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oMtsO-00017f-9D for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 13 Aug 2022 16:20:46 +0000
X-QQ-mid: bizesmtp66t1660407182td40hywb
Received: from localhost.localdomain ( [110.188.55.240])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Sun, 14 Aug 2022 00:12:30 +0800 (CST)
X-QQ-SSF: 0100000000000080H000000A0000020
X-QQ-FEAT: 5q30pvLz2idyuLISzKeqUCJTe8R7dCPGHX0v+WntEIyVUWpH7+ce9z3jamIkV
 bblrqdzA2O/OY8Z18lPacq+0hzHF20WEQEwIAsOoe0UUPp5kuiuv0QEGogvQVZLxo5xWIRA
 HD0mM4qbocWb+du9BTKOvo6JjEbk4Ofvt3IjdjdaO6MV27Drh7PukO5Sf3KTfRsppdqh6TB
 O/as+ZWwuxuZSBlHS4C/lrINby/j3OXEMD/lf0u6S7RQzOOenC1oMgYCn6FXm4ZjT6RxhQl
 kG+dFajZgYpJ64Nw8LKZip4VtMRBBv67YCBpxPibO13qNwQaDDf1iEGhqh1+mKf8JiF85CR
 sUn1Ag/9eILMzWi4Jr4QDP3BjAacLQi+PRaCkl1EVBR1vK6/QI=
X-QQ-GoodBg: 0
From: min tang <tangmin@cdjrlc.com>
To: anton@tuxera.com
Date: Sun, 14 Aug 2022 00:12:20 +0800
Message-Id: <20220813161220.6039-1-tangmin@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is no semicolon after '}' in line 902. Signed-off-by:
 min tang <tangmin@cdjrlc.com> --- fs/ntfs/lcnalloc.c | 2 +- 1 file changed,
 1 insertion(+),
 1 deletion(-) diff --git a/fs/ntfs/lcnalloc.c b/fs/ntfs/lcnalloc.c
 index eda9972e6159..66c2b29e09dd 100644 --- a/fs/ntfs/lcnalloc.c +++
 b/fs/ntfs/lcnalloc.c
 @@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *n [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [43.154.221.58 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oMtsO-00017f-9D
X-Mailman-Approved-At: Sat, 13 Aug 2022 21:29:49 +0000
Subject: [Linux-NTFS-Dev] [PATCH] NTFS: Unneeded semicolon
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
 min tang <tangmin@cdjrlc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

There is no semicolon after '}' in line 902.

Signed-off-by: min tang <tangmin@cdjrlc.com>
---
 fs/ntfs/lcnalloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/lcnalloc.c b/fs/ntfs/lcnalloc.c
index eda9972e6159..66c2b29e09dd 100644
--- a/fs/ntfs/lcnalloc.c
+++ b/fs/ntfs/lcnalloc.c
@@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *ni, const VCN start_vcn, s64 count,
 		}
 		/* We have freed @to_free real clusters. */
 		real_freed = to_free;
-	};
+	}
 	/* Go to the next run and adjust the number of clusters left to free. */
 	++rl;
 	if (count >= 0)
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
