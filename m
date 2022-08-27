Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 470035A3784
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Aug 2022 13:57:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRuRd-0005fo-G3;
	Sat, 27 Aug 2022 11:57:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRriH-0002al-Oc
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 09:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7wwbAuLXWf5SB+NrnBAoFyECHS6XWLYdUvOon1TCXE=; b=FF90mvs2JagpCzhzW7dsuJ7PXj
 eVTYVhLSUrQb8GTmIbKzPz7NFPs4EXuF2c1RxSMBjk7WG7ePzb+odTuqstJsWICxmHlnHUQ41tdFn
 sE+jeUr3kC860mGiRoHhQRdrniweY1cvfDGzkPV2hVYzATAt3YxzxU/2mvLS3Ojxx9GQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D7wwbAuLXWf5SB+NrnBAoFyECHS6XWLYdUvOon1TCXE=; b=Ce4Lc0/WdmEU4Hv0vC01T75ZSI
 +SmSiCrQXOZJDfPVPjYsfsGhacE1Qe1Wf+mVL8Kj9Nr4v/3G+ygpSqLn/exkZd318zjJbt10bVUHl
 mbJq0eGyANMCOxTypH0T9IUb2SLEp5AWOxiQZ7OKrKqX0g1E5MmC1GNUFjho0gACTjCQ=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRriG-002Wx2-U2 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Aug 2022 09:02:45 +0000
Received: by mail-pg1-f169.google.com with SMTP id 69so1800107pgb.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Aug 2022 02:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=D7wwbAuLXWf5SB+NrnBAoFyECHS6XWLYdUvOon1TCXE=;
 b=EdrAPX3fWMDCt2nPBgcPLvrxq6br95yWD8pDZjJZHeiC8vfwNudi1/FPnHY2e7toVy
 i4FXOAAmjRSbloR/Ii3Ev6Q0Tn1j6+og1LqZB/vO4KQ0rK/qwL1Nj2qeBmbO783aXdSf
 FE+kbXlPcKRfBlYiutc0bTuT5Yce9DZJvoHfa6H3B2hUdIY89GDNXE/Kbnj9uAf4kDAm
 uxwDxWAhbBuQw3Q/VNiy7TrOiN1xQdmXwA8VSe02c4M+FFUXuL+ad2aUAj5dVcU3S+pm
 V4GiO4/vNDYlTEn42J+WwlskCoO4CqL+keVtpqMDGincSKnZDyKDM6fQBNTrZ+EGLKkP
 uOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=D7wwbAuLXWf5SB+NrnBAoFyECHS6XWLYdUvOon1TCXE=;
 b=dSuowevsnurpu/q92iv9eYIRvdM0zjfuIrISXdul7NdFXYOWMP6MZ2NnXQ2NkEg4b5
 gEhDDR9iJs9w5YqFFAavPKhRGl5llvoWw10st1Y/AIIK/hzK4xzhyysAKo2gIYdeSiqv
 yBPHCQ+oeHXDWtQNZZxO/6ETIWvdFG5MxW5UYFsjrQD2ydfJv2h9BQ9saWqkUv86sijh
 ODi1hmjSeLpo72TOzj4h+HkEy4pnBe+qVgKGQcuTz+7HsrCr0cqclw2A6tLE/zy432Fk
 3xilEVqlCV/Pz64aLMsojraasEq1qvoq5C2qn2HDCw8SzkVQylv5k81hQj5dzQnEn9e5
 2lww==
X-Gm-Message-State: ACgBeo0/rxGHDJi1ZS+GGt801evMGxK7C2eV14SoZ6BRUZC/V3cBjfCp
 zhTnjtZJtsV5Ic64/bRqx2g=
X-Google-Smtp-Source: AA6agR6SduTHI/dh7+uOOuXv2bOQOJLw1oK9Z9i3q8mttMJatnvVJZ+6PtRXtZKOmgbxIG+W2ljGSg==
X-Received: by 2002:a05:6a00:22cd:b0:52f:706a:5268 with SMTP id
 f13-20020a056a0022cd00b0052f706a5268mr7469640pfj.80.1661590959325; 
 Sat, 27 Aug 2022 02:02:39 -0700 (PDT)
Received: from localhost ([223.104.39.136]) by smtp.gmail.com with ESMTPSA id
 i17-20020a170902cf1100b0016d785ef6d2sm3031403plg.223.2022.08.27.02.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Aug 2022 02:02:38 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: dan.carpenter@oracle.com
