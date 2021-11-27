Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 917074601E5
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:20:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr63U-0005KM-MS; Sat, 27 Nov 2021 22:20:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>) id 1mqzsj-0002oV-NS
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X9mTAXN0GDjT0OEVL106WoVdWnzq/NHT7A3sF8XWLAg=; b=gtM93K9qTY1WRSd5mOXd7RnZCq
 nXWlsa4Nkb3Y5RDnmF1+0xHGw9TzZv4DJEX5G2tWPBwnCgHyhORSEIq9q7b+jfVqh3owWu7AWoFG7
 lbz0vcS38uN79+K6n6hEGvwBqwc8gd//IQVZbSomU1xP9Jur9u9FyY8WpoBpD+RUL5dk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X9mTAXN0GDjT0OEVL106WoVdWnzq/NHT7A3sF8XWLAg=; b=O
 cg+dnt1Boi/jevACK1kLZaQToL9EmECQ34u0JFFeDOmS+sIwbaPOAwMUiuYwxjTUkY+wS1JkasHoG
 DpNo6Vz9s8z9vEp3OJuSb9N/I4WwtmYLsL6dlHck+uIypNu6ZP1YV44k5Kma0iVY/GWC6A2JGE+Nd
 g9oG4AGuhrkFV9eU=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mqzsj-0002mK-Vv
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 15:44:54 +0000
Received: by mail-oi1-f174.google.com with SMTP id t19so24967551oij.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Nov 2021 07:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X9mTAXN0GDjT0OEVL106WoVdWnzq/NHT7A3sF8XWLAg=;
 b=a/PWkdrcYwcyP2NijmJKQ2FoB7gZEOL9eWlziuafvWDQIt/7xwHjgU/+BgRphScBuD
 +H2CaKK1JvoDa4NOutV+4sohNBam/bngsGaLEQ7I5P4T3FfkaD2PvtowZmfVQVZc2vwy
 z+/kRjuSfB2p9dZor4Nc2MAJhuc1tRFAKbiP6dToOKg9/D7++Q8z/8SSdp182ce3THp3
 FHp8lIXzacwyr7wALSVxmdS1VGfSONkiXEX1wjgDGaSWeHaZSfuS+t/5iaHyCT0C6M6x
 SMZBEf2OsxMR1eLxybgXdcLcPMjZ6BFm1EVzelGBf+EmglZINU4F4wpkebw9E7iwofvr
 P9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=X9mTAXN0GDjT0OEVL106WoVdWnzq/NHT7A3sF8XWLAg=;
 b=3+R+VaMOKnEjAY2GQ71rxINL7R5bhyHpiyZAu4/FXfree/VKA1tmeBcNMe4jOx3YO6
 ZSgOg7CZt7mV1JRELUL8iJfOiTdPAnBJeIzFMr5RDzy7tKbyTCQO/31OvLTt62Efz/g8
 2Od+YXaWcOaQtpQ3fxZcykKbE4bHiKdBYZVuwLIgGjONeJKmvc2IcQ/wodRa7BkEAC+r
 F71EeGqUQz8mqYfVLJNssc2kFQCsdiB4K6xmkKGWn5jwuu9rev6BBQXSd4FeEsonNfCM
 OIipMhWL2YbXBP5IXJlfDVrGZnPo+Par0pUQiItDhqGv65gfAgpIU+LfX8EGPqsBhREX
 bkYA==
X-Gm-Message-State: AOAM530Xi2XhbQuCjKSXiCOT26r8bLV1k8Hj6vye0zkMAWmYfDv/nzKO
 GxKhBmzLJ2cp4Gw0dSUJbKo=
X-Google-Smtp-Source: ABdhPJy+ILESTIBn64sxbqbS8Hj3UBtHk1uoo7F/y4JPliyr5R+5jU6MyqH+MYjaOCT95tj8ypRBEg==
X-Received: by 2002:a05:6808:1509:: with SMTP id
 u9mr31712601oiw.13.1638027886768; 
 Sat, 27 Nov 2021 07:44:46 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 t14sm1629056otr.23.2021.11.27.07.44.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 07:44:46 -0800 (PST)
From: Guenter Roeck <linux@roeck-us.net>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Sat, 27 Nov 2021 07:44:39 -0800
Message-Id: <20211127154442.3676290-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is the third attempt to fix the following build error.
 fs/ntfs/aops.c: In function 'ntfs_write_mst_block': fs/ntfs/aops.c:1311:1:
 error: the frame size of 2240 bytes is larger than 2048 bytes The problem
 is that NTFS_RW code allocates page size dependent arrays on the stack. This
 results in build failures if the page size is 64k or larger. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.174 listed in list.dnswl.org]
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
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mqzsj-0002mK-Vv
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:20:23 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3 0/3] Limit NTFS_RW to page sizes smaller
 than 64k
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

This is the third attempt to fix the following build error.

fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
fs/ntfs/aops.c:1311:1: error:
	the frame size of 2240 bytes is larger than 2048 bytes

The problem is that NTFS_RW code allocates page size dependent arrays on
the stack. This results in build failures if the page size is 64k or
larger.

Since commit f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
book3s") this affects ppc:allmodconfig builds, but other architectures
supporting page sizes of 64k or larger are also affected.

Increasing the maximum frame size for affected architectures just to
silence this error does not really help. The frame size would have to be
set to a really large value for 256k pages. Also, a large frame size could
potentially result in stack overruns in this code and elsewhere and is
therefore not desirable. Make NTFS_RW dependent on page sizes smaller than
64k instead.

Previous attempts to fix the problem were local to the ntfs subsystem.
This attempt introduces the architecture independent configuration flag
PAGE_SIZE_LESS_THAN_64KB and uses it to restrict NTFS_RW. The last patch
of the series replaces a similar restriction for VMXNET3 with the new
flag. This patch is not necessary to fix the NTFS_RW problem and is
provided only for completeness.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
