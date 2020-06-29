Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8138020EA22
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 30 Jun 2020 02:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IfmiThVn+4/Y64nt0n7g9GYYKl1CDZ1zAKi3yPUzSJk=; b=isM0rj75Y+fW0PZ36kHLaKt/X7
	3UBicf8oieINUFAKClFdphRvFxf2qXZIc0ZoRWQZJa600VgAGcAqi5XUAkoE5S8Wdl6IIdP9ZRJ3O
	EiaEDKsZ5uC+8g68FGTGyh/DdU/rKahTe7eWuSZ7qozCTkC1p3jDSPinC8zDVhrGHlfQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jq4AO-0005ks-0o; Tue, 30 Jun 2020 00:30:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ndesaulniers@google.com>) id 1jq1k6-0008Mi-Oq
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 29 Jun 2020 21:55:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xDU696YPFQFByaDgj4TaIBYY7b7GogdeGS2pZGLrlCo=; b=BI/XpDCdCNVoNWZQi2Hw6L5Fbb
 DQm5xl/0nzxT5+l07RJNXXaGS+efaj+5U0dZs3H2nBblnFsCnLay61YZyNum7nefaHd0Dq5vcgf50
 dWgi4OSkp2JdoM9WO5tUsyVVX9/hQHzWu7dbPK7oVWRNgdD0qC87EODXbHcE8MAspmxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xDU696YPFQFByaDgj4TaIBYY7b7GogdeGS2pZGLrlCo=; b=XaTfxR19UnWb77gRH+g48JaFhr
 pbF4BKLoTfCFw4OSDozLtO+tyxq+aIdSDEljqNmXSAC+fR2bEXyLKeeGggwmQzEm8ZP0oCNEfCyut
 IlKauAcxvz32DY1lUgOW4Ylx8EkwsMxKX0mq8IV7+b3/pGkC9d/MeSoMKcyUeyyRAKYM=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jq1k3-002S1x-7E
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 29 Jun 2020 21:55:10 +0000
Received: by mail-oi1-f196.google.com with SMTP id e4so7589741oib.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 29 Jun 2020 14:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xDU696YPFQFByaDgj4TaIBYY7b7GogdeGS2pZGLrlCo=;
 b=VRvSW+UkmvsRa52leABslqppFhohbUv2Y57EAfRfPkSiCXJCBOO9xVFfpsrzQDJOz1
 tjHENNBB0/+3Up4/WUfV+mnRv86LFjidyGgKNMUbXJ9VfrhsySuQhWo3Gx5q+g60UJ06
 OLGHuN6fNwEWTFEnUExSpqTC0CaLqdgr6Zs/PmudwGeW35RPOrTzF8HQ/A+2MLCM5QIY
 5IXlTK0hW/R7RPNOXKFl8XLNkZO8/FR+FHMFUtVj6lML7eI4+rCW9SFrAiQT0bM+SKYf
 JGfnagg6+MAuL+UEPKM/5LG1Z0FFnenGZAI9pMDD+20HXrnQMR3GSCqrRwC+7ujmg/02
 FWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xDU696YPFQFByaDgj4TaIBYY7b7GogdeGS2pZGLrlCo=;
 b=VqmIwwrtFfEuydO3/dHtR6IaQNOc/cQ3jIdTj/5+up8xy26HE1aADiRGjpISJ9v8Ji
 EbPWEsMAxkzzYcHqWmvqo2B0ZAsrvF9aAcdN68pd2nC/j7oCFeDY2Ut6KDp8D3gzdHQL
 sR+giEeEwwXt2Rkdt1t27e+yTief5cz3vhWRFUC+AZCOMaXSOQbvpjf6kt+3yn1G/3YF
 vVOQBW6CnxbJRbODjg+lijT3hNz9+NACJMgM9xrZi+4Mht7XRL2X1Bm9dxi1A+Krv8SU
 CElLdcsRlMot+Iy7ime8sl6oRNVD9R71HnQYjP7L6AZHEh3QpPa38lDswjEdvUBHeX17
 HF2Q==
