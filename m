Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D3B889E4B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 13:05:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1roj5C-0002Io-OL;
	Mon, 25 Mar 2024 12:05:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1roj5B-0002Ih-7Y
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 12:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rMllbI5jdDV2yDzkHsbPgHN6QYyCswTT4RLEDDwfXAw=; b=CD4dlPz8SkRXjQ4DUGAMvJQ08X
 8GY17rV6DiBskWYcgdyKaYCM5jgj+JePS62gDjOERxEiH2gCrYKcMK7F3eQ9WzYcYTfy6L+o8Ytn3
 QJ0Wx3px8bKw5zXQ9f6p2tlshJrdNPEJzFxCAgDlrHxFSEDAlL3K+z4zG+3OTxG8BQFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rMllbI5jdDV2yDzkHsbPgHN6QYyCswTT4RLEDDwfXAw=; b=AVO2KvOfo+nw2p44eCcpEkz/0a
 ebSGG+qk1Bidq5GrBZlUqhPlLIWHX4wiDSe7gdIyjStoKv1BuEYlsIXXIOw1ofcirfE8molqn+xh5
 GUxqE4QbWEGLCPt+jXX4F1lnyJ7RNnFWNzbhEh7SsntsQ72U1REmtp6fYwNmm8zwflvo=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roj5A-0001mn-8p for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 12:05:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CB9A2CE1780;
 Mon, 25 Mar 2024 12:05:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D291CC433F1;
 Mon, 25 Mar 2024 12:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711368332;
 bh=/eWTHCGbthMM8s000KyybSQhaxmkfQahpwzNlykKCR0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lam2HJ0nZdB04deN0sWBUNzu9z6Xsvm4NsmTY1g/ji/2bkV5XoQeYV+9ssahTdoDH
 cqdaYdqk3291t3mby8pEoMZKjtbILq080aPI4EzSWDMuJmoARNbRv8SnemPk9hNDnL
 TQ+vAxtz7I2klk1k5CZ1iLVl67TNhCikY9JB6Xn7EiB3lZOyv8MZ962zkDuI1ycFcT
 bOyNimsO4rAQivKaib9fBn1KB5mD2M769B+9DcWMGctRjI7B4O+P/iiOOu04l9I/3n
 C1W76gLtt3wOmIZ8V0QCofGVECD4aJl6sDhIubwVp4EzblUQjVI8HpgpUyGGZLtE5Y
 kDVtVjUWkxIHw==
Date: Mon, 25 Mar 2024 13:05:27 +0100
From: Christian Brauner <brauner@kernel.org>
To: Johan Hovold <johan@kernel.org>
Message-ID: <20240325-shrimps-ballverlust-dc44fa157138@brauner>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
 <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 25, 2024 at 11:12:00AM +0100, Johan Hovold wrote:
 > On Mon, Mar 25, 2024 at 09:34:38AM +0100, Christian Brauner wrote: > >
 This causes visible changes for users that rely on ntfs3 to serve [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1roj5A-0001mn-8p
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
Cc: regressions@lists.linux.dev, linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Mar 25, 2024 at 11:12:00AM +0100, Johan Hovold wrote:
> On Mon, Mar 25, 2024 at 09:34:38AM +0100, Christian Brauner wrote:
> > This causes visible changes for users that rely on ntfs3 to serve as an
> > alternative for the legacy ntfs driver. Print statements such as this
> > should probably be made conditional on a debug config option or similar.
> > 
> > Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> > Cc: Johan Hovold <johan@kernel.org>
> > Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
> > Signed-off-by: Christian Brauner <brauner@kernel.org>
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> 
> I also see a
> 
> 	ntfs3: Max link count 4000
> 
> message on mount which wasn't there with NTFS legacy. Is that benign
> and should be suppressed too perhaps?

We need a reply from the ntfs3 maintainers here.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
