Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B7A89DBFF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Apr 2024 16:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruCHO-0005J4-JM;
	Tue, 09 Apr 2024 14:16:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1ruC2X-0004xr-3n
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S83nKs57kLqHLKLOHfZFUSAR5TbAzEurFXbFhzJ8PrI=; b=Sv0jW2Cr3PZPSXzaF1WUdV/U1L
 rf19K6OfEotm1EvqKlg1MJUXmUMUy4rX0xIzPmEVc/PD8umXtclEgxoE3Udxl4nBaHUP5/WnakMae
 3pELHuB3Jl5sEzibw+RBGSiovR7IXAiBncWmzUM6+r7gNhDGGCzJotNB03jAn2vbfWvs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S83nKs57kLqHLKLOHfZFUSAR5TbAzEurFXbFhzJ8PrI=; b=YjN1iPmbbeSxn0qDWOKNUzHOwC
 WMWKxql7aDf6veeNOr9tPxEWbUBWj9LLa3Sq+SOPQ7W5ISsdOngTH7ffKXQSgtvdPjkXiPgdfkpBk
 cnTmrAoHBMfJ/HFE/35FZHFg69DJYEhS2NAWo37HbcByuWPp5+UrQ/1X9g1C+NLQwNo0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruC2S-0001md-W2 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A69236177D;
 Tue,  9 Apr 2024 14:01:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD480C43142;
 Tue,  9 Apr 2024 14:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712671278;
 bh=apx3gbxkYNqe3VpAmpZgPTdGN3/2cOQjfTIRYJyoYL8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MSSa5z1S9ryJwrH6rhZwsfZ+WYHqk+DUN6umSYaSz9+PInQkEmLLg9HxlScb7SB66
 INAABa+8rjj1c4bradO8L6DkDBPNDU7qPWK7URSSmUPTxK+4hefFZn2CZXuFgBrngb
 QdlQN775GdzBYwFXCsuI8v5PtJCTjL+tCs3wkzvRFaW5ly10uQ3/gpx0iQk6QTCQNL
 x3PysVOlaDEUIoyLnkd+Jm0Vi30mdh9slrYCeOOucTVTqixQKDXisg4oPy8r6K1xlD
 BcBWJB4mfLTtXNA4AAKEknHbTNgkfQrMFIZi1WJwSfYfbs/hZovigEojcExc6eLrtw
 S96r3fjZf4spg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kbuild@vger.kernel.org
Date: Tue,  9 Apr 2024 16:00:55 +0200
Message-Id: <20240409140059.3806717-3-arnd@kernel.org>
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
 Content preview: From: Arnd Bergmann <arnd@arndb.de> gcc -Wstringop-truncation
 warns about copying a string that results in a missing nul termination:
 drivers/acpi/acpica/tbfind.c:
 In function 'acpi_tb_find_table': drivers/acpi/acpica/tbfind.c:60:9: error:
 'strncpy' specified bound 6 equals destination size
 [-Werror=stringop-truncation] 60 | strncpy [...] 
 Content analysis details:   (-6.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruC2S-0001md-W2
X-Mailman-Approved-At: Tue, 09 Apr 2024 14:16:52 +0000
Subject: [Linux-ntfs-dev] [PATCH 2/5] [v2] acpi: disable
 -Wstringop-truncation
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Nicolas Schier <nicolas@fjasle.eu>, Arnd Bergmann <arnd@arndb.de>,
 linux-acpi@vger.kernel.org, Lin Ming <ming.m.lin@intel.com>,
 Richard Russon <ldm@flatcap.org>, Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, acpica-devel@lists.linux.dev,
 Robert Moore <robert.moore@intel.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-trace-kernel@vger.kernel.org,
 Alexey Starikovskiy <astarikovskiy@suse.de>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

gcc -Wstringop-truncation warns about copying a string that results in a
missing nul termination:

drivers/acpi/acpica/tbfind.c: In function 'acpi_tb_find_table':
drivers/acpi/acpica/tbfind.c:60:9: error: 'strncpy' specified bound 6 equals destination size [-Werror=stringop-truncation]
   60 |         strncpy(header.oem_id, oem_id, ACPI_OEM_ID_SIZE);
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/acpi/acpica/tbfind.c:61:9: error: 'strncpy' specified bound 8 equals destination size [-Werror=stringop-truncation]
   61 |         strncpy(header.oem_table_id, oem_table_id, ACPI_OEM_TABLE_ID_SIZE);
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The code works as intended, and the warning could be addressed by using
a memcpy(), but turning the warning off for this file works equally well
and may be easir to merge.

Fixes: 47c08729bf1c ("ACPICA: Fix for LoadTable operator, input strings")
Link: https://lore.kernel.org/lkml/CAJZ5v0hoUfv54KW7y4223Mn9E7D4xvR7whRFNLTBqCZMUxT50Q@mail.gmail.com/#t
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/acpi/acpica/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/acpi/acpica/Makefile b/drivers/acpi/acpica/Makefile
index 30f3fc13c29d..8d18af396de9 100644
--- a/drivers/acpi/acpica/Makefile
+++ b/drivers/acpi/acpica/Makefile
@@ -5,6 +5,7 @@
 
 ccflags-y			:= -D_LINUX -DBUILDING_ACPICA
 ccflags-$(CONFIG_ACPI_DEBUG)	+= -DACPI_DEBUG_OUTPUT
+CFLAGS_tbfind.o 		+= $(call cc-disable-warning, stringop-truncation)
 
 # use acpi.o to put all files here into acpi.o modparam namespace
 obj-y	+= acpi.o
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