X-Gm-Message-State: AOAM532ff1SXw77oxt8ANsosp74/6wh5VIaBRgC1Ch3DLiJBu30BJ3K4
 6fCcMIuKq0mtBOQTFm8SMw46nn9BdFb0A3DHQfk/4mOtzZ0=
X-Google-Smtp-Source: ABdhPJyVbma1Y1Qr7DDoDmXJbO16+ERslv8h5KufpVJ/JEIQyzOIKMbLCSM3o5jNmvfFr/eEujaPmuHDb3spxeUzjb0=
X-Received: by 2002:a17:90a:21ef:: with SMTP id
 q102mr20001058pjc.101.1593467210715; 
 Mon, 29 Jun 2020 14:46:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
In-Reply-To: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
Date: Mon, 29 Jun 2020 14:46:39 -0700
Message-ID: <CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA@mail.gmail.com>
To: Luca Stefani <luca.stefani.ge1@gmail.com>
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-Headers-End: 1jq1k3-002S1x-7E
X-Mailman-Approved-At: Tue, 30 Jun 2020 00:30:26 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Fix ntfs_test_inode and
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
From: Nick Desaulniers via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Cc: freak07 <michalechner92@googlemail.com>,
 linux-ntfs-dev@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, Jun 27, 2020 at 12:02 PM Luca Stefani
<luca.stefani.ge1@gmail.com> wrote:
>
> If the kernel is built with CFI we hit a __cfi_check_fail
> while mounting a partition

Luca,
Since CFI is not yet upstream (is downstream in Android, blocked on
LTO patches currently working their way through upstreaming+code
review), it might help explain to reviewers what CFI *even is*.
Something like:

"""
Clang's Control Flow Integrity (CFI) is a security mechanism that can
help prevent JOP chains, deployed extensively in downstream kernels
used in Android.

It's deployment is hindered by mismatches in function signatures.  For
this case, we make callbacks match their intended function signature,
and cast parameters within them rather than casting the callback when
passed as a parameter.

When running `mount -t ntfs ...` we observe the following trace:
"""

I also always recommend setting an explicit `--to=` when sending
patches; some maintainers only know to take a look at patches if
they're in the To: list.  Maybe they have email filters on this.  You
can you `./script/get_maintainer.pl` on your patch file, or manually
check MAINTAINERS.  In this case, it looks like Anton is cc'ed at
least.

Since this patch modifies the type signature of callbacks to the
expected type, casting the callback's parameters instead; I'm happy
with this patch.  The callbacks never get invoked directly (not
explicitly called, only invoked indirectly), there is no argument for
loss of type safety (the interfaces are already lossy in that the
interface uses void* parameters).  I just would like the commit
message beefed up before I sign off.  Are you comfortable sending a
V2?

More on JOP/CFI:
https://www.comp.nus.edu.sg/~liangzk/papers/asiaccs11.pdf
> CFI has not seen wide deployment, likely due to concerns over performance, especially in the case of real-time enforcement.

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
> Fixing iget5_locked and ilookup5 callers seems enough
>
> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
> Tested-by: freak07 <michalechner92@googlemail.com>
> ---
>  fs/ntfs/dir.c   |  2 +-
>  fs/ntfs/inode.c | 23 ++++++++++++-----------
>  fs/ntfs/inode.h |  4 +---
>  fs/ntfs/mft.c   |  4 ++--
>  4 files changed, 16 insertions(+), 17 deletions(-)
>
> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
> index 3c4811469ae8..e278bfc5ee7f 100644
> --- a/fs/ntfs/dir.c
> +++ b/fs/ntfs/dir.c
> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
>         na.type = AT_BITMAP;
>         na.name = I30;
>         na.name_len = 4;
> -       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
> +       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);

Looks like the signature of ilookup5 is:

struct inode *ilookup5(struct super_block *sb, unsigned long hashval,
     int (*test)(struct inode *, void *), void *data)

