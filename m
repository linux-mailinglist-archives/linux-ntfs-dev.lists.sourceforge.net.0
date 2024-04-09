Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3265F89DBFD
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Apr 2024 16:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruCHN-0005IX-MV;
	Tue, 09 Apr 2024 14:16:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1ruC2J-0004xM-Fk
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wrF+7zPgDTwFJXmXxAZ0Mgg2foY1HxxpitT3/APsmqY=; b=Fco8+pmTfnkEMRUlPmEzXMYoXS
 CuVW0cfz3JxecUQGh8jUXQjWeVEb6cMoxzDSthqYgwdp255sGL1q3YcBn+WMVof13682TUBGVOj9n
 K3zfiVbDlKK4YG1PvgcDfIwNSlL9iNeFrlF1v6uY2T56TDo+zd4Gi35I8lBXUGZJ30VY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wrF+7zPgDTwFJXmXxAZ0Mgg2foY1HxxpitT3/APsmqY=; b=f
 UWHgylijFDbKhZP9ORtUsUGeYO/3HDbKYytthdF0J+diNx819fhWqhL87g8aQIEfyno8X7ViKQ7fp
 sowwH8ns59cIPM0Y5MjiqwVIlPMk/suCaVoVKMKbBmAke76+4rY12AUUHuc2/sewIW8JhAgj0H/r3
 D97Z+xgbUeSv/0l8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruC2J-0001lG-55 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BDE8D616E0;
 Tue,  9 Apr 2024 14:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02D32C433F1;
 Tue,  9 Apr 2024 14:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712671268;
 bh=OwmOVUjCxv1ceoUcK0JKEZS/f6zK2xJ2fR3OQpIwvAk=;
 h=From:To:Cc:Subject:Date:From;
 b=o/vZLIAowEbtnS5yLJVyXyO73vrmHagQ76P0tGPcQ70MLclvTK2i/UKemgdQ3Nro+
 P/xczUtUI+2b3ID1wswWAz7p25VS4eVvJHj9mpZ7i4Pzdska69X+Q5ofmrHEN8SyM1
 syUL0xPahY5GjXe4iQ99mDr4Ut3fDHcLJjjz8yRKwoBLahebfCMyqLUiGFo2UojABY
 JnQy77wbUltj1iCFq74CbM7s6WoPhAWUzelnqDjAubKqhwaBnuSSvW6fNxUzGAxOXo
 qQ4qTT+0Z+JABWRWbiGjufXRHzpEhOY1rbLuhCDh9dby0QgI5Q/OcWG3RK4l2EIecL
 VIZSyv6cK7O7g==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kbuild@vger.kernel.org
Date: Tue,  9 Apr 2024 16:00:53 +0200
Message-Id: <20240409140059.3806717-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -6.9 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Arnd Bergmann <arnd@arndb.de> We are close to being
 able to turn on -Wstringop-truncation unconditionally instead of only at the
 'make W=1' level, these five warnings remain after the previous round and
 three patches I sent separa [...] 
 Content analysis details:   (-6.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruC2J-0001lG-55
X-Mailman-Approved-At: Tue, 09 Apr 2024 14:16:52 +0000
Subject: [Linux-ntfs-dev] [PATCH 0/5 v2] address remaining
 stringop-truncation warnings
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

We are close to being able to turn on -Wstringop-truncation
unconditionally instead of only at the 'make W=1' level, these five
warnings remain after the previous round and three patches I sent
separately for drivers/staging.

I hope I managed to include all the feedback on v1, so please apply
directly to subsystem trees if v2 looks ok to you.

     Arnd

Arnd Bergmann (5):
  [v2] test_hexdump: avoid string truncation warning
  [v2] acpi: disable -Wstringop-truncation
  [v2] block/partitions/ldm: convert strncpy() to strscpy()
  [v2] blktrace: convert strncpy() to strscpy_pad()
  [v2] kbuild: enable -Wstringop-truncation globally

 block/partitions/ldm.c       | 6 ++----
 drivers/acpi/acpica/Makefile | 1 +
 kernel/trace/blktrace.c      | 3 +--
 lib/test_hexdump.c           | 2 +-
 scripts/Makefile.extrawarn   | 1 -
 5 files changed, 5 insertions(+), 8 deletions(-)

-- 
2.39.2

Cc: "Richard Russon" <ldm@flatcap.org>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Robert Moore <robert.moore@intel.com>
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Cc: Len Brown <lenb@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nicolas Schier <nicolas@fjasle.eu>
Cc: Lin Ming <ming.m.lin@intel.com>
Cc: Alexey Starikovskiy <astarikovskiy@suse.de>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: linux-block@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-acpi@vger.kernel.org
Cc: acpica-devel@lists.linux.dev
Cc: linux-trace-kernel@vger.kernel.org
Cc: linux-kbuild@vger.kernel.org



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
