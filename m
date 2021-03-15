Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC933E2BB
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Mar 2021 01:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=efVrmu2y6RlwJKBesy6psrTzHQJQYh6hFTS9evZFTik=; b=nF5lFlWl29owc6eG9lhEb+GbX
	kxOTgvGvjenh1Y6wQ2QHlV6XoH84iGsDJ+4DrMZR+VNYCvR4b8/rj4pf04WX2+HVOpC4Apk+DVMpD
	N17sASxA3qMvfT+pIsdw0z3+HJ52LNSeNRlmVWWskiZ0HknDNOSvNGAJhhsxNHGNdFbaw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lMK7H-0001oi-2b; Wed, 17 Mar 2021 00:32:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1lLoUX-0008AZ-Cq
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 15 Mar 2021 14:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xhOjKeQG1LyTP6Ea0bdArzX/myUDUOsM7RZ647uXOOY=; b=kFvG5Mw48do1mdYdnacTNUpSUW
 q5YdFROp4NuF/5P2PEYUX3BKNIkJLmgDdxiPbMAyexFTMtO7PRERjrjQsULEiCZ+KdOOMsFA19MWO
 8J4jg1+YzK/K/gr3z8boK3GRoi0Zybni0htoqh87GI67QHAht5ovk5fIxjzTJ8R0ORA8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xhOjKeQG1LyTP6Ea0bdArzX/myUDUOsM7RZ647uXOOY=; b=Pl0DyKEBalzP57VLhrCG+qVUtY
 gLt5KvPFKHdDUczjXNTgz7iX/iPjHxSGrrBdFMk6U4Ta9ko1NmrMNrO5K2XqdRqIpr6KP2oN75Zgl
 7gCOB5Tzn+JMQk+nE8QUvbGyJ9FxQ+jhqP0A1EOQCz93NnTz9FIxYjuadTe7R+KBaIf4=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lLoUP-00084V-Oa
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 15 Mar 2021 14:46:44 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 41C9C82250;
 Mon, 15 Mar 2021 17:46:31 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1615819591;
 bh=xhOjKeQG1LyTP6Ea0bdArzX/myUDUOsM7RZ647uXOOY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=WocmbNGcGVWZn7nsKtauMQaX9qwh1k03Kkq7vwX3jfAchXhF3oJnVF6XSasrKfDrC
 5fU3ALEtLuyHk+jV03gmObtLaNZdRA0oyEGn1Jp+jncQYLqIV2+0uzXP04Uhdm42a6
 rVwmTDzJ6Tb0e2s88lN+veMlWHzuX+fcvL9oXTQA=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 15 Mar 2021 17:46:30 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Mon, 15 Mar 2021 17:44:13 +0300
Message-ID: <20210315144414.3365314-10-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210315144414.3365314-1-almaz.alexandrovich@paragon-software.com>
References: <20210315144414.3365314-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lLoUP-00084V-Oa
X-Mailman-Approved-At: Wed, 17 Mar 2021 00:32:36 +0000
Subject: [Linux-NTFS-Dev] [PATCH v23 09/10] fs/ntfs3: Add NTFS3 in
 fs/Kconfig and fs/Makefile
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
From: Konstantin Komarov via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, linux-ntfs-dev@lists.sourceforge.net, hch@lst.de,
 viro@zeniv.linux.org.uk, joe@perches.com, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This adds NTFS3 in fs/Kconfig and fs/Makefile

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 fs/Kconfig  | 1 +
 fs/Makefile | 1 +
 2 files changed, 2 insertions(+)

diff --git a/fs/Kconfig b/fs/Kconfig
index a55bda4233bb..f61330e4efc0 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -145,6 +145,7 @@ menu "DOS/FAT/EXFAT/NT Filesystems"
 source "fs/fat/Kconfig"
 source "fs/exfat/Kconfig"
 source "fs/ntfs/Kconfig"
+source "fs/ntfs3/Kconfig"
 
 endmenu
 endif # BLOCK
diff --git a/fs/Makefile b/fs/Makefile
index 3215fe205256..6bdfcf712cb1 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -99,6 +99,7 @@ obj-$(CONFIG_SYSV_FS)		+= sysv/
 obj-$(CONFIG_CIFS)		+= cifs/
 obj-$(CONFIG_HPFS_FS)		+= hpfs/
 obj-$(CONFIG_NTFS_FS)		+= ntfs/
+obj-$(CONFIG_NTFS3_FS)		+= ntfs3/
 obj-$(CONFIG_UFS_FS)		+= ufs/
 obj-$(CONFIG_EFS_FS)		+= efs/
 obj-$(CONFIG_JFFS2_FS)		+= jffs2/
-- 
2.25.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
