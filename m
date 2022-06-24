Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C70485596F3
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 24 Jun 2022 11:45:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4fs7-0003bx-QI; Fri, 24 Jun 2022 09:45:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linkinjeon@kernel.org>) id 1o4bSX-0002rD-66
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 05:02:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pxcUM2HfROI/W9qrBs8nNqY0vSWAWcWxlOv2+v90onw=; b=J1EfCLNSn8Nqb18Yd6KaH0im5z
 nz6VwmqaUj4Hzc14gUCFwfERSHr7Xq5JtYWeRc1lY/QN7yNg6w/0dVCXXoFptyUxAv3ExlfDvIc9F
 puOoH8/K6zIwTFLPAJO11sE174pmzw/1gHlx8dAhPfGRFlQz7iVxf7GXhzCUqN+Mf/f4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pxcUM2HfROI/W9qrBs8nNqY0vSWAWcWxlOv2+v90onw=; b=DWCCb2D9BvIF3y+1ELTP4nvO0Y
 vMZ7nhNUzUdOaZgoyVpno/sZT5iYPjftUgyuTJVpWFQHjHJc0/WzsgzUC4AZ7x/hgw69cyFw54n8d
 FY1Tr8Q7fm1d6uuDYLZChuKegz96kR6UM/ioivaf/MQPuJEPT5MniWxvJ10gK87TNeZ8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4bSR-0002Dc-Bf
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 05:02:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 50BC5B824E7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 24 Jun 2022 02:33:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17075C341C7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 24 Jun 2022 02:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1656038010;
 bh=a4iNX4jJ+gnqj1zIP5Wj5jnZb07NsrcpoyCEobpZ5Yo=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=QfGE9onBynAV5WJCdKW0ZlWgQ80YMC52LULQ97xE//WWZo6QwcmuJqlkH4tEuTc3M
 nsom2WtlMWAC/HeruQEgj/mPiVNpRzy3j47ZGbj4YsHROf4iPsefb8eFOVgJBGvXAN
 h+LTRBYRPcbR/g4J4ertVwXtmcrqpxsnGj811zg00Hjw/+GnfoCkvhAbEZmwRHhyKx
 6iL1wm75mi0PBIipCwsZY6N/2NEFNL7APn/Ni5MZSg3iyBd7PHXho0UTNTc9vwanFK
 dz5N9yLow9VNSqhpYoog9UHX5P//5jPEe327D/gl3ApN3+5/5lXH8Easc1xJgsrzEq
 khPYJ9cP65xXg==
Received: by mail-qv1-f54.google.com with SMTP id u14so140334qvv.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Jun 2022 19:33:30 -0700 (PDT)
X-Gm-Message-State: AJIora9vOTHJSt76xViAQFDvgKzaHq2XbeQQ7Nayu8vN32bdEqs86M2j
 WmQiVpRcVw3ol/UK12IErfdGUA6Ys1JSd3XQrAI=
X-Google-Smtp-Source: AGRyM1uFq4naYNdLJNqLP+TvQkfc5iyrf/CltRak4zEUTFYg/Sq8LP4x3FXpp3cKVwH24M/PCK+tvgAW529tJ0DGf5E=
X-Received: by 2002:ad4:5dc5:0:b0:470:93c8:e908 with SMTP id
 m5-20020ad45dc5000000b0047093c8e908mr1548301qvh.115.1656038009063; Thu, 23
 Jun 2022 19:33:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:2a86:0:0:0:0 with HTTP; Thu, 23 Jun 2022 19:33:28
 -0700 (PDT)
In-Reply-To: <YrSeAGmk4GZndtdn@sol.localdomain>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623094956.977053-1-xu.xin16@zte.com.cn>
 <YrSeAGmk4GZndtdn@sol.localdomain>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Fri, 24 Jun 2022 11:33:28 +0900
X-Gmail-Original-Message-ID: <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
Message-ID: <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
To: Eric Biggers <ebiggers@kernel.org>, xu.xin16@zte.com.cn
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-06-24 2:08 GMT+09:00,
 Eric Biggers <ebiggers@kernel.org>:
 > On Thu, Jun 23, 2022 at 09:49:56AM +0000, cgel.zte@gmail.com wrote: >>
 From: xu xin <xu.xin16@zte.com.cn> >> >> As the bug description [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o4bSR-0002Dc-Bf
X-Mailman-Approved-At: Fri, 24 Jun 2022 09:45:03 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of
 ntfs_read_block()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, cgel.zte@gmail.com,
 Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Yang Yang <yang.yang29@zte.com.cn>,
 syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>, linux-fsdevel@vger.kernel.org,
 Zhang wenya <zhang.wenya1@zte.com.cn>, anton@tuxera.com,
 Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2022-06-24 2:08 GMT+09:00, Eric Biggers <ebiggers@kernel.org>:
> On Thu, Jun 23, 2022 at 09:49:56AM +0000, cgel.zte@gmail.com wrote:
>> From: xu xin <xu.xin16@zte.com.cn>
>>
>> As the bug description at
>> https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
>> attckers can use this bug to crash the system.
>>
>> So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a
>> warning to the syslog and return instead until someone really solve
>> the problem.
>>
>> Cc: stable@vger.kernel.org
>> Reported-by: Zeal Robot <zealci@zte.com.cn>
>> Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
>> Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
>> Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
>> Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
>> Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
>> Signed-off-by: xu xin <xu.xin16@zte.com.cn>
>> ---
>>
>> Change for v2:
>>  - Use ntfs_warning instead of WARN().
>>  - Add the tag Cc: stable@vger.kernel.org.
>> ---
>>  fs/ntfs/aops.c | 7 ++++++-
>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
>> index 5f4fb6ca6f2e..84d68efb4ace 100644
>> --- a/fs/ntfs/aops.c
>> +++ b/fs/ntfs/aops.c
>> @@ -183,7 +183,12 @@ static int ntfs_read_block(struct page *page)
>>  	vol = ni->vol;
>>
>>  	/* $MFT/$DATA must have its complete runlist in memory at all times. */
>> -	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
>> +	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
>> +		ntfs_warning(vi->i_sb, "Error because ni->runlist.rl, ni->mft_no, "
>> +				"and NInoAttr(ni) is null.");
>> +		unlock_page(page);
>> +		return -EINVAL;
>> +	}
>
> A better warning message that doesn't rely on implementation details
> (struct
> field and macro names) would be "Runlist of $MFT/$DATA is not cached".
> Also,
> why does this situation happen in the first place?  Is there a way to
> prevent
> this situation in the first place?

ntfs_mapping_pairs_decompress() should return error pointer instead of NULL.
Callers is checking error value using IS_ERR(). and the mapping pairs
array of @MFT entry is empty, I think it's corrupted, it should cause
mount failure.

I haven't checked if this patch fix the problem. Xu, Can you check it ?

diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
index 97932fb5179c..31263fe0772f 100644
--- a/fs/ntfs/runlist.c
+++ b/fs/ntfs/runlist.c
@@ -766,8 +766,11 @@ runlist_element
*ntfs_mapping_pairs_decompress(const ntfs_volume *vol,
                return ERR_PTR(-EIO);
        }
        /* If the mapping pairs array is valid but empty, nothing to do. */
-       if (!vcn && !*buf)
+       if (!vcn && !*buf) {
+               if (!old_rl)
+                       return ERR_PTR(-EIO);
                return old_rl;
+       }
        /* Current position in runlist array. */
        rlpos = 0;
        /* Allocate first page and set current runlist size to one page. */

>
> - Eric
>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
