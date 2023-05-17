Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 978737060B8
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 09:06:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzBEl-0002ha-Aw;
	Wed, 17 May 2023 07:06:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@gmail.com>) id 1pzBEk-0002hU-Es
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 07:06:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dja6n1QYOT0QdF33WA5S9z2IBWajgQssBMbcEbOlQ6k=; b=WB67VGgDzqNAtLJV3d+ngiR6k7
 sg0L8dbCcTndeNacjtwg6+jwXjokhUW6zNpPF3cW4pcmH1R9rZaRfHKW0Lk1tWP/k3RQB6ADWg2EH
 +gUqN72NlY8+szvAN+KhM9fqtl5Hxz1VquFMugUxPfbsNss2XGeFQghT+EWpgE3km+6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Dja6n1QYOT0QdF33WA5S9z2IBWajgQssBMbcEbOlQ6k=; b=E
 sfdCGmROx6aK3LKW3rZ/vTLMxkSiCFm6EzikiVhG8Go1vjWTbB9/h7Uu1ar9qywXwo0tk1oYkR353
 OFM2f7xfIaXBMXNSlr4cxcOyPM7tnpHTO+ItHd7Q73itm51KsDsClgcGhRrzU/ZCVxbNxn0dgeFOm
 DDLVeYaKFYcr9rOQ=;
Received: from mail-pg1-f176.google.com ([209.85.215.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzBEg-00Al6d-3T for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 07:06:14 +0000
Received: by mail-pg1-f176.google.com with SMTP id
 41be03b00d2f7-51b4ef5378bso346603a12.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 May 2023 00:06:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684307161; x=1686899161;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Dja6n1QYOT0QdF33WA5S9z2IBWajgQssBMbcEbOlQ6k=;
 b=aOtdDTIXDwQIiPH7fLhTJiH133+riWpeICYMQHkFQcoJkAWT8XOrk75O9I5pDp3Cyn
 KUBYvwXnBWSqPuGXHuG5cFq1IH4mtKXV8x3RgA5oEzxXiG8oUYQas4L44r1yBXz7IrWf
 GyD89Wu1M8HmvtoGPulvvIBmsxkwtM8EMwgBw1IXWVHuFgKHjTGVTpA4fQBoZTlBwN3q
 bqYbta/VHKPi0Z3H3m0ZphawLmKsnyqOKwAjLhlAq3rXZsd/N6vfRe0C+fAHNmR3CtbL
 FLSJcSIn1RXoUlUJbWS900dYhg6QozU6BsEWq6SisEQn9RocKgLciXzACpMv/LfzgpQF
 zZ+A==
X-Gm-Message-State: AC+VfDy6v94sni6CTNc+EMZluOzq915WfMw2PKrql/ocE3wEZGJRMSOo
 8gWdap+QqtPTO7pRUECDjSs=
X-Google-Smtp-Source: ACHHUZ5QguHl2k+SFkc3S/ykgkKhUQZInn3xsKA7Z8lD67tG9dTHAaKcNdQVPoHEuwBLgl/bwFPzTA==
X-Received: by 2002:a05:6a20:12c2:b0:105:8173:93a0 with SMTP id
 v2-20020a056a2012c200b00105817393a0mr15244416pzg.5.1684307161118; 
 Wed, 17 May 2023 00:06:01 -0700 (PDT)
Received: from localhost.localdomain ([211.49.23.9])
 by smtp.gmail.com with ESMTPSA id
 t3-20020aa79383000000b0063f0ef3b421sm14825427pfe.14.2023.05.17.00.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 May 2023 00:06:00 -0700 (PDT)
From: Namjae Jeon <linkinjeon@kernel.org>
To: brauner@kernel.org
Date: Wed, 17 May 2023 16:04:23 +0900
Message-Id: <20230517070423.6379-1-linkinjeon@kernel.org>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linkinjeon[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.176 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pzBEg-00Al6d-3T
Subject: [Linux-ntfs-dev] [PATCH] ntfs: Add myself as a reviewer
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
+L:	Namjae Jeon <linkinjeon@kernel.org>
 L:	linux-ntfs-dev@lists.sourceforge.net
 S:	Supported
 W:	http://www.tuxera.com/
-- 
2.25.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
