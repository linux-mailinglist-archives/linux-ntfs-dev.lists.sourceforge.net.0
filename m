Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F4D5437B0
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Jun 2022 17:42:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nyxpd-00058G-MU; Wed, 08 Jun 2022 15:42:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <aquini@redhat.com>) id 1nyvOM-0002Ca-Mh
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jun 2022 13:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=USUlEZ1UMdOAkVgNJKy6bNhyk03F1F+22jSwcfgVGi0=; b=JRLjHoGnfG6HFvFcQnvDigq/DI
 vavLb9GoZ3+NOUO5sryQ/Jjm8y/yyFSz+dFbgU39kjQsQROEHUWBLkJenaRdJohg5CwsVopnZrDKg
 YaAeIxXKKiWYsW5xWFHsLZ0FNWFyqJZHiORIYlsDfmpfRPifFWdEY9ZhrwoUJngefcEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=USUlEZ1UMdOAkVgNJKy6bNhyk03F1F+22jSwcfgVGi0=; b=atpxE7R8zlt+OKJ74tJBrcs6WI
 srdQy7mXeLuC3RQpAkk7sSHoJ9CiJUXkVPpRKyimlgxIEHx8D0WnmLrpEpsSkhKQdCcKXV9RYTRmI
 mqSgyodQNvNNgm3t+mUvymEU+gXXyNXLs4PYcr38VIqlFdTwFXdMLq2yN6Yr6PzF4z8Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyvOF-0007DK-Ev
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jun 2022 13:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654693582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=USUlEZ1UMdOAkVgNJKy6bNhyk03F1F+22jSwcfgVGi0=;
 b=UoJHHshZaUShraxSBVjI9WRQAg6Q8lBYAs+8JFhFch1f8CMfyCw5VlBsPzd0X33miW+LTV
 n+tFAzMZNP2w2mf/RoLa1qgjKmsiAzj7xWGHz0ugiGJ3JHWu1q5zh2oMRdIe+6x9O6Sb7q
 dIDTMPpWOFo8ML+JcvJ3jH62YcKv8sA=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-aT6HA51AMK-XlvkPSewY9Q-1; Wed, 08 Jun 2022 09:06:21 -0400
X-MC-Unique: aT6HA51AMK-XlvkPSewY9Q-1
Received: by mail-qt1-f198.google.com with SMTP id
 d13-20020ac85acd000000b002f3be21793dso16290927qtd.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 08 Jun 2022 06:06:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=USUlEZ1UMdOAkVgNJKy6bNhyk03F1F+22jSwcfgVGi0=;
 b=rbDJZUivNa9WRB9Yk6RgyjNOwKIN6wExl08oTRGCfoKDe3viz0mf4TxLD0LmlJGkho
 sQtgPEllPOUD5gmFkDp3Vdo+Ed6SK/H7sMj6z32Cpzd0fV3IFWKakO3adWn2JiPeNKIc
 ARUAMZi4yAzKkO/36CBoxV6zz45XWY2xnKkKapdO916uJQuTi0I+e5R+QdDCy85xn+J3
 4t6vNXZk3oo6SbInBHdzjg5YReVm2zH5a9p41rnbRTiAc7EeVDqEpfqK+u9zMkDn6+sz
 tczXzBCSDGNGtOhTkYxfwEtLxLzRW2ljpPG3Yx28qJnddqqi/1Tg30ODmK9TxnhzwRS5
 oehA==
X-Gm-Message-State: AOAM5308wBdU2wHBkWeedN/tuERoAf6PSzKeDlAykYef8c8jbMsjVURr
 fLTi4Q+cqrxDohOUevkixH7StDbpW8QBjmFcarGHSUWccJGX5REKCJEQqW45Y4g8hO2JMm0GH7Q
 uNoZsbmAQRkiMA/9Qv5siPzdTI1XikGqGslc=
X-Received: by 2002:a05:622a:1013:b0:305:3c:232e with SMTP id
 d19-20020a05622a101300b00305003c232emr2957088qte.180.1654693580922; 
 Wed, 08 Jun 2022 06:06:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmMXLqnBI6Og+4P0GHsdMp3mdyP17UTS82rMH1Kp6fTALPnxZvoiZs7I0UncTVXHO0B2TwhQ==
