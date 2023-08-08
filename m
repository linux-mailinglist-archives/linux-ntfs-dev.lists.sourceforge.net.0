Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DD477397E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Aug 2023 12:00:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qTJVn-0002V0-On;
	Tue, 08 Aug 2023 10:00:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qTEQc-00017s-6r
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 04:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tT3Th0/cW0C8QpOpbxiYIDyUxnSvmk/dEVgZXb7Tjac=; b=anp6RcXEEjiz6FY/lFm2W0wX9Z
 9v9wEJIIqZG3SzcqYBXN+abtVaaIoOZarXGtuzEvZcH4H5DwEDazZ3OToS0uHYDROdS4hUwAWAGfs
 gBXe+5xz3AEuz15R7VTPIV0IlK3a2ZfJHFoQsBLxDFan0cpE2Od0Lr7AvdKXcyXz1BCk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tT3Th0/cW0C8QpOpbxiYIDyUxnSvmk/dEVgZXb7Tjac=; b=E
 UzPAIrudAcsVgCJPANUBWbCNdSUQhWlA9t51ltRxif848U4KDXZBVwpV9Ggy7SkyoQCfuhIijID9S
 5ozOpe4dTwJKNoa9DwTq2oDQZZznixjTq77EglP0kRjl8QlhlDCleFSZfHd/02iMKvbD7mUN2YJZM
 YY8B1cAyZNKU2NrM=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qTEQb-00GfuD-EF for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 04:34:43 +0000
Received: by mail-pf1-f169.google.com with SMTP id
 d2e1a72fcca58-686ed1d2594so5059565b3a.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 07 Aug 2023 21:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691469276; x=1692074076;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tT3Th0/cW0C8QpOpbxiYIDyUxnSvmk/dEVgZXb7Tjac=;
 b=qO6dcbNUJ6j2zokQURqtmSsAmbhwBr6zynotQib8X812aQa2IbAN0hlVRyfJmyknxX
 ova3lshoAOsQA0eOPTTKF19RtcYFQR1UNUdPMN1pRAnsrn+KTcXn0EUicDdI6MC9CzR6
 UX3zhNqLNv1Ya7Hm3mMHjw8+KzGgU/HC4z/XqeKGHF+Z/csvSzZkXNgnqmOTfMMW2UwB
 Mn+tO8B51XZA5mb6yX1VA9rAUudR1qk0MP3eesUkyf4yGK2TZyEHFCqwv04WavbpqzsN
 xqOGcKOqQpPgUhj9UW4B6kQeXhtsxG9k84iWQMjVkPP7LZ7vv0Swvu0De/poAEf3CAUI
 sZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691469276; x=1692074076;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tT3Th0/cW0C8QpOpbxiYIDyUxnSvmk/dEVgZXb7Tjac=;
 b=Zn7AnXy3QsrOepsXyyZcnfSOQUE8Bk0ltprDmeIVJ6hQTR+0HNJzIe6T4PdQZHHtTq
 OH3gs8DSuzDAQczSGmQ+WhhrnMAj2OrOvxUkjgBEFiDDIc2p8Ri11cInDW2hBnUIz8BV
 1Grbge7mb6Nj4maCzzGFSsLFb2agaQ6iVuLWIYYSTNFH4wa0z1AOACkp0YseCvVj7xNq
 7Bv/zOJ20EPI5I5LDgMYBqgk2DsJzUVII5Eu6gVXdg+kXEyiukFGIO3VMw5lRXEAwEaU
 I4Jwt2byla6qt1YGOSASjgKuCXptRKuVCode0Kv2DmbbjuYBF+y+eHxq/WpinKloVvNv
 MzKA==
X-Gm-Message-State: AOJu0Yy71X6M8vYsmywW6QIbGuGuzF/u6MxgICDYuBq3T1v0E39SLi8G
 KFxjyDgV5WDQtTBPs/RzfKe3B5oGqXbUMWBo
X-Google-Smtp-Source: AGHT+IEDVzUF/xiLAO/scynI8YtPCMd8bJNj1zeo/rRkV58CULjDs5vKoh76aCZ85kWCLMCO9sTzzQ==
X-Received: by 2002:a05:6a20:96d7:b0:137:a3c9:aaa2 with SMTP id
 hq23-20020a056a2096d700b00137a3c9aaa2mr10921555pzc.30.1691469275697; 
 Mon, 07 Aug 2023 21:34:35 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.176])
 by smtp.gmail.com with ESMTPSA id
 n5-20020a62e505000000b0068779015507sm6978787pff.194.2023.08.07.21.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Aug 2023 21:34:35 -0700 (PDT)
From: Manas Ghandat <ghandatmanas@gmail.com>
To: anton@tuxera.com,
	linkinjeon@kernel.org
Date: Tue,  8 Aug 2023 10:04:05 +0530
Message-Id: <20230808043404.9028-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Added a check to the compression_unit so that out of bound
 doesn't occur. Signed-off-by: Manas Ghandat Reported-by:
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
 --- fs/ntfs/inode.c | 11 +++++++++++ 1 file changed, 11 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qTEQb-00GfuD-EF
X-Mailman-Approved-At: Tue, 08 Aug 2023 10:00:23 +0000
Subject: [Linux-ntfs-dev] [PATCH] ntfs : fix shift-out-of-bounds in ntfs_iget
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
Cc: Manas Ghandat <ghandatmanas@gmail.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Added a check to the compression_unit so that out of bound doesn't
occur.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
---
 fs/ntfs/inode.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..2ee100a7df32 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1077,6 +1077,17 @@ static int ntfs_read_locked_inode(struct inode *vi)
 					goto unm_err_out;
 				}
 				if (a->data.non_resident.compression_unit) {
+					if(a->data.non_resident.compression_unit + 
+						vol->cluster_size_bits > 32) {
+							ntfs_error(vi->i_sb, "Found "
+								"non-standard "
+								"compression unit (%u).   "
+								"Cannot handle this.",
+								a->data.non_resident.
+								compression_unit);
+							err = -EOPNOTSUPP;
+							goto unm_err_out;
+						}
 					ni->itype.compressed.block_size = 1U <<
 							(a->data.non_resident.
 							compression_unit +
-- 
2.37.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
