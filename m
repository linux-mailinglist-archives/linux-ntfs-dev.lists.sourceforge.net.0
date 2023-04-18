Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1AA6E6911
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 18 Apr 2023 18:13:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ponxF-00046x-Vv;
	Tue, 18 Apr 2023 16:13:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1ponNS-0003Ny-6I
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 18 Apr 2023 15:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LkJVegcK4RPCubdgAGwJFimoe2y53+6saI3D05sGsLI=; b=eR+HZx3NLlO/UhkH4Iv1RfRgpg
 kGCgl2Ed5QlQGzam+p7lhQTVkVzsXb7Eon1aEzUFBVEdHXRWIAqF+nLLFv0/lEbTAUWhSQL0xQUR0
 ShsHSoTH6xqQkpZIEaWAI12DeNXoPg0sG3fxMmyrKKjIsYY6aWmtUcfCT3wqBrgr400k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LkJVegcK4RPCubdgAGwJFimoe2y53+6saI3D05sGsLI=; b=b
 FOxOsuVBVMsL0bgC5ihP+/mPgA1y/fB7twFs4IMZNyAPSLsYCBf1jSJWAm3CWjXl1Nk20W5PfNdzt
 9SMpOSn0BoXlQu5WS0zZrW5FXLvCCxv+ecobHNzcE9x5qjyfp5eiFk4y8pbUoxlfa8IHhs17tvMbY
 rwvkmCRlbEfGvbio=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ponNP-00BWr6-Ba for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 18 Apr 2023 15:36:18 +0000
Received: by mail-wm1-f52.google.com with SMTP id he13so20748759wmb.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 18 Apr 2023 08:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681832169; x=1684424169;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LkJVegcK4RPCubdgAGwJFimoe2y53+6saI3D05sGsLI=;
 b=H+69oanFfCKcrI2xj4bC576D35a2NUqQk8XzSkv2ciEMm4d1bBj9fR5+fHThPQpfC6
 +y6DbXC3zQAcFQcFpjL8V76kPv2aiTyyUrh5RlG0UHPBnHQ11hY6Kgy7SfkPJGMK9dB5
 09z5BEFDpc5Mxq1FY6OFaxZKXquZlG3aQN1RLvwK3hLrwcadA697EDBPYs8PUOxL5exj
 eiJu5eSEUPfI69PyD/wsYu3Adjy9jdbDN4wmODLYe1QdaKArJ/MEC5plIs9o74rzb5wX
 Ehw6LGlXsY2F54ZTsgw7yid215g5GgoFq2w1TqqSa/WHC/SqjiNus3RELSzXpoVWT7dS
 4rdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681832169; x=1684424169;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LkJVegcK4RPCubdgAGwJFimoe2y53+6saI3D05sGsLI=;
 b=Q1+nH+bdIHQGW9sSPOVHvXU9nNI/f1BpEegHu39mo4FLBR7ExdKMP6uMFXKHUO5HtE
 wUgIORv7GDCEM2qs899qx///12SwvEUdrINxKTq0oBE8G7u9qhOQpiBLvmwUl/M3agpn
 YqStZPRUzTQVYu5nXFeby6TDQ7c4MY18VSyCt9Wv2YUq3s9/UQNudvsD1+1DwGqpnM7b
 nFeEAVYrMWnGE0dUqXwRce8uGl1xkdr9pIvLmX9eiGQIWBhTF4tXdztE4yFsLQb+Lj/5
 TuDgFIU9l/d+NagkX0Eu0qJ0Eqi/rPM7yBtT8jV49/KRrOlhc2w19TW3dgqJ8mWy/0jR
 7kOw==
X-Gm-Message-State: AAQBX9fjBIV/LlAySdkhWcN3o27C7yFDm7lCcF0dRbbvNQVkqrACGdlp
 stjjFHRmLN+I+6kulrKo3Is=
X-Google-Smtp-Source: AKy350ZVp3fSqaY94ZPunCrFUD3kVEZ6PAQGitpq8zuWnC2Mb9fhEsm7VFomjBqsoPCs2KmOqCKj6Q==
X-Received: by 2002:a7b:c44a:0:b0:3eb:42fc:fb30 with SMTP id
 l10-20020a7bc44a000000b003eb42fcfb30mr14538454wmi.32.1681832168560; 
 Tue, 18 Apr 2023 08:36:08 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 d16-20020a5d6dd0000000b002d6f285c0a2sm13385333wrz.42.2023.04.18.08.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Apr 2023 08:36:07 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net
Date: Tue, 18 Apr 2023 16:36:07 +0100
Message-Id: <20230418153607.3125704-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pointer cb_sb_start is being initialized with a value
 that is never read, it is being re-assigned the same value later on when it
 is first being used. The initialization is redundant and can be re [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ponNP-00BWr6-Ba
X-Mailman-Approved-At: Tue, 18 Apr 2023 16:13:16 +0000
Subject: [Linux-ntfs-dev] [PATCH] ntfs: remove redundant initialization to
 pointer cb_sb_start
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

The pointer cb_sb_start is being initialized with a value that is never
read, it is being re-assigned the same value later on when it is first
being used. The initialization is redundant and can be removed.

Cleans up clang scan build warning:
fs/ntfs/compress.c:164:6: warning: Value stored to 'cb_sb_start' during its initialization is never read [deadcode.DeadStores]
        u8 *cb_sb_start = cb;   /* Beginning of the current sb in the cb. */

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/ntfs/compress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/compress.c b/fs/ntfs/compress.c
index f9cb180b6f6b..761aaa0195d6 100644
--- a/fs/ntfs/compress.c
+++ b/fs/ntfs/compress.c
@@ -161,7 +161,7 @@ static int ntfs_decompress(struct page *dest_pages[], int completed_pages[],
 	 */
 	u8 *cb_end = cb_start + cb_size; /* End of cb. */
 	u8 *cb = cb_start;	/* Current position in cb. */
-	u8 *cb_sb_start = cb;	/* Beginning of the current sb in the cb. */
+	u8 *cb_sb_start;	/* Beginning of the current sb in the cb. */
 	u8 *cb_sb_end;		/* End of current sb / beginning of next sb. */
 
 	/* Variables for uncompressed data / destination. */
-- 
2.30.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
