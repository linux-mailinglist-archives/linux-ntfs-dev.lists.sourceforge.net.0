Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC61A89DC00
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Apr 2024 16:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruCHO-0005It-9z;
	Tue, 09 Apr 2024 14:16:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1ruC2X-0004wq-Gw
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EyGKaVrqF9sMEQbwnFuTNScJgARVs5b2YqLdQkmN+XI=; b=fVZWVQQzUB20PhShv7YZ53s+aF
 8R+CuqGBExUlqlBcT7Pf6ETW4mpENdp/ULCrySC9hPong4BVpL9CBecFGrIrVcEkfd+frx8gGUJ94
 rWa5PE1COCSRe4dGRItNTHbaTtlo474XUlK1UdGbelr38Dr2hjT0JpAgbY13OYMLUp1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EyGKaVrqF9sMEQbwnFuTNScJgARVs5b2YqLdQkmN+XI=; b=PpLq+5mI3xd9qkfKJnBvR0R2EN
 UMjxln70KN2iwsYydOsiec4SZSzXID0n2o0/LWRW/6U4eZNuwedNx93YUhmrUWl91RvCbnSnV+aPY
 25FK9LLwBjukigx34V04wj33vnIPWY8a02I1pQBlVWGSuGG4AI/mPk82w1qPo7/AW9Bg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruC2T-0001mf-4b for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B98E06177A;
 Tue,  9 Apr 2024 14:01:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB531C43601;
 Tue,  9 Apr 2024 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712671283;
 bh=+6XHH0IKbKZJZfLuR8UiLY5DybHOF/uJqvg3k5VIrYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=seYFDBBNQDwm3rbyua/v8J3aR2fdaXaheTfVVTdXR7eE7sMrmz3miSMjwS+ALRTjO
 3keDS7/WA23UgDKScxs2qbPxAnxQq5cKW2mqPPIzRmx4q+oajuSJYMhsI8NPbxIyDe
 r8JSc6Wgt3n9s+H0fYI8xAqv0qbNj5HjUi/CceuFaOYrBzwSHYdlvQtFE7HpZT7Icf
 Jg9mP/RwmYcvzfeiTgsNl/sQ7NDJHRRJBuPTy7r8unNf7A3LnopNDxu/rlBnjOOKP+
 U7BAgVieDFa+2RczYDaBt0X77ALDKlU+jKCIDGhyluyaj9mTJOimEu/sG7GQGhji7S
 y15jJwN/Osm5Q==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kbuild@vger.kernel.org
Date: Tue,  9 Apr 2024 16:00:56 +0200
Message-Id: <20240409140059.3806717-4-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409140059.3806717-1-arnd@kernel.org>
References: <20240409140059.3806717-1-arnd@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -6.9 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Arnd Bergmann <arnd@arndb.de> The strncpy() here can
 cause a non-terminated string, which older gcc versions such as gcc-9 warn
 about: In function 'ldm_parse_tocblock', inlined from 'ldm_validate_tocblocks'
 at block/partitions/ldm.c:386:7,
 inlined from 'ldm_partition' at block/partitions/ldm.c:1457:7:
 block/partitions/ldm.c:134:2: er [...] 
 Content analysis details:   (-6.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruC2T-0001mf-4b
X-Mailman-Approved-At: Tue, 09 Apr 2024 14:16:52 +0000
Subject: [Linux-ntfs-dev] [PATCH 3/5] [v2] block/partitions/ldm: convert
 strncpy() to strscpy()
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
Cc: Lin Ming <ming.m.lin@intel.com>, Richard Russon <ldm@flatcap.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, acpica-devel@lists.linux.dev,
 Robert Moore <robert.moore@intel.com>, linux-acpi@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, Nicolas Schier <nicolas@fjasle.eu>,
 Arnd Bergmann <arnd@arndb.de>, Steven Rostedt <rostedt@goodmis.org>,
 linux-block@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Starikovskiy <astarikovskiy@suse.de>, Jens Axboe <axboe@kernel.dk>,
 Nathan Chancellor <nathan@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Justin Stitt <justinstitt@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

The strncpy() here can cause a non-terminated string, which older gcc
versions such as gcc-9 warn about:

In function 'ldm_parse_tocblock',
    inlined from 'ldm_validate_tocblocks' at block/partitions/ldm.c:386:7,
    inlined from 'ldm_partition' at block/partitions/ldm.c:1457:7:
block/partitions/ldm.c:134:2: error: 'strncpy' specified bound 16 equals destination size [-Werror=stringop-truncation]
  134 |  strncpy (toc->bitmap1_name, data + 0x24, sizeof (toc->bitmap1_name));
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
block/partitions/ldm.c:145:2: error: 'strncpy' specified bound 16 equals destination size [-Werror=stringop-truncation]
  145 |  strncpy (toc->bitmap2_name, data + 0x46, sizeof (toc->bitmap2_name));
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

New versions notice that the code is correct after all because of the
following termination, but replacing the strncpy() with strscpy_pad()
or strcpy() avoids the warning and simplifies the code at the same time.

Use the padding version here to keep the existing behavior, in case
the code relies on not including uninitialized data.

Reviewed-by: Justin Stitt <justinstitt@google.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 block/partitions/ldm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index 38e58960ae03..2bd42fedb907 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -131,8 +131,7 @@ static bool ldm_parse_tocblock (const u8 *data, struct tocblock *toc)
 		ldm_crit ("Cannot find TOCBLOCK, database may be corrupt.");
 		return false;
 	}
-	strncpy (toc->bitmap1_name, data + 0x24, sizeof (toc->bitmap1_name));
-	toc->bitmap1_name[sizeof (toc->bitmap1_name) - 1] = 0;
+	strscpy_pad(toc->bitmap1_name, data + 0x24, sizeof(toc->bitmap1_name));
 	toc->bitmap1_start = get_unaligned_be64(data + 0x2E);
 	toc->bitmap1_size  = get_unaligned_be64(data + 0x36);
 
@@ -142,8 +141,7 @@ static bool ldm_parse_tocblock (const u8 *data, struct tocblock *toc)
 				TOC_BITMAP1, toc->bitmap1_name);
 		return false;
 	}
-	strncpy (toc->bitmap2_name, data + 0x46, sizeof (toc->bitmap2_name));
-	toc->bitmap2_name[sizeof (toc->bitmap2_name) - 1] = 0;
+	strscpy_pad(toc->bitmap2_name, data + 0x46, sizeof(toc->bitmap2_name));
 	toc->bitmap2_start = get_unaligned_be64(data + 0x50);
 	toc->bitmap2_size  = get_unaligned_be64(data + 0x58);
 	if (strncmp (toc->bitmap2_name, TOC_BITMAP2,
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
