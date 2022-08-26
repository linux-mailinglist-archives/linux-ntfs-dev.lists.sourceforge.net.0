Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA775A2843
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 26 Aug 2022 15:11:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRZ7Y-0007ZR-0k;
	Fri, 26 Aug 2022 13:11:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRYR9-0003mH-EG
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 12:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zlRI7MHuxcKJrlwJU4skU3ScXG9/sHKteMJGmZrxqd0=; b=UTllie74Aiok47CgTqpjIio7ad
 AfXXaQm8C7EPUyvBYPz5GT3kcAjTzv05WG9e7vkYltu9OfQPxj1BEfCxw7yXQprL0Fgb5hOqe9Wow
 DPvzrp3HRydKss/SRdGc3tIBH/musKMpFA7qDNFhTv9unpqunY0760VLawkD2u185X/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zlRI7MHuxcKJrlwJU4skU3ScXG9/sHKteMJGmZrxqd0=; b=HDBE7P+M6khvHCaq8LErBPmv6w
 9UEPcGN8PXp9EYagyZqy++JQOcILhfwsLXbYOfVZltb8pj9F2XzuU3x7aDvW26j3k+hymskaUB+ET
 1Oe9eYz9uOTPE1kewAM6CB5HHw/HDtkW8TeW0hsGjnSjdzXBubboZa8fGfX5R9gVzdDY=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRYR8-001SCC-UP for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 12:27:47 +0000
Received: by mail-pl1-f169.google.com with SMTP id w2so1502317pld.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 26 Aug 2022 05:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=zlRI7MHuxcKJrlwJU4skU3ScXG9/sHKteMJGmZrxqd0=;
 b=N+A12VueOxJN+5/X9mzcDMYm5bkExVHiU1H/V3RV1jYZ2Ax6ewhnxaKtN4tr4Tk4Sk
 +QHt7ASkTaLWLcPdJf/B1BDjcb3DyB+pWdBMMncu9VwbiulJtVZXOuOoBLGg6nSzUYdM
 BNmK/6EE8ViaclHLMXSADsaHZ9G7PgAd/SQGBAOyL2QLD5jMsX5mFZwDXakI1HfbKjY1
 9Za4rJ5mQrsVrSyV8rh86US2ATlPcBLKG7vQ3FQW8WLDm2NWQHmJ94fYENxAJsE5eJX8
 Y9vmF9vcoSloZ22C462vHxO3IeiCX5tolWud0y7Ki0iYsgWG1GSvnI/78dxWwNz/zWRG
 F08A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=zlRI7MHuxcKJrlwJU4skU3ScXG9/sHKteMJGmZrxqd0=;
 b=bt3glGxfoS2+ntt22nu7kFtJePJk0O7WVUQnWBvgft+nXVz+vhQpQlLPNc50R+Eann
 BfqOlzzPCJvbQh/0DZob5tsovT5fZgg1yCnhpIsQ5NRedbL1ur3Wos4i5FCdM8q2LOrf
 JDY3zpgTukZWjZuvtY+uggtRBEVs08xibOI+O1vk6eIuH76qEz9fXa4ttmr6UpYBzQZN
 3IbEp6l22O8egJJ6wUipuvS4Q9musPYrVJIf+TTw7+hChtpRjl+yc1X7S7IAwR4boBz2
 8bcZ9n+Qwr2NcChms94vWAM5LdlHlbZy8XJGYphHupzRQyTjr0N3aSqfs8Wtm6C/Eu2B
 +ffg==
X-Gm-Message-State: ACgBeo2MmI7imaklBDOUr2GHUfVPgjZzcx7Dp3c8wiXimSWmVeJZMEjA
 Iqr2QKT9nQo3tIFjj55ummaCil4GSJRtS6pRXoY=
X-Google-Smtp-Source: AA6agR5HVe41UWjwyIpTMWyscRlQ/lPdKyP72R/T0Ha0KxwN3XsaGCpiLG+NlsvNoMpA8cZ9eu7X+A==
X-Received: by 2002:a17:90b:1bc6:b0:1f5:313a:de4b with SMTP id
 oa6-20020a17090b1bc600b001f5313ade4bmr4223148pjb.4.1661516861461; 
 Fri, 26 Aug 2022 05:27:41 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 j16-20020a170902da9000b0016d2e8c2228sm1456405plx.238.2022.08.26.05.27.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 05:27:41 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 Anton Altaparmakov <anton@tuxera.com>
Date: Fri, 26 Aug 2022 20:27:34 +0800
Message-Id: <20220826122735.2690-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <0000000000006886bd05e714ec18@google.com>
References: <0000000000006886bd05e714ec18@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syz test
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 master Looks like it is improper check order that causes this bug.
 Signed-off-by:
 Hawkins Jiawei --- fs/ntfs/attrib.c | 5 +++-- 1 file changed, 3 insertions(+), 
 2 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oRYR8-001SCC-UP
X-Mailman-Approved-At: Fri, 26 Aug 2022 13:11:34 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in ntfs_attr_find
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 yin31149@gmail.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

syz test https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master

Looks like it is improper check order that causes this bug.

Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
---
 fs/ntfs/attrib.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 52615e6090e1..6480cd2d371d 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -594,10 +594,11 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 	for (;;	a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
 		u8 *mrec_end = (u8 *)ctx->mrec +
 		               le32_to_cpu(ctx->mrec->bytes_allocated);
+		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end)
+			break;
 		u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
 			       a->name_length * sizeof(ntfschar);
-		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
-		    name_end > mrec_end)
+		if (name_end > mrec_end)
 			break;
 		ctx->attr = a;
 		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
