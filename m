Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC735363CF
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 27 May 2022 16:13:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nuai8-0001J8-DZ; Fri, 27 May 2022 14:13:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wangxiang@cdjrlc.com>) id 1nuYqD-0005oh-8U
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 27 May 2022 12:13:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rpnnA/RGtmA9LSRLgxWtjIaxkdCK1Hf2HUW7B7wMEdc=; b=An2tPjTMaBFR+0VAyEMxwgiD2n
 s9AOMw4RAu5ghocG04ekE1rSm0wJKDveVGDjubOS0JNilzS5GfbrXr/fwRucuM+JRSKL60hgcdpLy
 /yQX9GhuK6wUG6jPZ7j5y8YdLNhIRF6B9UU3ZWomWuqLrJvihs8gG3C3xOXiEVJ4Bhbw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rpnnA/RGtmA9LSRLgxWtjIaxkdCK1Hf2HUW7B7wMEdc=; b=h
 mPlaNKVwhpo7X4XVDunQ0N4Wc7UtgCNlR+vu+p9Z9l4X8PEV1JVGYmOppgz4FIuK01PXKH+SdhYed
 5mzEpGTXXec74Qd8UkW7BXifSNy8yGl03QWcRY1Lfqa1kl3KabE25xvKgP0bw/FG3BqZkwCOvxL1f
 9wx5D0clYCKvuWRo=;
Received: from smtpbg123.qq.com ([175.27.65.52] helo=smtpbg.qq.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuYq6-004FIg-Jf
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 27 May 2022 12:13:16 +0000
X-QQ-mid: bizesmtp88t1653652609tvbfulci
Received: from localhost.localdomain ( [182.148.13.40])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 27 May 2022 19:56:45 +0800 (CST)
X-QQ-SSF: 01000000000000B0G000B00A0000000
X-QQ-FEAT: mwYX/W3keFESGNifi1nYC/0th6SFrIwTvvNHV916Q1pTnt6XcF2ArOW4UbxMm
 4WgbUTfpZIB4rWqyFHsIhckmYPNJU2PKOoj7BJL1RLmPX5AWl6dUaGuSYVKzgPzPAHIMJBB
 c0xY2WU9MGcbvrbxBx1g1ezWVfL0/EJFNbsoFNMIXlG5XRGX9gdZBxdWPjAQ7XsYBxOOrFf
 oSnpE9exotKlzy5CA1v47G6PP6A7HlIq6t+HewtuVzgsqfOjdYBF6iVvvezpd7BnPLkF7Rx
 pOtQFGIWL71HLcO8m7UM1ZOMwsWemE7NOAxnjpk6ILHCFxE0vW991AmuQ=
X-QQ-GoodBg: 0
From: Xiang wangx <wangxiang@cdjrlc.com>
To: anton@tuxera.com
Date: Fri, 27 May 2022 19:56:38 +0800
Message-Id: <20220527115638.9031-1-wangxiang@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam8
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Void function return statements are not generally useful
 Signed-off-by:
 Xiang wangx <wangxiang@cdjrlc.com> --- fs/ntfs/inode.c | 1 - 1 file changed,
 1 deletion(-) diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c index
 4474adb393ca..b80bee4a8e5a
 100644 --- a/fs/ntfs/inode.c +++ b/fs/ntfs/inode.c @@ -2277,7 +2277,6 @@
 void ntfs_evict_big_inode(struct inode *vi) BUG [...] 
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [175.27.65.52 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1nuYq6-004FIg-Jf
X-Mailman-Approved-At: Fri, 27 May 2022 14:13:01 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: remove unnecessary returns
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Xiang wangx <wangxiang@cdjrlc.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Void function return statements are not generally useful

Signed-off-by: Xiang wangx <wangxiang@cdjrlc.com>
---
 fs/ntfs/inode.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 4474adb393ca..b80bee4a8e5a 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -2277,7 +2277,6 @@ void ntfs_evict_big_inode(struct inode *vi)
 	BUG_ON(ni->page);
 	if (!atomic_dec_and_test(&ni->count))
 		BUG();
-	return;
 }
 
 /**
-- 
2.36.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
