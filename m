Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB7A2D25C5
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Dec 2020 09:24:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kmYIk-0003pp-46; Tue, 08 Dec 2020 08:24:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1kmYIi-0003pZ-OO
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 08 Dec 2020 08:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=89iHopI77MmHZ/W361QbxCuNhEkhwi3bSwvUKyVIlX8=; b=KeUqGLzDHS2G/OHvPzeaiQDHg2
 1h8eAEpEBTaA65ffT61rLahdi7dnXphaAsBXVs4t7sl+iTxLszX3Lf9vUkKGQAcBXi2cnuPIQbRPR
 ggPAfWNerbAAy1OsN4evuRSNCMckt/yjgxP+mQGe4Y1RNWFuLfBJUOnCmXefFuIbpPo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=89iHopI77MmHZ/W361QbxCuNhEkhwi3bSwvUKyVIlX8=; b=ZC7jV9ut9j0OPyKM3Nx5T3QwD8
 sq/v9wTvZ5ryZC3zCKVP5oiJVNzqEOvPwB1j0D+ZZgnZ6yx62N0ZmnotBJQdjH1dr//pH1jxg3S6M
 rRxlEGNzotEKvrAwTbtmHf9vPnZCKl0YdWcVKRDFAFsk61ltRbqZHU/iv8KVbR6BNVRA=;
Received: from [82.197.21.91] (helo=mgw-02.mpynet.fi)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kmYIW-003Agw-LI
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 08 Dec 2020 08:24:48 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 0B88LgdQ032402;
 Tue, 8 Dec 2020 10:24:03 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 357xryaceb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 08 Dec 2020 10:24:03 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 8 Dec 2020 10:24:03 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Tue, 8 Dec 2020 10:24:03 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH -next] fs/ntfs: fix set but not used variable
 'log_page_mask'
Thread-Index: AQHV+CW2KXvc7M5VpE2Aohqtho6jyqnuZSUA
Date: Tue, 8 Dec 2020 08:24:02 +0000
Message-ID: <94ED375C-C57C-464B-A1CA-BFB1EEF71BB2@tuxera.com>
References: <20200312041353.19877-1-zhengzengkai@huawei.com>
In-Reply-To: <20200312041353.19877-1-zhengzengkai@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [86.166.43.145]
Content-ID: <8651C485F171134CAB5309A902F3298E@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-08_03:2020-12-04,
 2020-12-08 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 mlxscore=0
 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=942 spamscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080052
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kmYIW-003Agw-LI
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

Can you please apply this?

Thanks a lot in advance!

Hi Zheng,

Thank you for the patch!

Best regards,

	Anton

> On 12 Mar 2020, at 04:13, Zheng Zengkai <zhengzengkai@huawei.com> wrote:
> 
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> fs/ntfs/logfile.c: In function ntfs_check_logfile:
> fs/ntfs/logfile.c:481:21:
> warning: variable log_page_mask set but not used [-Wunused-but-set-variable]
> 
> Actually log_page_mask can be used to replace 'log_page_size - 1' as it is set.
> 
> Signed-off-by: Zheng Zengkai <zhengzengkai@huawei.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>
> ---
> fs/ntfs/logfile.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
> index a0c40f1be7ac..c35fcf389369 100644
> --- a/fs/ntfs/logfile.c
> +++ b/fs/ntfs/logfile.c
> @@ -507,7 +507,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
> 	 * optimize log_page_size and log_page_bits into constants.
> 	 */
> 	log_page_bits = ntfs_ffs(log_page_size) - 1;
> -	size &= ~(s64)(log_page_size - 1);
> +	size &= ~(s64)(log_page_mask);
> 	/*
> 	 * Ensure the log file is big enough to store at least the two restart
> 	 * pages and the minimum number of log record pages.
> -- 
> 2.20.1
> 


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
