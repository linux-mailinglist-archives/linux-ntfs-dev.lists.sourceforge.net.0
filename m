Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F7C300697
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 22 Jan 2021 16:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=urGWnOqWVWSIPNq0KOEmjTbBReZik25k2Njq/iN7qXs=; b=iBHfAabYNjFnQ8L6t3CVCzpfo
	OlfIaR6SH36wCRsDZIAwfB7u3wnwLvuQBxlbqEA1dqfLeIVSd6Jf+YtYeCJv9V9f8JdfP9a5xe/0h
	Niyyfi4s+5XWj3zroUxKLHh7UXgD/Zc1lubO69siwXAb8HcYetlyUjFvnEFVBvJdy0CMM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l2y1i-0000M8-Vg; Fri, 22 Jan 2021 15:07:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1l2x3E-0003aE-LY
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Jan 2021 14:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C7cl2SKtMTb760tgjxUWID+CkXGDWFxvxQ8dWTUNw/Q=; b=nRMdcxOn3dpbfcQM2E+pwYkS28
 4RH7UZN9cNlGye7ZAgt8m1HhlorF4Ba/Pw0I0bfy+VJpJOXCGiONBGt6gZjvKGBH9HEdZeNa9iuz0
 n8BH9gwQBxLzHPZdSzT3SedVBm2iQkiZ4c0pJDt7/5blt9gfNqy612KIE4YXEBJxDcfc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C7cl2SKtMTb760tgjxUWID+CkXGDWFxvxQ8dWTUNw/Q=; b=VYHA2ZxBOQieEx4w2kmClEOYG7
 Ea3rGEqWPMSpxXyc05MOxz48kh83+Ov4ItiefqLnU5RhN8CLyzt6eBmAs1mTY9lP4CG2HBLkS5amm
 ybvysyVP/VfGs4zjiSQic5aSFMAjEYuRk+TXWqJZDU5yJC/3Kvbmo3+ItzJJqF4gHJOw=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2x35-00ASpL-LR
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 22 Jan 2021 14:04:36 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id DA6471D99;
 Fri, 22 Jan 2021 17:04:07 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1611324247;
 bh=C7cl2SKtMTb760tgjxUWID+CkXGDWFxvxQ8dWTUNw/Q=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=W3WJ7UL9jqVKDsVx7slF9RpZvhCtMNxwXAOILYWOKm8tzSJfQRu1VtB7l6M4fSbx1
 18FRAUEQhXisM9BWK5qlZbhKJkqHzTQmHqGVJYNsX/FqX7o5SJJGwoGwE9hAmmlhpC
 +/PnE9I7r+BNj211Se+otdWY/O/UALDMmV3NLHeM=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 22 Jan 2021 17:04:07 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 22 Jan 2021 17:01:59 +0300
Message-ID: <20210122140159.4095083-11-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210122140159.4095083-1-almaz.alexandrovich@paragon-software.com>
References: <20210122140159.4095083-1-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1l2x35-00ASpL-LR
X-Mailman-Approved-At: Fri, 22 Jan 2021 15:07:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH v18 10/10] fs/ntfs3: Add MAINTAINERS
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
index f79ec98bbb29..49db3a3c15c5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12666,6 +12666,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
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
