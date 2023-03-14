Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 191286BAC7C
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 15 Mar 2023 10:47:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pcNik-00008a-Ph;
	Wed, 15 Mar 2023 09:46:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pc6KV-0003KR-Ll
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 14 Mar 2023 15:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H1QGXFGueBuHBkdVnY1gVNgWxdg/uqRKaISs/k4X5k8=; b=kM1cU/8wHFi58iAHDsaAI0wRpz
 Lb4t1BLi0un1bYXcoDQYLSLAiGI3I/xK+2ZS041fUiP363m1PDLYcBfZY9s4Jwl0Yib4WG98qY7Gc
 ryA6WlwvHYwzGX5ue/hJatpXQG0Qj4g0KJlhaFiIviwSF+G5PNGANXozmo9zDmfYhtUw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H1QGXFGueBuHBkdVnY1gVNgWxdg/uqRKaISs/k4X5k8=; b=a
 UeAgbppV6VA9zcOFTwUihSLaRB+71SqZJcbmUpe18EZ/J45hr4oWZQfQMewJzAYXnqsnGXWza42F8
 zNUpp6YvBsLvad1li9uyyYrM90lBHg00+lISa8EhgfbvJHcCTAJV6rTd75THiAVVYSiwUsPX5pGtW
 8F+iHkBzrIVz4Qf0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pc6KT-008URa-C1 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 14 Mar 2023 15:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=H1QGXFGueBuHBkdVnY1gVNgWxdg/uqRKaISs/k4X5k8=; b=S7EeSUpGaZlBdHu4WUHAIdr25V
 ixFY7YsdAbe5O4aABq5JSzhjm6AQQEt3eXVPOFTCWjSNtDCgQFZErMmKupnpF9Y/4skbRxraN6HkX
 TqmDE1TcO5R6zBSPSKRc5doATbZgmLE4SGmmnROLttR98UmmdtbKjQjHzeTUwv1E1p/bjEoFFy+iH
 nyqmOOJUi5ry9SunSrF7pQBYspmk5uLVQJF6SmWk5LWJAeaLgy3Zr7wr5xxwd+hQMMwpvWD+yVxuy
 /CaVhXopsc+90LrYwApR0yOX/0l4LaCriYpzBh1LHFmzupT2UryDjtJai0v3ndjSU6zPsYceoZ+bh
 bp/MSRHg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pc5zT-00CzPv-OB; Tue, 14 Mar 2023 14:51:03 +0000
Date: Tue, 14 Mar 2023 14:51:03 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Message-ID: <ZBCJ11qT8AWGA9y8@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  TLDR: I think we should rip out support for fs metadata in
 highmem We want to support filesystems on devices with LBA size > PAGE_SIZE.
 That's subtly different and slightly harder than fsblk size > PAGE_SIZE.
 We can use large folios to read the blocks into, but readi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pc6KT-008URa-C1
X-Mailman-Approved-At: Wed, 15 Mar 2023 09:46:58 +0000
Subject: [Linux-ntfs-dev] RFC: Filesystem metadata in HIGHMEM
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
Cc: linux-nfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>, linux-ntfs-dev@lists.sourceforge.net,
 ntfs3@lists.linux.dev, reiserfs-devel@vger.kernel.org, linux-mm@kvack.org,
 devel@lists.orangefs.org, ceph-devel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-afs@lists.infradead.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

TLDR: I think we should rip out support for fs metadata in highmem

We want to support filesystems on devices with LBA size > PAGE_SIZE.
That's subtly different and slightly harder than fsblk size > PAGE_SIZE.
We can use large folios to read the blocks into, but reading/writing
the data in those folios is harder if it's in highmem.  The kmap family
of functions can only map a single page at a time (and changing that
is hard).  We could vmap, but that's slow and can't be used from atomic
context.  Working a single page at a time can be tricky (eg consider an
ext2 directory entry that spans a page boundary).

Many filesystems do not support having their metadata in highmem.
ext4 doesn't.  xfs doesn't.  f2fs doesn't.  afs, ceph, ext2, hfs,
minix, nfs, nilfs2, ntfs, ntfs3, ocfs2, orangefs, qnx6, reiserfs, sysv
and ufs do.

Originally, ext2 directories in the page cache were done by Al Viro
in 2001.  At that time, the important use-case was machines with tens of
gigabytes of highmem and ~800MB of lowmem.  Since then, the x86 systems
have gone to 64-bit and the only real uses for highmem are cheap systems
with ~8GB of memory total and 2-4GB of lowmem.  These systems really
don't need to keep directories in highmem; using highmem for file &
anon memory is enough to keep the system in balance.

So let's just rip out the ability to keep directories (and other fs
metadata) in highmem.  Many filesystems already don't support this,
and it makes supporting LBA size > PAGE_SIZE hard.

I'll turn this into an LSFMM topic if we don't reach resolution on the
mailing list, but I'm optimistic that everybody will just agree with
me ;-)


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
