Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AE324F0A8
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 24 Aug 2020 02:05:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1k9zzR-0007Fd-RG; Mon, 24 Aug 2020 00:05:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1k9roa-0008An-PU
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 23 Aug 2020 15:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Len0YLjL+1HYVWLhCeiF5ALGuM9sVBgacotYzHDBck=; b=PbeLC4HOMhq0wOdtigbEEBk2lV
 8fFIj+IIyFnty7mb+mhJFNZy1iXg+P/WSsYnQvdsafboK6wC/lfx8/CASBsutXTPyF6qwA8kiCIIT
 8xudMvsgZhwKFtjohp1sMrPNLzoQ1IqNoSxKeB+c3wUE7qHOO4xxFUMHGk2rlRFZqHe4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9Len0YLjL+1HYVWLhCeiF5ALGuM9sVBgacotYzHDBck=; b=H
 V6Jh6x9cmS0y+ilXdY/7pwak37ThYNmaeDd1QkNlQ/Q0vpjpQn9fRh0hC3i6leLKsTyZmiAQM7lDD
 JAN5++069lj56sHv/ptpVrcnK0aW82YZsmbIhmrTIN7vc8gRVUJJVamO9MMcAW1NgqzD+6Eaft610
 P5ikDTos3OyRq72Y=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k9roZ-00GH8H-FR
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 23 Aug 2020 15:21:48 +0000
Received: by mail-pg1-f196.google.com with SMTP id 31so1073799pgy.13
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 23 Aug 2020 08:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Len0YLjL+1HYVWLhCeiF5ALGuM9sVBgacotYzHDBck=;
 b=CKq4LAxuP4oo+spy/Sjtq2HUumog5bo0IHYmqEpjVCxC6JkHFtCwsCBMkudgSOlZgC
 gtoP46ectLgIOopfzu1t32vOnOYo2swQ0Gt8Ct6SkmJ6YfA3hAkKFhOHJISdD0MtvFkv
 o0HTvXT8d/AGRstup6rRL3A+b3jlv8TV6sGp4TQr7XsmWQE+DW3Otgc7RhGrFpyfhgw1
 Obm4jpuWpZxrNb+f4VPnww0sjbFmv2PNqphHnmVvZqhqA8/2vM1dAgxGYiJIaLd3uFV/
 cXRHl1A1LvY73Sq0aGMS2xPHvBmBTI/vWu4m9Si+F4+VuNZk5jBMYu9z+o3S5ijfnWkB
 82wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Len0YLjL+1HYVWLhCeiF5ALGuM9sVBgacotYzHDBck=;
 b=FPQOKviD6YKC+CtHIPTfVGkDFuYyt0LqC1GWMVTXCrUVLxLr9DvNx1nJscKZzRD/BW
 waWanZ+3Xp/1ec80iD9mZSqS7pBWFueNaRhHTEvuCZzPp6+fPVqaKpH6Ne4Ltdp0YFki
 fdWp9i5VFohBYITTwwDGg+fRGwxK9iQQyjigO9U94OfSWxdqjjlXq/WytwFYMKY0GlFa
 n3900CSgkUh1SsBRlni+ZS2XVRovIN0JstLsW3Q4EajgdYrAJ5ljTMJLTdb9g7NYm0f2
 QfEnd2YHgPvUw4TZ2Gya0SSOKfBqAr2gk+LElmCIVHdEs9COTIANU050kbecm+lnHvsz
 I2MA==
X-Gm-Message-State: AOAM531LBlzZVL2chwK9ktg/Wekyy+k2kBmLLmU0giCB0LaaFehNEt1K
 +l7rHaw7uK9DaaVdEgcvUmk=
X-Google-Smtp-Source: ABdhPJynFN6QXBqe/BQZ1PIMKOJQW64sDPaA+7Mon0obiv343TtEITd8Tte5Kxo4hI1j3vshd7m0zg==
X-Received: by 2002:aa7:8b01:: with SMTP id f1mr1224840pfd.35.1598196101834;
 Sun, 23 Aug 2020 08:21:41 -0700 (PDT)
Received: from thinkpad.teksavvy.com (104.36.148.139.aurocloud.com.
 [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id g129sm8457637pfb.33.2020.08.23.08.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Aug 2020 08:21:41 -0700 (PDT)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: anton@tuxera.com,
	linux-ntfs-dev@lists.sourceforge.net
Date: Sun, 23 Aug 2020 08:21:47 -0700
Message-Id: <20200823152147.55766-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k9roZ-00GH8H-FR
X-Mailman-Approved-At: Mon, 24 Aug 2020 00:05:31 +0000
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
---
 fs/ntfs/inode.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 9bb9f0952b18..6407af7c2e4f 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1810,6 +1810,12 @@ int ntfs_read_inode_mount(struct inode *vi)
 		brelse(bh);
 	}
 
+	if (m->bytes_allocated != vol->mft_record_size) {
+		ntfs_error(sb, "Incorrect mft record size [%u] in superblock, should be [%u].",
+				m->bytes_allocated, vol->mft_record_size);
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
