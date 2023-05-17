Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFA47060C7
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 09:08:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzBGh-0000cf-D4;
	Wed, 17 May 2023 07:08:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@gmail.com>) id 1pzBGU-0000cS-T0
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 07:08:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1S6C7UJ7C3ix2ULoyU4X3+nn65qw+zwXqYKGbJZ+jiw=; b=JDXDjqdrrhIcnbWE6LZbMCxrF6
 fRTXA+fAQPWn1RC+ZYQmclIGsGlwSHxbVteVwsj+zg2jqrSB7jJzClNbn/s/chI9dI2ONFKmuh2n3
 o8G6lAnhGO9piOlNoqolGAl6Xjf2GR+CcVXjAZbDcbiUtP4J3NRX1nPOJaItvQrrpC+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1S6C7UJ7C3ix2ULoyU4X3+nn65qw+zwXqYKGbJZ+jiw=; b=R
 OQ3WdWxsVZlR3BAE4A97rWficrkxQWK9j97nBEe8I3a7ngE6GOqnuvCw8FB/lrBnJ2lcFk2pMomzR
 z0HkldjvC339npT70AmmHm9ejg4kXefqcOzJZZ9Ext5mHf7B16WDrLb8wiF2OejXj9xivZBjZAvJX
 1gtMNvbSpsd8d7L4=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzBGT-00AlB6-14 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 07:08:02 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 98e67ed59e1d1-24e2b2a27ebso532941a91.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 00:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684307274; x=1686899274;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1S6C7UJ7C3ix2ULoyU4X3+nn65qw+zwXqYKGbJZ+jiw=;
 b=KEFUa3Ks1r3pNVzoGDmdRZN+NajO5ar0E+WmD93j2NaGQF2EFsCMBe/w3H45YJknRD
 EKAy+GA22nYTOYo2VEZehWTKHGI2tN1P/TB7Me3m/n5gaOI8W0DOqQoT8wP0inRHxY/O
 aBWl9AWPxaD7UcePSiVE3TQiCZrH/NKlXsxIFsy5Q7ck6GP/jhHgiOLu44mnsMKKJgCr
 9wgSA+3IuzhB7Z431vz1+jE9Zd6OohNFQKc3AX8TD1HmszyStfjKEchIRnGRa0wxwtc2
 WCig3/R0FUUAM356a4bABseA8/EFdDPQDKOolHWzwdIA09agHiM6tShjK1CJgAUVpiri
 uEOA==
X-Gm-Message-State: AC+VfDzfFB3eq3U/JW3Tbu5+S8uLg1C+lfQEh7tU0UVhPSz/Ao/fFEmP
 0xgZ8jEtcECIvAJFQCRDFK8=
X-Google-Smtp-Source: ACHHUZ7gP4FtZbfRxqTkCnO5n8lbjXiUTmJTIRTbYCJ/FEuD+M+noeodyusKmCzm8156hBUdG2qUPQ==
X-Received: by 2002:a17:90a:9292:b0:253:2995:f4a6 with SMTP id
 n18-20020a17090a929200b002532995f4a6mr4325551pjo.38.1684307274455; 
 Wed, 17 May 2023 00:07:54 -0700 (PDT)
Received: from localhost.localdomain ([211.49.23.9])
 by smtp.gmail.com with ESMTPSA id
 nl9-20020a17090b384900b0024e2230fdafsm790962pjb.54.2023.05.17.00.07.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 May 2023 00:07:54 -0700 (PDT)
From: Namjae Jeon <linkinjeon@kernel.org>
To: brauner@kernel.org
Date: Wed, 17 May 2023 16:07:39 +0900
Message-Id: <20230517070739.6505-1-linkinjeon@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I'm volunteering to help review patches for current
 unmaintained
 ntfs filesytem. Signed-off-by: Namjae Jeon <linkinjeon@kernel.org> ---
 MAINTAINERS
 | 1 + 1 file changed, 1 insertion(+) diff --git a/MAINTAINERS b/MAINTAINERS
 index e2fd64c2ebdc..c2cecb2059d7 100644 --- a/MAINTAINERS +++ b/MAINTAINERS
 @@ -14928,6 +14928,7 @@ F: drivers/ntb/hw/intel/ 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linkinjeon[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pzBGT-00AlB6-14
Subject: [Linux-ntfs-dev] [PATCH v2] ntfs: Add myself as a reviewer
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
 bagasdotme@gmail.com, akpm@linux-foundation.org,
 Namjae Jeon <linkinjeon@kernel.org>, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

I'm volunteering to help review patches for current unmaintained
ntfs filesytem.

Signed-off-by: Namjae Jeon <linkinjeon@kernel.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e2fd64c2ebdc..c2cecb2059d7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14928,6 +14928,7 @@ F:	drivers/ntb/hw/intel/
 
 NTFS FILESYSTEM
 M:	Anton Altaparmakov <anton@tuxera.com>
+R:	Namjae Jeon <linkinjeon@kernel.org>
 L:	linux-ntfs-dev@lists.sourceforge.net
 S:	Supported
 W:	http://www.tuxera.com/
-- 
2.25.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
