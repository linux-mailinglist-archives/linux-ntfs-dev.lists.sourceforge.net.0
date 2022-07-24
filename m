Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F88580509
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mx-0000CX-Bg; Mon, 25 Jul 2022 20:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1oFdwW-00060o-JC
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 15:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SIg234m0D759NLUsv7glQXl1vjvGR6SMH+6to8Z4L/4=; b=ZB5/ffUYGNup2zSqQR4iah6N5W
 SiWPR23FzyD5RK5ZXJbfk5CcsKIcZoBjU/VzwlTVy/hbArBUVXLyQFzDFFYsdHey4lwCaJNE84k8/
 r0cqATxEQIV+cihIkMD/obVwIejkK9tEdJkko+dEJrnIb14awYYaV340FA//Ob7z3nRM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SIg234m0D759NLUsv7glQXl1vjvGR6SMH+6to8Z4L/4=; b=HLXN63mBLus1v/p30yMfrqLNbe
 ILS67BZbeiXpVqwJSM1mx4ZFDMeyQqX6xKK8ae7z+cYb57eRV+yBF54LWgPYMh01bAPIeTPcRxkPP
 G7E9htQt02DaX/H17O9PTk82roBgBlookT0zK0elBy6AZGi57xLk8Ezm/2/CvQUVwahE=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oFdwW-0004DL-Fl
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 15:54:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F279EB80D2C;
 Sun, 24 Jul 2022 15:54:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524B4C3411E;
 Sun, 24 Jul 2022 15:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1658678085;
 bh=/UIhFasVDsu284cyUeg7xTTVzwT3e9W7ftFk8kfS56s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V1hr/UNinQvJiEBZ4rYIIgce1UdeQD0du5OQbHSvKh3PhYvMLnXb4q7rOgeB0ihdf
 DZZWUVn4DYRM/ROA3DhKFQrigI4pTTBeEWAPJ+T9z+7zF0wlYlhvVL5xFeTWSyjdyo
 Cm4EqGshnNXKe3ReBXEgmf3ygOeWn5n5iI2tldiY=
Date: Sun, 24 Jul 2022 17:54:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumya Negi <soumya.negi97@gmail.com>
Message-ID: <Yt1rQ8Ft5klOOENg@kroah.com>
References: <20220724132107.1163-1-soumya.negi97@gmail.com>
 <Yt1NVQEOC6Ki3eUI@kroah.com> <20220724153448.GA2608@Negi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220724153448.GA2608@Negi>
X-Spam-Score: -5.7 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote:
 > On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote: > > On Sun, Jul
 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote: > > > Fixes Syz [...] 
 Content analysis details:   (-5.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oFdwW-0004DL-Fl
X-Mailman-Approved-At: Mon, 25 Jul 2022 20:07:56 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Ensure $Extend is a directory
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote:
> On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote:
> > On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
> > > Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> > > https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> > > 
> > > Check whether $Extend is a directory or not( for NTFS3.0+) while loading
> > > system files. If it isn't(as in the case of this bug where the mft record for
> > > $Extend contains a regular file), load_system_files() returns false.
> > 
> > Please wrap your changelog text at 72 columns like your editor asked you
> > to when writing this :)
> 
> I will correct the changelog(Don't think I can wrap the bug report
> link. Checkpatch will still give a warning. Is that okay?).

Yes, do not wrap links.

> > > Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> > > Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
> > 
> > What commit caused this problem?  What Fixes: tag should go here?
> 
> I don't think this was caused by any specific commit.The $Extend
> directory check is not present in any previous releases. Syzbot has
> also not been able to produce a cause bisection for the bug. So no fixes
> tag(please correct me if I am wrong).
> 
> > Should it go to stable kernels?  If so, how far back?
> 
> Since the NTFS extension file was new to NTFS 3.0, perhaps the patch 
> should apply all the way back to the first release with NTFS3.0 support?

Yes, mark it there.

thanks,

greg k-h


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
