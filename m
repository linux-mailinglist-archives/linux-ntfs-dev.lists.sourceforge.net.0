Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFBF709589
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 May 2023 12:58:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzxoz-0005wf-Ek;
	Fri, 19 May 2023 10:58:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pzxQD-0005kY-QE
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 10:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qMfJGgqacX0I3nrg+u8Kgt7kUSAYEp5XWv6czVR8kag=; b=moZRH+84jFu3Z2B/fv48Mg+oTX
 aYY4urv75SLVh9efhhkokMKlS1bpP3d2QK9HnJ9wF84ASgcPvVP1f1iSz9HUOYVtMhQ6GcG7EARp8
 hu1CirR1zvlU77PeBlE4vreP5XI2k7cu7mdTQUB4Z/gKuLCKE1Fy9KxK+lAfIaAiUuak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qMfJGgqacX0I3nrg+u8Kgt7kUSAYEp5XWv6czVR8kag=; b=ZrlVspVyp6JppBVZj7q+0Cmkhe
 eqDLFFSmFjSnosmjOrYCw+Sgeg97KFHMcmtk8hW/J4+DuxFi8dmnWg1Y0ZrWabqtf5fUu7rOvtR6A
 WXODaRy8gCGu0X41fHtdSbBVGtWot9szQjWYe6DoCExH4cDeSqE6FTspLqt0LQiq8UnI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzxQD-0001rG-Iy for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 10:33:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3447C60EEE;
 Fri, 19 May 2023 10:33:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63459C433D2;
 Fri, 19 May 2023 10:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684492391;
 bh=mOGjMZnCgSKGz4MwVknDBAXCKr0/pq8yWu58crLIgxs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BHag6tVfIs5x60uU+DMSoMIt8MeOFidOM7grO84p+8JWMOrUVZsM6yu4xr04Gc1QP
 cTt6lJmqgm/fkb3QutKf3dhja7F9GO/OBwyxwYW7zDdm4yF8DzqeFbTwdZUTIGETfq
 xsPTrkbrzZ9XxrvsydUJoGkUhcRZZ8SDWFJ5DqLhc8dkNa3oJyRgF1uqqVXr7ZE7VM
 9gF+cNAnOfh/WwOnMIds079D5nEIzo1hNhueYYDf+T+sLe/K0A4guE2DOHkf6PiMKU
 VAbVqMovhHd7834CQNYeNNMnocb78CkK2WyujgR5TlGI11m1ZeCxJE9ajSdMmUyWqV
 OfQTIzVFv9/7A==
Date: Fri, 19 May 2023 12:33:07 +0200
From: Christian Brauner <brauner@kernel.org>
To: Namjae Jeon <linkinjeon@kernel.org>
Message-ID: <20230519-badeanstalt-glitzer-2240f747059d@brauner>
References: <20230518152146.7375-1-linkinjeon@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230518152146.7375-1-linkinjeon@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 19, 2023 at 12:21:46AM +0900, Namjae Jeon wrote:
 > From: Danila Chernetsov <listdansp@mail.ru> > > In
 ntfs_mft_data_extend_allocation_nolock(), 
 if an error condition occurs > prior to 'ctx [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzxQD-0001rG-Iy
X-Mailman-Approved-At: Fri, 19 May 2023 10:58:50 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: do not dereference a null ctx
 on error
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
Cc: linux-ntfs-dev@lists.sourceforge.net, anton@tuxera.com,
 Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, May 19, 2023 at 12:21:46AM +0900, Namjae Jeon wrote:
> From: Danila Chernetsov <listdansp@mail.ru>
> 
> In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
> prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
> 'ctx' pointer in error handling.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Signed-off-by: Danila Chernetsov <listdansp@mail.ru>
> Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>
> ---

I've picked this up. The ntfs list isn't integrated with lore so please
always Cc linux-kernel so I can use standard development tooling to pick
up patches. Thanks!


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
