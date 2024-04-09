Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ABB89DC02
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Apr 2024 16:16:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruCHP-0005Js-6X;
	Tue, 09 Apr 2024 14:16:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1ruC2h-0007tf-TI
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u9fmECIRb3p9F2+rt8vjBEkyZ00N2v/R7QYpZpTA2z0=; b=Gk1eXMKlwYhJc0JGT2CMqs+3Oc
 OTfKxXw5WOt8JAr12lTMHGpO9p/KMNMjpPySSpeD1XcgkOqPd6cpHTqYSB41N604mc99sdQwZJxLf
 I48Xz2Tqc8IXxbkrbJyoyXLqb0bTtvR4El73mZEwd/zOvIXmI9VLak/hNQy17WYMWfTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u9fmECIRb3p9F2+rt8vjBEkyZ00N2v/R7QYpZpTA2z0=; b=gqBu6e9ft0BV2gdW7AnLHmpbqu
 t/NZvH17c/JSwAlT1qrjkM2zejPsRijJ2UO6/YpwSs8VbXE8nEWDB+9fNFSgvawzAXOiHWtn26QYB
 YeEN3L+u8cSNs3eoGo6GRzH5AoHx6cqt+pD/vk2PHTHRgfwgZfmFn/gmBTIOJMVUSKp0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruC2h-0001oq-JS for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 44E436177F;
 Tue,  9 Apr 2024 14:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5330C43390;
 Tue,  9 Apr 2024 14:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712671293;
 bh=KBapuCoet5kfjziaVWML59WbPosua5uheV6EN7HL7cc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CI+tE9nqa8mKqJOIqe+CfUonGLG1fsbzMR/Wd7a5I1Vi2laBO5bxr2CoMJV9PXJmW
 l3B5LTh7o9wALv4UUWeYM/t6wiBxQSugqqL1qMaxru2tX3syz5zQ1dsosUQsa29l8T
 p7IjRvBsv+ejS31ytc4jFbGqhglSJWpDfeCARtT2DuJQwR0l7vlr6MAVUGv1hn/+RL
 LYOEYFvgKimhfwTM29K1/o3+OR9G+feE3zRGY+tAuvl6i500jl0QwnR+iS9P/aFQXM
 zLfT5yP+z3QnvGF/tWNTahJ46H894mg0QFW7RX22FGXq0UqZrFoQ1e9EbWlVu3+fcI
 vfZrusQ178Ykg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kbuild@vger.kernel.org
Date: Tue,  9 Apr 2024 16:00:58 +0200
Message-Id: <20240409140059.3806717-6-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240409140059.3806717-1-arnd@kernel.org>
References: <20240409140059.3806717-1-arnd@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -6.9 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Arnd Bergmann <arnd@arndb.de> The remaining warnings
 of this type have been addressed, so it can now be enabled by default, rather
 than only for W=1. Signed-off-by: Arnd Bergmann <arnd@arndb.de> --- v2: no
 changes --- scripts/Makefile.extrawarn | 1 - 1 file changed, 1 deletion(-)
 Content analysis details:   (-6.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1ruC2h-0001oq-JS
X-Mailman-Approved-At: Tue, 09 Apr 2024 14:16:52 +0000
Subject: [Linux-ntfs-dev] [PATCH 5/5] [v2] kbuild: enable
 -Wstringop-truncation globally
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

The remaining warnings of this type have been addressed, so it can
now be enabled by default, rather than only for W=1.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: no changes
---
 scripts/Makefile.extrawarn | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 57edc80661fd..f4d69092698b 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -107,7 +107,6 @@ else
 KBUILD_CFLAGS += $(call cc-disable-warning, format-overflow-non-kprintf)
 KBUILD_CFLAGS += $(call cc-disable-warning, format-truncation-non-kprintf)
 endif
-KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 KBUILD_CFLAGS += -Wno-override-init # alias for -Wno-initializer-overrides in clang
 
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
