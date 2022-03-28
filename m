Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE104FA797
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 14:21:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndA5e-0001IQ-0V; Sat, 09 Apr 2022 12:21:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nYvG8-0002cx-Ng
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Mar 2022 19:42:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xrt2oo/bJSPSCGbuQxUiTNpdHH/aQDVUDXnAg9p2B2U=; b=M7FjKXiBSvZ69MbNPEUDcOwa+H
 34BLg3EAT+7S9ByUCLwYaVry9md90CbR30aQEq43PVFiN5JFtaA6ylm4CdFDv8kD0ZIWIBp+QX7bs
 ZN6yaSY11dMQZz+t+lAXaROgRDlaVc5Q1WaH1UCbrundpRK/pZCNz5yJt6hHQ5yOmCs8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xrt2oo/bJSPSCGbuQxUiTNpdHH/aQDVUDXnAg9p2B2U=; b=bzOA55YrfL475VCcIhg7sR7utd
 eNX2wArN3Z1sHAtWANKx4tyxNU6oC4IAofcn5MX+Q3ccStZFulspQRT1QM8jGcG+ygkEJbTzVtKkG
 nzx+nTEa1v3ukUvaEukE8+y0wD0Fkje2igY83LqsjgbiW9Etjz1sa1zsGZcC+9vq/754=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYvG4-0006sQ-QW
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Mar 2022 19:42:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E8DF5B811A2;
 Mon, 28 Mar 2022 19:42:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCBE6C34100;
 Mon, 28 Mar 2022 19:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648496545;
 bh=a3X9AFzHlu8+WSu53lKw4fxPUWErvt/B1kO6xdYwI7g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cnTTe1fAu19SzXIsTSttxGcV6hkc2alGPEPZJxOcHZU6z5wyG2mRA5u9SmPFG4QpG
 CjLS898IEBbZsPAmq9D0bqmrz7fDULIYoKAcijcvSYitQUF0Zkb90AHD+4q4HQS78R
 hSxyCYryjiJAHWyKurWa5xKjyCJjno5pK0eVMGPG7YfFoLTNkUsxbDucbVxpEhu/sR
 Q8HiE3Pujwf/kISnaWNJBeIAuSuxmFlTCSsTLRhh2p2rQyTqrJhthiwsDTQqCl6h8U
 ZEZc720YvQ8TYMtx0s+Okj4eyZher526pndPFSybZ/FYNuotdv55uI0va/OA3lW4Jm
 vbPedP2QMg+rw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 28 Mar 2022 15:41:56 -0400
Message-Id: <20220328194157.1585642-21-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328194157.1585642-1-sashal@kernel.org>
References: <20220328194157.1585642-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Dongliang Mu <mudongliangabcd@gmail.com> [ Upstream
 commit 714fbf2647b1a33d914edd695d4da92029c7e7c0 ] ntfs_read_inode_mount
 invokes
 ntfs_malloc_nofs with zero allocation size. It triggers one BUG in the
 __ntfs_malloc function. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nYvG4-0006sQ-QW
X-Mailman-Approved-At: Sat, 09 Apr 2022 12:21:13 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 5.17 21/21] ntfs: add sanity check
 on allocation size
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
Cc: Sasha Levin <sashal@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 Dongliang Mu <mudongliangabcd@gmail.com>,
 syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Dongliang Mu <mudongliangabcd@gmail.com>

[ Upstream commit 714fbf2647b1a33d914edd695d4da92029c7e7c0 ]

ntfs_read_inode_mount invokes ntfs_malloc_nofs with zero allocation
size.  It triggers one BUG in the __ntfs_malloc function.

Fix this by adding sanity check on ni->attr_list_size.

Link: https://lkml.kernel.org/r/20220120094914.47736-1-dzm91@hust.edu.cn
Reported-by: syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
Acked-by: Anton Altaparmakov <anton@tuxera.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ntfs/inode.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 4474adb393ca..517b71c73aa9 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1881,6 +1881,10 @@ int ntfs_read_inode_mount(struct inode *vi)
 		}
 		/* Now allocate memory for the attribute list. */
 		ni->attr_list_size = (u32)ntfs_attr_size(a);
+		if (!ni->attr_list_size) {
+			ntfs_error(sb, "Attr_list_size is zero");
+			goto put_err_out;
+		}
 		ni->attr_list = ntfs_malloc_nofs(ni->attr_list_size);
 		if (!ni->attr_list) {
 			ntfs_error(sb, "Not enough memory to allocate buffer "
-- 
2.34.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
