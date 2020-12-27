Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4693F2E33AF
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Dec 2020 03:45:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ktiXR-00029c-31; Mon, 28 Dec 2020 02:45:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1ktUjy-0001SX-2j
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 27 Dec 2020 12:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5uwYsgKdAULuF/GQ5sfCvBZKMe+X+d+8OkxeVuEmVJA=; b=O4ebqK1LvF8/Xmwd1EEv9DtBos
 4pNU7yiLkq5MbO4OHoUQy1r3RHoHeW93fOWtjD4Vzv8eMTSG2NFbBr3eC84INHUV2CDv+tZo8GM4L
 vZ8Ull1qm4SynAMQgdDQYIX1XRLEG0HC/NONNndjrIybO812pE3GwYN6qmMmwmfz8c+w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5uwYsgKdAULuF/GQ5sfCvBZKMe+X+d+8OkxeVuEmVJA=; b=i8TwJ2QK9m4THQMusWCWkEo6+P
 cf4sklF3h9RgcBLrin0c03BwAsG/5qdilfTgetd9SCUwfQIfR0BFvUldA5bJu4GGOVVRYBseh5bOI
 Os8m1FdtEHPsqQ1+iU+6pUc08I5tL9yvkXJ7R1hhQX3jeQ8cRR07pp6I+vYmnGhl2wbA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ktUjj-00HJv8-9l
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 27 Dec 2020 12:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5uwYsgKdAULuF/GQ5sfCvBZKMe+X+d+8OkxeVuEmVJA=; b=IjBY/sHC2/QcJWOmpl7VLlP7Jf
 XOE8XGkn+3w0uboL02YaLa35ppR1NAmAR6R0bSwCV4SA7qE6KVMRkxt+rj2SZjYtAX4Vvp+rQ6X+L
 yoTSGRfIbGeRwSIlWOr43PT/49Q/wVO9OxiROdlQXIfCyeWKO35VHe1/e19UQMC5deFxCW/Dx4l6X
 L5MXthZUbL3KdF4rt0B1rTf6OAqR/kWVfW+wktWfVInuZKjEXpZmUTWILci1Up6fHnGAyNxuj9zKY
 sB3yNCqCxl228B1vOG83sKPUK31hUQijt0odJg5fPg3/gpdBa0HC+I3v4hphiuwqGhU5Jb6ni1YlM
 WFFfyplw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ktUhb-0008MJ-Kd; Sun, 27 Dec 2020 11:59:25 +0000
Date: Sun, 27 Dec 2020 11:59:11 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20201227115911.GB5479@casper.infradead.org>
References: <20201225135119.3666763-1-almaz.alexandrovich@paragon-software.com>
 <20201225135119.3666763-5-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201225135119.3666763-5-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ktUjj-00HJv8-9l
X-Mailman-Approved-At: Mon, 28 Dec 2020 02:45:33 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v16 04/10] fs/ntfs3: Add file
 operations and implementation
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
 aaptel@suse.com, dsterba@suse.cz, ebiggers@kernel.org, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Dec 25, 2020 at 04:51:13PM +0300, Konstantin Komarov wrote:
> +static int ntfs_readdir(struct file *file, struct dir_context *ctx)
> +{
> +	const struct INDEX_ROOT *root;
> +	u64 vbo;
> +	size_t bit;
> +	loff_t eod;
> +	int err = 0;
> +	struct inode *dir = file_inode(file);
> +	struct ntfs_inode *ni = ntfs_i(dir);
> +	struct super_block *sb = dir->i_sb;
> +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> +	loff_t i_size = dir->i_size;

I appreciate directories are never likely to exceed 4GB, but why not
use i_size_read() here?

> +	u32 pos = ctx->pos;
> +	u8 *name = NULL;
> +	struct indx_node *node = NULL;
> +	u8 index_bits = ni->dir.index_bits;
> +
> +	/* name is a buffer of PATH_MAX length */
> +	static_assert(NTFS_NAME_LEN * 4 < PATH_MAX);
> +
> +	if (ni->dir.changed) {
> +		ni->dir.changed = false;
> +		pos = 0;
> +	}

I don't think that 'changed' as implemented is all that useful.  If you
have one reader and one-or-more writers, the reader will go back to the
start, but if you have two readers and one-or-more writers, only one
reader will see the 'changed' flag before the other one resets it.

You need to use a sequence counter or something if you want this to be
proof against multiple readers, and honestly I don't think it's worth it.
POSIX says:
: If a file is removed from or added to the directory after the most
: recent call to opendir() or rewinddir(), whether a subsequent call to
: readdir() returns an entry for that file is unspecified.

> +	eod = i_size + sbi->record_size;
> +
> +	if (pos >= eod)
> +		return 0;
> +
> +	if (!dir_emit_dots(file, ctx))
> +		return 0;
> +
> +	/* allocate PATH_MAX bytes */
> +	name = __getname();
> +	if (!name)
> +		return -ENOMEM;
> +
> +	ni_lock(ni);

What is ni_lock() protecting against here?  You're being called under the
protection of dir->i_rwsem, which excludes simultaneous calls to create,
link, mknod, symlink, mkdir, unlink, rmdir and rename.

> +const struct file_operations ntfs_dir_operations = {
> +	.llseek = generic_file_llseek,
> +	.read = generic_read_dir,
> +	.iterate = ntfs_readdir,

This should probably be iterate_shared so multiple calls to readdir can
be in progress at once (see Documentation/filesystems/porting)



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
