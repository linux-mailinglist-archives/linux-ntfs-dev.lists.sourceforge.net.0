Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8F45363D1
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 27 May 2022 16:13:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nuai8-0001Iz-8r; Fri, 27 May 2022 14:13:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <colin.i.king@gmail.com>) id 1nqtdT-0002yY-Qw
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 17 May 2022 09:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=; b=izPmTcd6pLnit2Rmf8JVA8gCEN
 i9Zmb+ti0FReM6OxDKJHDuMhYzbtKCFlvf+2NmjfAepJp8K7ICdir1xjG8bWFF+JDfAuP91GjE/ss
 N6TDsaSFqn0Wmm74fk9Nv+pv4b3FYH0ctvnbPrEIZpJZJrPuCCTI4q5yJNSuBljGFX1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=; b=GOS/FMrkJzGOq+6dGx7TmZlJvL
 xTDjkuIv9fylBwBBBeKCn83WzCnx1liAHeIEylfitc6KZ0dLy4MydB7G5mZ0x4hOuHAxXqJ9jwSrS
 jBctOMpYneyOIReUjOJ5lR5AaVW02ULELrLPs4qAZpHoM8oqpczZSR0WI/6bfGdnstr8=;
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nqtdP-003IMb-Ei
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 17 May 2022 09:36:57 +0000
Received: by mail-ed1-f46.google.com with SMTP id er5so8080695edb.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 17 May 2022 02:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=;
 b=hZy9xMRoeMjucGbLNTRVbjQzweG34s/HHZiePWY8egY5hToreKw6isov44Nib2PTzO
 FCx66HVsM8Oz2KQXRuHDxzOQXtqMH+LV3yMXZUv/N+96pChUkE6uBNLPmaDmaUY+kkk/
 jC5Rw6dSJvrUNOwdSaFcRnOPNP/CUbBczzmurEOx/d8eSfbLgDBWZZ3Ycl1MhIDD8yUZ
 aYz4hP2TyqCT/DHTDbpO2fLitzhtZbuSbfdkJh0nfeItaekFFZ62BodDTtCIHQr5h1pp
 ooayMP5lqRWWLWDbiA4yjmjUx2XLFxUn1B+qxxZhKlZTrZC1/f4/9Z7uzQJwTlU0Sdp+
 ZsyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uvIkZ+SZSnuVFUBNtp24/kBbyO+aODjZMJiPGY46AQE=;
 b=bhlGIC8dWq/OtDnYVQhagEfYfe15hGN2FVdWM1JFTww9Mf0qSXFf8f+D/BbgCXCkJS
 7pJPSO3nfNy1yuzMRUL2Lwm8NR9AFBZhGfInklA05TDUwVWnQP6WB/9Ya8mlcRrEzNEh
 /14bOe14RHOmn8gD6ErumaDvR3PndDWHkSbySKAjWrZ+75fenitoeRsq3Mj2famPKA4E
 NJ5euiScNI8zY24HlO7ZXMA42JRUnoQm7jDNAAD2f+O6bhRQuj1JGqW17Pzb0dqvrJiw
 oj3nFAAbd9duSuDV+MC3NJAyafX7sNY/nBb4QmCzAESD86koJE6uiVaYihxIqqysCdB7
 3H+Q==
X-Gm-Message-State: AOAM5339/UlxVQXL/fN71wQdb1P4Ii+HHaGmPQYb82UnZhb7kvM7yPwT
 UMTNzZHa6UkbvpztinenKf8=
X-Google-Smtp-Source: ABdhPJzkJ1+hct8RVYLZUQys4gtJGoLHdQdl+zoZJQX+sv/QCfHsqiv5nvS1l/4DtAk/g3zzoROvCA==
X-Received: by 2002:a05:6402:26ca:b0:427:c181:b0ed with SMTP id
 x10-20020a05640226ca00b00427c181b0edmr17810926edd.400.1652780209084; 
 Tue, 17 May 2022 02:36:49 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 bx12-20020a170906a1cc00b006f3ef214db7sm827867ejb.29.2022.05.17.02.36.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 May 2022 02:36:48 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net
Date: Tue, 17 May 2022 10:36:46 +0100
Message-Id: <20220517093646.93628-2-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220517093646.93628-1-colin.i.king@gmail.com>
References: <20220517093646.93628-1-colin.i.king@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The variable idx is assigned a value and is never read. The
 variable is not used and is redundant, remove it. Cleans up clang scan build
 warning: warning: Although the value stored to 'idx' is used in the enclosing
 expression, the value is never actually read from 'idx' [deadcode.DeadStores]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.46 listed in list.dnswl.org]
X-Headers-End: 1nqtdP-003IMb-Ei
X-Mailman-Approved-At: Fri, 27 May 2022 14:13:01 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs/ntfs: remove redundant variable idx
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The variable idx is assigned a value and is never read. The variable
is not used and is redundant, remove it.

Cleans up clang scan build warning:
warning: Although the value stored to 'idx' is used in the enclosing
expression, the value is never actually read from 'idx'
[deadcode.DeadStores]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/ntfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index e1392a9b8ceb..a8abe2296514 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -1772,11 +1772,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
 	last_vcn = -1;
 	do {
 		VCN vcn;
-		pgoff_t idx, start_idx;
+		pgoff_t start_idx;
 		unsigned ofs, do_pages, u;
 		size_t copied;
 
-		start_idx = idx = pos >> PAGE_SHIFT;
+		start_idx = pos >> PAGE_SHIFT;
 		ofs = pos & ~PAGE_MASK;
 		bytes = PAGE_SIZE - ofs;
 		do_pages = 1;
-- 
2.35.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
