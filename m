Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFA2706AC1
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 16:15:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzHvg-0007Ac-EY;
	Wed, 17 May 2023 14:15:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pzHDW-0007tl-Tj
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 13:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xYSqugEzEZpgReOgNARFrE6F3nJDHTNq1UwWC5D4R/4=; b=ASOD3pop++KiHO00ci7CGmHmu1
 Yb0rlZ6m0yWh7J732WZZfm7/FtOaub6JrJRK+YA77P7Krr8R/y4uq8nvX6NVs1+vwEJM1o6rLILHU
 6xTrdmDV6ARX7VVjjLe7GJSm6oVByDoWsUzI3IsBPaseVzGZHPr3Ynnog+8AcdYnGKuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xYSqugEzEZpgReOgNARFrE6F3nJDHTNq1UwWC5D4R/4=; b=Gj+Wc/QK2JX2hji7o4wVWvA33D
 /ZiwyTgH8BsvtYhcNCXvkAeV1an85LyETz+sO3vZw3mnIjUIEzvpJolcwwRo5jtAzJ2l/eyS44iD2
 qyYcl1tvOYPeHZYF3q+1+I2NQc5/P1j0m1txrLVA7wpSat9wkfOqatnqVhb+ITvm7Sgg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzHDW-00B5ei-Mh for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 13:29:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 50D3663DCA;
 Wed, 17 May 2023 13:29:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D51C6C433D2;
 Wed, 17 May 2023 13:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684330156;
 bh=rckeJFNJmvcbGCr4vovE1O/hrf3AXgSnOIF5W9XOzL0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kVZUAUSqoy7so6ltYtzhNF85dvBROZaPAeGuF4ukARVF9KHpshU+m2VBLJK/EZYrb
 BZES6B4ArfFV1k5xM6D7OuQnUAxfeLYsGOnvZu+ZNe0HKF/EZk6giz1EuttOI0E/24
 +IbML8AoIS8YBojb5FEGJcpLsdJghh2lpx+fwo8XWZ605G+tKUNas9Ah8QeqUi5IrS
 orXxdtTexz4klAs3NWwaIv6ygRbW8EVGaKCMOeL9IxpqnctL9TS/6jkWwbwapG5R81
 55wM974k/bWByJBED1wy/DWNDAOnA8aBQBmDJUgsBi/mGIP+tiiRwiojUwSqJpcFyB
 PiSE3bwv925Mg==
From: Christian Brauner <brauner@kernel.org>
To: Namjae Jeon <linkinjeon@kernel.org>
Date: Wed, 17 May 2023 15:29:07 +0200
Message-Id: <20230517-aufspaltung-fahren-0e4314f3fe13@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517070739.6505-1-linkinjeon@kernel.org>
References: <20230517070739.6505-1-linkinjeon@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=761; i=brauner@kernel.org;
 h=from:subject:message-id; bh=rckeJFNJmvcbGCr4vovE1O/hrf3AXgSnOIF5W9XOzL0=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaSkXJu9pvnxj+4HHAy6s3YvZcmb3/fpNnP0Ft31epyrjOVj
 ZzrpdJSyMIhxMciKKbI4tJuEyy3nqdhslKkBM4eVCWQIAxenAEzEmoPhn0af2vSpL5UtxP9x5G3qeH
 t0XqBwwtTCgypTNNa6dS9pSWf4p326QJ8rx7rT/LCp9NRuUe/IijXlLkbH8xOfiQiY6aswAgA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 17 May 2023 16:07:39 +0900, Namjae Jeon wrote: > I'm
 volunteering to help review patches for current unmaintained > ntfs filesytem.
 > > Applied to the vfs.misc.fixes branch of the vfs/vfs.git tree. Patches
 in the vfs.misc.fixes branch should appear in linux-next soon. 
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
X-Headers-End: 1pzHDW-00B5ei-Mh
X-Mailman-Approved-At: Wed, 17 May 2023 14:15:00 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: Add myself as a reviewer
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
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 bagasdotme@gmail.com, akpm@linux-foundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, 17 May 2023 16:07:39 +0900, Namjae Jeon wrote:
> I'm volunteering to help review patches for current unmaintained
> ntfs filesytem.
> 
> 

Applied to the vfs.misc.fixes branch of the vfs/vfs.git tree.
Patches in the vfs.misc.fixes branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: vfs.misc.fixes

[1/1] ntfs: Add myself as a reviewer
      https://git.kernel.org/vfs/vfs/c/48524463f807


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
