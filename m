Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F13942BCFA
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabdU-0000t2-6S; Wed, 13 Oct 2021 10:37:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXfw-0005X0-QR
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:23:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yoKDGyU1IKw4WZcPglkL9qCJyXlf9awotx8P2PTzBWs=; b=G73z9LA4bXheHBQwmfJWx9rokC
 smUn1kUed9p5HML1BlM9aABI7WkyTQnfCunuB/h0hroEJ4MKEEyoDMXiwbJlSA0EAf9FxQkRE6TGb
 aultVNqVoauFZYFr7ZLkyoXBexxge9ID4KZnk1m2Pi1kqfXmUX04g/yQM09oNc8WwTM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yoKDGyU1IKw4WZcPglkL9qCJyXlf9awotx8P2PTzBWs=; b=WNrhIjWBcHH0lBjOiRXUhvXWtR
 RYhpjGpLNWwMhosSEHIzZB2clpuL0K7OdnE/9GOTQiXzvtsanaxg4laWNSUoXS6uZLcFald4Em6Pn
 EZjy8GUidryS7lhoqkxGKZSGBQuMC+8k65hMnGSxxdmECZ9x6ORWRs9lTTHPiafhlCLY=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXfw-007KmL-6k
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:23:40 +0000
Received: by mail-oi1-f169.google.com with SMTP id q129so2530837oib.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yoKDGyU1IKw4WZcPglkL9qCJyXlf9awotx8P2PTzBWs=;
 b=CfsfnomPleYW4GBsBhk8H6G76FqS7CJ1hCWsqRQNWdP3gBxNE2zoVJGIUrEHECfVKa
 v2cK96TEo8Mw5Ik4Y/ADCAfA/3y7sebWHT8J/KK4oeu3vgk08FAOGIJ4+lA7q9hiMA29
 r2H7qpegYylGn4mcpKE0+qgwtq9QgI8dolIgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yoKDGyU1IKw4WZcPglkL9qCJyXlf9awotx8P2PTzBWs=;
 b=MW2y+vgj6ou0Q/wX4DlRwUNEY2mmWbHn1pLDeCTSOppt8HblTXe7iYf1tBSGtTxgfJ
 +EmOIEtBlqoYCoPmfuL+aPQp55TIn7xlsPFWnF8FMG4jjn+N3SPRe/jLhNZTUkwpICmC
 100YCqbrgWyWzB+ht3LYjajU8pA13eH/yFEZIguvdtMBIWERJjkcxDcB6OctYmn63ot+
 B2XF6MEwdsi6gIidQK9UN/RGau8KC8sgZQYJR2GjUHkvHR+yjq3Vjngz0Pt2ueWpHHwL
 08tv+UGMFroZdQmO/YPJGvzBJqnVtfmzZEy1ExpDjnt75MqiZuMW2Fx74vd9o1SVPXu6
 5sNQ==
X-Gm-Message-State: AOAM531kboKxUYbDXGb+NXFrGWPCBqpfB0/KSDSxOy1l0nV3BnKpOe3Q
 8zsVefkfKMKD6t7QF2zoqQi4v/wRdqYvkQ==
X-Google-Smtp-Source: ABdhPJxLGyOml5lqe+K0AfHsTHYJz8Z1ysoHhzc/2/LGB5MqaATX0lTpa7QxWtRvvD8zMko7cBuZVA==
X-Received: by 2002:a17:90b:3850:: with SMTP id
 nl16mr11065306pjb.127.1634105795098; 
 Tue, 12 Oct 2021 23:16:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c11sm4509497pji.38.2021.10.12.23.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:16:34 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:16:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122316.8ED0742@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-14-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-14-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:26AM +0200, Christoph Hellwig
 wrote: > Use the proper helper to read the block device size. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook <keescook@chromium.org>
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXfw-007KmL-6k
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:19 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 13/29] fat: use bdev_nr_sectors instead
 of open coding it
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

On Wed, Oct 13, 2021 at 07:10:26AM +0200, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
