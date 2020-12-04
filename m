Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8AA2D25A7
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Dec 2020 09:19:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kmYDU-0002zo-Uu; Tue, 08 Dec 2020 08:19:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1klG1e-0004b3-6p
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 04 Dec 2020 18:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4ql9NPaldxjl9adE/3KU6n0IibpC8Bx0ap5jU3lsrHI=; b=SJRnzUy3SOtcpNj1Q5cEFTlatq
 4eAoFA5XQcm1d9jiKiRU7U86dIfVlsQsuN4Km3hC4o6y+Yw9x7Alw78oKp65qLxJQUOwYkeaiv4fb
 1VOwZDY1FwB8W/8GiFAIDJFWN8PKJbURDdkuM8kHIX0kyYZsizZpEKogMFsyyc1Es4Z4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4ql9NPaldxjl9adE/3KU6n0IibpC8Bx0ap5jU3lsrHI=; b=ANypnWirEzXqu2/3iUzNXS7xsL
 jpO8KH3ECQxVatspixtARLgFNvH9v6vXi1Zz/tfUcOa6Dy/qxtorwto2DOEoLN3lU7UuRzQby126h
 HRnH0nm9Jzw7Oj1EcssATk4Zuxc4Kzy/zk5sgICepV0BnF39t1uw7HxHoegAf0vPspCg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1klG1U-0026Lq-Il
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 04 Dec 2020 18:41:44 +0000
Date: Fri, 4 Dec 2020 10:41:32 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607107295;
 bh=25oeJh7b6yTNs1uUjAz7FURgo0slNPpUweE8Jq1EW2U=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZQJGYf8Sv9pjnoC8grlmknSQ7fK2DeQW3ZN4xj/sHziOSYiJYQgvgmY7naIbepwhj
 58MNntm9lXg1LjFRiUzFe3x5wvBUaZAyJ5BdbApGZyEe7dSwuffMMkO7YtshfTpdvr
 pRIXYQ/TVzPZwEz7drZlSGXoYQ+dBTbR7by6VGLscHXBsjpi/rVkRMp/Hf6ZjejDDY
 Ajqv47VBbzRMdg0zEV1xaZclxA4/apnHKrA9kkxTbtZfGiY738obJt0Jy9uuPW0s0k
 oMz1ZYOrs6PtW4cDPXi4sHJuVqePMCfTkdzPgaL6ZyCkRLabb2lxkS4ZwTE2Qtf1ed
 UA1xt6u5fWz/w==
From: Eric Biggers <ebiggers@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <X8qC3NaNv1kmCO4c@sol.localdomain>
References: <20201204154600.1546096-1-almaz.alexandrovich@paragon-software.com>
 <20201204154600.1546096-5-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204154600.1546096-5-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1klG1U-0026Lq-Il
X-Mailman-Approved-At: Tue, 08 Dec 2020 08:19:01 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v14 04/10] fs/ntfs3: Add file
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
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Dec 04, 2020 at 06:45:54PM +0300, Konstantin Komarov wrote:
> +/* external compression lzx/xpress */
> +static int decompress_lzx_xpress(struct ntfs_sb_info *sbi, const char *cmpr,
> +				 size_t cmpr_size, void *unc, size_t unc_size,
> +				 u32 frame_size)
> +{
> +	int err;
> +	void *ctx;
> +
> +	if (cmpr_size == unc_size) {
> +		/* frame not compressed */
> +		memcpy(unc, cmpr, unc_size);
> +		return 0;
> +	}
> +
> +	err = 0;
> +	ctx = NULL;
> +	spin_lock(&sbi->compress.lock);
> +	if (frame_size == 0x8000) {
> +		/* LZX: frame compressed */
> +		if (!sbi->compress.lzx) {
> +			/* Lazy initialize lzx decompress context */
> +			spin_unlock(&sbi->compress.lock);
> +			ctx = lzx_allocate_decompressor(0x8000);
> +			if (!ctx)
> +				return -ENOMEM;
> +			if (IS_ERR(ctx)) {
> +				/* should never failed */
> +				err = PTR_ERR(ctx);
> +				goto out;
> +			}
> +
> +			spin_lock(&sbi->compress.lock);
> +			if (!sbi->compress.lzx) {
> +				sbi->compress.lzx = ctx;
> +				ctx = NULL;
> +			}
> +		}
> +
> +		if (lzx_decompress(sbi->compress.lzx, cmpr, cmpr_size, unc,
> +				   unc_size)) {
> +			err = -EINVAL;
> +		}
> +	} else {
> +		/* XPRESS: frame compressed */
> +		if (!sbi->compress.xpress) {
> +			/* Lazy initialize xpress decompress context */
> +			spin_unlock(&sbi->compress.lock);
> +			ctx = xpress_allocate_decompressor();
> +			if (!ctx)
> +				return -ENOMEM;
> +
> +			spin_lock(&sbi->compress.lock);
> +			if (!sbi->compress.xpress) {
> +				sbi->compress.xpress = ctx;
> +				ctx = NULL;
> +			}
> +		}
> +
> +		if (xpress_decompress(sbi->compress.xpress, cmpr, cmpr_size,
> +				      unc, unc_size)) {
> +			err = -EINVAL;
> +		}
> +	}
> +	spin_unlock(&sbi->compress.lock);
> +out:
> +	ntfs_free(ctx);
> +	return err;
> +}

Decompression is a somewhat heavyweight operation.  Not the type of thing that
should be done while holding a spin lock.

- Eric


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
