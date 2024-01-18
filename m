Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC978315FD
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Jan 2024 10:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rQOsx-0005ZH-Rc;
	Thu, 18 Jan 2024 09:40:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rQO2H-0004zk-Df
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Jan 2024 08:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AmRsDf2UHYAbAbmc8ihNWLxJC5WvTdmS07elNqb4DPo=; b=LPEHNV4CzvtT1O6oxIp8zrGWj6
 g1dObZO1UfZgjB6kxVignyYXDk7Uwen9aauwHbSsLmmdWDMWAlqCt62K5haUsKaiJvrmuLEPqD75y
 gfjDSvXGW2uXThzPl51qYOrZi6mXRA6tEQQLWBj4h0nbP+wOZXlkeCvKEOGu3hPzjF/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AmRsDf2UHYAbAbmc8ihNWLxJC5WvTdmS07elNqb4DPo=; b=OdpeiqInqZYkXpLxHn36OqnMAw
 l75OyACjh5L98BFPP+zAJaRHrgLdnCZpyBkMk8qsYP61wMXc0LytDdkQ0PihGWE8lZ9IvlpQs2KCD
 6EJCtr4nKaJ3En7OGNHEzW1l5hQJSqbR/WImB2vTJiJm23t0lBgGi7ne2NTITZvAIr7c=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rQO2D-0001JF-AA for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Jan 2024 08:46:05 +0000
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40I7oocq009670; Thu, 18 Jan 2024 08:04:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=AmRsDf2UHYAbAbmc8ihNWLxJC5WvTdmS07elNqb4DPo=;
 b=TISuaZPH9xaLur3lvZqvrDF376vxZm7NEbOlhJLj3dqSaWCgVG/Etz4aqjOWhdkHaZOT
 q5qDAm9sUFMoDUst33j7DvQz/ATYVfR9W8HoU1bzZsU7LBAYSBLiFYrOnaXWZp0AXquN
 /dZ6Bhw75MXvdreA0wEsirqHbG5VYyc2X5q+wOuyVMD5WdoXAe50Vay3a6HGsXGOw0DY
 cV/icFPkk/JmC3t5qao/6ZaWoDE/t1eq7QRF7ogUVD9ufONdZAdmjRe44sJfhb97xAga
 Y85FWsT+O17ipvosGHLmlNJWY60nDcXa2qD/8zyI9VwMMiYcXjT2awZBZulOkDn7R/Q1 kA== 
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vpyrk8m52-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jan 2024 08:04:16 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40I77MnU005807; Thu, 18 Jan 2024 08:04:14 GMT
Received: from smtprelay07.fra02v.mail.ibm.com ([9.218.2.229])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3vm6bkt1s3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jan 2024 08:04:14 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay07.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40I84CsQ25821724
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jan 2024 08:04:12 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 56F682004B;
 Thu, 18 Jan 2024 08:04:12 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5983220040;
 Thu, 18 Jan 2024 08:04:10 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.in.ibm.com (unknown
 [9.109.201.126])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 18 Jan 2024 08:04:10 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Thu, 18 Jan 2024 13:33:26 +0530
Message-Id: <20240118080326.13137-4-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240118080326.13137-1-sshegde@linux.ibm.com>
References: <20240118080326.13137-1-sshegde@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: ybzYR_15sOZJwGfICg1PC-UelNSZi1tz
X-Proofpoint-ORIG-GUID: ybzYR_15sOZJwGfICg1PC-UelNSZi1tz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-18_04,2024-01-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=657 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311290000 definitions=main-2401180056
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rQO2D-0001JF-AA
X-Mailman-Approved-At: Thu, 18 Jan 2024 09:40:31 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH 3/3] arch/powerpc: remove duplicate
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
