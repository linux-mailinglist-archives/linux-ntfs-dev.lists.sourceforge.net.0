Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4043E5DF5
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmR-0007ec-GC; Tue, 10 Aug 2021 14:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.j.williams@gmail.com>) id 1mDASM-0001aC-FG
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 18:57:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lpaU+dGx63Twhkj2mgwC+GFyqAsKgN0ZWlxIu6Y5jqY=; b=NJd8yXAGP52O+0xFsorZ/mjlBZ
 YKsXOYNHdPADQ3FM2DH0lz2FWPLbbmaBtBTK5K3SQowjklybaBWIyJrmRMJpghj6qNiudQ+OnbuOH
 8iRYvGlmKQxPWxppHQo0FBwePaYkLFSSSWHaQQAzF8hTGAzFuLRxbjuSsrAeTfcMH8Lo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lpaU+dGx63Twhkj2mgwC+GFyqAsKgN0ZWlxIu6Y5jqY=; b=nNld3oOHliiGxL9orQ4T4IQ+B4
 xsofIFJ+C9NN5Rdp5TCVdTOgdgFgBIUc6pWZfqt8D5N8mejlymLzZpul8B2CgGEyC2onfp9BKPojU
 J3uUIXzY64yjkTN7RivTlC3VPk4QPd8R0MfQFCQ4+qFJhjScjdlQ7Q6A2CZZ2Zfbq5CE=;
