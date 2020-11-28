Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C48F32D25A0
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Dec 2020 09:19:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kmYDT-0002vf-DP; Tue, 08 Dec 2020 08:19:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengzengkai@huawei.com>) id 1kip3n-0003aV-Om
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 28 Nov 2020 01:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u1Vr9hA8ws6ICVe5C7vU703Hkwk0cK1tUIgA7JcRIWY=; b=QurdEq0q9mJoA93Jn3ykU5nw1t
 hvabzJF1vv7XlI446rSoOAG46cYAA2HJn9spALvxFd/mUvwhMqZj2HR4nfzvKUs/fSyvychuBku3I
 prSOHHSGkZMxHDs2PmiyPhgi4HOi5crNUzIBIlGFdPVAGgNGZiFQ1gdJgdk4U/g+Bt+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u1Vr9hA8ws6ICVe5C7vU703Hkwk0cK1tUIgA7JcRIWY=; b=UNphTOuSf6uJsCjkux6ZY2yWVB
 gcc/VO2vGQs9xbn8dJfc1DiPtbSEs2R0T0mM95aIsLWtTYBVRRVbiJQ8Gok65RmdX0DA5oOHGJaq9
 BTvmLLXjq+mUkX6udU1zlCH06+EykSE1/emp2xpj94vd27wtD3Xrl9pqDfljL5lSPTJw=;
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kip3d-008FX6-5R
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 28 Nov 2020 01:29:59 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CjYn11CFnzhjY5;
 Sat, 28 Nov 2020 09:29:09 +0800 (CST)
Received: from [10.174.178.154] (10.174.178.154) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sat, 28 Nov
 2020 09:29:27 +0800
To: <anton@tuxera.com>
References: <20200312041353.19877-1-zhengzengkai@huawei.com>
From: Zheng Zengkai <zhengzengkai@huawei.com>
Message-ID: <3f52b53a-d7b4-7246-c1f6-7f57cc1c311f@huawei.com>
Date: Sat, 28 Nov 2020 09:29:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200312041353.19877-1-zhengzengkai@huawei.com>
X-Originating-IP: [10.174.178.154]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kip3d-008FX6-5R
X-Mailman-Approved-At: Tue, 08 Dec 2020 08:19:01 +0000
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Ping...
> Fixes gcc '-Wunused-but-set-variable' warning:
>
> fs/ntfs/logfile.c: In function ntfs_check_logfile:
> fs/ntfs/logfile.c:481:21:
>   warning: variable log_page_mask set but not used [-Wunused-but-set-variable]
>
> Actually log_page_mask can be used to replace 'log_page_size - 1' as it is set.
>
> Signed-off-by: Zheng Zengkai <zhengzengkai@huawei.com>
> ---
>   fs/ntfs/logfile.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
> index a0c40f1be7ac..c35fcf389369 100644
> --- a/fs/ntfs/logfile.c
> +++ b/fs/ntfs/logfile.c
> @@ -507,7 +507,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
>   	 * optimize log_page_size and log_page_bits into constants.
>   	 */
>   	log_page_bits = ntfs_ffs(log_page_size) - 1;
> -	size &= ~(s64)(log_page_size - 1);
> +	size &= ~(s64)(log_page_mask);
>   	/*
>   	 * Ensure the log file is big enough to store at least the two restart
>   	 * pages and the minimum number of log record pages.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
