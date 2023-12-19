Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B273F818845
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Dec 2023 14:07:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rFZoi-00052I-0g;
	Tue, 19 Dec 2023 13:07:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rFZog-00052C-Ny
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Dec 2023 13:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8uvLgeCtQubNcILqhfgbBD7y9+WsKsvLHr5ER23Qpz0=; b=QWAZqcgwgjxh5psw02CatxPTbX
 korwamcaicoCYTOvB17lGaHH1B9kXc5g6CP1Lhs9Rgn2GBZ1zVPueHRck67mJcN0QafOGEVGdrEWi
 079E80QlMNZV6fml4ifWY9BnojkFdQVIIe7F02XdGPctnTfy4UpU8MX7h1R4ZXMvIfW0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8uvLgeCtQubNcILqhfgbBD7y9+WsKsvLHr5ER23Qpz0=; b=D3+G0flAU8SwKCE/S9cBex3yjY
 a7js2iZBWzAUQJtZhpqD77ckXD7eECiDvcNSZTwjCWscey++ERgEmCGZ+JKMty52qpXcyW540lbXC
 Dfym+Ka+p2ouLze1r5y6XCB8KyZ1GgOGyMeIauHrWcPlKUolsXd6hxKbzjUBXXzLkoK4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFZog-0000mZ-BY for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Dec 2023 13:07:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id F1F3FB816DA;
 Tue, 19 Dec 2023 13:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EED0C433CA;
 Tue, 19 Dec 2023 13:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1702991235;
 bh=dDa8HGYYMKaUJHXbo4gPTqDJdCPvsm8/sJAF+uyYnz8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VLLRjAtYFN+GJhGaM438RoklTOgEtiU89OchSbVBwGcO1a62xiz3qepwjoDNCTMRS
 kFpBy8AIIw3jpseWA6GtvwKV5FVlUkqEHsWCwUVVvoaRl9VhfmX03GeCyOKKKtAqqG
 UPUcC+JVMwnlsPX/4LR2VV6wcofNSEceeNfSYBlNL4G3JW7YNiF74zAMRSBW+EvvVK
 V02pAvpI4zbxG76rmCtCPFlRThqYUeIyQ5UeQa2niPmBvRD+yoK/vXfg1p2mjlQRZQ
 zqdxbO997rkHyO7HIOx4ghXDrdYgoE0YQg/NffzL9BEwaEzPYksBG3bx04p4PMgNLN
 rBe1wGw5kyb5w==
From: Christian Brauner <brauner@kernel.org>
To: linux-kernel@vger.kernel.org,
	Randy Dunlap <rdunlap@infradead.org>
Date: Tue, 19 Dec 2023 14:07:08 +0100
Message-ID: <20231219-lockruf-passt-c4ac862c57cb@brauner>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231219045414.24670-1-rdunlap@infradead.org>
References: <20231219045414.24670-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1253; i=brauner@kernel.org;
 h=from:subject:message-id; bh=dDa8HGYYMKaUJHXbo4gPTqDJdCPvsm8/sJAF+uyYnz8=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaQ2Tq0W7N7/XWSmyN878/dJCv9bEMI2ZWPjx7ULt9eve
 xW/4BfPwY5SFgYxLgZZMUUWh3aTcLnlPBWbjTI1YOawMoEMYeDiFICJmD9j+F8R0rW3R2B/jNpE
 h392E1yTZKWus2/6KHo3Y/Etb73rTQYM/8vWG89y9D56cM0az6aVj0pZJ6/dZWNTdaREr7FpnUP
 8TwYA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 18 Dec 2023 20:54:14 -0800, Randy Dunlap wrote: >
 Correct the kernel-doc function parameter warnings for function >
 ntfs_dir_fsync()
 to prevent the following kernel-doc warnings: > > dir.c:148 [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rFZog-0000mZ-BY
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: dir.c: fix kernel-doc function
 parameter warnings
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
 Christian Brauner <brauner@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, 18 Dec 2023 20:54:14 -0800, Randy Dunlap wrote:
> Correct the kernel-doc function parameter warnings for function
> ntfs_dir_fsync() to prevent the following kernel-doc warnings:
> 
> dir.c:1489: warning: Function parameter or member 'start' not described in 'ntfs_dir_fsync'
> dir.c:1489: warning: Function parameter or member 'end' not described in 'ntfs_dir_fsync'
> dir.c:1489: warning: Excess function parameter 'dentry' description in 'ntfs_dir_fsync'
> 
> [...]

Applied to the vfs.misc branch of the vfs/vfs.git tree.
Patches in the vfs.misc branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.misc

[1/1] ntfs: dir.c: fix kernel-doc function parameter warnings
      https://git.kernel.org/vfs/vfs/c/be4887a964e2


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
