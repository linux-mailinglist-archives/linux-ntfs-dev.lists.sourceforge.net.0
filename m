Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB98D42BD0C
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabda-00011Z-Hm; Wed, 13 Oct 2021 10:37:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXnC-0005gf-5n
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IqFCee932yXff3g8S22IMIonv/32fuT5szLU0pggDNY=; b=hK6oyks0UEOrHi7uPTGKSkAanG
 f5MeTyKEE/x35KdMkM0Js3Pp0WLg48//BKJUgB0IZIiIkejERv7Ofw/WEL8I1t0Gtd9wRXyKYJKkZ
 Bd+YaFWdD0NjnybND7pTF7aeMVViOVfUuc9N+4/1vGIWwuaIBQk/Dg/8WtL2k0X0/LfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IqFCee932yXff3g8S22IMIonv/32fuT5szLU0pggDNY=; b=fmVswmsebK97RrdGg2OfNhr19p
 zJktSYsV5stWxnYVYtsibhEsfWqV5FcKOmDtxu9CJOdh8Uf0kGxhNaV3MGhw5GVfpNI6ssYxzPAhN
 HXESi4VfKR1JQBu14VM4rmerCcg6/84a62I2X88WvudCHlrYv6KI3QHzI/dI8I3jKtHs=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXnB-007Lj9-Gx
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:31:10 +0000
Received: by mail-pl1-f177.google.com with SMTP id l6so1102166plh.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IqFCee932yXff3g8S22IMIonv/32fuT5szLU0pggDNY=;
 b=a1xXRGShMNUcH1NESAktZXUgL3mFc7wQIYKmmv8/Y/ALepXHOWmmTvT8XSj6vOg/M+
 MbhM/ene3FaZLDFtmRSFfGBcWZN2IWLJwqUk7lw7SQibDKaQXujif5Kg826b1uwy92rp
 BE9pd9q6ethHDDGyjRig6Cy//vFmfRqzEgWkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IqFCee932yXff3g8S22IMIonv/32fuT5szLU0pggDNY=;
 b=1aJS3JcI9NCH+MxOsgGDD5Vf/G0kP/xnleBeynKpJqYTfkMHH/9hYrsm7wHeLYH83p
 SPNLntvSkxUEQjMprVZL2BuCr6j0ZTdq+qkRNiOpdhPOR5qLyEoR7JyvBMg2sFJrTClz
 XYtp2YWlCm7z/Z3KrHvTozES1Gol6gdNvocYvkaaMNxCesyttaTM1AaEtgL7UAYj1xhT
 5shSR9AOE9oFVCfMrfn/23hr9irA2vRWKWLgKu0VViOr7lpPTkBS4KBcoIMyJe97KKpb
 z+ko5UZo/hKM5D0m2oNTHXuz3pay+KUuJf3KSNCtfqLThQ09xv5MjwRI5wcFSMdibZD2
 07+g==
X-Gm-Message-State: AOAM532TowBIWhRfhEXVKvPRTaoJs/QpVh8PRL13tcptapYr4D/iuDrJ
 xxjaQMFFuxaR/bU0kubHN3XI8yi8ODDM0w==
X-Google-Smtp-Source: ABdhPJzPpkxK9ZnBKhTayH/eUQdncp8qkTzuStqH3wv1NooRt0u8SlJ26bmKBvTPalBAv9kwTDH0GQ==
X-Received: by 2002:a17:902:f683:b0:13f:a79:52de with SMTP id
 l3-20020a170902f68300b0013f0a7952demr32121054plg.43.1634106664061; 
 Tue, 12 Oct 2021 23:31:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k6sm13945349pfg.18.2021.10.12.23.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:31:03 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:31:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122331.C020EA7@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-27-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-27-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:39AM +0200, Christoph Hellwig
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
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXnB-007Lj9-Gx
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:19 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 26/29] jfs: use sb_bdev_nr_blocks
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

On Wed, Oct 13, 2021 at 07:10:39AM +0200, Christoph Hellwig wrote:
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
