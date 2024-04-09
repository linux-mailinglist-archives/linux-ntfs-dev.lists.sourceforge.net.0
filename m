Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF0C89DC01
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Apr 2024 16:16:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ruCHO-0005JT-TN;
	Tue, 09 Apr 2024 14:16:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1ruC2d-0007tK-2f
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+c5210IpZH8fBO4nm+TwWSxP/ttebKKGwb5/KKGmKQg=; b=Vi3iwhVX1hwcKosCDlXE7t5hpY
 XovJCix60OpxH/5v426tO344ql1xk8TrbbJPZPMqrkbdmLNHLxUQrWAQ7E0kO0cvHvs4huEFIE7gp
 Zm+zdMJBGysytivYtEE4K2o1aTWOO+dQ+qwE8Z2z4NQ5FY0OcMt3XJf7npZWxbskIYss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+c5210IpZH8fBO4nm+TwWSxP/ttebKKGwb5/KKGmKQg=; b=eO8h9HB1BV0EZIVmJHF1v9wHHT
 GgT3C1rCrYczUVj62ePEWq9WE6aJ2BkUnB8r5n7YS2i4+wqwhIKHsXUbqh/9mTnCPPrL3h2+lDCtL
 fvht0JXsbyfgVoeycVyrXIsc0O9uAL7N+Jal3Vr913x4QTHWsWRyUYCf6Zv5H+JpZWRY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruC2c-0001o1-OT for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Apr 2024 14:01:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6CE6B6178B;
 Tue,  9 Apr 2024 14:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7EB6C433C7;
 Tue,  9 Apr 2024 14:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712671288;
 bh=pzK3De1dss+tVtAMUbtIdEjmw37wYh3hyKahO2Wukx4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kROJxz2HYgYmtGzuLOF1DPUe3tsYi9DEJ86893KsN4RG8ZJ2ez8cLLlpXAt1q+/Kl
 qsw9cy559op7Gxv7hDeh2gK/p4ba26iuHzPTC7VRjy8fdJqsEeWuiV5tQ46ZllP7S9
 ZbUqQqTcngs3Ytvsbwu6cLLEvXW7Nxt/JPx3GQl+ZFB1AvwyGc2YMLAo/hvg8tvBen
 9+cEIqTiHYc4GkmUn3bcMfpPwm+rwip2PT02QzrvVG9nPIOB5mO9PSmbiNRWl9VXLs
 FleNYGV2Q6GW30vC1shIToVxt1l6zXaHmiQ47V5iFp8JJYeekoGWzq1qZ5bqNjGgJK
 yhlh3nw+JpfcQ==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kbuild@vger.kernel.org
Date: Tue,  9 Apr 2024 16:00:57 +0200
Message-Id: <20240409140059.3806717-5-arnd@kernel.org>
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
 Content preview: From: Arnd Bergmann <arnd@arndb.de> gcc-9 warns about a
 possibly
 non-terminated string copy: kernel/trace/blktrace.c: In function
 'do_blk_trace_setup':
 kernel/trace/blktrace.c:527:2: error: 'strncpy' specified bound 32 equals
 destination size [-Werror=stringop-truncation] 
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
X-Headers-End: 1ruC2c-0001o1-OT
X-Mailman-Approved-At: Tue, 09 Apr 2024 14:16:52 +0000
Subject: [Linux-ntfs-dev] [PATCH 4/5] [v2] blktrace: convert strncpy() to
 strscpy_pad()
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

gcc-9 warns about a possibly non-terminated string copy:

kernel/trace/blktrace.c: In function 'do_blk_trace_setup':
kernel/trace/blktrace.c:527:2: error: 'strncpy' specified bound 32 equals destination size [-Werror=stringop-truncation]

Newer versions are fine here because they see the following explicit
nul-termination. Using strscpy_pad() avoids the warning and
simplifies the code a little. The padding helps  give a clean
buffer to userspace.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: actually use padding version of strscpy.
---
 kernel/trace/blktrace.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/kernel/trace/blktrace.c b/kernel/trace/blktrace.c
index d5d94510afd3..8fd292d34d89 100644
--- a/kernel/trace/blktrace.c
+++ b/kernel/trace/blktrace.c
@@ -524,8 +524,7 @@ static int do_blk_trace_setup(struct request_queue *q, char *name, dev_t dev,
 	if (!buts->buf_size || !buts->buf_nr)
 		return -EINVAL;
 
-	strncpy(buts->name, name, BLKTRACE_BDEV_SIZE);
-	buts->name[BLKTRACE_BDEV_SIZE - 1] = '\0';
+	strscpy_pad(buts->name, name, BLKTRACE_BDEV_SIZE);
 
 	/*
 	 * some device names have larger paths - convert the slashes
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
