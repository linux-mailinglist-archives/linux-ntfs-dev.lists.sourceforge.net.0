Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFB248204E
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 30 Dec 2021 21:42:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1n32GE-0001w2-9W; Thu, 30 Dec 2021 20:42:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <colin.i.king@gmail.com>) id 1n2xcx-0008Nr-DB
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 30 Dec 2021 15:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q0dNHTxLQtU5lBJjjHwy0CnTQzm5dF8G6GDH+GbnJMw=; b=LumH8f5OdUBu8mpmxVXkOEYDQM
 vuy+MWI2pnRmjRIHzUTW2hXNR6ZFKDhdhmKnWO0G5KyMgzwTg3RJ7psNgH5+xSj722bpBVB42w2ty
 lvLIh0pA39g5fjWn21KMXSBeegeXU9B8Wcdr8kHip2nUhFXP6hC58oJVLWwwPGM+xwKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q0dNHTxLQtU5lBJjjHwy0CnTQzm5dF8G6GDH+GbnJMw=; b=j
 OOvLwRX4KijX6r/4cUAdQr3hZNfwUJ2eWhR7Ie+yrQWp7bY9sVFoG89HN2108lmvWf2OZqr8mHFWC
 FQZTc3numVVwb3n9QOMZc5/YNq39lyWGFa8Z3W935TFoG+yyQJI+p6nXTqsSHS6Cm7iOicDu5g5d8
 ZNzv7sxlnxExKqSk=;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n2xcv-00060x-Ct
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 30 Dec 2021 15:46:03 +0000
Received: by mail-wr1-f51.google.com with SMTP id v11so51202768wrw.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 30 Dec 2021 07:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q0dNHTxLQtU5lBJjjHwy0CnTQzm5dF8G6GDH+GbnJMw=;
 b=pCAG6Adm4zyNQlY20t5Rnjz0DjXwALfZxQQFq2JZCAOZxowBGsu/7FPaY9Upf/juAg
 MrIhZ7fAKnLbJUzKbNiW8qhtbP8/Ef7+dVhVbK/4wJU03MRFSewFXh/kRKUxu//8hvnn
 F1Rgm/KxajpMpxtM4O4+PwEMxgDvyc1LYeMua/Be7L1KF9UHRgZw0bn0utPT3l+lQN2M
 CeEcqWzGt0DRImtnVfoFEqPG0gWe4dpoUDC35qeFUAEMPmS1SZqU3wh0oZLP0BQUopJ2
 cQ1xtfQlFLBdUK/+QMUtWtKuIFyIw7nYcP3CCs7OcHpXXNV+SCPPvoY6DgU8iWDDb/Si
 OJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q0dNHTxLQtU5lBJjjHwy0CnTQzm5dF8G6GDH+GbnJMw=;
 b=QIfnEJ6EwUVV/bC4k77LSkJMWTyrXqKoBlaACympvxfTQPJMtnKFzj/6/67z0m6I5m
 hKNylWAszSmDGnMYNNc4vL3Senbmen+IO+Twi6BDQFL5yaL2ZRem9c9N8ZmUoGqLyL3r
 KsBP6q+lmRBKZEK0GkykrsvjJTkZ/G93zRk/ad5H+NTFfJm1Hjy5bBt5UOjONqQRZANQ
 eld+Ixb3nZVPe1IoaVSleXTGgRHzGZmt97OSQZvoUcMZLg6Wn1RuPhKZJkJBra2YKlET
 MTSu7cGIB14ybbeTuFH5Bbngsuo9GldAYTVriKa4U63192nPG0Kkynewq0/zExTEMpiv
 wYlw==
X-Gm-Message-State: AOAM531/gt0Ik9kS9yyd00rkmhKqR1RReyjqMm5txH+GTWfVt0MS1el8
 Rjqo5tZNZvZTD79OzO+x4L1+sbajCuPBDhWr
X-Google-Smtp-Source: ABdhPJxUcI0g7ZFDdWU+UXr/NItl1c+Ge4Ae193V0wZhWvZ13Cg/JyASMRDgQ7M3FsHlbBV2BSbJ3w==
X-Received: by 2002:adf:da4a:: with SMTP id r10mr24957924wrl.553.1640879155114; 
 Thu, 30 Dec 2021 07:45:55 -0800 (PST)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194])
 by smtp.gmail.com with ESMTPSA id m6sm28366820wrp.34.2021.12.30.07.45.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Dec 2021 07:45:54 -0800 (PST)
From: Colin Ian King <colin.i.king@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, linux-ntfs-dev@lists.sourceforge.net
Date: Thu, 30 Dec 2021 15:45:54 +0000
Message-Id: <20211230154554.307121-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Variable idx is being assigned a value but it is never read.
 The variable is redundant and can be removed. Signed-off-by: Colin Ian King
 --- fs/ntfs/file.c | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.51 listed in list.dnswl.org]
X-Headers-End: 1n2xcv-00060x-Ct
X-Mailman-Approved-At: Thu, 30 Dec 2021 20:42:53 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: remove redundant variable idx
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Variable idx is being assigned a value but it is never read. The
variable is redundant and can be removed.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/ntfs/file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index 2ae25e48a41a..329fca1fa619 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -1772,11 +1772,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
 	last_vcn = -1;
 	do {
 		VCN vcn;
-		pgoff_t idx, start_idx;
+		pgoff_t start_idx;
 		unsigned ofs, do_pages, u;
 		size_t copied;
 
-		start_idx = idx = pos >> PAGE_SHIFT;
+		start_idx = pos >> PAGE_SHIFT;
 		ofs = pos & ~PAGE_MASK;
 		bytes = PAGE_SIZE - ofs;
 		do_pages = 1;
-- 
2.33.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
