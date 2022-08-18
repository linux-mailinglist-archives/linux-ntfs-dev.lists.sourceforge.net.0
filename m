Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B0F598040
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Aug 2022 10:42:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oOb73-0000Bi-Q3;
	Thu, 18 Aug 2022 08:42:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ritesh.list@gmail.com>) id 1oOXiY-0000Ca-1D
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9LcEe7zEKnk+9IZlOILIvCS3X4aqgzROjS1RylQ0vk=; b=OPkBCv8azPok1U/0Kf3nbv7sA9
 OH9ay9Q6kp86EP9VVaw+eTtXKsyRbfSnG4ZofT6EamK2qqx3c/oDYCYIaZuHeZSEM9FFqzVqtwdOy
 60lhGLMZ6NY6QQOBmSDlIivh2fKgt9DpDBt2KMdHtZgsOAnPkqriOVZPZV6UIuXRhI8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H9LcEe7zEKnk+9IZlOILIvCS3X4aqgzROjS1RylQ0vk=; b=WjxnbEIL+6Ktcl47Ls4uYz5Nkl
 lYJOl2HwnreC5wCvHxqmltHv0M85WnWGeOXi5eIhkX9Yk/MQN4L2mqA/3jITxkCqL7Lwu1T3pNexq
 6hg8CnHQ28QvMnxaUC9SIVGXdwZlXqFo6fxOFoSTKw94aXqLx1dCg2IAFXcMxYvhe0mQ=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oOXiU-007Qkt-Di for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:17 +0000
Received: by mail-pj1-f54.google.com with SMTP id
 o5-20020a17090a3d4500b001ef76490983so755300pjf.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Aug 2022 22:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=H9LcEe7zEKnk+9IZlOILIvCS3X4aqgzROjS1RylQ0vk=;
 b=O/GJsSfPhcy+Of5V4UT7yETG3vCUIKm/Q238ob/rxctPqNVehoIR3RmJ3RgcRUdpcX
 S4UZK+IlX5dnQkYXUh1o+/CuHKEyQNWWH42EF+o/gUCvH9OujxjeshxB7zJzAgMh2cOa
 fhtH/xMYrjyIjNqrmJScuPl5rjE1aSbs/TpHCllSyhfGYNZfuvf0PBbYhoV2rUIx2Ekt
 7ATiy8SBxZslgNESHJSYxSGzlKu1esTYc9xgwghrgNkCshhAUtwvN8wH8mgrem0E6EUT
 LQuMnIs1J7vLeS8jyyEivfyHK/+dpG+ONneCI6HVNVCFFtsb8fYOI72H91fSE7kbJvwH
 4P0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=H9LcEe7zEKnk+9IZlOILIvCS3X4aqgzROjS1RylQ0vk=;
 b=Uxi93szwHOH9hlzBZq/n/7gYaCM2KaJA0XmFXAVHqUdda1r46FETi5vVExhjjhyi2Y
 mWpzbKDzQtaxrBeJmbe+X0mdGzNURLdA79G+WQBWZMwXWi9O8IR9GDqG4FAgQ2Ur4/Z+
 zD7YHR+n899PVIRapcRkrxotoP27Okn+q156C7EwjX884rN5LNPeO9jwy76IWMUUlqIj
 pNsSXLFOhSAr1LuZ9t7F2QjVRlPPhO+0yTENwoZM0x35Mvu4vypQr3vlRyA0jhuFg+bg
 ako339kFpWcMIGJd48OLGnG9aRpuEt8klJlF3z2aigv5qjsg69HO178IYgpW9YIbSscm
 uqvA==
X-Gm-Message-State: ACgBeo3Ynp3MGYKzYdo5K7aU3loLiP0l4TDRRzbxzd+wcCswl2JUxwNl
 18VIa+NlKQ4MzA5VTCnQD00=
X-Google-Smtp-Source: AA6agR4nrtFCShyY4xJTyNMckutRPqP+qbkHjfhCB1bh7rFxF4YlvMnYZf+6wwEr1XuCgxsoFOlsmQ==
X-Received: by 2002:a17:90a:c782:b0:1f7:a4ed:11a1 with SMTP id
 gn2-20020a17090ac78200b001f7a4ed11a1mr1413246pjb.12.1660799108853; 
 Wed, 17 Aug 2022 22:05:08 -0700 (PDT)
Received: from localhost ([2406:7400:63:e947:599c:6cd1:507f:801e])
 by smtp.gmail.com with ESMTPSA id
 b19-20020aa79513000000b0052e26b8f610sm468903pfp.89.2022.08.17.22.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Aug 2022 22:05:08 -0700 (PDT)
From: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
To: linux-ext4@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Thu, 18 Aug 2022 10:34:38 +0530
Message-Id: <d82eb29e8dbc52fe13a7affef5c907ea4076aa31.1660788334.git.ritesh.list@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1660788334.git.ritesh.list@gmail.com>
References: <cover.1660788334.git.ritesh.list@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: submit_bh always returns 0. This patch drops the useless
 return
 value of submit_bh from ntfs_submit_bh_for_read(). Once all of submit_bh
 callers are cleaned up, we can make it's return type as void. Reviewed-by:
 Christoph Hellwig Reviewed-by: Jan Kara Reported-by: kernel test robot
 Signed-off-by:
 Ritesh Harjani --- fs/ntfs/file.c | 4 ++-- 1 file changed, 2 insertions(+),
 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oOXiU-007Qkt-Di
X-Mailman-Approved-At: Thu, 18 Aug 2022 08:42:46 +0000
Subject: [Linux-NTFS-Dev] [PATCHv3 2/4] fs/ntfs: Drop useless return value
 of submit_bh from ntfs_submit_bh_for_read
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
Cc: "Ritesh Harjani \(IBM\)" <ritesh.list@gmail.com>, Jan Kara <jack@suse.cz>,
 kernel test robot <lkp@intel.com>, linux-ntfs-dev@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jan Kara <jack@suse.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

submit_bh always returns 0. This patch drops the useless return value of
submit_bh from ntfs_submit_bh_for_read(). Once all of submit_bh callers are
cleaned up, we can make it's return type as void.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Jan Kara <jack@suse.cz>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Ritesh Harjani <ritesh.list@gmail.com>
---
 fs/ntfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index 58b660dbbee9..c481b14e4fd9 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -527,12 +527,12 @@ static inline int __ntfs_grab_cache_pages(struct address_space *mapping,
 	goto out;
 }
 
-static inline int ntfs_submit_bh_for_read(struct buffer_head *bh)
+static inline void ntfs_submit_bh_for_read(struct buffer_head *bh)
 {
 	lock_buffer(bh);
 	get_bh(bh);
 	bh->b_end_io = end_buffer_read_sync;
-	return submit_bh(REQ_OP_READ, bh);
+	submit_bh(REQ_OP_READ, bh);
 }
 
 /**
-- 
2.35.3



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
