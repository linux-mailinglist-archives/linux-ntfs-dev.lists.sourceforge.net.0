Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2EA70641C
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 11:28:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzDSW-0003Y1-TH;
	Wed, 17 May 2023 09:28:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pzDSW-0003Xu-DS
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 09:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sgYWOKQ1iBZg+s87URJzxvgDYrxnrBHvkTQDcMdcz8U=; b=Z9LvUjj8utbobgnMWSwbn3OQmT
 4inZDnOZ4ijqQLjPlYvSZ/CJeKywWrTMDlIA4dydIB4UuSNYoyS0pSS2l+ZJsG61GDP2RDgGYGgzK
 LlSfhfA5jWwf7IbiCP80+o8gi9Rlfp8EuaWzxm11p6kmR8CNggVnpx35/4Jf/x6cQidY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sgYWOKQ1iBZg+s87URJzxvgDYrxnrBHvkTQDcMdcz8U=; b=BK34I6QaXGSMXZ+ljjTDsixwI9
 t1YEqTuPLHOkwfafw9L75Hej4fqvsCy5bn18Sppo2ziZkW1mQ3vjL4Qfsm2Dw0LZm4IyzyV/JzqSo
 px0jCOSDR+fofItW1L3gTqFrTgdfuvXKi8ZXLfqDOc80L3926dkM0LxEyRCnIXSUtGwg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzDSU-00AuJH-Dg for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 09:28:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0DC6F64457
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 09:28:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7581AC433A0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 09:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684315708;
 bh=rr7UrUKv6MsNvxzTtNIojMooL6eyVCpk6rsit5v94do=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=vM246Fushquk5gouKkigshr3EAMbRv5k+6T2mf9ynz5hZOYsQoWXYSh6tNPxtDf+v
 iLPmen+qcX1e3xvTaeZwnYxySlM0DXQ74jIbal1MlhneagaizcrlOObr9cGhZr0soY
 dHVEBtkyocuipyvAupgGOwcS0ayGLFCJ/70eLpFiuUvmrtQAfESch/pUKhMBCM26Ay
 1jrxh5svfDrFRMd8vD9j17TnQsraZ7fZRj0AGy1amzqy9+hZMybVWKLwHD2lLopbnB
 X9YRi+tqHBydjFH4zesa88oRu/Wrs6BfJp+dmqoGZTD4cUyXHqqsDvAlbz4RnH5ERV
 0eNcFeA+SaniA==
Received: by mail-oo1-f51.google.com with SMTP id
 006d021491bc7-54caba50d07so222737eaf.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 02:28:28 -0700 (PDT)
X-Gm-Message-State: AC+VfDzE/TaVW/PO9A5J8vsErUdhfvZ5ADC4cyo6WPpJcxtkugGKb0IQ
 vISjPDWAOm+AEmkWQY+MazueMRHQQcMtNYHlkgQ=
X-Google-Smtp-Source: ACHHUZ689Z4V+J+eaquFY9rTV2Nm4RWEjGVOOgXAZa5HwBY+pywFHqDyzbP7UyBnODapucnUDebRImcWHU0kmhIkSrM=
X-Received: by 2002:a4a:3803:0:b0:550:9895:fe77 with SMTP id
 c3-20020a4a3803000000b005509895fe77mr9013829ooa.9.1684315707613; Wed, 17 May
 2023 02:28:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:290:0:b0:4da:311c:525d with HTTP; Wed, 17 May 2023
 02:28:27 -0700 (PDT)
In-Reply-To: <20230517-keimen-teesieb-d606296295ba@brauner>
References: <20230517070739.6505-1-linkinjeon@kernel.org>
 <4125c148-a4f4-edd2-3009-0283246f8a95@gmail.com>
 <CAKYAXd_=kXjKnmfiSEuTLG0fd6Ezj+7_R_ZSWntbvUgQ9Hyx0w@mail.gmail.com>
 <20230517-keimen-teesieb-d606296295ba@brauner>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Wed, 17 May 2023 18:28:27 +0900
X-Gmail-Original-Message-ID: <CAKYAXd-664AUGbKVO9MUJ_ZNSQNQZg9xL+L8QK147=2TbtJpaA@mail.gmail.com>
Message-ID: <CAKYAXd-664AUGbKVO9MUJ_ZNSQNQZg9xL+L8QK147=2TbtJpaA@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-05-17 17:43 GMT+09:00,
 Christian Brauner <brauner@kernel.org>:
 > On Wed, May 17, 2023 at 05:26:59PM +0900, Namjae Jeon wrote: >> 2023-05-17
 16:37 GMT+09:00, Bagas Sanjaya <bagasdotme@gmail.com>: [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzDSU-00AuJH-Dg
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, akpm@linux-foundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-05-17 17:43 GMT+09:00, Christian Brauner <brauner@kernel.org>:
> On Wed, May 17, 2023 at 05:26:59PM +0900, Namjae Jeon wrote:
>> 2023-05-17 16:37 GMT+09:00, Bagas Sanjaya <bagasdotme@gmail.com>:
>> > On 5/17/23 14:07, Namjae Jeon wrote:
>> >> I'm volunteering to help review patches for current unmaintained
>> >> ntfs filesytem.
>> >>
>> >> Signed-off-by: Namjae Jeon <linkinjeon@kernel.org>
>> >> ---
>> >>  MAINTAINERS | 1 +
>> >>  1 file changed, 1 insertion(+)
>> >>
>> >> diff --git a/MAINTAINERS b/MAINTAINERS
>> >> index e2fd64c2ebdc..c2cecb2059d7 100644
>> >> --- a/MAINTAINERS
>> >> +++ b/MAINTAINERS
>> >> @@ -14928,6 +14928,7 @@ F:	drivers/ntb/hw/intel/
>> >>
>> >>  NTFS FILESYSTEM
>> >>  M:	Anton Altaparmakov <anton@tuxera.com>
>> >> +R:	Namjae Jeon <linkinjeon@kernel.org>
>> >>  L:	linux-ntfs-dev@lists.sourceforge.net
>> >>  S:	Supported
>> >>  W:	http://www.tuxera.com/
>> >
>> > Acked-by: Bagas Sanjaya <bagasdotme@gmail.com>
>> Thanks for your ack!
>> >
>> > Anyway, what about also adding linux-mm list so that akpm can
>> > pick patches?
>> Hm.. I think that MM folks probably don't like to see fs patches on mm
>> list...
>> And as far as I know, Christian is going to picks up the ntfs patches.
>> Christian, right?
>
> I've picked up your patch already. A notification should be sent
> shortly.
Thank you!
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
