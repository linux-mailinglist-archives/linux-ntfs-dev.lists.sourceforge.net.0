Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8BA4601E9
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr63V-0005Km-6B; Sat, 27 Nov 2021 22:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mqzsq-0005Lj-7F
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lv/Kp6ESRC+AN4NQxCwaPZ0reLg9vm5QGJqQKdUOXVg=; b=cz+ucYjKVCwtG1sDMjs7EE38vQ
 rPXtet6m31Q0dfK4ywOXepy5Jm/uSNgOI1eWcvOOPq6OrInRTe+5vRH6P7mCRiL/+IbOv0pfbCuLY
 9A0FP7/eHZDWZGlYsAG5LDWzQHGJzF9jozr5HfL6GJVinIkcwDAMk6Wh0JoqvC77e4wI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lv/Kp6ESRC+AN4NQxCwaPZ0reLg9vm5QGJqQKdUOXVg=; b=SiBLloPY9IKhINjh27RI9qfjyT
 KJb0f6Xy386GF62qejr6ir3+jS78/BjGWpLMvkG8B8rBqwv7pAUr58Wci0g1gMwD9IvolBNR3zPw9
 +X5rwkxnL9EJHNLZGm+XPNj2CBVLMF8oXGKFTVJeRZ4axqvLd74JRUOpq3ROkiAT1E+Y=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqzsl-00BXih-Vh
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:45:00 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 r10-20020a056830080a00b0055c8fd2cebdso18471175ots.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 07:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lv/Kp6ESRC+AN4NQxCwaPZ0reLg9vm5QGJqQKdUOXVg=;
 b=d1d/8dbPRcDmnVpofqbwE5RzKqtuRjnKloIhHdZsx99LppSQdVXasmpMJASCqsxbRT
 B3K6GfXJnaZrUK+o+2E5IkLnKK35WR4CowCi4rxx/i3J81gijaVO1Y4SaHkyyP8kxfa4
 lDPkKUCtjO+vyWAl3Lwd9cFhtgDK7eqzYYeNngiUhpmYExX2Z1E3GyTcj5tsb7f1KCVL
 JQXtYICmtI81GSy7R7AMY/6QQs4NBqUwnrga9X48KwKIN9j0T8VuwJkrsWCf1PjJrq0r
 BVcN25uE9ymi625sKwJOSc5Mv/vtCf4BIekVhnrfSBHGeG51iBllPCslQEiZnp9N/RZ0
 kInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Lv/Kp6ESRC+AN4NQxCwaPZ0reLg9vm5QGJqQKdUOXVg=;
 b=XfTkltF1KbZ69A1M6806p/t7o+RS/47UL6jL44C5WxvhVPb2OmtEl7ko9Rnq1a5k/Z
 1aZ5wJ0zaOupCOfjHdX7OMSB60oHR7o2cYZOg4x53Rh6SEjUZhZIPp3THMbrClTupILD
 hua4iUTBNG29rZxwe0qYMzLRBEkILsX7auwJ7xgQj/4eOcLIBa8XqfCPu5AYcTQIl+Xa
 G3CLVLpUO5LCaQ4TA/Njm2RMxAW7ezeyWz+gJTe8gkgq1mV2ceD1lee34+YSd23D8R9u
 QX7tvUFLZLukayHy6BFToJh/VPl7Qd7bSlcIaR80mWw3J7L9dlRpYQyrpX+gAJN9BcpZ
 xOkA==
X-Gm-Message-State: AOAM532pln8ObLhpjpZFYAShw89GDQ/GmankTVomJO4R1pYri0s5CBGo
 gu08M/bmU8s09r+iJayo2M8=
X-Google-Smtp-Source: ABdhPJz9alk4Sxe468wNHlmX+qYIK5Ar0oCeG8YckZefgGjtGwwcCC+vU/s+XoYduarsU12us77tnQ==
X-Received: by 2002:a9d:1b0f:: with SMTP id l15mr33791138otl.38.1638027890450; 
 Sat, 27 Nov 2021 07:44:50 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 r37sm1637094otv.54.2021.11.27.07.44.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 07:44:49 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Sat, 27 Nov 2021 07:44:41 -0800
Message-Id: <20211127154442.3676290-3-linux@roeck-us.net>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211127154442.3676290-1-linux@roeck-us.net>
References: <20211127154442.3676290-1-linux@roeck-us.net>
MIME-Version: 1.0
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: NTFS_RW code allocates page size dependent arrays on the
 stack.
 This results in build failures if the page size is 64k or larger.
 fs/ntfs/aops.c:
 In function 'ntfs_write_mst_block': fs/ntfs/aops.c:1311:1: error: the frame
 size of 2240 bytes is larger than 2048 bytes 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqzsl-00BXih-Vh
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:20:23 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3 2/3] fs: ntfs: Limit NTFS_RW to page
 sizes smaller than 64k
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

NTFS_RW code allocates page size dependent arrays on the stack. This
results in build failures if the page size is 64k or larger.

fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
fs/ntfs/aops.c:1311:1: error:
	the frame size of 2240 bytes is larger than 2048 bytes

Since commit f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
book3s") this affects ppc:allmodconfig builds, but other architectures
supporting page sizes of 64k or larger are also affected.

Increasing the maximum frame size for affected architectures just to
silence this error does not really help. The frame size would have to be
set to a really large value for 256k pages. Also, a large frame size could
potentially result in stack overruns in this code and elsewhere and is
therefore not desirable. Make NTFS_RW dependent on page sizes smaller than
64k instead.

Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
v3: Use generic configuration flag
v2: More comprehensive dependencies

 fs/ntfs/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index 1667a7e590d8..f93e69a61283 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -52,6 +52,7 @@ config NTFS_DEBUG
 config NTFS_RW
 	bool "NTFS write support"
 	depends on NTFS_FS
+	depends on PAGE_SIZE_LESS_THAN_64KB
 	help
 	  This enables the partial, but safe, write support in the NTFS driver.
 
-- 
2.33.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
