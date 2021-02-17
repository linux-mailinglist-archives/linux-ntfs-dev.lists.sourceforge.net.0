Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E08631F3B6
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Feb 2021 02:55:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lCv0R-0007IB-Ii; Fri, 19 Feb 2021 01:54:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1lCPFU-0001MH-4s
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Feb 2021 16:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GOQVmvgp4dt65rKsAQWxL7KavP/pmOa+Mhm9+94yhA0=; b=NZAIubxCXO+pmfzbCO9MuVnFek
 bbatpzT4KSLUbcsUP3TYAvyUxEH0RE/oY6qvyiPP0yqWFGeVrnNjA7+DC7LyBxw5qRj1u7ekDVUpn
 TfhVnrb4dM+Yw+fFpukf0Ej7FXhLPEU7x/HBFNpB11FyHzDuq/roTMauVb6o/JIVaGFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GOQVmvgp4dt65rKsAQWxL7KavP/pmOa+Mhm9+94yhA0=; b=M
 b14XEs251q6Cc9Unu84/4vkbUsIACy/kxd2785/JRDWqewnFOOErqISmBkmURA7mfrcQ5jIAatAP6
 CZNQXX/SFq/FQmwr2xRqVHFGNOIDEYMQDQ3rdtfzJ1I598J/3pp/443bklGmp3wMOgVTi/9Io7W+T
 SxrgIrK+qODCq7+Q=;
Received: from mail-pg1-f174.google.com ([209.85.215.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lCPFO-00CZ14-Bm
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 17 Feb 2021 16:00:20 +0000
Received: by mail-pg1-f174.google.com with SMTP id z68so8772080pgz.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Feb 2021 08:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GOQVmvgp4dt65rKsAQWxL7KavP/pmOa+Mhm9+94yhA0=;
 b=OgWgfmcXzUIfi/RaYLY+BdMNraMTmk6AGXnvuMXh263tKqYsVRvv5S6QkszHfK6p9e
 R7ugb2dwa7Sys1Pdo2kHaqCYHLUo4t7HGHzt1X7d0Y5gqr7awVtUJh1+VKnQsDtsgcb4
 MpHY6dJyhLutgPzx08UrSWpabf4/q+scQi3p4S74LBkq2x4/NrxQf1OnXUdk8O7Imu/6
 TvoJ/FFTaQtt3bW4ciD5DSBsDjfrdLaDM+AgRwWLbDTTqnO9XUvrbuuKVQBDNbWRjS1Q
 xUFs4lmZmP95+DzJefEFUcvMVvKjAVpMWcJzx7vOpqzCw1FIW7Nq3cVS5VBu++zkbnWI
 WVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GOQVmvgp4dt65rKsAQWxL7KavP/pmOa+Mhm9+94yhA0=;
 b=f/peAeZ2fAQbTF4cGphUoronRvOiR3aENETvh9slVb+LKvcVafFg0S4UgGfzmNoQ37
 Y1ikZH66Hc+IywocFgOtdbIj3jvBUz5u+ZIBiIVgbk72nz+FawGe0sYtxblSISMEuofe
 vAGfvAJZsjHDsSSEEFihXMiugv3R2gpxl6cr6MvqHz+HY+WvQ+kdLzOGDZm5sLul/n7U
 udjt0/b2vA92/7PEaDA+Cs+dlO6rR+r733tSyt4+Kx8r874JgtHa9Jd4NjlwgzbuMiKv
 DwX+ud5MzPjGHYHsg1GGfQjFfHokZmlrygR68Gq5LlPYIZY+tjU45kZOke68KZWeJnjc
 L47w==
X-Gm-Message-State: AOAM53043wCd8ytYAPBSJxcMENLfFBzC0zFRP0qY/6RGdgXsW2qPal9P
 K1EOIQYKu6quxp8rcWfLR74=
X-Google-Smtp-Source: ABdhPJwwiktyfKOXgb8Yb//e1wziSLZ4qWg8ZQIuFlYzLgICbjZMZ+Sc5K/88aC9aX/mkrZnPbAJuw==
X-Received: by 2002:a63:e602:: with SMTP id g2mr57105pgh.290.1613577608768;
 Wed, 17 Feb 2021 08:00:08 -0800 (PST)
Received: from nuc10.amust.local (104.36.148.139.aurocloud.com.
 [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id 74sm2911183pfw.53.2021.02.17.08.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 08:00:08 -0800 (PST)
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: anton@tuxera.com,
	linux-ntfs-dev@lists.sourceforge.net
Date: Wed, 17 Feb 2021 07:59:30 -0800
Message-Id: <20210217155930.1506815-1-rkovhaev@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.174 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.174 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lCPFO-00CZ14-Bm
X-Mailman-Approved-At: Fri, 19 Feb 2021 01:54:54 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: check for valid standard information
 attribute
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

we should check for valid STANDARD_INFORMATION attribute offset and
length before trying to access it

Reported-and-tested-by: syzbot+c584225dabdea2f71969@syzkaller.appspotmail.com
Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
Acked-by: Anton Altaparmakov <anton@tuxera.com>
Link: https://syzkaller.appspot.com/bug?extid=c584225dabdea2f71969
---
 fs/ntfs/inode.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index f7e4cbc26eaf..be4ff9386ec0 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -629,6 +629,12 @@ static int ntfs_read_locked_inode(struct inode *vi)
 	}
 	a = ctx->attr;
 	/* Get the standard information attribute value. */
+	if ((u8 *)a + le16_to_cpu(a->data.resident.value_offset)
+			+ le32_to_cpu(a->data.resident.value_length) >
+			(u8 *)ctx->mrec + vol->mft_record_size) {
+		ntfs_error(vi->i_sb, "Corrupt standard information attribute in inode.");
+		goto unm_err_out;
+	}
 	si = (STANDARD_INFORMATION*)((u8*)a +
 			le16_to_cpu(a->data.resident.value_offset));
 
-- 
2.30.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
