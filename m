Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AD86B940C
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3x9-0001Pd-GN;
	Tue, 14 Mar 2023 12:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1paluY-0001Wl-DE
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KO2HxTUOZzbjQ3y76wpSpZnZj3+bp1GiNAt8DWUNdxU=; b=LadNOK8WIJAv/RDxEZykcwb/gZ
 sgz1MiXDrGiX/onHE3Nid+6Jv1yV7vKY/o9do/84drNb9wlz6M26BLvWEnHW9F6552T26fFg1ezOG
 w6g8EP+4hYEORhBjUQn8rzQyZJKyGgxq/j7u/Uzh7ywElzTJ+eQ5bZDPmtsnR0iqC4mk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KO2HxTUOZzbjQ3y76wpSpZnZj3+bp1GiNAt8DWUNdxU=; b=TdnxMJ8ohy9rm5AG7lMeX7ekwu
 5U5BKd+/xPe2NSxA223lRGu8jbIGt4z4M29TRcFfxqJdr1Ed/isZI7I/Y1iS2qLvdf6wssau+DbZc
 DplWFtCFWlC6WErkEZLa6lc01Xam7Tzk9TG6XEwAXxaBV1+khQCbysBpdlaqfheMyKFc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paluX-0043wB-0W for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KO2HxTUOZzbjQ3y76wpSpZnZj3+bp1GiNAt8DWUNdxU=; b=k6dL7lF5h50jRNr0sP1WQeyO2+
 eYsLqyIE9wANrimmvLh1SLKSaKAQLXJUk1alQIuj4XBGvJRj9uRieruhcs+U6SV+HR+VvPc1UPSuY
 OCc8YZiS6Kb6vpacPRdCb765jGYyQ6mzFufMLIU/iSRNrAp5CXlIIMcmb0RuF4weYhUKE0HejaRS4
 jhrpz+NLg0h7aljcxQP1MoA91eAVuC2Z15E+ZXUHvRkn9mDApq0e9at52A/DmXtjojSQ7Fenv5WEO
 k+NlhBWmlWjDlx6pKRtetpvCU+1DPxNSA7GfdJg2p1cN+xRBYPPZpZa9blNrjwlGC0KgFPyFFinA6
 UUi2v2Bw==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paluB-00GaJN-BZ; Fri, 10 Mar 2023 23:12:07 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: dhowells@redhat.com, linux-cachefs@redhat.com, jack@suse.com,
 jaharkes@cs.cmu.edu, coda@cs.cmu.edu, codalist@coda.cs.cmu.edu,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 10 Mar 2023 15:12:06 -0800
Message-Id: <20230310231206.3952808-6-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230310231206.3952808-1-mcgrof@kernel.org>
References: <20230310231206.3952808-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  There is no need to declare an extra tables to just create
 directory,
 this can be easily be done with a prefix path with register_sysctl().
 Simplify this registration. Signed-off-by: Luis Chamberlain
 <mcgrof@kernel.org>
 --- fs/ntfs/sysctl.c | 12 + 1 file changed, 1 insertion(+), 11 deletions(-)
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1paluX-0043wB-0W
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH 5/5] ntfs: simplfy one-level sysctl
 registration for ntfs_sysctls
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
 fs/ntfs/sysctl.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/fs/ntfs/sysctl.c b/fs/ntfs/sysctl.c
index a030d00af90c..174fe536a1c0 100644
--- a/fs/ntfs/sysctl.c
+++ b/fs/ntfs/sysctl.c
@@ -31,16 +31,6 @@ static struct ctl_table ntfs_sysctls[] = {
 	{}
 };
 
-/* Define the parent directory /proc/sys/fs. */
-static struct ctl_table sysctls_root[] = {
-	{
-		.procname	= "fs",
-		.mode		= 0555,
-		.child		= ntfs_sysctls
-	},
-	{}
-};
-
 /* Storage for the sysctls header. */
 static struct ctl_table_header *sysctls_root_table;
 
@@ -54,7 +44,7 @@ int ntfs_sysctl(int add)
 {
 	if (add) {
 		BUG_ON(sysctls_root_table);
-		sysctls_root_table = register_sysctl_table(sysctls_root);
+		sysctls_root_table = register_sysctl("fs", ntfs_sysctls);
 		if (!sysctls_root_table)
 			return -ENOMEM;
 	} else {
-- 
2.39.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
