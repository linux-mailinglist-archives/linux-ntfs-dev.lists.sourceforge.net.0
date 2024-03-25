Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E463889572
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 09:28:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rofh9-0000gN-W4;
	Mon, 25 Mar 2024 08:28:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rofh9-0000gD-7u
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 08:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UzvfKIhM3szun0BVqbr7/DewyUgW8BIkv2WRj+7Sefc=; b=l3qbVvdYypuXwjkwsrXx/etWDU
 b+hGRHBKwNIutbhlGoqsGVBLpopSbrQ22XF4t3DLIc0y+/pYycsImMZYYXz+bWys4VcCVEWKehL4f
 pQSYoAJFSsaLMqQIeSQlvq+tMmh5htTgXlo9ryKNpLc5O/Sl4DvC6yr8/dW40obWvzck=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UzvfKIhM3szun0BVqbr7/DewyUgW8BIkv2WRj+7Sefc=; b=COWXF6afTx1topDNph9h01+GFh
 VEeYdOQXhh7CxFwdftv3fFakXwToTpjDaGAMqiFI+B+FiGuCXq08F4YCSu1wNuatmkMAkJ8CJniH6
 ZWiVDOYUY0/6ZyjIJUEbQMBlPh2Xbzro9/TIc2BsHYA8YS0tvWdIxgEXOA9qyRLkIvHg=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rofh8-0004cW-UH for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 08:28:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 19CDCCE10C9;
 Mon, 25 Mar 2024 08:28:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E064CC433C7;
 Mon, 25 Mar 2024 08:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711355311;
 bh=RMBDhtLJFHpfCbaX9R2WGjf18nDYg0WPC7sGTRlkJws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0abnv1e2DCdX9wu4/1zgBQRQ+WknXqlH9QwRLIVjD6t/wrheAkk3iektDmq0QmVx
 fXrAVvmUTyq9BatngAtaSVKYWats+U5O9qcbIQz4GsBQt+FWg3zMC+M90YyN/svuCo
 BMXQ+zwvocKn+Bd2sfxc3Kz8gFjdaMidc9qtSi5o9tIf6WtUln5TrXKCTbsdMSrHfQ
 lMO09G20QnfJYE96Ag5bYgu6VoAMbfursYfW6L3ZquWsNpVuOwGWTjflcr8s1eBsrO
 DjNjSiWI202gx2qK1M+OBHd6uQfVzCct+PcILEZ1IqVFkRoOBkfgGa6d3y4z0B9fWM
 lgd4d5AKtcYGw==
Date: Mon, 25 Mar 2024 09:28:25 +0100
From: Christian Brauner <brauner@kernel.org>
To: Johan Hovold <johan@kernel.org>
Message-ID: <20240325-halbnackt-flutlicht-688f1de80b35@brauner>
References: <20240115072025.2071931-1-willy@infradead.org>
 <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
 <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Mar 22, 2024 at 05:35:09PM +0100, Johan Hovold wrote:
 > On Tue, Jan 16, 2024 at 10:33:49AM +0100, Christian Brauner wrote: > >
 On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rofh8-0004cW-UH
Subject: Re: [Linux-ntfs-dev] [PATCH] fs: Remove NTFS classic
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
Cc: regressions@lists.linux.dev, linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Mar 22, 2024 at 05:35:09PM +0100, Johan Hovold wrote:
> On Tue, Jan 16, 2024 at 10:33:49AM +0100, Christian Brauner wrote:
> > On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:
> > > The replacement, NTFS3, was merged over two years ago.  It is now time to
> > > remove the original from the tree as it is the last user of several APIs,
> > > and it is not worth changing.
> 
> > I see no reason to not at least try and remove it given that we have
> > ntfs3 as a replacement. Worst case is we have to put it back in. Let's
> > try it.
> 
> This patch breaks boot of my Lenovo ThinkPad X13s where I have an fstab
> entry to access firmware from the original Windows partition; ended up
> in some kind of systemd emergency mode.
> 
> Fix is easy enough once I figured out what broke, but requires changing
> the fs type from 'ntfs' to 'ntfs3' in the fstab (after enabling NTFS3 in
> the kernel config).
> 
> Is it possible to provide an alias or something to avoid breaking
> people's machines like this? Perhaps something is needed for the Kconfig
> too.
> 
> I also now get a bunch of warning when listing the root directory:
> 
> [   68.967970] ntfs3: nvme0n1p3: ino=130d6, Correct links count -> 1.
> [   68.969137] ntfs3: nvme0n1p3: ino=13a, Correct links count -> 1.
> [   68.969798] ntfs3: nvme0n1p3: ino=3ad, Correct links count -> 1.
> [   68.970431] ntfs3: nvme0n1p3: ino=3d9, Correct links count -> 1.
> [   68.971150] ntfs3: nvme0n1p3: ino=26, Correct links count -> 1.
> [   68.971780] ntfs3: nvme0n1p3: ino=eb, Correct links count -> 1.
> [   68.972263] ntfs3: nvme0n1p3: ino=1ce, Correct links count -> 1.
> [   68.973062] ntfs3: nvme0n1p3: ino=a608, Correct links count -> 1.

This shouldn't warn because it's correcting this on the fly.

> 
> Flagging this as a regression so that Thorsten is aware of it:
> 
> #regzbot introduced: 7ffa8f3d3023

Thanks for the report. I'll send a fix.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
