Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 753F3323F1B
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 24 Feb 2021 15:15:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lEuwW-0003Bl-2n; Wed, 24 Feb 2021 14:15:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <s.gottschall@dd-wrt.com>) id 1lEoyU-00045i-Ft
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 24 Feb 2021 07:52:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+h4wN+gEmCE4egeucsEqyx1BKFItgtfkkCG2z9NxOAs=; b=CStaSn46aFua8UYVBp9rtoiWFg
 CxSgHKMvSPSgtQqLy/creWaHUIoAiLHu4ciHuz1dz2ABTdcbzfmiG2TgWpF8ibNxKJvRLN26b4jaY
 eP9vdesKDMKrz9flFlob7TzkbpPLVkC77bBi5Slsrqij0DGYtNqWwmcBD9w0X6DNMwHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+h4wN+gEmCE4egeucsEqyx1BKFItgtfkkCG2z9NxOAs=; b=YhMbCnh0sJHY+nXIvNgMVX0v9g
 1aWbS0HPhmn/VDmdCMI3+VvtyHrLcKUKhzx/QudeQ/ml37cS4YWhkZQgiR+6mNpUGw3FiHAo4zxsA
 eQ0Jn/0kFV5mhyESdlsc1Uns0BScO3YoNCgNynI6M+yrAkMBNgW9rBO792Fm2meOYNxE=;
Received: from mail.as201155.net ([185.84.6.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lEoyK-003NM4-AE
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 24 Feb 2021 07:52:46 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:54948
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1lEoy5-0008Mc-1V; Wed, 24 Feb 2021 08:52:21 +0100
X-CTCH-RefID: str=0001.0A782F19.603605B5.0077, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID;
 bh=+h4wN+gEmCE4egeucsEqyx1BKFItgtfkkCG2z9NxOAs=; 
 b=R4VFlbzLjYccPkcZXkyIKEf9f88UQyZ0tY3zJRIyKEAmsfegFsJyAUp3Wl7WFQhICwRYz+Hr847ldUn7kZz3UaQp9Y3fMRT5oAoLethXyetf8mu+HHIt5iBUwr8w9vndy96d9dz0FhMLkyF/XPmTp4V1c9cp6BaF1uTmAO0RWM4=;
Message-ID: <f2b72217-3da5-7e71-e108-56e657e8a85d@dd-wrt.com>
Date: Wed, 24 Feb 2021 08:52:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101
 Thunderbird/86.0
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-fsdevel@vger.kernel.org
References: <20210212162416.2756937-1-almaz.alexandrovich@paragon-software.com>
 <20210212162416.2756937-11-almaz.alexandrovich@paragon-software.com>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
In-Reply-To: <20210212162416.2756937-11-almaz.alexandrovich@paragon-software.com>
X-Received: from [2003:c9:3f4c:a900:81f8:af90:a12c:2d22]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1lEoy4-000OVA-EG; Wed, 24 Feb 2021 08:52:20 +0100
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lEoyK-003NM4-AE
X-Mailman-Approved-At: Wed, 24 Feb 2021 14:15:07 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v21 10/10] fs/ntfs3: Add MAINTAINERS
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, linux-ntfs-dev@lists.sourceforge.net, hch@lst.de,
 viro@zeniv.linux.org.uk, joe@perches.com, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


Am 12.02.2021 um 17:24 schrieb Konstantin Komarov:
> This adds MAINTAINERS
>
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>

just for your info with latest ntfs3 driver

kern.err kernel: ntfs3: sda1: ntfs_evict_inode r=fe1 failed, -22.




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
