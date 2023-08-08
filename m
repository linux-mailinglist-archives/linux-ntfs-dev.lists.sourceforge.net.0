Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AAF7739C8
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Aug 2023 12:49:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qTKH2-0001pq-B4;
	Tue, 08 Aug 2023 10:49:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qTJym-0006lC-4N
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 10:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ohd14K5oR+JrF5FR78MmbbdwJ7n6halDzi8bumggJ7I=; b=J3gI3ERNDi7zkJPUYlfyw0WHTK
 v5PvVQweRsq9fBhCqAHInLABAga0cYIbBJX3ARw13tDGEXBeeqCTEiLfwyFPBUrblZZ78g0axGl7p
 5TxjtfbwximR667dE42K9qKzi+Hpg2EgbJfJAJ8CTvnQK+rx6l0j1afe0Pe1dngRefDw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ohd14K5oR+JrF5FR78MmbbdwJ7n6halDzi8bumggJ7I=; b=E2QQeTItE7nUp3/5e/RJ/WtJt/
 lQ0m9g5/OI9vZuPVnJmaYFpq8MpnJ2w6Cwy8USOmTLyaFrRXvHC3qnjFlMCzINfSelj7weShP9p3N
 mWdfes5EIEai1p/hhtfIo+3vt65IwP88HBZoAPX8lhqVPg9QR/oJzCsulT7j4xW2XYgc=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qTJyi-00GuCH-Nc for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 10:30:20 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 46e09a7af769-6bca3311b4fso4397871a34.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 08 Aug 2023 03:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691490611; x=1692095411;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ohd14K5oR+JrF5FR78MmbbdwJ7n6halDzi8bumggJ7I=;
 b=lKLghmyjaleYnZtOL3BsBEBNB7Xarddhnemn+fiVsBgYrgDl86KiPFH2q0mRHUyaiN
 FS4wc+HwYN6blocUFB2hATZWJzI4mwsfOjA9PeUbIQm6IBJigK5wbbFPKpIbqWIRezae
 4T6+yDLm0YEKuMoKDy3MmUqeCJD4QvFhcpeah7V0HAXQ8J5pQ8Lzh3DbI/IuCZILjFrr
 JWlpG6LXiigd8QNMzPq8GWmbzpmjYvMzgFcGeoW0iVvGj1IeQmNub8nLO5aytgo1CvSd
 p1kKwE1yNbn4nEgR8kbWGZKdOuH8TUj4Rn1srw94ZqBTjoAj148+7iaIP0cJ6OINS9jc
 wYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691490611; x=1692095411;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ohd14K5oR+JrF5FR78MmbbdwJ7n6halDzi8bumggJ7I=;
 b=VoC+sECeROKlUHsDeZSTuTa+Lp5YU72l4QqvhZNXopiswWzHqFycTWhfbuIJ1mHkdH
 iNPeburadv5WGUW2Akar51JHLe2nhb1C59eJJbWyRExX+SzbLH2h94opqGQZ9XpvmFuv
 B4KIeAGMjTbKmCnGHsHJiPntEQ78Sgk6++wqq4JhMtA86JZG5+T9Psn2VbBYAzmTi57S
 5ZO4vhHc3w1wsz7w1Ml4+KcsL11JFJd5+QzBBl6v4W3WlaA/4Rbo2ezedMLKvLlgdhaU
 vU7MyVerxoVMnqmEgjRZul0vkXiTfuA4aKZphDKbOh8MbkomgITOB8N5IotoIxzLrmma
 JiNw==
X-Gm-Message-State: AOJu0YyKdagMsqNBj2HUC4dkjRuy44dyFOHbWIzha55bH55D59bH0xpw
 jvSdP4reHsME7rqbVXp9K0A=
X-Google-Smtp-Source: AGHT+IEJkrwzqWUu/RKDr5oW4yXy5UhYxO5LIGeFvcigdoleJ/sRDxBJJ8Urbuxi3n0lOTYGwxRNDw==
X-Received: by 2002:a05:6830:1e0d:b0:6bc:9078:81c8 with SMTP id
 s13-20020a0568301e0d00b006bc907881c8mr11518461otr.20.1691490610989; 
 Tue, 08 Aug 2023 03:30:10 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.175])
 by smtp.gmail.com with ESMTPSA id
 l12-20020a17090aec0c00b002677739860fsm7483268pjy.34.2023.08.08.03.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Aug 2023 03:30:10 -0700 (PDT)
From: Manas Ghandat <ghandatmanas@gmail.com>
To: gregkh@linuxfoundation.org
Date: Tue,  8 Aug 2023 15:59:58 +0530
Message-Id: <20230808102958.8161-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <2023080821-blandness-survival-44af@gregkh>
References: <2023080821-blandness-survival-44af@gregkh>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Added a check to the compression_unit so that out of bound
 doesn't occur. Fix patching issues in version 2. Signed-off-by: Manas Ghandat
 Reported-by: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
 --- fs/ntfs/inode.c | 9 +++++++++ 1 file changed, 9 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qTJyi-00GuCH-Nc
X-Mailman-Approved-At: Tue, 08 Aug 2023 10:49:12 +0000
Subject: [Linux-ntfs-dev] [PATCH v2] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Added a check to the compression_unit so that out of bound doesn't occur.

Fix patching issues in version 2.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
---
 fs/ntfs/inode.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..a657322874ed 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode *vi)
 					goto unm_err_out;
 				}
 				if (a->data.non_resident.compression_unit) {
+					if (a->data.non_resident.compression_unit +
+						vol->cluster_size_bits > 32) {
+						ntfs_error(vi->i_sb,
+							"Found non-standard compression unit (%u).   Cannot handle this.",
+							a->data.non_resident.compression_unit
+						);
+						err = -EOPNOTSUPP;
+						goto unm_err_out;
+					}
 					ni->itype.compressed.block_size = 1U <<
 							(a->data.non_resident.
 							compression_unit +
-- 
2.37.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
