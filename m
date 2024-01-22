Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD1D8374FB
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zn-0008Vh-Ne;
	Mon, 22 Jan 2024 21:11:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rRyQc-00061r-9i
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KeUg6p5geUeb/5YLtDehZnb7ENy/rqnJYmLETJS5zEA=; b=BaPDYHXnmrRpAO4OsStPi68YW2
 IdqxQeEobdadfVOIIv40lRqnA0cTxWB3Y8oXkqAFRsGSHRsFpyut7Zzz+e92IV1+jsrSCYG9n0jD1
 CjUF3jveXUuhPT31Je+mwBilAY/lW3Pxfpzueygx7ZMt+yNaZh8uPeqFxSrc0QjXYzIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KeUg6p5geUeb/5YLtDehZnb7ENy/rqnJYmLETJS5zEA=; b=ihwWuuMT2GzYXlC+Vlt0M7utux
 O0DW++ZJY+Nu+MjL9GVS6jqsIDwLMqbwButE8wP9GbnfrhRH6tbE83WSxeTzdudKnqFyBGADH9R9R
 rpTCu2/N7bnY7RntlABLaiS1coVJGT5t9gz+ofa5Xxq8vAn0pLvVZrtuBVh1vVoXtRT8=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRyQX-0006sg-Fz for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:46 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MHekUM030654; Mon, 22 Jan 2024 17:49:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=KeUg6p5geUeb/5YLtDehZnb7ENy/rqnJYmLETJS5zEA=;
 b=rPYZGmvRvTrSHy9pog3AK8894pa5fARralnW3DykbaPMoOhYZWVGgig7PdCzzWW89nwq
 QIVIL5I4/A+YkywssC2RRMyro5StnWvwIztSlR7nV14dkzmBa/+0vpQtRaPcRUpvhfkk
 ylylfah7CqqehKiJuk6AArKSYPK5XiKIwGjDyNzXOwBvlR2LUKalyYzJy5DbYNcKtcYI
 yzu9hLWLqe2vpZSf4OhVGlLfUXJQ1BvqK1n7JFXwKwg9+ECZzkjARtuqK2Ner8oE29aY
 v/lX3vTD3A4ZwoZ+dqcmUkT7BVGGCxbZhbJKkpF18KFkjin7x2+vYHaXcwyPkR8TKbKs FQ== 
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vsurfa5q4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:25 +0000
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MHA9CN025298; Mon, 22 Jan 2024 17:49:24 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 3vrtqk1uqp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:24 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com
 [10.20.54.102])
 by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40MHnMpm16974504
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jan 2024 17:49:22 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6DB262004F;
 Mon, 22 Jan 2024 17:49:22 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0EEB12005A;
 Mon, 22 Jan 2024 17:49:20 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.ibm.com.com (unknown
 [9.43.53.45]) by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jan 2024 17:49:19 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Mon, 22 Jan 2024 23:19:03 +0530
Message-Id: <20240122174904.178594-4-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240122174904.178594-1-sshegde@linux.ibm.com>
References: <20240122174904.178594-1-sshegde@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: XeEMsl10Wmu77LMj_tWv9LOPZ8Y6ZYBd
X-Proofpoint-GUID: XeEMsl10Wmu77LMj_tWv9LOPZ8Y6ZYBd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_07,2024-01-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 mlxlogscore=841 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401220124
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  when a ifdef is used in the below manner, second one could
 be considered as duplicate. ifdef DEFINE_A ...code block... ifdef DEFINE_A
 ...code block... endif ...code block... endif In the ntfs code, one such
 pattern was seen. Hence remove that duplicate ifdef. No functional change
 is intended here. It only aims to improve code readability. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRyQX-0006sg-Fz
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH v2 3/4] ntfs: remove duplicate ifdefs
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
From: Shrikanth Hegde via Linux-ntfs-dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Shrikanth Hegde <sshegde@linux.ibm.com>
Cc: peterz@infradead.org, mpe@ellerman.id.au, sshegde@linux.ibm.com,
 djwong@kernel.org, mingo@kernel.org, anton@tuxera.com, chandan.babu@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

when a ifdef is used in the below manner, second one could be considered as
duplicate.

ifdef DEFINE_A
...code block...
ifdef DEFINE_A
...code block...
endif
...code block...
endif

In the ntfs code, one such pattern was seen. Hence remove that duplicate
ifdef.
No functional change is intended here. It only aims to improve code
readability.

Signed-off-by: Shrikanth Hegde <sshegde@linux.ibm.com>
---
 fs/ntfs/inode.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index aba1e22db4e9..d2c8622d53d1 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -2859,11 +2859,9 @@ int ntfs_truncate(struct inode *vi)
  *
  * See ntfs_truncate() description above for details.
  */
-#ifdef NTFS_RW
 void ntfs_truncate_vfs(struct inode *vi) {
 	ntfs_truncate(vi);
 }
-#endif

 /**
  * ntfs_setattr - called from notify_change() when an attribute is being changed
--
2.39.3



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
