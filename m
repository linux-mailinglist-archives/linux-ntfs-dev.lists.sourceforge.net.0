Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 181134599B0
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 23 Nov 2021 02:29:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mpKce-0005Bp-KX; Tue, 23 Nov 2021 01:29:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mpFhV-0006ih-HC
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 20:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YH8kAQYBMNnEP5TJ/7f0iMbajrYVM/MJL8tkaAu5au0=; b=JAmZClFCNzv+LuAsrm16hHXBN3
 lXo5aVu2jX6szgsNnsECisw8dRdachcDd+NgyodGvpLSylOYiWW1mRbNs6SuLEMAOUUi4T8PHB8PW
 KJhu3lvIjhAdcW4h6Bk8+8hx1DBNNrR0py3yQdI+itlk6OGk78GyFVY2MNDSVNCZtDFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YH8kAQYBMNnEP5TJ/7f0iMbajrYVM/MJL8tkaAu5au0=; b=E
 MADq9bRrTvb+YNpOUQDOxzaXlNAeQywipBgvC4oP+ZENJN5ndTnsggsl98FGdKpvtrYLepag+Xff7
 LwBnwy/rXq6AYiwIeIJCxrTCgjPeLGdwXMZCJpXct3ggwQahPi6gjZJvL82kc9es1Dv4RH8GvdN6T
 u1RWg2BxuE18Zxhs=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpFhR-0008Q4-J0
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Nov 2021 20:14:05 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 n104-20020a9d2071000000b005799790cf0bso9913257ota.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 22 Nov 2021 12:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YH8kAQYBMNnEP5TJ/7f0iMbajrYVM/MJL8tkaAu5au0=;
 b=kiBfJe0Sp/7fCUicBIpbzkEOPjjfZpR4p9FbobWCrON11/bEjzmtsvZPcJMhGgVTY2
 LoQkQlCqmfVGW0/woOQpVBOS0rGXYjcaF6CT764Yb28NKqWabJ9JYQTV8ZEOxYOlEVaW
 P5AR+BSFRQg/foOghRwx7Dokjp7RrI6i/raqO5vtjfZmeUcg0Lh7lo5ASP3JRnwphsTf
 bMXrvHiHV0++ABnI2H23EXPOfrW7w81a0JHyv1VU7J3weTk4lSZq9zIK2zG8fyb38Xlj
 fATjXhd1rUSHY9Mvk8BKxpmhGddggEeGqA9yZxqBWqFxPKpoPwQeTIVeUT1A0U6D0OCk
 aAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=YH8kAQYBMNnEP5TJ/7f0iMbajrYVM/MJL8tkaAu5au0=;
 b=IbbuHGm4duF+Pm6krt7j+QSbsUXTupomxxmsmmDo3Q5iIYbMhSUa6yOF61bLXGO9E5
 LrQ15Ch1WCDQOx79fshfPxAcwefHxJBpCBOcUSNCrYS6OiNcstmH94I+iSxPUuLQUB1o
 qPb65VnkW4s8FzRlpIqpzqUFp6v9vmhI7t3rvFI/3GCaUW8MzoiknsrOOx6eLE6/Snrv
 tKr8P1gmkfOgtKmjZQwVCqKjCtfj6HHyNo88yZ6jESVPB1tSOxqDd4evFPUjWPOi4ddC
 NCl1ubOVjOubB7U5QReOZGcOJkKlxJ8FWTkPuq+BacoQyKveez8b3yrQqmheef6Nf9PL
 dwTw==
X-Gm-Message-State: AOAM533qzlzH558q175nqqiXLqxyRN1Dzitc/pXC7wuSoFrhy7HmZ0HP
 uxEN4ttrrgUGOnsAWk0kO9MVzAYOSuA=
X-Google-Smtp-Source: ABdhPJwqz1stO7SbKWI65P+sB5nLu8zupwaD0LmiUxLUxg4JUn5glmM6mbDXWNPuIVDDXBJYp/QT3w==
X-Received: by 2002:a05:6830:44ab:: with SMTP id
 r43mr27009175otv.251.1637612035909; 
 Mon, 22 Nov 2021 12:13:55 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w71sm2073832oiw.6.2021.11.22.12.13.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Nov 2021 12:13:55 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Mon, 22 Nov 2021 12:13:52 -0800
Message-Id: <20211122201352.1754061-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.33.0
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
 This results in build failures if the page size is 64k, which is now the
 default for PPC. fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
 fs/ntfs/aops.c:1311:1:
 error: the frame size of 2240 bytes is larger than 2048 bytes 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.47 listed in list.dnswl.org]
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
 [209.85.210.47 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mpFhR-0008Q4-J0
X-Mailman-Approved-At: Tue, 23 Nov 2021 01:29:23 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs: ntfs: Mark NTFS_RW as BROKEN for PPC
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-ntfs-dev@lists.sourceforge.net, Michael Ellerman <mpe@ellerman.id.au>,
 linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

NTFS_RW code allocates page size dependent arrays on the stack. This
results in build failures if the page size is 64k, which is now the
default for PPC.

fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
fs/ntfs/aops.c:1311:1: error:
	the frame size of 2240 bytes is larger than 2048 bytes

Increasing the maximum frame size for PPC just to silence this error does
not really help. It would have to be set to a really large value for 256k
pages. Such a large frame size could potentially result in stack overruns
in this code and elsewhere and is therefore not desirable. Mark NTFS_RW
as broken for PPC instead.

Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
The Kconfig language does not support "depends on XXX if YYY",
so this is the next best choice.

 fs/ntfs/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ntfs/Kconfig b/fs/ntfs/Kconfig
index 1667a7e590d8..094ddef6010a 100644
--- a/fs/ntfs/Kconfig
+++ b/fs/ntfs/Kconfig
@@ -51,6 +51,7 @@ config NTFS_DEBUG
 
 config NTFS_RW
 	bool "NTFS write support"
+	depends on BROKEN || !PPC
 	depends on NTFS_FS
 	help
 	  This enables the partial, but safe, write support in the NTFS driver.
-- 
2.33.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
