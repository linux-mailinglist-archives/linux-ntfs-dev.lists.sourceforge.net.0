Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C7571524
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 12 Jul 2022 10:54:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oBBek-0003ny-F7; Tue, 12 Jul 2022 08:54:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1oB6Du-0006Tf-BT
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 12 Jul 2022 03:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XHe/kvvVGFhgWQMCPO6zbNMWlQyc0h0nxCqB63k2dO4=; b=LXMGHCtKdFqQTOigQK7IldkmU1
 j++Ijuxu74te2j0xVCzHJGGnjJ8yyse7vrAO1WfJK1HT4edQ+kX5yfg6vTGIvBBWUub0UwQtU21Ji
 R+B8l0jqHRgeo/n7mgBqKb9xrHSZk43SPHxlUFSumn6Lb86UZipaKwhvI/TrSSc7BEPE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XHe/kvvVGFhgWQMCPO6zbNMWlQyc0h0nxCqB63k2dO4=; b=S
 DI6lmPiWhosphfCBZQXCjfVCkIrvI2lL14DeBI/9cESRaB5FmAbLK6VZD94D/lpURSxqCVKF7mKZD
 xxpsYOGKB4/3nwtuHPcFfaolXCa6U/MPUm+QNfnmIQeiAByhNZyfp/OefACKHSwUApBuvEHCJnUzq
 F82J5O+koAcn35Hw=;
Received: from mail-pg1-f175.google.com ([209.85.215.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oB6Dp-00ELT1-Nl
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 12 Jul 2022 03:06:04 +0000
Received: by mail-pg1-f175.google.com with SMTP id f11so5536968pgj.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 11 Jul 2022 20:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XHe/kvvVGFhgWQMCPO6zbNMWlQyc0h0nxCqB63k2dO4=;
 b=bAWZXTicAiKioBs6p5Qo1FSct9sDAC0hraQxZCh9BgHlV/O/575wDQGaEkxGcAnSdh
 wJqNHTuP9kXSGQjJraTvmBRhw1BS/fJJh/3+o3zd7fggr3Jt8SuoBjt8QkDTyt7DioGo
 S844dJWTrEMBNnS7KlBTR6VvtHXMcPb1hhQdmKs/JboEVB8olz+detHL64JCxPaqHbYz
 sFSB4Kr6QaG/6mWTaE5ltHeglPEg+QVdPbcVUGxjO92ABBS3pmKrKctC46P4OjsCkiNR
 cfBnZ/al7e5hGFQRyMfeGnJQX/AmGw82IF9HxzkuT2a9MD1K8Ib5BvJFIJI2IXooiKZN
 xbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XHe/kvvVGFhgWQMCPO6zbNMWlQyc0h0nxCqB63k2dO4=;
 b=QnOb5/V/X4ObZGGn1IlM5F5M6LjkTdMQ+f99J3xda7wPj+Uqsk9GVemP3bcVyeQVy6
 mYs2XjsEjjhy42idNCOeZorYoPHIWk9EwahJjn6s6IwBakAfunKGIJtKiFWQUbZLMpIp
 qgC8ppDqC+NTccsNOqZwThlXXBK5yzIRH0RRKiNjZETaJqtajKg4LJfDpNf245wYF0U6
 sTnSuxLkzd4IJ4V8hT8ED8Vfby9ZKFSN0kdxEKoovIP2JAzOJux2frk3CHpzOw6yjXZr
 +h9y6Ylxc/ERX/yjZLVurxDSO+Zcmd3ShWeik2Ag9AU17Ks9RQ3jKtNUF5M6ucgKQ9pS
 9WWQ==
X-Gm-Message-State: AJIora9xtwk4D6pLN10/ZFENoqPa3+VxiLGyEO30xcMXpaLHQnk3WTAU
 qjOdx3zMzUfunGCwZNZxnKK3H0GJ4Zs=
X-Google-Smtp-Source: AGRyM1uwmc4DGL3IXgwmiDmeLyj/RE6oQFxI7IzUnnuOZfjA5+wGBZWRK/IuSVbpUu3eXXzrKnPo0g==
X-Received: by 2002:a05:6a00:1d26:b0:528:31c2:5243 with SMTP id
 a38-20020a056a001d2600b0052831c25243mr20881620pfx.28.1657595156158; 
 Mon, 11 Jul 2022 20:05:56 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 j14-20020a170903024e00b0016a5384071bsm5534076plh.1.2022.07.11.20.05.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jul 2022 20:05:55 -0700 (PDT)
From: xu xin <cgel.zte@gmail.com>
X-Google-Original-From: xu xin <xu.xin16@zte.com.cn>
To: xu.xin16@zte.com.cn,
	anton@tuxera.com
Date: Tue, 12 Jul 2022 03:05:32 +0000
Message-Id: <20220712030532.1312455-1-xu.xin16@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: As the bug description at attckers can use this bug to crash
 the system. So to avoid panic, remove the BUG_ON, and use ntfs_warning to
 output a warning to the syslog and return ERR. Cc: Songyi Zhang Cc: Yang
 Yang Cc: Jiang Xuexin Cc: Zhang wenya Reported-by: Zeal Robot Signed-off-by:
 xu xin --- 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.175 listed in wl.mailspike.net]
X-Headers-End: 1oB6Dp-00ELT1-Nl
X-Mailman-Approved-At: Tue, 12 Jul 2022 08:54:10 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3] fs/ntfs: fix BUG_ON of ntfs_read_block()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Yang Yang <yang.yang29@zte.com.cn>, Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 Zhang wenya <zhang.wenya1@zte.com.cn>, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

As the bug description at
https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
attckers can use this bug to crash the system.

So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a
warning to the syslog and return ERR.

Cc: stable@vger.kernel.org
Cc: Songyi Zhang <zhang.songyi@zte.com.cn>
Cc: Yang Yang <yang.yang29@zte.com.cn>
Cc: Jiang Xuexin<jiang.xuexin@zte.com.cn>
Cc: Zhang wenya<zhang.wenya1@zte.com.cn>
Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: xu xin <xu.xin16@zte.com.cn>
---

Changelog for v3:
- Use IS_ERR_OR_NULL to check runlist.rl in ntfs_read_block
- Modify ntfs error log.

Changelog for v2:
- Use ntfs_warning instead of WARN().
- Add the tag Cc: stable@vger.kernel.org.

---
 fs/ntfs/aops.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 5f4fb6ca6f2e..b9421552686a 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -183,7 +183,14 @@ static int ntfs_read_block(struct page *page)
 	vol = ni->vol;
 
 	/* $MFT/$DATA must have its complete runlist in memory at all times. */
-	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
+	if (IS_ERR_OR_NULL(ni->runlist.rl) && !ni->mft_no && !NInoAttr(ni)) {
+		ntfs_error(vol->sb, "Runlist of $MFT/$DATA is not cached. "
+				    "$MFT is corrupt.");
+		unlock_page(page);
+		if (IS_ERR(ni->runlist.rl))
+			return PTR_ERR(ni->runlist.rl);
+		return -EFAULT;
+	}
 
 	blocksize = vol->sb->s_blocksize;
 	blocksize_bits = vol->sb->s_blocksize_bits;
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
