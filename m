Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AEE2E8F6C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXW-0005wy-6P; Mon, 04 Jan 2021 02:24:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kwFTr-0005iR-Ql
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 04 Jan 2021 02:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QqpupMZVVb2ckS4eUo7CRnOkNp8jzFCdbETfMfg6E94=; b=UyklylnmB0CW8RNLgc8k26qLwz
 mYFdaZPyM2UQtAx/dCWXyBiigK0iuehuKCScoI/k8Odb/CpWbNXVAIYU78J6301dXV4kFV1f26JG/
 zqukFTNWEcTqGWXHEEVi8wulltUVbrrEj7Jbs6H8XCED3LD06sp2DyFay4p/+U/TugC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QqpupMZVVb2ckS4eUo7CRnOkNp8jzFCdbETfMfg6E94=; b=ih1BmuZtp32EVmHZBg7go/D53+
 IGu1XJndhW/nuREn08rThZ1cq+UNIZpDQ4EMJKlpZTp0OU4shpDiDUWOUxWedT/ApVPZFsz0lj0A4
 QSzME2CaQsQ47lP5fadtTA+AU/wAWmxiuLC5jcLZN/HnvL4GdJ8z5c3D7MBGFe0YCPN0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kwFTm-0059VW-Pb
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 04 Jan 2021 02:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QqpupMZVVb2ckS4eUo7CRnOkNp8jzFCdbETfMfg6E94=; b=JCbgQbeTC6kNU+StFdzzSvAEI+
 1TsMn3GaPtp0EINKulyUo3KufXLVJnaA02gNlJY9DrA0pziDzBlysKbI9WWAt6A2MsGqyXLgAkm0p
 nbI6NJBh4cu8U94JlNLA0XDHy9VsKXO0Q0+0JgxkmxC/sTi3FnZ1ryzTpEdBW+RuHTXZcMCJX64G5
 fw9y5IdJ4GV/2F/1ncNW0iRApc53EzIp+q4YR30z7aqlCCjqywI5b7Q4NzxkEwfpS1lfNtXjLccDs
 hlHDVI3BOSm5qaYTbGGmHkuu9169GlKWjb1V8/P6Gz2bGZm/lp/ovL+tEIJR+D1TUlF6HiuG9ELEl
 rlFs9r6w==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1kwFSE-000bDU-8v; Mon, 04 Jan 2021 02:19:05 +0000
Date: Mon, 4 Jan 2021 02:18:42 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210104021842.GB28414@casper.infradead.org>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-5-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-5-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1kwFTm-0059VW-Pb
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 04/10] fs/ntfs3: Add file
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, dsterba@suse.cz, ebiggers@kernel.org,
 joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 31, 2020 at 06:23:55PM +0300, Konstantin Komarov wrote:
> +/*
> + * file_operations::iterate_shared
> + *
> + * Use non sorted enumeration.
> + * We have an example of broken volume where sorted enumeration
> + * counts each name twice
> + */
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
> +	loff_t i_size = i_size_read(dir);
> +	u32 pos = ctx->pos;
> +	u8 *name = NULL;
> +	struct indx_node *node = NULL;
> +	u8 index_bits = ni->dir.index_bits;
> +
> +	/* name is a buffer of PATH_MAX length */
> +	static_assert(NTFS_NAME_LEN * 4 < PATH_MAX);
> +
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

What is this lock protecting?



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
