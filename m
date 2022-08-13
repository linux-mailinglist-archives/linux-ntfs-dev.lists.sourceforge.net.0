Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CA7591CB6
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 13 Aug 2022 23:29:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oMyhb-0006XH-6x;
	Sat, 13 Aug 2022 21:29:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tangmin@cdjrlc.com>) id 1oMtvA-0005pm-UL
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 13 Aug 2022 16:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TY0/0DOoLuW8mmttl8oyK4daN8tFBSOFjgTaOOhucDI=; b=dYgndOG8zp4fZV8E8Pn8xj1w6z
 UvjJQdOiRvOsuq12tBuLSDQK/RW5/+n4QvpvpJMAHusw9IeJKdlw4ksxDOK/SkX6gVzaRgFhW5p3h
 mVEypFJzsVsw4m3III9YKVOt/6iPbm9sJwpQxfL9reBGV6CSHuNSfQC+eInJP6Le2qxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TY0/0DOoLuW8mmttl8oyK4daN8tFBSOFjgTaOOhucDI=; b=m/6c76/b0Pekm52+bG3cR7G87r
 tyAXhBM5hY7CSH1PsuocsJ4k3sNwKI1ZMKhhxs6YRaYUoJXEU258eYpuKqjkNcRrp08/fXLnupfl4
 AfUWPkKY+mNpx8hEQvydfv5ad+X6ciSTofyOArfib+Zs9s4k0MiO+96qI05MR/P+qLXc=;
Received: from bg4.exmail.qq.com ([43.154.221.58] helo=bg5.exmail.qq.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oMtv9-0001D5-QC for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 13 Aug 2022 16:23:32 +0000
X-QQ-mid: bizesmtp73t1660406861tr2eb0lj
Received: from localhost.localdomain ( [110.188.55.240])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Sun, 14 Aug 2022 00:07:35 +0800 (CST)
X-QQ-SSF: 0100000000000080H000000A0000020
X-QQ-FEAT: cHEuLz3LyUhbbjnxI6ywZpHdtaOOGt5yb1sGXIOVEEY4CkKdxf9SBSTw/qQk9
 t6FtHdabvwYtbRS8Kuxfn5LQQMQSXY7SUCyzG39ElFcFBYP59eMuVZAvLGyeKupHgI8aUj7
 KVj8wxnhZrEmFhggbyRXYvnR0wvZnnQnez6860jAg296LFTyxE5U+7+91TKwiWP6G3N7ZZu
 fOuqpTtJR6eHg91nlZ8ZwWzVoRWbW4YPQPyOAwb1z/3LK6qcmT6t+32wpx75v9LM/VdxYr0
 sCCYouA/hnOr3dueJZUYJodMrFy0G7eQxvumrElg7Wn2D/bZKvRUuT/fTH7rsC/wb3/9FOW
 uedFM2R2CzDY/UiJ1nLNMYT3TTfq2LJJoUpnjP+c0yRpLNoyFw=
X-QQ-GoodBg: 0
From: min tang <tangmin@cdjrlc.com>
To: anton@tuxera.com
Date: Sun, 14 Aug 2022 00:07:23 +0800
Message-Id: <20220813160723.5769-1-tangmin@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is no semicolon after '}' in line 1615. Signed-off-by:
 min tang <tangmin@cdjrlc.com> --- fs/ntfs/super.c | 2 +- 1 file changed,
 1 insertion(+), 1 deletion(-) diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
 index 5ae8de09b271..d663b49df84e 100644 --- a/fs/ntfs/super.c +++
 b/fs/ntfs/super.c
 @@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume * [...]
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [43.154.221.58 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oMtv9-0001D5-QC
X-Mailman-Approved-At: Sat, 13 Aug 2022 21:29:50 +0000
Subject: [Linux-NTFS-Dev] [PATCH] treewide: Unneeded semicolon
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 min tang <tangmin@cdjrlc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

There is no semicolon after '}' in line 1615.

Signed-off-by: min tang <tangmin@cdjrlc.com>
---
 fs/ntfs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 5ae8de09b271..d663b49df84e 100644
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
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
