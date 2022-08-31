Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2455A78D3
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 10:19:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTIwp-0001FA-U2;
	Wed, 31 Aug 2022 08:19:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTDn0-0004Sh-Qg
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:49:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R0e1KmOUIwSrlRRc3FB/cF6lPx+IvbAcp8rZjan78uA=; b=aW12cVAwRYuFjUa95VQ/vLGSNW
 rBUJagyeFZdW6otzRPIMTzhhe0vEocuyP8Gw4UGZufO5sy12CQb/0NR2oHOm+GP6WM7Dk/0VHb2ky
 2HmTSAGStP1nojeVvetY5Wnov7kbxrrXevO2pskyL2aO0NtH/GKxy6Tm7qh6XQuYhOPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R0e1KmOUIwSrlRRc3FB/cF6lPx+IvbAcp8rZjan78uA=; b=mKtoizzpJAnhNz/rZK4uUnn+rt
 heVfr3Q7CejPZFgaYRyswsRr3GAFEBPtmpDxQ/me3PVazgXjkZGNp/CpvDjOUWCJISEWOdyo7uOKk
 TsIflVdDG4yfhGex7o/En/nQusbR2N1Ja4uP0uaRkm8vRXSDO02sVyuYBAp3M92J+I3Y=;
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTDmx-008HMX-Cz for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:49:14 +0000
Received: by mail-pl1-f175.google.com with SMTP id d12so12904857plr.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 30 Aug 2022 19:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=R0e1KmOUIwSrlRRc3FB/cF6lPx+IvbAcp8rZjan78uA=;
 b=hP3XPdaoiN+yzpgRGBIStdo85vfckOqAbr/a8nPj+5mEFTfVW4iYHQK/pGE1/lwu1E
 j8ADQMa5c6oFgt2pZ7vLv5CWM6PADE4OKygL8TlDWg5wE9E1ARaqI0eDqcrCUM6rxjKW
 tHSsTQ3h75IZVp7l60bSjPshdiCD3bzvYQMkXwtbEMEUPLPQVLAE2+6Mel+xmQmmHINT
 Iy+drZg2CjPtKdB1hB98qWAKW+s4lBnZFnut3s/WJz6U85VojArFlcExkaLqj4adIjUT
 O2y6AnpfXmxCoNrh8IWqst2e2VzEct4cw3zHaPz4J6xStETKTSwpWXKEZEMv81CzjrLT
 5eSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=R0e1KmOUIwSrlRRc3FB/cF6lPx+IvbAcp8rZjan78uA=;
 b=bvhLjh5V2xR5XNgU4HX2Nj9Ru/LM9/kBvuvk21btd9TvmmHJ6kDYZ4HyMJfWE+ABaH
 UsmIb3ZexZGnA0+bDLiKDTqoWpPS/SoBD0P8V+cphrtLX/UdSIwysquZnJAxeEO5bOmS
 yEbq7bogiAvjo0OZY1/ercWfLn8Gtrp0S0QxFDG4HeZ+3RGRNqPj8N+JXPYRgPJWElVU
 PYM/f58ZsJvPQHp5rh+BRRtcLLWkqmj3FZ98Vq6z4ciFjcTI7H8vnuhkutd+D6WTwhlF
 iCyhmuoYtxijmtAwirIQUi/swm/O3phcOkbrvHsBbKbu2RhLKR7ln4y4hNHGYrFb52o/
 2AmA==
X-Gm-Message-State: ACgBeo2Npbhr0bzra6FeXQ9GtqPOQSh5koU4wSINoqOxw8RkJzeE9zdL
 V4XrGA5WgRjpg7bq1Hi4Cb8=
X-Google-Smtp-Source: AA6agR53T8VHDxdlIkjE6D8zAYLO8sfhmk1bD84HCn6OfiWD/yxoKNDOGrL6cbNCMI7GafIYlgoWPQ==
X-Received: by 2002:a17:903:244d:b0:175:3ead:4586 with SMTP id
 l13-20020a170903244d00b001753ead4586mr2181376pls.28.1661914145882; 
 Tue, 30 Aug 2022 19:49:05 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 p66-20020a625b45000000b0052e5bb18a41sm10047018pfb.58.2022.08.30.19.49.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Aug 2022 19:49:05 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 Anton Altaparmakov <anton@tuxera.com>
Date: Wed, 31 Aug 2022 10:48:54 +0800
Message-Id: <7b8b8633d921665a717734d011a92f713944d0fb.1661875711.git.yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1661875711.git.yin31149@gmail.com>
References: <cover.1661875711.git.yin31149@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Kernel will iterates over ATTR_RECORDs in mft record in
 ntfs_attr_find().
 Because the ATTR_RECORDs are next to each other, kernel can get the next
 ATTR_RECORD from end address of current ATTR_RECORD, [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.175 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.175 listed in wl.mailspike.net]
X-Headers-End: 1oTDmx-008HMX-Cz
X-Mailman-Approved-At: Wed, 31 Aug 2022 08:19:41 +0000
Subject: [Linux-NTFS-Dev] [PATCH 3/3] ntfs: check overflow when iterates
 ATTR_RECORDs
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
 18801353760@163.com, yin31149@gmail.com, akpm@linux-foundation.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Kernel will iterates over ATTR_RECORDs in mft record in ntfs_attr_find().
Because the ATTR_RECORDs are next to each other, kernel can get the next
ATTR_RECORD from end address of current ATTR_RECORD, through current
ATTR_RECORD length field.

The problem is that during iteration, when kernel calculates the end address
of current ATTR_RECORD, kernel may trigger an overflow bug in
executing `a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))`. This
may wrap, leading to a forever iteration on 32bit systems.

This patch solves it by adding an overflow checking on calculating end address
of current ATTR_RECORD during iteration.

Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Link: https://lore.kernel.org/all/20220827105842.GM2030@kadam/
Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
---
 fs/ntfs/attrib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 904734e34507..55e618c9e63e 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -617,6 +617,9 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 			return -ENOENT;
 		if (unlikely(!a->length))
 			break;
+		/* check for wrap around */
+		if ((u8 *)a + le32_to_cpu(a->length) < (u8 *)a)
+			break;
 		if (a->type != type)
 			continue;
 		/*
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
