Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E62B4FF2EF
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 13 Apr 2022 11:07:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1neYy5-0002aq-9m; Wed, 13 Apr 2022 09:07:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michalorzel.eng@gmail.com>) id 1neK8z-0007kc-7F
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 12 Apr 2022 17:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5xKeCB3U7apfcgfSY+vdVOqKVo2uGRt41JWYEZNVaok=; b=TvWArNP+Zi9LYp7ft1Lb30zD78
 7xaFV8HMT7DeU3ZLTrsxl8FpWg+Lwr9gF8Q1oRnBYQUOJlDAAYI9bQQfGKtzZT/h5GNn9vncD/ayA
 J6ThZe4HxFt9/Y4P8Of1VYXP3wehe+gp9JLI+p7y8TFlXNlaBuzDpIcWRv21fEWlIvvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5xKeCB3U7apfcgfSY+vdVOqKVo2uGRt41JWYEZNVaok=; b=V4TLilW1TatyCHsOARuvTsxv6e
 KXibm2g4X0FEaGSGKwCy0SrHx9Hw0Gku7g9R1CgUzOLPV1muu+4pvq41A3cB/0PHrQGZHNTE+iJHW
 1Svqa4v88yRiVJqDddCtzllYfk6UvPVsj4YDQ/xiYYBeaKCY3xe8MjXpru7JXVgG/6H0=;
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1neK8s-0007li-QN
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 12 Apr 2022 17:17:32 +0000
Received: by mail-lj1-f169.google.com with SMTP id q14so24884539ljc.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 12 Apr 2022 10:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5xKeCB3U7apfcgfSY+vdVOqKVo2uGRt41JWYEZNVaok=;
 b=ICm9HArNM3EaOT0Oy+Hp4+JHSlkM9BUfiQxOw29OrKcAogUAZos5svailFbnu+zweO
 Axva43yl+erT/kWI85bljmW2MMzuGQSSWPRguz8PneqTZjybaO/2CPuSoS/DXiusBR0i
 D3LawH5Q0au8ap25HEm1iYZA6/eUJ+ToouDaB0EPJgid8aYyyW5JdVUJCCsLhv55iNcd
 jRxnG4gFNYuW7ut0wGdI761mxoZ3Q6CuX2YKF5hRjqvjdYDR13DQZw6ME5AYd/SBB34E
 D21t/iOgPI+CF9dfTfz9nONQUosEpZG7dUVnoAtfppHO5JmqgDMXM1g0az2R98J93JvY
 ddYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5xKeCB3U7apfcgfSY+vdVOqKVo2uGRt41JWYEZNVaok=;
 b=isz4MwzJ19Bx1kdnYJu62WI+NyrJ5+V0Mb+Caslmzp/xWPlkL4dpOkv0OpkAVhSDaf
 DJEqPklNwvu1sTWpgPchR7ot96razz/VzwAhtY140BwN1h/czUcPBqsLIz/KAizbfowa
 6jM9lJTdEgTOxSOYdKa4mSLE9Sx+ILWkJ9yy1DfYldYcbXr0pC32z36leK6xRDV1Fu4c
 Yldh3KQlH95y7keScxAwFoi8726aRn1vaNEftrMaRKKViEo2ZxsunE2Ul5PyqaliLhCc
 4fJFOz6CvuWTYkhGQ3/dPA9zsosRN1jDOjtRzw7MxIlvCAJ2JnZ+c57V06bK7W6zFq0U
 2xzw==
X-Gm-Message-State: AOAM532wE7RJ+Zg/2bgIgCC0c5cLNOaAlBgdvF0NFdb0rZzCDHdhCJeW
 ena+Bx+LXEigP3X8xSwfOV4=
X-Google-Smtp-Source: ABdhPJwzGv0nlFwbb55xRO4/KxhQwo/cOSvqirc1RdTO64DIM0LyoWHyRNiW9KEdEBRXKJBoH+d4eg==
X-Received: by 2002:a2e:8912:0:b0:24b:57e7:284c with SMTP id
 d18-20020a2e8912000000b0024b57e7284cmr11258357lji.147.1649783840258; 
 Tue, 12 Apr 2022 10:17:20 -0700 (PDT)
Received: from morzel-asus.lan (static-91-225-135-18.devs.futuro.pl.
 [91.225.135.18]) by smtp.gmail.com with ESMTPSA id
 m2-20020a05651202e200b0046ba665cd6dsm723928lfq.141.2022.04.12.10.17.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 10:17:19 -0700 (PDT)
From: Michal Orzel <michalorzel.eng@gmail.com>
To: "Richard Russon (FlatCap)" <ldm@flatcap.org>, Jens Axboe <axboe@kernel.dk>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
Date: Tue, 12 Apr 2022 19:16:51 +0200
Message-Id: <20220412171651.19812-5-michalorzel.eng@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220412171651.19812-1-michalorzel.eng@gmail.com>
References: <20220412171651.19812-1-michalorzel.eng@gmail.com>
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michalorzel.eng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.169 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.169 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1neK8s-0007li-QN
X-Mailman-Approved-At: Wed, 13 Apr 2022 09:07:14 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2 5/5] block/partitions/ldm: Remove
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
Changes since v1:
-move the change into a separate patch
-add analysis
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
