Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E5C42F9B5
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 15 Oct 2021 19:09:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mbQi2-0002Ia-Ts; Fri, 15 Oct 2021 17:09:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbQTi-0003u8-9R
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 16:54:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=++j3EKFYagTjYpVDRmVtpilprtSSGPZNL/U6+y1BFYU=; b=O3/oUeul4Id5bJS0957KolXpN9
 FSl5Ta1DFBpQSIqS/IZc0IZpSnAwHXUJUQjGV66wHggXFUUuf4V+8xZB/FZ7+gtWwd1aY0ISARF4C
 0pql5SSUZOpRFg5AcuBDNv4GLjNtfoeP7SGmDLqPT38GE/kLnHxBwz09vr0TXmvFtiKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=++j3EKFYagTjYpVDRmVtpilprtSSGPZNL/U6+y1BFYU=; b=lTc56Sd4U4BOOEzg7HI12ElSj3
 yd7uCcvqAWlycDEIIYx71tBwnvSX+czSxmtcyjnWZ3GQknvFiY31la2UfNujSogSBeAIAFBaluxiR
 PFAMnTXLrJG0E4eQoEkScbCJhlMUErfKoDtcdqKxZbrZzGncqxeSMQHZPUCdiW6G51bA=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbQTh-00EvyI-NN
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 15 Oct 2021 16:54:42 +0000
Received: by mail-pl1-f171.google.com with SMTP id i5so520070pla.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=++j3EKFYagTjYpVDRmVtpilprtSSGPZNL/U6+y1BFYU=;
 b=PGVMrxoIP54zTy3fYRiGwM3tLAZD1Sg5qwTZ/1sUpFUKPeoK4gaEUh4gDn9vmINL5R
 K6Diz6OFYGVqe3eH+J4BPfR7/r8fI1+hdPS73Dcjh+YNC+lZ5T7DwLWnu9B82X3frAPd
 N9HCX5/hrMJFRwzEMhEqi5qndMOp+CdKnJFuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=++j3EKFYagTjYpVDRmVtpilprtSSGPZNL/U6+y1BFYU=;
 b=skf25nSMbVC6fP1qzcVX+o+7ym5A0PccKGkFQbwEqchsYJvx/D7mzYPC6m3c7Hy0i0
 zxFVm1w96G30LVw8OY6+GcAfyS2yLjDbRrf/a85D3UuHEduD3GsboPeJgRE4TitKbBxb
 MyOn1mJZM1EOl5J/n200bMO2lEElC7qqP8M+KTqwE5fOu87XFQIN+vgGo/J969Y8ZhQq
 2HAlixKCfRl8xnaORzfTZ1eYSZecJuAuXgie6LCi43sP5mlS+sFniF8mehZq0hEO7C2A
 w3Gb13eXg9kuRLCs/vIJ4sTnfScN8bYl2Yw3pV9WkfACt7z+D6mTSTjqvnlmNhxWeM2Z
 rvZw==
X-Gm-Message-State: AOAM5312f0p36Uqhg7smFWxpC3I4nmHvn20jnkRvGyuaLnBov5TrBsV/
 FNjSHpdgZRskkoM6ApiouVzt+Q==
X-Google-Smtp-Source: ABdhPJxiUcnkoooEgdTHhZSK5QlfnfikulhFK8mfbnmCN2PXzxc7k6fawv/6LA10hComZoogNKw4PQ==
X-Received: by 2002:a17:903:3092:b0:13f:663d:f008 with SMTP id
 u18-20020a170903309200b0013f663df008mr11973339plc.13.1634316876253; 
 Fri, 15 Oct 2021 09:54:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t126sm5505715pfc.80.2021.10.15.09.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:54:35 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:54:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150954.45A4DFA79@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-20-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-20-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:32PM +0200, Christoph Hellwig
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
 no trust [209.85.214.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbQTh-00EvyI-NN
X-Mailman-Approved-At: Fri, 15 Oct 2021 17:09:28 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 19/30] nilfs2: use bdev_nr_bytes
 instead of open coding it
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
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 03:26:32PM +0200, Christoph Hellwig wrote:
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
