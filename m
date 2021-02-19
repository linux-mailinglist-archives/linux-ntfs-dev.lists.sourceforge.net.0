Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E5F3219C2
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Feb 2021 15:08:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lEBsf-00034c-94; Mon, 22 Feb 2021 14:08:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <akpm@linux-foundation.org>) id 1lDBFM-0007Ua-OI
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Feb 2021 19:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b2iToNad6doR1NDGzBBdReArLUyZOtI4YHF3Ri4mpzU=; b=lsiH9jjUbKYRzIDw5J3uDLgsUe
 M6wD2vzY8Tq3dpWEOiaoiWlct2nOSuW5nu/FoklfkFfuKDjxhqWdY7SW/KQAVv3UyS9ymjHquQXkE
 2nm6g22+K8GEMnEw4LbGLWLj+53D/g3HtyPTPEQKPYcfsTbZ15zwVttKBHdczV+19kp8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b2iToNad6doR1NDGzBBdReArLUyZOtI4YHF3Ri4mpzU=; b=doL6fr4l4GffN2zBHe63o4fc3O
 HrkbwwbyyZrShYZ43X7UB3OqgqcPyFU0wSFRKdQ1gn0CGrvoaDZ+FzIun7LUB2OX4dSqtpVYWtnbM
 aAZKEYavZUKGWldH8/mRnxOg9t7M5zg//ME/X8/5qJE0bliu6ILGHRugN1LO/eAHsFMc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lDBFJ-00FfHX-82
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Feb 2021 19:15:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3532864E86;
 Fri, 19 Feb 2021 18:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1613760599;
 bh=Gx38bxWA0hpuTupGYkgQ7pMKLZgHu2J7x0b4iAi9t00=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Hlsl7wMcUltsM5a4f/58Iozcxj1MXh6v/B6HOFLw1aAhUnlSQFf7sFanmfOu214gl
 sSQjHlxye19JxZ59jtFXFTzCRbpsAb7dZP7KYnvfq7zue5c3GE6vVbTD+MkHBEbZo1
 d6Qdv6k9vwxLXtoY7/6EAoOPcVwdZ2CN4wzW5jnw=
Date: Fri, 19 Feb 2021 10:49:56 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Anton Altaparmakov <anton@tuxera.com>
Message-Id: <20210219104956.09e869c36f065a78d1901725@linux-foundation.org>
In-Reply-To: <42B686E5-92C1-4AD3-8CF4-E9AB39CBDB7B@tuxera.com>
References: <20210217155930.1506815-1-rkovhaev@gmail.com>
 <42B686E5-92C1-4AD3-8CF4-E9AB39CBDB7B@tuxera.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lDBFJ-00FfHX-82
X-Mailman-Approved-At: Mon, 22 Feb 2021 14:08:08 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: check for valid standard
 information attribute
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, 19 Feb 2021 01:54:30 +0000 Anton Altaparmakov <anton@tuxera.com> wrote:

> Hi Andrew,
> 
> Can you please push this one upstream?  Thanks a lot in advance!

The changelog is a bit brief...

> 
> > On 17 Feb 2021, at 15:59, Rustam Kovhaev <rkovhaev@gmail.com> wrote:
> > 
> > we should check for valid STANDARD_INFORMATION attribute offset and
> > length before trying to access it

It's a kernel a crash and I assume it results from mounting a corrupted
filesystem?

I think it's worth a cc:stable, yes?




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
