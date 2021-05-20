Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3100D39452F
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 28 May 2021 17:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lmeXm-00032J-Aj; Fri, 28 May 2021 15:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lee.jones@linaro.org>) id 1ljhpc-0006Ze-Nd
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/K9QEy1CqtI+RwRITDC05ejyAQ80jXH50zTL26wkG0M=; b=cO5SP3xLcPvxOIfdie9xbjFVe3
 m+kDE01XqWWFeoMAGmW4BmqePIUx5IvGeaSZ4fNBX5fzaUNtjs/cVfJ4YSW3ZgTtHYkIOKzoL0i5+
 bpwKoETf9gTN4D2u+x7W83GaSu0s+Vve6ZBtVC2GgK7eYiWUOTW3MsGWvkhcQPDQgzgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/K9QEy1CqtI+RwRITDC05ejyAQ80jXH50zTL26wkG0M=; b=MoKvJaqsaHZE7XKDzcRYlT0qdl
 5uXc12Gg0mEptUIZN6+UYK19AUt2hQNXfMN02nohp5LMhilaaYlR+NGmH9eXhO+KSSD/b7xt0w2W6
 fxxUVj/L2T+OQRkbQaRANGmChTcPXaKAY94Ry3Q5J5AZpj5q2UgnOta0M9axBQDGBbyg=;
Received: from mail-wm1-f44.google.com ([209.85.128.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljhpY-00GScV-0I
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 May 2021 12:31:18 +0000
Received: by mail-wm1-f44.google.com with SMTP id
 u4-20020a05600c00c4b02901774b80945cso5312252wmm.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 20 May 2021 05:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/K9QEy1CqtI+RwRITDC05ejyAQ80jXH50zTL26wkG0M=;
 b=w7rYpZ4/PoYGKY9/CAHCSNgZZCOepLXHKIfg7dO9or8O1tRzuDaTwz6sntwdMuVBNH
 F5ULPotuZVjMmkMsjRfRv7y9YflKXdsDXfW1BgrEbaIKhRhIbbR5vN9QADcddZA5LVR5
 o7pjEf54iZ8p1iPigXzgbgcDsoAreQR/S5fXI9p9LHE6/7p+9DjdvaZA/iUts1hc6dtv
 Z1LD0KFClQQNBiGd/gIPQVaa32Z1GB6CdCscwttXprN3PldBQByDRYK7ImWEzcKGiKIl
 HGEv/aB98po74Vh4iit38GKdwerSyy/pG14SQmEEDqE92qsMb8+949HMVTsMIwUwBgAS
 /uAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/K9QEy1CqtI+RwRITDC05ejyAQ80jXH50zTL26wkG0M=;
 b=kLBQOoBgc19zQi0DvuKyLxEUfv/n3XZrTU6Tb6XjyEC/vtKviEhiXFPzEwqS9sOtFd
 7i4vzogVhbHVPxPlwOZ3ppOE3nYE7Srn0WxvDNFZj0i8/dysyTR8PNvPr3RDtPOlCDy/
 odLDuVxY9TLwO87LmH5Fz7y0Tgdd6+NZuGRpRVA31YtWUxldBZNHtKspHurBWnHwdOtv
 EQ9iMyA7lRQ4u6NXt+LmD9HVgSVrwJvrDUemCzdrQ2eya8GX2PIROJY5QAiZZmpfEmru
 JQjvCAfEfJuukufJCFVYm7Ynu2nWletFawo4fHZEjCsZloQWGmzOG9yvqmDuavjehpT9
 6jhg==
X-Gm-Message-State: AOAM532vcML5LMbB9g7MwKU7u93rNZkcvpLLzWfAhLur+FeDSOqCOfR+
 8tnURBVFdSsgL3udg40wKe9AQpz5vrHcmw==
X-Google-Smtp-Source: ABdhPJzX3CgE8FEwjw8Auk2s9MqrJXJ9SSB66QlbR7ITvxPAKU4RQzbwXU88IKk3QJj9MjrY5+id6A==
X-Received: by 2002:a1c:1b0e:: with SMTP id b14mr3209151wmb.121.1621512055152; 
 Thu, 20 May 2021 05:00:55 -0700 (PDT)
Received: from dell.default ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id s199sm8848269wme.43.2021.05.20.05.00.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 05:00:54 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Date: Thu, 20 May 2021 13:00:39 +0100
Message-Id: <20210520120043.3462759-12-lee.jones@linaro.org>
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
 trust [209.85.128.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljhpY-00GScV-0I
X-Mailman-Approved-At: Fri, 28 May 2021 15:36:59 +0000
Subject: [Linux-NTFS-Dev] [PATCH 11/15] fs: ntfs: super: Provide missing
 description and demote non-conformant headers
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

 fs/ntfs/super.c:66: warning: Function parameter or member 's' not described in 'simple_getbool'
 fs/ntfs/super.c:66: warning: Function parameter or member 'setval' not described in 'simple_getbool'
 fs/ntfs/super.c:1204: warning: Function parameter or member 'rp' not described in 'load_and_check_logfile'
 fs/ntfs/super.c:2660: warning: wrong kernel-doc identifier on line:

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 fs/ntfs/super.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 0d7e948cb29c9..ba2be89abb23f 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -57,7 +57,7 @@ const option_t on_errors_arr[] = {
 	{ 0,			NULL }
 };
 
-/**
+/*
  * simple_getbool -
  *
  * Copied from old ntfs driver (which copied from vfat driver).
@@ -1196,6 +1196,7 @@ static bool check_mft_mirror(ntfs_volume *vol)
 /**
  * load_and_check_logfile - load and check the logfile inode for a volume
  * @vol:	ntfs super block describing device whose logfile to load
+ * @rp: 	restart page header to check
  *
  * Return 'true' on success or 'false' on error.
  */
@@ -2656,7 +2657,7 @@ static int ntfs_write_inode(struct inode *vi, struct writeback_control *wbc)
 }
 #endif
 
-/**
+/*
  * The complete super operations.
  */
 static const struct super_operations ntfs_sops = {
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
