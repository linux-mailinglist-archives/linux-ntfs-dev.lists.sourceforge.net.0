Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B768A5A17
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Apr 2024 20:45:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rwRKp-0003BO-LU;
	Mon, 15 Apr 2024 18:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rwQYH-00032I-Uf
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2o+tlibINR/eZfk6tIXcyjFtJxSng96iNLQnbszTsxc=; b=WSICpjKCm8CHI9cMwge4qflZzr
 DHQCZu99PNEAo5wUdmWOf/HUlECCKi+ifCpZem/kyArwHc+ljKBSBzrzGmcsyGPy/Jk9X2YeGEXkX
 kMcra6Fd2DLIO3duBOx6YKIti6XdaV1xcLY2YA8GyhmmThrtB5yxvSLKPsddlCTOsNEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2o+tlibINR/eZfk6tIXcyjFtJxSng96iNLQnbszTsxc=; b=YMSiV5JNKRfTQKYUTcYU3blan4
 mNdh1KtVDcKG+ZDi4UExpPUfBd3ur08bMMNoUmeEjm82muacDhXfXP9xOEYSyQypQ5oYxY08rkHAf
 VVck6yfUdbqi4eatcGeGFzEovXuVdza82oqlcV4ZBzM5P5NcWrlnkzEecXDZJ/IN38PA=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwQYH-00056S-4W for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Apr 2024 17:55:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CAAB7CE0BA1;
 Mon, 15 Apr 2024 14:16:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0A60C113CC;
 Mon, 15 Apr 2024 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1713190563;
 bh=POUu+BmJw+CBnJ9Kwm3jygYbdus3ecGREVH9HKmuLxE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zm40G7FTBAqwnrlws7v2v3nVZyYf8vrOrlQZMS2vQf/vbjKVwSgydwRZHyhzWB0XU
 MUGX8jzJftacjemMk/R+Otnoqr2D1wKvyeK3BLvY6nlNAY2lr/34WXy0oh8uVd7V67
 w7A03WXDFQtpkDbIdKDyyxzXP+01DTO37kHjVX3Wgsa3xNUVW6amoS23evshg0+nFm
 EiYiG/CIPfzYj/mdVoBMJEkiSzJUZRWEdgv0nMPL3lVNDVS4N7xIGz8BkgQKfaMZKc
 fgDEhwLmQRRbSIF1Ibz0YHj1bd9BLs7UdnzNtjgmKOxhFomMsEDWb2TVSxgjHHr2VR
 YywY5Tg7KByUw==
Date: Mon, 15 Apr 2024 16:15:56 +0200
From: Christian Brauner <brauner@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20240415-warzen-rundgang-ce78bedb5f19@brauner>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
 <20240325-shrimps-ballverlust-dc44fa157138@brauner>
 <a417b52b-d1c0-4b7d-9d8f-f1b2cd5145f6@leemhuis.info>
 <b0fa3c40-443b-4b89-99e9-678cbb89a67e@paragon-software.com>
 <Zhz5S3TA-Nd_8LY8@hovoldconsulting.com>
 <Zhz_axTjkJ6Aqeys@hovoldconsulting.com>
 <8FE8DF1E-C216-4A56-A16E-450D2AED7F5E@tuxera.com>
 <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zh0SicjFHCkMaOc0@hovoldconsulting.com>
X-Spam-Score: -7.4 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 01:42:01PM +0200, Johan Hovold wrote:
 > On Mon, Apr 15, 2024 at 11:32:50AM +0000, Anton Altaparmakov wrote: > >
 > Had a look at ntfs3 code and it is corrupting your volume. Eve [...] 
 Content analysis details:   (-7.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwQYH-00056S-4W
X-Mailman-Approved-At: Mon, 15 Apr 2024 18:45:42 +0000
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Johan Hovold <johan@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Apr 15, 2024 at 01:42:01PM +0200, Johan Hovold wrote:
> On Mon, Apr 15, 2024 at 11:32:50AM +0000, Anton Altaparmakov wrote:
> 
> > Had a look at ntfs3 code and it is corrupting your volume.  Every such
> > message you are seeing is damaging a file or directory on your volume.
> 
> That's what I feared, thanks for confirming.
>  
> > I would personally suggest you modify your /etc/fstab to mount
> > read-only.  If it is getting simple things like this wrong who knows
> > what else it is doing incorrect...
> 
> I fully agree and that's partly also why I asked Christian to make sure
> that the alias fs type is always mounted RO.
> 
> But it seems we have a bigger problem here and should just restore the
> old ntfs driver for now.

Hey Linus,

A brief summary:

The removal of the legacy ntfs driver has caused a regression for some
users that rely on the legacy ntfs driver to be available during boot.
The affected user here is Johan (Cc'ed). In addition he's seeing dmesg
warnings that he didn't see before with the legacy ntfs driver.

I see the following options to resolve this:

(1) Since the ntfs3 driver is supposed to serve as a drop-in replacement
    for the legacy ntfs driver we should to it the same way we did it
    for ext3 and ext4 where ext4 registers itself also for the ext3
    driver. In other words, we would register ntfs3 as ntfs3 filesystem
    type and as legacy ntfs filesystem type. To make it fully compatible
    we also need to make sure it's persistently mounted read-only.

(2) We revert the ntfs driver (for now) as we are in the middle of the
    cycle.

If you decide (2) is the right way to go then I would suggest we try the
removal once more next cycle with the proposed change in (1) in place if
you're up for that.

Christian


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
