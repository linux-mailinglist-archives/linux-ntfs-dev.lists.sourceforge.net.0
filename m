Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C91A3E5DF1
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmR-0007fC-Mf; Tue, 10 Aug 2021 14:30:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1mDBDD-0002dP-Sb
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 19:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DOED0VotuCVEYcyrGmWcGuG5s/v4y1T9PJdVveabexo=; b=fGYwwlljN1L28kD1wAB1pSlXXv
 LjWQ/O961Sl6S/xrP8ipAonErqcYgruYMbhYiWA7pKREeaDCkfo2tSigOOTbJG8ER6tXN9CTidEQq
 IAiRdYQUFSfgvioWjGo+U4y2Ehef4O46qZ3dVK3SlHm1FAXRQeNzlffMIwRRv/Fp2DlM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DOED0VotuCVEYcyrGmWcGuG5s/v4y1T9PJdVveabexo=; b=Gr/4JBFzVtUT0sDH/dlyEOFEyS
 6AOr19EuGbN9WdRiYibxDW41R+F4AC/I9O+47jGp+/JFMTZQfTiCnDkrT0biCU7zh2chm6cwOgpnz
 ivt+1gGe+Eb6bLkUJzN6LYxsWYGuNsu26OfX2jVf4YyveJuvx2CEiZL7xQ8rVm88mj7s=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDBD9-0010Ze-He
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 19:45:27 +0000
Received: by mail-lf1-f46.google.com with SMTP id w20so9666047lfu.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 09 Aug 2021 12:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DOED0VotuCVEYcyrGmWcGuG5s/v4y1T9PJdVveabexo=;
 b=ncYmL4TN/lwzhXZo7hrhqvxwuUWaobMvpmlvy1k10IGkDGaSav8yqJ7S6NcvVM5hzw
 ARi49oOKqFNU04F7xPq/paptaktZa2GKjb9hvPlv6z0PT8hNWFpeC2nmagbhEBIh5VZH
 rXOuH90hsD/UMOYTqdorHn2L5OFhV1WvWuBGerp48bPxblFv6Ej3FTxK39DaAmnxRMB7
 +aHR/3/z1J6WckcPsZtpVr5hACrBj58792phXWFerzTtMh8ZATvkPpWUEzREmV2SoQrP
 iG1FK04lnIkb0F/376e319tdo1giCyRXHmy0wT0rVlTwx4uicCPF3yg3bVOo8WKUXwqM
 Up3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DOED0VotuCVEYcyrGmWcGuG5s/v4y1T9PJdVveabexo=;
 b=JRG8MYMJrhetUbIIQWg8SEJ+ICDTD0lRjGQUH/K25cZrfQxDEFIBzGyNL3OmMHI6Kh
 ijoq5Kv0FAJo720D+JjC4SkuL3122w5BbUfDE2iLGaZnJqlEByrWmsp9Vwtt7Oh2R5j5
 RUXkB/SJ+misFFbgtM4MhWMhB/6LY2a3vdGi81ponzDmvy9I2uUUOWGyOINd7SQERaCZ
 uhcxuoGgrF5E9xAL4/8ue5a1fjfLVWuvatCyGHafBPxysniNg1S+srWOUk9eq/SKFSIE
 tH0gJXmhhd/O6qROm1+8puXapDPNO52U//mEwze01SlDqGTycVcCqZ/rNgEWDGUaxC0K
 HO7Q==
X-Gm-Message-State: AOAM531dj9avTFPBXPmT37tfkXN9EKlC4uzd4k3tw2J1R8Ow/gkTqLKT
 OIHvOrU85j933BklvwzTNzs=
X-Google-Smtp-Source: ABdhPJy8YN684aOpruQcDApFcrRq66E/1m/l6HR9maI4geKmr/ljnATCJdremPLHl7GozfW3rw3mcA==
X-Received: by 2002:a05:6512:74a:: with SMTP id
 c10mr18623358lfs.533.1628538317030; 
 Mon, 09 Aug 2021 12:45:17 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id j10sm1699950lfm.299.2021.08.09.12.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 12:45:16 -0700 (PDT)
