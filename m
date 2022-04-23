Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C2150CA71
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 23 Apr 2022 15:14:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1niFb1-0003t3-DY; Sat, 23 Apr 2022 13:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michalorzel.eng@gmail.com>) id 1niE6G-0002sy-V6
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 23 Apr 2022 11:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QY0mU5IQPj8GUMEzISz7+Bwc6i+ATuzEN8MJe22534Q=; b=ULNTusqs1OaKZz10Lx2sCjsNFa
 DRw1S1fa5AOsbAa5X5BzSftweG7XSaAqK4FSzgnugnAHD/62Xd1i03AS4orbZm0EhCIa1ksbut/Nb
 BK+r4b4nSLAYkPe5U46FcvI16jqiNXM9oxBixyUKlvbAto98v+rH7239SwaIRd5pKoxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QY0mU5IQPj8GUMEzISz7+Bwc6i+ATuzEN8MJe22534Q=; b=N6pvLLgTpvYXejSktkRzBKcWl/
 Pah+SkptSJ7PcT2bdCKTdvAENsbOSz79dOVGjOtWVyo5uTE9CBkl6u9e1HzpuFvth/REXj2pgzsF6
 PjQuR/MZOnzsC5YQXxBffT+jl63AKqDc/UTGMZapCdy6fU2i7664l6IAw+rtKcpgpDdk=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1niE6D-007VzN-NG
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 23 Apr 2022 11:38:53 +0000
Received: by mail-lj1-f180.google.com with SMTP id 17so12521399lji.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 23 Apr 2022 04:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QY0mU5IQPj8GUMEzISz7+Bwc6i+ATuzEN8MJe22534Q=;
 b=OJaPQBzpJJf272sB2uLtTOPemnNlOXU6YeasEZvihIG1rPvnz3sH+b9StAe+NSxYEC
 0sx3HSg6Rr5+DFTPpqe6oc5cCMZNCQTrFWRhZV9tlBXXcmcA16V0c5Z6V5fDYsKk6b55
 zhXYFYUJnBsiIVEpjK0tChNiDy13HXcsbJm81ffByrGzYxTQIlBzSYWVbxhvhlkclwtD
 u+QsazlgFIaGx7RhWNe2Do9yj5+zoQbs129/65wkiwkXqQMX+QTXFZ4fiOoRUuPr6uPt
 L+1c38G8j5vo3MpRN7JF+8XW/kjGwysK3y9puLcJqAH2+mDrVoMQsPzuGpSiuQJ0m5tm
 68eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QY0mU5IQPj8GUMEzISz7+Bwc6i+ATuzEN8MJe22534Q=;
 b=6UnY1xoigCvAwKFhfidw5SgOrc/w4Oy7ldwX7+9+Q9L+HdYytEHg3ATlPSDjx/1aKU
 m6shiyJvcX7ynoLtFKursdtD/LZUAJTwIojj0mqrBnu6TWXDVEfj9du9idqN9CuVGTX1
 rj5tE1g9/AIGGvcieQHoZ1JDW+F5RLlT0SGjHoTJuYiDhDTJEyyz9dhweJhBjaAuOQIA
 bvsk2jvz85y6wNEsqQwylm4kTsQ2t11eO0AXcJbTCrbyPTmunAE0R3qwd90CjAvFdogc
 REo636cSzmbbE1izMUHYFx5E8MW+T0lPreBJfPi0uqI1KPCTDB/Y3aQMVqr16l6Cthct
 vgLg==
X-Gm-Message-State: AOAM532IGUR2E+rqbB1WEm0ERY9u0mfdL7lTDztUtpjEn0UoLi81lU70
 q03FMwh5pplWQoSwyKwCJ3g=
