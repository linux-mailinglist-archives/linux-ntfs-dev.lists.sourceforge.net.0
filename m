Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBF9582171
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 27 Jul 2022 09:45:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oGbji-0000x5-Bg; Wed, 27 Jul 2022 07:45:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <soumya.negi97@gmail.com>) id 1oGUiV-00040S-3i
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 27 Jul 2022 00:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RSdu/ftksH2kRInjQ7CZe/PjouCCOaY6R6ufSLyASQ=; b=TOoQ1/fjbaXPgu9b/dS1ZggUC+
 zmA7EWfZ4+wXnjIJy8ccp1N27W9tGv0bgACBZabeJ88CgzfNbObUrZ5il4pms4iIGg5NE9BFlM77B
 9mx9EajCrywRTN/9QBlwBqjbOAIuIE/1FXaXDxQA79w9yJ/zoNqiMRbG/xpT9V+ktG+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3RSdu/ftksH2kRInjQ7CZe/PjouCCOaY6R6ufSLyASQ=; b=Tl5ZLROz9BBzKuOB2Vz9+gfFGt
 tAiAe/rNPItkgpz1QRVDtZFDM+YWHLqZWmva8qMcDCjEf0FLosDcmrMmR7vw7akv9Jbql4PTi1asB
 br3Orh/5PQlM++h+0twPPPutJkflMeyzKkvbV6/PoQeEHnLu4CrLbEF9i81IYhElct/o=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oGUiA-00055T-If
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 27 Jul 2022 00:15:47 +0000
Received: by mail-pj1-f51.google.com with SMTP id
 o20-20020a17090aac1400b001f2da729979so551242pjq.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 26 Jul 2022 17:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=3RSdu/ftksH2kRInjQ7CZe/PjouCCOaY6R6ufSLyASQ=;
 b=f41v0gASRs2LjNLebJYIoYGWdNbcVY8lv8LN8tQ+PTdDq0Urge2d0L6C8cVHnaTv8D
 f6E7yF1xorMNuLPPljCe1JOZ4/NEU5Tlo61Yd22WX+X6U4jB9Vb4+xa8v1wiBTppAVBa
 5NAoLJrpeou6wOHiBxpZQLxfanle34MvNySVnXsmFqkuq/TnQelZk/vodXcWx47pYw/j
 YCyH2F2ib040lYlZU7uiiG3s0WPrizg6ocD1f60ITQ+PRZuCKu2/exloxEl9jRVXu5/o
 QWEyEN7ToWRTmDnkNJCaXZRc7AouklgkLN36Lw2QHbZaByD5wh0suSYhrwbfc0/zNH3V
 GWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3RSdu/ftksH2kRInjQ7CZe/PjouCCOaY6R6ufSLyASQ=;
 b=I9OLBn+oqe3dDaylQ8BtofWARnm/3ng54reHwOYajojdFiw99wJegND76YraOtOypl
 sxHt+xIjRdCw0+kTeks0r/X0Lwp2244MjJPN0Z/GkA0Hd0tsXWcdqRDQzo3xCTMdToA6
 YqJ0L7S6AcqhLT2GUP3pgQfcGeWmtARatO44K0iL87IKL7Y2dcpKB0+N6JWvjmVUVZqX
 cZpBXwTMiGYsavWIiP5BGWTqk2ze3CCxYwamDGkIfWagrzXfzz/bvvmSX6xeBMJqpdCw
 fSAb7D43YFkqedyvv6FwIFM6XDuHPSaoCbmwEZCm9I/8NeQhPpOb5hVebuwO9wbWfxPw
 4yOw==
X-Gm-Message-State: AJIora8U9j7d+vkdmiwyb331+XDRKJy94aXuiLDO1e2ZeSE08RxOhZ9Z
 zVs7yjaAbFFQbuGbszLP6D7lUJ4xXfP9aA==
X-Google-Smtp-Source: AGRyM1u/LwAsCEZMgKu58cdfbc6X+rmkg7cqtKiuXRSrO5N9j0sBr+6aBlnWLpe1hpNWMkNbTvncBA==
X-Received: by 2002:a17:903:110e:b0:16c:defc:a092 with SMTP id
 n14-20020a170903110e00b0016cdefca092mr19142661plh.143.1658880932457; 
 Tue, 26 Jul 2022 17:15:32 -0700 (PDT)
Received: from Negi ([68.181.16.133]) by smtp.gmail.com with ESMTPSA id
 u5-20020a627905000000b005259578e8fcsm12298305pfc.181.2022.07.26.17.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jul 2022 17:15:31 -0700 (PDT)
From: Soumya Negi <soumya.negi97@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Tue, 26 Jul 2022 17:15:13 -0700
Message-Id: <20220727001513.11902-1-soumya.negi97@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Fix Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
 https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71
 Check whether $Extend is a directory or not( for NTFS3.0+) while loading
 system files. If it isn't(as in the case of this bug where the mft record
 for $Extend contains a regular file), load_system_fil [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.51 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [soumya.negi97[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [soumya.negi97[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oGUiA-00055T-If
X-Mailman-Approved-At: Wed, 27 Jul 2022 07:45:39 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] ntfs: Ensure $Extend is a directory
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
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Fix Syzbot bug: kernel BUG in ntfs_lookup_inode_by_name
https://syzkaller.appspot.com/bug?id=32cf53b48c1846ffc25a185a2e92e170d1a95d71

Check whether $Extend is a directory or not( for NTFS3.0+) while
loading system files. If it isn't(as in the case of this bug where the
mft record for $Extend contains a regular file), load_system_files()
returns false.

Reported-by: syzbot+30b7f850c6d98ea461d2@syzkaller.appspotmail.com
CC: stable@vger.kernel.org # 4.9+
Signed-off-by: Soumya Negi <soumya.negi97@gmail.com>
---
Changes since v1:
* Added CC tag for stable
* Formatted changelog to fit within 72 cols

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
