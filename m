Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 997628374F9
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zn-0008Ux-4a;
	Mon, 22 Jan 2024 21:11:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rRyQS-0003Bm-P3
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Ne24bSBSJimCOaeoAcIy2ONO23VE6PdmOvupNyNzoE=; b=TeoD6sNQP8DRGrN/BRJhQWrwJk
 G9KVhrduenDyhUYQqivTyh6M/7kE8w1gLNeapPoxnFnZWc436IIil+XU03nFPWxXnl17LwtIsmOvO
 e/FjpvGlMBAZYpD+wqbOtFZW7cBQ/eeCRoqwqz686HLK+6enXEFpdH32qxXuB4ioJxLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Ne24bSBSJimCOaeoAcIy2ONO23VE6PdmOvupNyNzoE=; b=KKxk3aCgnpJSFmrEHKKlRueD5i
 F0d/O26gBSEYtY6IBdKnj6+EnWdosfHpS2oTpWB2+Dlbw1BsIt5dQ6B+eerjHFgCX6r65JJMW1p4+
 Dr58K7TriLLrcLTKntz0of5NxyoHZec2bYWIznPpK6Mx0YnS5Dnxlth4PJTsWH1bVoyo=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRyQQ-0006sC-F6 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:37 +0000
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MH2nti026019; Mon, 22 Jan 2024 17:49:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=1Ne24bSBSJimCOaeoAcIy2ONO23VE6PdmOvupNyNzoE=;
 b=DSnNcmsuy4ri755K69TtpDVmc5Q/VgIGbQ+T309nlqzRmcrv824xhMzmYKfiYVTRy2UW
 vgPkjIUc/hRAit9rECo7AJbGajZpv8xTV6iL+7h0gag8fI1gXP2olQJy7etDeDoDAyrx
 QA+ggy/64/kqxgBX+x0OazvUx//ocdpHl9NddcTGaNFHpdJqGTk8RtsDBgmvAbZ9BayB
 brprUttO32CAbq9xz+yhUEeHWWvd5bmlWQph1mk6arDNvV94sxSpOmEW+zzn+Ts+4nIW
 LNAVXP2h0QcTPR1fJnuvPWFmvdFZDBN9BxEqKveEW3jis+L4vbNe6X0co1N+djl3anjA mw== 
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vsvdu13w0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:17 +0000
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MFq3Gg026507; Mon, 22 Jan 2024 17:49:16 GMT
Received: from smtprelay04.fra02v.mail.ibm.com ([9.218.2.228])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 3vrrgt2ef4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:16 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com
 [10.20.54.102])
 by smtprelay04.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40MHnEoJ24183512
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jan 2024 17:49:14 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 69D832004B;
 Mon, 22 Jan 2024 17:49:14 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D49462004F;
 Mon, 22 Jan 2024 17:49:11 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.ibm.com.com (unknown
 [9.43.53.45]) by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jan 2024 17:49:11 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Mon, 22 Jan 2024 23:19:01 +0530
Message-Id: <20240122174904.178594-2-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240122174904.178594-1-sshegde@linux.ibm.com>
References: <20240122174904.178594-1-sshegde@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 5b_zMLwzIuZ0dHzeKhc2UWiPZIzjQUK1
X-Proofpoint-ORIG-GUID: 5b_zMLwzIuZ0dHzeKhc2UWiPZIzjQUK1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_07,2024-01-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=935 suspectscore=0 clxscore=1015 malwarescore=0
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
 ...code block... endif ...code block... endif In the scheduler code, there
 are two places where above pattern can be observed. Hence second ifdef is
 a duplicate and not needed. Plus a minor comment update to reflect the else
 case. Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRyQQ-0006sC-F6
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH v2 1/4] sched: remove duplicate ifdefs
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
index 9116bcc90346..a76c7095f736 100644
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
index 533547e3c90a..8e30e2bb77a0 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -10182,10 +10182,8 @@ static int idle_cpu_without(int cpu, struct task_struct *p)
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
