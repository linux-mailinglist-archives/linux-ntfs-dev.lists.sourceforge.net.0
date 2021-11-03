Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29970444940
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  3 Nov 2021 20:56:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1miMNA-00060A-67; Wed, 03 Nov 2021 19:56:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1miA3u-0008Ke-Ep
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Nov 2021 06:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=clCWFcgTum5tE9Tq40EAguqPo9Q3/lsmvWziGtgtDKs=; b=X25pNdrffi044prSAVP3n79S7F
 cFe3fcxCcMi8VZVnx47YDZTkwAAlKY8ZeW3xTOkUrf78441tUqzAuOev5kndYCkOsTb/kgBpdOJ3P
 eShwq+lt6gbtlzqTERDXJULvlJ212wCg4Lsln7BKSJUk2JfnAmmp6aoK6huC1d6ild40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=clCWFcgTum5tE9Tq40EAguqPo9Q3/lsmvWziGtgtDKs=; b=i
 P6syQClqFgPnRLvOiF4y6eSdUvbTD7MnMuIKQRwARmusfKfBAuA5zcdsU5aDwVLmAYEOA9DUdJRQK
 zcFdc+P1Onb80L6OAVK839spajU2Omrh5t8ehqftcJvrSV+uD6HbDD/pUBPvwuIYe/nh3JocU9Kqm
 oUrhLI8DrgvALkWI=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1miA3p-00Fvzr-2e
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 03 Nov 2021 06:47:54 +0000
Received: by mail-pj1-f43.google.com with SMTP id
 x16-20020a17090a789000b001a69735b339so657632pjk.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 02 Nov 2021 23:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clCWFcgTum5tE9Tq40EAguqPo9Q3/lsmvWziGtgtDKs=;
 b=gZo+LfkknTySRPhPrCljHO7GjlvLm5Vf7nI1NaHCS4BqS27XsPxLc4lHRa6IgI9vM1
 xOTDLylcvU6zO4rYhJ/gMdPZgdzabMSsECrf7wOO5f5UJNgLMLhQfaeqMf6XDgPm+0H4
 rhEW4twLxhp/ULjUgOz2XvC/pf/A+ximObqVT1Pr1C5DyXZNOoUMrUkqSZHBHVQFSMIU
 ENfSSV7xTuFeRNZwXggZjHxuZ6y9XEThzgMQbutmNAI2/8geCF0uwCJ0cTNBbs1xMiH0
 6mzSo+xLi7FEweJx4QwXyzAJOP9h1qnRas2ww88GVRNAZKd95xow/DC27czqIql8JXs1
 FmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=clCWFcgTum5tE9Tq40EAguqPo9Q3/lsmvWziGtgtDKs=;
 b=eommKW1RJTZ/TFJNTqw49HAlxpddV6zoEp8NmuBnt3CZU3ziyWYgrCADyjflrCyjGG
 /+73vyWvwd1I/uxSUDlEnOF6h34ie1QYfquiLLky3QSGylnTEV6EEZmxSV0wB9L7XCy4
 dvSJBgMPF8l+lZkw5W8fAU5x955Gg7KgvfamfPEe0h12N+Qalun7SF2QCUbD5NSLLqlF
 Nks3eW3TpmugBfHocJnuRhNzyFTKJMdYFKYHuEw8S+90RICGy1QBsJm0xq1eVuetCTnp
 2tS/KbPgernbbkiz0EFqTL/KbBgDbkP7VaKWNrzEYxuoC5pilgVO2jky2/t/9oglU9ZF
 29aQ==
X-Gm-Message-State: AOAM531jekp7NQkEgf9BFFqlipttS9W/v15UZwx7wD+ALvH6X0NjkU5I
 h70GeB5bc2FnJpwXwauEKK4=
X-Google-Smtp-Source: ABdhPJzFlUGbJnFxGdJ5EVLm4hLFnEpu0QSipv96BgD3lERQm2gSxMNcjlGLvyHOMm4MHMi5ZKojyg==
X-Received: by 2002:a17:90a:a503:: with SMTP id
 a3mr12517810pjq.122.1635922063637; 
 Tue, 02 Nov 2021 23:47:43 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id d18sm1213710pfv.161.2021.11.02.23.47.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 23:47:43 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: zhang.mingyu@zte.com.cn
To: anton@tuxera.com
Date: Wed,  3 Nov 2021 06:47:39 +0000
Message-Id: <20211103064739.27110-1-zhang.mingyu@zte.com.cn>
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
 warning: fs/ntfs/lcnalloc.c:902:2-3 Reported-by: Zeal Robot Signed-off-by:
 Zhang Mingyu --- fs/ntfs/lcnalloc.c | 2 +- 1 file changed, 1 insertion(+),
 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.43 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1miA3p-00Fvzr-2e
X-Mailman-Approved-At: Wed, 03 Nov 2021 19:56:33 +0000
Subject: [Linux-NTFS-Dev] [PATCH] NTFS:Remove unneeded semicolon
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
fs/ntfs/lcnalloc.c:902:2-3

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Zhang Mingyu <zhang.mingyu@zte.com.cn>
---
 fs/ntfs/lcnalloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ntfs/lcnalloc.c b/fs/ntfs/lcnalloc.c
index eda9972e6159..66c2b29e09dd 100644
--- a/fs/ntfs/lcnalloc.c
+++ b/fs/ntfs/lcnalloc.c
@@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *ni, const VCN start_vcn, s64 count,
 		}
 		/* We have freed @to_free real clusters. */
 		real_freed = to_free;
-	};
+	}
 	/* Go to the next run and adjust the number of clusters left to free. */
 	++rl;
 	if (count >= 0)
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
