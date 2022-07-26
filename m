Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F59A5819F2
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 26 Jul 2022 20:48:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oGPby-000215-UV; Tue, 26 Jul 2022 18:48:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1oGNbl-0007p8-9h
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 26 Jul 2022 16:40:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CAdR0Z7vfqoCjKWe81QkPas6Q51Q3xNBYLzsotw3GrQ=; b=GmKlCZOayeoF4RhX4qsmDUqhuz
 MgSpvWfFmOpR19WlTeTE8d+N2DaqfqM76rQigks5XRkXTTyeRGA4Fnsp95J79RhSjYKD0QTvzi0nw
 Sekb37YLzyTD8Yc27OkCNoTi2Q6IFeeG3Ep3c2AT/ZtNZZhSh2iYk+F8+IpP7IBelgMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CAdR0Z7vfqoCjKWe81QkPas6Q51Q3xNBYLzsotw3GrQ=; b=XI+Q37KmLgKaOBMEHDjL0tUxlz
 zOrzihB/yv8iPIbOB8r/PPxe/AfXAumSUGahLgTcchbqyeo7ybLfSjG4GGmQc7QYepEDbKlymHa74
 bbXxsWtcAKQIq5XHZeZj+w/JzRIp4g6FARbfwZdI1YYmlQCwrccLzA4wgFKzAcSPdK6U=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oGNbf-0004dT-Kb
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 26 Jul 2022 16:40:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 32A04615FB;
 Tue, 26 Jul 2022 16:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33DECC433D6;
 Tue, 26 Jul 2022 16:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1658853621;
 bh=SqugJWMS0G3TH6g4CPPFAQmpuiXRP4YIautk74KGKR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pPEOsM587tS/xIay3ZUHlfGxy9/L4Znb20on1v4gJRiMyCq4/x/GhieD6rjJ8T6EY
 PR2oXMu68VV0nqkMf8HNX03jqgs2xo7+wLhpdmwU9hEzKdvZI7jSKZeVAvFgijQs2S
 lY1BJtR9LE2ByL28lHKroDNXMOtJZZygVa8W4NiA=
Date: Tue, 26 Jul 2022 18:40:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumya Negi <soumya.negi97@gmail.com>
Message-ID: <YuAY82/guMFRnfHu@kroah.com>
References: <20220724132107.1163-1-soumya.negi97@gmail.com>
 <Yt1NVQEOC6Ki3eUI@kroah.com> <20220724153448.GA2608@Negi>
 <Yt1rQ8Ft5klOOENg@kroah.com> <20220724221745.GB2608@Negi>
 <20220725190656.GA14927@Negi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220725190656.GA14927@Negi>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jul 25, 2022 at 12:06:56PM -0700, Soumya Negi wrote:
 > Hi, > > On Sun, Jul 24, 2022 at 03:17:45PM -0700, Soumya Negi wrote: >
 > On Sun, Jul 24, 2022 at 05:54:43PM +0200, Greg KH wrote: > > > O [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1oGNbf-0004dT-Kb
X-Mailman-Approved-At: Tue, 26 Jul 2022 18:48:52 +0000
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

On Mon, Jul 25, 2022 at 12:06:56PM -0700, Soumya Negi wrote:
> Hi,
> 
> On Sun, Jul 24, 2022 at 03:17:45PM -0700, Soumya Negi wrote:
> > On Sun, Jul 24, 2022 at 05:54:43PM +0200, Greg KH wrote:
> > > On Sun, Jul 24, 2022 at 08:34:48AM -0700, Soumya Negi wrote:
> > > > On Sun, Jul 24, 2022 at 03:47:01PM +0200, Greg KH wrote:
> > > > > On Sun, Jul 24, 2022 at 06:21:07AM -0700, Soumya Negi wrote:
> > > > > > Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
> > > > > > https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
> > > > > > 
> > > > > > Check whether $Extend is a directory or not( for NTFS3.0+) while loading
> > > > > > system files. If it isn't(as in the case of this bug where the mft record for
> > > > > > $Extend contains a regular file), load_system_files() returns false.
> > > > > 
> > > > > Please wrap your changelog text at 72 columns like your editor asked you
> > > > > to when writing this :)
> > > > 
> > > > I will correct the changelog(Don't think I can wrap the bug report
> > > > link. Checkpatch will still give a warning. Is that okay?).
> > > 
> > > Yes, do not wrap links.
> > > 
> > > > > > Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
> > > > > > Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
> > > > > 
> > > > > What commit caused this problem?  What Fixes: tag should go here?
> > > > 
> > > > I don't think this was caused by any specific commit.The $Extend
> > > > directory check is not present in any previous releases. Syzbot has
> > > > also not been able to produce a cause bisection for the bug. So no fixes
> > > > tag(please correct me if I am wrong).
> > > > 
> > > > > Should it go to stable kernels?  If so, how far back?
> > > > 
> > > > Since the NTFS extension file was new to NTFS 3.0, perhaps the patch 
> > > > should apply all the way back to the first release with NTFS3.0 support?
> > 
> > > Yes, mark it there.
> > 
> > Thanks. I will send v2 of the patch. Just want to make sure that the
> > patch will apply to 2.6.11.y before marking it.
> 
> 2.6.11 is where I think NTFS3.0 support was first present and till where
> the patch should go. But I am not able to build 2.6.11 on my system and
> test the patch. I tried the patch on 4.14 and it works. Should I mark it
> to be backported till 4.14 instead?

Say 4.9 and you will get an email saying it failed to apply there when
it gets merged into Linus's tree, and then you can provide a working
patch for us to add to stable.

thanks,

greg k-h


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
