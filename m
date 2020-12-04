Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2392D25A3
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Dec 2020 09:19:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kmYDU-0002yq-SG; Tue, 08 Dec 2020 08:19:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1klFyn-0000sU-Iw
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 04 Dec 2020 18:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UghJh+j8A/ECTKYdJRAJzY0oDZ1rKvFxRdPj37nT6s4=; b=FZqtmND6vTyzrH7F2h20YLo5ng
 /aW6FdemmO6To9/S1FR0IoEbm4uZ8qSbYKTOLqJrxW/R4ZyVLWDAmX75SiM247FWSTtYdObFdvNv2
 kGIPqBE0oU3bbZ/i1+2SorEcIHNYO3hLCaZIUYSE7nYUAXB3RR/WfKW546S8pGzmJWxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UghJh+j8A/ECTKYdJRAJzY0oDZ1rKvFxRdPj37nT6s4=; b=ThpTsoig+8dDZKUvetF0DABb4B
 eOD6syzOrlukyRkWEUJK0OI0RTB7c02Piyou7iAD8cYinYiX2+BiinNZFFQL/BOBdhRHoyis6xVX6
 718v3xrwtJwzTTDTCYFaMu3/Tc7fIb04v9fFYk7JhlkSO8qHDBzHMGOD2UjjMfi+mQQk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1klFyf-00FcPm-RG
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 04 Dec 2020 18:38:53 +0000
Date: Fri, 4 Dec 2020 10:38:37 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607107120;
 bh=D0VwnsQjiZd2p/qMGY9WV/AY29U7e8/pE7AugozrGvQ=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=FmeSO1dCGWCpOlO8wpniiJ1ANCDVVBGa97IucG4eL4WhlMp8CmgYdlvh/B0h3RbWN
 zY/Q0e8MER7rAwEqxjQ84cuX/3eSB9iGpHVL1LP7Uj9U0uFpsWSfk0nFa4M6Ku1o7g
 g7ExD/x89MWdXT7bfWxkVkM3Hp4O2oosMuTHNIDGwbRiwgRg9tOGUu4BFK8hyoOybZ
 NVkuV3iWU2z6BfbmyrtOxS/4MlNe3VKZXwlv52ELqNPHOI0T5tXpoUeW/00IkZwIMi
 NjnYti7V++dHVfyRC5HMP2Z8B+2BciuONki7MZeY9Xk22l9Khj/OyJx92ZR5i0ETuN
 /Nqc1aMyvuw2A==
From: Eric Biggers <ebiggers@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <X8qCLXJOit0M+4X7@sol.localdomain>
References: <20201204154600.1546096-1-almaz.alexandrovich@paragon-software.com>
 <20201204154600.1546096-7-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204154600.1546096-7-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1klFyf-00FcPm-RG
X-Mailman-Approved-At: Tue, 08 Dec 2020 08:19:01 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v14 06/10] fs/ntfs3: Add compression
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Dec 04, 2020 at 06:45:56PM +0300, Konstantin Komarov wrote:
> This adds compression
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  fs/ntfs3/lib/common_defs.h       | 196 +++++++++++
>  fs/ntfs3/lib/decompress_common.c | 314 +++++++++++++++++
>  fs/ntfs3/lib/decompress_common.h | 558 +++++++++++++++++++++++++++++++
>  fs/ntfs3/lib/lzx_common.c        | 204 +++++++++++
>  fs/ntfs3/lib/lzx_common.h        |  31 ++
>  fs/ntfs3/lib/lzx_constants.h     | 113 +++++++
>  fs/ntfs3/lib/lzx_decompress.c    | 553 ++++++++++++++++++++++++++++++
>  fs/ntfs3/lib/xpress_constants.h  |  23 ++
>  fs/ntfs3/lib/xpress_decompress.c | 165 +++++++++
>  fs/ntfs3/lznt.c                  | 452 +++++++++++++++++++++++++
>  10 files changed, 2609 insertions(+)
>  create mode 100644 fs/ntfs3/lib/common_defs.h
>  create mode 100644 fs/ntfs3/lib/decompress_common.c
>  create mode 100644 fs/ntfs3/lib/decompress_common.h
>  create mode 100644 fs/ntfs3/lib/lzx_common.c
>  create mode 100644 fs/ntfs3/lib/lzx_common.h
>  create mode 100644 fs/ntfs3/lib/lzx_constants.h
>  create mode 100644 fs/ntfs3/lib/lzx_decompress.c
>  create mode 100644 fs/ntfs3/lib/xpress_constants.h
>  create mode 100644 fs/ntfs3/lib/xpress_decompress.c
>  create mode 100644 fs/ntfs3/lznt.c

This really could use a much better commit message.  Including mentioning where
the LZX and XPRESS decompression code came from
(https://github.com/ebiggers/ntfs-3g-system-compression).

Also note you've marked the files as "SPDX-License-Identifier: GPL-2.0",
but they really are "SPDX-License-Identifier: GPL-2.0-or-later".

Also I still think you should consider using the simpler version from
ntfs-3g-system-compression commit 3ddd227ee8e3, which I had originally intended
to be included in NTFS-3G itself.  That version was fewer lines of code and
fewer files, as it was simplified for decompression-only.  The latest version
(the one you're using) is shared with a project that also implements compression
(so that I can more easily maintain both projects), so it's more complex than
needed for decompression-only support.  But in the kernel context it may make
sense to go with a simpler version.  There are a few performance optimizations
you'd miss by going with the older version, but they weren't too significant,
and probably you don't need to squeeze out every bit of performance possible
when reading XPRESS and LZX-compressed files in this context?

- Eric


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
