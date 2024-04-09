Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5318489DBFE
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Apr 2024 16:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruCHO-0005Ie-0S;
	Tue, 09 Apr 2024 14:16:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1ruC2L-0004wN-KA
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WXtgLsdr092ZHb3GuTQ6KoudMu22+ccAo9XriS/ToiE=; b=OdcTmfkX+aC/lhDsDYmg9juUXO
 Ll/dZblyJwoPAlOcrQIooskOfCN7D59jVXncAk+jFallE4I1rgx9wO7LoqnO5dZAEtjCyRlM/nwoy
 Xusc7PwTg4YLOC0LLHzEpWH8x9eF4um9F1ugMuKXJ+kiJsFJ16vbn+8YiD+O4zpzx8rA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WXtgLsdr092ZHb3GuTQ6KoudMu22+ccAo9XriS/ToiE=; b=isSzaYt7iKwOg/2atZxFL8PMxX
 5Uf9WBGcLKSl/ET58HHDNtZEVysSfM153g6+dNYYNfuHG9o2CawcW/H0LPK+ZBS9oee8lMZjAwPyf
 WsRq+hDvGsYWZ5GGHLTl10CwG8dx0VVXPGffTe9Yoi5KZBFb6UdyegUIe2w1Fx1xED3M=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruC2K-0001lJ-SF for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2C2CCCE1FB8;
 Tue,  9 Apr 2024 14:01:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D60BFC433B1;
 Tue,  9 Apr 2024 14:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712671273;
 bh=51Sfm2xp0PQT1gFODKUdeFbVWX58fUeGaMiFqFdRF90=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f+sLbW0ImOrvVzf5VOnMgtlmcW5JlPVUKLm+TksiUIm87QHwts5XhrwCkeu0+a775
 kucx+qagico8Y7FiqyDwpWV7aJYhNg/sBc4ij6yZwCml8OLedkqHfMy990NutRYSLo
 o2Q69k0HsodpvGjQC9oZW1jLG9QOQjoI8T30/2Tb3qIYnJoc1GfbYdKoVRbVrBsZ4S
 7WCJGAMull3hGNt4lnfSrrA7+hz7p/FD8CRkT1Jz1k/HspEJOLrVwINHLlCQsYcUlp
 FiuuTQvX6PhA0pez7lzCebwbKsCQtj64D/VfLCV3Zq4Bx3KiNzr0BxVWhbtvcI4E/P
 SBVvxTGXuNKkQ==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kbuild@vger.kernel.org
Date: Tue,  9 Apr 2024 16:00:54 +0200
Message-Id: <20240409140059.3806717-2-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409140059.3806717-1-arnd@kernel.org>
References: <20240409140059.3806717-1-arnd@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -4.2 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Arnd Bergmann <arnd@arndb.de> gcc can warn when a
 string is too long to fit into the strncpy() destination buffer,
 as it is here depending
 on the function arguments: inlined from 'test_hexdump_prepare_test.constprop'
 at /home/arnd/arm-soc/lib/test_hexdump.c:116:3:
 include/linux/fortify-string.h:108:33:
 error: '__builtin_strncpy' output truncated copying between 0 [...] 
 Content analysis details:   (-4.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruC2K-0001lJ-SF
X-Mailman-Approved-At: Tue, 09 Apr 2024 14:16:52 +0000
Subject: [Linux-ntfs-dev] [PATCH 1/5] [v2] test_hexdump: avoid string
 truncation warning
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

gcc can warn when a string is too long to fit into the strncpy()
destination buffer, as it is here depending on the function
arguments:

    inlined from 'test_hexdump_prepare_test.constprop' at /home/arnd/arm-soc/lib/test_hexdump.c:116:3:
include/linux/fortify-string.h:108:33: error: '__builtin_strncpy' output truncated copying between 0 and 32 bytes from a string of length 32 [-Werror=stringop-truncation]
  108 | #define __underlying_strncpy    __builtin_strncpy
      |                                 ^
include/linux/fortify-string.h:187:16: note: in expansion of macro '__underlying_strncpy'
  187 |         return __underlying_strncpy(p, q, size);
      |                ^~~~~~~~~~~~~~~~~~~~

The intention here is to copy exactly 'l' bytes without any padding or
NUL-termination, so the most logical change is to use memcpy(), just as
a previous change adapted the other output from strncpy() to memcpy().

Cc: Justin Stitt <justinstitt@google.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
---
 lib/test_hexdump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/test_hexdump.c b/lib/test_hexdump.c
index b916801f23a8..fe2682bb21e6 100644
--- a/lib/test_hexdump.c
+++ b/lib/test_hexdump.c
@@ -113,7 +113,7 @@ static void __init test_hexdump_prepare_test(size_t len, int rowsize,
 			*p++ = ' ';
 		} while (p < test + rs * 2 + rs / gs + 1);
 
-		strncpy(p, data_a, l);
+		memcpy(p, data_a, l);
 		p += l;
 	}
 
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
