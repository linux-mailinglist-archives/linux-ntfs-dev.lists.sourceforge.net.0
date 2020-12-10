Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 913D72D5189
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 10 Dec 2020 04:41:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1knCpY-0002zj-Im; Thu, 10 Dec 2020 03:41:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <akpm@linux-foundation.org>) id 1knC5v-0006Kn-49
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 10 Dec 2020 02:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MgsQAo7ptWV4XpZrwWbYZLdNr5VF7O9yJnEK+K9ay0E=; b=mm5jKsU2tQDexPyBf923kGBajk
 mxh4Fdt5NkehQE8+xf6nYL1H5JMOqnEtUOcqkGonr8Eq3JrRvhvKClUuhqaWfzKPt6k7wkAM7v23t
 FORu2OzUZDY6b+yYtFtZKX9bslxLzHfUKpXk7mbD1bl/gne9jIk7f7dLewgvQyqV/32s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MgsQAo7ptWV4XpZrwWbYZLdNr5VF7O9yJnEK+K9ay0E=; b=e6kj+zcSf8hrIISJiS49uD5T8j
 3OzWQqbhetT+1o4nh3UiIYMMhRfe7FhoVblFQTr9vZ96Be4oxDx7llKBbDIpUxwARPjmVRhTtSdmd
 qfQMe5CJs1mj/wSLL01Uu4wp4e/QhCKJ1cbVUTvXg1XjOlrJGzDG/aoD9DLCxkyinm7U=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1knC5k-008VFt-TA
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 10 Dec 2020 02:54:15 +0000
Date: Wed, 9 Dec 2020 18:36:23 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1607567785;
 bh=XvfNSBjtRQDwTQaWQYMVMSpT8H8nutp1mjAcQR7vP6Q=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z9i631HDe1R5jmoeOhXA3++25nKEC+BRYA5F0FDi7zEdV8m6hVveolSt2t+AYiDeb
 BrIfrbaAFU1attLpFoEnDkLbBp9A5TZCZpr0T6wTmAKOx7vq23trf36rOisG3LCu4g
 Iiw2tgeTCsbq69cGwJD84zvIoGWxj+a2L59ElcS4=
From: Andrew Morton <akpm@linux-foundation.org>
To: Anton Altaparmakov <anton@tuxera.com>
Message-Id: <20201209183623.b26e90de3d0aa92a72010ff0@linux-foundation.org>
In-Reply-To: <94ED375C-C57C-464B-A1CA-BFB1EEF71BB2@tuxera.com>
References: <20200312041353.19877-1-zhengzengkai@huawei.com>
 <94ED375C-C57C-464B-A1CA-BFB1EEF71BB2@tuxera.com>
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
X-Headers-End: 1knC5k-008VFt-TA
X-Mailman-Approved-At: Thu, 10 Dec 2020 03:41:23 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH -next] fs/ntfs: fix set but not used
 variable 'log_page_mask'
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
 <linux-ntfs-dev@lists.sourceforge.net>, LKML <linux-kernel@vger.kernel.org>,
 Zheng Zengkai <zhengzengkai@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, 8 Dec 2020 08:24:02 +0000 Anton Altaparmakov <anton@tuxera.com> wrote:

> Can you please apply this?
>
> ...
>
> > --- a/fs/ntfs/logfile.c
> > +++ b/fs/ntfs/logfile.c
> > @@ -507,7 +507,7 @@ bool ntfs_check_logfile(struct inode *log_vi, RESTART_PAGE_HEADER **rp)
> > 	 * optimize log_page_size and log_page_bits into constants.
> > 	 */
> > 	log_page_bits = ntfs_ffs(log_page_size) - 1;
> > -	size &= ~(s64)(log_page_size - 1);
> > +	size &= ~(s64)(log_page_mask);
> > 	/*
> > 	 * Ensure the log file is big enough to store at least the two restart
> > 	 * pages and the minimum number of log record pages.

https://lore.kernel.org/lkml/1604821092-54631-1-git-send-email-alex.shi@linux.alibaba.com/
addressed this?



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
