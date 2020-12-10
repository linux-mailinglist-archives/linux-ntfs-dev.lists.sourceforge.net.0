Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9A62D54E5
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 10 Dec 2020 08:54:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1knGm2-0003XD-Ii; Thu, 10 Dec 2020 07:54:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengzengkai@huawei.com>) id 1knFGf-0006WF-Vo
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 10 Dec 2020 06:17:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kypFKOYEqgTM1v0iFG98jpSTeYop/dzeHR1SH/FiUSw=; b=gP3gr1a2lg3GMy/ivzu82buiON
 uP5g+GYQwpamVpx7ByMT1MGmFqBJ50Di8sLVGZBTfn7ziPRTusIFolfln9GWvwV/VwUrtkmpLiEKv
 9wSNYER3bYJEhQ3LlsYPkPFHYxlLqXmLz5Evh/vcwQKbeWXAs0LAGsSgSg9az29afl6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kypFKOYEqgTM1v0iFG98jpSTeYop/dzeHR1SH/FiUSw=; b=PgM8Y4S6CwuEAYNDD5Q8TpX/5I
 EbQt9DehvUGV4Ql5bt/CyJUcfF4Qv6NGGigvd9XlJWFtmxsElXyZ+XXTnypOEEVU9MxAeDz95LKip
 9zD440ATaaJ9usZWo8dw6kAF2FrqQfsocG/Pcg61m5vhQg2zOpikzaaE/OLHicM2YGfU=;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1knFGY-008c7m-QZ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 10 Dec 2020 06:17:33 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cs3bK5Sfqzhq80;
 Thu, 10 Dec 2020 14:16:45 +0800 (CST)
Received: from [10.174.178.154] (10.174.178.154) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 10 Dec
 2020 14:17:08 +0800
To: Anton Altaparmakov <anton@tuxera.com>, Andrew Morton
 <akpm@linux-foundation.org>
References: <20200312041353.19877-1-zhengzengkai@huawei.com>
 <94ED375C-C57C-464B-A1CA-BFB1EEF71BB2@tuxera.com>
 <20201209183623.b26e90de3d0aa92a72010ff0@linux-foundation.org>
 <C1D18C59-3E1B-4825-881C-B7AE6FACF4D7@tuxera.com>
From: Zheng Zengkai <zhengzengkai@huawei.com>
Message-ID: <3b12e860-273e-c915-cd18-637668762107@huawei.com>
Date: Thu, 10 Dec 2020 14:17:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <C1D18C59-3E1B-4825-881C-B7AE6FACF4D7@tuxera.com>
X-Originating-IP: [10.174.178.154]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1knFGY-008c7m-QZ
X-Mailman-Approved-At: Thu, 10 Dec 2020 07:54:00 +0000
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
 <linux-ntfs-dev@lists.sourceforge.net>, LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Anton and Andrew,

> Hi Andrew,
>
> Ah, oops!  Thank you and apologies.  Quite right the alternative patch was even better.  No need to apply this patch after all...
>
> Zheng, the log_page_mask variable was removed altogether so your patch no longer makes sense.
>
> Best regards,
>
> 	Anton
>
>> On 10 Dec 2020, at 02:36, Andrew Morton <akpm@linux-foundation.org> wrote:
>>
>> On Tue, 8 Dec 2020 08:24:02 +0000 Anton Altaparmakov <anton@tuxera.com> wrote:
>>
>>> Can you please apply this?
>>>
>>> ...
>>>
>>>> --- a/fs/ntfs/logfile.c
>>>> +++ b/fs/ntfs/logfile.c
>>>> @@ -507,7 +507,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
>>>> 	 * optimize log_page_size and log_page_bits into constants.
>>>> 	 */
>>>> 	log_page_bits = ntfs_ffs(log_page_size) - 1;
>>>> -	size &= ~(s64)(log_page_size - 1);
>>>> +	size &= ~(s64)(log_page_mask);
>>>> 	/*
>>>> 	 * Ensure the log file is big enough to store at least the two restart
>>>> 	 * pages and the minimum number of log record pages.
>> https://lore.kernel.org/lkml/1604821092-54631-1-git-send-email-alex.shi@linux.alibaba.com/
>> addressed this?
>>
It's ok, thank you all the same!



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
