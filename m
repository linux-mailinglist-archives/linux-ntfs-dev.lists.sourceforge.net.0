Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D4641A394
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 28 Sep 2021 01:08:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mUzjN-0000d4-Ax; Mon, 27 Sep 2021 23:08:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <keescook@chromium.org>) id 1mUtX2-0003gB-L6
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 27 Sep 2021 16:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oayds7d4ph4kWFh1xXZbuusv5h+5AfPdkUy5J5DBr3k=; b=WU62GwsZqbOOXoVE8Br1XYJqD7
 SUblKJyEZgntcLKp6b+xJdClqNw5rqJ8QWI0GQhZDvCKm0v2z9EzBEPA5TT0gcCRAsjEhArP8rDKK
 K/owpn9NPr05UgQQGWA8ruSyxZj6x7Z5cDI2dZT2RDQ9zyM92UkI9C5an7Ya1fXngOlU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oayds7d4ph4kWFh1xXZbuusv5h+5AfPdkUy5J5DBr3k=; b=Mv8zMR3mmJxCLvbVXGeQ4kobu4
 Y79Dhf+AkVqws4smZ4RMH6/1M6OXHZJRXilCAvv/qVm+gFBvNHNwQMwi+ytWQBlG3g/ObyXaUzkIg
 NFQYP6QItVmlQmVkVoIX3cXIWjIcSp3YqskbD7Pw6YBEYPdABI0aIvc8WOf1vwB3luuM=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mUtX0-0003ZM-Ro
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 27 Sep 2021 16:31:08 +0000
Received: by mail-oi1-f172.google.com with SMTP id w206so26361922oiw.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 27 Sep 2021 09:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Oayds7d4ph4kWFh1xXZbuusv5h+5AfPdkUy5J5DBr3k=;
 b=kFngBbUxHf6XhO5UqwQdUlSa582oQHs8eZTG3Tr1yUxeaGRzs+isM+yDTOpJ6dbj9Y
 4AIkv+FSAxCtR/bv0WdlIp2ENzyKU2POypc8tBiA81xsbu5jmIeUSqmf4M+hGfsC6zow
 aFMoPZRt42PdgsbdWtCkaOeBzu93qOOb9EIYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Oayds7d4ph4kWFh1xXZbuusv5h+5AfPdkUy5J5DBr3k=;
 b=E9c8iPNu608ezxf9ZrHtfFRjUUkYDNqtO5G6eXJoh3g2OCfzmsA4Ru2uBiMtr30Dzi
 S6AzkH8nGLTARz5yPNKGgax/7sU0hjVG+gkpcLOoj8of6Q+ZZxE146cqfVXjh9O+xhMT
 dn6c8EoRjxnu3bvZ75CwD+dVgWNbRGj1RqDpLpwit/qTOmBQ300dQXUh0JapEPSKLXbl
 APJNZy/bfvTgdIfjEzSkhvUENApriUPP/7Uexslw9PBAn6ZNeawAz2JQ8FO9vbyDoaHJ
 HiwXG7jLU1Mlg4F0pEAeoenn15EFUF5IOWUOVpZq+Iee0bUrkTXY3soej+uFMLCWcoIB
 sWeQ==
X-Gm-Message-State: AOAM530PXdYNZCLo6n5ymd93PEpDl3mvoIFhPF7/L713YN8FsfeJEpdD
 HO0aM/PUuEdNe/tnK5ZEXNKQdoikzo8hTQ==
X-Google-Smtp-Source: ABdhPJwmv7Ci0OH7l3eypdXxSkmOIH+P2PUIF4RCr1a9BdV8p7VCvIE8781ivyXZKXK3er/r72B0Dw==
X-Received: by 2002:a17:90b:46c4:: with SMTP id
 jx4mr14938251pjb.218.1632759801992; 
 Mon, 27 Sep 2021 09:23:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id mt17sm16388311pjb.38.2021.09.27.09.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Sep 2021 09:23:21 -0700 (PDT)
Date: Mon, 27 Sep 2021 09:23:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <202109270923.7E71FE4F9@keescook>
References: <20210927141815.1711736-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927141815.1711736-1-arnd@kernel.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 27, 2021 at 04:18:03PM +0200,
 Arnd Bergmann wrote:
 > From: Arnd Bergmann <arnd@arndb.de> > > On ARM64 randconfig builds, we
 occasionally get warnings for NTFS: > > fs/ntfs/aops.c: In funct [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mUtX0-0003ZM-Ro
X-Mailman-Approved-At: Mon, 27 Sep 2021 23:08:15 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] [RFC] ntfs: disable for 64KB because
 of stack overflow risk
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Anton Altaparmakov <anton@tuxera.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Sep 27, 2021 at 04:18:03PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> On ARM64 randconfig builds, we occasionally get warnings for NTFS:
> 
> fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
> fs/ntfs/aops.c:1328:1: error: the frame size of 2224 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]
> 
> The problem here is that with 64KB pages, we get two arrays on the
> stack that each have 128 pointers, for a total of 2KB. Before
> the VLA change, this could already happen with 512-byte blocks,
> however in practice NTFS should usually have 4KB blocks and not
> be affected by this (see link).
> 
> Now the stack usage is always > 2KB on any architecture with 64KB
> pages. Since both NTFS and 64KB page support are fairly rare,
> we may get away with just marking the combination as disallowed
> in Kconfig and see if anyone complains before we find a different
> way to address it.
> 
> Fixes: ac4ecf968acb ("ntfs: aops: remove VLA usage")
> Link: https://support.microsoft.com/en-us/help/140365/default-cluster-size-for-ntfs-fat-and-exfat
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

That seems reasonable.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
