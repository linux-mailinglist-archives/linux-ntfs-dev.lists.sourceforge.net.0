Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E2B7806E1
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 10:09:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qWuXh-0005Le-Ul;
	Fri, 18 Aug 2023 08:09:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qWt41-0004Iw-Jl
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 06:34:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=38rkmW3TQIcTdI5/jSxJ3xKQMGKCkoLsED1vztdBOnM=; b=IUTuoMWaar05iFjwzB1IXhANes
 Dp1Fm51G+iey7chuJbXNzJ+Bxm5Ha3FamcxbAb02pkr9y0euvD0P18I/r05RukyfVFxiDtD04vXHm
 ok67Zp/ntfUpQY87xOSNb32aCElJoQO+D1pRFLAU7fymus0HEkZQ+VHeiHxL8tWlGiKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=38rkmW3TQIcTdI5/jSxJ3xKQMGKCkoLsED1vztdBOnM=; b=ReMC3i7XhDpGFxFSI/h7y/n74T
 LFXItjT0suP8IrAsDr4EMKT96wh8iovLdoQP6C5ovaHNaWIaza7NnxaKYsTGlPBz6D6yUTQNABE7s
 +Zwa3tQ+uPT8JjcaU4sVkR2qVpFu+1BxwEHEuHD3tX294Y02RvdV+l+kJrYZfJIu+qxQ=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qWt41-0003bc-Em for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 06:34:29 +0000
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-3a78604f47fso378422b6e.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 17 Aug 2023 23:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692340462; x=1692945262;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=38rkmW3TQIcTdI5/jSxJ3xKQMGKCkoLsED1vztdBOnM=;
 b=AnTsUWWukNzb3xYXmf+gmyJyLu4ZZCalKfIyBogLJU/Isx8TCUcZmW0wFyiIJwQogi
 jgfzh2RYWzqQLUbS5Ucuy5s368DaAisJnt2foUlpHNP5DTAu9eN9hvsXt1urqaHSd01i
 gOwGt/UJDE7sMqXMp58OyZJ5WyX3dLwZsEViq1pJnr8dhzXeT9+zxKs167mmnEJLkLH3
 Z0dJus+rSAcZFhzyJ4GLICH4qbFsLrOlGluMcBcMn5n/qiwHCEn/X2F9puytwVJFvjS6
 RcGz9kCAD5dh/3JEj7YWvsfJ1zNlsHmRJbI2Y0HmiFezXxOmKiSYuY0pg/m3AwB0OQFg
 /hlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692340462; x=1692945262;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=38rkmW3TQIcTdI5/jSxJ3xKQMGKCkoLsED1vztdBOnM=;
 b=kI2d46jsLpREh9UwqJ/WAMFeqw1ySz44jkylAQfeqGz88cpbb4DP2eofxavIX1rAj5
 VbaN06Mcs8ULgkyKW75vX8kNPMvjYJver5OJh1C+S67U9tFsjW+nZHPkRtLKoE/vdg5K
 3bJdjj0GpaLVbsDwVe9GtC+7s2JXVbiNoYvon7OIOZww4gSzrOS+836pIRLjR1cTSC3A
 ekS+sXQrfLiJ+BYAcTRpgyjcwHar4+pPcG7ABP8YxGGrnvNyWrv4BIzg1rZJDgidDHL1
 JOhTTgAfSm1SFcxhw1JGtsEkHNv4M0S5o/SI/Om+XsrAUph6DKgh6GMEKQ368aY29X27
 7InQ==
X-Gm-Message-State: AOJu0Yyf+/EMqcJOqVRr0FWxiFwJZ3k6TYuCL21bovkjyRc4erQEMrqv
 368I84WFF1h+4qiADYdSH39J8l145QEAdy/H
X-Google-Smtp-Source: AGHT+IFOx3J6HEKmKWHIbx8sxYyeFqTa65nccBi7EkFrszyIBIdZY5gBZ+nNiTyHNkQtpZj9LQlHkg==
X-Received: by 2002:a05:6808:1887:b0:3a7:30ad:df28 with SMTP id
 bi7-20020a056808188700b003a730addf28mr2214541oib.37.1692340462085; 
 Thu, 17 Aug 2023 23:34:22 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.174]) by smtp.gmail.com with ESMTPSA id
 k125-20020a636f83000000b005641bbe783bsm726348pgc.11.2023.08.17.23.34.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Aug 2023 23:34:21 -0700 (PDT)
Message-ID: <54a8ae10-71f4-9e91-d2b7-bd4a30a8ac2a@gmail.com>
Date: Fri, 18 Aug 2023 12:04:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
References: <20230813055948.12513-1-ghandatmanas@gmail.com>
 <2023081621-mosaic-untwist-a786@gregkh>
From: Manas Ghandat <ghandatmanas@gmail.com>
In-Reply-To: <2023081621-mosaic-untwist-a786@gregkh>
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry for the last reply Greg. The last tag specifies the
 commit id. Also, I have sent the v5 of the patch in which I have made some
 critical changes. Please take a look at that. On 17/08/23 00:45, Greg KH
 wrote: > On Sun, Aug 13, 2023 at 11:29:49AM +0530, Manas Ghandat wrote: >>
 Currently there is not check for ni->itype.compressed.block_size when >>
 a->data.non_resident.comp [...] 
 Content analysis details:   (-3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 -3.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qWt41-0003bc-Em
X-Mailman-Approved-At: Fri, 18 Aug 2023 08:09:12 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v4] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Sorry for the last reply Greg. The last tag specifies the commit id. 
Also, I have sent the v5 of the patch in which I have made some critical 
changes. Please take a look at that.

On 17/08/23 00:45, Greg KH wrote:
> On Sun, Aug 13, 2023 at 11:29:49AM +0530, Manas Ghandat wrote:
>> Currently there is not check for ni->itype.compressed.block_size when
>> a->data.non_resident.compression_unit is present and NInoSparse(ni) is
>> true. Added the required check to calculation of block size.
>>
>> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
>> Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
>> Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
>> Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b
> What is this last tag for?  That's a kernel release version, what can be
> done with that?
>
> confused,
>
> greg k-h


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
