Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E563DAAD8
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Jul 2021 20:20:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m9Ae9-0000O5-Ch; Thu, 29 Jul 2021 18:20:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1m98Ws-0005RS-KM
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 16:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lz3sCBUeoFIpcuJvkV+2hxcBz6NNpFWXO3cu/2smPZU=; b=ZI2dHTzseW4Pes9RC02VtoryIR
 yXrLajdUYQPwKw0QYcEfz2PGDAfzn3T71BsNRSZlTzVgslKgSP2LqMsamE3kIbqundrXWF3qf1Nwj
 T0ehlAOkmDJbqRO55h8UMxcV9AM5Yl+j6S+IQh2llxBZAwp+saAAUhzSDLUyGVgYFTyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lz3sCBUeoFIpcuJvkV+2hxcBz6NNpFWXO3cu/2smPZU=; b=RHWyEzXObrt53Paw6buzlcSfTd
 fWtUCTS17EdWFwZNms+h5rwAm4959VIaaZNBbUq71uFy2h7UozAPGT8MImKbFi/WSSWS1RPo4o9Di
 YC8eARigE3BUEmSSbGMnltxDDHInY3cJfGo94TCkMNajGlanmrlhm/ZZbfUhm29XftLo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m98Wl-006hen-GN
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 16:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lz3sCBUeoFIpcuJvkV+2hxcBz6NNpFWXO3cu/2smPZU=; b=rAdanEV3TxYnKye4f2nl/t9Vmz
 VvBRYHsQc2daZHGww9PrpfLisetD38btktOOIp+KJKfyuFC5LLEnHs/WlvvaD2+SFzzsDhVo387Fy
 /vkh9nSmyzuIdYc1kb6LUUrALObzOGJYaHoHagmA+FbCa60A44n9FkbrXIzdhAkGoC5By+vjko248
 iP2+tkxUG9pl3TMISopAEr70NLHUj3I1X2RoYdR3YgX254YGRVEA/iBuQszMwUL3Ie0hZLeTP9Hls
 90PEXvI6g36ruUlwwwnkoZ3gv/lDsdlSZPU0r+GOAauHY/N+8C8uRdzS47Vyc/x/S56Zz9R/XbH/U
 vlyqABJQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1m98R2-00HGfk-5K; Thu, 29 Jul 2021 15:59:23 +0000
Date: Thu, 29 Jul 2021 16:59:00 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <YQLQRGyKGdL00sQ7@casper.infradead.org>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-3-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729134943.778917-3-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1m98Wl-006hen-GN
X-Mailman-Approved-At: Thu, 29 Jul 2021 18:20:39 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 02/10] fs/ntfs3: Add initialization
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
Cc: andy.lavr@gmail.com, kari.argillander@gmail.com, nborisov@suse.com,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, dsterba@suse.cz, ebiggers@kernel.org, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jul 29, 2021 at 04:49:35PM +0300, Konstantin Komarov wrote:
> +static void ntfs_readahead(struct readahead_control *rac)
> +{
> +	struct address_space *mapping = rac->mapping;
> +	struct inode *inode = mapping->host;
> +	struct ntfs_inode *ni = ntfs_i(inode);
> +	u64 valid;
> +	loff_t pos;
> +
> +	if (is_resident(ni)) {
> +		/* no readahead for resident */
> +		return;
> +	}
> +
> +	if (is_compressed(ni)) {
> +		/* no readahead for compressed */
> +		return;

I'm sure this works, but it could perform better ;-)

The ->readpage path that you fall back to is synchronous (unless I
misunderstand something).  We now have readahead_expand() which lets
you ensure that there are pages in the page cache for the entire
range of the compressed extent.  So if you can create an asynchronous
decompression path (probably need your own custom bi_end_io), you can
start reads here and only unlock the pages after you've done the
decompression.

This should not gate your code being accepted upstream.  What I'd
really like to see is your buffered i/o path being converted from
buffer_heads to iomap, and iomap to gain the ability to handle
compressed extents.

> +	valid = ni->i_valid;
> +	pos = readahead_pos(rac);
> +
> +	if (valid < i_size_read(inode) && pos <= valid &&
> +	    valid < pos + readahead_length(rac)) {
> +		/* range cross 'valid'. read it page by page */
> +		return;

This, I do not understand.  Why can't ntfs_get_block / mpage_readahead
cope with a readahead that crosses i_valid?  AIUI, i_valid is basically
the same as i_size, and mpage_readahead() handles crossing i_size
just fine.



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
