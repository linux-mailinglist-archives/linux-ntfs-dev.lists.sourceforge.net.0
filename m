Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0F42F796
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 15 Oct 2021 18:01:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mbPdu-0007xq-FE; Fri, 15 Oct 2021 16:01:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <keescook@chromium.org>) id 1mbPUS-0007d0-0R
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 15:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DZnDLe/hPV82nGDaQ9SybgeRvq4v8194pDCOmq4WnGI=; b=NLTuYqlQgVrsJ/C1Y1Gue7YRAU
 RmzQwzJjkl5VUz9AGg4R/BXKb7uEkRD8CS5B9LtwBqIcA6MJGT23sV1JLkCwiQiFvgfV7wCYpGncE
 WF43CTVhwtoXRDy71kDpEH4hFtdffU5jIwK/qWWCrlTvZ08YyTBPxYOYV9hGFxfr8X9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DZnDLe/hPV82nGDaQ9SybgeRvq4v8194pDCOmq4WnGI=; b=D9hx/8qIDXDq0Jra+WqTEk2iyg
 cefX29UrDXp5cATNTzMqniSpajlnpaF1mxiNgDXQbF3Jwm+46mRMiWJDOXvRwekp3rAPej544s/AS
 AHhXAjjssfSE3njNha08zX9gCLuun3RTtbWIl1NaBFNDejpCxJlXM327RyKocfUwQseg=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbPUQ-00Envc-1k
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 15:51:23 +0000
Received: by mail-pj1-f54.google.com with SMTP id
 q2-20020a17090a2e0200b001a0fd4efd49so3028292pjd.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 15 Oct 2021 08:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DZnDLe/hPV82nGDaQ9SybgeRvq4v8194pDCOmq4WnGI=;
 b=MrTzmpi6tPkZEscjT0HSiUnzPC0e0Zm+HdRKo1GnmGF9YjiSBut+2I9RhysvFrlXle
 xZfF/EyK1YxGO+4XkAzcR5rkYfkBT8c0FO8fgSH63rqxjWSjB317HZNHZiI7+NPsyO40
 1HghhomhvrKYKMicBAPPc0DZU1RkPhHGeNsOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DZnDLe/hPV82nGDaQ9SybgeRvq4v8194pDCOmq4WnGI=;
 b=JEAMf+WbX1pw3qAosy427yTOEVJcQklrAIOqj5se1JqMBS1YH078BPTT26WIZGvqEc
 MG0Vw5IzSaqtc5DFdZBpVTh1c/GKq71V9ExGigkIppuKB7yiHvh4r0xGuggb+pGotweU
 dCMFDhs/hyPcgCWLdxZNebYTS1A/inDaFdgf6oLbwirDf6Bxbh/buly/B7IR8C9C4JJI
 wIx6kG0a8x3PZqY8bKwNMTZMGdSk9RqgmwiMyjLk02vu9CQkXoYf4+BWZ4eKWyqev/L5
 JvY4d+SqxznHijpEg+OZi/UqgupB2rdMGIKQ602KxfzECfvGhVIQToLQxs3O4QtUlIY0
 FUZA==
X-Gm-Message-State: AOAM532GobPwCX4SG8kw2sq5UnCB7UtgBH3Bz2ioGaIgxZH2mamV6sNw
 ShTklViKjY0g6jnbAjHgE9OS8w==
X-Google-Smtp-Source: ABdhPJxDmKDta0sIDCKxrBjrXvbcujsYquDk3gV7yUWEsTdaAg5jq62C+ng3dE34jL0hht2zFj2KNw==
X-Received: by 2002:a17:90b:224e:: with SMTP id
 hk14mr14307733pjb.224.1634313076478; 
 Fri, 15 Oct 2021 08:51:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k17sm5446139pfk.16.2021.10.15.08.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 08:51:16 -0700 (PDT)
Date: Fri, 15 Oct 2021 08:51:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150851.0021855B14@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-8-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-8-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:20PM +0200, Christoph Hellwig
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbPUQ-00Envc-1k
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:01:07 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 07/30] nvmet: use bdev_nr_bytes instead
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
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Chaitanya Kulkarni <kch@nvidia.com>, Josef Bacik <josef@toxicpanda.com>,
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

On Fri, Oct 15, 2021 at 03:26:20PM +0200, Christoph Hellwig wrote:
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
