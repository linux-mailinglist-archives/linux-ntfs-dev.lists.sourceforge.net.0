Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F4C33FB42
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 Mar 2021 23:32:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lMehs-0001bc-0m; Wed, 17 Mar 2021 22:32:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <yashsri421@gmail.com>) id 1lMdAC-0008C4-R8
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Mar 2021 20:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKYuNNautpL9GsX/k1t8k+V+WDGi+hWf1VRFyREZzWA=; b=UCC8JQaLRMBVOGf4VlicHnygu1
 9gvOby4SCX2JiFykY064e3drBGum9nrFn23IlDovdxsy7DS+1ZpZ9pY0ehNBLmZo6B8b4O/sxcdJB
 0NGdeigk7zLMpEe/eNF6wOUpStq1A/KOKz2678cxqlFcFhPojw5RLttKyRSEB8SQ0JNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AKYuNNautpL9GsX/k1t8k+V+WDGi+hWf1VRFyREZzWA=; b=abqdJ0wY6j69ZMocncWxAhBWpl
 0LuN7PB338zBoe4uYwqVGvTft+Bhept0Xk3XR7tX1/pRfhSf+iDUiP5mMQt1n9zbg1WJR+j4Bk/F0
 +6b0F9UaOYWCWFIFtxG9gDbzSzOJ+GfTbbGIbECXniMtKEExnkKHjcRwzFHAOXMO/8yA=;
Received: from mail-pg1-f170.google.com ([209.85.215.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lMdA4-00C295-32
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Mar 2021 20:53:08 +0000
Received: by mail-pg1-f170.google.com with SMTP id e33so19957pgm.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Mar 2021 13:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AKYuNNautpL9GsX/k1t8k+V+WDGi+hWf1VRFyREZzWA=;
 b=fUA+sXj1+G1P5qNMQ3kV1By1YcbAhSpxmiKaAIT23Y1EzpBNXfRcRBmgdK17ce3hub
 0keIoX//U2oSDv731hzNmxXSUCF82cav2yP2CKAdC2kNZUIRnStPyLaZU84yARuYvxNb
 bJn+0Cn3o4OMuHE7fMdvQL3q1o5I+AT0651yDaEsO+g/Y0mm/NZrRD5PoRYVYf6CBmCy
 YQ0A7+Jb2NACN97GCRD8jy744trAaVTwv5VuelkHknxUzvpRTBo4PYjJ8iLATc1u1t90
 CrMD4Mcjg5nS/JL9eO0AMwOSMyNllGprQPsULRWUYN1RTPc6uP+LKFam7LhJOGap1LJ4
 RO7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AKYuNNautpL9GsX/k1t8k+V+WDGi+hWf1VRFyREZzWA=;
 b=DjBS9wQjvK4IVJAU4jIATM7MAjXVWTT8W7pJMhokrB3dR4t+lR9azcEsKf3LkojI8F
 L7/WA6iQvaF+aG3psaUEOyZTN8BbnVH2FjMshoZPdafvWsXCgasc3WqyVswCT1ajXaXD
 bCR8RkQjzL738x70iohovWBCTWH/v879GFXzqmQgbKF812S6+fLf7u2c7gJ4MpxbW60X
 g5SLdLGkzQdT2qvI4rmFZtPEe+J65lv4iiGH78VTZcc1qdpgboq+ugLscR32R65ryVWA
 PgTdGQO1ZrlKTYFkSrM/WwvWYTDH4w33Z6yxwg9zL+g0W6i3ZFqiNYLU2aUvX9BXHAly
 EEsg==
X-Gm-Message-State: AOAM533pUQg00Q/GflsliAIZwY1QZ+bUyBDBaTtL628pQ7tBC/bfPorO
 j7ybOKvlsrb3+4bbPWgV8aM=
X-Google-Smtp-Source: ABdhPJy8/iAz5N4nZP350sq8I/6aYbGirU4K/scVbtxPllJU5LobeunkJS+SKR9TRE0ZhRvTrrMjIA==
X-Received: by 2002:aa7:9841:0:b029:1f8:f326:a3b3 with SMTP id
 n1-20020aa798410000b02901f8f326a3b3mr785222pfq.7.1616014374477; 
 Wed, 17 Mar 2021 13:52:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:600d:a089:85d1:b0af:d6ff:42d8])
 by smtp.googlemail.com with ESMTPSA id d24sm30137pjw.37.2021.03.17.13.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 13:52:54 -0700 (PDT)
From: Aditya Srivastava <yashsri421@gmail.com>
To: linux-kernel@vger.kernel.org
Date: Thu, 18 Mar 2021 02:22:45 +0530
Message-Id: <20210317205245.24857-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flatcap.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yashsri421[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (yashsri421[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lMdA4-00C295-32
X-Mailman-Approved-At: Wed, 17 Mar 2021 22:31:57 +0000
Subject: [Linux-NTFS-Dev] [PATCH] block: fix comment syntax in file headers
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
Cc: axboe@kernel.dk, yashsri421@gmail.com, linux-ntfs-dev@lists.sourceforge.net,
 ldm@flatcap.org, linux-block@vger.kernel.org, lukas.bulwahn@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The opening comment mark '/**' is used for highlighting the beginning of
kernel-doc comments.
There are files in block/partitions/ which follow this syntax in their file
headers, i.e. start with '/**' like comments, which causes unexpected
warnings from kernel-doc.

E.g., running scripts/kernel-doc -none on block/partitions/ldm.h
causes this warning:
"warning: expecting prototype for ldm(). Prototype was for _FS_PT_LDM_H_() instead"

Provide a simple fix by replacing such occurrences with general comment
format, i.e., "/*", to prevent kernel-doc from parsing it.

Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
* Applies perfectly on next-20210312

 block/partitions/ldm.c | 2 +-
 block/partitions/ldm.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index d333786b5c7e..14b124cdacfc 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * ldm - Support for Windows Logical Disk Manager (Dynamic Disks)
  *
  * Copyright (C) 2001,2002 Richard Russon <ldm@flatcap.org>
diff --git a/block/partitions/ldm.h b/block/partitions/ldm.h
index d8d6beaa72c4..ffdecf1c6bb3 100644
--- a/block/partitions/ldm.h
+++ b/block/partitions/ldm.h
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * ldm - Part of the Linux-NTFS project.
  *
  * Copyright (C) 2001,2002 Richard Russon <ldm@flatcap.org>
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
