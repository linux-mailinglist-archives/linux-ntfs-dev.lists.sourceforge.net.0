Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4424599AF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 02:29:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpKce-0005Bu-ML; Tue, 23 Nov 2021 01:29:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mpIOv-0003vg-J0
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 23:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fNbh4iBAHtA98kCW/4qyB0yZvvbQ/JGxjB2BIT2nPCM=; b=AUBMWPHH1Z0k5V2nurILltEquM
 SC1FTP3CA5//0m1kJikrQALvNuaoy/A5SwSjXeCpi2KwFIm2G/N/vbAqKtRIqbuYVrE6j35lxw6Hp
 1ld6Z3AzGnQOHB2M+VUpCnR2U4lDpRD8R0RTkH2sKsw9OYX8G6HStI323HBFwxfIkGPM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fNbh4iBAHtA98kCW/4qyB0yZvvbQ/JGxjB2BIT2nPCM=; b=O
 bDuf9b/hMrwzIXy2xbXnXTPmsf2c+b3yiyg3lb+hYKS6mOfsThCRU4QkyGsUweugSO6FDxHQCSjMh
 XXGU5oYkjZV+BT1bKrvFtIlwjctlYSRWReFZ4fLrGfC//rZx1oRl4P/6eP4iK8/kqgbugD6LINICY
 tINQJn3G6zF1tZmM=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpIOu-005M2n-BJ
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 23:07:06 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 v15-20020a9d604f000000b0056cdb373b82so30996402otj.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 15:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fNbh4iBAHtA98kCW/4qyB0yZvvbQ/JGxjB2BIT2nPCM=;
 b=SEUjHEAuj1Oke1LXdMd1FEwywDKBRx5VsImHR2as39yZmasjJsfjRyS4nk6gKUOGu1
 hC7LZjm+bydtVUXtsIAjADcwzUjkfVOG+j20a19BJE9IMSyGwLy/DFIWeO9OYRqd8Sxi
 2XlrRW7H7NSlaT/yoSnODNCjEeF9U4IJXEgwfYRSXFa+8wp6stEHKRqCgZ8OjCRNJ8oQ
 Ca1mc9wK0S7OOMfQXOl+FXqK8ySR5XavoiZX/BeL5AuXWUVdY8T54PxD+Ai3S/GGqTJt
 VltHoow615e/meIMMqBhtuQdC/LVDMiLGODUcIzonzMoXcfxAI6WpUwk6hGvzqOmUwrf
 dp7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=fNbh4iBAHtA98kCW/4qyB0yZvvbQ/JGxjB2BIT2nPCM=;
 b=5STc7IcLgxr+o0uIfUQ39GZ4guC1n4BOR7+6cP3BbMhB7qjxqW2RdlNtfG4zGeZok1
 d+Wf0FO8Rug98Q/wWbSbQzAezPR1ek7cA+taiZ5IuAgiViQhCb2XD9JO4M5PtlVZxA0z
 oExED5SgpcD189egvHY/RQG9nVyf36ufp0xbrx8T7tAev+CeDUsaXCFjH9VNEBse+aMR
 RNhQ8LwCPQhTiNjtCYZjqH9FCctjNGPEUgHcY4/ZqXzFQWv4gn8D925tU9RELS9Envn8
 fmWXnxKfmyCRTdYXFFBY/uO57maQY88DsL9zqSxYhgFYhPsP9mnX79mNOdXEyHKfC/Hd
 PKfw==
X-Gm-Message-State: AOAM531kxM3GHS6X3FfQK8FR3rYX0HJb75MA0kNPkt3KzppCSh8FwSDh
 TKiYbEKMV4d9i1J6TJeyiH7P10CuCyo=
X-Google-Smtp-Source: ABdhPJw7FwHd8+4Op4c6sBQCv1y8vRlTt/cK4rS3BYcjRarllz9egCpeccQl8HEkvID7eGtpIL3GYQ==
X-Received: by 2002:a9d:4702:: with SMTP id a2mr13348otf.262.1637622418769;
 Mon, 22 Nov 2021 15:06:58 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 bi20sm2379591oib.29.2021.11.22.15.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Nov 2021 15:06:58 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Mon, 22 Nov 2021 15:06:53 -0800
Message-Id: <20211122230653.1779162-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: NTFS_RW code allocates page size dependent arrays on the
 stack.
 This results in build failures if the page size is 64k, which is now the
 default for PPC. fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
 fs/ntfs/aops.c:1311:1:
 error: the frame size of 2240 bytes is larger than 2048 bytes 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mpIOu-005M2n-BJ
X-Mailman-Approved-At: Tue, 23 Nov 2021 01:29:23 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] fs: ntfs: Disable NTFS_RW for PPC
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-ntfs-dev@lists.sourceforge.net, Michael Ellerman <mpe@ellerman.id.au>,
 linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

NTFS_RW code allocates page size dependent arrays on the stack. This
results in build failures if the page size is 64k, which is now the
default for PPC.

fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
fs/ntfs/aops.c:1311:1: error:
	the frame size of 2240 bytes is larger than 2048 bytes

Increasing the maximum frame size for PPC just to silence this error does
not really help. It would have to be set to a really large value for 256k
pages. Such a large frame size could potentially result in stack overruns
in this code and elsewhere and is therefore not desirable. Disable NTFS_RW
for PPC instead.

Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
v2: Introduce new configuration flag DISABLE_NTFS_RW and use it to disable NTFS_RW
    for PPC

 fs/ntfs/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index 1667a7e590d8..324224febb6a 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -49,8 +49,13 @@ config NTFS_DEBUG
 	  When reporting bugs, please try to have available a full dump of
 	  debugging messages while the misbehaviour was occurring.
 
+config DISABLE_NTFS_RW
+	bool
+	default y if PPC
+
 config NTFS_RW
 	bool "NTFS write support"
+	depends on !DISABLE_NTFS_RW
 	depends on NTFS_FS
 	help
 	  This enables the partial, but safe, write support in the NTFS driver.
-- 
2.33.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
