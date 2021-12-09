Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA5046F833
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Dec 2021 02:01:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mvUI0-00018z-Nd; Fri, 10 Dec 2021 01:01:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mvLio-0001VP-80
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Dec 2021 15:52:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dj5x1iV23hKhga0DPpYRWyq61K9Vkf/CLRALNNJweuE=; b=XmUyMsS/3B7MEEZzIkwksqGvPC
 XBr8kuUB3+lPwukDGkDItN9zlpGHUzleNaI4uyxtkDAED1dd58o/GHzbAYahGXVjkrJzmphY+A4M3
 AHlZKeKRWLUcWVfT1maiYLE52m/OvOVXkruDcp5Xue1QEzXsH/aVaTRf3s/ovdRA8V4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dj5x1iV23hKhga0DPpYRWyq61K9Vkf/CLRALNNJweuE=; b=iWmkjZOOFo8msQX+r6aRXLeJQT
 Ba+UlXd7BkumCN5i0tTnweOCVLvL5s/hmuSU0Iu7alvIVBcx932obw76oRaEjrZ0twGztjV9OugKz
 XUb4/p/b7J0NDGsKygbWdh4Q9Otpx2RBEknRCektIpYQGjHLiIPsr4QWuRoPmXTFxmwQ=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvLim-0005qS-Lq
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Dec 2021 15:52:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7E44EB82524;
 Thu,  9 Dec 2021 15:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A88B3C341C7;
 Thu,  9 Dec 2021 15:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1639064151;
 bh=m2ChWXdewRHPFFE7o78P74Le013n7Jn4c1fmlEjSVlw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QpwvVAao5+AmNh4bDjE7CCePHqWTfmguzsLv+U+MKQ8CJmOFaoyq4Ka9cDTBjWQPI
 f0V2aLmrtvWFwh8VM38swS8WeAYvszPlomLCSMlunDWMGQeBXTnV6x/qvq1ihrFssR
 GSPf85c1VDQ8a2OAV1uIHNaYJLwsHF+pasgvYVKU=
Date: Thu, 9 Dec 2021 16:35:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Message-ID: <YbIiVL404/Px0gXl@kroah.com>
References: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
 <20211209143839.31021-1-mark-pk.tsai@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209143839.31021-1-mark-pk.tsai@mediatek.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 09, 2021 at 10:38:39PM +0800, Mark-PK Tsai wrote:
 > > Clang's Control Flow Integrity (CFI) is a security mechanism that can
 > > help prevent JOP chains, deployed extensively in downstream [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvLim-0005qS-Lq
X-Mailman-Approved-At: Fri, 10 Dec 2021 01:01:31 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] ntfs: Fix ntfs_test_inode and
 ntfs_init_locked_inode function type
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
Cc: michalechner92@googlemail.com, linux-ntfs-dev@lists.sourceforge.net,
 yj.chiang@mediatek.com, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 luca.stefani.ge1@gmail.com, clang-built-linux@googlegroups.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 09, 2021 at 10:38:39PM +0800, Mark-PK Tsai wrote:
> > Clang's Control Flow Integrity (CFI) is a security mechanism that can
> > help prevent JOP chains, deployed extensively in downstream kernels
> > used in Android.
> > 
> > It's deployment is hindered by mismatches in function signatures.  For
> > this case, we make callbacks match their intended function signature,
> > and cast parameters within them rather than casting the callback when
> > passed as a parameter.
> > 
> > When running `mount -t ntfs ...` we observe the following trace:
> > 
> > Call trace:
> > __cfi_check_fail+0x1c/0x24
> > name_to_dev_t+0x0/0x404
> > iget5_locked+0x594/0x5e8
> > ntfs_fill_super+0xbfc/0x43ec
> > mount_bdev+0x30c/0x3cc
> > ntfs_mount+0x18/0x24
> > mount_fs+0x1b0/0x380
> > vfs_kern_mount+0x90/0x398
> > do_mount+0x5d8/0x1a10
> > SyS_mount+0x108/0x144
> > el0_svc_naked+0x34/0x38
> > 
> > Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> > Tested-by: freak07 <michalechner92@googlemail.com>
> > Acked-by: Anton Altaparmakov <anton@tuxera.com>
> > ---
> >  fs/ntfs/dir.c   |  2 +-
> >  fs/ntfs/inode.c | 27 ++++++++++++++-------------
> >  fs/ntfs/inode.h |  4 +---
> >  fs/ntfs/mft.c   |  4 ++--
> >  4 files changed, 18 insertions(+), 19 deletions(-)
> > 
> 
> Hi,
> 
> I think stable tree should pick this change.
> 
> Below is the mainline commit.
> 
> (1146f7e2dc15 ntfs: fix ntfs_test_inode and ntfs_init_locked_inode function type)
> 
> 5.4 stable have the same issue when CFI is enabled.

Now queued up, thanks.

greg k-h


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