X-Received: by 2002:a05:622a:1013:b0:305:3c:232e with SMTP id
 d19-20020a05622a101300b00305003c232emr2957043qte.180.1654693580507; 
 Wed, 08 Jun 2022 06:06:20 -0700 (PDT)
Received: from optiplex-fbsd (c-73-182-255-193.hsd1.nh.comcast.net.
 [73.182.255.193]) by smtp.gmail.com with ESMTPSA id
 v10-20020a05620a440a00b0069fc13ce217sm4216712qkp.72.2022.06.08.06.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jun 2022 06:06:20 -0700 (PDT)
Date: Wed, 8 Jun 2022 09:06:17 -0400
From: Rafael Aquini <aquini@redhat.com>
To: David Hildenbrand <david@redhat.com>
Message-ID: <YqCeyZO77Oi1wvxt@optiplex-fbsd>
References: <20220606204050.2625949-1-willy@infradead.org>
 <20220606204050.2625949-16-willy@infradead.org>
 <e4d017a4-556d-bb5f-9830-a8843591bc8d@redhat.com>
 <Yp9fj/Si2qyb61Y3@casper.infradead.org>
 <Yp+lU55H4igaV3pB@casper.infradead.org>
 <36cc5e2b-b768-ce1c-fa30-72a932587289@redhat.com>
MIME-Version: 1.0
In-Reply-To: <36cc5e2b-b768-ce1c-fa30-72a932587289@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=aquini@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 08, 2022 at 11:59:31AM +0200, David Hildenbrand
 wrote: > On 07.06.22 21:21, Matthew Wilcox wrote: > > On Tue, Jun 07, 2022
 at 03:24:15PM +0100, Matthew Wilcox wrote: > >> On Tue, Jun 07, 2 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nyvOF-0007DK-Ev
X-Mailman-Approved-At: Wed, 08 Jun 2022 15:42:50 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 15/20] balloon: Convert to migrate_folio
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
Cc: linux-aio@kvack.org, linux-nfs@vger.kernel.org, cluster-devel@redhat.com,
 Minchan Kim <minchan@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-block@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 virtualization@lists.linux-foundation.org, linux-xfs@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Jun 08, 2022 at 11:59:31AM +0200, David Hildenbrand wrote:
> On 07.06.22 21:21, Matthew Wilcox wrote:
> > On Tue, Jun 07, 2022 at 03:24:15PM +0100, Matthew Wilcox wrote:
> >> On Tue, Jun 07, 2022 at 09:36:21AM +0200, David Hildenbrand wrote:
> >>> On 06.06.22 22:40, Matthew Wilcox (Oracle) wrote:
> >>>>  const struct address_space_operations balloon_aops = {
> >>>> -	.migratepage = balloon_page_migrate,
> >>>> +	.migrate_folio = balloon_migrate_folio,
> >>>>  	.isolate_page = balloon_page_isolate,
> >>>>  	.putback_page = balloon_page_putback,
> >>>>  };
> >>>
> >>> I assume you're working on conversion of the other callbacks as well,
> >>> because otherwise, this ends up looking a bit inconsistent and confusing :)
> >>
> >> My intention was to finish converting aops for the next merge window.
> >>
> >> However, it seems to me that we goofed back in 2016 by merging
> >> commit bda807d44454.  isolate_page() and putback_page() should
> >> never have been part of address_space_operations.
> >>
> >> I'm about to embark on creating a new migrate_operations struct
> >> for drivers to use that contains only isolate/putback/migrate.
> >> No filesystem uses isolate/putback, so those can just be deleted.
> >> Both migrate_operations & address_space_operations will contain a
> >> migrate callback.
> 
> That makes sense to me. I wonder if there was a design
> decision/discussion behind that. CCing Rafael.
>

None that I recollect. If memory still serves me, I think the idea behind
bda807d44454 and friends was to provide a generic way to allow page
mobility for drivers without adding complexity to the page isolation / putback
paths, and since the migration callback was already part of the aops struct
those new callbacks just followed suit.


-- Rafael



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
