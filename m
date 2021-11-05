Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E033445EE7
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  5 Nov 2021 04:53:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1miqIE-0007Ds-70; Fri, 05 Nov 2021 03:53:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1mioDD-0003mo-Ms
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 05 Nov 2021 01:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N07tUT+lLzgpnAEI2n4kk0ncM8QorW6AozB/rbyg1yQ=; b=RzvpK1gcv6395bhzXb7lOjnDvs
 q0OKvmI7dyvAEGHNfDDvt/vYZPbvrSZMQvdkhCotyun9xbv5dMu0NOYaZzRH9EWGcuu1vyHZCon3u
 B3Pyz6dOXknumFHP08OvGhwUIRyqr7IxsWNluAe9OPxGbjJN0OsNe/0IOh82c2pXTcSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N07tUT+lLzgpnAEI2n4kk0ncM8QorW6AozB/rbyg1yQ=; b=T
 bgGtcfZuWeT+pAHpNS///c5tx7oBfJpBRMF/yWE/bPe4JGOmDIiWIV/JJ0B9OaHLa3UGHIOARFpQe
 lfMtXPChqd0t4gGhYlEvnNLcmeYOMF5oTdtN1G6u3v1LH8IE6bIpQoVXDxfCXxeDa/J++zTQDvr3O
 h10kaerg3sdydbgI=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mioDB-00255O-MT
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 05 Nov 2021 01:40:11 +0000
Received: by mail-qk1-f181.google.com with SMTP id bq14so7546725qkb.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 04 Nov 2021 18:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N07tUT+lLzgpnAEI2n4kk0ncM8QorW6AozB/rbyg1yQ=;
 b=pr6wdPNNnsR4u/Y8vij1dzDL5zm+5AkjtSI7s2Tzsn2qNi7ICcCgoimLq48y0OxHv+
 j1/QKNgaZn6j2PRznP6u2E4+EKBGXqa+hIli3JW6o3gLPh/cuDGfZwyqWk64kxz1TFQk
 P+svOkaYLXMDnEjD96zaYehMB5PnGWRmto86/DYgXZUIGyHZHiicTS3a6cfOLdprmIkt
 fkZoxPXiHvZbD9oDNqWSkrBZ239nvWFLoJt05cIoU1sBGyulMWdoqJM0m9g7i5WbkK8Q
 cy9awyGEe8KbZHoWNIsokRQ+WrCQpAqPdAqGEhFr+roWJUDVKFYcBGI88vS47gbAY0yM
 pxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N07tUT+lLzgpnAEI2n4kk0ncM8QorW6AozB/rbyg1yQ=;
 b=yb9D4SyN03ChxOSpt+hC01vQY4lqfADNIOrpLARAmaQcxkGmc4SdHaIRLTjCtpn8A7
 UDgMXZhud0wjGcrrTJQG+56vCAVXKa1GSj0nf0k5wSfY5ebbJFqcduhrpMYPiSwfiRGi
 ub856h9xdWL5ASznzWLfxLq7Nyk3ZJF+/yk5VCOGIHi2NPjIoD2/t0o6b/YLA/vl+0q+
 7s9xlRJ5cbSCT00Nrz0Ml1zCfX+F0RIwmwUK/jD1B6661GYDBbg/XYgAY03fJhaGNb/j
 lS78+2WTYn09k3IDrkqLnGvVM+tM+fhRvWe739hUxH7yHHZzjCiRBoad9dvb9eYMsY6X
 OebA==
X-Gm-Message-State: AOAM533R6nX2QkzP6i1oIEGDGkAdBJvezhcGwJME/Z7WY7jpZ0h49CmE
 AnTNu7n0OyyLcj5/568XnFk=
X-Google-Smtp-Source: ABdhPJyi4XiEsBkLSd36dcBA6TRrH/mQ+Yb3BYMRdiS1wCjc+zWWrmYcfAqWwGSmfXDsmCMixN4SRA==
X-Received: by 2002:a05:620a:4088:: with SMTP id
 f8mr27537567qko.418.1636076403997; 
 Thu, 04 Nov 2021 18:40:03 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id e10sm5047984qtx.66.2021.11.04.18.40.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Nov 2021 18:40:03 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: zhang.mingyu@zte.com.cn
To: anton@tuxera.com
Date: Fri,  5 Nov 2021 01:39:54 +0000
Message-Id: <20211105013954.75112-1-zhang.mingyu@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Zhang Mingyu Eliminate the following coccinelle check
 warning: fs/ntfs/super.c:1615:2-3 fs/ntfs/super.c:1684:2-3 Reported-by: Zeal
 Robot Signed-off-by: Zhang Mingyu --- fs/ntfs/super.c | 4 ++-- 1 file changed, 
 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
X-Headers-End: 1mioDB-00255O-MT
X-Mailman-Approved-At: Fri, 05 Nov 2021 03:53:28 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs:Remove unneeded semicolon
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
 Zhang Mingyu <zhang.mingyu@zte.com.cn>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Zhang Mingyu <zhang.mingyu@zte.com.cn>

Eliminate the following coccinelle check warning:
fs/ntfs/super.c:1615:2-3
fs/ntfs/super.c:1684:2-3

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Zhang Mingyu <zhang.mingyu@zte.com.cn>
---
 fs/ntfs/super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 5ae8de09b271..500e6bd7c827 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -1612,7 +1612,7 @@ static bool load_and_init_attrdef(ntfs_volume *vol)
 		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
@@ -1681,7 +1681,7 @@ static bool load_and_init_upcase(ntfs_volume *vol)
 		memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
 				page_address(page), size);
 		ntfs_unmap_page(page);
-	};
+	}
 	if (size == PAGE_SIZE) {
 		size = i_size & ~PAGE_MASK;
 		if (size)
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
