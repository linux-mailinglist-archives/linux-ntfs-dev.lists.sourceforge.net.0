Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0320845AD48
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 21:24:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpcLK-0005gG-MS; Tue, 23 Nov 2021 20:24:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mpYOm-0005g9-Av
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 16:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ckGV4VlH3o4N0FnEKWdKWRp2/mLTMGiSVx3IOfpNe1o=; b=dzf3tyMw354CRv3+SmQQoN2Ztz
 Knu+x5N4I0F0f1w/Y3PDJVQAQLZ2CUAKi9udqMyeB+x3nnL/nm/2F5v14GmZyi2meDHHJTJWkRrvr
 S7vim+OYTYdlzBCoxZ0PDFt63vjE+P+JyaJOxbi0k8ntszShMW8Of4p2aJJbsRkxWSGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ckGV4VlH3o4N0FnEKWdKWRp2/mLTMGiSVx3IOfpNe1o=; b=ZfK1QxpWaEDt8BYFVC6XMPNoiz
 yYNhv/t+cnTXoLJmaHo2gG5QXl6Zzm1/WKRJxeqYdlG/xsw+A8VG01RDul/6i+SNDitoPJ10/Vztu
 tHjRmZMlc7f6iwle4BBqgPiXIT+c6hUPbKtKm4XgzBsS1tLVTApBBBgzHjtvESDCJhbA=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpYOh-0007TL-C1
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 23 Nov 2021 16:12:00 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 h16-20020a9d7990000000b0055c7ae44dd2so34475653otm.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 23 Nov 2021 08:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ckGV4VlH3o4N0FnEKWdKWRp2/mLTMGiSVx3IOfpNe1o=;
 b=c+RBw4cHnHXJN5eiqGdZXgCCFI3gJKPOpj9eDXTdXo82jVZsgQanmtKPktQ5xKX2Og
 t0igPqGqXBxiiWoZNtcvQAV2mQFCVX6G7DQKoyIevus2pjdU+i/YNG7xxob4ZAYAbwp/
 X/PfmXzmwTmMfqkdqqbDJ6cOBlKBCBULCMrKWxN74hGfVNdjUXVJiajkYqjw8Gds40sS
 hdjCeXwF9GnyZaXZO1G3aYOAEwejgSkE4V20hEH/8y7fJkPQwzNJnnMOL72DvgnJKkzF
 HLnkgiCZ+xUihGt0v5cIB9p9jDmWO/84inKIsHLvKT0XnQ9Eg4/eOI1Z/V3ftMjNN+dz
 2SSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=ckGV4VlH3o4N0FnEKWdKWRp2/mLTMGiSVx3IOfpNe1o=;
 b=6Cb6BHzqKNIu2IMtBlKIWHunMZdpQm4TQiZnd6AlcL03aCv9E/OG0k6m+X3LTSBurM
 Vzo+1JqxZBCQu4XBSSvFr+jbAIQPdky5MtU4RXh8Rs2OfZ2jzUGQ/uelZzNggH5j5RUO
 5EKS/PuSwY+7+lxZPCBYbLW4caRPMdEi/Bb/F4q6jHl3mCZurQHV5mya2pfLfeqdwTMT
 oO7xCk2bTEEEIknSg4NBHE2D7H1qVt2YsXzfHshChi9zDta4P6fMbV7vcYbXHjAaOsr8
 GK/LM+r6ytfuZDHJlhUZSXiVCpmT5yGuXxzNfHny77CzLe+BxieXp/z70lQc3fXFjlkn
 bTIw==
X-Gm-Message-State: AOAM530JnK/J5nlhF37X9zhRKV+Ue/R4kFrpY62Z/II6zADpZFR8cDCI
 hz1xTROJG8sWzIY+z1X1zhvSwayvTbY=
X-Google-Smtp-Source: ABdhPJzgL2EqGUDWGsx3qgkhYnLWsI6Wj4P0/TyDIG2rgJ1VJFD3NB7S8I5Ot8KLfK7o9j04KTXLig==
X-Received: by 2002:a05:6830:1358:: with SMTP id
 r24mr5723465otq.8.1637683909801; 
 Tue, 23 Nov 2021 08:11:49 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 h14sm2278875ots.22.2021.11.23.08.11.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 08:11:49 -0800 (PST)
Date: Tue, 23 Nov 2021 08:11:48 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20211123161148.GC2326185@roeck-us.net>
References: <20211122230653.1779162-1-linux@roeck-us.net>
 <CACPK8XfM1e7b6m_QBhJFgXCXhqOajMKGUkWqRGxa5sCKyLxRQg@mail.gmail.com>
 <b63d1758-b434-93c3-164c-b536c7437bdf@roeck-us.net>
 <87a6hvqeq3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a6hvqeq3.fsf@mpe.ellerman.id.au>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 23, 2021 at 10:43:48PM +1100, Michael Ellerman
 wrote: [ ... ] > > > > So we are looking for something like > > > > config
 DISABLE_NTFS_RW > > bool > > default y if PAGE_SIZE_256KB || PPC_2 [...] 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mpYOh-0007TL-C1
X-Mailman-Approved-At: Tue, 23 Nov 2021 20:24:40 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs: ntfs: Disable NTFS_RW for PPC
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-ntfs-dev@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Nov 23, 2021 at 10:43:48PM +1100, Michael Ellerman wrote:
[ ... ]
> >
> > So we are looking for something like
> >
> > config DISABLE_NTFS_RW
> > 	bool
> > 	default y if PAGE_SIZE_256KB || PPC_256K_PAGES || \
> > 		PAGE_SIZE_64KB || ARM64_64K_PAGES || IA64_PAGE_SIZE_64KB || \
> > 		PARISC_PAGE_SIZE_64KB || PPC_64K_PAGES
> >
> > Anything else ?
> 
> Can we do something like this instead?
> 
> I'm pretty sure it does what we want for NTFS, and also for VMXNET3.
> 
> It is not pretty, but at least keeps the arch specifics out of driver
> Kconfigs.
> 
> cheers
> 
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 26b8ed11639d..d3c4ab249e9c 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -991,6 +991,16 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
>  	  and vice-versa 32-bit applications to call 64-bit mmap().
>  	  Required for applications doing different bitness syscalls.
>  
> +config PAGE_SIZE_LESS_THAN_64KB
> +	def_bool y
> +	depends on !ARM64_64K_PAGES
> +	depends on !IA64_PAGE_SIZE_64KB
> +	depends on !PAGE_SIZE_64KB
> +	depends on !PARISC_PAGE_SIZE_64KB
> +	depends on !PPC_64K_PAGES
> +	depends on !PPC_256K_PAGES
> +	depends on !PAGE_SIZE_256KB
> +

Sure, works for me. I'll wait another day or two for additional feedback
before sending out v3.

Guenter

>  # This allows to use a set of generic functions to determine mmap base
>  # address by giving priority to top-down scheme only if the process
>  # is not in legacy mode (compat task, unlimited stack size or
> diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
> index 1667a7e590d8..f93e69a61283 100644
> --- a/fs/ntfs/Kconfig
> +++ b/fs/ntfs/Kconfig
> @@ -52,6 +52,7 @@ config NTFS_DEBUG
>  config NTFS_RW
>  	bool "NTFS write support"
>  	depends on NTFS_FS
> +	depends on PAGE_SIZE_LESS_THAN_64KB
>  	help
>  	  This enables the partial, but safe, write support in the NTFS driver.
>  


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
