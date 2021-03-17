Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E78433FB43
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Mar 2021 23:32:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lMehs-0001bk-2P; Wed, 17 Mar 2021 22:32:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <rdunlap@infradead.org>) id 1lMdg2-0001C8-70
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Mar 2021 21:26:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fK5+i0hUGolj7mGml8H6sgNsoTx8ktey7VXlunodqoc=; b=kOEj5LUMsS34OI9hFBN2QMVZF2
 yEVyCElli51rIh4KYciErAjvptq/JE0n8CCrSk4aonIwOA22HSjTnD0bSLm6eZmhnkbYB0QpDz4mY
 AdRPSXhXZveTrkgQOlHZsFjMlMA4mGswO0AifLw8O4e+EMP9aalx1LpgJRe2MbTdncp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fK5+i0hUGolj7mGml8H6sgNsoTx8ktey7VXlunodqoc=; b=KUgKEGX5FVs9a7ID2qIbsEXE7T
 GEfZXbE1qmK4uv+8+vxQr1F78+gry53KvoEJU0rZitbrpBALgx6voYZCnv0jMUSVmYyh5yfzJNCAO
 Lc8b19QNy8HxstFV6r5g6drhVWSWMVaEPUZIQn/GzDc6qawDMIF5dq/iQH6n3XSiUsH8=;
Received: from merlin.infradead.org ([178.238.156.107])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lMdfx-00CBQs-I7
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Mar 2021 21:26:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=fK5+i0hUGolj7mGml8H6sgNsoTx8ktey7VXlunodqoc=; b=gyveDLk2NfrD+0kIRX7/a/8CmJ
 5B+MQc2Gh+CU2p4pb0ZXka3536nmzos8MxHntbrgopxz2A+bUVQJA6PDdAcMBm7+q4dE0smSRq3Yt
 1drP/x50jfEDRlVhK0NRiPqYNtkx/DhJaBg/R6U19zoN21PEjMH3de5sJH9fFkiP/GDXoDh/Fmc1c
 g9SUPWESptQdvmlPJdyd6XOw+H+V38lZUi+EI1siB9q/6Hfl0dADdC4CfOQkzqqGPEUEqdi2crd+6
 kOhbEITb1nAj2tG8M9uy08tyK/l/46Hq6hsJ+zTPpgGfTs/HkoBtXpbDzBJDHifzwYaC84qmwyf12
 oxh9gMAw==;
Received: from [2601:1c0:6280:3f0::9757]
 by merlin.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lMdfW-001gnN-AK; Wed, 17 Mar 2021 21:25:36 +0000
To: Aditya Srivastava <yashsri421@gmail.com>, linux-kernel@vger.kernel.org
References: <20210317205245.24857-1-yashsri421@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <087c2cf0-2085-be13-f6db-8ebacb22b252@infradead.org>
Date: Wed, 17 Mar 2021 14:25:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210317205245.24857-1-yashsri421@gmail.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flatcap.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lMdfx-00CBQs-I7
X-Mailman-Approved-At: Wed, 17 Mar 2021 22:31:57 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] block: fix comment syntax in file
 headers
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
Cc: axboe@kernel.dk, linux-ntfs-dev@lists.sourceforge.net, ldm@flatcap.org,
 linux-block@vger.kernel.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 3/17/21 1:52 PM, Aditya Srivastava wrote:
> The opening comment mark '/**' is used for highlighting the beginning of
> kernel-doc comments.
> There are files in block/partitions/ which follow this syntax in their file
> headers, i.e. start with '/**' like comments, which causes unexpected
> warnings from kernel-doc.
> 
> E.g., running scripts/kernel-doc -none on block/partitions/ldm.h
> causes this warning:
> "warning: expecting prototype for ldm(). Prototype was for _FS_PT_LDM_H_() instead"
> 
> Provide a simple fix by replacing such occurrences with general comment
> format, i.e., "/*", to prevent kernel-doc from parsing it.
> 
> Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
> * Applies perfectly on next-20210312
> 
>  block/partitions/ldm.c | 2 +-
>  block/partitions/ldm.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
> index d333786b5c7e..14b124cdacfc 100644
> --- a/block/partitions/ldm.c
> +++ b/block/partitions/ldm.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * ldm - Support for Windows Logical Disk Manager (Dynamic Disks)
>   *
>   * Copyright (C) 2001,2002 Richard Russon <ldm@flatcap.org>
> diff --git a/block/partitions/ldm.h b/block/partitions/ldm.h
> index d8d6beaa72c4..ffdecf1c6bb3 100644
> --- a/block/partitions/ldm.h
> +++ b/block/partitions/ldm.h
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> -/**
> +/*
>   * ldm - Part of the Linux-NTFS project.
>   *
>   * Copyright (C) 2001,2002 Richard Russon <ldm@flatcap.org>
> 


-- 
~Randy



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
