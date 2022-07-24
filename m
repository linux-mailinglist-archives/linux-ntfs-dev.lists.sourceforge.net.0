Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 142B058050B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Jul 2022 22:08:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oG4Mw-0000Bo-SF; Mon, 25 Jul 2022 20:07:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <soumya.negi97@gmail.com>) id 1oFbYa-0006nY-6i
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 13:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yCaTZ6AUan3y8YqGHPIq2wk6gRvHTQrg/g6BBWDxZRk=; b=jXUf2Aj5WecDSwO88+P5FL/qf8
 dtkPe5OjCV/lf8pwnCYq9J9/YrMlTo8GzulxRjKx39Dr7wkkD82CqamVLDvLuSNEl1mxXMpXO92ZN
 uVvjWO2oWSqxMQtF/Kv7/I6uRze24yevXu0TWVVqnM47JqLCITrNCZ0MtIaQ31Y3sjQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yCaTZ6AUan3y8YqGHPIq2wk6gRvHTQrg/g6BBWDxZRk=; b=UoAfdjMJO334ygnulNfQg5GcIt
 La2/ujahI//MV5+5AoGGd9kMdFUXVf+jZBgwp+P9YtG4LgqIEBvKc8zyzen+aDkTPv6hOHiC3eDow
 nkpmfllWs+G+Jt/AcsE71Vq+UFecby97oksbD7MxHpVOoN+N4A+vfWlrI+JVi/Sey4Hc=;
Received: from mail-pf1-f180.google.com ([209.85.210.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oFbYU-008wCq-VC
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 24 Jul 2022 13:22:02 +0000
Received: by mail-pf1-f180.google.com with SMTP id y9so8168319pff.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 24 Jul 2022 06:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=yCaTZ6AUan3y8YqGHPIq2wk6gRvHTQrg/g6BBWDxZRk=;
 b=RsTpKwxRBL0QC5O4xnKokcqEbegyKFewsZHh5OTVbkf81jt0TOEqj6cMkuyFdCSnxa
 Xwn1iyXquOPegAcFqa3I2AkdyN7fK90fOpQpuoq5QTwVAQPwRw5h1e+XXPcWm+mK/qfK
 48rwox04Wnqtiidmr7ywkwDHkDZ76EYA6b6plIBPye2zLtjKfk+t+mKBOS7UHDI12//9
 /i2kOvdIBlkr3Ddv3genAar65LdMPCrd0B3IjUOR5fxS6ETlzEJ9LmWUEMF16c+36HXy
 Bn12bPD0CSuqk48m+r4MjWNZ4wKvejYXUFP/pwt5ib+fd13SQ/ELTXhsvJzNIhGXq5mS
 rcRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yCaTZ6AUan3y8YqGHPIq2wk6gRvHTQrg/g6BBWDxZRk=;
 b=t3SThdbGJfKTSc9shUbAHj5H6iW7dXGKJI8r+hm3QfuTTlewsyQeAejpVnby767qg/
 4O07rolt5RuuND/3KnCMlT7T96oIuKb7QgSxAuY8L/UP1P3JT0OAfr5NTbwTueRJyjKB
 pgS2TVcACcgCG1wyfN0a7q+tzAdgj+2AZea5tZWlCH5EepUllDGiVua+7pIzF8mgUAON
 AfBuvqKVYPt1uyO8jjn010xWwE32Ix4K98s/MZmXjmYQCvAkX53DUBXTKo+nMU27fzaj
 HCzLMeiUTSXpwJELz+jU8B79c3PxL6T8yC1RZMmtC7bjsKW60M0cqeIYctgYU89JDerc
 QLSA==
X-Gm-Message-State: AJIora/rySipmJ/uY3uu7VpUMVkAEWK35jgO+2RAATgk4kmAs10/an7h
 KFtJ0Ca3Q5V3bP1kq58OBtk=
X-Google-Smtp-Source: AGRyM1vIxQlx4B0EXKsDDofEXRxcl+OyFM+qSaqj/+f0s3zA3EqaGrGEWjur9YEbguCnkhZEGf2tXQ==
X-Received: by 2002:a05:6a00:10ca:b0:4f7:5af4:47b6 with SMTP id
 d10-20020a056a0010ca00b004f75af447b6mr8687114pfu.6.1658668910896; 
 Sun, 24 Jul 2022 06:21:50 -0700 (PDT)
Received: from Negi ([68.181.16.133]) by smtp.gmail.com with ESMTPSA id
 d10-20020a170902654a00b0016d1e514ec5sm7144017pln.139.2022.07.24.06.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Jul 2022 06:21:50 -0700 (PDT)
From: Soumya Negi <soumya.negi97@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Sun, 24 Jul 2022 06:21:07 -0700
Message-Id: <20220724132107.1163-1-soumya.negi97@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
 https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
 Check whether $Extend is a directory or not( for NTFS3.0+) while loading
 system files. If it isn't(as in the case of this bug where the mft record
 for $Extend contains a regular file), load_system_fil [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [soumya.negi97[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [soumya.negi97[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oFbYU-008wCq-VC
X-Mailman-Approved-At: Mon, 25 Jul 2022 20:07:56 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Ensure $Extend is a directory
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Soumya Negi <soumya.negi97@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fixes Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71

Check whether $Extend is a directory or not( for NTFS3.0+) while loading
system files. If it isn't(as in the case of this bug where the mft record for
$Extend contains a regular file), load_system_files() returns false.

Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
---
 fs/ntfs/super.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 5ae8de09b271..18e2902531f9 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -2092,10 +2092,15 @@ static bool load_system_files(ntfs_volume *vol)
 	// TODO: Initialize security.
 	/* Get the extended system files' directory inode. */
 	vol->extend_ino = ntfs_iget(sb, FILE_Extend);
-	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino)) {
+	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino) ||
+	    !S_ISDIR(vol->extend_ino->i_mode)) {
+		static const char *es1 = "$Extend is not a directory";
+		static const char *es2 = "Failed to load $Extend";
+		const char *es = !S_ISDIR(vol->extend_ino->i_mode) ? es1 : es2;
+
 		if (!IS_ERR(vol->extend_ino))
 			iput(vol->extend_ino);
-		ntfs_error(sb, "Failed to load $Extend.");
+		ntfs_error(sb, "%s.", es);
 		goto iput_sec_err_out;
 	}
 #ifdef NTFS_RW
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
