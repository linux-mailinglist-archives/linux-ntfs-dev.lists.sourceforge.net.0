Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 306B742F9BE
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 15 Oct 2021 19:09:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mbQi4-0002Kw-5J; Fri, 15 Oct 2021 17:09:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbQYZ-0002gC-78
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 16:59:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KeY5Iupdn4Pa1b1ywzkz23CB7y+Fa3Cfufu6RZZIPYI=; b=M5QodZBZ5F9gSZsW2KlZ8fbzQe
 /8Jj/84viVclM49dFOLvrXqHEBrW3f2DZU+6u+zbDBuufJHmNQSu62qyoPC+KEll+dkyjZW53WVDB
 9W+dvl4kfWvpfMnyDfQ6BsHhsNqjgeJxGjiOxAJswsrvcWDUlpopZVt8HnYJZuRrNPIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KeY5Iupdn4Pa1b1ywzkz23CB7y+Fa3Cfufu6RZZIPYI=; b=La2j+nmEcZd2I6JPGUsh/6GyVD
 z81XJS0xMt1TwIL3AL6WMOS5xx4nAiB0F9YtGNp7kzfM9zxVaHKeP1BGJX/H3z1c8ojM8+DTISAIJ
 1LJKA/yee+1QSAlUEtP70xrOP44DddfdEx5v71hZ3Dm0weCDW/H7n2gjj1OMmJbIYH8g=;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbQYY-0002Lz-Mh
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 16:59:43 +0000
Received: by mail-pg1-f173.google.com with SMTP id c4so2082245pgv.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KeY5Iupdn4Pa1b1ywzkz23CB7y+Fa3Cfufu6RZZIPYI=;
 b=VfHpzO3tYcRdDu0YlVkKzx/ciItoc9jkR356sB11SejVmPNb6TbARwblxJNv77Pw+N
 f8l5X6Xk6dZ16M5aIo4oyfynzDADoHwHbbl+nEWOg/Hpm3DtdjVVH1S12Q1eI7nmyOz6
 dWXhnsHrWbhYXafHG9GJqGCTKk1oPJdLtiQOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KeY5Iupdn4Pa1b1ywzkz23CB7y+Fa3Cfufu6RZZIPYI=;
 b=ROyI3YnAlBQns6VB6TRQPtfuo0jheN33sj4Wp1E64ScFQeWjkya/9QcYWDZag+4+Xe
 o/lV+VBvVFw8NNIJ0z19wEwR4QTuzK+8VOc3VC3m9zhq7V77rpEUgbSLMTVDVLi41vXE
 N3JIKkrRHODQi80Nh7EOp+KB5yf+Dwsx+EGw0txR4B8VWmrTdn95/77LcHffsUIhUFKX
 Ogq7jqXQnRawmtYMeonfTaSnyg/FEcE/Cwf0CKzpKwJPooZX2K59LLq1LsfCjyj8a5tr
 GtNioO+zj8Y9lGmXXMY9SRz+1IR5R0yd61TK1+GJ0g0nLohlNIn82kJx38xQkwIRwpm4
 7wxA==
X-Gm-Message-State: AOAM5313VHII3YZZYZTM7D7e/ZixyT5HEfCIDnuRWeSyYVsbM+wUypvP
 tdH3e3GffqdHcDicOGCYPgRSuA==
X-Google-Smtp-Source: ABdhPJyZcIPxqI061aZSIz4/wOG8MIjCzx1/IGr1O74KMeY0yclhOMeVn1PfQJDWXy+egSNKM0RvAw==
X-Received: by 2002:a62:1bd2:0:b0:44c:db2e:5a88 with SMTP id
 b201-20020a621bd2000000b0044cdb2e5a88mr13192615pfb.29.1634317177017; 
 Fri, 15 Oct 2021 09:59:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t38sm1001799pfg.102.2021.10.15.09.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:59:35 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:59:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150959.D3A3EBD2DD@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-13-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-13-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:25PM +0200, Christoph Hellwig
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.173 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbQYY-0002Lz-Mh
X-Mailman-Approved-At: Fri, 15 Oct 2021 17:09:29 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 12/30] btrfs: use bdev_nr_bytes instead
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
 Anand Jain <anand.jain@oracle.com>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 03:26:25PM +0200, Christoph Hellwig wrote:
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
