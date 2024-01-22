Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBFC8374F7
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Jan 2024 22:11:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rS1Zm-0008Ub-IE;
	Mon, 22 Jan 2024 21:11:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sshegde@linux.ibm.com>) id 1rRvRC-0001mG-RS
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 14:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9eZRduKNvGVeB9aJIyquvVMwc8fAl3YaIxTQDqo1WTg=; b=VA6MERNB8GHHyvne3ogO7PndeK
 23rxaUm2elHR5c/jpYWM97K4942D0C2jl6kWhqbLfOIhZ/W3OiXAqJ/rdFrGzsay6nGvwIA5Wr/x4
 VMCwO+i0ZFicdBQa8FkDrgpz6tZxJJX+uMmQJnuaPCLotFStC9IrIUJSoSQVJKRat1eQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9eZRduKNvGVeB9aJIyquvVMwc8fAl3YaIxTQDqo1WTg=; b=hB8yRZ0Y63dFUQ7jzW1FxK68xE
 LXW0JMDxowN3MCxOAK+aXRrQO5+mCwus5l+07hqfBiu1+iZA3wyCQdacUBbo2zQ6dBUiMhCbM/+4l
 dHvEqSUmrCgpZ9av/Tky+uiUPyxIE08uZR7wkmn/+iqUzUJj27XfEwIJq3X0GimIzSLM=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRvR8-00015n-5i for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 22 Jan 2024 14:38:11 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MDB74L027059; Mon, 22 Jan 2024 14:37:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=9eZRduKNvGVeB9aJIyquvVMwc8fAl3YaIxTQDqo1WTg=;
 b=O8TnIYlYGZfyYQL8P3i0C8yxN4DRQvasrWwLr0b4OqgDmaI75iRcqmBnf3Lf51wHvqTx
 prcbnFbRJj/s9eg5rNrRlh1L8zxgBRYDnsrWnsOMQb6WOpQpZeEGa5BaiKxu08FOIGPd
 QkER6Y2zHzffdGfKmCzXaCJPvrMb/YP5ZFZF4ygTpjOoKoCiuuunx22Z6KgtXoJL0FWn
 Q0oWbhDZ3Ym/d9Jfq7CnIkpqpx26B8hnUROolFW2Z/1WHG2mgAmyeVDApW2U+F2uNakq
 XEoPnP5uIZJIK1JrBLPQkoHLvGyr8wy/3+1g6JK3SQMssybZulRVfGyZ/LuZwYEKE+Lo GQ== 
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3vsrycjk32-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 14:37:40 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 40MBSVlX025636; Mon, 22 Jan 2024 14:37:39 GMT
Received: from smtprelay04.dal12v.mail.ibm.com ([172.16.1.6])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3vrsgnruju-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Jan 2024 14:37:39 +0000
Received: from smtpav01.wdc07v.mail.ibm.com (smtpav01.wdc07v.mail.ibm.com
 [10.39.53.228])
 by smtprelay04.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 40MEbcMb18285072
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jan 2024 14:37:38 GMT
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 527DB58055;
 Mon, 22 Jan 2024 14:37:38 +0000 (GMT)
Received: from smtpav01.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2C46F5804B;
 Mon, 22 Jan 2024 14:37:35 +0000 (GMT)
Received: from [9.43.53.45] (unknown [9.43.53.45])
 by smtpav01.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jan 2024 14:37:34 +0000 (GMT)
Message-ID: <218f08f9-bc12-47db-aa04-c2058c901986@linux.ibm.com>
Date: Mon, 22 Jan 2024 20:07:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chandan Babu R <chandanbabu@kernel.org>
References: <20240118080326.13137-1-sshegde@linux.ibm.com>
 <20240118080326.13137-3-sshegde@linux.ibm.com>
 <87cyttedjj.fsf@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
In-Reply-To: <87cyttedjj.fsf@debian-BULLSEYE-live-builder-AMD64>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: wwsiLOWQFOWpM58VonwYO5JiFtGQQtRe
X-Proofpoint-GUID: wwsiLOWQFOWpM58VonwYO5JiFtGQQtRe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-22_05,2024-01-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011
 impostorscore=0 mlxscore=0 spamscore=0 adultscore=0 mlxlogscore=620
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2401220099
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/22/24 6:20 PM, Chandan Babu R wrote: > On Thu, Jan 18, 
 2024 at 01:33:25 PM +0530, Shrikanth Hegde wrote: >> when a ifdef is used
 in the below manner, second one could be considered as >> duplicat [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRvR8-00015n-5i
X-Mailman-Approved-At: Mon, 22 Jan 2024 21:11:25 +0000
Subject: Re: [Linux-ntfs-dev] [RFC PATCH 2/3] fs: remove duplicate ifdefs
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
Cc: linux-ntfs-dev@lists.sourceforge.net, mpe@ellerman.id.au,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org, peterz@infradead.org,
 linuxppc-dev@lists.ozlabs.org, mingo@kernel.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net



On 1/22/24 6:20 PM, Chandan Babu R wrote:
> On Thu, Jan 18, 2024 at 01:33:25 PM +0530, Shrikanth Hegde wrote:
>> when a ifdef is used in the below manner, second one could be considered as
>> duplicate.
>>
>> ifdef DEFINE_A
>> ...code block...
>> ifdef DEFINE_A
>> ...code block...
>> endif
>> ...code block...
>> endif
>>
>> There are few places in fs code where above pattern was seen.
>> No functional change is intended here. It only aims to improve code
>> readability.
>>
> 
> Can you please post the xfs changes as a separate patch along with Darrick's
> RVB tag? This will make it easy for me to apply the resulting patch to the XFS
> tree.

Ok. will split the fs patches into two and send v2 soon. 

Thanks.

> 


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
