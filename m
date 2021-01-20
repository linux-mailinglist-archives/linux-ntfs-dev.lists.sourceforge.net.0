Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1512FCD86
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Jan 2021 10:42:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l2A0T-00068G-Cu; Wed, 20 Jan 2021 09:42:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1l27ne-0006gX-Ev
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 20 Jan 2021 07:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fkwpiRhcbAY/Xrd8puZlohXc8HqWP1iUu7DJdV7kfmc=; b=dKcfbKzUlaY+dkQHW34Go8x94M
 Oa6cj/nG/OhjrhnnBF1cDXl78JF+qvzaXTWlHJEqH2B128hBzfPaUgXFKanfGxrkx+55q950VENvT
 U4dXPPz++q21Atu1uph6IOFs5Ws4Bc0f4VJUzPFqvXvqIBfrFGKJbtOcFGj2rLEvKLyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fkwpiRhcbAY/Xrd8puZlohXc8HqWP1iUu7DJdV7kfmc=; b=hgaffWcQo7Ys8gLImahRDb/klr
 2+gYjUxM7SPmSm9D+lddsrldOiFoIX5C8MwC5ZTMrrCQBa+bYFrC2GW8IOjYariJFDiFJeSga1QzD
 AXuQ1IfpAzuouB9qHXNVBdlTKKgCCjTat20NdKCSfO/kO9oIW9JaBTdfFNZJ1XV9iOEI=;
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l27nb-00GLA8-CC
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 20 Jan 2021 07:21:06 +0000
Received: by mail-lj1-f175.google.com with SMTP id p13so24919706ljg.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Jan 2021 23:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fkwpiRhcbAY/Xrd8puZlohXc8HqWP1iUu7DJdV7kfmc=;
 b=aVGobaf0ycMJLbgf0f4UyuTWvrUUAtp+mY6iFDdZLI0xMORlP8OBvXhnIwMJOvQmDc
 /5yFMUMMES0ORDIsRLMzhQB+N3CxQg0+1LG9j0fd04TFKMiabxZwdaoWLPaMYvC8yFb4
 7FYFunesP6et8SvXL0Pc9Ct4nyLdVgNQziDmNHkf0Tio88KsA6Xfm+zyA9CchhsGzo0f
 ifcVABwBKo/7Cbx1eNzMq1M+5OJw1bySGd9d1TFba81CyTFBaMlE5/tjMQFENCDxCGfI
 ks09hALb3xSpNfkgurG6gmNiS8313eGyPwUNpRI6Wlln/NnVXiDvYwkewrIHVpn7qcnd
 c7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fkwpiRhcbAY/Xrd8puZlohXc8HqWP1iUu7DJdV7kfmc=;
 b=iGWmQV+6NtGejE7lYur78SQOIgaSj1tOznlrVYWyqD94uni8TbQA5OD+8O99im7jsg
 PMzBdwmXTDirhKrTgI7dvlidBPSvNDjI2y8nlNO/ngS/64N64SpGleb/SjyEx+RSZnyI
 8+2F7Sn6xhNAB4niKL2vdaocA0HqYv4okG4eqXoqiI+71fwhJ/SqPGN7oRZ/yAbCJiij
 x0HF61rqmZF4dlQ6S11B5Ic1JLH0BoXGjbRUCeL/cAosEem7Do7RD8ohJhdJvaxjuqC4
 FXQU8UGKm4zm1YSSeJ5sKSqmCJzhUsSWwcqelPhUGWL7iTLRn7CJtHJmMGLdPOgVniTF
 QiMQ==
X-Gm-Message-State: AOAM530wcY3NDhtIxW3I8xvkxWnNpTRcmY3GeQBcZN79bzjNw9KI+p59
 +P1YCJhpR4f9iolEDNLK4nY=
X-Google-Smtp-Source: ABdhPJyc6hbY0x8yj+/thIn/8laQ02tnHOZuDloG7PvHASPSyzPfEzks74VFN5SJkJOpuLpvdZaUog==
X-Received: by 2002:a2e:b8d1:: with SMTP id s17mr2741420ljp.269.1611127249385; 
 Tue, 19 Jan 2021 23:20:49 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id j2sm120324lfe.134.2021.01.19.23.20.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Jan 2021 23:20:48 -0800 (PST)
Date: Wed, 20 Jan 2021 09:20:46 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210120072046.p26xlv33ul4lr2vs@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-3-almaz.alexandrovich@paragon-software.com>
 <20210119040306.54lm6oyeiarjrb2w@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210119040306.54lm6oyeiarjrb2w@kari-VirtualBox>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.175 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.175 listed in list.dnswl.org]
X-Headers-End: 1l27nb-00GLA8-CC
X-Mailman-Approved-At: Wed, 20 Jan 2021 09:42:28 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 02/10] fs/ntfs3: Add initialization
 of super block
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Jan 19, 2021 at 06:03:06AM +0200, Kari Argillander wrote:
> On Thu, Dec 31, 2020 at 06:23:53PM +0300, Konstantin Komarov wrote:
> > diff --git a/fs/ntfs3/index.c b/fs/ntfs3/index.c

> > +struct ntfs_fnd *fnd_get(struct ntfs_index *indx)
> > +{
> > +	struct ntfs_fnd *fnd = ntfs_alloc(sizeof(struct ntfs_fnd), 1);
> > +
> > +	if (!fnd)
> > +		return NULL;
> > +
> > +	return fnd;
> > +}
> 
> This should be initilized. What about that indx. Is that neccasarry?
> Also no need to check NULL because if it is NULL we can just return it. 

Sorry about initilized part. Didn't notice it was kzalloc. Other parts
are still relevent.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
