Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 451FD6B9411
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xC-0001Rt-Cu;
	Tue, 14 Mar 2023 12:40:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcimerman@doas.su>) id 1pamYu-0004Jj-EY
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:From:To:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mF+nSMZzLJPS12G0KEfjtTfNFer+NMmFp89iOOpgIlQ=; b=YY8mYi5MjBJaywXqx9+jCKA1QS
 Xh3bVEfEfxcg9gtCWEZDY3E16JXAU1QOkiVFVJTbDRm2iL0H1vmx4thwAahcsHPvnqweBL6SJHF8P
 V/qV23eNPET/CNoylfLKCBK0cxDAMLX2rf7F+xHBliOubrNaZSaUHPupUeU13MjYY4+s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :From:To:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mF+nSMZzLJPS12G0KEfjtTfNFer+NMmFp89iOOpgIlQ=; b=g
 Tx5AtRtHjS+us6txmenUEItia29Rfb+EuxPBNYdV/7KjMizElz4dQLf+KRYjnsHw4Fvc2E6Y2sWcd
 RBDBniszl1NlaYdDYrRI7aDO1CywG+nLErr8kg24xhqyDTmjzRx72S/faOjMbwJv35zBoQga5ukUL
 R6iVGYN+jN4kgWoc=;
Received: from mail-41104.protonmail.ch ([185.70.41.104])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pamYn-004AbA-5y for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:54:12 +0000
Date: Fri, 10 Mar 2023 23:53:27 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=doas.su header.i=@doas.su
 header.b="fGNsTg44"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=doas.su;
 s=protonmail; t=1678492417; x=1678751617;
 bh=mF+nSMZzLJPS12G0KEfjtTfNFer+NMmFp89iOOpgIlQ=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=fGNsTg44vcdLirSqVt1lXIW7cr0pyyd0LK0mWtkbBk07oywyjb6Y1EiyvBgrK3i61
 1vRyeG5j1J2XAnw5ICSCOmjjBJjBC9fK1N7n8G7MbdC+OhWoYyBPLlBhAy0Py91opb
 WkZwMvkBrCj2u1Z4RPDw5l/7+abUGaCVJevfaNn0Exwdyxpz8slooPcsr1ifkSXiPR
 ZwoF8vv8GVXCSt67nCYJjwsN87zhpoxMKpgdYkSJvkNpVzGggRDmADKPDVADanGL/D
 Ux0VcH0iu/1bd0VKGpKnR5/rqw3edWZ+JJfpCswfrgu/yfoQXTPO2Tp5FogLtgx4lO
 7FTnTExCl+aow==
To: anton@tuxera.com
From: Miroslav Cimerman <mcimerman@doas.su>
Message-ID: <20230310235154.15581-1-mcimerman@doas.su>
Feedback-ID: 68733797:user:proton
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Remove redundant word in the documentation. Signed-off-by:
 Miroslav Cimerman <mcimerman@doas.su> --- fs/ntfs/dir.c | 2 +- 1 file changed, 
 1 insertion(+), 1 deletion(-) diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
 index 518c3a21a556..8bf69be5c737 100644 --- a/fs/ntfs/dir.c +++
 b/fs/ntfs/dir.c
 @@ -57,7 +57,7 @@ ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
 * t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pamYn-004AbA-5y
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH] ntfs: fix typo in dir.c
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
 Miroslav Cimerman <mcimerman@doas.su>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Remove redundant word in the documentation.

Signed-off-by: Miroslav Cimerman <mcimerman@doas.su>
---
 fs/ntfs/dir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index 518c3a21a556..8bf69be5c737 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -57,7 +57,7 @@ ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
  * the dcache aliasing issues.
  *
  * Locking:  - Caller must hold i_mutex on the directory.
- *	     - Each page cache page in the index allocation mapping must be
+ *	     - Each cache page in the index allocation mapping must be
  *	       locked whilst being accessed otherwise we may find a corrupt
  *	       page due to it being under ->writepage at the moment which
  *	       applies the mst protection fixups before writing out and then
-- 
2.39.2




_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
