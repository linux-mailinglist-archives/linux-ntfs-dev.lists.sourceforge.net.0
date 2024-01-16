Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A36E82ED5D
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Jan 2024 12:06:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPhH7-0002iA-Km;
	Tue, 16 Jan 2024 11:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rPhH1-0002i3-MD
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 11:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4oH2E13sbaIFDqiTldut906+Zx4lVXbk6zz38uHysCI=; b=Qm8ea14AhD0psg8isTV01eyHNz
 pU1Q/diSC1DBGPWvsZT7qbIiioyZZNwIgBD1ZSwzjRTvqbSTDgcGdE8xTixHBFaNMoKI17wJtq6jY
 2Kcp0f4lnsjBLUlS2W/3jSjoQ2sBjGV5gj6Qr727UcV+JfQXueAqzJDoxTpz4HF6EUKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4oH2E13sbaIFDqiTldut906+Zx4lVXbk6zz38uHysCI=; b=dkoe3QJZuG4MMrIMxeW1LZm/hB
 sB4NPgRoy00YR07ZgR2Pqs/9PQk4TbHvTOUbO7r0avpQ3LBisWmWbrfeom0NXXfHcs9EBofkOCBx+
 ntk4awmL7U/jvjOsl0hLUy9bXenD4+LV0OeyCSB4mXoB4+CtlRatPcnhywlOBd8sXx5U=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPhGz-0007fw-PG for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 16 Jan 2024 11:06:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 863C56118E;
 Tue, 16 Jan 2024 11:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30D95C433F1;
 Tue, 16 Jan 2024 11:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705403180;
 bh=uUMkNzEGzC01p9em3PYSihIKIEGIjdqiW4cv0+lcKdg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CTmqgMWseGzuSl0x3yhZmdg+gDQYoPqmcrVI+df4VL7ogMAlu0ohWdNhkhPxlmsjE
 zNIXWjhVgYLBpsrm1qA6x7eZz7l6wnck2cbyVPTNnfYpznL+j2IpJbeRhep34oSemX
 y2zk7+yxwTgy1h+saMuu8tnIrJ48cn1Ji/POtfvJAgCFLYGlX5Cmw7yZPZZrMUAgL+
 BHy09rIh6rYNWSCPqwfiHEXoEH9aogowPLnKbSi/5v3x6LHoKFCzw2Kp239d/ohIAq
 KbIGiyfJBC8oBYKzpgORhbCpLOxKvOf9e4V1xyaz8FgTP9ohgpM+jOk8Bdptcrh4ev
 6ANFlrmIvZvXQ==
Date: Tue, 16 Jan 2024 12:06:15 +0100
From: Christian Brauner <brauner@kernel.org>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <20240116-gutgesinnt-autodidaktisch-d1ac1d2f8253@brauner>
References: <20240115072025.2071931-1-willy@infradead.org>
 <20240116-fernbedienung-vorwort-a21384fd7962@brauner>
 <1B634C72-9768-43E9-93B6-3396CBAA958E@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1B634C72-9768-43E9-93B6-3396CBAA958E@tuxera.com>
X-Spam-Score: -7.0 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov
 wrote: > Hi, > > It seems there is consensus to remove it so please add:
 Well, we'll try. This is one of those cases where we might end up not being
 able to do it. But imho this is a case where there's sufficient reason to
 at least try and remove this code precisely becaus [...] 
 Content analysis details:   (-7.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPhGz-0007fw-PG
Subject: Re: [Linux-ntfs-dev] [PATCH] Remove NTFS classic
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
Cc: Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Jan 16, 2024 at 09:51:47AM +0000, Anton Altaparmakov wrote:
> Hi, 
> 
> It seems there is consensus to remove it so please add: 

Well, we'll try. This is one of those cases where we might end up not
being able to do it. But imho this is a case where there's sufficient
reason to at least try and remove this code precisely because we have an
alternative implementation that's been around for a while.

IOW, this isn't like reiserfs where we're actually getting rid of a
filesystem completely.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