Date: Mon, 9 Aug 2021 22:45:14 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Dan Williams <dan.j.williams@intel.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210809194514.zdc2br3tonoe4zcu@kari-VirtualBox>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
 <20210809105652.GK5047@twin.jikos.cz>
 <918ff89414fa49f8bcb2dfd00a7b0f0b@paragon-software.com>
 <20210809164425.rcxtftvb2dq644k5@kari-VirtualBox>
 <305bdb56-d40f-2774-12fe-5113f15df5c6@infradead.org>
 <CAA9_cmeK==ZS1wdiOM70L-=z9vQWHiwReS103RfDbCs8weaAzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA9_cmeK==ZS1wdiOM70L-=z9vQWHiwReS103RfDbCs8weaAzw@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDBD9-0010Ze-He
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:55 +0000
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
Cc: "andy.lavr@gmail.com" <andy.lavr@gmail.com>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "oleksandr@natalenko.name" <oleksandr@natalenko.name>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "joe@perches.com" <joe@perches.com>, "hch@lst.de" <hch@lst.de>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Aug 09, 2021 at 11:56:30AM -0700, Dan Williams wrote:
> On Mon, Aug 9, 2021 at 9:58 AM Randy Dunlap <rdunlap@infradead.org> wrote:
> >
> > On 8/9/21 9:44 AM, Kari Argillander wrote:
> > > On Mon, Aug 09, 2021 at 04:16:32PM +0000, Konstantin Komarov wrote:
> > >> From: David Sterba <dsterba@suse.cz>
> > >> Sent: Monday, August 9, 2021 1:57 PM
> > >>> On Thu, Jul 29, 2021 at 04:49:43PM +0300, Konstantin Komarov wrote:
> > >>>> This adds MAINTAINERS
> > >>>>
> > >>>> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > >>>> ---
> > >>>>   MAINTAINERS | 7 +++++++
> > >>>>   1 file changed, 7 insertions(+)
> > >>>>
> > >>>> diff --git a/MAINTAINERS b/MAINTAINERS
> > >>>> index 9c3428380..3b6b48537 100644
> > >>>> --- a/MAINTAINERS
> > >>>> +++ b/MAINTAINERS
> > >>>> @@ -13279,6 +13279,13 @@ T:        git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
> > >>>>   F:       Documentation/filesystems/ntfs.rst
> > >>>>   F:       fs/ntfs/
> > >>>>
> > >>>> +NTFS3 FILESYSTEM
> > >>>> +M:        Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > >>>> +S:        Supported
> > >>>> +W:        http://www.paragon-software.com/
> > >>>> +F:        Documentation/filesystems/ntfs3.rst
> > >>>> +F:        fs/ntfs3/
> > >>>
> > >>> Can you please add a git tree and mailing list entries?
> > >
> > >> Hi David, I'll add the git tree link for the sources to MAINTAINERS in the next patch. As for the mailing list,
> > >> apologies for the newbie question here, but will it possible to have the @vger.kernel.org list for the ntfs3,
> > >> or it must be external for our case?
> > >> Thanks!
> > >
> > > Good question and I also do not have absolute truth about it but I try
> > > to help. It should be possible. I think you can request new list from
> > > postmaster@vger.kernel.org
> > >
> > > If you need public git tree then kernel.org can maybe provide that. They
> > > also host ntfs so I think no problem with ntfs3. This way you self
> > > do not have to worry public list. But I'm not sure how strict is now
> > > days get account. But if you say that it would be nice that you need
> > > kernel git then maybe someone can help with that.
> > > See more info https://www.kernel.org/faq.html
> >
> > If postmaster@vger.kernel.org isn't helpful or you just want to use
> > kernel.org (note that vger.kernel.org isn't part of kernel.org),
> > you can contact: helpdesk@kernel.org  for git tree or mailing list
> > requests.  Wherever you have a mailing list, you probably should
> > have it archived at lore.kernel.org (see next URL for that).
> >
> > Also you may want to read  https://korg.wiki.kernel.org
> 
> There is also lists.linux.dev for kernel development focused lists:
> 
> https://subspace.kernel.org/lists.linux.dev.html

That seems to be "new vger" so this is the way to go. Good that you bring it
up. More info here https://www.kernel.org/lists-linux-dev.html This was just
in site news so it was kinda hard to find.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