X-Google-Smtp-Source: ABdhPJzkPXL24FJCVC+QG+e6xitqgwC/AInXdEr713qRfRkeELiYX7ajov9hzfkCPLUx/YjM2pjsMw==
X-Received: by 2002:a05:651c:210f:b0:24e:ec3d:6b8c with SMTP id
 a15-20020a05651c210f00b0024eec3d6b8cmr5443531ljq.321.1650713920541; 
 Sat, 23 Apr 2022 04:38:40 -0700 (PDT)
Received: from morzel-asus.lan (static-91-225-135-18.devs.futuro.pl.
 [91.225.135.18]) by smtp.gmail.com with ESMTPSA id
 g17-20020a2e9cd1000000b0024db538c2absm526411ljj.7.2022.04.23.04.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 04:38:40 -0700 (PDT)
From: Michal Orzel <michalorzel.eng@gmail.com>
To: "Richard Russon (FlatCap)" <ldm@flatcap.org>, Jens Axboe <axboe@kernel.dk>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
Date: Sat, 23 Apr 2022 13:38:11 +0200
Message-Id: <20220423113811.13335-5-michalorzel.eng@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220423113811.13335-1-michalorzel.eng@gmail.com>
References: <20220423113811.13335-1-michalorzel.eng@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Get rid of the following redundant assignments: - to a
 variable
 r_cols from function ldm_parse_cmp3 - to variables r_id1 and r_id2 from
 functions
 ldm_parse_dgr3 and ldm_parse_dgr4 - to a variable r_in [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michalorzel.eng[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.180 listed in wl.mailspike.net]
X-Headers-End: 1niE6D-007VzN-NG
X-Mailman-Approved-At: Sat, 23 Apr 2022 13:14:42 +0000
Subject: [Linux-NTFS-Dev] [PATCH RESEND v2 5/5] block/partitions/ldm: Remove
 redundant assignments
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-block@vger.kernel.org,
 llvm@lists.linux.dev, Michal Orzel <michalorzel.eng@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Get rid of the following redundant assignments:
- to a variable r_cols from function ldm_parse_cmp3
- to variables r_id1 and r_id2 from functions ldm_parse_dgr3 and ldm_parse_dgr4
- to a variable r_index from function ldm_parse_prt3
that end up in values not being read until the end of function.

Reported by clang-tidy [deadcode.DeadStores]

Signed-off-by: Michal Orzel <michalorzel.eng@gmail.com>
---
 block/partitions/ldm.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index 27f6c7d9c776..38e58960ae03 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -736,7 +736,6 @@ static bool ldm_parse_cmp3 (const u8 *buffer, int buflen, struct vblk *vb)
 		len = r_cols;
 	} else {
 		r_stripe = 0;
-		r_cols   = 0;
 		len = r_parent;
 	}
 	if (len < 0)
@@ -783,11 +782,8 @@ static int ldm_parse_dgr3 (const u8 *buffer, int buflen, struct vblk *vb)
 		r_id1 = ldm_relative (buffer, buflen, 0x24, r_diskid);
 		r_id2 = ldm_relative (buffer, buflen, 0x24, r_id1);
 		len = r_id2;
-	} else {
-		r_id1 = 0;
-		r_id2 = 0;
+	} else
 		len = r_diskid;
-	}
 	if (len < 0)
 		return false;
 
@@ -826,11 +822,8 @@ static bool ldm_parse_dgr4 (const u8 *buffer, int buflen, struct vblk *vb)
 		r_id1 = ldm_relative (buffer, buflen, 0x44, r_name);
 		r_id2 = ldm_relative (buffer, buflen, 0x44, r_id1);
 		len = r_id2;
-	} else {
-		r_id1 = 0;
-		r_id2 = 0;
+	} else
 		len = r_name;
-	}
 	if (len < 0)
 		return false;
 
@@ -963,10 +956,8 @@ static bool ldm_parse_prt3(const u8 *buffer, int buflen, struct vblk *vb)
 			return false;
 		}
 		len = r_index;
-	} else {
-		r_index = 0;
+	} else
 		len = r_diskid;
-	}
 	if (len < 0) {
 		ldm_error("len %d < 0", len);
 		return false;
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
