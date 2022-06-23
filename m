Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9660557724
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 11:52:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4JVQ-0005EV-Me; Thu, 23 Jun 2022 09:52:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1o4JTg-0005Cm-Nt
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 09:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OrccWdamTvgOFcK19T+WIMvuOqIZDWIcCJSvAHqZYgQ=; b=W+muI02fJ90EdEu8ZRbeutkHeN
 dc0uuEirC4ZWQd+cEb0MpXredhuWYHktPBrd02jwvEQs07KRag14dfh4cS49ISadE5Crz/bV7zQZZ
 F6Ab3/Y+3WwPyX9BbexSqcgjQEC/j+ceYnlSrMV4Wx7nZ8OVuEEhA5bfhDMvY/pzmgNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OrccWdamTvgOFcK19T+WIMvuOqIZDWIcCJSvAHqZYgQ=; b=OAHduW/yk/aqPLGxQEUv5kbNb2
 zTiVQ9gTdLpJMTkMROH6Ci6BWZS3u174ZlF6HQ+pkvSfBmfSAL9Kba2Fzj+MkZ2s0RHRXZTW4v+r1
 aByPWTJgX8hdYMlj1FRiJKAk51H86PnliALWDxwgmitZzcXhuIv7KUqO3LkONGObhCWA=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o4JTc-00B42k-SQ
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 09:50:21 +0000
Received: by mail-pl1-f177.google.com with SMTP id n10so372310plp.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Jun 2022 02:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OrccWdamTvgOFcK19T+WIMvuOqIZDWIcCJSvAHqZYgQ=;
 b=XjhOaxiES3eKDxQTefCRzGhA0CftQ33Vaeb7/1vjcIeITxNJ2ZAZbBA0eFNioDm0AO
 Z5r6T9DPWXsq/H4BGJ4aDNolUGGYlOJT8B0yM26QcE+0hp7W5qnCiUaSULWvw92UzbSd
 Z2BZv8p/4hqesWUtQrS0Rf1OfPZTIqzcP6L8+tAqdBkkwQTmHLoAnomd1/qtCV9Yy9RO
 bPAJao5jlYLqYtxkbfENzP99y2XZYLndJN9dkaEQDZOFFBQ7qVMdzSkMojHdqAojm43s
 ExysRASALskXVUEOvFQMnLbpQAZzIEgJN1btk36g9BBx6vhiACwDGKeHnSZI/0+VkwTk
 6zYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OrccWdamTvgOFcK19T+WIMvuOqIZDWIcCJSvAHqZYgQ=;
 b=dFfsuG2ut2hjcoQjoSZaGTWGJlzHdyWKuWfzw6oZtcQ9Xwj2iSZx+x1jFPEpCitEsa
 BMQDvGvg3wG3RwwIOQ/W7i7xAu6w1WvhfEVKkA16AeGHd7KqtrW4Z2BzeW6/EIqokQLV
 CA6BTVrnPGZpz10/olO47b7aNgC4iZCDNjtAg5WJyxJ1mFfylL3Cp/NJjANM2pbnOcnC
 RgSfbudUgm4wDMhzd7GEHvXVPcMLWo9MwGro7ScGOCSBDC8r7kEeJTBauMPRLjBNd8wP
 wEwEB87O9eJvxFBX9j3W0V5nVMZ0l/lEdKGgFsH2ytrYP9kwTDF4+C7cD6rN+QiQqp+I
 qQhg==
X-Gm-Message-State: AJIora/S0hqiZ2WKpetqqGGIXC+48fnUmqiz6vOxyKD64aJSIJjI+myF
 pD78GzebgcF3r16BHVGWhgc=
X-Google-Smtp-Source: AGRyM1vXNXQtf2JKIcz4hWc7g4muk3EZd3qtFB/vvHoJgWjPRgUKMqqvlySR52Ijuv1LnDibSicp3g==
X-Received: by 2002:a17:902:d2c1:b0:16a:4028:4748 with SMTP id
 n1-20020a170902d2c100b0016a40284748mr10367479plc.37.1655977811369; 
 Thu, 23 Jun 2022 02:50:11 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 y2-20020a17090264c200b0016a12fab6c2sm10055543pli.307.2022.06.23.02.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jun 2022 02:50:10 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: xu.xin16@zte.com.cn
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net,
 stable@vger.kernel.org
Date: Thu, 23 Jun 2022 09:49:56 +0000
Message-Id: <20220623094956.977053-1-xu.xin16@zte.com.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220623033635.973929-1-xu.xin16@zte.com.cn>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: xu xin As the bug description at attckers can use this
 bug to crash the system. So to avoid panic, remove the BUG_ON,
 and use ntfs_warning
 to output a warning to the syslog and return instead until someone really
 solve the problem. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o4JTc-00B42k-SQ
X-Mailman-Approved-At: Thu, 23 Jun 2022 09:52:06 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of ntfs_read_block()
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
Cc: Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org,
 syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com,
 Yang Yang <yang.yang29@zte.com.cn>, xu.xin16@zte.com.cn,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>, linux-fsdevel@vger.kernel.org,
 Zhang wenya <zhang.wenya1@zte.com.cn>, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: xu xin <xu.xin16@zte.com.cn>

As the bug description at
https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
attckers can use this bug to crash the system.

So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a
warning to the syslog and return instead until someone really solve
the problem.

Cc: stable@vger.kernel.org
Reported-by: Zeal Robot <zealci@zte.com.cn>
Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
Signed-off-by: xu xin <xu.xin16@zte.com.cn>
---

Change for v2:
 - Use ntfs_warning instead of WARN().
 - Add the tag Cc: stable@vger.kernel.org.
---
 fs/ntfs/aops.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 5f4fb6ca6f2e..84d68efb4ace 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -183,7 +183,12 @@ static int ntfs_read_block(struct page *page)
 	vol = ni->vol;
 
 	/* $MFT/$DATA must have its complete runlist in memory at all times. */
-	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
+	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
+		ntfs_warning(vi->i_sb, "Error because ni->runlist.rl, ni->mft_no, "
+				"and NInoAttr(ni) is null.");
+		unlock_page(page);
+		return -EINVAL;
+	}
 
 	blocksize = vol->sb->s_blocksize;
 	blocksize_bits = vol->sb->s_blocksize_bits;
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
