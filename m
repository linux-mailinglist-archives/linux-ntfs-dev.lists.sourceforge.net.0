Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A690709587
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 May 2023 12:58:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzxoy-0005wI-NW;
	Fri, 19 May 2023 10:58:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pzwuJ-0000Ha-8P
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 10:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3YQGEF1tQRGV+lvL6GkoaahItpAXWVyRsJVXbyQbYsY=; b=m3mK/mUg+zaqpw+AREfhqQmw4g
 ZxSnINZb1TKXHybsBthwQfCt5F1rubDVS9vjHv6voc1on2r9XW6R01caLzGQyZxYzHGmtHIhMdXYJ
 wsGZUzFWFxfGl2cmss6wsfgYIc+/mCKmm+rQ7ACxM4swB2bGFdKjg3tKMo9JEsNxWi+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3YQGEF1tQRGV+lvL6GkoaahItpAXWVyRsJVXbyQbYsY=; b=WRELEKQmRfaftNQTfut0z8ypBn
 wU4UqOMcrthXDyhwZ+RMjUzbH/pOBf7XTR824DCBg40q6HYAQvCEnrKMtqet8zca0tya9CxtOuQ0z
 tDP0hmE0PYXZeWbGZZhdvtGmXpaWJ/6iz4SVcWehNpVVdqmkCRE6iwv0GZEO7yaTAxXk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzwuI-0000Xm-MY for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 19 May 2023 10:00:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4DBAF64315;
 Fri, 19 May 2023 10:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2443FC433EF;
 Fri, 19 May 2023 10:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684490412;
 bh=Jt01WD+DZmPb38Aqq42Rz3mA4MlJJbpR42M5xl7K4i4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TzlhkBy5dnAiIM8pLXlz+m8/mnihKMtxHPywRC1Fz7daHbSQBBwK10FfbwahvZpPt
 yUj41D0Uno3Lv5IwLf86/foBhzXkEPQitms1aHwvVgHruZ3cRnb8OUHE6uuS+bTXJ6
 x20K502TQC78Mup61yqOWb0aRDYsyQeD7FPddWSafQrplRZK6X95DdgXpr3lCLA87b
 fL/v5p5U93VpKT8jvGtu6tP7fKAHmRZx88GE8BFmyG9MBC0dJoveapFFjEG5eo2HTr
 H5FGJmZJ2U/JCPq/xkgJWmsFYEjKCy2bbr8WUJ15tdB5DZXUIXWD0OfLTXvV5yTy4c
 NxldSBw8ciAkw==
From: Christian Brauner <brauner@kernel.org>
To: anton@tuxera.com,
	Deming Wang <wangdeming@inspur.com>
Date: Fri, 19 May 2023 12:00:06 +0200
Message-Id: <20230519-buchmacher-daten-1b5e5ce7d61f@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230206091815.1687-1-wangdeming@inspur.com>
References: <20230206091815.1687-1-wangdeming@inspur.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=681; i=brauner@kernel.org;
 h=from:subject:message-id; bh=Jt01WD+DZmPb38Aqq42Rz3mA4MlJJbpR42M5xl7K4i4=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaSkeywu2a+St+P9CX7VnmgT87Or1ye/uRux9AWbtMj6zQv7
 7/1Y1VHKwiDGxSArpsji0G4SLrecp2KzUaYGzBxWJpAhDFycAjCRun6GP7xiTFdmtVw5cyzOhGXGI9
 P/k+UPvtaI82Nl/uGn8N84qYiR4bPYi8CPL8pY1XnVOloak3ttdp6d+Tj8erR7ooZImuJ3dgA=
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 06 Feb 2023 04:18:15 -0500, Deming Wang wrote: > We
 should use this replace thie. > > Applied to the fs.ntfs branch of the
 vfs/vfs.git
 tree. Patches in the fs.ntfs branch should appear in linux-next soon. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzwuI-0000Xm-MY
X-Mailman-Approved-At: Fri, 19 May 2023 10:58:50 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: Correct spelling
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
 Christian Brauner <brauner@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, 06 Feb 2023 04:18:15 -0500, Deming Wang wrote:
> We should use this replace thie.
> 
> 

Applied to the fs.ntfs branch of the vfs/vfs.git tree.
Patches in the fs.ntfs branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: fs.ntfs

[1/1] ntfs: Correct spelling
      https://git.kernel.org/vfs/vfs/c/253f3137ebfd


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
