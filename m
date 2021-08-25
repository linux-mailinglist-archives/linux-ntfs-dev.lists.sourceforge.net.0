Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8844038F7
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Sep 2021 13:40:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mNvvn-0002r7-JB; Wed, 08 Sep 2021 11:39:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgel.zte@gmail.com>) id 1mImPf-0001jN-Ob
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 25 Aug 2021 06:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qDymKeYVnvDxo1zAJNTKVLLgUGfk702ptKOpajBhTTo=; b=VgMSFqnSPVeBDz8GZUDwaLpeBk
 qtuyoqoKDfhAaulaWCXwhYNEecw7Alx/3OfdDSFAaSeyWiJTkyFgVew2wgtSYQSgjyiBOLzLsIuEb
 C20OpO0NoswwugMFC24dS9pfKzvmmbktRO6f8lR4eQbxEJwXOf9H1EjDBRYHWlIr9nv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qDymKeYVnvDxo1zAJNTKVLLgUGfk702ptKOpajBhTTo=; b=n
 J1EELii0fWKUA8mbsVowGGlvLaeZuSj0op5hngBnQ2WE/klhPagFdZ8n6e4eDwVnpkPDlwG0yg+bP
 Agz0Cv2uH45epCTn1/AaF+VUOh86R4Iw4UbnoRHd1ziU9O+Mbf9EZS5+e0e5PfrlsGcXPWKCl1Rgw
 RiDv+JqnSBqfQ2ho=;
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mImPf-0009xl-9H
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 25 Aug 2021 06:29:27 +0000
Received: by mail-qk1-f177.google.com with SMTP id bk29so20211234qkb.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 24 Aug 2021 23:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qDymKeYVnvDxo1zAJNTKVLLgUGfk702ptKOpajBhTTo=;
 b=C9wpX9qqhDQKskB7AfjCD2/IROTTY1ttCZZMz7AY86Gs24Rou54TA2sIBmEJKUHu+c
 ugB1PYWK1R5D0QDx1mkrEVl/lKgoLXHUKjlFuHvhoGdd/JCjbvw02fitNoPPcx7FJS/o
 8qIpNPZoRxXY+ufTW9slLomZY+3eUbe1Q648anbfidU1ntsansOuyw9kXEqyamwge6zn
 UpAaLc70LCBe4nh9p/bqDdD1DJAZXwuJeYrwxZPwnLF9PatqIfyXLXQNz+fGwHrCJkOm
 LdtG0hdqy1qptA3BiC09aGns2Y8nD2BfmYvhzegB9PbhWSLCJeyGG/9WlUMGH1y9Cmjg
 dNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qDymKeYVnvDxo1zAJNTKVLLgUGfk702ptKOpajBhTTo=;
 b=H5oBSVpVrQfqub2upjSMXpAZXGc6qRUiqOrdambKf4fyWxDgFztxlhO5mZDsRIexCL
 /Hq1vmudPkfT+SR4lx/1b3SlZ4gO/O34G+0hJQwvt5S+aHWCLEOMM8oiZqyUppxgPQet
 i3uCiHA5heHwdpX4MUY55HCZT87TxApRdGewbfb/UnZQ42Wa/JWX2zr4/VTWQJ9VJHPo
 UN0hcWe3a7QUms9vFTV7Agmj5aIeUgkhRnJRpWqzimz287b19zldBUKzMgZBiQEgPzKD
 CxZBctpfrT5Rp2vTmwnASFk6X5cu3XDKfwWclOjASCQyFW8OCU3/lzJdqcRSMr52eiQf
 RxOw==
X-Gm-Message-State: AOAM530C0UWfpfvXrfiTMDQfPWGYdPyVPQZMmt4qkvHUL7/jXXfYC/hV
 w6Np7PJcmllNc83TEkycPNc=
X-Google-Smtp-Source: ABdhPJzkyEqzU2ylxvIIN5n2BFta1mKL05MC7Ew/EPciboLqtj5GgtZYmljoWCO6J6z4wFCCSgkPWw==
X-Received: by 2002:a37:e43:: with SMTP id 64mr29982255qko.249.1629872961574; 
 Tue, 24 Aug 2021 23:29:21 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id q7sm12441984qkm.68.2021.08.24.23.29.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 23:29:21 -0700 (PDT)
From: CGEL <cgel.zte@gmail.com>
X-Google-Original-From: CGEL <deng.changcheng@zte.com.cn>
To: Anton Altaparmakov <anton@tuxera.com>
Date: Tue, 24 Aug 2021 23:29:14 -0700
Message-Id: <20210825062914.70122-1-deng.changcheng@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jing Yangyang Use BUG_ON instead of a if condition
 followed
 by BUG. Generated by: scripts/coccinelle/misc/bugon.cocci 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.177 listed in list.dnswl.org]
X-Headers-End: 1mImPf-0009xl-9H
X-Mailman-Approved-At: Wed, 08 Sep 2021 11:39:37 +0000
Subject: [Linux-NTFS-Dev] [PATCH linux-next] fs/ntfs/mft.c: fix bugon.cocci
 warnings
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, Jing Yangyang <jing.yangyang@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Jing Yangyang <jing.yangyang@zte.com.cn>

Use BUG_ON instead of a if condition followed by BUG.

Generated by: scripts/coccinelle/misc/bugon.cocci

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Jing Yangyang <jing.yangyang@zte.com.cn>
---
 fs/ntfs/mft.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 0d62cd5..588407a 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -577,8 +577,7 @@ int ntfs_sync_mft_mirror(ntfs_volume *vol, const unsigned long mft_no,
 		for (i_bhs = 0; i_bhs < nr_bhs; i_bhs++) {
 			struct buffer_head *tbh = bhs[i_bhs];
 
-			if (!trylock_buffer(tbh))
-				BUG();
+			BUG_ON(!trylock_buffer(tbh));
 			BUG_ON(!buffer_uptodate(tbh));
 			clear_buffer_dirty(tbh);
 			get_bh(tbh);
-- 
1.8.3.1




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