Date: Sat, 27 Aug 2022 17:02:31 +0800
Message-Id: <20220827090230.3287-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220827064217.GK2030@kadam>
References: <20220827064217.GK2030@kadam>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 27 Aug 2022 at 14:42, Dan Carpenter wrote: > > On
 Fri, Aug 26, 2022 at 11:42:32PM +0800, Hawkins Jiawei wrote: > > On Fri, 26
 Aug 2022 at 23:15, Dan Carpenter wrote: > > > > > > On Fri, Au [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oRriG-002Wx2-U2
X-Mailman-Approved-At: Sat, 27 Aug 2022 11:57:43 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in
 ntfs_attr_find
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
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, yin31149@gmail.com,
 akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat, 27 Aug 2022 at 14:42, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Fri, Aug 26, 2022 at 11:42:32PM +0800, Hawkins Jiawei wrote:
> > On Fri, 26 Aug 2022 at 23:15, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > On Fri, Aug 26, 2022 at 08:32:57PM +0800, Hawkins Jiawei wrote:
> > > > > syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git   master
> > > > >
> > > > > Looks like it is improper check order that causes this bug.
> > > >
> > > > Sorry for wrong command.
> > > > #syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git   master
> > > >
> > > > diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> > > > index 52615e6090e1..6480cd2d371d 100644
> > > > --- a/fs/ntfs/attrib.c
> > > > +++ b/fs/ntfs/attrib.c
> > > > @@ -594,10 +594,11 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
> > > >       for (;; a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
> > > >               u8 *mrec_end = (u8 *)ctx->mrec +
> > > >                              le32_to_cpu(ctx->mrec->bytes_allocated);
> > > > +             if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end)
> > > > +                     break;
> > >
> > > This definitely seems like a bug.  But your code won't build.  Syzbot
> > > must have -Werror turned off?
> > Hi Dan,
> > Did you mean we should put the variable declares at the beginning of the function?
> > (Correct me if I understand anything wrong)
>
> You can declare it at the beginning of the block.
OK, I will do like that.

>
> >
> > >
> > > Btw, this was in the original code, but those casts are ugly.  Ideally
> > > there would be some way to get rid of them.  But otherwise at least
> > > put a space after the u8.  "(u8 *)a < (u8 *)ctx->mrec".
> > >
> > > >               u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
> > > >                              a->name_length * sizeof(ntfschar);
> > > > -             if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
> > > > -                 name_end > mrec_end)
> > > > +             if (name_end > mrec_end)
> > > >                       break;
> > >
> > > regards,
> > > dan carpenter
> > So maybe I can try to refactor these codes. But I wonder if this can be
> > done in a seperate bug
>
> The kernel has a strict "one thing per patch rule".  Those rules are
> for reviewers and easier backporting.  So the trick is to write the
> commit message to persuade the reviewer that the way you've written the
> patch is the easiest way to review it.  So here is how I would write the
> commit message:
>
> [PATCH] ntfs: fix out of bounds read in ntfs_attr_find()
>
> This code deferences "a" to calculate "name_end" and then it checks to
> ensure that "a" is within bounds.  Move the bounds checks earlier and
> add some comments to make it more clear what they're doing.  Then
> calculate "name_end" and check that.
>
> (Btw, are the wrap around checks really sufficient?  It seems like it
> could wrap to something still within the ->mrec buffer but before the
> current entry so it would end up in a forever loop or something?)
I am not for sure, but it seems that it is OK before.
As for the forever loop, there is a break when a->length is 0 in the loop,
So I think it probably would not end up in a forever loop?(Correct me if
I am wrong)

>
> diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
> index 52615e6090e1..90d567acb2a3 100644
> --- a/fs/ntfs/attrib.c
> +++ b/fs/ntfs/attrib.c
> @@ -594,11 +594,20 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
>         for (;; a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
>                 u8 *mrec_end = (u8 *)ctx->mrec +
>                                le32_to_cpu(ctx->mrec->bytes_allocated);
> -               u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
> -                              a->name_length * sizeof(ntfschar);
> -               if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
> -                   name_end > mrec_end)
> +               u8 *name_end;
> +
> +               /* check for wrap around */
> +               if ((u8 *)a < (u8 *)ctx->mrec)
> +                       break;
> +               /* check for overflow */
> +               if ((u8 *)a > mrec_end)
>                         break;
> +
> +               name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
> +                          a->name_length * sizeof(ntfschar);
> +               if (name_end > mrec_end)
> +                       break;
> +
>                 ctx->attr = a;
>                 if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
>                                 a->type == AT_END))
Thanks for your suggestion, I will refactor these codes in this way.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
