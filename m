Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1326D4F66
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  3 Apr 2023 19:45:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pjOEp-0002zD-EP;
	Mon, 03 Apr 2023 17:45:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1pjL5E-0000GC-Ij
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 03 Apr 2023 14:22:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R46s3dzmAWjax7iXZKikFYCLr1xSbo6uFhX0zzjg4pU=; b=MOc60z83xkoWMxm6X3jrn+a+Sj
 UaH7rVU0N6z+uC56pvF7kGnX6WWwIBKWF/3r/C6EuysR+uzfPBjjxu3HcWKnyHkaG5UDE2C1FHWkI
 g1OufGGkxVKzFlHYh4i41xj3n3i5piYKmXPa4RgGBInywlxVvWtn+fVyRRHNg8Uu4+OM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R46s3dzmAWjax7iXZKikFYCLr1xSbo6uFhX0zzjg4pU=; b=SMrb5X6WC7yqObuYPiZTCQ3ifg
 k8f6W+bgLFSvkvr0QrppbiFgGvYLI+kKPhAvV2UFxbprmzDu01ytuH2r+4Cx/MchhOlkM5OIA/IF2
 0JXl1G331IsDEDbDu9XmzWuDAEfZeGn5GrW2k5XwpJBbWIPBpSzQ+0OIBbHNKurZZ54Q=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pjL5E-00DoY6-MB for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 03 Apr 2023 14:22:57 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 86BEC21DCA;
 Mon,  3 Apr 2023 14:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1680531761; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R46s3dzmAWjax7iXZKikFYCLr1xSbo6uFhX0zzjg4pU=;
 b=XViU3+ETjmX+Zv1i3Q4VVTn7Ny+KHI+pcGRnoPPT3r61aXIzJBxPYzNkNl9++TJ9aBjV6M
 pj5xzmCEcljzJ3VrWr7zg8WDaJErfGUilAp+755lKhp6uAWpsjuSCcyiyy9snmSveJO8Pa
 dYp4hCNxKq+rm1Sy8iI/zHvhEXqBk/Y=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1680531761;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R46s3dzmAWjax7iXZKikFYCLr1xSbo6uFhX0zzjg4pU=;
 b=U1FjLpLfehFJEz9putWhis2w9XqHu0U3h3oaiL98jCSHliu31HtoSv01Qgpvds/nc1S0hp
 frS9z8ZPoJjwAoCw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 773A813416;
 Mon,  3 Apr 2023 14:22:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id nFUjHTHhKmRzFQAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 03 Apr 2023 14:22:41 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id EF44AA0723; Mon,  3 Apr 2023 16:22:40 +0200 (CEST)
Date: Mon, 3 Apr 2023 16:22:40 +0200
From: Jan Kara <jack@suse.cz>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20230403142240.ftkywr3vn3r73yva@quack3>
References: <ZBCJ11qT8AWGA9y8@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBCJ11qT8AWGA9y8@casper.infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 14-03-23 14:51:03, Matthew Wilcox wrote: > TLDR: I
 think we should rip out support for fs metadata in highmem > > We want to
 support filesystems on devices with LBA size > PAGE_SIZE. > That's s [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pjL5E-00DoY6-MB
X-Mailman-Approved-At: Mon, 03 Apr 2023 17:44:59 +0000
Subject: Re: [Linux-ntfs-dev] RFC: Filesystem metadata in HIGHMEM
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
 devel@lists.orangefs.org, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue 14-03-23 14:51:03, Matthew Wilcox wrote:
> TLDR: I think we should rip out support for fs metadata in highmem
> 
> We want to support filesystems on devices with LBA size > PAGE_SIZE.
> That's subtly different and slightly harder than fsblk size > PAGE_SIZE.
> We can use large folios to read the blocks into, but reading/writing
> the data in those folios is harder if it's in highmem.  The kmap family
> of functions can only map a single page at a time (and changing that
> is hard).  We could vmap, but that's slow and can't be used from atomic
> context.  Working a single page at a time can be tricky (eg consider an
> ext2 directory entry that spans a page boundary).
> 
> Many filesystems do not support having their metadata in highmem.
> ext4 doesn't.  xfs doesn't.  f2fs doesn't.  afs, ceph, ext2, hfs,
> minix, nfs, nilfs2, ntfs, ntfs3, ocfs2, orangefs, qnx6, reiserfs, sysv
> and ufs do.
> 
> Originally, ext2 directories in the page cache were done by Al Viro
> in 2001.  At that time, the important use-case was machines with tens of
> gigabytes of highmem and ~800MB of lowmem.  Since then, the x86 systems
> have gone to 64-bit and the only real uses for highmem are cheap systems
> with ~8GB of memory total and 2-4GB of lowmem.  These systems really
> don't need to keep directories in highmem; using highmem for file &
> anon memory is enough to keep the system in balance.
> 
> So let's just rip out the ability to keep directories (and other fs
> metadata) in highmem.  Many filesystems already don't support this,
> and it makes supporting LBA size > PAGE_SIZE hard.
> 
> I'll turn this into an LSFMM topic if we don't reach resolution on the
> mailing list, but I'm optimistic that everybody will just agree with
> me ;-)

FWIW I won't object for the local filesystems I know about ;). But you
mention some networking filesystems above like NFS, AFS, orangefs - how are
they related to the LBA size problem you mention and what exactly you want
to get rid of there? FWIW I can imagine some 32-bit system (possibly
diskless) that uses NFS and that would benefit in caching stuff in
highmem...

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
