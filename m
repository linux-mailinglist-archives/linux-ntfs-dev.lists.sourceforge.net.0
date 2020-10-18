Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EDF291E30
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 18 Oct 2020 21:52:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kUEij-0007Ia-JC; Sun, 18 Oct 2020 19:51:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1kUEFG-0005yL-D9
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 18 Oct 2020 19:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MdYpqr2TPu5XfT+YCg4kvE0wZrzHlQCykOnpBmAMwhw=; b=jzkNWSsbbpNEkt58/r7Q612t+8
 AVd47l/sxA8FKk5m83NrtUVPuV63TPBBSccXkvRqlvxCySokbEbxx0DWJ8zpFbRT0DBC7TDMSMI64
 KF96aNx2g7GAU0ASk4stJJZjVVyQgoiB98kRxDNDP+DhEqylOe983ymtzOEtf3AgT9yE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MdYpqr2TPu5XfT+YCg4kvE0wZrzHlQCykOnpBmAMwhw=; b=WIKPHkihKxLThWa80h9P9xLP8I
 mr2ojt9HuK04w9MQ8L8V9W9xFyWYwqIejHS/hhrMDpi0XkKmQdHyTT1THqEL28GqaH0G21hlLcHZv
 A8eP0OX8VJqvCu75gSnNIsGyuz8kOVUI+46cOJEtlph4zXcVE29t3TzyOjfxDzKIVKv0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kUEF7-00Eslv-7i
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 18 Oct 2020 19:21:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C22BA22365;
 Sun, 18 Oct 2020 19:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603048868;
 bh=v1Z+kyM00XJqxJX/GQ2PGnu5D3WwgfqCSvSBlCHzPZw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lca/e7GtzBqP4azZKQ40Cog4lt4nLY2lpoV/L6K8Yzbn2K63d+CSdynVf1j6kODdu
 J2fRrL8SBvpHZrGyVT7fCNF18EVIRe4kV+UWzlTmEcAISmRQLBY8G5Uy43ouQCtC/P
 3s/TFRt7mnMesGnx74t56eJraq+e1KUGxCpqyGak=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 18 Oct 2020 15:19:19 -0400
Message-Id: <20201018192026.4053674-34-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201018192026.4053674-1-sashal@kernel.org>
References: <20201018192026.4053674-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kUEF7-00Eslv-7i
X-Mailman-Approved-At: Sun, 18 Oct 2020 19:51:51 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 5.8 034/101] ntfs: add check for
 mft record size in superblock
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
 syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com,
 Rustam Kovhaev <rkovhaev@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Rustam Kovhaev <rkovhaev@gmail.com>

[ Upstream commit 4f8c94022f0bc3babd0a124c0a7dcdd7547bd94e ]

Number of bytes allocated for mft record should be equal to the mft record
size stored in ntfs superblock as reported by syzbot, userspace might
trigger out-of-bounds read by dereferencing ctx->attr in ntfs_attr_find()

Reported-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Tested-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
Acked-by: Anton Altaparmakov <anton@tuxera.com>
Link: https://syzkaller.appspot.com/bug?extid=aed06913f36eff9b544e
Link: https://lkml.kernel.org/r/20200824022804.226242-1-rkovhaev@gmail.com
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ntfs/inode.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index d4359a1df3d5e..84933a0af49b6 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1809,6 +1809,12 @@ int ntfs_read_inode_mount(struct inode *vi)
 		brelse(bh);
 	}
 
+	if (le32_to_cpu(m->bytes_allocated) != vol->mft_record_size) {
+		ntfs_error(sb, "Incorrect mft record size %u in superblock, should be %u.",
+				le32_to_cpu(m->bytes_allocated), vol->mft_record_size);
+		goto err_out;
+	}
+
 	/* Apply the mst fixups. */
 	if (post_read_mst_fixup((NTFS_RECORD*)m, vol->mft_record_size)) {
 		/* FIXME: Try to use the $MFTMirr now. */
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
