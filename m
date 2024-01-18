Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8A08315FE
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Jan 2024 10:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rQOsy-0005ZM-4s;
	Thu, 18 Jan 2024 09:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rQO6Q-000543-GO
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Jan 2024 08:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=he2i3jOgA8ugAT3gEAoGWdurDGiSbKEL1Suh3vTdnWQ=; b=HgCFyE85McYdqR40aQPeNRe6eo
 sFyau+pGkIdHO48S0WIqnkebGPR0BEMwcC14sOQEJBOWo7vAR8I5DsgjgwjWGb/GH51YOYtbZkbQ2
 Wi337WVRaFzgCMfXh4Eum7Nz7y5loXwAamM84FTUAo78ky4pMttH+uftOzv/GKOdHOoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=he2i3jOgA8ugAT3gEAoGWdurDGiSbKEL1Suh3vTdnWQ=; b=LjDXV/KbrnCJZJHkcAINEVQN2b
 vpxHrFLHsbqbIqmAZK5igxgYiIlcPLQ+Y+bERvKcV5jCLqD4ncavZD6YX/P4qitd1ij++nFRngJAN
 8FjWULIP3wKUSYdoUFFxZ33pSSdFm0uIOlLgbD0vUFx0lTm9PkvnL8NfOfSfkXduBN7s=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rQO6H-0001oL-Nq for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Jan 2024 08:50:19 +0000
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40I7vMeD011578; Thu, 18 Jan 2024 08:04:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=he2i3jOgA8ugAT3gEAoGWdurDGiSbKEL1Suh3vTdnWQ=;
 b=FqnT8Vdu+4klNVAUZNOFJmePrzOyFXCDdMuhtEEUFUIQMhwAzmZSuaztVMjfuzWcGrS+
 wmepl0Qk64klA1q/8MSAWI/LuFnKEpQsXhSWtD3fiYsf9pTGhnmE92y4DHkHfdAMDKfU
 o+WxFX4KVKYRWVO2VR6pmmurMwIM6U8V7AONGVztE8cSYr8M2j87B8UUTM+pfagTpYkd
 P3M6VsZtiFLdZVxIuDn3FpHKye4a0CJpZf8HnmQxtfbAko/z468v1jPdM1ZfcO6DOfBd
 KbLrGtSKuwNw/FHp1r7+v8Dx8bv4SkgdXqwGNMT3dv84t2UFPJOtc2uDGkqJ3pGVB/Rt fw== 
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vq02206hh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jan 2024 08:04:08 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40I74lOb011009; Thu, 18 Jan 2024 08:04:07 GMT
Received: from smtprelay07.fra02v.mail.ibm.com ([9.218.2.229])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3vm57ytc11-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jan 2024 08:04:07 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay07.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40I845W424707822
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jan 2024 08:04:05 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 55C0120040;
 Thu, 18 Jan 2024 08:04:05 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F279320043;
 Thu, 18 Jan 2024 08:04:02 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.in.ibm.com (unknown
 [9.109.201.126])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 18 Jan 2024 08:04:02 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Thu, 18 Jan 2024 13:33:24 +0530
Message-Id: <20240118080326.13137-2-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240118080326.13137-1-sshegde@linux.ibm.com>
References: <20240118080326.13137-1-sshegde@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 3PWccwYfkYM-DHA16-RytUKNot96V0J9
X-Proofpoint-GUID: 3PWccwYfkYM-DHA16-RytUKNot96V0J9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-18_04,2024-01-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 adultscore=0 mlxlogscore=961
 impostorscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2401180056
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  when a ifdef is used in the below manner, second one could
 be considered as duplicate. ifdef DEFINE_A ...code block... ifdef DEFINE_A
 ...code block... endif ...code block... endif In the scheduler code, there
 are two places where above pattern can be observed. Hence second ifdef is
 a duplicate and not needed. Plus a minor comment update to reflect the else
 case. Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rQO6H-0001oL-Nq
X-Mailman-Approved-At: Thu, 18 Jan 2024 09:40:31 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH 1/3] sched: remove duplicate ifdefs
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
 mingo@kernel.org, anton@tuxera.com, chandan.babu@oracle.com
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

In the scheduler code, there are two places where above pattern can be
observed. Hence second ifdef is a duplicate and not needed.
Plus a minor comment update to reflect the else case.

No functional change is intended here. It only aims to improve code
readability.

Signed-off-by: Shrikanth Hegde <sshegde@linux.ibm.com>
---
 kernel/sched/core.c | 4 +---
 kernel/sched/fair.c | 2 --
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 038eeaf76d2d..1bfb186fd67f 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -1792,7 +1792,6 @@ static void cpu_util_update_eff(struct cgroup_subsys_state *css);
 #endif

 #ifdef CONFIG_SYSCTL
-#ifdef CONFIG_UCLAMP_TASK
 #ifdef CONFIG_UCLAMP_TASK_GROUP
 static void uclamp_update_root_tg(void)
 {
@@ -1898,7 +1897,6 @@ static int sysctl_sched_uclamp_handler(struct ctl_table *table, int write,
 	return result;
 }
 #endif
-#endif

 static int uclamp_validate(struct task_struct *p,
 			   const struct sched_attr *attr)
@@ -2065,7 +2063,7 @@ static void __init init_uclamp(void)
 	}
 }

-#else /* CONFIG_UCLAMP_TASK */
+#else /* !CONFIG_UCLAMP_TASK */
 static inline void uclamp_rq_inc(struct rq *rq, struct task_struct *p) { }
 static inline void uclamp_rq_dec(struct rq *rq, struct task_struct *p) { }
 static inline int uclamp_validate(struct task_struct *p,
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index f2bb83675e4a..6158a6752c25 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -10166,10 +10166,8 @@ static int idle_cpu_without(int cpu, struct task_struct *p)
 	 * be computed and tested before calling idle_cpu_without().
 	 */

-#ifdef CONFIG_SMP
 	if (rq->ttwu_pending)
 		return 0;
-#endif

 	return 1;
 }
--
2.39.3



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
