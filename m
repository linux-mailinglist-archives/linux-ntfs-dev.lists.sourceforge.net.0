Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB46642BD0F
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabda-00012B-RZ; Wed, 13 Oct 2021 10:37:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXpR-0005wj-Ht
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KN0hCxg4qCtDzIgJk5dwSpisgOtLaF48lTZLQMzdZGQ=; b=k/mVAONUTxIDU0ZbLJBsPN0l3R
 4N3cSWm3Sii6Ye5f9UaMyY09gqNpOoz08wnZhfvQRvbrnqw9jrrVvbnbExA9eBWcKZ8di2Hi+JhpY
 9cHtprCkVbDYxD+Zv4b0CqKJK9mm1v3BomaVQ9kBXe9EuNi1ZW1dMAxg0vohlu2ms56k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KN0hCxg4qCtDzIgJk5dwSpisgOtLaF48lTZLQMzdZGQ=; b=CLNCF6eDKTl+qYXjiEbq8yGx2R
 VztitULtFmK3cfY9YISiab5uFdGE1FwW9YxdyGTqsdDY4Dss9Ekx0BJT/7v05OdEnCkqVkuQN+B0g
 hzqN+ut4jt9QDVY8auDp4BitZFTVnXVUc5JWE7+gTtuXCtXvkQ9MNX9TBtM/bon18g80=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXpP-0002bx-JG
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:33:29 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 k23-20020a17090a591700b001976d2db364so1472153pji.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KN0hCxg4qCtDzIgJk5dwSpisgOtLaF48lTZLQMzdZGQ=;
 b=ZSgj9MSpSxiaNFjR5pl+MhsOPNs6TAo40lkstJ1+NMBhxL+4AoJC++ueHgXgDZsxkL
 A4rqeGya73qL9mbxIoCLhchn4/FA1cf285nRCQSnbarbdqSIQhxR7IZtW3h248WE8YVx
 CokTYsr+EOLC9mMcAUh/RiJhbXXJcMY50cpmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KN0hCxg4qCtDzIgJk5dwSpisgOtLaF48lTZLQMzdZGQ=;
 b=b+AUlOHTqdtaj7Fwysgzvr0dr/7Y9xPoWWYzjAvgd0By6b1ukdwSafVIVRx6glHwRn
 MW4swMfqaSAZbPPb/+iPNgECEWa+0JktIYC5rWJslRrGmyx2xr5FRCSflPpgSgkX3IlL
 dUJowxydDrhOdhT20YzzUr+nOlH4QPVYKnuoz5+L3JAYO0YXEJ/wn1aWAAaEgidX1kHh
 KhQGT3/ciFHu4xITDct0Xxfo8Jvzdeg0beegBGZQncopfkoA6h2GRGHPf6qRfWrjrv4s
 dO4AopVFaaA7ZuAGC9mrS2Rhmj4sNoAH8c48uj1/8YZRKVteom0qvz0GgBqT56sJu4/m
 mq9Q==
X-Gm-Message-State: AOAM533JWhbU3rqaidf7RPOmxnDPzs5sU7MJ4BBc7I331mW5/wOrlIqr
 hJ1i92X03EewKETHuS3cqulNjR8UA5Y=
X-Google-Smtp-Source: ABdhPJwSbdMnxpZNPs6DEcJzD+WCYFHCQcM73CXxNLIwDuWek8lOvAv7bQAbdyDz750VOQBh4gVb4A==
X-Received: by 2002:a17:902:e5d2:b0:13f:21c1:b44f with SMTP id
 u18-20020a170902e5d200b0013f21c1b44fmr23591611plf.30.1634106800893; 
 Tue, 12 Oct 2021 23:33:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s8sm8887899pfh.186.2021.10.12.23.33.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:33:20 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:33:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122333.7CE920EB9@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-29-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-29-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:41AM +0200, Christoph Hellwig
 wrote: > Use the sb_bdev_nr_blocks helper instead of open coding it. > >
 Signed-off-by: Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook
 <keescook@chromium.org>
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXpP-0002bx-JG
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:19 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 28/29] reiserfs: use sb_bdev_nr_blocks
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 07:10:41AM +0200, Christoph Hellwig wrote:
> Use the sb_bdev_nr_blocks helper instead of open coding it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
