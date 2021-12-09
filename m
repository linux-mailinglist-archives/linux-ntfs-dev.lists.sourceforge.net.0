Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D82D46F834
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Dec 2021 02:01:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mvUI0-00018u-Jf; Fri, 10 Dec 2021 01:01:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mark-pk.tsai@mediatek.com>) id 1mvKoZ-0000CN-Mz
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Dec 2021 14:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4q8DB2KEfzJ/fzcxwijOe5l+D0VRHXCmqAXlDxbPWqc=; b=TqPvOZtsL7s1MGquSjAJzo+OkL
 yL6WKRHCd580HDz67jWdqUPTFBlDdDV1dduoFb43zfq6op8NUbu9LYbNV0tBaNEERmgar0yEqET68
 7Ry8dnWjqCANVJhcBUhj+hmQKDScUJhWOnZ+Yz9ssdsik02708dGjpUyaUyFajHfdXPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4q8DB2KEfzJ/fzcxwijOe5l+D0VRHXCmqAXlDxbPWqc=; b=V3D4pSIWKkZFdBJKP4LO5ol319
 4GLTkz535G9vrfuIYrdmLV8FcF3tC/cZ29J8Uy94KDbDDMIF4+DnKQP2iciANUN791tzrgfSCYW6X
 NxZpWV99uqpm5hERAvbC3DALpFLPc9WiptYXVUn1vaOKT9in6ruDjRy6MANDhbXUxGmg=;
Received: from [210.61.82.184] (helo=mailgw02.mediatek.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvKoX-00030k-NE
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 09 Dec 2021 14:54:31 +0000
X-UUID: 558ea62eb0ae44198d753f500b18983e-20211209
X-UUID: 558ea62eb0ae44198d753f500b18983e-20211209
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by
 mailgw02.mediatek.com (envelope-from <mark-pk.tsai@mediatek.com>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 747855209; Thu, 09 Dec 2021 22:38:41 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 9 Dec 2021 22:38:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 9 Dec 2021 22:38:39 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <luca.stefani.ge1@gmail.com>
Date: Thu, 9 Dec 2021 22:38:39 +0800
Message-ID: <20211209143839.31021-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
References: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
MIME-Version: 1.0
X-MTK: N
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > Clang's Control Flow Integrity (CFI) is a security
 mechanism
 that can > help prevent JOP chains, deployed extensively in downstream kernels
 > used in Android. > > It's deployment is hindered by mism [...] 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [210.61.82.184 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mvKoX-00030k-NE
X-Mailman-Approved-At: Fri, 10 Dec 2021 01:01:31 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] ntfs: Fix ntfs_test_inode and
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
 clang-built-linux@googlegroups.com, mark-pk.tsai@mediatek.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

> Clang's Control Flow Integrity (CFI) is a security mechanism that can
> help prevent JOP chains, deployed extensively in downstream kernels
> used in Android.
> 
> It's deployment is hindered by mismatches in function signatures.  For
> this case, we make callbacks match their intended function signature,
> and cast parameters within them rather than casting the callback when
> passed as a parameter.
> 
> When running `mount -t ntfs ...` we observe the following trace:
> 
> Call trace:
> __cfi_check_fail+0x1c/0x24
> name_to_dev_t+0x0/0x404
> iget5_locked+0x594/0x5e8
> ntfs_fill_super+0xbfc/0x43ec
> mount_bdev+0x30c/0x3cc
> ntfs_mount+0x18/0x24
> mount_fs+0x1b0/0x380
> vfs_kern_mount+0x90/0x398
> do_mount+0x5d8/0x1a10
> SyS_mount+0x108/0x144
> el0_svc_naked+0x34/0x38
> 
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> Tested-by: freak07 <michalechner92@googlemail.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>
> ---
>  fs/ntfs/dir.c   |  2 +-
>  fs/ntfs/inode.c | 27 ++++++++++++++-------------
>  fs/ntfs/inode.h |  4 +---
>  fs/ntfs/mft.c   |  4 ++--
>  4 files changed, 18 insertions(+), 19 deletions(-)
> 

Hi,

I think stable tree should pick this change.

Below is the mainline commit.

(1146f7e2dc15 ntfs: fix ntfs_test_inode and ntfs_init_locked_inode function type)

5.4 stable have the same issue when CFI is enabled.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
