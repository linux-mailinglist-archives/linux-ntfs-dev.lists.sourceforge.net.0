Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 499382E83AF
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  1 Jan 2021 13:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VC2iKzMdns98kaFAuNmZatnElmiZCEZ1SxmxJHjbzKA=; b=EWNDJRflT/Kpukh7p+LYfdB10
	FlLe3deZvTtMJ2pffR1WhFlL3Cyf+4Crm1Zvgsajf/E9CTMe9TBhw7+NTpZLXOy4q7+useLG/Sxmx
	oBBPIu88gKxFBiwNEHXRIsvUrsFPvZ/PbPcLTDwu1WTwejWwjBwzKrg6w8NZgsLxV4798=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kvJn7-0004h2-Ev; Fri, 01 Jan 2021 12:44:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kuzqe-00014D-CP
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 31 Dec 2020 15:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nHpPz2+FrFfh6DcEqKSTGM0lG8GgmmwuJqJUHlyXClc=; b=SYpMO1E7sZNUEbeeEQ/6c8vWaw
 GMbdD3MidoCS5hGa7ZCykF+LTsdvC+XnOvFi1fqje4hhOKhjxbVHdyCLP5BPuDvgjRkqYr6bHZ+Cq
 K09gRHpCX27hVq4eFsJxZBDzql/3A2AFqX1dPHyGBV6UBynfwRVnJUDXUiYeDyG+i4cI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nHpPz2+FrFfh6DcEqKSTGM0lG8GgmmwuJqJUHlyXClc=; b=IEj6Brw05vhk1QO3jv75Q2hVBu
 qY+HmL5x9IuLE7Sy7lf0rCoeITDFYtMWPAiHvtCUMr49DB2ASIPn8krgz9QPQ4iw4t846wzQE0vJ7
 aDB3VprvVRLs6SXTgRhQBoTaGHUmtDKiSa08b6IuO9S+73Na5vZEGtzRbaGX6QuQH7Bs=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kuzqU-00CSnp-IS
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 31 Dec 2020 15:26:44 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id B63258225C;
 Thu, 31 Dec 2020 18:26:09 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1609428369;
 bh=nHpPz2+FrFfh6DcEqKSTGM0lG8GgmmwuJqJUHlyXClc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=i8eLND7WHhq0BFLqQSETax8U8pv0eL8Q3wnwV2lXtxnpMeT7rtzyTd60bBvCzP5jT
 wtkCF+rGuRc3YIyvliUllndENFbWO2v6NbboC9RBYBfrNYi4tGvK5r8qEuA09mvOee
 8SrSBCb5FtY9lpx0Ky1xrHIKT52gd+0OlY10jal8=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Thu, 31 Dec 2020 18:26:09 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Thu, 31 Dec 2020 18:24:01 +0300
Message-ID: <20201231152401.3162425-11-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1kuzqU-00CSnp-IS
X-Mailman-Approved-At: Fri, 01 Jan 2021 12:44:20 +0000
Subject: [Linux-NTFS-Dev] [PATCH v17 10/10] fs/ntfs3: Add MAINTAINERS
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

This adds MAINTAINERS

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 546aa66428c9..1a990aa2985d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12674,6 +12674,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
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
