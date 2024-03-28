Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F778901B1
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 28 Mar 2024 15:24:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rpqgY-00044z-QW;
	Thu, 28 Mar 2024 14:24:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@kernel.org>) id 1rpqO1-0004pu-4E
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Mar 2024 14:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFCkON1dLpInFJ/KC5nI9pBg2Veqen6jkkmL4TtDOU8=; b=HBdsVGE1oQdw1hPFUIdaewnWmG
 2L5hxuBu5Fq7WEuqkQ73nKOQY1foTkcCxyP8u9zSUO/+dcR3OuYsxEmY+C8UgT4Q6n65RFuJKnN0t
 ykoorKme0NtV6WGYMQFn/XQupi6PpB+d9RAHRxmciQKQE0pdB4/pS6+9/NhZJYriK418=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NFCkON1dLpInFJ/KC5nI9pBg2Veqen6jkkmL4TtDOU8=; b=R
 pIspgpvrvtdszX6LM7eXgePyufQ219ixE9ua56l8haIHObpBla5XvcfW/iU7YsB9QRw/BMs6sZQ17
 STQOljVKSwmUn+Mv+NKXoeBDcq0Fpw3cVq4sve7V5HYGuVhPEdu75vnnr/B+PYOGrUgzZ5N4+6oGR
 Lc18uUo4P9/C4k4w=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rpqNy-0006Am-PS for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 28 Mar 2024 14:05:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1488ACE2B46;
 Thu, 28 Mar 2024 14:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2767DC433F1;
 Thu, 28 Mar 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711634730;
 bh=DyPPajVzJsQEhnad3V3XmULXNURr7x/hE7W3jpIhYHU=;
 h=From:To:Cc:Subject:Date:From;
 b=YSIBj/z8FiuLEgDqBHCsbNl9cmMUDFKkjhDyPYeuiZwdnRhaWzQB1qy5bUc+cEoyn
 TgUgizmrgNHaRrJXrUOrR+GdgNy6Jcz8XE1oOPfSpaFhiEmf4RgxaXmRRkMfBs3XvJ
 Wdamgkwsoalajey9FhYVrBXHHnDc3hfmz1/sXLzA38s+j7m8rRsVIbogv2merkfHvl
 7NGUhSAkFPNi5a9tOFYSVMmfUJIhgs6J2mztKYfkmZfdJyHIxoNs7A5AsNpAjEutO0
 MTG5hno3yJ9IL2S3wchli/Txbu6/jMN5FjWKlXiRfuxNfq/iu1yN/a5CzMTTL577iG
 hodYTkkA1QuNg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kernel@vger.kernel.org
Date: Thu, 28 Mar 2024 15:04:44 +0100
Message-Id: <20240328140512.4148825-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Arnd Bergmann <arnd@arndb.de> We are close to being
 able to turn on -Wstringop-truncation unconditionally instead of only at the
 'make W=1' level, these ten warnings are all that I saw in randconfig testing
 across compiler version [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rpqNy-0006Am-PS
X-Mailman-Approved-At: Thu, 28 Mar 2024 14:24:54 +0000
Subject: [Linux-ntfs-dev] [PATCH 00/11] address remaining
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
Cc: Martin Brandenburg <martin@omnibond.com>, linux-staging@lists.linux.dev,
 Mike Marshall <hubcap@omnibond.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Viresh Kumar <vireshk@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, acpica-devel@lists.linux.dev,
 Robert Moore <robert.moore@intel.com>, linux-acpi@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 devel@lists.orangefs.org, Len Brown <lenb@kernel.org>,
 Nicolas Schier <nicolas@fjasle.eu>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Johan Hovold <johan@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Nathan Chancellor <nathan@kernel.org>,
 greybus-dev@lists.linaro.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-rpi-kernel@lists.infradead.org,
 Alexey Starikovskiy <astarikovskiy@suse.de>,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, Alex Elder <elder@kernel.org>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-trace-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

We are close to being able to turn on -Wstringop-truncation
unconditionally instead of only at the 'make W=1' level, these ten
warnings are all that I saw in randconfig testing across compiler versions
on arm, arm64 and x86.

The final patch is only there for reference at the moment, I hope
we can merge the other ones through the subsystem trees first,
as there are no dependencies between them.

     Arnd

Arnd Bergmann (11):
  staging: vc04_services: changen strncpy() to strscpy_pad()
  scsi: devinfo: rework scsi_strcpy_devinfo()
  staging: replace weird strncpy() with memcpy()
  orangefs: convert strncpy() to strscpy()
  test_hexdump: avoid string truncation warning
  acpi: avoid warning for truncated string copy
  block/partitions/ldm: convert strncpy() to strscpy()
  blktrace: convert strncpy() to strscpy_pad()
  staging: rtl8723bs: convert strncpy to strscpy
  staging: greybus: change strncpy() to strscpy()
  kbuild: enable -Wstringop-truncation globally

 block/partitions/ldm.c                        |  6 ++--
 drivers/acpi/acpica/tbfind.c                  | 19 +++++------
 drivers/scsi/scsi_devinfo.c                   | 30 +++++++++++------
 drivers/staging/greybus/fw-management.c       |  4 +--
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  5 ++-
 drivers/staging/rts5208/rtsx_scsi.c           |  2 +-
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     |  4 +--
 fs/orangefs/dcache.c                          |  4 +--
 fs/orangefs/namei.c                           | 33 +++++++++----------
 fs/orangefs/super.c                           | 16 ++++-----
 kernel/trace/blktrace.c                       |  3 +-
 lib/test_hexdump.c                            |  2 +-
 scripts/Makefile.extrawarn                    |  1 -
 13 files changed, 64 insertions(+), 65 deletions(-)

-- 
2.39.2

Cc: "Richard Russon
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Robert Moore <robert.moore@intel.com>
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Cc: Len Brown <lenb@kernel.org>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Viresh Kumar <vireshk@kernel.org>
Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Mike Marshall <hubcap@omnibond.com>
Cc: Martin Brandenburg <martin@omnibond.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nicolas Schier <nicolas@fjasle.eu>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>
Cc: Alexey Starikovskiy <astarikovskiy@suse.de>
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: linux-block@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-acpi@vger.kernel.org
Cc: acpica-devel@lists.linux.dev
Cc: linux-scsi@vger.kernel.org
Cc: greybus-dev@lists.linaro.org
Cc: linux-staging@lists.linux.dev
Cc: linux-rpi-kernel@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: devel@lists.orangefs.org
Cc: linux-trace-kernel@vger.kernel.org
Cc: linux-kbuild@vger.kernel.org



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