Received: from mail-io1-f43.google.com ([209.85.166.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDAS6-000wxv-Qw
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 18:56:56 +0000
Received: by mail-io1-f43.google.com with SMTP id i7so22655113iow.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 11:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lpaU+dGx63Twhkj2mgwC+GFyqAsKgN0ZWlxIu6Y5jqY=;
 b=OJPZrhQTjHql535iPfgVVBClk63cKVbEh8jUlh4GcGfxX/orw3bDg7p5Xbyo0czO0i
 K6Sl9iT99rS8rJGmu9ms9/utCrtZQS3mmZ9iY3j6vbD65kwmaZ/MdiQUIZz+bOTR87L1
 qSAeZd35g8E8u/7z//VH80+nJGoTkb47gTQ/ruBAnYL3FrRsk3YyreRtU5L2cFLB1sHo
 xid7p6SgVJDYuI4+YTWZykxbThr/wgNue7BZ9NA/nu1VU/LdUYaMvA0DmQldrHxtamA8
 /8jyVb04ncwzN84eAFw4Nhpt55rafhMYUDzpmuDpXHDdJ71qz/wVsQHIJJjPmUfbJ2bM
 ZP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lpaU+dGx63Twhkj2mgwC+GFyqAsKgN0ZWlxIu6Y5jqY=;
 b=gxbrSoHz6XhW7+p8SFUkiXJ1hZcXyl09KP54lIMTfkTcXxsCHQOrX07xzALbvt1QRc
 5grZuudVp9RxjgtTDCw7Fwz8/cFy9eFtTsa+G5vOv6O2N+0/pAD0V1G/1atKKmVzbJRo
 /+osTO5wCOsnCG49OwTRgcEBL3JfNSbf9M+Sh2Y6f8ADrZBPOedCssMm0Lanp6fwp+aV
 2sb22AbJyrU7ZrN+fg+xDd1koI/3a3dmRFB24A2U7rZzWyJLleDpbPlnmLHKE0b7T0mg
 Zrd4jElMm7Ipm5IXg1WkqPdTKaVbf+6naQO29Wz+Lh6DIfaCkd47Ik/dUgGIQLlgHroh
 KcSQ==
X-Gm-Message-State: AOAM5323Ky2rqdTgmTpRCJT+LJcwD3vXxoWv7+Lnwo0mt81wpvmSRIaC
 hNzcASZBvkYnyRVVoN8aUDNIlXW6gqLGAwuVfGI=
X-Google-Smtp-Source: ABdhPJwrKjLI1YC00YC1aQ2xOe8GNB8pr0ud9Ef9/Hknw9Cjlw0oZ8BngSgPAHbVLp9oSjdsgbTOMKt6AMD1GpY983w=
X-Received: by 2002:a02:b799:: with SMTP id f25mr23765211jam.143.1628535401210; 
 Mon, 09 Aug 2021 11:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
 <20210809105652.GK5047@twin.jikos.cz>
 <918ff89414fa49f8bcb2dfd00a7b0f0b@paragon-software.com>
 <20210809164425.rcxtftvb2dq644k5@kari-VirtualBox>
 <305bdb56-d40f-2774-12fe-5113f15df5c6@infradead.org>
In-Reply-To: <305bdb56-d40f-2774-12fe-5113f15df5c6@infradead.org>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 9 Aug 2021 11:56:30 -0700
Message-ID: <CAA9_cmeK==ZS1wdiOM70L-=z9vQWHiwReS103RfDbCs8weaAzw@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dan.j.williams[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.43 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1mDAS6-000wxv-Qw
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
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
Cc: "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "andy.lavr@gmail.com" <andy.lavr@gmail.com>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "oleksandr@natalenko.name" <oleksandr@natalenko.name>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "willy@infradead.org" <willy@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Kari Argillander <kari.argillander@gmail.com>, "hch@lst.de" <hch@lst.de>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "joe@perches.com" <joe@perches.com>, "aaptel@suse.com" <aaptel@suse.com>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Aug 9, 2021 at 9:58 AM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> On 8/9/21 9:44 AM, Kari Argillander wrote:
> > On Mon, Aug 09, 2021 at 04:16:32PM +0000, Konstantin Komarov wrote:
> >> From: David Sterba <dsterba@suse.cz>
> >> Sent: Monday, August 9, 2021 1:57 PM
> >>> On Thu, Jul 29, 2021 at 04:49:43PM +0300, Konstantin Komarov wrote:
> >>>> This adds MAINTAINERS
> >>>>
> >>>> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> >>>> ---
> >>>>   MAINTAINERS | 7 +++++++
> >>>>   1 file changed, 7 insertions(+)
> >>>>
> >>>> diff --git a/MAINTAINERS b/MAINTAINERS
> >>>> index 9c3428380..3b6b48537 100644
> >>>> --- a/MAINTAINERS
> >>>> +++ b/MAINTAINERS
> >>>> @@ -13279,6 +13279,13 @@ T:        git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
> >>>>   F:       Documentation/filesystems/ntfs.rst
> >>>>   F:       fs/ntfs/
> >>>>
> >>>> +NTFS3 FILESYSTEM
> >>>> +M:        Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> >>>> +S:        Supported
> >>>> +W:        http://www.paragon-software.com/
> >>>> +F:        Documentation/filesystems/ntfs3.rst
> >>>> +F:        fs/ntfs3/
> >>>
> >>> Can you please add a git tree and mailing list entries?
> >
> >> Hi David, I'll add the git tree link for the sources to MAINTAINERS in the next patch. As for the mailing list,
> >> apologies for the newbie question here, but will it possible to have the @vger.kernel.org list for the ntfs3,
> >> or it must be external for our case?
> >> Thanks!
> >
> > Good question and I also do not have absolute truth about it but I try
> > to help. It should be possible. I think you can request new list from
> > postmaster@vger.kernel.org
> >
> > If you need public git tree then kernel.org can maybe provide that. They
> > also host ntfs so I think no problem with ntfs3. This way you self
> > do not have to worry public list. But I'm not sure how strict is now
> > days get account. But if you say that it would be nice that you need
> > kernel git then maybe someone can help with that.
> > See more info https://www.kernel.org/faq.html
>
> If postmaster@vger.kernel.org isn't helpful or you just want to use
> kernel.org (note that vger.kernel.org isn't part of kernel.org),
> you can contact: helpdesk@kernel.org  for git tree or mailing list
> requests.  Wherever you have a mailing list, you probably should
> have it archived at lore.kernel.org (see next URL for that).
>
> Also you may want to read  https://korg.wiki.kernel.org

There is also lists.linux.dev for kernel development focused lists:

https://subspace.kernel.org/lists.linux.dev.html


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
