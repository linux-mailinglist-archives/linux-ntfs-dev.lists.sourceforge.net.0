Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 383DA3CCAE5
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 18 Jul 2021 23:28:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m5EKy-0007Mj-Cw; Sun, 18 Jul 2021 21:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>) id 1m4nIt-00033u-He
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 17 Jul 2021 16:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aS/8fXKGqP+eRkRmy4zGdgvreLyHM+o3rXjR4DSYef4=; b=hILE2SFUL3/kQxearIsNd9p8NT
 kf6VY1a1T+h+AVuj7ZC0e6fDBzukooeR4c7DAiT2Z/Q/aQciIvfFFz1uOsFhNM1uHlWuGoQks7W9A
 GjvCiLGSMwKv+Y4VKAZHzKIQ5kaLvsN14TolbideVTrVxCVwLKV/uDRtJX1S2O8FvEJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aS/8fXKGqP+eRkRmy4zGdgvreLyHM+o3rXjR4DSYef4=; b=GoEj3bQHrDazYcWvzwfq2dmCpC
 OuxW/Ub8IC01OYDm2PFz3rY2vfFwkMPgJZ1/VqvyImyBWoNloHZH8rt6/B7wyXkwxwBjjCIWhw+t3
 iFnx2WBJDDaJKaJaEAuK175D+uVkv7HNO2kvbAEzkVhyUHbMjwPepE2YTNUFpofJaheg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m4nIr-0003BE-Mq
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 17 Jul 2021 16:36:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 767CE61159;
 Sat, 17 Jul 2021 16:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626539781;
 bh=aS/8fXKGqP+eRkRmy4zGdgvreLyHM+o3rXjR4DSYef4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dcY0aTikovMEKpcRgpONj6NzjFolN5kFoimT1/1jnxNIhCMiOhY3hu+aQYoI4isg3
 CtT1zwAb+v0CbL1vFwXZivuc3OYqEVS9W0TfHKPsr1HF1y5kHfnEKPskJMvvMN8cRg
 jokzTFQ2kbK5aEfrUnuNhWFARgFc/7Y7YdkhM+wZ5aeW4hjw1rqH+d7nWoote3K8zG
 XijF6pT5q4SvZt8IVrcLBBQ2xrYG1LJmMAmWyztgbwqIOXkjrvO5hW0XN4xiMZIqdg
 93KJkWL//yUYCpTRMTDX8juYeTqXVNeplzpvsHYWvUTQdpysk0cwEPAHieg0k7IbN1
 Cqky9kQHl8Eqg==
Received: by pali.im (Postfix)
 id EF34895D; Sat, 17 Jul 2021 18:36:18 +0200 (CEST)
Date: Sat, 17 Jul 2021 18:36:18 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210717163618.vt6zjnhaiey6l64m@pali>
References: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m4nIr-0003BE-Mq
X-Mailman-Approved-At: Sun, 18 Jul 2021 21:28:35 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v26 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: andy.lavr@gmail.com, kari.argillander@gmail.com, nborisov@suse.com,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 joe@perches.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com, hch@lst.de,
 mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hello!

I would like to remind that there are still two open questions about
this ntfs driver which needs to be resolved by vfs maintainers (Al?)
prior merging / accepting this driver into kernel tree.

1) Should this new ntfs driver use and implement old FAT ioctl calls?
These ioctls are added in patch: Add file operations and implementation.
First time I wrote about them in email:
https://lore.kernel.org/linux-fsdevel/20200921133647.3tczqm5zfvae6q6a@pali/

2) Should kernel have two ntfs drivers? And if yes, how they would
interact to userspace? Both Christoph and me think that not, see email:
https://lore.kernel.org/linux-fsdevel/20201031085142.GA5949@lst.de/


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
