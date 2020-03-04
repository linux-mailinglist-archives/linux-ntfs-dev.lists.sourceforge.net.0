Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6249178CD0
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  4 Mar 2020 09:50:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1j9Pjc-0006Vc-FO; Wed, 04 Mar 2020 08:50:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hqjagain@gmail.com>) id 1j9NC6-0006fG-7F
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 04 Mar 2020 06:07:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vttavIy9rw/iv9joksuD3LqxV224U+XKvXc8V3d/N6U=; b=Rp8DM/pHhCK73Pp5sdfGl5Soax
 I5Ao/ZpZdXNZTzfZ6T4Bg9pgTlccS/KnoVKYDWIZ/Y1UHcmVumYzRxpVHsDsVJjmme87mB2zY2Szr
 BQY3Nje1flTuaNBbLDEkVrjo8iWm6QrN4EFhaEfrebITlJsdWBaUYLL0PsTz3vXJzQCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vttavIy9rw/iv9joksuD3LqxV224U+XKvXc8V3d/N6U=; b=kvwnOxo1w7ptbCNIm31XBa4LIM
 i/amT0yrEh7GrzdwQ44yNKf+Uy6hjBjXvT5PANxVkMkPD3do+ql37si70FUzj7UI0wryX3N5as1ue
 tiFu5R6mVU0zRjzgpcZzykb5ONmxXkslGDzupu4sqfbw4m0NraCmcWnyVqc5MgRbc1KA=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j9NC4-00G9RE-BT
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 04 Mar 2020 06:07:46 +0000
Received: by mail-pl1-f195.google.com with SMTP id d9so524646plo.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 03 Mar 2020 22:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vttavIy9rw/iv9joksuD3LqxV224U+XKvXc8V3d/N6U=;
 b=XVR8p2SBDhhSSScyNLYQ+of0Yg0As+tZwm9aaXtfcCbmMlupp49cHGRcxMkOkG37ry
 4B9BRfR6Hp/83Dc7qDdjQFPIlhuTsqnP42FicUfHf+FEaWABzlfcf0LG0wlR7pSPKsOT
 OBPwl7X7HeYN3wt0flfKXkQsIHsBBgYtt+s2p9pgTG4kenFdBi/7D+kxjN8qX1CF6VMK
 29j4llKIE++A6k2fp4zqGSZSLhHIrp7b3+wwC8l98WoSWh0jr+8KPimgJk+F3YdJe3Xb
 k35yXzYKC9WLkKG+1LPHaPq9X8ej/ReuXy582SfOrc9FD4qRfsLD7nP4bCw0f0/3VoWt
 m23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vttavIy9rw/iv9joksuD3LqxV224U+XKvXc8V3d/N6U=;
 b=dkLvw7hht+qaih+HpddE6+s2kS+QrdRulMcxetzLUipBaIIre9P8TncqpAezzKDjvq
 G8+UxF4dPMrKXZw8cGU+5GIfqQ6oqgJeZUIDMhu0WiSKKRgEjRxhTt0629iWHtCHYqKM
 1wdVF63Upw65WVyppjxurLGoKzBlrwBNDujxLPxNisAFVuv56F7AmFemLM1vBqBgBl8J
 cvuF+xNX0d74MgRmGUqenF7p9KPCbtdcbLya5ukBXOUgit99tANZFjuiSg/GMS4Ptsip
 1ReXdfmmXRJ4GcDkHi6IfWCk6gJV+8/FrMeL9YkbSOMR8xAzZKIyAECV0E2pxRFS/WkB
 zuDw==
X-Gm-Message-State: ANhLgQ0Vme96c/oJPaDopE3ditmzHT8eTwL+O9yyZoagHPXywbmtkFos
 rinzuDow4TbgP8JNRzJjBUc=
X-Google-Smtp-Source: ADFU+vuJPShupU8xR/My+s0kwa3YVp9JtDHjI4vdwozPg35taoxGh++zeTC+/e6EtzxrD5jfQug7pQ==
X-Received: by 2002:a17:90a:8042:: with SMTP id
 e2mr1532217pjw.16.1583302058594; 
 Tue, 03 Mar 2020 22:07:38 -0800 (PST)
Received: from VM_0_35_centos.localdomain ([150.109.62.251])
 by smtp.gmail.com with ESMTPSA id m18sm25400051pgd.39.2020.03.03.22.07.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 22:07:38 -0800 (PST)
From: Qiujun Huang <hqjagain@gmail.com>
To: anton@tuxera.com
Date: Wed,  4 Mar 2020 14:07:34 +0800
Message-Id: <1583302054-2615-1-git-send-email-hqjagain@gmail.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hqjagain[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1j9NC4-00G9RE-BT
X-Mailman-Approved-At: Wed, 04 Mar 2020 08:50:31 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove not used variable 'base_ni'
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Qiujun Huang <hqjagain@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

It is not used, so can be removed.

Signed-off-by: Qiujun Huang <hqjagain@gmail.com>
---
 fs/ntfs/file.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index f42967b..e5aab26 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -323,7 +323,7 @@ static ssize_t ntfs_prepare_file_for_write(struct kiocb *iocb,
 	unsigned long flags;
 	struct file *file = iocb->ki_filp;
 	struct inode *vi = file_inode(file);
-	ntfs_inode *base_ni, *ni = NTFS_I(vi);
+	ntfs_inode *ni = NTFS_I(vi);
 	ntfs_volume *vol = ni->vol;
 
 	ntfs_debug("Entering for i_ino 0x%lx, attribute type 0x%x, pos "
@@ -365,9 +365,6 @@ static ssize_t ntfs_prepare_file_for_write(struct kiocb *iocb,
 		err = -EOPNOTSUPP;
 		goto out;
 	}
-	base_ni = ni;
-	if (NInoAttr(ni))
-		base_ni = ni->ext.base_ntfs_ino;
 	err = file_remove_privs(file);
 	if (unlikely(err))
 		goto out;
-- 
1.8.3.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
