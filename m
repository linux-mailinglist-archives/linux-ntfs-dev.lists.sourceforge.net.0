Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3B341A3F7
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 28 Sep 2021 01:52:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mV0QW-0004bO-SW; Mon, 27 Sep 2021 23:52:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <anton@tuxera.com>) id 1mV0QU-0004bG-KH
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 27 Sep 2021 23:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OCcz6Wh4F3OPJ+CBNMo4PZpOu5b1vWO+Yt3PXKxlIVI=; b=lUBO4tuBJ1CJorAksf6Ty+WNX0
 Sz+v5f7b7q/DUxFrSrdx7GJCMC2rvAb/MHX7pvBod8QmfXuJi9IE/+ZS4iQr6s4t1mYCrVMrMNv2e
 GrrBlGy8aVj7DC1f3Wa9hAGqLLVYlvcOPfWXEJdyXgRP90eiJlqju3K0RLUl5JkMG1OU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OCcz6Wh4F3OPJ+CBNMo4PZpOu5b1vWO+Yt3PXKxlIVI=; b=hA8jCqroZshmQDVWwTxrCZ+/Wy
 eBqQo6arDnxWEtIcWZWtbYGgF6FZAT2qeQYfax6ZXtepF/9NGeN2bWs3COALECj5+uGmIxJb2K4Lt
 9jY0FOy7A3gjI18b5p8cU+ZF6ebjxnegXx4oceHiLHj0Gn9gUl90Pl5QB99BqYEKPEfg=;
Received: from mgw-02.mpynet.fi ([82.197.21.91])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mV0QT-008LNK-Be
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 27 Sep 2021 23:52:50 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.43/8.16.0.43) with SMTP id 18RNF0h6068970;
 Tue, 28 Sep 2021 02:21:55 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 3bb66qgn5x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 28 Sep 2021 02:21:54 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Tue, 28 Sep 2021 02:21:54 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.023; Tue, 28 Sep 2021 02:21:54 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Arnd Bergmann <arnd@kernel.org>
Thread-Topic: [PATCH] [RFC] ntfs: disable for 64KB because of stack overflow
 risk
Thread-Index: AQHXs6qHYs/Euc1JMkm6t/T5zm4oc6u4U0mA
Date: Mon, 27 Sep 2021 23:21:53 +0000
Message-ID: <1B89CC23-0CB4-4DA3-BA84-3DD628675351@tuxera.com>
References: <20210927141815.1711736-1-arnd@kernel.org>
In-Reply-To: <20210927141815.1711736-1-arnd@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.154.241.177]
Content-ID: <7952F7CE8B6D06418105E3B5C0191403@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 7MYH49nf64G0oJGn7B9X-DERhId9usSR
X-Proofpoint-GUID: 7MYH49nf64G0oJGn7B9X-DERhId9usSR
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-09-27_07:2021-09-24,
 2021-09-27 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 phishscore=0
 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2109270157
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Arnd, Thanks for the patch but what is the problem with
 the stack usage exceeding 2048 bytes? I am not aware of any architectures
 that implements kernel stack size (THREAD_SIZE) less than page size and by
 default most architectures with 4kiB page size even use two pages to make
 the stack 8kiB. 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [82.197.21.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mV0QT-008LNK-Be
Subject: Re: [Linux-NTFS-Dev] [PATCH] [RFC] ntfs: disable for 64KB because
 of stack overflow risk
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
 <linux-ntfs-dev@lists.sourceforge.net>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Arnd,

Thanks for the patch but what is the problem with the stack usage exceeding 2048 bytes?

I am not aware of any architectures that implements kernel stack size (THREAD_SIZE) less than page size and by default most architectures with 4kiB page size even use two pages to make the stack 8kiB.

Thus on a 64kiB page size system the stack size is minimum 64kiB so using just over 2kiB seems to totally fine to me so why apply your patch?

Seems to me it would be better to fix the warning message you are seeing instead - it is a really stupid warning on a system with 64kiB stack size!

Best regards,

	Anton

> On 27 Sep 2021, at 15:18, Arnd Bergmann <arnd@kernel.org> wrote:
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> On ARM64 randconfig builds, we occasionally get warnings for NTFS:
> 
> fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
> fs/ntfs/aops.c:1328:1: error: the frame size of 2224 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]
> 
> The problem here is that with 64KB pages, we get two arrays on the
> stack that each have 128 pointers, for a total of 2KB. Before
> the VLA change, this could already happen with 512-byte blocks,
> however in practice NTFS should usually have 4KB blocks and not
> be affected by this (see link).
> 
> Now the stack usage is always > 2KB on any architecture with 64KB
> pages. Since both NTFS and 64KB page support are fairly rare,
> we may get away with just marking the combination as disallowed
> in Kconfig and see if anyone complains before we find a different
> way to address it.
> 
> Fixes: ac4ecf968acb ("ntfs: aops: remove VLA usage")
> Link: https://support.microsoft.com/en-us/help/140365/default-cluster-size-for-ntfs-fat-and-exfat
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> fs/ntfs/Kconfig | 1 +
> fs/ntfs/aops.c  | 3 +++
> 2 files changed, 4 insertions(+)
> 
> diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
> index 1667a7e590d8..b770f0209b9c 100644
> --- a/fs/ntfs/Kconfig
> +++ b/fs/ntfs/Kconfig
> @@ -2,6 +2,7 @@
> config NTFS_FS
> 	tristate "NTFS file system support"
> 	select NLS
> +	depends on !PAGE_SIZE_64KB && !ARM64_64K_PAGES
> 	help
> 	  NTFS is the file system of Microsoft Windows NT, 2000, XP and 2003.
> 
> diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
> index bb0a43860ad2..76d59bd4c1eb 100644
> --- a/fs/ntfs/aops.c
> +++ b/fs/ntfs/aops.c
> @@ -914,6 +914,9 @@ static int ntfs_write_mst_block(struct page *page,
> 	bool sync, is_mft, page_is_dirty, rec_is_dirty;
> 	unsigned char bh_size_bits;
> 
> +	/* Two arrays of MAX_BUF_PER_PAGE on the stack risks an overrun with 64K pages */
> +	BUILD_BUG_ON(PAGE_SIZE >= 65536);
> +
> 	if (WARN_ON(rec_size < NTFS_BLOCK_SIZE))
> 		return -EINVAL;
> 
> -- 
> 2.29.2
> 



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
