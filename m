Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE056B9410
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xB-0001R8-34;
	Tue, 14 Mar 2023 12:40:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1palub-0004N8-Uy
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9kwFCfwOIqZ8Cdb+WBuaqm9+ckdViHa0b9t6sNQLN/s=; b=NFACYPEPP7e7i4p6h+ov90aq1z
 vN4TOgXyT1cbHqICSb/5RRCZqiYILUbSDS4p/kanAQP3lPdbQWVTVLXvZYeCXSuCSluuswdd7EIOY
 xfBdtGRTK+SM+Wke/egP3ex6JYZo5t/NzEAar0qSSnB95SVvOl1Cl16EHqnCgO3hY604=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9kwFCfwOIqZ8Cdb+WBuaqm9+ckdViHa0b9t6sNQLN/s=; b=PFf4Soiab0X1Ki+61B7VGukK2s
 zx/dAI+1nOe/LHySpyuwpR0N0HgWiHEE1+udM2qrF35Rp5FfA2MXWqxCL/JheNvglxNMnjzDyxD3U
 PxxeP3bzLgXnjWzldY4fsQDiEh9SL9S0jQwsm609uVpocWI5M02CzYrAuvePXfhJW/9k=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paluX-0004zb-SH for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=9kwFCfwOIqZ8Cdb+WBuaqm9+ckdViHa0b9t6sNQLN/s=; b=R88tOJvPjmUunQU7dZm8jO9RCR
 l90YURDFXcS3uhgoLjy2AsuPdkqFCaUXepuIa3HeeX8QIN9KUe0HRtEEyJ8RIgLZfWK/8xY6pRk7J
 mYi9s18nulh+IGbd/oTDJF4ljHi0EmMXlTHpxvL0tim0eRzoD0vy/Leoz94bP/WqIQI6xR3RSZb9O
 ZpNoP6DKThNQPgVtkJXudFNIr0nN/aLro0Hpn7rzqJl8sNb2L0OcxeiWafdFIfswJzX4gkY8kkuOn
 epEKcW/dR8hUe0UAgZi92hDM6ly1bNcuU7lEoN3MmWPyoVsm8fec3LVqZhDenNKv5U9dXg8TbVrbl
 ukJY/clg==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paluB-00GaJD-6J; Fri, 10 Mar 2023 23:12:07 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: dhowells@redhat.com, linux-cachefs@redhat.com, jack@suse.com,
 jaharkes@cs.cmu.edu, coda@cs.cmu.edu, codalist@coda.cs.cmu.edu,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 10 Mar 2023 15:12:02 -0800
Message-Id: <20230310231206.3952808-2-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230310231206.3952808-1-mcgrof@kernel.org>
References: <20230310231206.3952808-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There is no need to declare an extra tables to just create
 directory,
 this can be easily be done with a prefix path with register_sysctl().
 Simplify this registration. Signed-off-by: Luis Chamberlain
 <mcgrof@kernel.org>
 --- fs/cachefiles/error_inject.c | 11 + 1 file changed, 1 insertion(+), 10
 deletions(-) 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1paluX-0004zb-SH
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH 1/5] fs/cachefiles: simplify one-level
 sysctl registration for cachefiles_sysctls
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
Cc: j.granados@samsung.com, keescook@chromium.org, patches@lists.linux.dev,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 ebiederm@xmission.com, linux-fsdevel@vger.kernel.org, yzaikin@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

There is no need to declare an extra tables to just create directory,
this can be easily be done with a prefix path with register_sysctl().

Simplify this registration.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 fs/cachefiles/error_inject.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/fs/cachefiles/error_inject.c b/fs/cachefiles/error_inject.c
index 58f8aec964e4..18de8a876b02 100644
--- a/fs/cachefiles/error_inject.c
+++ b/fs/cachefiles/error_inject.c
@@ -22,18 +22,9 @@ static struct ctl_table cachefiles_sysctls[] = {
 	{}
 };
 
-static struct ctl_table cachefiles_sysctls_root[] = {
-	{
-		.procname	= "cachefiles",
-		.mode		= 0555,
-		.child		= cachefiles_sysctls,
-	},
-	{}
-};
-
 int __init cachefiles_register_error_injection(void)
 {
-	cachefiles_sysctl = register_sysctl_table(cachefiles_sysctls_root);
+	cachefiles_sysctl = register_sysctl("cachefiles", cachefiles_sysctls);
 	if (!cachefiles_sysctl)
 		return -ENOMEM;
 	return 0;
-- 
2.39.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
