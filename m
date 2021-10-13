Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD7D42BCFE
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Oct 2021 12:37:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mabdT-0000s6-NC; Wed, 13 Oct 2021 10:37:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXSU-0003Ro-Ch
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z0+/l2JzZcIMvRxuVnPDxpTt0N87/VTetFSC9UipIbo=; b=Lu/Tmwkp2Cl5Z0PaaAJOH0bcyg
 x5Ai7xFtYE15jJSg+oaghm56I+/cvDA8wuZFB3yiw8Mja6Bizc5mDPHga9dU5EAgqRU/uoXpNDyXn
 lGoRzntiLPDl4aQtnQbbcmk80dyMo069P2AcQibS45yZVradBIIr+14WwSD3APIcRXrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z0+/l2JzZcIMvRxuVnPDxpTt0N87/VTetFSC9UipIbo=; b=PaGUBZDkhlWsdQ+QCk83TVqkGq
 ynXDJ6pBRLivWLhFbYU+sOgQMTCoEgyEH9N6dBVCB3HLs2elVn8/CQRcXVZNMX9VNDitLVokavdqN
 R0+8lAYC3wimiHvSCgKg1CpOtmeXnEmYSFYxPUSBqPGm8yDieXDLFquPkHQ6KQyidXfk=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXSS-007J2w-N8
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 13 Oct 2021 06:09:46 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 g13-20020a17090a3c8d00b00196286963b9so3596157pjc.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=z0+/l2JzZcIMvRxuVnPDxpTt0N87/VTetFSC9UipIbo=;
 b=dDm5KKH54Cm+jQj+Mhb1k8rvRxfJNbsL/HRxrPpWdrzH1k+JCSsBgY9A1wItnAnyuP
 9ultcLUzRn7czy1OW9j2NX2hgXb5hjl16HGUd04L8fCWxy7FcQb0Xj95F86MpdxVurhd
 +Yoq3Vcva7UyTZ4UkXIHSgLR2MTnO/N9XCsr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z0+/l2JzZcIMvRxuVnPDxpTt0N87/VTetFSC9UipIbo=;
 b=l5qdsWKhKJBvQvXin0KuaoYAivU0xbQumsAHg5wavN6febTYnb8LUstpqKoZtuN0AK
 rJJwrmeKO+KKNIL2j1gnp37IsyU1LaUUeJqduLt0Md9uF4g/OOfjY18CyROLzxWvNfpz
 1Q0un/74R5AeQut8Om6H3COQa6COLh2pPwFaYmeNwb6AzYQSl7gdcFD6+dXhIBmCMzGd
 HucEni/VC3DLDS2OSB7uy8pr+bVNNRv0MIRoZE9Sj87/axjmCN3lcY789iSgEKv27J/1
 Qp1GRlo2tjURJlEbtxV7il86zAy9m9EYT7h52mnEf5qfgszRmJnAlAT8FTEE2q8zRc81
 H/tQ==
X-Gm-Message-State: AOAM533izj+Wt9HNbBb0CMiIkRtJTxF9gbILa8ObQcDAYoWY4h7Rmnm4
 c4tLTcX3shyRMKm+IkycLJVLIw==
X-Google-Smtp-Source: ABdhPJx1Mq3qptD5w3g2Y6okZL9tWnjLnFrTXEu5gKzk6Wq6AX2hVHSkDjnl1IkjZGDzNZT+Poo5bw==
X-Received: by 2002:a17:902:b593:b0:12d:7aa5:de2d with SMTP id
 a19-20020a170902b59300b0012d7aa5de2dmr34892215pls.31.1634105379132; 
 Tue, 12 Oct 2021 23:09:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id nn14sm5323477pjb.27.2021.10.12.23.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:09:38 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:09:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122309.FB5CB2DE3@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-3-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:15AM +0200, Christoph Hellwig
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXSS-007J2w-N8
X-Mailman-Approved-At: Wed, 13 Oct 2021 10:37:18 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 02/29] drbd: use bdev_nr_sectors
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

On Wed, Oct 13, 2021 at 07:10:15AM +0200, Christoph Hellwig wrote:
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
