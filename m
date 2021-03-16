Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1883433E2BE
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Mar 2021 01:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RFkEu7/sqcF6ApRn8crSrivghVoYu974ijQLek+8h2w=; b=B1H2Y6yNxRtIS2ta9UELcbP4i
	H0gNAbm0xV6rBaXWgXjQcyPPFKdtichMyIHhQdkZnCttPjMKIrB0GtvjP8LzUcXGIQi+m7nTrLmq+
	LVu/4ZdwYF5bnOnk0OKKJwStSPlB38I2gGib0d5ZOMnYXSb29AQJmAY4wqoPm73uKXHFE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lMK7L-0001p2-3U; Wed, 17 Mar 2021 00:32:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oleksandr@natalenko.name>) id 1lM4Ye-00038O-VJ
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 16 Mar 2021 07:56:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+aijw2piyTmWM3nPGPTDspc29jfHo5VHmK9SZOCF9d0=; b=MUrFoHuf3bPxKOGfDlMO+LBV2D
 5i22ZsHxBcppFPG3b5FLEHrFp0WaXr/wA60HXgtneDhbnaJ1wd/9HZYm7OERzpqhYDsruN8qzfzAt
 n5U+YB1sGjTZWdLQDMoGRzzapzq8aphoyzTK9mSdxZJ50pPpfXfprX3Nw61FZPhFMy6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+aijw2piyTmWM3nPGPTDspc29jfHo5VHmK9SZOCF9d0=; b=PRiwDi7lxlSRRsKswzLffqGYdM
 /puV1ZlNlvlBIgSu5tgUViH1R/8BxweML7e+Fr/46RiaSH+t48Guhjio7Y3/sO8sYda3s2p+fOro4
 LCuXJPp+N6alKhIsSJCu/p+WcJJqjJ8+d6Q+fb1uJ3aAIOiwC3rRBMFD0f2lJRPx/Dxw=;
Received: from vulcan.natalenko.name ([104.207.131.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lM4YS-005HkR-5M
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 16 Mar 2021 07:56:04 +0000
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id E55839DF127;
 Tue, 16 Mar 2021 08:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1615881343;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+aijw2piyTmWM3nPGPTDspc29jfHo5VHmK9SZOCF9d0=;
 b=K9+37aRpuHWW4fVZ7yU5SmEWRvaEB9lUwp3U6V4rw+tMUc0reE4W/8D4d3q9AJTY/JIiHA
 NC7kUx81dp63noj/gQnJA0ZblP/D0DVWiT86wAzSZO1ea+hl3fPTdKyPyYXULfKQ4NcU+f
 h78ZQIkejrSaLUbcSznxBaDNLsbvIiU=
Date: Tue, 16 Mar 2021 08:55:42 +0100
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210316075542.z33ekalae7hgpfjc@spock.localdomain>
References: <20210315144414.3365314-1-almaz.alexandrovich@paragon-software.com>
 <20210315144414.3365314-3-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315144414.3365314-3-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1lM4YS-005HkR-5M
X-Mailman-Approved-At: Wed, 17 Mar 2021 00:32:36 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v23 02/10] fs/ntfs3: Add initialization
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
From: Oleksandr Natalenko via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi.

On Mon, Mar 15, 2021 at 05:44:06PM +0300, Konstantin Komarov wrote:
> This adds initialization of super block
>
> ...SNIP...
> 
> +
> +/*
> + * Helper for ntfs_loadlog_and_replay
> + * fill on-disk logfile range by (-1)
> + * this means empty logfile
> + */
> +int ntfs_bio_fill_1(struct ntfs_sb_info *sbi, const struct runs_tree *run)
> +{
> +	int err = 0;
> +	struct super_block *sb = sbi->sb;
> +	struct block_device *bdev = sb->s_bdev;
> +	u8 cluster_bits = sbi->cluster_bits;
> +	struct bio *new, *bio = NULL;
> +	CLST lcn, clen;
> +	u64 lbo, len;
> +	size_t run_idx;
> +	struct page *fill;
> +	void *kaddr;
> +	struct blk_plug plug;
> +
> +	fill = alloc_page(GFP_KERNEL);
> +	if (!fill)
> +		return -ENOMEM;
> +
> +	kaddr = kmap_atomic(fill);
> +	memset(kaddr, -1, PAGE_SIZE);
> +	kunmap_atomic(kaddr);
> +	flush_dcache_page(fill);
> +	lock_page(fill);
> +
> +	if (!run_lookup_entry(run, 0, &lcn, &clen, &run_idx)) {
> +		err = -ENOENT;
> +		goto out;
> +	}
> +
> +	/*
> +	 * TODO: try blkdev_issue_write_same
> +	 */
> +	blk_start_plug(&plug);
> +	do {
> +		lbo = (u64)lcn << cluster_bits;
> +		len = (u64)clen << cluster_bits;
> +new_bio:
> +		new = ntfs_alloc_bio(BIO_MAX_PAGES);
                             ^^^^^^^^^^^^^
this was renamed to BIO_MAX_VECS recently.

> +		if (!new) {
> +			err = -ENOMEM;
> +			break;
> +		}
> +		if (bio) {
> +			bio_chain(bio, new);
> +			submit_bio(bio);
> +		}
> +		bio = new;
> +		bio_set_dev(bio, bdev);
> +		bio->bi_opf = REQ_OP_WRITE;
> +		bio->bi_iter.bi_sector = lbo >> 9;
> +
> +		for (;;) {
> +			u32 add = len > PAGE_SIZE ? PAGE_SIZE : len;
> +
> +			if (bio_add_page(bio, fill, add, 0) < add)
> +				goto new_bio;
> +
> +			lbo += add;
> +			if (len <= add)
> +				break;
> +			len -= add;
> +		}
> +	} while (run_get_entry(run, ++run_idx, NULL, &lcn, &clen));
> +
> +	if (bio) {
> +		if (!err)
> +			err = submit_bio_wait(bio);
> +		bio_put(bio);
> +	}
> +	blk_finish_plug(&plug);
> +out:
> +	unlock_page(fill);
> +	put_page(fill);
> +
> +	return err;
> +}
>
> ...SNIP...
>

-- 
  Oleksandr Natalenko (post-factum)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
