Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EBA4601E7
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr63V-0005Kf-26; Sat, 27 Nov 2021 22:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mqzsn-0002op-Ey
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:44:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1FCj0eg3qCaMYcJXsF4imAvHr1mf3lurCF+mcbDbEBs=; b=llRMiQu8Q7IvFhMlIB9hVeQVxa
 KJZTWH9wVkYOhxHomOOF/Vq1gC0MeKSa3QQmDkQmI2nQMFRvVBPVrWuO4J90j5MlpETpOUJOjxHet
 5NS0NHTDy9REEv11whMieMnscs1ufmA2EL5xR9b9hqzUplw//e01mcPZ3w3yzKrmyDuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1FCj0eg3qCaMYcJXsF4imAvHr1mf3lurCF+mcbDbEBs=; b=fZ6+mTro9WXUtfuV7rTP3/b74p
 CCt2G9NLz8yF1lrbveEtjU2hy6xC7/VeFMInYI/uYKB8EzCkJMNubDCV96BVokLbJeSjFHY8Cesi4
 IuVIfLIW/IxYGD+tSUZt3MNkkkuorrOeNOfFgFn3F2DUkvqFtKKMVzNUwqMxpFSvSCBU=;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqzsn-0002mW-Qr
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:44:58 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 47-20020a9d0332000000b005798ac20d72so18471409otv.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 07:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1FCj0eg3qCaMYcJXsF4imAvHr1mf3lurCF+mcbDbEBs=;
 b=Qf45wa8fLOp9BUn1Le2czW7jAmqgqTrZRN9J9PA+lNZ43PIPd9HEnbEOK2QWpcoiJy
 Gf9XBTlMSjTcS3HrQ1lGOdYs54yKVe+DnoqLn+plOlSZb4by51wV70StOG158AeVSx+P
 RmTa5wgoICakylcnD7UEMPwRE/E/f5oJPeZPumOr4YVb+QHICSZeXCppW0qIH7jK0KsD
 3H038dH7vGaK3U6s/NXvp4eMeQyNVUprfaHzD/4mfCHM5lD4wfrYpBDg9mXQ2vzG/sFy
 qDu29dR3UPWDfjvdUUMqMMF7qm/NCgK9rqPQgTLM3qtWGAYkKDmDrVKlBW4BeaauJfNx
 3U8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=1FCj0eg3qCaMYcJXsF4imAvHr1mf3lurCF+mcbDbEBs=;
 b=T1CRk3Y/6wMlRctkZgZzq0VaFWvqtKCmSPs8R2tv654IfIu0LyTeIRTHemCsQQVPjN
 VoCrErGFB5Pjf31dMr2laYA6ua5mS0o04MQ7PruhP/lokNSfd/mmZNa4sNsGaSn7qyX0
 7d7GUgTQLJTR0e9oDD3A8ZzfJuZGVukRt7SHhz9R02uGezq6Rmt6tWb6F42QCPZE+a+N
 HITOtHjZxCZNxYr41+5ozmJm6DzVwQGTpanoRhyCVwVX48rd5ZFr8fabX6tX8jNsoYRd
 VDp+nnQl5gMm+8nQ5SE6ofHJ3ENOT0wqIVLrK4dS2PLjYmLo7VxgtqTgDjHWJIIEJrGw
 Kczw==
X-Gm-Message-State: AOAM532qSWPaGmo/JA7L8bKmLPDo4ku1BFF8NcAeMySY6cFAS+AdBEuk
 CCHkawp7w0jYuFBz4PSRVus=
X-Google-Smtp-Source: ABdhPJzRYuRmQj7vEqYGDPE43oGeBHCDNNMnrWWDZ4u66bbB/oYUTmJrWR/gReCZUw/i+mq4YDbrgw==
X-Received: by 2002:a9d:12a6:: with SMTP id g35mr35177546otg.61.1638027892296; 
 Sat, 27 Nov 2021 07:44:52 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n26sm1510723ooq.36.2021.11.27.07.44.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 07:44:51 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Sat, 27 Nov 2021 07:44:42 -0800
Message-Id: <20211127154442.3676290-4-linux@roeck-us.net>
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
 Content preview: Use the architecture independent Kconfig option
 PAGE_SIZE_LESS_THAN_64KB
 to indicate that VMXNET3 requires a page size smaller than 64kB.
 Signed-off-by:
 Guenter Roeck <linux@roeck-us.net> --- v3: Added patch to make VMXNET3 page
 size dependency architecture independent 
 Content analysis details:   (0.7 points, 6.0 required)
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqzsn-0002mW-Qr
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:20:23 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3 3/3] vmxnet3: Use generic Kconfig option
 for page size limit
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

Use the architecture independent Kconfig option PAGE_SIZE_LESS_THAN_64KB
to indicate that VMXNET3 requires a page size smaller than 64kB.

Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
v3: Added patch to make VMXNET3 page size dependency architecture
    independent

 drivers/net/Kconfig | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 10506a4b66ef..6cccc3dc00bc 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -567,9 +567,7 @@ config XEN_NETDEV_BACKEND
 config VMXNET3
 	tristate "VMware VMXNET3 ethernet driver"
 	depends on PCI && INET
-	depends on !(PAGE_SIZE_64KB || ARM64_64K_PAGES || \
-		     IA64_PAGE_SIZE_64KB || PARISC_PAGE_SIZE_64KB || \
-		     PPC_64K_PAGES)
+	depends on PAGE_SIZE_LESS_THAN_64KB
 	help
 	  This driver supports VMware's vmxnet3 virtual ethernet NIC.
 	  To compile this driver as a module, choose M here: the
-- 
2.33.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
