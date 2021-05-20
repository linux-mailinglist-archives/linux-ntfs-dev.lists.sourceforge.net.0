Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E528394531
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXl-000305-7o; Fri, 28 May 2021 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lee.jones@linaro.org>) id 1ljhSQ-0003bc-R3
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HYp3jg3sRXQlLbxRQ+kLrMqD1BSTvzaOONIVK3wuGQ4=; b=GTWiByblQHyUXyOhJirTof6zVH
 vxVy49cnm1hr4HTmGzKJRWiwP6gLsU9eOsTih2jntgDA6pi/3Rqc9s9O80qnOLRK37YjHtuRreAK/
 Y+Sy6mIfeyij9AScJbOw5HQPBh6T6o5nw7tZI95tbDW/mxRhv8yu1XqzykUf38PZ0cQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HYp3jg3sRXQlLbxRQ+kLrMqD1BSTvzaOONIVK3wuGQ4=; b=Ef3A/kLw5AlyU40w1SmfBPhCVz
 +rpEiPPOgGWzEQGjhcu/SBsTssYu7MRJiNcElQHqkuEOS2QStiNjnhgxls83EbtrstR3hvUZsJUGS
 7toSa/H2S4NZDAJGrAPFnLApafJusJ6wOTGIVzOv6dp+EJViaQXo5SyCjswboCPhEvAY=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhSN-00GQdu-5L
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:07:19 +0000
Received: by mail-lf1-f53.google.com with SMTP id c10so3137410lfm.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HYp3jg3sRXQlLbxRQ+kLrMqD1BSTvzaOONIVK3wuGQ4=;
 b=LvW0t1skB6XJu8twERfPKSNy3XvylYIG0stcsLic9SOmmZk4ZzcN7FQwTGNICONhPH
 9sBNtHdVHQ/zpECKLYw8DuYLbqbZlOOGd2svy36oQsF7G9cwFt1ckKpDFBPfAlr/sMw9
 XG4HQWchOkNZfCHoeXXllE06rfc8czeAGL0DDfKgLxptKCMfplZfTssn2qBrwNXHJhlH
 +mbtBYS9SSgMEr1/M6e6DILJ7xdxoI2O2r5OJPOU6B4u1yxlKKXNBFjsbPLcicl7wpoF
 +090p3gM/wprAjuFf6uZorYL+HX/88AEFJBrYPqpaBf4xgEVVS8hJR3vBwMUcp7+hz5H
 4NJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HYp3jg3sRXQlLbxRQ+kLrMqD1BSTvzaOONIVK3wuGQ4=;
 b=hYouvKP0/gsxyFfoPBGR1MObAPaYPlLtXl68EhqM4rPjLXRWlpfp5LMXAmU6QR6hYv
 PHItYoZdUWG9NPjnh2Qb9OD73LM8V5f1Gf4CoAwgi7ARTTrr6HA7xJecRaqqQ7EpIqUV
 BGs8gns8h3hQMgkjx1boaCSKXzS5KJuGdwppd8rUAVY3uF9ptRbxUgjk5WozmZWeyDSL
 /eP4ye/BNdtx0k7KxBH99FKB9P+x6CdJ3ecnz7h+2vNxhl/JAhtBZn426d58pvBCAvEf
 NDyJtRJbib9fKRSwasSlaaAgIyGS+5mcIey9zm1faE/6utMJap90ViOYlEjzeKq2T+pm
 1Tow==
X-Gm-Message-State: AOAM530KZ3wT7jLTKv2ujXhQXjTYWx4rNAAwNq4cAzcHTV8p73NI+qz1
 eyjGp72XMVx0omGzipyoMclkzmbQakzM6w==
X-Google-Smtp-Source: ABdhPJwMLZkhMNYQ7r+3ls/lWFpf6jloKJdYaspRvc9HDwaHg4G4iL1cIJ2pYtC94tQgwudmdRIkbg==
X-Received: by 2002:adf:f5c7:: with SMTP id k7mr3871348wrp.293.1621512058279; 
 Thu, 20 May 2021 05:00:58 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:57 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:43 +0100
Message-Id: <20210520120043.3462759-16-lee.jones@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520120043.3462759-1-lee.jones@linaro.org>
References: <20210520120043.3462759-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
X-Headers-End: 1ljhSN-00GQdu-5L
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 15/15] fs: ntfs: runlist: File headers are
 not good candidates for kernel-doc
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
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes the following W=1 kernel build warning(s):

 fs/ntfs/runlist.c:22: warning: Function parameter or member 'base' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'dst' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'src' not described in 'ntfs_rl_mm'
 fs/ntfs/runlist.c:22: warning: Function parameter or member 'size' not described in 'ntfs_rl_mm'

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/runlist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
index 6c7822cdf3ac1..b92fc781f59d7 100644
--- a/fs/ntfs/runlist.c
+++ b/fs/ntfs/runlist.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/**
+/*
  * runlist.c - NTFS runlist handling code.  Part of the Linux-NTFS project.
  *
  * Copyright (c) 2001-2007 Anton Altaparmakov
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
