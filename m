Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C40E383A70C
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 24 Jan 2024 11:43:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rSaig-0007lI-Gi;
	Wed, 24 Jan 2024 10:42:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1rSZw4-00036h-QZ
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 24 Jan 2024 09:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HkC2PRqd6pgF7Zz/Q26hfAQmP6D0KFqOdRxvm5B8X2g=; b=hV06x/6i45bEDBisFRkijT+yUL
 E6mXlXOcFaHxzc8VCkbFmdLkgQnTngXUELZbYO4TOT/ZFuB0EGo2ADcq3WmXJHgIzQCu/Ju68aagQ
 oPZrzkxfTZbylX6qc8aEDgCtXADqhZSPhhkFcbmo8hau4L7T5fV/FohQhin8AEYQKjhg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HkC2PRqd6pgF7Zz/Q26hfAQmP6D0KFqOdRxvm5B8X2g=; b=E
 r51ElaW0Eg/va7PQE3OALSDd/lmswirML+qn9LlQaN4XkW5OhPU/so14EOH2q1PUqMzRaOE5LWLiL
 86IJ3h0TEfC6TLoO6LxgQy/qdgJvUTgoPmcx7xUORA71O0x1s9WTCIpggKGxfB/yh9L9i8JMYT2Bq
 HRtfiREbQ/P+6ex4=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rSZvy-0001E0-IM for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 24 Jan 2024 09:52:42 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 5b1f17b1804b1-40eb99a72dcso16918365e9.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 24 Jan 2024 01:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706089948; x=1706694748; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HkC2PRqd6pgF7Zz/Q26hfAQmP6D0KFqOdRxvm5B8X2g=;
 b=jaWVotqoWqpxCEwhnsFren9YSaBsB49MeItKQUCJ60jnSQt5snIcVLXZ6lXWMWmQYw
 XxGQ7z7t3lpKt+KiKdYSyGAol00h05x4vtj8Th4EJuBVN0yXsGLXDUQu8qcshcAZiVFo
 DSYC0lT4jjduT3uOmge/AQHB+nXaPRK5kxvcxGIdfIrk+mLenua4hjUsQxEDkj1wTDIG
 ziaatm2jFHDuZDDlDUKNhm1xCCsTF54JUYG/MzbkNzuuh70ChDFPMfu2DEYCb42oLlJo
 5WyHTZDpHp7mInDn3GM5M2M69OU9LyPz/y/W6rr85JtOHUAnUNgcot34AviRrB3jlaUQ
 6ebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706089948; x=1706694748;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HkC2PRqd6pgF7Zz/Q26hfAQmP6D0KFqOdRxvm5B8X2g=;
 b=k9dqKO78X3pBOuvN2h2V66oo2l2qyg/g+0a8HB5Ko6JRHH69sEHE2y4njBj80l/y3M
 4H0pAa7rQ0JEsqPDrYAte/cygz2Y8a2+4QhaFO4Th0L6BrQbRGsSoXFlmOu3ZF1Ib4KV
 UQWwDToIwSv48PPaKdCaaHRURvGKjug12taIZwxBjh7iN8TcRDBjFtJ3mv+XmM6bdn1/
 xYFk7rnBirtAkHiES4Iyb710s5E+22xBU8jiOrxmYXNJ8wPoLRAAXYO14+BnhUGinp8v
 3efo/bAiEjeSsIwhvh5cEB30nr+DTWlvUrSdJ1m/CVePIc9GxB3k0tVjR+EnsQSLT/nu
 e47w==
X-Gm-Message-State: AOJu0YzxSo6Aq/xw6xYGuxBMLpfpBN0MVH3ysiJB+Xcfw7DRZRamc1Fs
 39cuPKSKZtfoqyggWOH52W/vQzE2rvVKjT2c9DCCcYqr8oTNYNBa
X-Google-Smtp-Source: AGHT+IFyqGGODHossZnnZrv7N55tfyX0G66TbydE69PFWGQJxgAM7c7YKvMVu30vnnQqBj6wkjZrmA==
X-Received: by 2002:a05:600c:1c06:b0:40e:6ba0:de3b with SMTP id
 j6-20020a05600c1c0600b0040e6ba0de3bmr969508wms.0.1706089947501; 
 Wed, 24 Jan 2024 01:52:27 -0800 (PST)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 p21-20020a05600c359500b0040e3488f16dsm44769392wmq.12.2024.01.24.01.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jan 2024 01:52:26 -0800 (PST)
From: Colin Ian King <colin.i.king@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net
Date: Wed, 24 Jan 2024 09:52:26 +0000
Message-Id: <20240124095226.3395965-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is a spelling mistake in a ntfs_debug message. Fix it.
 Signed-off-by: Colin Ian King --- fs/ntfs/mft.c | 2 +- 1 file changed, 1
 insertion(+), 1 deletion(-) diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c index
 6fd1dc4b08c8..69978329877f 100644 --- a/fs/ntfs/mft.c +++ b/fs/ntfs/mft.c
 @@ -1580, 7 +1580, 7 @@ static int ntfs_mft_bitmap_extend_initialized_nolock(nt
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSZvy-0001E0-IM
X-Mailman-Approved-At: Wed, 24 Jan 2024 10:42:57 +0000
Subject: [Linux-ntfs-dev] [PATCH][next] ntfs: Fix spelling mistake
 "initiailized" -> "initialized"
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

There is a spelling mistake in a ntfs_debug message. Fix it.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/ntfs/mft.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 6fd1dc4b08c8..69978329877f 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -1580,7 +1580,7 @@ static int ntfs_mft_bitmap_extend_initialized_nolock(ntfs_volume *vol)
 	ATTR_RECORD *a;
 	int ret;
 
-	ntfs_debug("Extending mft bitmap initiailized (and data) size.");
+	ntfs_debug("Extending mft bitmap initialized (and data) size.");
 	mft_ni = NTFS_I(vol->mft_ino);
 	mftbmp_vi = vol->mftbmp_ino;
 	mftbmp_ni = NTFS_I(mftbmp_vi);
-- 
2.39.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
