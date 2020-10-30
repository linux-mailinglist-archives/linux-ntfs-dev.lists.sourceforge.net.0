Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FE82A1B70
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1EC-0001vf-SB; Sun, 01 Nov 2020 00:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>) id 1kYXTI-0001LZ-9P
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 16:41:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oXJs/ylmFkP8cGUgDQPsFtbJpPPKe2xHZ6YOpW0CXdY=; b=InMXuSjqT9XUCLUUj6mdBPxHmx
 CUPD0knoDUGJaRHi8UrdlM1gaPZBh1XBhVv6WV0BRG6B0VfgCPI5/GNndomZKwMqWGyRU6l1dFkzs
 ytrCgrQgxIhk5r5jXtHI1yxSwgVzXtz0/OnobaK0Er04HSiMcksibb/gfi1QvGvrIgeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oXJs/ylmFkP8cGUgDQPsFtbJpPPKe2xHZ6YOpW0CXdY=; b=I0pKoCfJ34GV2/wjIqVipstXo0
 yDOF7b1qyTFlhKitodhEGdBU7bqOnZE3TN05ZAmFmidF/Kc1VAXURkn01P99FFYkXFAj2N/onFY7G
 kkRkjB03o5tkxKS+HHS+e6vXRXkcztCWPCzc/zWK1IKOFjDZ5ZWyGxhJ+vViQU/c3fhk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYXTD-002nz6-Cf
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 16:41:48 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80B6620724;
 Fri, 30 Oct 2020 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604076085;
 bh=yDGK3HSIn6gb/VVUQS5nuiDIvM6Z+CXvckaxC2BQVug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RvqHZFbdFPQgGVkp6TB84dHb/Yqrz6V82kIm749gIwjEDtgoYqwUhlXZ6ZLV8iVWv
 LpsimexulpWcW9CR5aJ6YNSpUxlD40Sk03En52ysB2sPlR5bWK5SfGh4uRP3A70lBR
 mdRuOMQ5ZaWXlPjaf8Zpx65yor6iGGJ46QeWnrbA=
Received: by pali.im (Postfix)
 id D8D2786D; Fri, 30 Oct 2020 17:41:22 +0100 (CET)
Date: Fri, 30 Oct 2020 17:41:22 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Christoph Hellwig <hch@lst.de>
Message-ID: <20201030164122.vuao3avogggnk42q@pali>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kYXTD-002nz6-Cf
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:09 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v11 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hello!

On Friday 30 October 2020 18:02:29 Konstantin Komarov wrote:
>  27 files changed, 28364 insertions(+)
>  create mode 100644 Documentation/filesystems/ntfs3.rst
>  create mode 100644 fs/ntfs3/Kconfig
>  create mode 100644 fs/ntfs3/Makefile
>  create mode 100644 fs/ntfs3/attrib.c
>  create mode 100644 fs/ntfs3/attrlist.c
>  create mode 100644 fs/ntfs3/bitfunc.c
>  create mode 100644 fs/ntfs3/bitmap.c
>  create mode 100644 fs/ntfs3/debug.h
>  create mode 100644 fs/ntfs3/dir.c
>  create mode 100644 fs/ntfs3/file.c
>  create mode 100644 fs/ntfs3/frecord.c
>  create mode 100644 fs/ntfs3/fslog.c
>  create mode 100644 fs/ntfs3/fsntfs.c
>  create mode 100644 fs/ntfs3/index.c
>  create mode 100644 fs/ntfs3/inode.c
>  create mode 100644 fs/ntfs3/lznt.c
>  create mode 100644 fs/ntfs3/namei.c
>  create mode 100644 fs/ntfs3/ntfs.h
>  create mode 100644 fs/ntfs3/ntfs_fs.h
>  create mode 100644 fs/ntfs3/record.c
>  create mode 100644 fs/ntfs3/run.c
>  create mode 100644 fs/ntfs3/super.c
>  create mode 100644 fs/ntfs3/upcase.c
>  create mode 100644 fs/ntfs3/xattr.c

I would like to open discussion about two ntfs kernel drivers. Do we
really need two drivers (one read only - current version and one
read/write - this new version)?

What other people think?

I remember that Christoph (added to loop) had in past a good argument
about old staging exfat driver (it had support also for fat32/vfat),
that it would cause problems if two filesystem drivers would provide
support for same filesystem.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
