Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA2F3B737B
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 29 Jun 2021 15:50:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lyE8B-0008O2-S4; Tue, 29 Jun 2021 13:50:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lijian_8010a29@163.com>) id 1ly9he-0006L1-7O
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 29 Jun 2021 09:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2IFJwus0pkEsCVVjuo0SmrtcURGJHkcj08Y0nJHOo7Q=; b=eUprmMGph1u2GkgfogMhVkENdA
 PULXXH7LsA4ZFBtvTbG4OaYvMRvEFODjV2v6j14E3CDfZ9wOo4ZNmQ+M3Hqn+mAM3EhoEUh6K9IHv
 4Niomi79w2ZaiCW8b5/HjYUS/FdtgS+MH2o3FFST+/HlgHgzf+Om3O1/ZLgoPV80p710=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2IFJwus0pkEsCVVjuo0SmrtcURGJHkcj08Y0nJHOo7Q=; b=Sw+QaXT5cM6rSqI4nBOZCGV3nf
 vmPs4I2h2AC2eUiiMl/Hd92W8fhzzhnoPtjKQOZ0TbbBLe8TIqYQba0bQWftilEsT2V9q3sEKiZ6S
 p/uCo46ZzpeW5LLr3WQl4bzv5LbCTGDCxLyXzQUfunchQkhUn0P0qwdHe/5umayPnd6o=;
Received: from m12-12.163.com ([220.181.12.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1ly9hY-002x22-L3
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 29 Jun 2021 09:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=2IFJwus0pkEsCVVjuo
 0SmrtcURGJHkcj08Y0nJHOo7Q=; b=GH/s/ppWW88xkERZ5du9MPajZodIkEPWfw
 NB3Gi6RWKIAyBVm8iVYl7bgZOlOcKO94wqi0akh5X5mDGdVizdLMulsbuxa8dhCd
 EECc7O6DL8fYVTnMZg0EUYIQEdZOSpAqxO4F2zQ9BqP4Rc7+zFYHPspBUCIBAIzl
 AHFoxdVyE=
Received: from localhost.localdomain (unknown [218.17.89.92])
 by smtp8 (Coremail) with SMTP id DMCowABHHzCY4tpgdGV3MQ--.41752S2;
 Tue, 29 Jun 2021 17:06:33 +0800 (CST)
From: lijian_8010a29@163.com
To: anton@tuxera.com
Date: Tue, 29 Jun 2021 09:06:15 +0000
Message-Id: <20210629090615.114432-1-lijian_8010a29@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: DMCowABHHzCY4tpgdGV3MQ--.41752S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Jr45Jw43ZF4UuryDJw45GFg_yoWfXrg_ua
 yxCFWxAFWDJryjk393KanrtFWayw4rCF12gFnrKFyYgF45t3y5tr4qqrWFqr45ur43Zr4D
 Cw4jkrW3ur43GjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU55R67UUUUU==
X-Originating-IP: [218.17.89.92]
X-CM-SenderInfo: 5olmxttqbyiikqdsmqqrwthudrp/1tbi3xnAUGB0GqwxOgAAs-
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lijian_8010a29[at]163.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [220.181.12.12 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [220.181.12.12 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yulong.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (lijian_8010a29[at]163.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ly9hY-002x22-L3
X-Mailman-Approved-At: Tue, 29 Jun 2021 13:50:26 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs: ntfs: super: removed unneeded semicolon
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
 lijian <lijian@yulong.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: lijian <lijian@yulong.com>

removed unneeded semicolon ';'.

Signed-off-by: lijian <lijian@yulong.com>
---
 fs/ntfs/super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 0d7e948cb29c..a45e06fa8a73 100644
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
2.17.1




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
