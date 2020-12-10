Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D50822D510D
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 10 Dec 2020 03:52:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1knC3u-0004jl-BM; Thu, 10 Dec 2020 02:52:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1knC3s-0004jX-SM
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 10 Dec 2020 02:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X6xvtSTEc4qIertH9FRc1VbG71yarxarVAxvDTwRKow=; b=j0GWHQ2BNOtJMubpGrpSWdC8ez
 7kPAe4Xgugy83dkf78DfP40XP+JZCSu2JwIrsBL6CQ2ytKlDnMvg0QggwOkR7pgjwYyF8akNNEOBZ
 nup2mn4ps6P8om7v9TT77FAvGbN03nM9Sxf5WeXt+iZwgTD+QWU9YH9rxMj72xTdw29o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X6xvtSTEc4qIertH9FRc1VbG71yarxarVAxvDTwRKow=; b=FT8hVlawbGeKUe31J9va0Ip/QB
 TxciRKVLuQ3YTnLNUtV+MGbKsq8Xl/9BnedEy8nS5htQxdJQmB1v61wAV0ZSINMVKOwtbUm6F1asi
 N6LlDloY8/j7SUywAqZRk12EQj+9OHAFC146e/GdX/bhSIqd9k40t4Wr+BUBbQ5u7ZOM=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1knC3k-008VBD-2l
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 10 Dec 2020 02:52:08 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 0BA2al1U015078;
 Thu, 10 Dec 2020 04:51:18 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 35b9r801es-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 10 Dec 2020 04:51:18 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 10 Dec 2020 04:51:17 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Thu, 10 Dec 2020 04:51:17 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH -next] fs/ntfs: fix set but not used variable
 'log_page_mask'
Thread-Index: AQHV+CW2KXvc7M5VpE2Aohqtho6jyqnuZSUAgALDiICAAAQoAA==
Date: Thu, 10 Dec 2020 02:51:17 +0000
Message-ID: <C1D18C59-3E1B-4825-881C-B7AE6FACF4D7@tuxera.com>
References: <20200312041353.19877-1-zhengzengkai@huawei.com>
 <94ED375C-C57C-464B-A1CA-BFB1EEF71BB2@tuxera.com>
 <20201209183623.b26e90de3d0aa92a72010ff0@linux-foundation.org>
In-Reply-To: <20201209183623.b26e90de3d0aa92a72010ff0@linux-foundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [86.134.252.216]
Content-ID: <3C28FABD37D07B4CA17E13423600CA60@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-09_19:2020-12-09,
 2020-12-09 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 spamscore=0
 bulkscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012100018
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1knC3k-008VBD-2l
Subject: Re: [Linux-NTFS-Dev] [PATCH -next] fs/ntfs: fix set but not used
 variable 'log_page_mask'
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, LKML <linux-kernel@vger.kernel.org>,
 Zheng Zengkai <zhengzengkai@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Andrew,

Ah, oops!  Thank you and apologies.  Quite right the alternative patch was even better.  No need to apply this patch after all...

Zheng, the log_page_mask variable was removed altogether so your patch no longer makes sense.

Best regards,

	Anton

> On 10 Dec 2020, at 02:36, Andrew Morton <akpm@linux-foundation.org> wrote:
> 
> On Tue, 8 Dec 2020 08:24:02 +0000 Anton Altaparmakov <anton@tuxera.com> wrote:
> 
>> Can you please apply this?
>> 
>> ...
>> 
>>> --- a/fs/ntfs/logfile.c
>>> +++ b/fs/ntfs/logfile.c
>>> @@ -507,7 +507,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
>>> 	 * optimize log_page_size and log_page_bits into constants.
>>> 	 */
>>> 	log_page_bits = ntfs_ffs(log_page_size) - 1;
>>> -	size &= ~(s64)(log_page_size - 1);
>>> +	size &= ~(s64)(log_page_mask);
>>> 	/*
>>> 	 * Ensure the log file is big enough to store at least the two restart
>>> 	 * pages and the minimum number of log record pages.
> 
> https://lore.kernel.org/lkml/1604821092-54631-1-git-send-email-alex.shi@linux.alibaba.com/
> addressed this?
> 


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
