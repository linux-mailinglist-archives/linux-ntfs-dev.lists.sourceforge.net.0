Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F398224B0F
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 18 Jul 2020 13:56:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jwlRh-0003FU-AY; Sat, 18 Jul 2020 11:56:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1jwlRg-0003FN-4E
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 18 Jul 2020 11:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L95QvFdNAtSvbQSTiAGcpuzObV9ZanvJfIutWNGxQvU=; b=DFYuAmWKh98keOAq+vlvXjfxxw
 TJjTRPQatVPodWT3l3nljvJfZCwwjCjNFviYb26M1gGxfkxLfZW/dXvHMGJe6qQf51uqfOY7Dim2e
 jeWNxX68WZn4yoIYq4Jlg082gjBvR5i/4UTMGFHLGGkcUilEe0ZDwVEOnZXs8zxrxU+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L95QvFdNAtSvbQSTiAGcpuzObV9ZanvJfIutWNGxQvU=; b=XPdldckJC1kcsFOxFUaM2Qmh/6
 MozzHrp/EqANmOs5YdCwe48jL/B2XZIZ3ai+kxQlL7uvFN3XVzRR1FRx1fIxSYj3kwKYZdbnXC0Xi
 Plkx1UwJ/A3ZAt3zyThWOHxtEHQ2CXaXBWkOzJaysVMh0orK68i1+zwx4nJKqzkpaaWw=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jwlRc-005aR3-1D
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 18 Jul 2020 11:56:00 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 06IBt86M022075;
 Sat, 18 Jul 2020 14:55:36 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 32bvr682u4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 18 Jul 2020 14:55:35 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 18 Jul 2020 14:55:34 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Sat, 18 Jul 2020 14:55:34 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH v2] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Thread-Index: AQHWXPYd6q3TtZ3z0UGWdJJclBe4aqkNCHeA
Date: Sat, 18 Jul 2020 11:55:33 +0000
Message-ID: <77108A50-8D4D-4303-8C4B-80F463478484@tuxera.com>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
 <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
In-Reply-To: <20200718112513.533800-1-luca.stefani.ge1@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.155.251.171]
Content-ID: <8FE74CCC138DEB4B96773477A5D7D94F@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-18_05:2020-07-17,
 2020-07-18 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 suspectscore=0
 bulkscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 adultscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007180091
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jwlRc-005aR3-1D
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 freak07 <michalechner92@googlemail.com>, LKML <linux-kernel@vger.kernel.org>,
 Luca Stefani <luca.stefani.ge1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Andrew,

Please can you merge this patch?  Thanks a lot in advance!

Luca, thank you for the updated patch!

Best regards,

	Anton

> On 18 Jul 2020, at 12:25, Luca Stefani <luca.stefani.ge1@gmail.com> wrote:
> 
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
> fs/ntfs/dir.c   |  2 +-
> fs/ntfs/inode.c | 27 ++++++++++++++-------------
> fs/ntfs/inode.h |  4 +---
> fs/ntfs/mft.c   |  4 ++--
> 4 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> index 3c4811469ae8..e278bfc5ee7f 100644
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
> 	na.type = AT_BITMAP;
> 	na.name = I30;
> 	na.name_len = 4;
> -	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +	bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
> 	if (bmp_vi) {
>  		write_inode_now(bmp_vi, !datasync);
> 		iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..9bb9f0952b18 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,10 +30,10 @@
> /**
>  * ntfs_test_inode - compare two (possibly fake) inodes for equality
>  * @vi:		vfs inode which to test
> - * @na:		ntfs attribute which is being tested with
> + * @data:	data which is being tested with
>  *
>  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
> - * inode @vi for equality with the ntfs attribute @na.
> + * inode @vi for equality with the ntfs attribute @data.
>  *
>  * If searching for the normal file/directory inode, set @na->type to AT_UNUSED.
>  * @na->name and @na->name_len are then ignored.
> @@ -43,8 +43,9 @@
>  * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>  * allowed to sleep.
>  */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
> {
> +	ntfs_attr *na = (ntfs_attr *)data;
> 	ntfs_inode *ni;
> 
> 	if (vi->i_ino != na->mft_no)
> @@ -72,9 +73,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> /**
>  * ntfs_init_locked_inode - initialize an inode
>  * @vi:		vfs inode to initialize
> - * @na:		ntfs attribute which to initialize @vi to
> + * @data:	data which to initialize @vi to
>  *
> - * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
> + * Initialize the vfs inode @vi with the values from the ntfs attribute @data in
>  * order to enable ntfs_test_inode() to do its work.
>  *
>  * If initializing the normal file/directory inode, set @na->type to AT_UNUSED.
> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>  * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>  */
> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
> {
> +	ntfs_attr *na = (ntfs_attr *)data;
> 	ntfs_inode *ni = NTFS_I(vi);
> 
> 	vi->i_ino = na->mft_no;
> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> 	return 0;
> }
> 
> -typedef int (*set_t)(struct inode *, void *);
> static int ntfs_read_locked_inode(struct inode *vi);
> static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
> static int ntfs_read_locked_index_inode(struct inode *base_vi,
> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
> 	na.name = NULL;
> 	na.name_len = 0;
> 
> -	vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(sb, mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
> 	if (unlikely(!vi))
> 		return ERR_PTR(-ENOMEM);
> 
> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> 	na.name = name;
> 	na.name_len = name_len;
> 
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
> 	if (unlikely(!vi))
> 		return ERR_PTR(-ENOMEM);
> 
> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
> 	na.name = name;
> 	na.name_len = name_len;
> 
> -	vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -			(set_t)ntfs_init_locked_inode, &na);
> +	vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +			ntfs_init_locked_inode, &na);
> 	if (unlikely(!vi))
> 		return ERR_PTR(-ENOMEM);
> 
> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
> index 98e670fbdd31..363e4e820673 100644
> --- a/fs/ntfs/inode.h
> +++ b/fs/ntfs/inode.h
> @@ -253,9 +253,7 @@ typedef struct {
> 	ATTR_TYPE type;
> } ntfs_attr;
> 
> -typedef int (*test_t)(struct inode *, void *);
> -
> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
> +extern int ntfs_test_inode(struct inode *vi, void *data);
> 
> extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
> extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index fbb9f1bc623d..0d62cd5bb7f8 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
> 		 * dirty code path of the inode dirty code path when writing
> 		 * $MFT occurs.
> 		 */
> -		vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
> +		vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
> 	}
> 	if (vi) {
> 		ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
> 		vi = igrab(mft_vi);
> 		BUG_ON(vi != mft_vi);
> 	} else
> -		vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
> +		vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
> 				&na);
> 	if (!vi) {
> 		/*
> -- 
> 2.27.0
> 


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
