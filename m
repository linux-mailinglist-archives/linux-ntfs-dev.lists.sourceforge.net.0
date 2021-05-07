Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D52C8377256
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  8 May 2021 16:25:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lfNtR-0002pa-3H; Sat, 08 May 2021 14:25:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@kernel.org>) id 1lf8f4-000558-My
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 07 May 2021 22:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DLFkeFWqqnqMGk6E8NQ//pG5LCohNbcK3u44FxpBHow=; b=Te47yqhVhltLs80LUcLkjFrFLq
 R/t/WLLRgASePyRgpUyRhgwJYLj+OlV0ipnMfhptaouf9WkKjSZek9oudQwLuzbTWYL0ir6dWgcwO
 lERiEZWkq9OGzgZI7Mb5bIfpMGB05CR1XSIzaivj5Lm4O74XVmwvS191UxW7buIbTW10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DLFkeFWqqnqMGk6E8NQ//pG5LCohNbcK3u44FxpBHow=; b=P
 bOCOsXkS3Vxf4sb+Q2bdIzt3sUmLnmfrOcfUHwZnvm+ePJ/EEHXCDXMKmiGKZy32TL2dboiHbfnC8
 oU2n7hxWI6UkKB4KgqZuBlfMH0nZCULHa5U+KfC51nGI/nBOVBEKrN+UdDpQAeL7EgcSdRtCN+/xC
 7zoD3cBIW54D0qhY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lf8ev-00BJ7V-4v
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 07 May 2021 22:09:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA33B60BD3;
 Fri,  7 May 2021 22:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620425342;
 bh=pLN/AlAGxiGZnqtkHzoskF1g1y+Og1zx70nNd/gvob8=;
 h=From:To:Cc:Subject:Date:From;
 b=GZ13BdKpryifxhRwUeXYiDxMV+BWySTA7GY7/CWwvuCWkusUFDxkw2jKiOlfzjbCr
 So4fZaGkAyPTwA8Q1TjLVhcTwgJc8xvHUXFTKFHcbAkEIqYdWcKh0axCM+T92qoOrQ
 bkgNUSiGEeKqAdmwuN3qiVKoII2y7FbwOUX6mX301a6kiRL+VhsHKLQbMnh2CNRIHJ
 HKxjre312EfivKKOz+Q2DN/Jdax+mgS6zOKiXtE7A5jQN2E+WeTOOh+m15wqAaIqSp
 vmCijYogutqPzDP5KIogDPopYspUOizf4eB1toyhkfcE7uWw2BB6nwUsTEL9hofb0l
 fr7hse6Wb3kJA==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-arch@vger.kernel.org
Date: Sat,  8 May 2021 00:07:45 +0200
Message-Id: <20210507220813.365382-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lf8ev-00BJ7V-4v
X-Mailman-Approved-At: Sat, 08 May 2021 14:25:18 +0000
Subject: [Linux-NTFS-Dev] [RFC 0/12] Unify asm/unaligned.h around struct
 helper
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Jonas Bonn <jonas@southpole.se>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Jakub Kicinski <kuba@kernel.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Arnd Bergmann <arnd@arndb.de>, Ganapathi Bhat <ganapathi017@gmail.com>,
 linuxppc-dev@lists.ozlabs.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 linux-block@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Borislav Petkov <bp@alien8.de>,
 Stafford Horne <shorne@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Jens Axboe <axboe@kernel.dk>, John Johansen <john.johansen@canonical.com>,
 Xinming Hu <huxinming820@gmail.com>, Vineet Gupta <vgupta@synopsys.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-security-module@vger.kernel.org,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sharvari Harisangam <sharvari.harisangam@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

The get_unaligned()/put_unaligned() helpers are traditionally architecture
specific, with the two main variants being the "access-ok.h" version
that assumes unaligned pointer accesses always work on a particular
architecture, and the "le-struct.h" version that casts the data to a
byte aligned type before dereferencing, for architectures that cannot
always do unaligned accesses in hardware.

Based on the discussion linked below, it appears that the access-ok
version is not realiable on any architecture, but the struct version
probably has no downsides. This series changes the code to use the
same implementation on all architectures, addressing the few exceptions
separately.

I've pushed the patches to the asm-generic git tree for testing.

	Arnd

Link: https://lore.kernel.org/lkml/75d07691-1e4f-741f-9852-38c0b4f520bc@synopsys.com/
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=100363
Link: git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git unaligned-rework

