Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 749178374FC
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zo-0008W2-11;
	Mon, 22 Jan 2024 21:11:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rRyQg-0003C3-RK
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AmRsDf2UHYAbAbmc8ihNWLxJC5WvTdmS07elNqb4DPo=; b=Z/8IF0by92kilfYZHDoMSj37z+
 if09Knf+Sqm/Y8lvUKhtFyb/zwFI3My7qZNQr0amRKmhEQwOiAL496t/BLFMXbrvptWdEirZuIxs5
 Q3peRyZWnlQpKNK90F4y9oeXSRf0bLCGEo+6IZrppcKbL1KfkTVAMaqiXwRHlQZRmfb4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AmRsDf2UHYAbAbmc8ihNWLxJC5WvTdmS07elNqb4DPo=; b=ORg/HKEjo8bXU+Stp3UZJSaxBK
 XOix7GTqh3Yx3nGt14PhxZ9ErCemfOlC94ApnB7Qk5iqG5lGeCLpqo4lJKMHn1QxpB1g4BZr3L0A0
 HS+KlY8XLCoOC1VPCEamoML9aLUCO0lcv5LrrnVWd5HcwjPUEVPKei1w0fVAeyDKo7qU=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRyQe-0006t3-QD for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:51 +0000
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MH2l12025984; Mon, 22 Jan 2024 17:49:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=AmRsDf2UHYAbAbmc8ihNWLxJC5WvTdmS07elNqb4DPo=;
 b=i3Ia348hANbwetfnf9BgHxy7eH0UdgedyiK9dl7FedjYvYv5yoSBvti2zoXzpTG3jnVO
 B4lwhfzLGv/BcS3vuZOg9IA4pxYjARyfT/isvp4gTj5aq/BySl5DIkaCJ86vkVKm66lP
 Tntd9/6nWbTpHG7qLQnQZnk93sK+7Almm56b5hrr5FZxXSzg/wHkjOdgA84PhqvjielF
 FBQfpdGaPvZjuWBNrgZGIBTzgCjN8AozLyipldefPwCwfGPm4fM9nDaKaG4W1vYOv+x+
 5mcXuj0QHQPfOBo30+wsgIIRH2kkVpJyM3V7Z0SNDNBrnUw9tpxzhYOK2xYX5n43puZ4 Jg== 
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vsvdu140a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:28 +0000
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MFkTbt026485; Mon, 22 Jan 2024 17:49:28 GMT
Received: from smtprelay02.fra02v.mail.ibm.com ([9.218.2.226])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 3vrrgt2efw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:27 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com
 [10.20.54.102])
 by smtprelay02.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40MHnQBd16712438
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jan 2024 17:49:26 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2358F2004D;
 Mon, 22 Jan 2024 17:49:26 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CC91420040;
 Mon, 22 Jan 2024 17:49:23 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.ibm.com.com (unknown
 [9.43.53.45]) by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jan 2024 17:49:23 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Mon, 22 Jan 2024 23:19:04 +0530
Message-Id: <20240122174904.178594-5-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240122174904.178594-1-sshegde@linux.ibm.com>
References: <20240122174904.178594-1-sshegde@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: XPYipnFqp0sYws1fp9JI9cw7kcNK7WCF
X-Proofpoint-ORIG-GUID: XPYipnFqp0sYws1fp9JI9cw7kcNK7WCF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_07,2024-01-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=636 suspectscore=0 clxscore=1015 malwarescore=0
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
 ...code block... endif ...code block... endif few places in arch/powerpc
 where this pattern was seen. In addition to that in paca.h,
 CONFIG_PPC_BOOK3S_64
 was defined back to back. merged the two ifdefs. 
 Content analysis details:   (-0.1 points, 6.0 required)
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
X-Headers-End: 1rRyQe-0006t3-QD
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH v2 4/4] arch/powerpc: remove duplicate
 ifdefs
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

few places in arch/powerpc where this pattern was seen. In addition to that
in paca.h, CONFIG_PPC_BOOK3S_64 was defined back to back. merged the two
ifdefs.

No functional change is intended here. It only aims to improve code
readability.

