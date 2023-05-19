Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 661067098B9
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 May 2023 15:51:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1q00Vi-0002yj-BL;
	Fri, 19 May 2023 13:51:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pzzin-0007M6-JR
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 13:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cRbPpVqUlMOZKxTbK2rcI8hr25m2xBHHjNkwrcoP6kU=; b=DpqaM6mqdmsLyGiitNTzDT5uwn
 4wl9OadfrqIvN4Kpc+ew8GEnQooWfDrMOwTirUmmYW5GJ2RUgl+qD1/R758q+nRrr+cG+81iqXp/w
 NsAC35ZGeSwkMGZBmB5HJm5ZjbydSEKfr5CxGH44yMeUo7ggMKhUgdZLb9bnQE1DkRZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cRbPpVqUlMOZKxTbK2rcI8hr25m2xBHHjNkwrcoP6kU=; b=Fp/d5LrfFAjxGu2zxRRJaizO0i
 BOzCf1ZDKjC4bMB8O5l7RtSi93Si0OYBRVAoGWwDWQd19EGSu7ZtpXEMq6iPOlf14tHlZ9AezJLvo
 oW/Twrh4HLY6XFvgbRVeACTn+huHl9eIibv0+27So8ATchATPSb4BaRY9zvVJkTSCdiM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzzin-0006kl-B0 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 13:00:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E6EA66525A
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 19 May 2023 13:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 569EDC433D2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 19 May 2023 13:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684501231;
 bh=cRbPpVqUlMOZKxTbK2rcI8hr25m2xBHHjNkwrcoP6kU=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=V7ebFUT5QfNLCnXZ58Yvi1jOqtfzeek0q0Qv09hmYnYUS6p46DVpUVYZvIoaCIt0p
 c1RElqejRyGql69XgNkgN28ZwUWhCAs+OMg37k1FF8N/5gX5bc3vWXX4iBkC9DtnxI
 z2UxlnGpLnCXQlGgZI6/0TPXmXEp5WH8zfJu8JyMhgS1H4XH+7CpoQGez0/WNywwpf
 0dkUEOarKhoIys+2lD/21CMFfSemH9c6wDw++p68n2ECwD+1UP9ht9Uf45bfqbqdrS
 Uw3TPtA+3i7osvyyM16obnwEsWFIIRZmlLFMKKcHfJ1CIYDYY7CQj9wpp5t39WeAvj
 tjIDZZvMYYccw==
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-3941c3ba27dso554017b6e.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 19 May 2023 06:00:31 -0700 (PDT)
X-Gm-Message-State: AC+VfDzf6ULLMsPLO8L3854a5zrDsAuE7bP8on95txVqxvJR/Bl9CWNm
 +KpNvY4tFqw6fa8rDdFWDN0tUNiUUJ2QjLGarxg=
X-Google-Smtp-Source: ACHHUZ65Gj3Ba+mIVbyZKo7bOQyvrq5Uu1pFYAUS7NtgLQE1J62nPyJXsyBRyKYNy3Wtt2MT8JUVoyTk7NTqkfAC9Fo=
X-Received: by 2002:aca:3356:0:b0:395:e376:7ca1 with SMTP id
 z83-20020aca3356000000b00395e3767ca1mr2708155oiz.7.1684501230528; Fri, 19 May
 2023 06:00:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6415:0:b0:4da:311c:525d with HTTP; Fri, 19 May 2023
 06:00:29 -0700 (PDT)
In-Reply-To: <20230519-badeanstalt-glitzer-2240f747059d@brauner>
References: <20230518152146.7375-1-linkinjeon@kernel.org>
 <20230519-badeanstalt-glitzer-2240f747059d@brauner>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Fri, 19 May 2023 22:00:29 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_duGZKdOcftSGHQQNqXbw0+ZbKrp9gwXYfPYXq=0gY3Q@mail.gmail.com>
Message-ID: <CAKYAXd_duGZKdOcftSGHQQNqXbw0+ZbKrp9gwXYfPYXq=0gY3Q@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-05-19 19:33 GMT+09:00,
 Christian Brauner <brauner@kernel.org>:
 > On Fri, May 19, 2023 at 12:21:46AM +0900, Namjae Jeon wrote: >> From: Danila
 Chernetsov <listdansp@mail.ru> >> >> In ntfs_mft_data [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzzin-0006kl-B0
X-Mailman-Approved-At: Fri, 19 May 2023 13:51:09 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: do not dereference a null ctx
 on error
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
Cc: linux-ntfs-dev@lists.sourceforge.net, anton@tuxera.com,
 Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-05-19 19:33 GMT+09:00, Christian Brauner <brauner@kernel.org>:
> On Fri, May 19, 2023 at 12:21:46AM +0900, Namjae Jeon wrote:
>> From: Danila Chernetsov <listdansp@mail.ru>
>>
>> In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
>> prior to 'ctx' being set to a non-NULL value, avoid dereferencing the
>> NULL
>> 'ctx' pointer in error handling.
>>
>> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>>
>> Signed-off-by: Danila Chernetsov <listdansp@mail.ru>
>> Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>
>> ---
>
> I've picked this up. The ntfs list isn't integrated with lore so please
> always Cc linux-kernel so I can use standard development tooling to pick
> up patches. Thanks!
Okay, Thank you:)
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
