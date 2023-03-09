Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BE76B940B
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3x8-0001PP-U5;
	Tue, 14 Mar 2023 12:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcimerman@doas.su>) id 1paLW7-0005Hg-5X
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 09 Mar 2023 19:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:From:To:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qha4bHW1bXZvUhmvnzruZHSCwOv1WJnhrnWCjxLJzg=; b=RCya8+QLsBNaSjvZYa9ZvAOHtY
 7R0H4p2R/FsviRUXHyfKELzLtK6JddloTnLm5vTsIhjySYlpiHwVLN42OJhI6UvQH+H0YwEkM3WWB
 JbNomdBBH/oEAB+XAGOUrYfkabKm2vjLqy0joftmjaMV2VzRp/CWBkE74WbhydlJD9KM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :From:To:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0qha4bHW1bXZvUhmvnzruZHSCwOv1WJnhrnWCjxLJzg=; b=k
 H3JBr1z7fib8niBbyzI2rSN9RUtF36+5A43o+HySZ5DDS0js2rS15JnV+zpmrLffg560slhCuxd/3
 GSLJD94BijGVVftoa9KyUqkcAp/3KCvhay775P+B2ouftE2/4e6RPnfNbtJ+qAysYVimyPP8ltsn2
 D0Y5Bx84NwTycc2M=;
Received: from mail-41103.protonmail.ch ([185.70.41.103])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paLVx-002dI2-Ep for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 09 Mar 2023 19:01:32 +0000
Date: Thu, 09 Mar 2023 18:41:12 +0000
Authentication-Results: mail-41103.protonmail.ch;
 dkim=pass (2048-bit key) header.d=doas.su header.i=@doas.su
 header.b="R9KWdmcR"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=doas.su;
 s=protonmail; t=1678387277; x=1678646477;
 bh=0qha4bHW1bXZvUhmvnzruZHSCwOv1WJnhrnWCjxLJzg=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=R9KWdmcRBFF17pd4GA3gsIJGHyJcJet4f+pUZSWE7UA/QrJR2tOFXGR6CS+HsJUho
 3UPo5USHBVYMcIn6aTaHY14hZF3xSoLEQb4TDJDCvTLXHtn0rNJtEitjlM9cijxXV/
 rLQwx0bKGZW1Szmq4WcQSA4ki/1MqIWXOH5ig0X2p4PDPHYbB2T0sf9nvILDx42+6m
 VZxADQcDTA69uYG6pU4jOLacFkmByBymNDCe4Ccb9+N+gDDv7gF1jR/z2N8aD2i9GX
 0b6q/UiisxOyHKsQxsf+aECC4/ZAJcjLnNkjMvFNgjqyIJ6bsiqaod5ekz3JqhijES
 9TpAKpOz8zGYA==
To: linux-ntfs-dev@lists.sourceforge.net
From: Miroslav Cimerman <mcimerman@doas.su>
Message-ID: <20230309183310.26370-1-mcimerman@doas.su>
Feedback-ID: 68733797:user:proton
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Remove redundant word in the documentation. Signed-off-by:
 Miroslav Cimerman <mcimerman@doas.su> --- fs/ntfs/dir.c | 2 +- 1 file changed, 
 1 insertion(+), 1 deletion(-) diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
 index 0ee19ecc982d..e376237464a6 100644 --- a/fs/ntfs/dir.c +++
 b/fs/ntfs/dir.c
 @@ -70,7 +70,7 @@ ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
 * t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1paLVx-002dI2-Ep
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
Cc: Miroslav Cimerman <mcimerman@doas.su>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Remove redundant word in the documentation.

Signed-off-by: Miroslav Cimerman <mcimerman@doas.su>
---
 fs/ntfs/dir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index 0ee19ecc982d..e376237464a6 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -70,7 +70,7 @@ ntfschar I30[5] = { cpu_to_le16('$'), cpu_to_le16('I'),
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
