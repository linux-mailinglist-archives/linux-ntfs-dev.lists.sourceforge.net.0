Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7298831C536
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Feb 2021 03:00:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lBpfK-0005Ks-A4; Tue, 16 Feb 2021 02:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1lBPei-0006nX-8K
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 14 Feb 2021 22:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qdLNJb3inSse6CSVYJiB22jHj3yvabyJ9VxlXaI7xTQ=; b=UXMdWs5o5+juBTXV0+zxtdEhqe
 Av2paWBXX5MordmcYsheXy+pcYLdKFVFzSy8JhO+5mmdOh0yD24semSk1r9fHB/Lj2fDuR7m/TWlo
 J1woiSHvACINa6yErTbssOJA2KHa98k4qpFMSVsLNlbo63iU0mryoUlXrIihlxDbwUqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qdLNJb3inSse6CSVYJiB22jHj3yvabyJ9VxlXaI7xTQ=; b=F
 uNJayA7NpXn3V3zPsEljvyqZsCvOAtWMABo9oXceW1qBQn80k1TZPiExKKK7vOAER3fjLdqLi6mzg
 1UusMOB51nw5VZGysAjQbsfSK5di0DNX8IJfwj1OUhtF7A8EhYN2/oiYNtVPN3W7BNCC5WXmHrn1w
 U2pTs5IVbxmJCZco=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lBPeQ-008uy7-IA
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 14 Feb 2021 22:14:16 +0000
Received: by mail-lf1-f41.google.com with SMTP id f1so7503647lfu.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 14 Feb 2021 14:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qdLNJb3inSse6CSVYJiB22jHj3yvabyJ9VxlXaI7xTQ=;
 b=guPjJGqIqAsDmLr2n3cSflzbvX445lMiq+X/IMg/6mKjAbKsI/nKAYs2FkyT+px5tH
 Jwwgls8hS2qcCa4Znb0cgs8msdI4QDpZsUqgtKpCcPCm4OlZ2A+BvpKDSOr1ESRle20E
 vQrUcWdRddGx+FpCGMibLLGtrKa4UUZAMkayDTw56mcAQYiunZQjuiYl4vdAoRZP1qTb
 D56fJudTDwcke05ClTpG+l2vmeSYDshTNrRjqhHHttV3YO24OJNV0yio5h7QPyZ3gqt5
 ia47sBlxwkNqwQ6b4XNt2RLM+eeTz3GgVKfhuGPhNd243Gsj8PC3zL11MEjYqVuLVXlU
 onOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qdLNJb3inSse6CSVYJiB22jHj3yvabyJ9VxlXaI7xTQ=;
 b=CUctYr7tctQUybzyluNxi1K/gyHG59XAkBglhJlfyrP3dAZSw0HVBInNNkBdx8Qr6Z
 pt1u4o09v6xI8GVg8UFI0mNzhqIc1re1hUR2FY4TB9GGBnRqDL/L80n+r6XTxPihb+xY
 oKYW3iMcag+5c0XmsRz/zjOA1zCQTz9jrVSmsdo97KNxdRDNk2oF4mW0NmCppTEMKxAE
 wB2QLBprMpO0YbCYLvvkoyN1WpxvLr9poAYpVmVzXPd2N3tubo8N4P5wj7eIf+f5Ou62
 bftcii7bvldZ5kKzi32MyAYIKk0GKAKQSRLlH/7FJ+meczpNfxZuAWLuhJzVIt1npRkK
 iJ2Q==
X-Gm-Message-State: AOAM530vOMnxeKdCuAz19TDAnu8mk3EasicUegr5VKaLRcgayciHJFfm
 0K988W28cWiDtJSqQpN8ygo=
X-Google-Smtp-Source: ABdhPJwdRArS1ts3Fc05DPVMr6e61YKjUo5X3R1ZH3kmkjNYYTkKX0Rtgsmlhv8BF1cIzqqE+98LcQ==
X-Received: by 2002:a05:6512:234d:: with SMTP id
 p13mr6933065lfu.87.1613340831866; 
 Sun, 14 Feb 2021 14:13:51 -0800 (PST)
Received: from localhost.localdomain (104.36.148.139.aurocloud.com.
 [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id i18sm2539271lfe.177.2021.02.14.14.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Feb 2021 14:13:51 -0800 (PST)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: anton@tuxera.com,
	linux-ntfs-dev@lists.sourceforge.net
Date: Sun, 14 Feb 2021 14:12:47 -0800
Message-Id: <20210214221247.621431-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBPeQ-008uy7-IA
X-Mailman-Approved-At: Tue, 16 Feb 2021 02:00:37 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: move check for valid resident
 attribute offset and length
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
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

we should check for valid resident atribute offset and length before
loading STANDARD_INFORMATION attribute in ntfs_read_locked_inode()
let's make that check a bit earlier in the same function to avoid
use-after-free bug

Reported-and-tested-by: syzbot+c584225dabdea2f71969@syzkaller.appspotmail.com
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
Link: https://syzkaller.appspot.com/bug?extid=c584225dabdea2f71969
---
 fs/ntfs/inode.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index f7e4cbc26eaf..70745aea5106 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -629,6 +629,13 @@ static int ntfs_read_locked_inode(struct inode *vi)
 	}
 	a = ctx->attr;
 	/* Get the standard information attribute value. */
+	if ((u8 *)a + le16_to_cpu(a->data.resident.value_offset)
+			+ le32_to_cpu(
+			a->data.resident.value_length) >
+			(u8 *)ctx->mrec + vol->mft_record_size) {
+		ntfs_error(vi->i_sb, "Corrupt attribute list in inode.");
+		goto unm_err_out;
+	}
 	si = (STANDARD_INFORMATION*)((u8*)a +
 			le16_to_cpu(a->data.resident.value_offset));
 
@@ -731,14 +738,6 @@ static int ntfs_read_locked_inode(struct inode *vi)
 				goto unm_err_out;
 			}
 		} else /* if (!a->non_resident) */ {
-			if ((u8*)a + le16_to_cpu(a->data.resident.value_offset)
-					+ le32_to_cpu(
-					a->data.resident.value_length) >
-					(u8*)ctx->mrec + vol->mft_record_size) {
-				ntfs_error(vi->i_sb, "Corrupt attribute list "
-						"in inode.");
-				goto unm_err_out;
-			}
 			/* Now copy the attribute list. */
 			memcpy(ni->attr_list, (u8*)a + le16_to_cpu(
 					a->data.resident.value_offset),
-- 
2.30.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