Signed-off-by: Shrikanth Hegde <sshegde@linux.ibm.com>
---
 arch/powerpc/include/asm/paca.h           | 4 ----
 arch/powerpc/kernel/asm-offsets.c         | 2 --
 arch/powerpc/platforms/powermac/feature.c | 2 --
 arch/powerpc/xmon/xmon.c                  | 2 --
 4 files changed, 10 deletions(-)

diff --git a/arch/powerpc/include/asm/paca.h b/arch/powerpc/include/asm/paca.h
index e667d455ecb4..1d58da946739 100644
--- a/arch/powerpc/include/asm/paca.h
+++ b/arch/powerpc/include/asm/paca.h
@@ -163,9 +163,7 @@ struct paca_struct {
 	u64 kstack;			/* Saved Kernel stack addr */
 	u64 saved_r1;			/* r1 save for RTAS calls or PM or EE=0 */
 	u64 saved_msr;			/* MSR saved here by enter_rtas */
-#ifdef CONFIG_PPC64
 	u64 exit_save_r1;		/* Syscall/interrupt R1 save */
-#endif
 #ifdef CONFIG_PPC_BOOK3E_64
 	u16 trap_save;			/* Used when bad stack is encountered */
 #endif
@@ -214,8 +212,6 @@ struct paca_struct {
 	/* Non-maskable exceptions that are not performance critical */
 	u64 exnmi[EX_SIZE];	/* used for system reset (nmi) */
 	u64 exmc[EX_SIZE];	/* used for machine checks */
-#endif
-#ifdef CONFIG_PPC_BOOK3S_64
 	/* Exclusive stacks for system reset and machine check exception. */
 	void *nmi_emergency_sp;
 	void *mc_emergency_sp;
diff --git a/arch/powerpc/kernel/asm-offsets.c b/arch/powerpc/kernel/asm-offsets.c
index 9f14d95b8b32..f029755f9e69 100644
--- a/arch/powerpc/kernel/asm-offsets.c
+++ b/arch/powerpc/kernel/asm-offsets.c
@@ -246,9 +246,7 @@ int main(void)
 	OFFSET(PACAHWCPUID, paca_struct, hw_cpu_id);
 	OFFSET(PACAKEXECSTATE, paca_struct, kexec_state);
 	OFFSET(PACA_DSCR_DEFAULT, paca_struct, dscr_default);
-#ifdef CONFIG_PPC64
 	OFFSET(PACA_EXIT_SAVE_R1, paca_struct, exit_save_r1);
-#endif
 #ifdef CONFIG_PPC_BOOK3E_64
 	OFFSET(PACA_TRAP_SAVE, paca_struct, trap_save);
 #endif
diff --git a/arch/powerpc/platforms/powermac/feature.c b/arch/powerpc/platforms/powermac/feature.c
index 81c9fbae88b1..2cc257f75c50 100644
--- a/arch/powerpc/platforms/powermac/feature.c
+++ b/arch/powerpc/platforms/powermac/feature.c
@@ -2333,7 +2333,6 @@ static struct pmac_mb_def pmac_mb_defs[] = {
 		PMAC_TYPE_POWERMAC_G5,		g5_features,
 		0,
 	},
-#ifdef CONFIG_PPC64
 	{	"PowerMac7,3",			"PowerMac G5",
 		PMAC_TYPE_POWERMAC_G5,		g5_features,
 		0,
@@ -2359,7 +2358,6 @@ static struct pmac_mb_def pmac_mb_defs[] = {
 		0,
 	},
 #endif /* CONFIG_PPC64 */
-#endif /* CONFIG_PPC64 */
 };

 /*
diff --git a/arch/powerpc/xmon/xmon.c b/arch/powerpc/xmon/xmon.c
index b3b94cd37713..f413c220165c 100644
--- a/arch/powerpc/xmon/xmon.c
+++ b/arch/powerpc/xmon/xmon.c
@@ -643,10 +643,8 @@ static int xmon_core(struct pt_regs *regs, volatile int fromipi)
 			touch_nmi_watchdog();
 		} else {
 			cmd = 1;
-#ifdef CONFIG_SMP
 			if (xmon_batch)
 				cmd = batch_cmds(regs);
-#endif
 			if (!locked_down && cmd)
 				cmd = cmds(regs);
 			if (locked_down || cmd != 0) {
--
2.39.3



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
