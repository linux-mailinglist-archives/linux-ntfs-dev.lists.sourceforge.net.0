Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00766297E24
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 24 Oct 2020 21:35:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kWPKJ-0002nE-Ks; Sat, 24 Oct 2020 19:35:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kW1l5-0003gB-Ju
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 23 Oct 2020 18:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u0/bR0JXIWljNk0VNX4SxhSAaiuv2GldCnPLWjMch9I=; b=aLiCAFqNevPxZ4Zfw56vb+NMU1
 Na4yrtlVEDNg/eJ9le6yGBj6khhIpmBxtF9aV6fo4s1ppBImP9T7VkM7RVNK2mhoQP76660zB9Tzq
 6nJAhDgF+s00VoJ/Hs3RE/IlDy6Iw60s3OIw8PZGue5Qy0D2gzA8LyX+gHHU8Lk2lwHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u0/bR0JXIWljNk0VNX4SxhSAaiuv2GldCnPLWjMch9I=; b=CrFmad+G1nIditTUw8MVCbR+px
 CwTIhKBreszPz87oNWeNlKJ7HKXT/csEff+vUpi+m9iDqMrFdzG3mtB6bZrmfcMvSFfpZURatQmZY
 RGdjJlmnbWUk7ubQET3g6vTBlBPSPCFudLyzcRbJ+y8QsfZG1d0b8xlV98v0iVyLY8Bo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kW1ko-00AUtC-Sh
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 23 Oct 2020 18:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=u0/bR0JXIWljNk0VNX4SxhSAaiuv2GldCnPLWjMch9I=; b=JWdyPz2DsQEVqUAElZovbld7ZJ
 fSjSKY+U+rEThybQrnXAlfgcv4jcFErG4EQzOfMTD9gYEAsc0/+SXHI/MgIJd8/2mpihU9b+xVNd3
 xtpDAckmH7svHLr+Erx7v04473GzUAOPo06oDPCkc5dK+MecSyQBM6L9WZ4AjTfpCE57lUofxhdlx
 7UCFX2ZkK1/s1tYSH2hxbmLuyFZyeuSBSi1kNAIquLBKCxMALkf4JQ7HPIpU+jwiZQ2TZDILi319y
 2AsEhNu61KGKRdUtjI4SkqvlTQ+LDTUiUsd4sRbKgYHD9ufzDBwC+YTw50C6DAt9YK8nkw8HEPaGw
 S0soAF+Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kW1kO-00005y-2u; Fri, 23 Oct 2020 18:25:04 +0000
Date: Fri, 23 Oct 2020 19:25:03 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20201023182503.GE20115@casper.infradead.org>
References: <20201023154431.1853715-1-almaz.alexandrovich@paragon-software.com>
 <20201023154431.1853715-3-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023154431.1853715-3-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kW1ko-00AUtC-Sh
X-Mailman-Approved-At: Sat, 24 Oct 2020 19:35:40 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v10 02/10] fs/ntfs3: Add initialization
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, dsterba@suse.cz, joe@perches.com, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Oct 23, 2020 at 06:44:23PM +0300, Konstantin Komarov wrote:
> +
> +/*ntfs_readpage*/
> +/*ntfs_readpages*/
> +/*ntfs_writepage*/
> +/*ntfs_writepages*/
> +/*ntfs_block_truncate_page*/

What are these for?

> +int ntfs_readpage(struct file *file, struct page *page)
> +{
> +	int err;
> +	struct address_space *mapping = page->mapping;
> +	struct inode *inode = mapping->host;
> +	struct ntfs_inode *ni = ntfs_i(inode);
> +	u64 vbo = (u64)page->index << PAGE_SHIFT;
> +	u64 valid;
> +	struct ATTRIB *attr;
> +	const char *data;
> +	u32 data_size;
> +
[...]
> +
> +	if (is_compressed(ni)) {
> +		if (PageUptodate(page)) {
> +			unlock_page(page);
> +			return 0;
> +		}

You can skip this -- the readpage op won't be called for pages which
are Uptodate.

> +	/* normal + sparse files */
> +	err = mpage_readpage(page, ntfs_get_block);
> +	if (err)
> +		goto out;

It would be nice to use iomap instead of mpage, but that's a big ask.

> +	valid = ni->i_valid;
> +	if (vbo < valid && valid < vbo + PAGE_SIZE) {
> +		if (PageLocked(page))
> +			wait_on_page_bit(page, PG_locked);
> +		if (PageError(page)) {
> +			ntfs_inode_warn(inode, "file garbage at 0x%llx", valid);
> +			goto out;
> +		}
> +		zero_user_segment(page, valid & (PAGE_SIZE - 1), PAGE_SIZE);

Nono, you can't zero data after the page has been unlocked.  You can
handle this case in ntfs_get_block().  If the block is entirely beyond
i_size, returning a hole will cause mpage_readpage() to zero it.  If it
straddles i_size, you can either ensure that the on-media block contains
zeroes after the EOF, or if you can't depend on that, you can read it
in synchronously in your get_block() and then zero the tail and set the
buffer Uptodate.  Not the most appetising solution, but what you have here
is racy with the user writing to it after reading.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
