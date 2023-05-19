Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 824C1709588
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 May 2023 12:58:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzxoy-0005wD-B1;
	Fri, 19 May 2023 10:58:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pzwtD-0008Dq-Gz
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 09:59:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pbQX3Or2p7nShXJ1Ro41xsC0TkMaZoY25xTof34cNKU=; b=Ffxcs2JPBf27Z3xlRdmUiSYdQp
 KGSMpbhBPjcFFRl/Tc0ZLdDyYsF32Wu7owF0eAC5mL3Fpi60CHSgcHDQj8L5aBOdveepCf/DGgfIZ
 iIjg1Bz6IpMT1QeUL1/wSaRBLx/Pknk8OVQd5OSWXUvwEdF/bWfxxZ6SncI1vPA1urUQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pbQX3Or2p7nShXJ1Ro41xsC0TkMaZoY25xTof34cNKU=; b=DCFJYAdLHwcEb5/gUufI7mEgl1
 T1sh2WMfltzWUZ7btnV4Z6Dlv0R7hqgOKFTsala1X6acr0ePtPtzJOYip1UN9pVzuK1IghLvRX/Z4
 vm03ZP8g78/Mz+KjyshHrobU5n9wfAwmqdxwVJVCgyo8a5nW0tENDWC5+j8rUQLGJeVs=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzwt9-0000Ux-96 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 09:59:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CCFCB64315;
 Fri, 19 May 2023 09:59:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BB74C433EF;
 Fri, 19 May 2023 09:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684490341;
 bh=taTIMr9jPK+Zd1lo1YW0K1V/3LreLJi90/XQv9VeWNg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dhipDJV3vV83zOz7U/RIXoYuXntR94cX5UeqHVLKlmLji3xn+RF9nTQjFTqCFIrDY
 8Ak3q+Orf96kdndVtUawZmT2HEGxAno4Tz7T6Yg5gPR4L5VU/A4n7vbFxy+qkIT6Dx
 ibAqhY/1AU0VrfON4S2E85WYod4DGgsoWSnQifcnVk2vn9iqG1RdfU4CLSJ3vQMr5c
 buDcyO99VhH6VFJ/Ttuj3HWB62sRJWiEXUEdSSYy5QMOiHIozXNVHWh6a5X8Ggtvu9
 XJEHj18zLrIFF5EWgpaI2VmN7oWqpUIBlPSSc/bxBU5zb5/LldX21hz8xyXYwYfG89
 m5qDzsiYZ80UQ==
From: Christian Brauner <brauner@kernel.org>
To: Anton Altaparmakov <anton@tuxera.com>,
 linux-ntfs-dev@lists.sourceforge.net,
 Colin Ian King <colin.i.king@gmail.com>
Date: Fri, 19 May 2023 11:58:53 +0200
Message-Id: <20230519-simulation-eingibt-65cd144d8b8d@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418153607.3125704-1-colin.i.king@gmail.com>
References: <20230418153607.3125704-1-colin.i.king@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1160; i=brauner@kernel.org;
 h=from:subject:message-id; bh=taTIMr9jPK+Zd1lo1YW0K1V/3LreLJi90/XQv9VeWNg=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaSkewRMkU171bn2EMNHm8ev/GWS9lx8+V9wyvKffFmqT5+4
 P7a73VHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjARywmMDC8nLfvsqisQmcisuH6rYk
 GlrM9M+9M87udmtJzjem7//ybD/6SNq2Lt9v68EibBsrI/c7/45tjCqEsbTr1pO5T/PHbpWi4A
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 18 Apr 2023 16:36:07 +0100, Colin Ian King wrote:
 > The pointer cb_sb_start is being initialized with a value that is never
 > read, it is being re-assigned the same value later on when it is f [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzwt9-0000Ux-96
X-Mailman-Approved-At: Fri, 19 May 2023 10:58:50 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: remove redundant initialization
 to pointer cb_sb_start
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
Cc: Christian Brauner <brauner@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, 18 Apr 2023 16:36:07 +0100, Colin Ian King wrote:
> The pointer cb_sb_start is being initialized with a value that is never
> read, it is being re-assigned the same value later on when it is first
> being used. The initialization is redundant and can be removed.
> 
> Cleans up clang scan build warning:
> fs/ntfs/compress.c:164:6: warning: Value stored to 'cb_sb_start' during its initialization is never read [deadcode.DeadStores]
>         u8 *cb_sb_start = cb;   /* Beginning of the current sb in the cb. */
> 
> [...]

Applied to the fs.ntfs branch of the vfs/vfs.git tree.
Patches in the fs.ntfs branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: fs.ntfs

[1/1] ntfs: remove redundant initialization to pointer cb_sb_start
      https://git.kernel.org/vfs/vfs/c/04faa6cfd449


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