while ntfs_test_inode is:

int ntfs_test_inode(struct inode *vi, ntfs_attr *na)

while test_t is defined way below to:

typedef int (*test_t)(struct inode *, void *);


>         if (bmp_vi) {
>                 write_inode_now(bmp_vi, !datasync);
>                 iput(bmp_vi);
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index d4359a1df3d5..a5d3bebe7a85 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -30,7 +30,7 @@
>  /**
>   * ntfs_test_inode - compare two (possibly fake) inodes for equality
>   * @vi:                vfs inode which to test
> - * @na:                ntfs attribute which is being tested with
> + * @data:              data which is being tested with
>   *
>   * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
>   * inode @vi for equality with the ntfs attribute @na.
> @@ -43,8 +43,9 @@
>   * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>   * allowed to sleep.
>   */
> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> +int ntfs_test_inode(struct inode *vi, void *data)
>  {
> +       ntfs_attr *na = (ntfs_attr *)data;
>         ntfs_inode *ni;
>
>         if (vi->i_ino != na->mft_no)
> @@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>  /**
>   * ntfs_init_locked_inode - initialize an inode
>   * @vi:                vfs inode to initialize
> - * @na:                ntfs attribute which to initialize @vi to
> + * @data:              data which to initialize @vi to
>   *
>   * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
>   * order to enable ntfs_test_inode() to do its work.
> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>   * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>   * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>   */
> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
>  {
> +       ntfs_attr *na = (ntfs_attr *)data;
>         ntfs_inode *ni = NTFS_I(vi);
>
>         vi->i_ino = na->mft_no;
> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>         return 0;
>  }
>
> -typedef int (*set_t)(struct inode *, void *);
>  static int ntfs_read_locked_inode(struct inode *vi);
>  static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
>  static int ntfs_read_locked_index_inode(struct inode *base_vi,
> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
>         na.name = NULL;
>         na.name_len = 0;
>
> -       vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
> -                       (set_t)ntfs_init_locked_inode, &na);
> +       vi = iget5_locked(sb, mft_no, ntfs_test_inode,
> +                       ntfs_init_locked_inode, &na);
>         if (unlikely(!vi))
>                 return ERR_PTR(-ENOMEM);
>
> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>         na.name = name;
>         na.name_len = name_len;
>
> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -                       (set_t)ntfs_init_locked_inode, &na);
> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +                       ntfs_init_locked_inode, &na);
>         if (unlikely(!vi))
>                 return ERR_PTR(-ENOMEM);
>
> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
>         na.name = name;
>         na.name_len = name_len;
>
> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
> -                       (set_t)ntfs_init_locked_inode, &na);
> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
> +                       ntfs_init_locked_inode, &na);
>         if (unlikely(!vi))
>                 return ERR_PTR(-ENOMEM);
>
> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
> index 98e670fbdd31..363e4e820673 100644
> --- a/fs/ntfs/inode.h
> +++ b/fs/ntfs/inode.h
> @@ -253,9 +253,7 @@ typedef struct {
>         ATTR_TYPE type;
>  } ntfs_attr;
>
> -typedef int (*test_t)(struct inode *, void *);
> -
> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
> +extern int ntfs_test_inode(struct inode *vi, void *data);
>
>  extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
>  extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
> index fbb9f1bc623d..0d62cd5bb7f8 100644
> --- a/fs/ntfs/mft.c
> +++ b/fs/ntfs/mft.c
> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>                  * dirty code path of the inode dirty code path when writing
>                  * $MFT occurs.
>                  */
> -               vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
> +               vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
>         }
>         if (vi) {
>                 ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>                 vi = igrab(mft_vi);
>                 BUG_ON(vi != mft_vi);
>         } else
> -               vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
> +               vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
>                                 &na);
>         if (!vi) {
>                 /*
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200627190230.1191796-1-luca.stefani.ge1%40gmail.com.



-- 
Thanks,
~Nick Desaulniers


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
