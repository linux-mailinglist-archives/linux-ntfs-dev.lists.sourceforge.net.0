Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FC6ABB9F
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjB-00048u-5N; Fri, 06 Sep 2019 15:00:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yefremov.denis@gmail.com>) id 1i3NdS-00058K-N1
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Aug 2019 16:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EAPNXwtNcvomkAv43HK7BcSQSi3ID9bH+hr63tWVdSI=; b=KKQo54lOmYbE8mJtLpZS8fROie
 xZW7n0+Oi2JoV8sbGOOOZLJzdSXSYO2c7fsxf3gBED6plxaCDQamijhkLnbDHwnvMbCDQMWZCaxtU
 cO34PkKPVh9VPZ/vgOV0php+csQA4c6VlSL+oiwccJ2Uke4tKlWvSBqGrGgGgFC2ZPK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EAPNXwtNcvomkAv43HK7BcSQSi3ID9bH+hr63tWVdSI=; b=J
 VNQG68ZR3PS4B/6wdZBfW+SwUKez5Mpz6wSCChrGRhm89HO2+FsFQBHQg3AEIT96DSEcDd5hcpUxg
 qbgIbPIX4sBSXNR/Jsn/uZ6nyHp5DvsRU1LXo8qiJZP8CpTgt6IdD1YyRLJD1hS93buEL1wJ/uWlt
 udB4WlZC0CWZDcIY=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i3NdQ-008DnB-Vz
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Aug 2019 16:50:58 +0000
Received: by mail-wm1-f65.google.com with SMTP id 10so4444540wmp.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 29 Aug 2019 09:50:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EAPNXwtNcvomkAv43HK7BcSQSi3ID9bH+hr63tWVdSI=;
 b=aC0HNyavx9762487kKqZedhwUPjCijw36sEVTB6xjnjLQ6TbyQCMJbpe9SvndHm9pw
 HxVlD9f/YqTcXxVHy/waNGzHsMWenkH5XypcPCj9Hbs9avAK3tnm31NkOzHToZzRdEt7
 sjqmOHhToKFHyIF/ILi0qfQwO9rCAoY9SZzjZFujMHOEklQxgb7s3gNWaQ+tbcS5hNH6
 JroO9Y6GMtDA7XsYk+Q6fUQGiv+LzCDM7WY6x/IR7mLmWHOoQW2VpcDJX3Zz3xDBsUZT
 /HnhN0N/eqggldTL/J1pr2y2p++Q/snFvVcasuxWWCXyavleS1EiSqhu6wAN4vXjAW6b
 TGxQ==
X-Gm-Message-State: APjAAAUXgGwvsdp5ueHxkUxyyiFBJ3XjB5sBq1mJCmhJkBgIFRvuWJd4
 FyRJ139zThEW8PwIJ51C5U4=
X-Google-Smtp-Source: APXvYqyG8Uv9qqAEzfuwRYVShx38vJV1pUSPq3W7ZBAlPx5+N1oEiU4zijmswr1WDwZJj2S7mhEW8w==
X-Received: by 2002:a1c:f704:: with SMTP id v4mr361727wmh.90.1567097450438;
 Thu, 29 Aug 2019 09:50:50 -0700 (PDT)
Received: from green.intra.ispras.ru (bran.ispras.ru. [83.149.199.196])
 by smtp.googlemail.com with ESMTPSA id o14sm8340770wrg.64.2019.08.29.09.50.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 09:50:49 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: linux-kernel@vger.kernel.org
Date: Thu, 29 Aug 2019 19:50:15 +0300
Message-Id: <20190829165025.15750-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yefremov.denis[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i3NdQ-008DnB-Vz
X-Mailman-Approved-At: Fri, 06 Sep 2019 15:00:43 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3 01/11] checkpatch: check for nested
 (un)?likely() calls
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
Cc: dri-devel@lists.freedesktop.org, Leon Romanovsky <leon@kernel.org>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, linux-rdma@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Saeed Mahameed <saeedm@mellanox.com>, linux-input@vger.kernel.org,
 xen-devel@lists.xenproject.org, Boris Pismenny <borisp@mellanox.com>,
 linux-arm-msm@vger.kernel.org, Denis Efremov <efremov@linux.com>,
 linux-wimax@intel.com, Joe Perches <joe@perches.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Andy Whitcroft <apw@canonical.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Sean Paul <sean@poorly.run>,
 Anton Altaparmakov <anton@tuxera.com>, Juergen Gross <jgross@suse.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-xfs@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali.rohar@gmail.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

IS_ERR(), IS_ERR_OR_NULL(), IS_ERR_VALUE() and WARN*() already contain
unlikely() optimization internally. Thus, there is no point in calling
these functions and defines under likely()/unlikely().

This check is based on the coccinelle rule developed by Enrico Weigelt
https://lore.kernel.org/lkml/1559767582-11081-1-git-send-email-info@metux.net/

Signed-off-by: Denis Efremov <efremov@linux.com>
Cc: Joe Perches <joe@perches.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Whitcroft <apw@canonical.com>
---
 scripts/checkpatch.pl | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 93a7edfe0f05..56969ce06df4 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -6480,6 +6480,12 @@ sub process {
 			     "Using $1 should generally have parentheses around the comparison\n" . $herecurr);
 		}
 
+# nested likely/unlikely calls
+		if ($line =~ /\b(?:(?:un)?likely)\s*\(\s*!?\s*(IS_ERR(?:_OR_NULL|_VALUE)?|WARN)/) {
+			WARN("LIKELY_MISUSE",
+			     "nested (un)?likely() calls, $1 already uses unlikely() internally\n" . $herecurr);
+		}
+
 # whine mightly about in_atomic
 		if ($line =~ /\bin_atomic\s*\(/) {
 			if ($realfile =~ m@^drivers/@) {
-- 
2.21.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
