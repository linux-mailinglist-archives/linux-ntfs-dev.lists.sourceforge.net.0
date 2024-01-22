Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 547FC8374F8
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zm-0008Uo-Rd;
	Mon, 22 Jan 2024 21:11:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rRyQT-0006dL-Sa
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EtTVATMRo8Tg2MeiKpn3dDX6z3G14KJlXax/0NCnrsE=; b=XcRKLQfke2Q7WguGdOy4HWwijW
 CtvDB5213Ql85h/9us0Uq8Z2mE4DHY2pj1Lmo6foDCQPuw1o+JSGxDgbxVFqPHgilSCxptiwmdkey
 8wauBJpFdxAUcRYQCwhL07Qjz/gO/K1oYqQRckG6l5C4J364CzriEJtdi4q85IlrUo0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EtTVATMRo8Tg2MeiKpn3dDX6z3G14KJlXax/0NCnrsE=; b=T
 kkt+5i0o1W30QWHo1rqp3tz/AxGv7FrSZAoQX+MAyL2gmu7Rtsa0ePMQveg3nuRzQ+AObnm/I4MCT
 Zxg3+mr+QoGStAxfYlAUE8PU4S5rUYHjZ3R1XMYGT+xqRCGQLf6DpPVmfhmNURz1f8OoLb/B1/uYL
 Kh19ArpqO1grps/Q=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRyQQ-0006sD-NA for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:49:37 +0000
Received: from pps.filterd (m0353722.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MHOOss032448; Mon, 22 Jan 2024 17:49:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : content-transfer-encoding : mime-version; s=pp1;
 bh=EtTVATMRo8Tg2MeiKpn3dDX6z3G14KJlXax/0NCnrsE=;
 b=HQU/xgY+X5uQi/buZnYEV1O9TtTA+b3KKSxgkQE9MO3xmVLsXpHLn/qs4ndFkbkki9rZ
 pK6cvKIBHcmAxJ9QXKZzAkvoTrk8hu0rb0VsHsFhtwnvNeGwMY8LcuWQclk1IeGCHM7F
 Z7lpBuosa2RrgvVn9CS5Qke3DnNXFL0KRlv5E5+u3sQ2hDTX5fiVvePB2mWe+wy82t+y
 /SFNl6YQV+U57nBbmtSYT+rV9QyOGeoe9L97M3FMM+3sOChqVW5F5wUDNvigwl5mTr7t
 eFFDYXERm6WknFOC+XaEUXtVnGBWbJWHIKzcLu+uMncgwpd9KWqbaul0ESvKooaCUULk Pw== 
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vsuxaa5nk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:13 +0000
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MFkQrU026475; Mon, 22 Jan 2024 17:49:12 GMT
Received: from smtprelay07.fra02v.mail.ibm.com ([9.218.2.229])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 3vrrgt2eet-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 17:49:12 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com
 [10.20.54.102])
 by smtprelay07.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40MHnARB27591306
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jan 2024 17:49:10 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 390B220043;
 Mon, 22 Jan 2024 17:49:10 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B0C2620040;
 Mon, 22 Jan 2024 17:49:07 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.ibm.com.com (unknown
 [9.43.53.45]) by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jan 2024 17:49:07 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Mon, 22 Jan 2024 23:19:00 +0530
Message-Id: <20240122174904.178594-1-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: -rzBX_0dIV7n-gkdJoFKiqnOb4QTrDRU
X-Proofpoint-GUID: -rzBX_0dIV7n-gkdJoFKiqnOb4QTrDRU
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_07,2024-01-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=824 priorityscore=1501 clxscore=1011
 suspectscore=0 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401220124
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When going through the code observed a case in scheduler,
 where #ifdef CONFIG_SMP was used to inside an #ifdef CONFIG_SMP. That didn't
 make sense since first one is good enough and second one is a dup [...] 
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
X-Headers-End: 1rRyQQ-0006sD-NA
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH v2 0/4] remove duplicate ifdefs
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

When going through the code observed a case in scheduler,
where #ifdef CONFIG_SMP was used to inside an #ifdef CONFIG_SMP.
That didn't make sense since first one is good enough and second
one is a duplicate.

This could improve code readability. No functional change is intended.

Since this might be present in other code areas wrote a very basic
python script which helps in finding these cases. It doesn't handle any
complicated #defines or space separated "# if". At some places the
log collected had to be manually corrected due to space separated ifdefs.
Thats why its not a treewide change.
There might be an opportunity for other files as well.

Logic is very simple. If there is #ifdef or #if or #ifndef add that
variable to list. Upon every subsequent #ifdef or #if or #ifndef
check if the same variable is in the list. If yes flag
an error. Verification was done manually later checking for any #undef
or any error due to script. These were the ones that flagged out and
made sense after going through code.

More details about how the logs were collected and the script used for
processing the logs are mentioned in v1 cover letter.

v2->v1:
split the fs change into two patches as suggested by Chandan Babu R.
v1: https://lore.kernel.org/all/20240118080326.13137-1-sshegde@linux.ibm.com/

Shrikanth Hegde (4):
  sched: remove duplicate ifdefs
  xfs: remove duplicate ifdefs
  ntfs: remove duplicate ifdefs
  arch/powerpc: remove duplicate ifdefs

 arch/powerpc/include/asm/paca.h           | 4 ----
 arch/powerpc/kernel/asm-offsets.c         | 2 --
 arch/powerpc/platforms/powermac/feature.c | 2 --
 arch/powerpc/xmon/xmon.c                  | 2 --
 fs/ntfs/inode.c                           | 2 --
 fs/xfs/xfs_sysfs.c                        | 4 ----
 kernel/sched/core.c                       | 4 +---
 kernel/sched/fair.c                       | 2 --
 8 files changed, 1 insertion(+), 21 deletions(-)

--
2.39.3



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
