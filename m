Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D2B288BF0
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  9 Oct 2020 16:59:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kQtrP-0005q0-Nn; Fri, 09 Oct 2020 14:59:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kQtYp-00038V-Ce
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 09 Oct 2020 14:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3PSMyybwiL6Qcr2UqjSnDQnVIfg7Pare5ag/6CfOc8Y=; b=WVvmjjWOFUoX5pYYmcNuQOi1ja
 N8MBPYWT4gdarg4GMBz8Z0zsWmxSj6NbjovcShGWhbCZIgziFmHHuoSaIa+U8U7yMZEKtJ5EdX0g9
 fdPijkJVlXblcQqsBSQwYChxo442qAOy6kP8tcn+/CfLflZ67JzD7JekAFpL7TXLe2iI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3PSMyybwiL6Qcr2UqjSnDQnVIfg7Pare5ag/6CfOc8Y=; b=Qw7eBqWlA+NpDMjbcKcrRqIFcg
 46h7nmIuXSquCszbyv3Fm4FmxXwn1Kf/wNyImQ/yfCsiw14Qm2XCcd36Ebkd6Dwhh5qBf2tT59thM
 wJAlOWrcc7hqTIsD0OyEhBGskhtNqkQosK7B2DIfP4aQCCM4bAcNP5ThIPWostC+rfTs=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kQtYY-008Yjx-Ue
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 09 Oct 2020 14:39:54 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id C76DB2130;
 Fri,  9 Oct 2020 17:23:10 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1602253390;
 bh=3PSMyybwiL6Qcr2UqjSnDQnVIfg7Pare5ag/6CfOc8Y=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=uYNAwTr1v4/LybL9g6I0c0I4smtARzjaA5oHTqurU33pZAYIMioFNoc4f7tR3rNGu
 eRUNQX5DxrOBtKARndUP/GNglEkZiOsslPKN1oBnrwueOQEQPXhnQf/eU/IvebbSSC
 Aismu1mGHYraMH6XN+p/qWJw8KaCsVchXhpZpiyM=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 9 Oct 2020 17:23:10 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 9 Oct 2020 17:23:01 +0300
Message-ID: <20201009142301.412454-11-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201009142301.412454-1-almaz.alexandrovich@paragon-software.com>
References: <20201009142301.412454-1-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1kQtYY-008Yjx-Ue
X-Mailman-Approved-At: Fri, 09 Oct 2020 14:59:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH v8 10/10] fs/ntfs3: Add MAINTAINERS
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
Cc: nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-ntfs-dev@lists.sourceforge.net, viro@zeniv.linux.org.uk, joe@perches.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This adds MAINTAINERS

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9a54806ebf02..e7c9536c311b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12382,6 +12382,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
 F:	Documentation/filesystems/ntfs.rst
 F:	fs/ntfs/
 
+NTFS3 FILESYSTEM
+M:	Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
+S:	Supported
+W:	http://www.paragon-software.com/
+F:	Documentation/filesystems/ntfs3.rst
+F:	fs/ntfs3/
+
 NUBUS SUBSYSTEM
 M:	Finn Thain <fthain@telegraphics.com.au>
 L:	linux-m68k@lists.linux-m68k.org
-- 
2.25.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
