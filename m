Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9411C5575A8
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 10:39:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4IND-0003Lq-BS; Thu, 23 Jun 2022 08:39:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1o4Dse-0003Hr-S4
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 03:51:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SE8Cyd5D2F3Gapqonu8kjnsg469j0MuWbe97VzxGp0Y=; b=nGqV6NH3cZQcCn50/Q02xfo7HE
 JYH9rF3uam6AGudzsvxGfydQA+GntkKvlobm4IyNBLMCCqHdXnFXF6c0qhBK02K3D6EshyyZ8Ol6H
 rRLE3x6f5//LEsHCEpBrMRXL8hQiP9fQ20aXTnmJtdW4Xm98wetkHW3kn1JgzVVeZ54c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SE8Cyd5D2F3Gapqonu8kjnsg469j0MuWbe97VzxGp0Y=; b=JGWkw3y5xMIheA0md9PxfdJ9mR
 aJUaGo/R+W/+ZvQtrPPxICdsL5i1Bk5kEQRYvgduTCPykAfSYU5DlaDa4oLDeMkzZyy75ngGg8vDC
 r92PuoF6GZlFDm3CttNcuOiZJUpITj79iF2Z+Rl2sEuWSaxBZaHCM+FKWqWxJGLodiJI=;
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o4Dsc-0003TE-S7
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 03:51:43 +0000
Received: by mail-pg1-f171.google.com with SMTP id s185so12201550pgs.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 22 Jun 2022 20:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SE8Cyd5D2F3Gapqonu8kjnsg469j0MuWbe97VzxGp0Y=;
 b=mzdriuBZ08DLZXLAn8XMYCJ4traDlEFDGJFl2MWA8LWIAIlzp2d4ST0Wb6RZ7k4SGG
 8NaancbgYYiDNSYXxq5L9xqULz4/3dv2K2VlMLTuL2a5nUBLceDY8Z+7hjgeXlJ7TAV3
 7vwuCbRlha7LlZxkMDQw3OTrVLuw7+1mwA9wMn5GxAmVDyvMooVwNjnppsvgCNNF8byj
 XbsK160moO+Ar7UuyqA4hpXciiFlp9VSTkadud5AkkovAx+UkOhy5Mc7PIFNT/Vrs80T
 r25cShcvPpEcU7HiaRVz7O9wE9U3P1ACWdPU78MRX5luTRdRvjYkO5CwJ+PXNODdePJ6
 hDZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SE8Cyd5D2F3Gapqonu8kjnsg469j0MuWbe97VzxGp0Y=;
 b=JdN9056t/ZhIA07DC6jtwZQ9FL57tgYgLhoDp7zoTZtGvpyptByN++He6/86rxZMg9
 DnWMlXtSqgt3B9GCRFkjQfvggbKYpuhbQYXZ0/3tKTzzQvtd5nvjTkI6W3UwBR1uuImr
 YhwhsK6YgzQaH2zGaluMohdjxA+Cq1iU8JRp6ViQi+VQw/+yxd0cZW+KDsIBN3d1/cXp
 rY94ZIMrSGwNxXSUKloR1pBhsfhPN3/QB9mFFmB4xjiT3PRKk0EUtwslPB6F5RbU6wQa
 PePEruNwFLxIW8RhVZ4+8fX8JoNL7kzrPnMcqMy/IYLfOFpcPp6JdxWeC7UOquHOS9CG
 4kzg==
X-Gm-Message-State: AJIora8Yp4O69dwTFRGzBxS38CC/BXy0Fd7FVWX2zfKWGeweLHeLhipi
 isIr0vlHRS1aUFYoqnvs7RuSwUQAphQ=
X-Google-Smtp-Source: AGRyM1seNpP6PU74KVHMDfnFNv2Yp8QA/MoGChiUdkdh4xJA2T88T+REoG+NB7OEzbDOwVmA4V9F8Q==
X-Received: by 2002:a05:6a00:1a0e:b0:523:1e7c:e26e with SMTP id
 g14-20020a056a001a0e00b005231e7ce26emr38289798pfv.60.1655956297312; 
 Wed, 22 Jun 2022 20:51:37 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 p6-20020a62d006000000b0051b9a2d639dsm4969205pfg.43.2022.06.22.20.51.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jun 2022 20:51:36 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: xu.xin16@zte.com.cn
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net,
 stable@vger.kernel.org
Date: Thu, 23 Jun 2022 03:51:31 +0000
Message-Id: <20220623035131.974098-1-xu.xin16@zte.com.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220623033635.973929-1-xu.xin16@zte.com.cn>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: xu xin As the bug description, attckers can use this
 bug to crash the system When CONFIG_NTFS_FS is set. So remove the BUG_ON,
 and use WARN and return instead until someone really solve the bug. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o4Dsc-0003TE-S7
X-Mailman-Approved-At: Thu, 23 Jun 2022 08:39:33 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: fix BUG_ON of ntfs_read_block()
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
Cc: Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org,
 syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com,
 Yang Yang <yang.yang29@zte.com.cn>, xu.xin16@zte.com.cn,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>, linux-fsdevel@vger.kernel.org,
 Zhang wenya <zhang.wenya1@zte.com.cn>, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: xu xin <xu.xin16@zte.com.cn>

As the bug description, attckers can use this bug to crash the system
When CONFIG_NTFS_FS is set.

So remove the BUG_ON, and use WARN and return instead until someone
really solve the bug.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
Signed-off-by: xu xin <xu.xin16@zte.com.cn>
---
 fs/ntfs/aops.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 5f4fb6ca6f2e..b6fd7e711420 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -183,7 +183,11 @@ static int ntfs_read_block(struct page *page)
 	vol = ni->vol;
 
 	/* $MFT/$DATA must have its complete runlist in memory at all times. */
-	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
+	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
+		WARN(1, "NTFS: ni->runlist.rl, ni->mft_no, and NInoAttr(ni) is null!\n");
+		unlock_page(page);
+		return -EINVAL;
+	}
 
 	blocksize = vol->sb->s_blocksize;
 	blocksize_bits = vol->sb->s_blocksize_bits;
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
