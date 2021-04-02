Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA9F353206
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  3 Apr 2021 04:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=79TXHHXyCHdJ16sYLSEd/NiSkN2Bn3n1u791oGdR2h0=; b=WSFNF+xEOt3jvH3fjrbL6TCjU
	674nilEPQHOHWLsHdP6WIKBpcXq0JKd5xAsCZHewBUC7VxbKlSPRnT8VSl2Le51URIHI/wZv1Pmkp
	gRSe4hFajOn54bW9c2uqvxrSONYU54l6wA1hHXmEehftae5fog56zNuRNIf5VMil2PY0U=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lSVhb-000524-EA; Sat, 03 Apr 2021 02:07:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1lSMIO-00044I-6o
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 02 Apr 2021 16:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oq8WFdb4Tg/OV1NWCQUvyKyTQ1S3GYc0yK9o11OM53k=; b=IPSC/x3Ube3UTaYLZFqX5U9Laj
 Jhcpbfkl4dIKODH7aiNI0KX8L9m3Y3YbIKy25i/EBnJ/m2ezIbfYEqLomQvtoEd0N5KyzSCff8kMe
 mHCuh6T8MPp5NXzeI4igZ4zINqFWeZwrOWINZmeTF3YeQd2DEV29pO0b/kcYmla7oWgg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oq8WFdb4Tg/OV1NWCQUvyKyTQ1S3GYc0yK9o11OM53k=; b=nUi4j/plc/amNEJXZeAVJzjmkn
 mul8sKbDTuAppsqK12mXMSWTwft6Wa53OeMJ0a9iu8+NbjkyyCrUxmFCWWt9AhEyKiZrtuh+5MmjQ
 eOIez4K1Ztn7EqlJzYERusxvV/O+XCnsLi2x1DGxBJbhQoPQWcDHHKQUgvzDsuPOoao8=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lSM7u-000056-VD
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 02 Apr 2021 15:54:57 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 909D21D7C;
 Fri,  2 Apr 2021 18:53:55 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1617378835;
 bh=Oq8WFdb4Tg/OV1NWCQUvyKyTQ1S3GYc0yK9o11OM53k=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=pdbU2K5Sop5FrQoEQaR70mowBXcmd39AVGJzFYmPWCjToEqF0qtrQ0+9YTsIt7CAT
 mkPDi/oON0EdeY/+lx6ikTEjEVn0KUdFo6dC0in6yiDOPswbn+M1+vrqS12QmoQsPB
 cDO0mcffxaUri1z4NO6ZQl884bE6xe/IYVPteFNk=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 2 Apr 2021 18:53:55 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 2 Apr 2021 18:53:46 +0300
Message-ID: <20210402155347.64594-10-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
References: <20210402155347.64594-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSM7u-000056-VD
X-Mailman-Approved-At: Sat, 03 Apr 2021 02:07:52 +0000
Subject: [Linux-NTFS-Dev] [PATCH v26 09/10] fs/ntfs3: Add NTFS3 in
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
 andy.lavr@gmail.com, kari.argillander@gmail.com, nborisov@suse.com,
 linux-kernel@vger.kernel.org, oleksandr@natalenko.name, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, hch@lst.de, viro@zeniv.linux.org.uk,
 joe@perches.com, dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
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
index 9e7e47933..1bf7b82d5 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -146,6 +146,7 @@ menu "DOS/FAT/EXFAT/NT Filesystems"
 source "fs/fat/Kconfig"
 source "fs/exfat/Kconfig"
 source "fs/ntfs/Kconfig"
+source "fs/ntfs3/Kconfig"
 
 endmenu
 endif # BLOCK
diff --git a/fs/Makefile b/fs/Makefile
index 542a77374..8f199ba5b 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -101,6 +101,7 @@ obj-$(CONFIG_CIFS)		+= cifs/
 obj-$(CONFIG_SMB_SERVER)	+= cifsd/
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
