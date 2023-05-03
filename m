Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC626F6095
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  3 May 2023 23:39:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1puKBc-0002l4-GI;
	Wed, 03 May 2023 21:38:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <akpm@linux-foundation.org>) id 1puJwD-0007Jr-Fo
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 03 May 2023 21:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x9huMi6tXBZH3Jbgr/EWN2PIQ+4hrfVXzhvth8riTmw=; b=NcsB1LEQ7gFFI13qY2bqwF8pGs
 T09DtElXauWLFruUjxx5TW0UdfU3Qzdc70adpOj6Kwxvp2TpUYTeWzOqtEOSW2IwA3ntW3QHA/Gf1
 rKtyL/mHOQBQr05OpSuPmbbOEjZdcN54SNsfQpYQ8Qm3pUDXOr5Y1OnsBUSje9Gea6Ao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x9huMi6tXBZH3Jbgr/EWN2PIQ+4hrfVXzhvth8riTmw=; b=mvY4Mmk5MPt2bkBzsiAuLuSW6X
 4sGBiUSW5uLurLipT5a7ahDyedaC00JO3m43jqkqgLQFkSgHsiwffovKSOuYZTnxqshSDPkIW8l4R
 DmRwh1HYSg5tvpa+uUAIs2GMd9yY3xONopabRsje6eLiZ16eNjlPwrnw0WuOegWFvQYY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puJwC-00DGML-RP for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 03 May 2023 21:23:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 56C1E62A71;
 Wed,  3 May 2023 21:06:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67A5BC433EF;
 Wed,  3 May 2023 21:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1683147970;
 bh=BJaWoQEwi1nsRGaASt1366eU6W3XLddSBQxqT3JtCXM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DxuYsd9iiuRdr6p7QdaO8G+QMUAoci3OATTy+KDSrBag9t1Z9E/S2g29TRr9nQz8J
 7z32VV9tA6DzSnMc8u4PNFwIoJahMxhtLeYBqtc69/E3tT0+JlyCz4SuOkPOsbrdv5
 LfgKFUuKkAMpLvsqo7ktPKou0bea0oA9OJxzGV7c=
Date: Wed, 3 May 2023 14:06:09 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-Id: <20230503140609.e65bdc2b0e55ba6f49bbb620@linux-foundation.org>
In-Reply-To: <ZFHgAhisxjKQxhLx@debian.me>
References: <20230407194433.25659-1-listdansp@mail.ru>
 <ZFHgAhisxjKQxhLx@debian.me>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -9.5 (---------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed,
 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com>
 wrote: > On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov wrote:
 > > In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
 > > prior to 'ctx' being set to a non-NULL value, avo [...] 
 Content analysis details:   (-9.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -4.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1puJwC-00DGML-RP
X-Mailman-Approved-At: Wed, 03 May 2023 21:38:56 +0000
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
 Anton Altaparmakov <anton@tuxera.com>, Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, 3 May 2023 11:16:02 +0700 Bagas Sanjaya <bagasdotme@gmail.com> wrote:

> On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov wrote:
> > In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
> > prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
> > 'ctx' pointer in error handling.
> > 
> > Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Duplicate of 10-years-old outstanding patch at [1].

Well, the patches are actually quite different.  Is Danila's longer one
better?

> I'm not speaking of the patch itself but rather on unfortunate state
> of ntfs subsystem. It seems like the maintainer is MIA (has not
> responding to patch submissions for a long time). Some trivial
> patches, however, are merged through mm tree.
> 
> Konstantin (from newer ntfs3 subsystem), Andrew, would you like to take a
> look on this orphaned subsystem (and help reviewing)? I'd like to send
> MAINTAINERS update if it turns out to be the case.
> 

Sure, I can join linux-ntfs-dev@lists.sourceforge.net and hendle things
which come along.

Or Christian may want to do that?

> 
> [1]: https://lore.kernel.org/all/1358389709-20561-1-git-send-email-nickolai@csail.mit.edu/




_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
