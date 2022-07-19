Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 854E4579522
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Jul 2022 10:19:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oDiRl-0002Sm-Dh; Tue, 19 Jul 2022 08:19:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gaoxin@cdjrlc.com>) id 1oDfDK-00041N-8K
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 19 Jul 2022 04:52:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vn+9kdsB+JgXYrj/EO7LVYGGarS6gXe0inlMCDQiaao=; b=mXEFq7zS8xh6udhqcFuBm2CKKZ
 wS1ZtKR963dpjl/TXY+5JMHj3OtcuB13CsN88fCv+Kz1aOEnM9cvtPymiYnq/Ug1u5VHEegNW576I
 mx0CVNKysMnvlJ6gnidOncpcEpXOQJQXNaknYLsoo1t8Rn9I3Q5xWbYLdjr5BszeqUxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vn+9kdsB+JgXYrj/EO7LVYGGarS6gXe0inlMCDQiaao=; b=D
 gFajWYQTBZ4hE0Ig0g7+D1KxgxvDlrUC45qjk3M2tafp2nMvaYPbKalxQ+cdVLnyBaY7Lrvw9Ud7p
 iJwXAHEG0ADagJN+7cl+ikh6iuqMd6vczTsv1hG0DlBoG0s8qlGptOIj5ABO6wjsw6+s1mF5e735V
 6VIe964pQwD8sJkU=;
Received: from [43.155.65.254] (helo=smtpbg.qq.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oDfDE-0002lh-Tz
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 19 Jul 2022 04:52:05 +0000
X-QQ-mid: bizesmtp67t1658205378tmlnfb24
Received: from harry-jrlc.. ( [182.148.15.157])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Tue, 19 Jul 2022 12:36:08 +0800 (CST)
X-QQ-SSF: 0100000000600030C000B00A0000020
X-QQ-FEAT: 5sX+F+4VKJq/by0fXtxKmEYorDalB8YGcMY3eazqKZGVLKfxtPmE6TthUJrSf
 M7FfiP42jGwNJOZIvqTS+kmVRitNSTATE73ExENuWO2Cv7dL10V9CjnYu7HUvn0/mzSnMt2
 emvtxj/vnCAb7uMgCPN0CaW1pXAoPAzA9l4W1GFA4v+QCT12HgANd60hl+C/iSxXGLzZUHR
 leQhEzvRvfOx50PvZ+tJ+y0PZNDVDjf/hk0M3AawjaBcobbpoFdHQuYPKQ8snSxn7fSwuYf
 L6Hjsy8TaTv4SAzQCr+vEhq6o/FExPjbtIhqZTG6l3ditNhbfTydw5J1+FnC7gh4u8eQAaZ
 q/j0U6Cq4TVrH3Nuxxp7cyuFJ9JmhPgz7RJMBQ88dKNN/Lebdy6wsyUJ7tkZW5Wv2Hc1fb+
X-QQ-GoodBg: 0
From: Xin Gao <gaoxin@cdjrlc.com>
To: anton@tuxera.com
Date: Tue, 19 Jul 2022 12:36:05 +0800
Message-Id: <20220719043605.5935-1-gaoxin@cdjrlc.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Unneeded semicolon Signed-off-by: Xin Gao <gaoxin@cdjrlc.com>
 --- fs/ntfs/lcnalloc.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 diff --git a/fs/ntfs/lcnalloc.c b/fs/ntfs/lcnalloc.c index
 eda9972e6159..66c2b29e09dd
 100644 --- a/fs/ntfs/lcnalloc.c +++ b/fs/ntfs/lcnalloc.c @@ -899,7 +899,7
 @@ s64 __ntfs_cluster_free(ntfs_inode *n [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [43.155.65.254 listed in dnsbl-1.uceprotect.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1oDfDE-0002lh-Tz
X-Mailman-Approved-At: Tue, 19 Jul 2022 08:19:11 +0000
Subject: [Linux-NTFS-Dev] [PATCH] treewide:Unneeded semicolon
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
 Xin Gao <gaoxin@cdjrlc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Unneeded semicolon

Signed-off-by: Xin Gao <gaoxin@cdjrlc.com>
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
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
