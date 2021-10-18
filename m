Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D09734329D5
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Oct 2021 00:38:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mcbGj-0006RM-IL; Mon, 18 Oct 2021 22:38:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1mcX5b-00008V-Ap
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Oct 2021 18:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TVetvWb4+B/byEt0HFTw7Li/1VctyD/QgsPHbsid4H8=; b=femKyzh/T2Gnci0gOj96cbCcl/
 R7kD37B+77A0x+0h2RkXIcLCcmN12c7ome6J0MEICBUz23k+s/YLcTm4iK1iEeSw6+N1nfDiKrL21
 HuJnJxJLbxsV4Ml8gOhzBLPwLqfbxqwbmQ8xAHketJmN+CDfUKgKdmF2Fnv1hwSzw0IQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TVetvWb4+B/byEt0HFTw7Li/1VctyD/QgsPHbsid4H8=; b=mYNoBCxgFNNcZxZ9dLtpqOEwUq
 5unY9fJOOE5AGTl7QXjf/2PoirHwkZmNfoZh2ieYcoPacn5HtSBhpm0kELm7PsNU6IFmcElv21rt2
 VLGGGM4Esxq/6FW4KOdUdfk9+NV9R3hnolZ7sjbxdGG19gCEUlSoB4Jyl7aaw0BM70mU=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mcX5Z-0008CD-Kj
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Oct 2021 18:10:23 +0000
Received: by mail-qt1-f170.google.com with SMTP id b12so16074632qtq.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 18 Oct 2021 11:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TVetvWb4+B/byEt0HFTw7Li/1VctyD/QgsPHbsid4H8=;
 b=rkRLnHg1S4u8HX11jOSUsmgOu279172YT/qIHLznH/jwI1IdjUhSA0m6I5uyrdNBJQ
 GZpTrNqHq3BbgsfYzCH0RiwOG+GG3HdSbaxtt1+taUjeE/o2nf0qjkZ23LPZL14mgyVx
 r5QceDW/MeG8za7F5qhNzSKPR2x7wRt1a8B5T995CSTZ1u9OS6Ch+FzWEBtUbHpcq9AQ
 KUlG6PBJnMhvawvbI3ONNOa5vJZRKzg+iSpti1pyNyehN+8MHnCAxM/sIrViilbzyvRG
 Q5nXCXvu4cEFPGfCltmsbNSsOl86kwWVB1XaqYHb9cyqB+54s92TMxyv7jKS0YWyf0KL
 kSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TVetvWb4+B/byEt0HFTw7Li/1VctyD/QgsPHbsid4H8=;
 b=6tJFy1foehK/mKnAYvuGR2DWyBmmDG5K6sKNsn4LAA8AQMzOj2z86Ufm6bEW97kzQf
 32h1zhyuuXHWHuxnvv2eEF5BBS1iffWBxI3mc1SOyVIgcy2MfPgHYaU1cANmkiJlWT9+
 nkda1TGaTtAImN6LXZWp3nhA7RWu84S65rfpre/81n/tpwSEOvpGAWGQiECh6qzrAQzz
 ZxAUieCjsZOipv5bhU76wqFq84Oor5y9JpWoSyGk5m/imBfFINyisllSPl1jxFfwvlgN
 217KBmXXq9ay9b7/Jzg0sX4HQY6FC/d/whZ8552X6fMNTmwTZ1Dlmle+47sgfk/UiOnb
 PwUw==
X-Gm-Message-State: AOAM533FF2AJ/RNH9Y+Kz9XRXP9fnp2b2b+tbb3sOzWNI/LEgiJZG2UM
 uh3EW+DDgsHuFfod5H7Ft5mrqF8T1Crf6w==
X-Google-Smtp-Source: ABdhPJz+RKspHd19wACUssDbTNQ6NJRkN4g7OdL6jX2ni5qwlHyFbIbt1tgTl8EVs5WghyoBxus9iA==
X-Received: by 2002:a02:ac8a:: with SMTP id x10mr745552jan.43.1634577370548;
 Mon, 18 Oct 2021 10:16:10 -0700 (PDT)
Received: from [192.168.1.30] ([207.135.234.126])
 by smtp.gmail.com with ESMTPSA id u12sm7081225ioc.33.2021.10.18.10.16.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Oct 2021 10:16:09 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <4a8c3a39-9cd3-5b2f-6d0f-a16e689755e6@kernel.dk>
Date: Mon, 18 Oct 2021 11:16:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211018101130.1838532-1-hch@lst.de>
Content-Language: en-US
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/18/21 4:11 AM, Christoph Hellwig wrote: > Hi Jens, >
 > various drivers currently poke directy at the block device inode, which
 > is a bit of a mess. This series cleans up the places that read th [...]
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mcX5Z-0008CD-Kj
X-Mailman-Approved-At: Mon, 18 Oct 2021 22:38:08 +0000
Subject: Re: [Linux-NTFS-Dev] don't use ->bd_inode to access the block
 device size v3
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
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 10/18/21 4:11 AM, Christoph Hellwig wrote:
> Hi Jens,
> 
> various drivers currently poke directy at the block device inode, which
> is a bit of a mess.  This series cleans up the places that read the
> block device size to use the proper helpers.  I have separate patches
> for many of the other bd_inode uses, but this series is already big
> enough as-is,

This looks good to me. Followup question, as it's related - I've got a
hacky patch that caches the inode size in the bdev:

https://git.kernel.dk/cgit/linux-block/commit/?h=perf-wip&id=c754951eb7193258c35a574bd1ccccb7c4946ee4

so we don't have to dip into the inode itself for the fast path. While
it's obviously not something being proposed for inclusion right now, is
there a world in which we can make something like that work?

-- 
Jens Axboe



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