Arnd Bergmann (12):
  asm-generic: use asm-generic/unaligned.h for most architectures
  openrisc: always use unaligned-struct header
  sh: remove unaligned access for sh4a
  m68k: select CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
  powerpc: use linux/unaligned/le_struct.h on LE power7
  asm-generic: unaligned: remove byteshift helpers
  asm-generic: unaligned always use struct helpers
  partitions: msdos: fix one-byte get_unaligned()
  apparmor: use get_unaligned() only for multi-byte words
  mwifiex: re-fix for unaligned accesses
  netpoll: avoid put_unaligned() on single character
  asm-generic: simplify asm/unaligned.h

 arch/alpha/include/asm/unaligned.h          |  12 --
 arch/arm/include/asm/unaligned.h            |  27 ---
 arch/ia64/include/asm/unaligned.h           |  12 --
 arch/m68k/Kconfig                           |   1 +
 arch/m68k/include/asm/unaligned.h           |  26 ---
 arch/microblaze/include/asm/unaligned.h     |  27 ---
 arch/mips/crypto/crc32-mips.c               |   2 +-
 arch/openrisc/include/asm/unaligned.h       |  47 -----
 arch/parisc/include/asm/unaligned.h         |   6 +-
 arch/powerpc/include/asm/unaligned.h        |  22 ---
 arch/sh/include/asm/unaligned-sh4a.h        | 199 --------------------
 arch/sh/include/asm/unaligned.h             |  13 --
 arch/sparc/include/asm/unaligned.h          |  11 --
 arch/x86/include/asm/unaligned.h            |  15 --
 arch/xtensa/include/asm/unaligned.h         |  29 ---
 block/partitions/ldm.h                      |   2 +-
 block/partitions/msdos.c                    |   2 +-
 drivers/net/wireless/marvell/mwifiex/pcie.c |  10 +-
 include/asm-generic/unaligned.h             | 149 ++++++++++++---
 include/linux/unaligned/access_ok.h         |  68 -------
 include/linux/unaligned/be_byteshift.h      |  71 -------
 include/linux/unaligned/be_memmove.h        |  37 ----
 include/linux/unaligned/be_struct.h         |  37 ----
 include/linux/unaligned/generic.h           | 115 -----------
 include/linux/unaligned/le_byteshift.h      |  71 -------
 include/linux/unaligned/le_memmove.h        |  37 ----
 include/linux/unaligned/le_struct.h         |  37 ----
 include/linux/unaligned/memmove.h           |  46 -----
 net/core/netpoll.c                          |   4 +-
 security/apparmor/policy_unpack.c           |   2 +-
 30 files changed, 137 insertions(+), 1000 deletions(-)
 delete mode 100644 arch/alpha/include/asm/unaligned.h
 delete mode 100644 arch/arm/include/asm/unaligned.h
 delete mode 100644 arch/ia64/include/asm/unaligned.h
 delete mode 100644 arch/m68k/include/asm/unaligned.h
 delete mode 100644 arch/microblaze/include/asm/unaligned.h
 delete mode 100644 arch/openrisc/include/asm/unaligned.h
 delete mode 100644 arch/powerpc/include/asm/unaligned.h
 delete mode 100644 arch/sh/include/asm/unaligned-sh4a.h
 delete mode 100644 arch/sh/include/asm/unaligned.h
 delete mode 100644 arch/sparc/include/asm/unaligned.h
 delete mode 100644 arch/x86/include/asm/unaligned.h
 delete mode 100644 arch/xtensa/include/asm/unaligned.h
 delete mode 100644 include/linux/unaligned/access_ok.h
 delete mode 100644 include/linux/unaligned/be_byteshift.h
 delete mode 100644 include/linux/unaligned/be_memmove.h
 delete mode 100644 include/linux/unaligned/be_struct.h
 delete mode 100644 include/linux/unaligned/generic.h
 delete mode 100644 include/linux/unaligned/le_byteshift.h
 delete mode 100644 include/linux/unaligned/le_memmove.h
 delete mode 100644 include/linux/unaligned/le_struct.h
 delete mode 100644 include/linux/unaligned/memmove.h

Cc: Amitkumar Karwar <amitkarwar@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Ganapathi Bhat <ganapathi017@gmail.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: James Morris <jmorris@namei.org>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: John Johansen <john.johansen@canonical.com>
Cc: Jonas Bonn <jonas@southpole.se>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Rich Felker <dalias@libc.org>
Cc: "Richard Russon (FlatCap)" <ldm@flatcap.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: "Serge E. Hallyn" <serge@hallyn.com>
Cc: Sharvari Harisangam <sharvari.harisangam@nxp.com>
Cc: Stafford Horne <shorne@gmail.com>
Cc: Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Xinming Hu <huxinming820@gmail.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-m68k@lists.linux-m68k.org
Cc: linux-crypto@vger.kernel.org
Cc: openrisc@lists.librecores.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: linux-ntfs-dev@lists.sourceforge.net
Cc: linux-block@vger.kernel.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: linux-arch@vger.kernel.org
Cc: linux-security-module@vger.kernel.org

-- 
2.29.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
