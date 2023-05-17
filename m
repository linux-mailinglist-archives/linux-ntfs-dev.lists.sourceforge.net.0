Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0097062C4
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 10:27:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzCV3-0003mK-DR;
	Wed, 17 May 2023 08:27:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pzCV1-0003m9-Nr
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 08:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LN7VUGj6509fxgDcmk0ianGdJpyHUIckVlk3U8uHr0Y=; b=U0ej11r594JLUxsVl5dzOVRq11
 o/+lF2Sb5lpaPx+Kqc0WTwfJ4hiHlipzABNCK9a9K2WvHN8Q7eVLbizXJER5lMU8w7AbIVNmTj6k+
 R8kjtn1rzSMuLoDaX5gn6QkA87/T9IgCnZQUhITCihM2HsTgPAWgxuU+PL05T8RMq4MY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LN7VUGj6509fxgDcmk0ianGdJpyHUIckVlk3U8uHr0Y=; b=QMrsgq/A03nHhdK069SsgCEshL
 9HsFHLVWr2nG+Kda0ZIUkhekX+65Wplt5FxfMFIBi3ppNDkctHN5eXyvFC+lgxoacZCm2xtxIub6y
 +sZ2ru5dp2vhgAhZt9zLl+geb4gayLqcIod0XG8ekimdxbvq4KdKbrbrweG18/7Pln/8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzCV0-0000yK-OD for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 08:27:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5FE5664399
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 08:27:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9C0CC4339C
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 08:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684312020;
 bh=/VFfL2QbJ6k3VJGcWXoGQEaNMxXHPIHmIVTKIHJFJBo=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=oSCxm6sh/98I8Ox04VmmDDnilXcPcRMYh6yJ9qIuyLsWjQETjKV/2tX8zdPFulsF5
 z6EKAZ07VqvTVeqRfpnqqL2CwOCvijrT5vbtqIpcIHv68QOlZnBHabPf9gEJACQESL
 WqCeMK2g+VBxzzXfgLmlVUqV+PA40aNTJ56sggpJJH4bXPRaMhRaIz3hOKVzMqwKTb
 AD4VJGmlepH1dlPqnjHV1hZP7SQb/GdHaGJDvvgy8jhHbGhKD/YVV2OrY6RXW30jLo
 wWEca4DOvypVXBpjpxM6LQhK716xuN19c0TLJpG1GTon2lIgeDxmwL+Wl0XNv86O3u
 Rg1yzYw8y0gWg==
Received: by mail-oa1-f50.google.com with SMTP id
 586e51a60fabf-1925ad4953dso201494fac.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 01:27:00 -0700 (PDT)
X-Gm-Message-State: AC+VfDx5NXGarzkQdE+odQ+SrnA/JJc30JpP1jAf3blJYyhaP8tLioqo
 uBwe/gpR/PsyUxJsl2VXUYoGtbUAZSpBY0QlGW4=
X-Google-Smtp-Source: ACHHUZ7N9/reC7wmuhF51pRnT9mEKyzQMTd0GpRUzXVd1EUiUPAn5uqg7uY9TVh9SqyXXxv+pftvSsYwMAWxuN8bJHg=
X-Received: by 2002:a05:6871:395:b0:195:e56f:ced2 with SMTP id
 z21-20020a056871039500b00195e56fced2mr15848513oaf.38.1684312019977; Wed, 17
 May 2023 01:26:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:290:0:b0:4da:311c:525d with HTTP; Wed, 17 May 2023
 01:26:59 -0700 (PDT)
In-Reply-To: <4125c148-a4f4-edd2-3009-0283246f8a95@gmail.com>
References: <20230517070739.6505-1-linkinjeon@kernel.org>
 <4125c148-a4f4-edd2-3009-0283246f8a95@gmail.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Wed, 17 May 2023 17:26:59 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_=kXjKnmfiSEuTLG0fd6Ezj+7_R_ZSWntbvUgQ9Hyx0w@mail.gmail.com>
Message-ID: <CAKYAXd_=kXjKnmfiSEuTLG0fd6Ezj+7_R_ZSWntbvUgQ9Hyx0w@mail.gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-05-17 16:37 GMT+09:00,
 Bagas Sanjaya <bagasdotme@gmail.com>:
 > On 5/17/23 14:07, Namjae Jeon wrote: >> I'm volunteering to help review
 patches for current unmaintained >> ntfs filesytem. >> >> Si [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzCV0-0000yK-OD
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: Add myself as a reviewer
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
Cc: brauner@kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>, akpm@linux-foundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-05-17 16:37 GMT+09:00, Bagas Sanjaya <bagasdotme@gmail.com>:
> On 5/17/23 14:07, Namjae Jeon wrote:
>> I'm volunteering to help review patches for current unmaintained
>> ntfs filesytem.
>>
>> Signed-off-by: Namjae Jeon <linkinjeon@kernel.org>
>> ---
>>  MAINTAINERS | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index e2fd64c2ebdc..c2cecb2059d7 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -14928,6 +14928,7 @@ F:	drivers/ntb/hw/intel/
>>
>>  NTFS FILESYSTEM
>>  M:	Anton Altaparmakov <anton@tuxera.com>
>> +R:	Namjae Jeon <linkinjeon@kernel.org>
>>  L:	linux-ntfs-dev@lists.sourceforge.net
>>  S:	Supported
>>  W:	http://www.tuxera.com/
>
> Acked-by: Bagas Sanjaya <bagasdotme@gmail.com>
Thanks for your ack!
>
> Anyway, what about also adding linux-mm list so that akpm can
> pick patches?
Hm.. I think that MM folks probably don't like to see fs patches on mm list...
And as far as I know, Christian is going to picks up the ntfs patches.
Christian, right?
>
> --
> An old man doll... just what I always wanted! - Clara
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
