Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2883887101
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Mar 2024 17:39:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rnhvh-0005Pw-4X;
	Fri, 22 Mar 2024 16:39:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rnhrO-0005Kg-QA
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 22 Mar 2024 16:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MErBleQEYzs7mQ+EADpYf8JTzUCq7hrKcdrgXruLDRc=; b=kjPJ7wlcLX9wqaldy2zlPd5f+2
 jIbfbh2jdxEcC2o9E6ZLYOZ4nwfnavilCBvAiy84TRXnDyBsKFJzS0/L1xfj0WdzFuddBSf04yL3r
 3VQ5/u7wXaB214ZT++ACjoAVTfFUM5JMxi55qkAgyQySFOPonyuuuF5B8UERCaDTwMsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MErBleQEYzs7mQ+EADpYf8JTzUCq7hrKcdrgXruLDRc=; b=J5+h+cW5ogwj+QPjt/fIo7sVDe
 LYEcWOK87Jy8HLsAC5apnrpXs0Ux/Glzx+XfnANgwyrXbimcCzx5VZnDKUi8+ApoAyPPbJYWH7iJH
 CwSD1kHI5G5cq1qYf4g3N2+UdcoBWS87UayobXcZwXVvb0aElP3EQKDJnMkGRPhVFCkU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rnhrK-0005g5-NZ for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 22 Mar 2024 16:35:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5809B6145B;
 Fri, 22 Mar 2024 16:35:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E76F9C433C7;
 Fri, 22 Mar 2024 16:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711125299;
 bh=Cm01Q1014eD7bi3Ghg+OrTnDa1xuGXQVz909MO6xnV0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oilfk1zhhkn6/QOWDSz8/xIOh7J5NgEpjruYLPRoOiQu7qb+7CCiRMJ6HGhhZ3G37
 22WO4Fni5z3Nn7DxP/5MjqDRY7el+s5C9bv1JZLU3yPq9l2G/H2M5wDVc+w63r7+qr
 gRkiw253U2LkRccgdcHyUFCWWFGf7Aj3XuXLGbxiLUJ4iJjg8uEi6i5CfxoXwxh4G/
 o8LVa3+Z9Eu1eszg90WUqbizm0iKL+6ux4d7yM2nI8UlJC3wYW+t6pHNq52RMjk9qD
 YY2utGSjPSnX9dN/R6u1dKE9EPLmLyWFf3JI9xM26pzu+T+qh+sMa8wrSsM7V8LRf+
 KI6AYxOrY3dTQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rnhrJ-000000002rv-2vlb;
 Fri, 22 Mar 2024 17:35:09 +0100
Date: Fri, 22 Mar 2024 17:35:09 +0100
From: Johan Hovold <johan@kernel.org>
To: Christian Brauner <brauner@kernel.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
References: <20240115072025.2071931-1-willy@infradead.org>
 <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 16, 2024 at 10:33:49AM +0100, Christian Brauner
 wrote: > On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:
 > > The replacement, NTFS3, was merged over two years ago. It is [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rnhrK-0005g5-NZ
X-Mailman-Approved-At: Fri, 22 Mar 2024 16:39:40 +0000
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
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Jan 16, 2024 at 10:33:49AM +0100, Christian Brauner wrote:
> On Mon, 15 Jan 2024 07:20:25 +0000, Matthew Wilcox (Oracle) wrote:
> > The replacement, NTFS3, was merged over two years ago.  It is now time to
> > remove the original from the tree as it is the last user of several APIs,
> > and it is not worth changing.

> I see no reason to not at least try and remove it given that we have
> ntfs3 as a replacement. Worst case is we have to put it back in. Let's
> try it.

This patch breaks boot of my Lenovo ThinkPad X13s where I have an fstab
entry to access firmware from the original Windows partition; ended up
in some kind of systemd emergency mode.

Fix is easy enough once I figured out what broke, but requires changing
the fs type from 'ntfs' to 'ntfs3' in the fstab (after enabling NTFS3 in
the kernel config).

Is it possible to provide an alias or something to avoid breaking
people's machines like this? Perhaps something is needed for the Kconfig
too.

I also now get a bunch of warning when listing the root directory:

[   68.967970] ntfs3: nvme0n1p3: ino=130d6, Correct links count -> 1.
[   68.969137] ntfs3: nvme0n1p3: ino=13a, Correct links count -> 1.
[   68.969798] ntfs3: nvme0n1p3: ino=3ad, Correct links count -> 1.
[   68.970431] ntfs3: nvme0n1p3: ino=3d9, Correct links count -> 1.
[   68.971150] ntfs3: nvme0n1p3: ino=26, Correct links count -> 1.
[   68.971780] ntfs3: nvme0n1p3: ino=eb, Correct links count -> 1.
[   68.972263] ntfs3: nvme0n1p3: ino=1ce, Correct links count -> 1.
[   68.973062] ntfs3: nvme0n1p3: ino=a608, Correct links count -> 1.

Flagging this as a regression so that Thorsten is aware of it:

#regzbot introduced: 7ffa8f3d3023

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
