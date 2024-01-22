Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D388374FA
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zn-0008VG-E0;
	Mon, 22 Jan 2024 21:11:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rRyQc-0007tA-Bw
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qyDB3MUGpiqwHmFDZQYonWrl45UOQmMx3+ebuJTdasw=; b=kbUi+KsdBvI6WwfESbiYxpiEay
 CaSiA6DynB4vOeiHl1I0ibZ+EqcBVxNWl2Yq+EB4zF15IjiyH8Ow6BByyzQ29vISfepY4bcKVKJ6o
 jiQIy8JLidLBl7EzhjXdJD5DiyD3YCDjbuXjYDTmKmAw5lI3hsj+dRRQVAWay+jumj4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qyDB3MUGpiqwHmFDZQYonWrl45UOQmMx3+ebuJTdasw=; b=m7MB051eb/YXgbalDLXR2XHWn1
 u3EjOOrphG94mxx/jb+e+9Xgb4k7swTdpyyF3N3xbKhPhg969/jNEsANhjsi3mb6RVfcyCIBLZkvC
 n0iSBA4mbX9+N3BP6Av7Ug4QQM78Gn0Q77XfNHKCzmuEDudir/baAJT3vxhBasP6JveQ=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRyQX-0006sh-Tz for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:46 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MHTuAd004239; Mon, 22 Jan 2024 17:49:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=qyDB3MUGpiqwHmFDZQYonWrl45UOQmMx3+ebuJTdasw=;
 b=na3zs/SBIIK0E9HV0MK2minHOi+C4UdBnZqpcJPqkJvHyjefvZOtCr8h2yOl0rUIRn/P
 nzFsykyUHFpJPFnD1IAc9kXEKRKb8bTppE3VHBo+LqVhCtNOxp5lG235mUpBigSTJG3F
 LEze+7L7bBqU5FO4fcHP4hQWsP9P1IokfZBPSqUuM0rbfWIj+2dMtLGS0A51iMaT1f9t
 nOlCz84TuWFrt3B4Rq+5F0lK/rdyIXM+p07RRYtxKk2BTMAk76/BIzyADqplsPENpz/W
 SHYjA01G8JJJmCp5PzWkKQ+4TWL4HYOC4wlbXmHMHR8all9izUPRQnb+bW+6yEW5fGom 2Q== 
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vstkfdt4s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:21 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MGFaSN022510; Mon, 22 Jan 2024 17:49:20 GMT
Received: from smtprelay01.fra02v.mail.ibm.com ([9.218.2.227])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3vrt0kt2mc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:20 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com
 [10.20.54.102])
 by smtprelay01.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40MHnIAX15860470
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jan 2024 17:49:18 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B2E4020043;
 Mon, 22 Jan 2024 17:49:18 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0003A20040;
 Mon, 22 Jan 2024 17:49:15 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.ibm.com.com (unknown
 [9.43.53.45]) by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jan 2024 17:49:15 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Mon, 22 Jan 2024 23:19:02 +0530
Message-Id: <20240122174904.178594-3-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240122174904.178594-1-sshegde@linux.ibm.com>
References: <20240122174904.178594-1-sshegde@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: hnGm0V7dji-YQfItNaSxH8to-qPFXDCc
X-Proofpoint-GUID: hnGm0V7dji-YQfItNaSxH8to-qPFXDCc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_07,2024-01-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=816
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 phishscore=0
 mlxscore=0 malwarescore=0 adultscore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401220124
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  when a ifdef is used in the below manner, second one could
 be considered as duplicate. ifdef DEFINE_A ...code block... ifdef DEFINE_A
 ...code block... endif ...code block... endif In the xfs code two such
 patterns
 were seen. Hence removing these ifdefs. No functional change is intended
 here. It only aims to improve code readability. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.158.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRyQX-0006sh-Tz
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH v2 2/4] xfs: remove duplicate ifdefs
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

In the xfs code two such patterns were seen. Hence removing these ifdefs.
No functional change is intended here. It only aims to improve code
readability.

Reviewed-by: Darrick J. Wong <djwong@kernel.org>
Signed-off-by: Shrikanth Hegde <sshegde@linux.ibm.com>
---
 fs/xfs/xfs_sysfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/fs/xfs/xfs_sysfs.c b/fs/xfs/xfs_sysfs.c
index 17485666b672..d2391eec37fe 100644
--- a/fs/xfs/xfs_sysfs.c
+++ b/fs/xfs/xfs_sysfs.c
@@ -193,7 +193,6 @@ always_cow_show(
 }
 XFS_SYSFS_ATTR_RW(always_cow);

-#ifdef DEBUG
 /*
  * Override how many threads the parallel work queue is allowed to create.
  * This has to be a debug-only global (instead of an errortag) because one of
@@ -260,7 +259,6 @@ larp_show(
 	return snprintf(buf, PAGE_SIZE, "%d\n", xfs_globals.larp);
 }
 XFS_SYSFS_ATTR_RW(larp);
-#endif /* DEBUG */

 STATIC ssize_t
 bload_leaf_slack_store(
@@ -319,10 +317,8 @@ static struct attribute *xfs_dbg_attrs[] = {
 	ATTR_LIST(log_recovery_delay),
 	ATTR_LIST(mount_delay),
 	ATTR_LIST(always_cow),
-#ifdef DEBUG
 	ATTR_LIST(pwork_threads),
 	ATTR_LIST(larp),
-#endif
 	ATTR_LIST(bload_leaf_slack),
 	ATTR_LIST(bload_node_slack),
 	NULL,
--
2.39.3



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
