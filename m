Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEB577C8FF
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 15 Aug 2023 09:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qVoxR-0007dC-DD;
	Tue, 15 Aug 2023 07:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qVmWH-0002uv-Ui
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 15 Aug 2023 05:23:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KHF9DwBt/KL1PFI7RDqx5fwl57eGwDq8ZK1tGPWeBhg=; b=dj1ycw+ZVcYeN6dKoRNCd2emGL
 vxlCMItL+HK4VMWxqacXGJfUGIFnCuhZjJAygrmYZzuWeI1sx6FciOmvCi8U4K3aMYhiNepK/esw7
 4940bBWora5XAGvZzvvoH7gnKc0ly4NVIiOYfUHY8b3WOHQeqrtLKvAKUAnYb6JHbZ10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KHF9DwBt/KL1PFI7RDqx5fwl57eGwDq8ZK1tGPWeBhg=; b=medU7WGAmu/Zl9MytFVKBn2ReW
 PCsPSDTdIw0gDUmZa+2PbBl3B0/ewequG50EZbz6Q43q6+a8fhjWQ8dU8rypnJOWgLORfkx+EzV+z
 Cx81iBqsvs3P2kKRncKTWE1X4z8wNmJv1V1eojuJI1mnUVUsIFVkqTQoM9xIy+l3LQP4=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qVmWH-0063Fa-7U for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 15 Aug 2023 05:23:06 +0000
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-1bdf98a6086so2661435ad.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 14 Aug 2023 22:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692076979; x=1692681779;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KHF9DwBt/KL1PFI7RDqx5fwl57eGwDq8ZK1tGPWeBhg=;
 b=CTrcNKyM9wenReoMPPTsvZw/gbr1FG4sXAejfeRM4bbW8H59tBTiIeMhNjXTVTioGk
 xVZ775pmy1FLUUtGTYeI/sx3EsGalNoU/VgzGPBQ6srC+XO6CUkQfHlildtlbx/ag+bU
 Xpvi9yEubrzVuqcgBwF8pLk4MFy6IZaMrJuUp1nmC0s2X+VymajjhWPm9z7mgU7591h3
 D5/G7LoGl28xD3KsMigKiLRmdx1jWA04486fOIQ6IqlYptEQzsw4QMX7qRlJr5MyWf6I
 VW8lKUVFjmDURwQk3Y0TNK6p2lIhw6ZLIjPUDechn6NzTXLfsFtB8ehEXfD3MvcPfTat
 OvaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692076979; x=1692681779;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KHF9DwBt/KL1PFI7RDqx5fwl57eGwDq8ZK1tGPWeBhg=;
 b=Wq8x3rnJu1h5VyP2O5KVB4F+zcCnLCevQMwtLkh+icQnThh6lLKw9Hz1uYtNMP/uRJ
 gMualfsy7s5FVMN07RxBUB6gG4bWzelBmCWqNxDKPPZIM2x/EAj3uZDtfO28ZBSwriAf
 7sIGTx/PPpDE+XN34DvuthMosX9Yd/1VDbq8N/1BHEN/xk/NndR2qlfHzXEQ4+Ooc58g
 rrswKTAdSlGSNzrZriE/8+4MTkbyabHs9Znm9rktr9i5xfJe8+XuEoCyS+NrTrQL5iOG
 5LEqZWHQau3wRTVTehjGCfAebeWO1ydWleeeJfJwnrLac1Kq+Q9+jUlGXijZMFibxuN9
 Eeew==
X-Gm-Message-State: AOJu0YysrN7jCL8fBoGS5lCZfiTPh4YKIWPYaSQYbZg5hj4SvlxS0Gho
 fmxxX2fLpudSbfRokjYB1MVWXLM4nrPqlZI9
X-Google-Smtp-Source: AGHT+IF16TCyVtCgJTpVSwrOqeIBxBUrJvxhSI8dEuR715qV8vVR1nTShXLVmQC5gffHOlV4IQyhCg==
X-Received: by 2002:a17:902:6acb:b0:1bb:59da:77f8 with SMTP id
 i11-20020a1709026acb00b001bb59da77f8mr13032408plt.48.1692076979138; 
 Mon, 14 Aug 2023 22:22:59 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.174])
 by smtp.gmail.com with ESMTPSA id
 n10-20020a170902e54a00b001b66a71a4a0sm10311347plf.32.2023.08.14.22.22.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Aug 2023 22:22:58 -0700 (PDT)
From: Manas Ghandat <ghandatmanas@gmail.com>
To: anton@tuxera.com,
	linkinjeon@kernel.org
Date: Tue, 15 Aug 2023 10:52:50 +0530
Message-Id: <20230815052251.107732-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <BF7AB30A-8AE7-4819-B99D-8147D455AB95@tuxera.com>
References: <BF7AB30A-8AE7-4819-B99D-8147D455AB95@tuxera.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently there is not check for
 ni->itype.compressed.block_size
 when a->data.non_resident.compression_unit is present and NInoSparse(ni)
 is true. Added the correct check to the compression unit. Signed-off-by: Manas
 Ghandat Reported-by:
 https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
 Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b --- V4 ->
 V5: Add recommende [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qVmWH-0063Fa-7U
X-Mailman-Approved-At: Tue, 15 Aug 2023 07:59:16 +0000
Subject: [Linux-ntfs-dev] [PATCH v5] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: Manas Ghandat <ghandatmanas@gmail.com>,
 linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Currently there is not check for ni->itype.compressed.block_size when
a->data.non_resident.compression_unit is present and NInoSparse(ni) is
true. Added the correct check to the compression unit.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b
---
V4 -> V5: Add recommended check to compression_unit
V3 -> V4: Fix description
V2 -> V3: Fix patching issue.
V1 -> V2: Cleaned up coding style.

 fs/ntfs/inode.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 6c3f38d66579..d8ac221f212b 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1076,6 +1076,16 @@ static int ntfs_read_locked_inode(struct inode *vi)
 					err = -EOPNOTSUPP;
 					goto unm_err_out;
 				}
+				if (NInoSparse(ni) && a->data.non_resident.compression_unit &&
+				a->data.non_resident.compression_unit !=
+				vol->sparse_compression_unit) {
+					ntfs_error(vi->i_sb,
+					"Found non-standard compression unit (%u instead of 0 or %d).  Cannot handle this.",
+					a->data.non_resident.compression_unit,
+					vol->sparse_compression_unit);
+					err = -EOPNOTSUPP;
+					goto unm_err_out;
+				}
 				if (a->data.non_resident.compression_unit) {
 					ni->itype.compressed.block_size = 1U <<
 							(a->data.non_resident.
-- 
2.37.2



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
