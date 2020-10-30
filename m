Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCEE2A1B6E
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1EC-0001ur-Jo; Sun, 01 Nov 2020 00:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>) id 1kYWH6-0004U8-3x
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 15:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T2KvBAlC4JJIyi5sSwStQYRy5LCf5duxKL2gGp64a+g=; b=CqcK0kPikIT3NDWRvewEFos+q8
 v1rU3sODhM+8YQURQ6k5QdNIxxyEuz+wO4WNx5QqlyNlJ08ni1t8vjwFSvVq4sx8lP047pQHSzbZs
 g352auf14k3b280HFT4Bj/NZIfjRXvyVbl/jLbUvkvxO+ePM66K5lH40BcbAqotpAF3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T2KvBAlC4JJIyi5sSwStQYRy5LCf5duxKL2gGp64a+g=; b=WeDRaPX15XF52Ds4S8LoAM5yze
 9SB+rNIqxSugTs/Rpw2/EhmGyyYpN3MDIFJqDtbmETK61I28hPTl2A7wQHNPI5MsRr03x5y0Jg+f9
 M+7PbBo/f9K5E1l75RSqIGg1+uhROJQ0/qiMbDuqSNe+hAF+nKa8vB5yU2kz5iMxwxm4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYWGw-00D6hn-Jw
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 15:25:08 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E707820725;
 Fri, 30 Oct 2020 15:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604071493;
 bh=T2KvBAlC4JJIyi5sSwStQYRy5LCf5duxKL2gGp64a+g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PztylyBAKxmttAPFkdF06ceMHW1ttTYxC1mWX3RWyEfn+YlSDPFwl4UDGKOtVkzw1
 y/v9iPcEQt+r/UmjmcWTT8nZ3jTBzdOPXzu2vtTBiEf/WqPTCR3uJoVQRqtK+Icjcs
 fedZmAR80qlTgfOmiDSYpN9WQOd2NJUKVlTeHULk=
Received: by pali.im (Postfix)
 id BA0C586D; Fri, 30 Oct 2020 16:24:50 +0100 (CET)
Date: Fri, 30 Oct 2020 16:24:50 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20201030152450.77mtzkxjove36qfd@pali>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kYWGw-00D6hn-Jw
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:09 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v11 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, joe@perches.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hello and thanks for update!

I have just two comments for the last v11 version.

I really do not like nls_alt mount option and I do not think we should
merge this mount option into ntfs kernel driver. Details I described in:
https://lore.kernel.org/linux-fsdevel/20201009154734.andv4es3azkkskm5@pali/

tl;dr it is not systematic solution and is incompatible with existing
in-kernel ntfs driver, also incompatible with in-kernel vfat, udf and
ext4 (with UNICODE support) drivers. In my opinion, all kernel fs
drivers which deals with UNICODE should handle it in similar way.

It would be really bad if userspace application need to behave
differently for this new ntfs driver and differently for all other
UNICODE drivers.

Second comment is simplification of usage nls_load() with UTF-8 parameter
which I described in older email:
https://lore.kernel.org/linux-fsdevel/948ac894450d494ea15496c2e5b8c906@paragon-software.com/

You wrote that you have applied it, but seems it was lost (maybe during
rebase?) as it is not present in the last v11 version.

I suggested to not use nls_load() with UTF-8 at all. Your version of
ntfs driver does not use kernel's nls utf8 module for UTF-8 support, so
trying to load it should be avoided. Also kernel can be compiled without
utf8 nls module (which is moreover broken) and with my above suggestion,
ntfs driver would work correctly. Without that suggestion, mounting
would fail.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
