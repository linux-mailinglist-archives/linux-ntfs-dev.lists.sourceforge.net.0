Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAC85363D0
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 27 May 2022 16:13:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nuai8-0001Iu-3Q; Fri, 27 May 2022 14:13:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <colin.i.king@gmail.com>) id 1nqtdR-0001LT-IJ
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 17 May 2022 09:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=; b=Uf6AOejnQEfpD9OKG+EPUa2673
 K6gFvb5zxiD43mk7MnaZjklBqRWTAtlF0wpbBXDBHVL4IG+bPBidzDKuiFnrK89yMZlbFIjVIRo0N
 E5m0bB9TXlUchRi04AzSJwt75gMTa296TamiChyPYUaZstNvt+GgDJ63kpA+YAQ2xOSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=; b=G
 CiCWc/2WsIuZ4UY4AWm1RvTyvbNkRKlRMbtL+UCJ439VGegl54f7L0FHXi4EyRHb6YJoZgP5Ef9pW
 5Ee1m16hsp9BX+czfyMigZntsPKjy68l62I3jG2ADqAlrzLv3VsE0xccez6K5hjRuiYp+C3+V0jm3
 2eiZ2eaEKeEH+AXI=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nqtdO-0005s2-Ev
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 17 May 2022 09:36:57 +0000
Received: by mail-ej1-f42.google.com with SMTP id ks9so33540488ejb.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 17 May 2022 02:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=;
 b=P7Zet47QTOLxAMMploN/gtFcpCsQahUrwANNEMf5srQdoy0K4SamF3yyncJKNsDWXM
 5776p+7csXvkuXke9lFLjFr67J3ITueWrn9ZBI1jMeZ0KT0JCqDT/leSy0+IKMs4yfvq
 owpKAoUAxZYmrYSkBVhQC3/8/84uNYugqLZ34fco+r4rrHv2J1enCptzzABiESd8Rlvj
 2nFwbEUpuAIMcw7yW3TxsCW2DZmJR2jMXEvk84rbspWa7yNNwsz1EwM7Zhlyq1dQXrrg
 0xa6ObPg/2tq+56ZVl5ZmftEdpjxMJ57E5KffvLAAbhryi/tg6u9BULJzt0ZT5xf6vWg
 ViUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=;
 b=O1vhOQuMvVMwRojEZxjGXTCMNIt1t69aFIB44tNLvbo5vtBVr3hKkqi4ZxuSv08mDD
 5AVdkwo/j3jqxrb3TXF910B8RVQseN6gI2mwypikcUEvLXyBMwLWxmfBZZE4IU8sMFvS
 g8W7FKYjq2d67glDc/hatwiEzaBv58qqJxBKjwCEf4fYAt8ECpWa/poRC3EEhsKei5Lq
 kvRSzEfqIC4uQ734gROddq+HkdvYyE773irunJGlJp7b75xkOmEQXbTtGiMXljVLCr+m
 EleDUvjeyeHp5oXCG5NREHYgQsev01SAkNS6+3pGcQOfRaJ3OlGuWyJieqB8x35AYYM4
 2kng==
X-Gm-Message-State: AOAM5314bPaXxLUrTMUNPrBSnGTnNIQ9mBBYFAXivZa4SJYn0US8J+HN
 lETcbKhjX7B4fVfk1EdtbATYZ/iBgooMcg==
X-Google-Smtp-Source: ABdhPJyudOovXBvAo9oOsyE0ZzGQys4UBYK3amp163if6al1uIl7HOLPapjy43U9xX6w/NLuhOESDQ==
X-Received: by 2002:a17:907:2d8d:b0:6f8:5c3c:7217 with SMTP id
 gt13-20020a1709072d8d00b006f85c3c7217mr19004815ejc.1.1652780208030; 
 Tue, 17 May 2022 02:36:48 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 2-20020a508e02000000b0042617ba63a9sm6730603edw.51.2022.05.17.02.36.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 May 2022 02:36:47 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net
Date: Tue, 17 May 2022 10:36:45 +0100
Message-Id: <20220517093646.93628-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The variable idx is assigned a value and is never read. The
 variable is not used and is redundant, remove it. Cleans up clang scan build
 warning: warning: Although the value stored to 'idx' is used in the enclosing
 expression, the value is never actually read from 'idx' [deadcode.DeadStores]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nqtdO-0005s2-Ev
X-Mailman-Approved-At: Fri, 27 May 2022 14:13:01 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove redundant variable idx
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The variable idx is assigned a value and is never read. The variable
is not used and is redundant, remove it.

Cleans up clang scan build warning:
warning: Although the value stored to 'idx' is used in the enclosing
expression, the value is never actually read from 'idx'
[deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/ntfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index e1392a9b8ceb..a8abe2296514 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -1772,11 +1772,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
 	last_vcn = -1;
 	do {
 		VCN vcn;
-		pgoff_t idx, start_idx;
+		pgoff_t start_idx;
 		unsigned ofs, do_pages, u;
 		size_t copied;
 
-		start_idx = idx = pos >> PAGE_SHIFT;
+		start_idx = pos >> PAGE_SHIFT;
 		ofs = pos & ~PAGE_MASK;
 		bytes = PAGE_SIZE - ofs;
 		do_pages = 1;
-- 
2.35.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
