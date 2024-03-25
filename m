Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB016889AB8
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 11:34:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rohej-0003JC-KH;
	Mon, 25 Mar 2024 10:34:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rohJF-0002oD-V1
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 10:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1IX2EIc2/2v+YKD/+KhVV4X/UCq3TBwX2S1Rn+uTX6Q=; b=SfcrNa9pW1taBG/cPGLH2Jb5Uj
 ESKCVjwuwLRFqxJFFoQlyJ6UOmlY0FltDelzYhmlt4hpAXeZB01bNvGOwEwDAWuD6RglQAs5fL6zd
 GGdH+wBfq5rSr99HXUVPy1FJesEVjhbPFCXF+TUUW8M6/yGvxhp5/o6su7/wZHHdZ4OY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1IX2EIc2/2v+YKD/+KhVV4X/UCq3TBwX2S1Rn+uTX6Q=; b=fLM9ssgFrdmD+dcsemg/THZcLc
 gl3+RJq4vWnRWRVFCJ95QexmA4zGf5BD2qP7XsUCR+GTO8s+hwP5GNvWmg3cPkinLkjr0WFwdg9Va
 CRALaldTBOJtPeTehvY9DRyL1jrjuhXLWrL0q89w3fPP9qfjcM+rrudcGVZM7Jmlg2LA=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rohJF-0003t6-Kt for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 10:12:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 32733CE02C2;
 Mon, 25 Mar 2024 10:11:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67773C433F1;
 Mon, 25 Mar 2024 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711361513;
 bh=5DDCimfIF8GmFUhKkYwvklJYIym6PIG80Lg75iNgWmI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n8lw9t2QOlSwrp5YkyozPnMMAgWttY3Xo+7rfrZDAYVx21qZ+YcFFR8wpvLPrFNHX
 tKOfte4vqXKXO1cu5shgs4niBN0+dJs+OcgsCagESxftMRBxwQ29GLd/RXRF68sT0J
 qzq8yyaMjraJbv4x3LeZll6/j3wyG4aTW7eTH3wG8rvlfKgj98ew1wjFNJdIP1l8Kw
 rLd7NsHPXYz5A1uxofGkDX+kZK9aURB6+UJcNu/VSjU3+kAR5JI6/rWbtV0mcaDp7n
 AvVtVbUKY7o9AAgq2hHDonKuIJ85NMOcSke5kqEeSJrBCMvmi9a7eR1f0YDBAJ/Ext
 z89v4QRE5xJ+Q==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rohJA-000000000zv-1IrP;
 Mon, 25 Mar 2024 11:12:00 +0100
Date: Mon, 25 Mar 2024 11:12:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <ZgFN8LMYPZzp6vLy@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-faucht-kiesel-82c6c35504b3@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325-faucht-kiesel-82c6c35504b3@brauner>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 25, 2024 at 09:34:38AM +0100, Christian Brauner
 wrote: > This causes visible changes for users that rely on ntfs3 to serve
 as an > alternative for the legacy ntfs driver. Print statements [...] 
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
X-Headers-End: 1rohJF-0003t6-Kt
X-Mailman-Approved-At: Mon, 25 Mar 2024 10:34:15 +0000
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

On Mon, Mar 25, 2024 at 09:34:38AM +0100, Christian Brauner wrote:
> This causes visible changes for users that rely on ntfs3 to serve as an
> alternative for the legacy ntfs driver. Print statements such as this
> should probably be made conditional on a debug config option or similar.
> 
> Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> Cc: Johan Hovold <johan@kernel.org>
> Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
> Signed-off-by: Christian Brauner <brauner@kernel.org>

Tested-by: Johan Hovold <johan+linaro@kernel.org>

I also see a

	ntfs3: Max link count 4000

message on mount which wasn't there with NTFS legacy. Is that benign
and should be suppressed too perhaps?

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
