Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5013218420
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Jul 2020 11:47:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jt6fU-0006MD-MW; Wed, 08 Jul 2020 09:47:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1jt6fS-0006M2-K4
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jul 2020 09:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2oGk62u1bMHJdmbcXnSvcHS/KMcS7DXKMv+1j+kmYLo=; b=PRAERHmLq9A9w7NJy5DpMdNQX0
 odu4pW18TPdahCCY325diuFJ28EEOad9gChg7uDoKUlzPfAncXHVr6DoobtcuGrhi/l8vntg/7t1p
 RyohRJcPnnydCtjTc+HmWZlzzy0P/KEjdFsd93eE1fvz2SftMPVqMqkSy6rmotd7wd6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2oGk62u1bMHJdmbcXnSvcHS/KMcS7DXKMv+1j+kmYLo=; b=Vk7ixERrW92XVX/0oRwbVVmsj+
 TFvLDkLA/2uzwUjAwjlP67SE4RVBXhU4yrftF8BAPx85zJjCLfNKpVcWJn+IbVAVQWLzBw66RxKjZ
 519P6ve5TfdzDa9K74dV93s+MhfCEXjC5bwHwSw2zjj+M/FydPQpdycI+3e6zAfKPbEA=;
Received: from mgw-02.mpynet.fi ([82.197.21.91])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jt6fP-00E3DH-1d
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jul 2020 09:47:06 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 0689Mosc093817;
 Wed, 8 Jul 2020 12:28:45 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 322dewmgn7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 08 Jul 2020 12:28:44 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 8 Jul 2020 12:28:44 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Wed, 8 Jul 2020 12:28:44 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Luca Stefani <luca.stefani.ge1@gmail.com>
Thread-Topic: [PATCH] ntfs: Fix ntfs_test_inode and ntfs_init_locked_inode
 function type
Thread-Index: AQHWTLWIk5EfUBFiEUSTit3kCmYXJajv8dOAgA1Wz4A=
Date: Wed, 8 Jul 2020 09:28:43 +0000
Message-ID: <8CDE123D-68C3-44E9-B8CC-7159E4640762@tuxera.com>
References: <20200627190230.1191796-1-luca.stefani.ge1@gmail.com>
 <CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA@mail.gmail.com>
In-Reply-To: <CAKwvOdk5_tq6hrBMEwssksGniMyAWSMKOSaWbiBsX_bssmmztA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.157.43.234]
Content-ID: <797207C2DA74744289BFE57326571F92@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-08_07:2020-07-08,
 2020-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 suspectscore=0
 mlxlogscore=999
 mlxscore=0 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007080068
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googlegroups.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jt6fP-00E3DH-1d
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
Cc: freak07 <michalechner92@googlemail.com>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Luca,

Apologies for taking this long to respond.  I have to admit I was not familiar with CFI...  Your patch looks good but please could you update the commit message as suggested by Nick to include explanation of CFI?  You can then add:

Acked-by: Anton Altaparmakov <anton@tuxera.com>

When resending please CC: Andrew Morton <akpm@linux-foundation.org> so we can get it merged upstream.

Thanks a lot!

Best regards,

	Anton

