Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB64745271
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  2 Jul 2023 23:13:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qG4No-00016v-M3;
	Sun, 02 Jul 2023 21:13:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qG2u3-00054S-Kr
 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 02 Jul 2023 19:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6SeZ+LQmOQVt/TSkd3Vz6UburEEZLO3WOtTEppMQpS4=; b=Ri8ovW9Z3fjM69CRqytVZF9XZm
 MB5ruhrGtJfw5MlPrgqUZ0Nv8JbVdc0o77gIpdEW73CyM/oX/phedhYlhZshy8XIUaSM9uXbwtoKi
 3xB06Mg2qfqQ+yfkcmWFpBSrIWDCF1LXh7aco8EutfgXfL1NLRmEvkfs/E1Lb3WRh2CE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6SeZ+LQmOQVt/TSkd3Vz6UburEEZLO3WOtTEppMQpS4=; b=k096hG238YvnLtArdW8wRUR/hr
 fAUUbzvjyrRX/lP2iYmSFQyTSb9iemLi5iaxKaZD6F6bGx/kQG9WGCyFuyExEunNfm7LjpB+S041F
 uyQqde1go2gV2zHYFVCpB07a558/c4bYfHXvEpK7w2Q8bbJIS3cV6jSx6Ckc90mBhW4E=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qG2u0-004Cac-7t for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 02 Jul 2023 19:38:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 42BE560C8C;
 Sun,  2 Jul 2023 19:38:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D806BC433CA;
 Sun,  2 Jul 2023 19:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688326702;
 bh=0Gc8JN2bcaLif+Exbg4sFXgL2Sb5gM6PzQoioJyn+NA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SFOFyjJ0qzFwjLFbOFDU+qwzkbuBfJhXVXYqiaWEbm/kq6PJV1w2qqDXA4on6MPPL
 equbZ0u+Yasad785HLGyL+F3c+lYOlWr47x3dnzJmZGkDuLSGcr4Nji5E/AS37DP5L
 y3ge9Vx6ubDZTcZNfgmAZDctPJs3mjffWQzEo4LJN+s3+y7L6l5tcnwZ68QXgH4tRy
 IuT10FF/TorLZPZRfBbGTj+LK4prIMWcq4gurrhiJuWI3dGRsuBuI+oTZpGsojaG6U
 +MOmRqHMKbHUsIfpkXvb3YSI9Dx8cofZNdm+ZIc1KmOGYWU5SXTckKXOfSJvor76YN
 L++OVp6VjyCkg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  2 Jul 2023 15:38:03 -0400
Message-Id: <20230702193815.1775684-4-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702193815.1775684-1-sashal@kernel.org>
References: <20230702193815.1775684-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.4.1
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Danila Chernetsov <listdansp@mail.ru> [ Upstream commit
 aa4b92c5234878d55da96d387ea4d3695ca5e4ab ] In
 ntfs_mft_data_extend_allocation_nolock(), 
 if an error condition occurs prior to 'ctx' being set to a non-NULL value,
 avoid dereferencing the NULL 'ctx' pointer in error handling. 
 Content analysis details:   (-5.2 points, 6.0 required)
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qG2u0-004Cac-7t
X-Mailman-Approved-At: Sun, 02 Jul 2023 21:13:23 +0000
Subject: [Linux-ntfs-dev] [PATCH AUTOSEL 6.4 04/16] ntfs: do not dereference
 a null ctx on error
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
Cc: Sasha Levin <sashal@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, anton@tuxera.com,
 Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Danila Chernetsov <listdansp@mail.ru>

[ Upstream commit aa4b92c5234878d55da96d387ea4d3695ca5e4ab ]

In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
'ctx' pointer in error handling.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Danila Chernetsov <listdansp@mail.ru>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>
Signed-off-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ntfs/mft.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 48030899dc6ec..0155f106ec344 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -1955,36 +1955,38 @@ static int ntfs_mft_data_extend_allocation_nolock(ntfs_volume *vol)
 				"attribute.%s", es);
 		NVolSetErrors(vol);
 	}
-	a = ctx->attr;
+
 	if (ntfs_rl_truncate_nolock(vol, &mft_ni->runlist, old_last_vcn)) {
 		ntfs_error(vol->sb, "Failed to truncate mft data attribute "
 				"runlist.%s", es);
 		NVolSetErrors(vol);
 	}
-	if (mp_rebuilt && !IS_ERR(ctx->mrec)) {
-		if (ntfs_mapping_pairs_build(vol, (u8*)a + le16_to_cpu(
+	if (ctx) {
+		a = ctx->attr;
+		if (mp_rebuilt && !IS_ERR(ctx->mrec)) {
+			if (ntfs_mapping_pairs_build(vol, (u8 *)a + le16_to_cpu(
 				a->data.non_resident.mapping_pairs_offset),
 				old_alen - le16_to_cpu(
-				a->data.non_resident.mapping_pairs_offset),
+					a->data.non_resident.mapping_pairs_offset),
 				rl2, ll, -1, NULL)) {
-			ntfs_error(vol->sb, "Failed to restore mapping pairs "
+				ntfs_error(vol->sb, "Failed to restore mapping pairs "
 					"array.%s", es);
-			NVolSetErrors(vol);
-		}
-		if (ntfs_attr_record_resize(ctx->mrec, a, old_alen)) {
-			ntfs_error(vol->sb, "Failed to restore attribute "
+				NVolSetErrors(vol);
+			}
+			if (ntfs_attr_record_resize(ctx->mrec, a, old_alen)) {
+				ntfs_error(vol->sb, "Failed to restore attribute "
 					"record.%s", es);
+				NVolSetErrors(vol);
+			}
+			flush_dcache_mft_record_page(ctx->ntfs_ino);
+			mark_mft_record_dirty(ctx->ntfs_ino);
+		} else if (IS_ERR(ctx->mrec)) {
+			ntfs_error(vol->sb, "Failed to restore attribute search "
+				"context.%s", es);
 			NVolSetErrors(vol);
 		}
-		flush_dcache_mft_record_page(ctx->ntfs_ino);
-		mark_mft_record_dirty(ctx->ntfs_ino);
-	} else if (IS_ERR(ctx->mrec)) {
-		ntfs_error(vol->sb, "Failed to restore attribute search "
-				"context.%s", es);
-		NVolSetErrors(vol);
-	}
-	if (ctx)
 		ntfs_attr_put_search_ctx(ctx);
+	}
 	if (!IS_ERR(mrec))
 		unmap_mft_record(mft_ni);
 	up_write(&mft_ni->runlist.lock);
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
