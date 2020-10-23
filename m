Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE84F297E21
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 24 Oct 2020 21:35:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kWPKJ-0002n0-G5; Sat, 24 Oct 2020 19:35:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kVzFr-0003O8-H0
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 23 Oct 2020 15:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qQXGRVDsdKbk9QAqu7DYbb2wwZTPHzDJGSYNUOqb01U=; b=BELPekM21gxy2fi96lYxymSaxk
 rfOhGvJ3m00o4waU/bkxcU0agnNqkDzEaStABC+G5qlDm1UuC6eSz+W/gMGw9Gs6723PDk7tpTCCl
 f3tsND+nCffGl+lTWC1rPszic6/+rTUofzA//et4FUM/ya16OEvAT7NC7wvwdqFTwOI0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qQXGRVDsdKbk9QAqu7DYbb2wwZTPHzDJGSYNUOqb01U=; b=JL5CzvekUUhc9GFOyqs7tn0vtj
 BpYGmI4gggs6jv/NPAP3FpVW2TY8712sHcOpfmYyLNPm05xCsYY8l9Ke3TTqvHGveiSmSfPzAPkg4
 NB7fsA02ik3Adsqj988LoS9GDQP9ORngcXArMolpjKJ774E4XEE82MELT5EcyYHc19ms=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVzFi-00AKOq-I4
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 23 Oct 2020 15:45:23 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id A808A1DF8;
 Fri, 23 Oct 2020 18:44:41 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1603467881;
 bh=qQXGRVDsdKbk9QAqu7DYbb2wwZTPHzDJGSYNUOqb01U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=CK7E2t9ZRjhg87tZZxYfzdoXQ3Bb14XNHkieD42MexIDgcI811vlUChyYGsRHAeeo
 MZ8HWp2dNgwIAZFHVfQq3t+WOltfyGzILkXC3asXToGKVuysj3ZgqjwxFHhfXWQDTV
 X7gTc3itI5w/sMn3OlXanr0IgKyeJIOhyrTid1Ow=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 23 Oct 2020 18:44:40 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 23 Oct 2020 18:44:31 +0300
Message-ID: <20201023154431.1853715-11-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201023154431.1853715-1-almaz.alexandrovich@paragon-software.com>
References: <20201023154431.1853715-1-almaz.alexandrovich@paragon-software.com>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kVzFi-00AKOq-I4
X-Mailman-Approved-At: Sat, 24 Oct 2020 19:35:40 +0000
Subject: [Linux-NTFS-Dev] [PATCH v10 10/10] fs/ntfs3: Add MAINTAINERS
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
index fcb3b83f9c1a..7c968f6a5bba 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12473,6 +12473,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
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