> On 29 Jun 2020, at 22:46, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Sat, Jun 27, 2020 at 12:02 PM Luca Stefani
> <luca.stefani.ge1@gmail.com> wrote:
>> 
>> If the kernel is built with CFI we hit a __cfi_check_fail
>> while mounting a partition
> 
> Luca,
> Since CFI is not yet upstream (is downstream in Android, blocked on
> LTO patches currently working their way through upstreaming+code
> review), it might help explain to reviewers what CFI *even is*.
> Something like:
> 
> """
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
> """
> 
> I also always recommend setting an explicit `--to=` when sending
> patches; some maintainers only know to take a look at patches if
> they're in the To: list.  Maybe they have email filters on this.  You
> can you `./script/get_maintainer.pl` on your patch file, or manually
> check MAINTAINERS.  In this case, it looks like Anton is cc'ed at
> least.
> 
> Since this patch modifies the type signature of callbacks to the
> expected type, casting the callback's parameters instead; I'm happy
> with this patch.  The callbacks never get invoked directly (not
> explicitly called, only invoked indirectly), there is no argument for
> loss of type safety (the interfaces are already lossy in that the
> interface uses void* parameters).  I just would like the commit
> message beefed up before I sign off.  Are you comfortable sending a
> V2?
> 
> More on JOP/CFI:
> https://www.comp.nus.edu.sg/~liangzk/papers/asiaccs11.pdf
>> CFI has not seen wide deployment, likely due to concerns over performance, especially in the case of real-time enforcement.
> 
>> 
>> Call trace:
>> __cfi_check_fail+0x1c/0x24
>> name_to_dev_t+0x0/0x404
>> iget5_locked+0x594/0x5e8
>> ntfs_fill_super+0xbfc/0x43ec
>> mount_bdev+0x30c/0x3cc
>> ntfs_mount+0x18/0x24
>> mount_fs+0x1b0/0x380
>> vfs_kern_mount+0x90/0x398
>> do_mount+0x5d8/0x1a10
>> SyS_mount+0x108/0x144
>> el0_svc_naked+0x34/0x38
>> 
>> Fixing iget5_locked and ilookup5 callers seems enough
>> 
>> Signed-off-by: Luca Stefani <luca.stefani.ge1@gmail.com>
>> Tested-by: freak07 <michalechner92@googlemail.com>
>> ---
>> fs/ntfs/dir.c   |  2 +-
>> fs/ntfs/inode.c | 23 ++++++++++++-----------
>> fs/ntfs/inode.h |  4 +---
>> fs/ntfs/mft.c   |  4 ++--
>> 4 files changed, 16 insertions(+), 17 deletions(-)
>> 
>> diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
>> index 3c4811469ae8..e278bfc5ee7f 100644
>> --- a/fs/ntfs/dir.c
>> +++ b/fs/ntfs/dir.c
>> @@ -1503,7 +1503,7 @@ static int ntfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
>>        na.type = AT_BITMAP;
>>        na.name = I30;
>>        na.name_len = 4;
>> -       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, (test_t)ntfs_test_inode, &na);
>> +       bmp_vi = ilookup5(vi->i_sb, vi->i_ino, ntfs_test_inode, &na);
> 
> Looks like the signature of ilookup5 is:
> 
> struct inode *ilookup5(struct super_block *sb, unsigned long hashval,
>     int (*test)(struct inode *, void *), void *data)
> 
> while ntfs_test_inode is:
> 
> int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
> 
> while test_t is defined way below to:
> 
> typedef int (*test_t)(struct inode *, void *);
> 
> 
>>        if (bmp_vi) {
>>                write_inode_now(bmp_vi, !datasync);
>>                iput(bmp_vi);
>> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
>> index d4359a1df3d5..a5d3bebe7a85 100644
>> --- a/fs/ntfs/inode.c
>> +++ b/fs/ntfs/inode.c
>> @@ -30,7 +30,7 @@
>> /**
>>  * ntfs_test_inode - compare two (possibly fake) inodes for equality
>>  * @vi:                vfs inode which to test
>> - * @na:                ntfs attribute which is being tested with
>> + * @data:              data which is being tested with
>>  *
>>  * Compare the ntfs attribute embedded in the ntfs specific part of the vfs
>>  * inode @vi for equality with the ntfs attribute @na.
>> @@ -43,8 +43,9 @@
>>  * NOTE: This function runs with the inode_hash_lock spin lock held so it is not
>>  * allowed to sleep.
>>  */
>> -int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>> +int ntfs_test_inode(struct inode *vi, void *data)
>> {
>> +       ntfs_attr *na = (ntfs_attr *)data;
>>        ntfs_inode *ni;
>> 
>>        if (vi->i_ino != na->mft_no)
>> @@ -72,7 +73,7 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>> /**
>>  * ntfs_init_locked_inode - initialize an inode
>>  * @vi:                vfs inode to initialize
>> - * @na:                ntfs attribute which to initialize @vi to
>> + * @data:              data which to initialize @vi to
>>  *
>>  * Initialize the vfs inode @vi with the values from the ntfs attribute @na in
>>  * order to enable ntfs_test_inode() to do its work.
>> @@ -87,8 +88,9 @@ int ntfs_test_inode(struct inode *vi, ntfs_attr *na)
>>  * NOTE: This function runs with the inode->i_lock spin lock held so it is not
>>  * allowed to sleep. (Hence the GFP_ATOMIC allocation.)
>>  */
>> -static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>> +static int ntfs_init_locked_inode(struct inode *vi, void *data)
>> {
>> +       ntfs_attr *na = (ntfs_attr *)data;
>>        ntfs_inode *ni = NTFS_I(vi);
>> 
>>        vi->i_ino = na->mft_no;
>> @@ -131,7 +133,6 @@ static int ntfs_init_locked_inode(struct inode *vi, ntfs_attr *na)
>>        return 0;
>> }
>> 
>> -typedef int (*set_t)(struct inode *, void *);
>> static int ntfs_read_locked_inode(struct inode *vi);
>> static int ntfs_read_locked_attr_inode(struct inode *base_vi, struct inode *vi);
>> static int ntfs_read_locked_index_inode(struct inode *base_vi,
>> @@ -164,8 +165,8 @@ struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no)
>>        na.name = NULL;
>>        na.name_len = 0;
>> 
>> -       vi = iget5_locked(sb, mft_no, (test_t)ntfs_test_inode,
>> -                       (set_t)ntfs_init_locked_inode, &na);
>> +       vi = iget5_locked(sb, mft_no, ntfs_test_inode,
>> +                       ntfs_init_locked_inode, &na);
>>        if (unlikely(!vi))
>>                return ERR_PTR(-ENOMEM);
>> 
>> @@ -225,8 +226,8 @@ struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>>        na.name = name;
>>        na.name_len = name_len;
>> 
>> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
>> -                       (set_t)ntfs_init_locked_inode, &na);
>> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
>> +                       ntfs_init_locked_inode, &na);
>>        if (unlikely(!vi))
>>                return ERR_PTR(-ENOMEM);
>> 
>> @@ -280,8 +281,8 @@ struct inode *ntfs_index_iget(struct inode *base_vi, ntfschar *name,
>>        na.name = name;
>>        na.name_len = name_len;
>> 
>> -       vi = iget5_locked(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
>> -                       (set_t)ntfs_init_locked_inode, &na);
>> +       vi = iget5_locked(base_vi->i_sb, na.mft_no, ntfs_test_inode,
>> +                       ntfs_init_locked_inode, &na);
>>        if (unlikely(!vi))
>>                return ERR_PTR(-ENOMEM);
>> 
>> diff --git a/fs/ntfs/inode.h b/fs/ntfs/inode.h
>> index 98e670fbdd31..363e4e820673 100644
>> --- a/fs/ntfs/inode.h
>> +++ b/fs/ntfs/inode.h
>> @@ -253,9 +253,7 @@ typedef struct {
>>        ATTR_TYPE type;
>> } ntfs_attr;
>> 
>> -typedef int (*test_t)(struct inode *, void *);
>> -
>> -extern int ntfs_test_inode(struct inode *vi, ntfs_attr *na);
>> +extern int ntfs_test_inode(struct inode *vi, void *data);
>> 
>> extern struct inode *ntfs_iget(struct super_block *sb, unsigned long mft_no);
>> extern struct inode *ntfs_attr_iget(struct inode *base_vi, ATTR_TYPE type,
>> diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
>> index fbb9f1bc623d..0d62cd5bb7f8 100644
>> --- a/fs/ntfs/mft.c
>> +++ b/fs/ntfs/mft.c
>> @@ -958,7 +958,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>>                 * dirty code path of the inode dirty code path when writing
>>                 * $MFT occurs.
>>                 */
>> -               vi = ilookup5_nowait(sb, mft_no, (test_t)ntfs_test_inode, &na);
>> +               vi = ilookup5_nowait(sb, mft_no, ntfs_test_inode, &na);
>>        }
>>        if (vi) {
>>                ntfs_debug("Base inode 0x%lx is in icache.", mft_no);
>> @@ -1019,7 +1019,7 @@ bool ntfs_may_write_mft_record(ntfs_volume *vol, const unsigned long mft_no,
>>                vi = igrab(mft_vi);
>>                BUG_ON(vi != mft_vi);
>>        } else
>> -               vi = ilookup5_nowait(sb, na.mft_no, (test_t)ntfs_test_inode,
>> +               vi = ilookup5_nowait(sb, na.mft_no, ntfs_test_inode,
>>                                &na);
>>        if (!vi) {
>>                /*
>> --
>> 2.26.2
>> 
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200627190230.1191796-1-luca.stefani.ge1%40gmail.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
