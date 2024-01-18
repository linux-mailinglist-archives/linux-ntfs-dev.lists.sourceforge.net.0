Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB69B831600
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Jan 2024 10:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rQOsy-0005Zo-OZ;
	Thu, 18 Jan 2024 09:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rQOLu-0005FN-NG
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Jan 2024 09:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dW6SN3AhL0Lcxi0KIl8tKzSobcAeQPzLd4TnKFmh2CA=; b=kXeX2Duf1FJ53A41QddjdAVapz
 se7jEjESYJ7ymFDSXu0dh4B0QdkOrf47BYszlJd0IQvBprWcW8IA2WWNy0jujHmk2EoFyQqrMSppd
 9N/QylU3FG/yGK8Szrp7Hz8c8mxc8gRpdCNFVVe2aoH+/XfpPu+10dMW4Su0JIHxeJ4A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dW6SN3AhL0Lcxi0KIl8tKzSobcAeQPzLd4TnKFmh2CA=; b=e
 XFyZWU4jBiT3zYi17TeAcNF6PZBSWlX5Jsf2TnNBSbpOti53Rw+dJvLBMeqW6oyuwwHNpFNFnZMPU
 iWqEAXTOLCi7oQOj4oYQnCGqeQ+J6cvW1GcZTL7liCxogB+g9lh4xjheioju2a19sTAD8if7D2l5J
 L2eh+wPkCqYBnSKI=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rQOLs-0003Il-RF for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Jan 2024 09:06:23 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40I7L5Br031729; Thu, 18 Jan 2024 08:04:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=dW6SN3AhL0Lcxi0KIl8tKzSobcAeQPzLd4TnKFmh2CA=;
 b=OBK3Uu4xnAqt0dl7fLOvpH/dqie3h3kpd8tLlyyaLATTVcXpH3tfbUk9+5Aa7G/SkG9K
 rGke8RGRKvHW/aFLsNURz+WoPhu6p4+ZAR4f7hRro7yFdqwJQoe3DUPPpYvvR26ZYt/R
 Qg925ljlJjVAh/KroqGlufbV/gNP5L1cKnfvqs2NlZ5GAecZzrlc27e2WIU8ZjhqpTQX
 SjPlEsa1eJyZFyPTHu4YK/Nk5lErAvcvnC8hHQzhtgzR3JmMv+/iKT6ycjNjUGi6helL
 Yw1phm/qMsyUNa1osixjIXNf705SlW8gt+qgt6G7PBP5QEubARkXtE1F/fv6+PJyoTXS mA== 
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vpw6pvauv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jan 2024 08:04:03 +0000
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40I7BDoX006508; Thu, 18 Jan 2024 08:04:03 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 3vm7j21nb2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jan 2024 08:04:02 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40I841Q036045078
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Jan 2024 08:04:01 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2FADC20043;
 Thu, 18 Jan 2024 08:04:01 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F40FD20040;
 Thu, 18 Jan 2024 08:03:58 +0000 (GMT)
Received: from li-c1fdab4c-355a-11b2-a85c-ef242fe9efb4.in.ibm.com (unknown
 [9.109.201.126])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Thu, 18 Jan 2024 08:03:58 +0000 (GMT)
To: linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Date: Thu, 18 Jan 2024 13:33:23 +0530
Message-Id: <20240118080326.13137-1-sshegde@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: sHUTBHPs0bn-MPgVd2jK5MQVyP9-lhbG
X-Proofpoint-ORIG-GUID: sHUTBHPs0bn-MPgVd2jK5MQVyP9-lhbG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-18_04,2024-01-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=696 priorityscore=1501
 phishscore=0 adultscore=0 clxscore=1011 mlxscore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401180056
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rQOLs-0003Il-RF
X-Mailman-Approved-At: Thu, 18 Jan 2024 09:40:31 +0000
Subject: [Linux-ntfs-dev] [RFC PATCH 0/3] remove duplicate ifdefs
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

When going through the code observed a case in scheduler,
where #ifdef CONFIG_SMP was used to inside an #ifdef CONFIG_SMP.
That didn't make sense since first one is good enough and second
one is a duplicate.

This could improve code readability. No functional change is intended.
Maybe this is not an issue these days as language servers can parse
the config and users can read the code without bothering about
whats true and whats not.

Does this change makes sense?

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

ifdefs were collected using grep in below way and that file was used as
the input to the script.
grep -rIwn --include="*.c*" --include="*.h"  -e "#if" -e "#ifndef" -e "#ifdef" -e "#else" -e "#endif" * > /tmp/input.txt

---------------------------------------------------------------------
script used:
---------------------------------------------------------------------
import os
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--file",
                            help="file to input to script",
                            type=str)
    parser.add_argument("--verbose",
                            help="Print additional debugging info, 0 to disable ",
                            type=int)
    args = parser.parse_args()
    return args

def parseFiles(args):
    file_to_parse = open(args.file, "r")
    lines = file_to_parse.readlines()
    check_length = len(lines)
    ifdefs_list = []
    i=0

    while i < check_length:
        line = lines[i]
        last_word = line.strip().split(":")[2]
        last_word = last_word.split("/")[0]

        if (args.verbose):
            print(line)
        last_word_splits = last_word.split()
        if (args.verbose):
            print(last_word_splits)
        if last_word_splits[0] == "#ifdef" or last_word_splits[0] == "#ifndef" or last_word_splits[0] == "#if":
            if last_word_splits[1] in ifdefs_list:
                print("This is duplicate and may be fixed: %s, parent_list:\n" % (line))
                print(ifdefs_list)
            ifdefs_list.append(last_word_splits[1])
        if last_word_splits[0] == "#endif"":
            ifdefs_list.pop()

        i=i+1

if __name__ == "__main__":
    args = parse_args()
    parseFiles(args)
-------------------------------------------------------------------------


Shrikanth Hegde (3):
  sched: remove duplicate ifdefs
  fs: remove depulicate ifdefs
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
