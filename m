Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ABC5A7E34
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 15:03:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTNNI-0002MZ-5I;
	Wed, 31 Aug 2022 13:03:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTN8n-0006iO-9i
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 12:48:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6NKnzrETkbi6SAy1MFS1UHBKyYJZhDmPoJGYfc26l3U=; b=GJihl1xIOFeXvrBlMGhMyRWwWB
 HcpTh96rkbSe5MeGxFRwNC/9qnMV8dd/4NDDhxfwRLhxQQp3lyRajUMeUxX98QIhmLJ6idHZ4RYrC
 H6tBotctoHqrd6eWWV+SfVvkhto8VD/KJGOHQrIdS1bpa39nH12/Tz+4TBMKPih4eNYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6NKnzrETkbi6SAy1MFS1UHBKyYJZhDmPoJGYfc26l3U=; b=OBRaMKCfFNvUsXHTcQOBeQP4Ov
 wUNxA7ibMZGGYWfIf1ttYefzK6yedlsSy3CBSJGCXboZ/UnslwZ79LhxIiYI5sDVMlYge0YS1TGt8
 SKrqD3et5ZmNjO+nplfoC/67YPM6xMGdInv1DxmkSkwQwIu9T66ZQoGZsq/9MGNlcGwY=;
Received: from mail-pf1-f176.google.com ([209.85.210.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTN8l-000376-RF for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 12:48:21 +0000
Received: by mail-pf1-f176.google.com with SMTP id z187so14278299pfb.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 31 Aug 2022 05:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=6NKnzrETkbi6SAy1MFS1UHBKyYJZhDmPoJGYfc26l3U=;
 b=kZN6sEwtcAwkyKo/tpc3V8sA3AtrAS3avh7p8yQKEaEEupE2tkRiinrFRLQUcDmZfK
 mPQLOA2lAuWgQ1v/1fmpUh4/wiwQd2sPQbtAWv7tQxTTF//hOUSx5nWuW/bQD93o+liJ
 zqZ7zIRgcveLQ7q15T8+WqEmfaKu7fJ1cvATN9NtJRW8rNruBea8lFCSzHrT8DfLTqTT
 tBcfsyJosiNlKqZnB+aKTX2Yw540gE/cOwdfSvvehYB0epds2RgX9gDY5jwY3bS8C0Ni
 zT+SyFx2ykHF8PEIaxyvXw7L1zsLR7Zbu7kYPWaffX5zfkFImUjYkfq3FJvked1cUQQz
 IACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=6NKnzrETkbi6SAy1MFS1UHBKyYJZhDmPoJGYfc26l3U=;
 b=x2CIl36yQe6C4/5kDznHtlvDurfl0/N2RXBf1wjWIkxXtApoG2QRv9nY9Y9GjcFq2h
 LhicP4Uff02St+ducwUDvZP1h/Kw00xqWxsUengmENOXt7QJJ5+cMrGD06A9vMyFlFSA
 i0iL2svu8Djn8zCyD/y8FnDW4V54Z9ex9UdGSWzPucmK7NdXx/pjm7rNHXmNvHtUBMVu
 /163s8TJesVXM9LYuSxgNYdRHULaHXoWq/ZYUEvIrQURLyHv1bbqNdK3xaXNtFlBM6r9
 MxwIY8LcBX7V0ghQ3oAZ+JNzTaGSMGahJ+5gcYRqy55FFkDF5jxDQXTSmqSYRV5HK0b9
 pd4A==
X-Gm-Message-State: ACgBeo3pCrj2LLYI2+B6qMTbF3n952TuyEG7oM6Z06TNARbN5VsNDub3
 I776Harc0koT65YCm8sDKm8=
X-Google-Smtp-Source: AA6agR6ZUrxbULA3wUe/ALNomHW68v7PrN6LPTlsCp1bg6NxmjlU3wN6ff8iCeP1H+AmZrmMC9Upng==
X-Received: by 2002:a63:87:0:b0:42e:16f2:7a40 with SMTP id
 129-20020a630087000000b0042e16f27a40mr6481941pga.302.1661950094276; 
 Wed, 31 Aug 2022 05:48:14 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 o186-20020a62cdc3000000b005289a50e4c2sm11147225pfg.23.2022.08.31.05.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 05:48:13 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: dan.carpenter@oracle.com
Date: Wed, 31 Aug 2022 20:47:36 +0800
Message-Id: <20220831124735.7044-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220831122046.GA2030@kadam>
References: <20220831122046.GA2030@kadam>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 31 Aug 2022 at 20:22, Dan Carpenter wrote: > > On
 Wed, Aug 31, 2022 at 08:03:25PM +0800, Hawkins Jiawei wrote: > > On Wed, 31
 Aug 2022 at 19:08, Dan Carpenter wrote: > > > > > > On Wed, Au [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.176 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTN8l-000376-RF
X-Mailman-Approved-At: Wed, 31 Aug 2022 13:03:18 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 2/3] ntfs: fix out-of-bounds read in
 ntfs_attr_find()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, 18801353760@163.com,
 yin31149@gmail.com, akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, 31 Aug 2022 at 20:22, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Wed, Aug 31, 2022 at 08:03:25PM +0800, Hawkins Jiawei wrote:
> > On Wed, 31 Aug 2022 at 19:08, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > On Wed, Aug 31, 2022 at 10:43:36AM +0800, Hawkins Jiawei wrote:
> > > > Kernel will iterates over ATTR_RECORDs in mft record in ntfs_attr_find().
> > > > To ensure access on these ATTR_RECORDs are within bounds, kernel will
> > > > do some checking during iteration.
> > > >
> > > > The problem is that during checking whether ATTR_RECORD's name is within
> > > > bounds, kernel will dereferences the ATTR_RECORD name_offset field,
> > > > before checking this ATTR_RECORD strcture is within bounds. This problem
> > > > may result out-of-bounds read in ntfs_attr_find(), reported by
> > > > Syzkaller:
> > > >
> > > > ==================================================================
> > > > BUG: KASAN: use-after-free in ntfs_attr_find+0xc02/0xce0 fs/ntfs/attrib.c:597
> > > > Read of size 2 at addr ffff88807e352009 by task syz-executor153/3607
> > > >
> > > > [...]
> > > > Call Trace:
> > > >  <TASK>
> > > >  __dump_stack lib/dump_stack.c:88 [inline]
> > > >  dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
> > > >  print_address_description mm/kasan/report.c:317 [inline]
> > > >  print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
> > > >  kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
> > > >  ntfs_attr_find+0xc02/0xce0 fs/ntfs/attrib.c:597
> > > >  ntfs_attr_lookup+0x1056/0x2070 fs/ntfs/attrib.c:1193
> > > >  ntfs_read_inode_mount+0x89a/0x2580 fs/ntfs/inode.c:1845
> > > >  ntfs_fill_super+0x1799/0x9320 fs/ntfs/super.c:2854
> > > >  mount_bdev+0x34d/0x410 fs/super.c:1400
> > > >  legacy_get_tree+0x105/0x220 fs/fs_context.c:610
> > > >  vfs_get_tree+0x89/0x2f0 fs/super.c:1530
> > > >  do_new_mount fs/namespace.c:3040 [inline]
> > > >  path_mount+0x1326/0x1e20 fs/namespace.c:3370
> > > >  do_mount fs/namespace.c:3383 [inline]
> > > >  __do_sys_mount fs/namespace.c:3591 [inline]
> > > >  __se_sys_mount fs/namespace.c:3568 [inline]
> > > >  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
> > > >  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> > > >  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
> > > >  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > > >  [...]
> > > >  </TASK>
> > > >
> > > > The buggy address belongs to the physical page:
> > > > page:ffffea0001f8d400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7e350
> > > > head:ffffea0001f8d400 order:3 compound_mapcount:0 compound_pincount:0
> > > > flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
> > > > raw: 00fff00000010200 0000000000000000 dead000000000122 ffff888011842140
> > > > raw: 0000000000000000 0000000000040004 00000001ffffffff 0000000000000000
> > > > page dumped because: kasan: bad access detected
> > > > Memory state around the buggy address:
> > > >  ffff88807e351f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> > > >  ffff88807e351f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> > > > >ffff88807e352000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > > >                       ^
> > > >  ffff88807e352080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > > >  ffff88807e352100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > > > ==================================================================
> > > >
> > > > This patch solves it by moving the ATTR_RECORD strcture's bounds
> > > > checking earlier, then checking whether ATTR_RECORD's name
> > > > is within bounds. What's more, this patch also add some comments
> > > > to improve its maintainability.
> > > >
> > > > Reported-and-tested-by: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
> > > > Signed-off-by: chenxiaosong (A) <chenxiaosong2@huawei.com>
> > > > Link: https://lore.kernel.org/all/1636796c-c85e-7f47-e96f-e074fee3c7d3@huawei.com/
> > > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > Link: https://groups.google.com/g/syzkaller-bugs/c/t_XdeKPGTR4/m/LECAuIGcBgAJ
> > > > Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
> > > > ---
> > > >  fs/ntfs/attrib.c | 20 ++++++++++++++++----
> > > >  1 file changed, 16 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> > > > index 52615e6090e1..904734e34507 100644
> > > > --- a/fs/ntfs/attrib.c
> > > > +++ b/fs/ntfs/attrib.c
> > > > @@ -594,11 +594,23 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
> > > >       for (;; a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
> > > >               u8 *mrec_end = (u8 *)ctx->mrec +
> > > >                              le32_to_cpu(ctx->mrec->bytes_allocated);
> > > > -             u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
> > > > -                            a->name_length * sizeof(ntfschar);
> > > > -             if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
> > > > -                 name_end > mrec_end)
> > > > +             u8 *name_end, *arec_head_end;
> > > > +
> > > > +             /* check for wrap around */
> > > > +             if ((u8 *)a < (u8 *)ctx->mrec)
> > > > +                     break;
> > > > +
> > > > +             /* check whether Attribute Record Header is within bounds */
> > > > +             arec_head_end = (u8 *)a + sizeof(ATTR_RECORD);
> > > > +             if (arec_head_end < (u8 *)a || arec_head_end > mrec_end)
> > >
> > > This works but I feel like it would be more natural to just check if
> > > a was valid and if a +  sizeof(ATTR_RECORD) was also valid.
> > >
> > >         if (a > mrec_end || (u8 *)a + sizeof(ATTR_RECORD) > mrec_end)
> > Hi Dan,
> > Thanks for your suggestion.
> > This looks more natural than original patch, yet I wonder if there may
> > be an overflow?
> >
> > To be more specific, if "a" and "mrec_end" is large enough, it seems that
> > some fields of "a" may be out-of-bounds and also bypass this check because
> > of the overflow.(Please correct me if I am wrong)
>
> Are we talking buffer overflows or integer overflows?  There is no
> buffer overflow until we dereference "a".  The checks are just pointer
> math and not dereferences.
>
> For integer overflows if "a" is valid then "a + sizeof(ATTR_RECORD)"
> will not have an integer.  I do not know exactly how memory is laid out
Sorry for the lack of clarity.
What you analyse is what I want to ask. For there are code below this
check, dereferencing "a"(such as a->name_offset). So if there is an
integer overflows in this check, then it may leads to the buffer overflows.

> in the kernel and it also depends on the arch. But the last page is
> always error pointer values so you can always add a page to any valid
> pointer without an integer overflow.
OK, it makes sense now.
I will refactor this patch as you suggested before.
Thanks for your explaination.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
