Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D62E53DA699
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Jul 2021 16:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kdByDlWFUuA7E/Jes2rYKZfADwZczreqQFmGJAKFciI=; b=B088UbJAFtnOdePItYnkD3g8q
	voKqLTFmNgX93cV4U8kwLInnBXLRFTXzoqas2qTZIOmtUXL/DV3UHFHDuqwagKlsUwgIpJawEjsgD
	0VPjCdu45n1QzQBYqIT3jOGHx+ufedqydQXDZMAoIyPcUVg0VGD/I4rSGBw0yul4/YfZw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m97BK-0000QB-RH; Thu, 29 Jul 2021 14:38:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1m96oA-0001cZ-1m
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 14:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RsR0s9zgcFl5151ceMTU2AkHXP4N1oagJ4lQFf6lNB0=; b=mmd+O/J0Qzij0t+Vkdfajl7M8Z
 +B5K8IHXJ2PI6a8nPiVzJ8fdSLoHDINXiiv9i5nt/8teqp1g2OGqc3ggP6bkyEgihIYwDuWfcy975
 8k2CvHLbYllI2YcAk+eDVO/8DwRdNzCtIawDjw+xTlsbt0M79JWx6a60/lkNf/rYlxSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RsR0s9zgcFl5151ceMTU2AkHXP4N1oagJ4lQFf6lNB0=; b=Gffb8h9V3IqIbZ50V5dNsZY6m3
 rO9mH5nF3Vuu3wtwYF/kKb3XhtQX73KTRCi5a6FuTS4oA+wq+kyjwBiPCGXK1iD4LaUK0P/w5WwfK
 ZGfCGrFuEnhZMRvgq6vhsJ4a497C249DpNeAhgW4yTx+TuhPheJbeAw29r/+sqs2+B+I=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m96o3-0005HR-IJ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 14:14:45 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id A3C3E1D30;
 Thu, 29 Jul 2021 16:49:51 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1627566591;
 bh=RsR0s9zgcFl5151ceMTU2AkHXP4N1oagJ4lQFf6lNB0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=o8RnR7iJ1vb7jd+txUNzN7VF9XilTVNmcXVh7XdUMeH0ZRDYAjCBNLeN5zEN/uQqj
 B+xxPrNwH+KDt46jSR8PjqR404PEU9tMVsB9lAIX+TrXiYtlImukGfTgyUesvjaadh
 lCOHlnrS/0/25X4jt2zhggt4EV+kW8swx5JCPFzU=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 29 Jul 2021 16:49:51 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Thu, 29 Jul 2021 16:49:42 +0300
Message-ID: <20210729134943.778917-10-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m96o3-0005HR-IJ
X-Mailman-Approved-At: Thu, 29 Jul 2021 14:38:39 +0000
Subject: [Linux-NTFS-Dev] [PATCH v27 09/10] fs/ntfs3: Add NTFS3 in
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
index 923772867..273ace5d5 100644
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
index e03a048b2..4cd6b7459 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -101,6 +101,7 @@ obj-$(CONFIG_CIFS)		+= cifs/
 obj-$(CONFIG_SMB_SERVER)	+= ksmbd/
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
