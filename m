Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ED33E5DEC
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 16:31:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDSmQ-0007cO-FX; Tue, 10 Aug 2021 14:30:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1mD8an-0007Vx-VZ
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 16:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XJTL30sAj9E9k7u4K2CujkBqTC4qltRCjV1W7d4ixI0=; b=N9NSW1L/+xxaX0bEPF5OzWcPx4
 6WhX4FKUihSqybkK8UfyzdvbX0fauiSLDv6HuF7/iXy5TkR+aIGOYwgEDP6ZLTzIDX9luAsYa85GH
 JVCo4YUCGLB2umRNEDPKYl7LwFuC+uqtKpO0+vqo1ca4/0JyMGweuRLro7P6Y+OQe1ZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XJTL30sAj9E9k7u4K2CujkBqTC4qltRCjV1W7d4ixI0=; b=m2dUTDau0AuSKqg7ZoRzMb+u8U
 j2Zyn55mHby7g29nA6LYoOITcTMVPf5WSYFRzWf+4exqzh1Fxj1qKXjjWW4vC8VeztfIDIn0GpskL
 /DW6UggS3T6fEiOwjuvJe5RcTzvl3tXXSTi4H5Y4UWSqr5obtKariK5kHBnOQtVvENQY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mD8aj-000o0b-To
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 16:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=XJTL30sAj9E9k7u4K2CujkBqTC4qltRCjV1W7d4ixI0=; b=VNa7eunhb8FFYA2M0yUs99Wmts
 Jdzws2x/kGUFZW0jbjJGB7qUlfxVYWjh8INtddLdfl8vz2QcvaYmq2XTqogGBk7JCD/w3EfyYNNN6
 uUjLi9YkKlD4SiPSAf7DsZmpGEfzJJ++oaxKQYRyGb1mvHgXDtrQBd1MejkXO0rjBjFLXeXJxq2Z9
 u3zscfdQyuiQPv1TrM3XVJXcvdY55qXXaADELqmUPEI+mRv8qRsOHyV6SekSc81Taqy1I2c54meMM
 pfiKrouH3NLFWTK5TacbWUoaxIr8CCIUSeUp3QsZdN6FXQV2nN1XQ7IKDZEpWxXmv+MaAjOMlSMhJ
 1q1Q/Etg==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD8Xh-00BCbx-6t; Mon, 09 Aug 2021 16:54:55 +0000
To: Kari Argillander <kari.argillander@gmail.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
 <20210809105652.GK5047@twin.jikos.cz>
 <918ff89414fa49f8bcb2dfd00a7b0f0b@paragon-software.com>
 <20210809164425.rcxtftvb2dq644k5@kari-VirtualBox>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <305bdb56-d40f-2774-12fe-5113f15df5c6@infradead.org>
Date: Mon, 9 Aug 2021 09:54:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210809164425.rcxtftvb2dq644k5@kari-VirtualBox>
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mD8aj-000o0b-To
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:30:55 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
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
Cc: "andy.lavr@gmail.com" <andy.lavr@gmail.com>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "oleksandr@natalenko.name" <oleksandr@natalenko.name>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "joe@perches.com" <joe@perches.com>, "hch@lst.de" <hch@lst.de>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On 8/9/21 9:44 AM, Kari Argillander wrote:
> On Mon, Aug 09, 2021 at 04:16:32PM +0000, Konstantin Komarov wrote:
>> From: David Sterba <dsterba@suse.cz>
>> Sent: Monday, August 9, 2021 1:57 PM
>>> On Thu, Jul 29, 2021 at 04:49:43PM +0300, Konstantin Komarov wrote:
>>>> This adds MAINTAINERS
>>>>
>>>> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
>>>> ---
>>>>   MAINTAINERS | 7 +++++++
>>>>   1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>> index 9c3428380..3b6b48537 100644
>>>> --- a/MAINTAINERS
>>>> +++ b/MAINTAINERS
>>>> @@ -13279,6 +13279,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
>>>>   F:	Documentation/filesystems/ntfs.rst
>>>>   F:	fs/ntfs/
>>>>
>>>> +NTFS3 FILESYSTEM
>>>> +M:	Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
>>>> +S:	Supported
>>>> +W:	http://www.paragon-software.com/
>>>> +F:	Documentation/filesystems/ntfs3.rst
>>>> +F:	fs/ntfs3/
>>>
>>> Can you please add a git tree and mailing list entries?
> 
>> Hi David, I'll add the git tree link for the sources to MAINTAINERS in the next patch. As for the mailing list,
>> apologies for the newbie question here, but will it possible to have the @vger.kernel.org list for the ntfs3,
>> or it must be external for our case?
>> Thanks!
> 
> Good question and I also do not have absolute truth about it but I try
> to help. It should be possible. I think you can request new list from
> postmaster@vger.kernel.org
> 
> If you need public git tree then kernel.org can maybe provide that. They
> also host ntfs so I think no problem with ntfs3. This way you self
> do not have to worry public list. But I'm not sure how strict is now
> days get account. But if you say that it would be nice that you need
> kernel git then maybe someone can help with that.
> See more info https://www.kernel.org/faq.html

If postmaster@vger.kernel.org isn't helpful or you just want to use
kernel.org (note that vger.kernel.org isn't part of kernel.org),
you can contact: helpdesk@kernel.org  for git tree or mailing list
requests.  Wherever you have a mailing list, you probably should
have it archived at lore.kernel.org (see next URL for that).

Also you may want to read  https://korg.wiki.kernel.org

-- 
~Randy



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
