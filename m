Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD36F7E88
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  5 May 2023 10:16:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1puqc2-0002GJ-QA;
	Fri, 05 May 2023 08:16:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1puolW-0003XE-LO
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 05 May 2023 06:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i6VbKtyf+yMSId8pn6ebc3jTkMwVGlZ/HaUQnQ4smKA=; b=gfee5E3EKMU5IaYULPiOK5OqPM
 M8RfMMw3Hghc3FV42AXdSiqcYHVCagxOH/juhcFMDUa9dyx+uZUONcf2WQYwcba03rMySeN4Cxl1f
 ug7uB3KJaVtL+VzbRIyAxR3X7o1tF5Own1Qo1nB3a61L2sxMfFobS9PJs+T6YK72bD4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i6VbKtyf+yMSId8pn6ebc3jTkMwVGlZ/HaUQnQ4smKA=; b=XHskJWpJ3FfCE11OaXtoDo2UmT
 LIN4yJS5bs7JJkX5unnjKi7e4hOamPM9Jtzt7ZwHDkUMpb6wU3K8sUWVUrzy7FgiG8eDfm4VSdTKU
 txMN98parEH67Ieyq+YIaXAPCn6B3PMud11cZR2CqxMWV2WSKalEvHFln+MPIYnYcPFA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puolW-00Exy5-NT for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 05 May 2023 06:18:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 546F962AEF
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri,  5 May 2023 06:17:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3D7CC4339E
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri,  5 May 2023 06:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683267476;
 bh=s0Q8w+nZ3D0tRHQQ0NfVXIwOgzbtcIUS0LMXlLCVPlE=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=o1qf7cQdVwokJTmvHOUCzh1Ufx8A7z0mfp+Syr2QumpBf+BULm85uYhxTrHFDWbUw
 VHQp29hxAkwn8iiQW296pvqPyqZbuNcBhcpfPaAxZb7yDHKs+ndks4eB8+cP4gCaAM
 MFShDD/D/Xj9dPRMCmJjGvxSDq6K13LipD8RWK6/cXu0pb568dq+wMNmKChbW9yX3r
 vyIlzRvG3drFvnfcqMPFXawsh9RprNsAXAd2E7i9RPfuiEl15oWMA/QEMk3LUqwgrx
 Wymj7LusMUXonXZaeJowV759+ZK2g9f9r1QO9iTi/oLalolYF5XP0NFYppPRbx/5hk
 6cejNlJw0FSbQ==
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-1925ad4953dso643658fac.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 04 May 2023 23:17:56 -0700 (PDT)
X-Gm-Message-State: AC+VfDyJrxe6Lealiq6X4W9gd9uGisMtdsOPW1vkn0VL2p5bd2zcoDpq
 ciNKJwkkdGKluexZerqc5iDJWKEQp8Z4Q54xBSw=
X-Google-Smtp-Source: ACHHUZ59xiLH2jDPQ4tx28+0BYl225DfqBgHqfgxYWhngZ+AuyTuVMNt1mq8TJ8mpHQ1QQBrGJ2S0bdPvmhDKfVC170=
X-Received: by 2002:a05:6870:5141:b0:176:4c90:a172 with SMTP id
 z1-20020a056870514100b001764c90a172mr295547oak.56.1683267475770; Thu, 04 May
 2023 23:17:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7858:0:b0:4d3:d9bf:b562 with HTTP; Thu, 4 May 2023
 23:17:55 -0700 (PDT)
In-Reply-To: <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
References: <20230407194433.25659-1-listdansp@mail.ru>
 <ZFHgAhisxjKQxhLx@debian.me>
 <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Fri, 5 May 2023 15:17:55 +0900
X-Gmail-Original-Message-ID: <CAKYAXd9R4g2MZGKw5ugUcjf-3OXkngNjNgZcHsysR659YCUBDw@mail.gmail.com>
Message-ID: <CAKYAXd9R4g2MZGKw5ugUcjf-3OXkngNjNgZcHsysR659YCUBDw@mail.gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-05-04 6:06 GMT+09:00,
 Andrew Morton <akpm@linux-foundation.org>:
 > On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com>
 > wrote: > >> On Fri, Apr 07, 2023 at 07:44:33PM +0000, D [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1puolW-00Exy5-NT
X-Mailman-Approved-At: Fri, 05 May 2023 08:16:19 +0000
Subject: Re: [Linux-ntfs-dev] ntfs orphan? (was Re: [PATCH] ntfs: do not
 dereference a null ctx on error)
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
Cc: Christian Brauner <brauner@kernel.org>, lvc-project@linuxtesting.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux Memory Management <linux-mm@kvack.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Anton Altaparmakov <anton@tuxera.com>,
 Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-05-04 6:06 GMT+09:00, Andrew Morton <akpm@linux-foundation.org>:
> On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com>
> wrote:
>
>> On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov wrote:
>> > In ntfs_mft_data_extend_allocation_nolock(), if an error condition
>> > occurs
>> > prior to 'ctx' being set to a non-NULL value, avoid dereferencing the
>> > NULL
>> > 'ctx' pointer in error handling.
>> >
>> > Found by Linux Verification Center (linuxtesting.org) with SVACE.
>>
>> Duplicate of 10-years-old outstanding patch at [1].
>
> Well, the patches are actually quite different.  Is Danila's longer one
> better?
Danila's patch is better than old one. old patch doesn't free
allocated cluster in error handling. And Christian will apply this to
his queue if you drop this patch.
>
>> I'm not speaking of the patch itself but rather on unfortunate state
>> of ntfs subsystem. It seems like the maintainer is MIA (has not
>> responding to patch submissions for a long time). Some trivial
>> patches, however, are merged through mm tree.
>>
>> Konstantin (from newer ntfs3 subsystem), Andrew, would you like to take a
>> look on this orphaned subsystem (and help reviewing)? I'd like to send
>> MAINTAINERS update if it turns out to be the case.
>>
>
> Sure, I can join linux-ntfs-dev@lists.sourceforge.net and hendle things
> which come along.
>
> Or Christian may want to do that?
>
>>
>> [1]:
>> https://lore.kernel.org/all/1358389709-20561-1-git-send-email-nickolai@csail.mit.edu/
>
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
