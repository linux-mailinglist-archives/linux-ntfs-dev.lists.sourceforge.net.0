Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 485F6291E35
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 18 Oct 2020 21:52:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kUEij-0007Iy-RM; Sun, 18 Oct 2020 19:51:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1kUEIh-0000Ht-Bg
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 18 Oct 2020 19:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g5ng7tnMYg8bCZaNoOk+FTNGsFDCQoBhGqMh9b5uSzI=; b=Z8z5PpRgdLCEcvt7d3ePVLtoY3
 RJnT1fmbXaUE+JrLZ9tnfX2tJEl12vIqD3L2oenV8a4/qSowxit+3AtSrx4O2LMB5i8Eiq20XHsXz
 K7iJhBX/kFq0Ey9jqDKTf2IoSaA9mz1Cb14C3BptcnZU90vRtCE0KRWSHVb5yprIzO0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g5ng7tnMYg8bCZaNoOk+FTNGsFDCQoBhGqMh9b5uSzI=; b=eVIa8ODfQpw6D47TS44LZ/hKm0
 EarQLwVBKoq9PS/U3ZcPKiVqrLk08FnDmP6K4uD5TWlMPTq00lDxzcVkXJCbMTvAaPDpBh3VNiju3
 osgGoQ209gLjBKPd96WYs8rruByc/LVnONzZ01XVG1Y9n57qO8+p+xHTt2TVeHokY0QA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kUEIc-00Esx0-AS
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 18 Oct 2020 19:25:03 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD12A20791;
 Sun, 18 Oct 2020 19:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603049085;
 bh=qi2SWvH8OnbZSAA+Lj4+2USDL3B778JY3OcM72CBu9s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WM+a9xoidlgIT5U3yKMOjZ6nMKitnplzG4z9raxbBKOgYQ36aLml/G7E83BFvP+gZ
 oP4KjC7kk/+f/X3JPAhiO/9FIKgltng4RrpvAw9M3XMoCz1Juis4LSiQwX1HzIK3Ro
 F1ywqaKLp/p2M/9cuVQMZrstej+r/t1ZhRoUFGzM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 18 Oct 2020 15:23:43 -0400
Message-Id: <20201018192417.4055228-22-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201018192417.4055228-1-sashal@kernel.org>
References: <20201018192417.4055228-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kUEIc-00Esx0-AS
X-Mailman-Approved-At: Sun, 18 Oct 2020 19:51:51 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 4.19 22/56] ntfs: add check for mft
 record size in superblock
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
index bd3221cbdd956..0d4b5b9843b62 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1835,6 +1835,12 @@ int ntfs_read_inode_mount(struct inode *vi)
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
