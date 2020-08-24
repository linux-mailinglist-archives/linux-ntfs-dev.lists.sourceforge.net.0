Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 192E724F141
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 24 Aug 2020 04:43:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kA2SG-0000gW-SG; Mon, 24 Aug 2020 02:43:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1kA2DD-0003P7-7p
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3L3z0BK/0uzC9bSt47v3W+rJZ7YzTzBC3wZRD43cnA4=; b=XcywZoEGfk1VNOfKV12v+KReHh
 Cjc7KhbPGOrC3D9M95ZbK+tpjg1K4sE7WDNJE12QW8P/yDtlqrZxi2uiCywMfVVil24V9saJc0KaR
 GclsPewfpsuTpiE3lHjeup4Wp+aYhZsAP2zGSXwJQ2lBLzMyK2dxmRaULPL57RXqjHP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3L3z0BK/0uzC9bSt47v3W+rJZ7YzTzBC3wZRD43cnA4=; b=k
 EFKGZtPqD/j6Vld/wRashyXI85d6a5Er290HBTsP4YhHmHIFesogFY8sZxEse9gfcSGBZ/QX51piM
 vTkEQ5QR5lh5EaWx0nObc3rpM4AyScpTtW2RkD91c86pkdxYIXeNZzV52rrmqkXlHaX2Fkf9nS11A
 NQYIeQE+U/5J1k6I=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kA2DB-0028YJ-Qg
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:27:55 +0000
Received: by mail-pf1-f194.google.com with SMTP id m8so4045854pfh.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 23 Aug 2020 19:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3L3z0BK/0uzC9bSt47v3W+rJZ7YzTzBC3wZRD43cnA4=;
 b=OFMl3Uthl4B0LUygzKyBFNvaulTy/jC3i1c4+bTDhS+JfVlE1Ot+7iTaSa7A0cYIgC
 ngIdFA0oW+svhPsqZrzb30umSCe5MWJMkhJS4yjbld3ED9HzFpX1nGlrsvbiR4B+wJXx
 eCNugCTCDvK3W4/59qg2vF7rS4nqF08H7WjKS9KinevEvXDrvdy8PVTPpEna0Ldlyw+x
 e8YuQQkrobDgmC03rbF1/IA6tX7xWkZz1iclvw+skdbzzyQB0rZNTxDIUWPK4+1ST4dy
 tuablQUHXJWoNUOGsPFkT3AfZx74sJ4A8Va7o3gzQd0mDKx3UGK8jbzUic764wd8LV89
 UesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3L3z0BK/0uzC9bSt47v3W+rJZ7YzTzBC3wZRD43cnA4=;
 b=R73uN0r1pHlzm0sVhhQMlMIqDRKybi1EI9yEZcQURcUKjl+p2Hz3WcfNkH0E1WozMC
 W/9yk/W7A/lhHHmF16rCFtn6l9DNKxoU2YCXR3+NBnROPcPBUiNs7t7Oj6rFZxwCXKVw
 EL60FwLBYIUNByd1a53cpawhxtYK2JCO7xRAZDV57eJcLpNrnvk44LfFgLh+7EWYrZw0
 /ciGbnTegaZwIAH8kDINmO0wdXr6CWdVeRK4ignUTRNeFFD+tMM9ZVciNF4JFnraQPQY
 wZW8cLaKiqr1TCFyckiY0pMxW2aEGEfEJ0NYAAJmHPeyZIPnVQThNaFfbS1HAWWK710O
 Etuw==
X-Gm-Message-State: AOAM531ly2h6uSzjrlm4t88P74S9EBoHYsSNGidE0cTmZfqHRTWOIxvF
 LgLaQGGoUjsd/smFIfzMvKEBMvrRWYf1jQ==
X-Google-Smtp-Source: ABdhPJyb9yhrzs/jrFLLEvgIMxZj0ZMSN8gXD4KQBV3v3y6+nmtMh7UY7CMcC9THd5nxMtDyrs57Cg==
X-Received: by 2002:a63:b24b:: with SMTP id t11mr2123373pgo.233.1598236068198; 
 Sun, 23 Aug 2020 19:27:48 -0700 (PDT)
Received: from thinkpad.teksavvy.com (104.36.148.139.aurocloud.com.
 [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id g15sm9413260pfh.70.2020.08.23.19.27.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Aug 2020 19:27:47 -0700 (PDT)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: anton@tuxera.com,
	linux-ntfs-dev@lists.sourceforge.net
Date: Sun, 23 Aug 2020 19:28:04 -0700
Message-Id: <20200824022804.226242-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kA2DB-0028YJ-Qg
X-Mailman-Approved-At: Mon, 24 Aug 2020 02:43:27 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: add check for mft record size in
 superblock
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
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

number of bytes allocated for mft record should be equal to the mft
record size stored in ntfs superblock
as reported by syzbot, userspace might trigger out-of-bounds read by
dereferencing ctx->attr in ntfs_attr_find()

Reported-and-tested-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=aed06913f36eff9b544e
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
Acked-by: Anton Altaparmakov <anton@tuxera.com>
---
 fs/ntfs/inode.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 9bb9f0952b18..caf563981532 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1810,6 +1810,12 @@ int ntfs_read_inode_mount(struct inode *vi)
 		brelse(bh);
 	}
 
+	if (le32_to_cpu(m->bytes_allocated) != vol->mft_record_size) {
+		ntfs_error(sb, "Incorrect mft record size %u in superblock, should be %u.",
+				le32_to_cpu(m->bytes_allocated), vol->mft_record_size);
+		goto err_out;
+	}
+
 	/* Apply the mst fixups. */
 	if (post_read_mst_fixup((NTFS_RECORD*)m, vol->mft_record_size)) {
 		/* FIXME: Try to use the $MFTMirr now. */
-- 
2.28.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
