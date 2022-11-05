Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDCF61DF3A
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  5 Nov 2022 23:58:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1orS7B-0006Hp-L6;
	Sat, 05 Nov 2022 22:58:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dengshaomin@cdjrlc.com>) id 1orLOT-0006id-NP
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 05 Nov 2022 15:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ScHMQ8TScDPqmNQyIINPE2cNWb6+UcTAqHZ6j7FiG+o=; b=f6xJeq+wZtXvZEdDX71Vt7QloT
 UzAnbpkUudEW2hkOGqjLPBPmqrjacm17bLXfUlVV8sCkjKYkNwMqyBXXAJ+iLM9lMbMb6hR6hz/R3
 xqHQ9v8TjyTtdmyE5ER8rDwvAESxWMTAVSZ4Ov+lb+n2M6btKRgTPkTZytM8gYlnYa50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ScHMQ8TScDPqmNQyIINPE2cNWb6+UcTAqHZ6j7FiG+o=; b=D
 IVG7SZSPlpRNSMSpUk2GApFQc16ta1ShIlnw5pmnzfDyt6YnEumFFzFLbBI6jUSCNrc3+kzADBOEm
 vHLTfGizhTOPHqi9XSpoYs6uoa1oSPeDXV/DLnlbFJ8jWJ8Jt3N7zK89U4RGgQe940mGBHZCPxQlg
 c230vRX9NUHZHtF0=;
Received: from bg4.exmail.qq.com ([43.154.221.58])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1orLOP-00CzBj-6A for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 05 Nov 2022 15:47:37 +0000
X-QQ-mid: bizesmtp74t1667662306ts5cm2wq
Received: from localhost.localdomain ( [182.148.13.29])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Sat, 05 Nov 2022 23:31:37 +0800 (CST)
X-QQ-SSF: 01000000002000D0E000B00A0000000
X-QQ-FEAT: LG+NUo/f6sG/IBwguO3kMFgA3MSXT0Wx0LQGJTp8HbtfaMzKSTalZL5XaoXH+
 TnXTLr5caQNFzKJfe29ea5KJ/Q+Bjrxfy73gILer/e5j2CsT4JqlLdjwGDmgQBAdgME2360
 p1QRlNS8zZhzkH9JXKkk6hu5d2NdSJl9yE1PLtBi44+y/iRLsVBMD+OmXCiK4SvKnrgDbHd
 fRyBC3qlaGRGk7DwtCihkpDNFItgiEb8JRIxXumDurDxZ6bBG/VHzJYXBfVqiFHCWjPMplC
 LqpBjiKNXO8crdG+oXccK4AYvBjGxkdLKMfh+R+IxWIDHc6iw5P1n0s7HoGHKvoulTj9WRc
 HpHxmI/oEfISUfnXBWtH8nymKt1C+B9OElXLMtptJ3/HJbYyYY=
X-QQ-GoodBg: 0
From: Shaomin Deng <dengshaomin@cdjrlc.com>
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Sat,  5 Nov 2022 11:31:35 -0400
Message-Id: <20221105153135.5975-1-dengshaomin@cdjrlc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Remove the unneeded semicolon after curly braces.
 Signed-off-by:
 Shaomin Deng <dengshaomin@cdjrlc.com> --- fs/ntfs/super.c | 4 ++-- 1 file
 changed, 2 insertions(+),
 2 deletions(-) diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
 index 001f4e053c85..6165fe7d0ac6 100644 --- a/fs/ntfs/super.c +++
 b/fs/ntfs/super.c
 @@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume * [...]
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [43.154.221.58 listed in dnsbl-1.uceprotect.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [43.154.221.58 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1orLOP-00CzBj-6A
X-Mailman-Approved-At: Sat, 05 Nov 2022 22:58:12 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Remove unneeded semicolon
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
Cc: Shaomin Deng <dengshaomin@cdjrlc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Remove the unneeded semicolon after curly braces.

Signed-off-by: Shaomin Deng <dengshaomin@cdjrlc.com>
---
 fs/ntfs/super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 001f4e053c85..6165fe7d0ac6 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume *vol)
 		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
@@ -1681,7 +1681,7 @@ static bool load_and_init_upcase(ntfs_volume *vol)
 		memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
-- 
2.35.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
