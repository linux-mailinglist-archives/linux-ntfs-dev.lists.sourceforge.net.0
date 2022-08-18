Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EA159803F
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Aug 2022 10:42:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oOb74-0000C0-5c;
	Thu, 18 Aug 2022 08:42:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ritesh.list@gmail.com>) id 1oOXib-0002uE-9S
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lFuT8sSYLisADIw9ypCi2dSipGCRvABVMWuXbHp7qjo=; b=dmURPaLWxVD1uMRKA7Xp+go7wW
 8BY/cMY2sJ7hwLoqkoCRuvxWx7j9d3SIxsjPNlNKC5kVc9STLmiAZCHtXcwnYZZNGJoEKZh4Hpdd0
 xAs8zPLhpXoSgJ3zQOyThmgAgQLdde1L5d/rAVpVMjDqn/onx/7kmE+yWudtTnI4NNYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lFuT8sSYLisADIw9ypCi2dSipGCRvABVMWuXbHp7qjo=; b=Khd9p1LrkZaCs1AD5Fbv/s2ayp
 GS9/TieaYlm13NpjZjYwtO9dkzX/PYBts7Tw+xNuDuaLkRmNV/hqzKyul7bPxxFALfUOtlJS6SneC
 Bh6XrL8FKHjUR5EYZEczycp4y/DV9zx9i3pa/MDUiquO9xjEk+50AjYX3ZqmEzDEPBIs=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oOXiZ-007QlB-E3 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:21 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 x63-20020a17090a6c4500b001fabbf8debfso742300pjj.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Aug 2022 22:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=lFuT8sSYLisADIw9ypCi2dSipGCRvABVMWuXbHp7qjo=;
 b=X0zxD3ZngJqjrX8kUd/aa/EKxd3QJ4ZJS8mx9d3QoEEhujzjKKJkTW4N7x+zbs3gNd
 9SoeKQr1iZugICY2hKCKXK/enkv2R5Pm2Z2JEbRe8V+okITZGaCW9FPphK1iGjqgYVPc
 CTiVlRQKlSDrVf885a7/I+7QeQwXgonXuveQJCACCyjo//48vHBq0KyFawLzag40hr9V
 Rto0b8EqF36V1cvL4b52DOByjqvyZpjGnGkSG7qzLT8KIRwDoNFKEuP9dtAHJOtN9AR5
 Mcbe6SrYtfCAoDKsafGB+ov7oAxkIKGg5EAsgncs6v8649kcePvW/ZanY4XJgtw3aWVU
 iXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=lFuT8sSYLisADIw9ypCi2dSipGCRvABVMWuXbHp7qjo=;
 b=EttGrCjPObzFbKutVo9jyF3iagQQK4SdWzxX5YgoLFaPFpcSaNEKz4UkuGMtA38m9O
 5dPHz0OYmooNDb58qlhJyzF3bXZDbeEQlavJQT3tIuc4g0DDLUn0wDxGz7i5GmlDvrwa
 8vBweMY+m9cTRbcHZTmrdmf209sLVYfooZqa60iDdyvvHuAcqzJRrHw2OVyDFNmxrv1Y
 GuQg1MrKmUIEKgye0RHsqZZalEYHL9kJDMHJSXbzAJYA0swUvY/k5uBNO9uRn9h/yMN1
 NEm8sTn1Au4L6gT6LItxmZzlYDd5/BexUwKwCmWaUg8u2VAzm0QpL/l3BLS+c9Ke6K31
 GeLQ==
X-Gm-Message-State: ACgBeo2K8JjxKil88koSDINc9F/2pFlGm/fIsAt0gKs2V5HTxVZ3KT6N
 e8dx+ZOwK27bXum/OnL0RIk=
X-Google-Smtp-Source: AA6agR5c77dm8IiYPzs/0gbhhy7RFfLV4ONF1BmzOkWorGSf/RPH/2cgmWzAjGAvys1oNQiiiqMrkg==
X-Received: by 2002:a17:902:ab98:b0:172:a566:d462 with SMTP id
 f24-20020a170902ab9800b00172a566d462mr1195248plr.53.1660799113945; 
 Wed, 17 Aug 2022 22:05:13 -0700 (PDT)
Received: from localhost ([2406:7400:63:e947:599c:6cd1:507f:801e])
 by smtp.gmail.com with ESMTPSA id
 w1-20020a170902e88100b0016f196209c9sm343614plg.123.2022.08.17.22.05.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Aug 2022 22:05:13 -0700 (PDT)
From: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
To: linux-ext4@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Thu, 18 Aug 2022 10:34:39 +0530
Message-Id: <a98a6ddfac68f73d684c2724952e825bc1f4d238.1660788334.git.ritesh.list@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1660788334.git.ritesh.list@gmail.com>
References: <cover.1660788334.git.ritesh.list@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: submit_bh always returns 0. This patch drops the useless
 return
 value of submit_bh from __sync_dirty_buffer(). Once all of submit_bh callers
 are cleaned up, we can make it's return type as void. Signed-off-by: Ritesh
 Harjani (IBM) --- fs/buffer.c | 10 ++++------ 1 file changed, 4 insertions(+), 
 6 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.46 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oOXiZ-007QlB-E3
X-Mailman-Approved-At: Thu, 18 Aug 2022 08:42:46 +0000
Subject: [Linux-NTFS-Dev] [PATCHv3 3/4] fs/buffer: Drop useless return value
 of submit_bh
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 "Ritesh Harjani \(IBM\)" <ritesh.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

submit_bh always returns 0. This patch drops the useless return value of
submit_bh from __sync_dirty_buffer(). Once all of submit_bh callers are
cleaned up, we can make it's return type as void.

Signed-off-by: Ritesh Harjani (IBM) <ritesh.list@gmail.com>
---
 fs/buffer.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 55e762a58eb6..c21b72c06eb0 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2801,8 +2801,6 @@ EXPORT_SYMBOL(write_dirty_buffer);
  */
 int __sync_dirty_buffer(struct buffer_head *bh, blk_opf_t op_flags)
 {
-	int ret = 0;
-
 	WARN_ON(atomic_read(&bh->b_count) < 1);
 	lock_buffer(bh);
 	if (test_clear_buffer_dirty(bh)) {
@@ -2817,14 +2815,14 @@ int __sync_dirty_buffer(struct buffer_head *bh, blk_opf_t op_flags)
 
 		get_bh(bh);
 		bh->b_end_io = end_buffer_write_sync;
-		ret = submit_bh(REQ_OP_WRITE | op_flags, bh);
+		submit_bh(REQ_OP_WRITE | op_flags, bh);
 		wait_on_buffer(bh);
-		if (!ret && !buffer_uptodate(bh))
-			ret = -EIO;
+		if (!buffer_uptodate(bh))
+			return -EIO;
 	} else {
 		unlock_buffer(bh);
 	}
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL(__sync_dirty_buffer);
 
-- 
2.35.3



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
