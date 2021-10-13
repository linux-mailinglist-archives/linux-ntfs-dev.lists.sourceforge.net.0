Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A51942BD25
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabde-0001DT-Fa; Wed, 13 Oct 2021 10:37:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXuA-0006RW-7a
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WC8qlO5hS71mDqsT8bl0w3ijZFYGEZDCAo8tBaqenJs=; b=C7FG1arsDH5osSOI1TSIXls6VR
 7d/UIYTOBcbc7A7peRFn6GGQ3S+j6tS02j6mp3b3kH11HxNlITITFQ23D9j6Dk2DVG+fSLhiBted7
 pT3x/XNSYDLiZx6XxrDxKeXLEAumgxE+yEVYFHOHSJ+Jl9JY9U8w6r0qdpGW/dWiutGc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WC8qlO5hS71mDqsT8bl0w3ijZFYGEZDCAo8tBaqenJs=; b=IhcpNItNcv3d2uRtVw3ovrgn06
 4zjCiJzOL2fhE185pRVd+Lghblp2TO07Wz/EY4+82fn7Ua0Cjkm/WAJH0GeUtzD+vie288nl80Iio
 mkpaIQ6laeP+qtm5kTlAvqNaYroiyOtfKnQBeMza6HGEp3IxipvOA90lk83v+22Nl7Ws=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXu9-007MYX-Gv
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:38:22 +0000
Received: by mail-pj1-f54.google.com with SMTP id kk10so1429826pjb.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WC8qlO5hS71mDqsT8bl0w3ijZFYGEZDCAo8tBaqenJs=;
 b=aGzx5g9EmfagK2VYJKbeonxVbvTyFyy8ubTg44u1Ahx/MTDIDSZon1W91/+YJyEM+w
 qj/Bi7I6qMRTurFfMFJfRoGMnC8vVMBa/lQEQP7VCzyqkR4kCDSqk5gFGwAkYxrRmLwC
 vKA47OmSM4jrpJqdnIRH8x1Z1vvipau07Niuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WC8qlO5hS71mDqsT8bl0w3ijZFYGEZDCAo8tBaqenJs=;
 b=Hz9oSfd3EEeEU+oBFc8uttaUZ9KhNy5xYALClvAZrfUpswyAlox26SyQnJ8HogtN6e
 mcuIpKJrEEES7t177ImZ4np1freHQhnNXmtwfScOsBNZJ1e3+LckF615F1k5wbMgR6/L
 ewiBo8czRljSBr8h+g/fnBLLKTUPCbATptSRnxO4UpNC9We33C++oO5fltFsd3WL6heL
 0roMz67r24Ykf6NwpBaltETSvfre0SpVGJuTq14yeaOvvP66svr2U7InYurcEnsFNgMe
 NBH28LVGewhJdNQrJi+ZpKAQRirBez4jFSAYE12rWz6qwjROjk2ZmRHr3+clfrZgTGiJ
 CAPg==
X-Gm-Message-State: AOAM530v5j3N4aJbp5ofc8cUGwnnMH2L5kJ6gRn6NE1r4AHvhNKuJWfU
 x7ueRNxenJWrb2ac/zvKqr6dTcaZEPD/TQ==
X-Google-Smtp-Source: ABdhPJywBNvyfgfyQbknPTYchwSJjS8lkA7Ed3FT30CWk3r+y/Lrw7XBaVRa792lS0jCj03fnTC0tQ==
X-Received: by 2002:a62:1b8e:0:b0:44c:9318:f6e1 with SMTP id
 b136-20020a621b8e000000b0044c9318f6e1mr36636622pfb.84.1634105804176; 
 Tue, 12 Oct 2021 23:16:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z4sm13596761pfz.99.2021.10.12.23.16.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:16:43 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:16:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122316.C8D15CD2@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-15-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-15-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:27AM +0200, Christoph Hellwig
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
 [209.85.216.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXu9-007MYX-Gv
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:19 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 14/29] hfs: use bdev_nr_sectors instead
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

On Wed, Oct 13, 2021 at 07:10:27AM +0200, Christoph Hellwig wrote:
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
