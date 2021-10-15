Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E289842F9BC
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 15 Oct 2021 19:09:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mbQi3-0002Jx-QX; Fri, 15 Oct 2021 17:09:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <keescook@chromium.org>) id 1mbQWP-0001mP-Gy
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 16:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eOYGY8U37n2MZu0N4BHYKivX4HrXVHyr5D+KqaWhQU=; b=Q8cOQOSs4p8G5iWeYyZ8IWfqH7
 5QNxCMdGVccZxJkGwxg/Zq18CHG5Cj3W4/udtvdbWBz4RBbcKAMXRtwl62dPGVOGunDcILrKepQFg
 G2WsWZM/Q4dFpjP2gZvbOOdbeiMKHNxlafCzUlyZJmHGlrvmYp5RpfHd2R36Ur/B3G2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/eOYGY8U37n2MZu0N4BHYKivX4HrXVHyr5D+KqaWhQU=; b=e8+AcYhuU0hV4mQ3Ovx5h3KgGe
 ft7+0s/ZajyktF3fj3bF02RFZ+sZR2Dr+f6hSaFfOc0HPA3L5GgkDwohb9uhyE2ctB7rskwaysZxK
 kdmFlS7k+il8ZuYWZikerpL7F/cKHe/anJYf+U15a5y9pHdm5CAEY7XKo4n8O7kvZk+k=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbQWK-00EwI1-Pc
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 16:57:28 +0000
Received: by mail-pf1-f169.google.com with SMTP id m26so8879203pff.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/eOYGY8U37n2MZu0N4BHYKivX4HrXVHyr5D+KqaWhQU=;
 b=DmViUCP42ryk0/zjuuQaBiRmRe/mzSHK6WDkRvPw/tFoCT41pzGsk6sbtBTGe4K1S5
 OLN5lTFSJc9JHAwBNbm8/vlAKnFBSpj8DIDLl39Onh8N7+06YtLNNZRfLZuy7Z8xH+qc
 GC7tjeAZF2U3l2PkPMfgIzPMHYdB7TC28kw18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/eOYGY8U37n2MZu0N4BHYKivX4HrXVHyr5D+KqaWhQU=;
 b=rZaDlsw6dTbHAmtj8T37I7rmElTL6UFmGP8B7AZaYi0hNFdJlYebleT6yBoZxnINd1
 5QBk5G7uRh4dhhafMQW/moh5NFo8bA3W+TviarQmO1SNSvgyvyIdLG35ku7F9SG2PDw2
 SQ0OJ283ZyXsSCA2dcaMWLlz1Lefrn9Smtfw5F44Y80xnfB2E80rORq5Qx3z7AK89BGj
 h7JtMc0dCzGkwrzEmMCvQYTmecTMXxy2OZ7lEJPl2l+VgxhljI4oqrpAQ7LrtMBVd+FV
 /VucfBk7S8AcEBfVdCnhuj4g549NMixIKDwe3Bsn89iZB+aAzzZZkZB+yb0785C2q6oB
 rNOQ==
X-Gm-Message-State: AOAM53273JcAJCXjFhLK38LXRW6NGUZAAiRiChUk4doZf7QF9/E1NWSE
 4faaB/ScuV89T9RK4zUAaJ2+IA==
X-Google-Smtp-Source: ABdhPJyzpBRnickMzNbIwiNU4SlM0+KvU9N1DSuPdJJGXTy9zuESs+0VnjHyi75qB2n8UZERvww2Xg==
X-Received: by 2002:a63:b950:: with SMTP id v16mr5917773pgo.361.1634317039225; 
 Fri, 15 Oct 2021 09:57:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a20sm11450710pjh.46.2021.10.15.09.57.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:57:18 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:57:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150957.C90F687@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-25-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-25-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:37PM +0200, Christoph Hellwig
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
 no trust [209.85.210.169 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbQWK-00EwI1-Pc
X-Mailman-Approved-At: Fri, 15 Oct 2021 17:09:28 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 24/30] block: use bdev_nr_bytes instead
 of open coding it in blkdev_fallocate
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
 Jan Kara <jack@suse.cz>, Mike Snitzer <snitzer@redhat.com>,
 linux-nvme@lists.infradead.org,
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

On Fri, Oct 15, 2021 at 03:26:37PM +0200, Christoph Hellwig wrote:
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
