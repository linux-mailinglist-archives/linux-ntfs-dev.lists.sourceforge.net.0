Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 988E04601E8
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr63U-0005KS-UN; Sat, 27 Nov 2021 22:20:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mqzsl-0006jk-A0
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lg+3JUm4XUhcDPB3ZKGKQ7XkYrBjHN/owjr7MFkGNrw=; b=D0P2BsBP4coPDKXJwg/9eO1fvk
 b/Mcy7OwqZQRKl37NWcevNSL77SYsZI/D9TJ+un2Vx1z7zrztun1x6k0B+EX6UUQRExU1WwqAnjxu
 0sX5CFSv9kAis/BI17y49ziA/NZP75QtwbD7JmyzTA2kBOrAgHFsEpSs5pM8QQhc8olg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lg+3JUm4XUhcDPB3ZKGKQ7XkYrBjHN/owjr7MFkGNrw=; b=VH/O/ipYiUVakbiEwYI7T5cIRn
 IfNKMk2uPUsUboCoLb5k6DNNOydM3dzDny6DGD5FopGtFVkNdlYBNecSlKtL6x4uKzxs8+Cnk3wyi
 3NBdnd9uj5uQ8Aj12v/3HeNxCXWhMLkysnUgYXJMh25gQ2BK2GW8y9IkD1isXwCNIviQ=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqzsk-00BXie-Cc
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:44:55 +0000
Received: by mail-oi1-f180.google.com with SMTP id t23so24944515oiw.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 07:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lg+3JUm4XUhcDPB3ZKGKQ7XkYrBjHN/owjr7MFkGNrw=;
 b=NP38bi5QKotdYrMQ6e/CVEqxqzH6tYJl5WI6voKU9lZm3mLSn9VT6DsuigHKtgY8Q8
 CgMdl8+ubN6pCC0H/8J01A9O9WcghebBmY3NQ/d17SpxJ9Q/BnAA0i7XFRvM2AKfpc8n
 bAUbd3dW2Qp2N9j/M9VxQxpg5OAJ7WqIBZ7SPnq8wFoZOPn0oHh3F+FFNgsaX5p/hBI5
 x5pn0xIfYiwTS/uSOtWeYvO0B1/GfArOHLS25wGy7XqlrJCubKW8DFmhdeZvH9emcOfD
 LqJvb1sYVJxy7TGS0Jgqfao648lRuI61lx0EVj4I7mqy1tDxP5VNR5nYoHwUzM4kcuaL
 Omrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=lg+3JUm4XUhcDPB3ZKGKQ7XkYrBjHN/owjr7MFkGNrw=;
 b=CAZ7EaQUsTLFiGAPFlVXdvO3RtbW3CYRv6/5Pm386nbgfUTJ/lD7+k+BoPrMu2EAFI
 3lLpxs7MKS21wtQ765ulJb/j1R55ch/IGlVoErKyDXWdHyYywu3rbg/z6fjfYX/9sRrO
 TOO3RV0caFIpgF3Duoq56dfKbp0BOMrR1VAm6FdNjqqG0k1gEdwbjhgE+RHMC51cBXKs
 IYtvlYMkyKGk/oD1NRK6QSei48WHrQCkqfkHk51Wy4wZXRpGTK56pkB51fY6ZpLYqgnf
 qMc6Ig/q6Gbx0RqvJG8m8GOshE+AKK2QNp7GcvKrHWz7x/lLbOQgDpamYI2HCAG75lKS
 8CHg==
X-Gm-Message-State: AOAM532MOizs63YYMBuxKF2DPtIBb8BadACv6jUZNp4CKVvli5HlHcPp
 8aKq31jCDnTBVSASku/GPEU=
X-Google-Smtp-Source: ABdhPJz9W/Qtypp1NpAE0GFFdJmDpFd19Ozj+wqcwYVAu2ePOUp6XdhGN83Xim2BdB6tvCchlYcv1Q==
X-Received: by 2002:a05:6808:c7:: with SMTP id
 t7mr30492132oic.30.1638027888626; 
 Sat, 27 Nov 2021 07:44:48 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 i16sm1894333oig.15.2021.11.27.07.44.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 07:44:48 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Sat, 27 Nov 2021 07:44:40 -0800
Message-Id: <20211127154442.3676290-2-linux@roeck-us.net>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211127154442.3676290-1-linux@roeck-us.net>
References: <20211127154442.3676290-1-linux@roeck-us.net>
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  NTFS_RW and VMXNET3 require a page size smaller than 64kB.
 Add generic Kconfig option for use outside architecture code to avoid
 architecture
 specific Kconfig options in that code. Suggested-by: Michael Ellerman
 <mpe@ellerman.id.au>
 Signed-off-by: Guenter Roeck <linux@roeck-us.net> --- v3: Added patch: declare
 new configuration flag in generic code 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqzsk-00BXie-Cc
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:20:23 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3 1/3] arch: Add generic Kconfig option
 indicating page size smaller than 64k
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

NTFS_RW and VMXNET3 require a page size smaller than 64kB. Add generic
Kconfig option for use outside architecture code to avoid architecture
specific Kconfig options in that code.

Suggested-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
v3: Added patch: declare new configuration flag in generic code

 arch/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 26b8ed11639d..d3c4ab249e9c 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -991,6 +991,16 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
 	  and vice-versa 32-bit applications to call 64-bit mmap().
 	  Required for applications doing different bitness syscalls.
 
+config PAGE_SIZE_LESS_THAN_64KB
+	def_bool y
+	depends on !ARM64_64K_PAGES
+	depends on !IA64_PAGE_SIZE_64KB
+	depends on !PAGE_SIZE_64KB
+	depends on !PARISC_PAGE_SIZE_64KB
+	depends on !PPC_64K_PAGES
+	depends on !PPC_256K_PAGES
+	depends on !PAGE_SIZE_256KB
+
 # This allows to use a set of generic functions to determine mmap base
 # address by giving priority to top-down scheme only if the process
 # is not in legacy mode (compat task, unlimited stack size or
-- 
2.33.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
