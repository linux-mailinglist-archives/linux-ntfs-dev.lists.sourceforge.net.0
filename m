Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 410F9444941
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  3 Nov 2021 20:56:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1miMNA-000605-2a; Wed, 03 Nov 2021 19:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1mi5jB-0000uy-Ee
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Nov 2021 02:10:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWcAzAJwFyEX20kiIgOysZ+EjN9Q2rmcEhAoAq/Hw+4=; b=gYHqOYIZ7pS7WnnmWjOxoawd44
 weFN1evS0shrE5JxggUWKrGXw+KGv/c4rFCge6vUw6K1sO5GfjFy5IEiMTwQPZ8oZWkLxX2tLXq1G
 fzPZLldXNp+cYGkQTpoX4E0vg3Tz02Z3Wz7EFVgY/FaKn4xRehu/7eGJVKoe8pz2NTYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JWcAzAJwFyEX20kiIgOysZ+EjN9Q2rmcEhAoAq/Hw+4=; b=C
 UmUUcq/gAb8dRMyPtSdDr0MglbwJxDfFQJDdG4QAvJ25s+qohI/U0icRVRb41TPaw6HsRrVAnYxCu
 pH1uR/Rz18emiljY/TtqjRCiGvnDUF6aSdc+2rH8+8y4U90xsHGs0XoHXsmqNT/xnro9yWTEpmhvM
 DtfQft2Oha6YhQWs=;
Received: from mail-pl1-f170.google.com ([209.85.214.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mi5j5-0005C0-JR
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Nov 2021 02:10:13 +0000
Received: by mail-pl1-f170.google.com with SMTP id b13so1492572plg.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 02 Nov 2021 19:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JWcAzAJwFyEX20kiIgOysZ+EjN9Q2rmcEhAoAq/Hw+4=;
 b=ftn4niXwlfXg0KAgoRYTpOjBX0DmSrZqbu64lUmu5jQGRQUcfl8LlHqk4aU+O0XP/c
 Hlx8mhMkD1CBpO4LgBjH/k+Qhs4dEwwaQxajN/EMtX33cPTy8WR7M3QEC8YI4VLKmkY4
 6EU0FcvTao5WhGcU4IV9okTr2dD7pSCKRHzNEBxKPfnQhoTpr5fZBMhLkkEFOKa7oQa/
 EnJ3juXLL/uwtu/oAjtchHAtFjPcZGK93IePyZmXy/deGgfM48BDNyw3iS+ZL8y+cCpA
 OT/4TsSVJsAw5PKtEVwatD/XXiTBRG3bUPfXUTlHRfjO7GFBZSmLb0DemiOXq5Gv5YWK
 d5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JWcAzAJwFyEX20kiIgOysZ+EjN9Q2rmcEhAoAq/Hw+4=;
 b=h26TntnyNqwZZUy0n8DPajV6tR1LGNHwQRTDJia7xo0FQDE41ej95TixGTU65ChtIu
 L7k0wqZhbeACwaE69L7l0SU7TSlv5DHjN6B7eEWI8YrO7PDE23iVCMxzSg0soDu0GUIY
 n7gfp/ds+Majf5hINuZwX7KjaRJtKyKjWqanLfFSkTvUB4aIQhchIyqtvG+hMcEybE3N
 x+0YMB0wBw2zJLDWhw1IvB9UcAqZADztlFUnO9J2rn5RtHLNcpuznQQNPOLzv6A7FkOs
 yccNKb6k1WcKnE7vTp/EByHtYYbOyJJtcJ0ZGgh9aAyp0DXqJSbs6lA/H78hSDi54w6X
 wDSA==
X-Gm-Message-State: AOAM531LgdFyc82dIlqhnkr9uBnrsTNeXObsnphkKGRUnZ/OT8ylpuPL
 /s6soXnwsD2nnxYL9Dh7rJh5bfsLB9U=
X-Google-Smtp-Source: ABdhPJzEjUBhFBa9JNyzfgf4pbiCTAasGDwJmHlECMAMn9YhBj0RYWb794EUFZ7Infey4RkYKPRGdQ==
X-Received: by 2002:a17:90a:e613:: with SMTP id
 j19mr11373961pjy.182.1635905401572; 
 Tue, 02 Nov 2021 19:10:01 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id na13sm313174pjb.11.2021.11.02.19.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 19:10:01 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: deng.changcheng@zte.com.cn
To: anton@tuxera.com
Date: Wed,  3 Nov 2021 02:09:56 +0000
Message-Id: <20211103020956.24466-1-deng.changcheng@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Changcheng Deng Fix the following coccicheck review:
 ./fs/ntfs/super.c: 1615: 2-3: Review: Unneeded semicolon ./fs/ntfs/super.c:
 1684: 2-3: Review: Unneeded semicolon Reported-by: Zeal Robot Signed-off-by:
 Changcheng Deng --- fs/ntfs/super.c | 4 ++-- 1 file changed, 2 insertions(+), 
 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.170 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mi5j5-0005C0-JR
X-Mailman-Approved-At: Wed, 03 Nov 2021 19:56:33 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: Remove unneeded semicolon
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
 linux-kernel@vger.kernel.org, Changcheng Deng <deng.changcheng@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Changcheng Deng <deng.changcheng@zte.com.cn>

Fix the following coccicheck review:
./fs/ntfs/super.c: 1615: 2-3: Review: Unneeded semicolon
./fs/ntfs/super.c: 1684: 2-3: Review: Unneeded semicolon

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Changcheng Deng <deng.changcheng@zte.com.cn>
---
 fs/ntfs/super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 0d7e948cb29c..a45e06fa8a73 100644
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
