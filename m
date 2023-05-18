Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0712708517
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 May 2023 17:35:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzffZ-0002tZ-8T;
	Thu, 18 May 2023 15:35:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@gmail.com>) id 1pzfSL-0004Bo-LZ
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 May 2023 15:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FwbRp8Yvfp4lnlHmL0ThiQy8Gd4FV6zFush+GMaqHj4=; b=UugF/50y3qQyer5MoDb0kUMIUI
 3ZGtUQveeXSHuTCCV2dESI0Tf1cLraY6VOOWs9Kbvb8rmwdF3H65tNrO/VuPqClTQ2V+FS4oNhsf/
 nD5HQqwJi0MOf/lk5nyXPVHSzw/GfXtYcdff+sOt3kmrcS/3bhkRgO/yHZVfHxNQCDaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FwbRp8Yvfp4lnlHmL0ThiQy8Gd4FV6zFush+GMaqHj4=; b=F
 LjUwLQVGJqpLmgMQoC3yqddF7Yt89/CiFQVRfz1jWLkNxM8UXH3zI4zehuslZy3zIrFNEAY2oz+Ng
 93Ik57XrIp2Rlk6BdKNQNcOqENDf+Ka8SfsWmFgNlPTdK/gb5uHBpNunpQD1JYWrUVi2CYmB0424r
 /c5eKUodAWKKBeko=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzfSL-00CSzQ-0T for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 May 2023 15:22:17 +0000
Received: by mail-pj1-f43.google.com with SMTP id
 98e67ed59e1d1-24dfc3c662eso1651079a91.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 18 May 2023 08:22:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684423331; x=1687015331;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FwbRp8Yvfp4lnlHmL0ThiQy8Gd4FV6zFush+GMaqHj4=;
 b=CRb3Sns4dTUAqBRPMVqc4eK/Yp4OkJBtoMLBTIhxRbVQa/bXdZCi4MJnNgcuE4eTTi
 +1R+Fxwc5eE8lgWYLF0tvtamB6K8ILobG1PZNFGi7H7UWSyAJFYJsOZOsiXue5O2E3VB
 Q3jho4MvpAVccTDKTX4WnvtiTplWWFNWgkyQcnjYDIg99PYC4ZUZ1emb4ykbqkLgDqxj
 KswQuGQrSJQdmveE9yxYqPXc1kre24t4rLf8yZ9dPY57LTgl1nbmR84lFVNrxwa3Q8eS
 v7OhOiJMW483+/XCjRh2ybkRZUt1OFPC9hEXiDEVlOmeVksuDzPPdCv1Py73r7Vpa7zM
 0wpQ==
X-Gm-Message-State: AC+VfDwm1XR6H14J0LlFWoZTOairwiCOU58Gueue9wD/AwDy808zvXAj
 uBrYXrAZ0/D8Fc4Ob+VLMXAzSTcZm0o=
X-Google-Smtp-Source: ACHHUZ4fdLcaF4Rp7IADIc/k4XFE7ybsnOmwDV2K8u+7KvwyTR+rFTgPDLt4CVhDKLz3ELuB9sGqmw==
X-Received: by 2002:a17:90a:aa02:b0:250:40f5:6838 with SMTP id
 k2-20020a17090aaa0200b0025040f56838mr2705284pjq.30.1684423331117; 
 Thu, 18 May 2023 08:22:11 -0700 (PDT)
Received: from localhost.localdomain ([211.49.23.9])
 by smtp.gmail.com with ESMTPSA id
 y13-20020a17090ad70d00b002500df72713sm1361793pju.7.2023.05.18.08.22.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 08:22:10 -0700 (PDT)
From: Namjae Jeon <linkinjeon@kernel.org>
To: linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 19 May 2023 00:21:46 +0900
Message-Id: <20230518152146.7375-1-linkinjeon@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Danila Chernetsov <listdansp@mail.ru> In
 ntfs_mft_data_extend_allocation_nolock(), 
 if an error condition occurs prior to 'ctx' being set to a non-NULL value,
 avoid dereferencing the NULL 'ctx' pointer in error handling. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linkinjeon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pzfSL-00CSzQ-0T
X-Mailman-Approved-At: Thu, 18 May 2023 15:35:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2] ntfs: do not dereference a null ctx on
 error
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
Cc: brauner@kernel.org, anton@tuxera.com, Danila Chernetsov <listdansp@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Danila Chernetsov <listdansp@mail.ru>

In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
'ctx' pointer in error handling.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Danila Chernetsov <listdansp@mail.ru>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>
---
 v2:
  - Fix the warnings from checkpatch.pl.
  - Remove unneed ctx null check.
 fs/ntfs/mft.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 48030899dc6e..0155f106ec34 100644
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
2.25.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
