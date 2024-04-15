Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1795C8A4DE9
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 13:42:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwKjc-0001WZ-VP;
	Mon, 15 Apr 2024 11:42:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rwKiv-0005Sv-4x
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 11:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QDxx/PcURiIMvR4fiUPshJU9yqcsta1hXaVIOBwD5zs=; b=eHRfyO/9MN3FnwP18WUHMnSkn9
 Tf5hW3CL/JlahldDgMvJl8g6iVw5os0LpguHuExWGW6XmcdY/6mnIKPSrgKEv7iJwV5giLXZoH1RN
 LcoHMwlxhDVG2muJAa6leNTmQBJuy9/Skqql7mivlKRVltvK5n+z0OrgU2RMGCIdOrLM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QDxx/PcURiIMvR4fiUPshJU9yqcsta1hXaVIOBwD5zs=; b=QpJ1IHBHLiYFHw1wZuIU4+QyQN
 Kfj5I9iDfX3Qi2ssOrUIDUirxG1IfPO0xc+4St/DJ/eqmWtpTj7k3ZLxZcFDdn2eUK+7iPRB/YaBv
 z7eXxQOSGMl0+YbHpdFng+XmRMLUaCzWOHdgT/IIWLJdzYisJNkSIq3ZTXlWRumFtjAs=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwKiu-0007bj-JV for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 11:42:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7D5D660C4F;
 Mon, 15 Apr 2024 11:42:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25FF4C113CC;
 Mon, 15 Apr 2024 11:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713181323;
 bh=Y/Z03HT8kD26aOsWCeyihLa23jj60o45j3+7UDz7iNs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L8esOm+EdLcri3WuHVbCnk6FGeKIJaXsmv384kNL1QT+SRK5CVyxw4WD5DA7QERLk
 ROlWarRIE19j8zCVbpPJdOv8Ih+HdYpQMDbLCI3w7U6ry/Mykat6Iq92qcCnd/oYVm
 yuVMvIZaYD4hbvqEbDca7ihZUk4nwq3yDIrtBHnIp9FEiKHGX9dM7fY3gituXpkU/B
 RV7BKiNHdKXWgsLLOIO6b/VHVceWuN0QpwdBnLNEdjIsiueqcRTmZSj7saHBHWs4MW
 gE9QMHA2le2UM1zgmoOC/H2xRM8rWY8tFTSCJ8BvMi95oSTBNDBz/+ri5BUb6PMTy+
 +JabH/2Aof2Ew==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rwKin-00000000809-0e8X;
 Mon, 15 Apr 2024 13:42:01 +0200
Date: Mon, 15 Apr 2024 13:42:01 +0200
From: Johan Hovold <johan@kernel.org>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 11:32:50AM +0000, Anton Altaparmakov
 wrote: > Had a look at ntfs3 code and it is corrupting your volume. Every
 such > message you are seeing is damaging a file or directory on your volume.
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwKiu-0007bj-JV
X-Mailman-Approved-At: Mon, 15 Apr 2024 11:42:51 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/2] ntfs3: remove warning
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
Cc: Christian Brauner <brauner@kernel.org>,
 Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Apr 15, 2024 at 11:32:50AM +0000, Anton Altaparmakov wrote:

> Had a look at ntfs3 code and it is corrupting your volume.  Every such
> message you are seeing is damaging a file or directory on your volume.

That's what I feared, thanks for confirming.
 
> I would personally suggest you modify your /etc/fstab to mount
> read-only.  If it is getting simple things like this wrong who knows
> what else it is doing incorrect...

I fully agree and that's partly also why I asked Christian to make sure
that the alias fs type is always mounted RO.

But it seems we have a bigger problem here and should just restore the
old ntfs driver for now.

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
