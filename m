Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7486A6B940E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xA-0001Pq-8M;
	Tue, 14 Mar 2023 12:40:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1paluZ-0001XJ-ME
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BmPt7zwNeFbqQAIaOUhCWsgY6IQL642oNKGF33J3xkI=; b=jMU6GHJ4HlyNYp0buF1PisbE6u
 g9vAd9+gxqgT1KkoGFQm6gVadxP9rDZtVwdXJ//+UQDhpR6ssmSsZpUpPSnr8Sv9/gr9uounci5GG
 Kn8f+z9dyvdLvR5t0uhCOJdOyT1bUdWbWCncDUXNDmSkRRon6623+Jvs508PcFiV7URQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BmPt7zwNeFbqQAIaOUhCWsgY6IQL642oNKGF33J3xkI=; b=kw7fYeCD4zgaNlM7fS0p/1pUbt
 /O64leOJBXiEVWT1U5mYzvGF9V8fzMY9Q81z+DdphX3SK4AHUlhR2xrmXoNPhxeVFgJHyo6aJnRGh
 uQf7SUlv+U8T/EoYQ/fF85F6IrhIDcTO/Ue8hn52TOYjvkbspjDfM3GJUd9O4gzYMJVk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paluX-0004zT-S9 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=BmPt7zwNeFbqQAIaOUhCWsgY6IQL642oNKGF33J3xkI=; b=SXT/D5OFkE2YKFFmqJdPxzQmYX
 2aSY4e1ePRtmHrcRwHXP3b4+mklneKzkiSDIQwshC5V5Tn3acCVrE/8oYwJ9VioMh973Q61sqCJXK
 AcEWZoqJ808wwBUvWdTjxL09MkKLbCHuf3IrPnqz4jbg9vM4se6BrXmD4biWl8i9o3RiN+sAFGIOd
 zcAxwpQqBBw8gpvp3PwirBTIoh3Pmi0zf3rfxjyU8xT/hHsLWvQD0+3P9eQzuT1d+p/l1vy+BuL14
 6qNO1SoB7tut6hRAvGNdn1wRFjad2iZOV/BIr3Mmz61s94Em61CMrgwn7tYOh++vDnpeOoYpLg3h/
 ItGDm4IQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paluB-00GaJJ-92; Fri, 10 Mar 2023 23:12:07 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: dhowells@redhat.com, linux-cachefs@redhat.com, jack@suse.com,
 jaharkes@cs.cmu.edu, coda@cs.cmu.edu, codalist@coda.cs.cmu.edu,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 10 Mar 2023 15:12:04 -0800
Message-Id: <20230310231206.3952808-4-mcgrof@kernel.org>
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
 Content preview: There is no need to declare two tables to just create
 directories, 
 this can be easily be done with a prefix path with register_sysctl(). Simplify
 this registration. Signed-off-by: Luis Chamberlain <mcgrof@kernel.org> ---
 fs/quota/dquot.c | 20 + 1 file changed, 1 insertion(+), 19 deletions(-) 
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
X-Headers-End: 1paluX-0004zT-S9
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH 3/5] quota: simplify two-level sysctl
 registration for fs_dqstats_table
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

There is no need to declare two tables to just create directories,
this can be easily be done with a prefix path with register_sysctl().

Simplify this registration.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 fs/quota/dquot.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
index a6357f728034..90cb70c82012 100644
--- a/fs/quota/dquot.c
+++ b/fs/quota/dquot.c
@@ -2948,24 +2948,6 @@ static struct ctl_table fs_dqstats_table[] = {
 	{ },
 };
 
-static struct ctl_table fs_table[] = {
-	{
-		.procname	= "quota",
-		.mode		= 0555,
-		.child		= fs_dqstats_table,
-	},
-	{ },
-};
-
-static struct ctl_table sys_table[] = {
-	{
-		.procname	= "fs",
-		.mode		= 0555,
-		.child		= fs_table,
-	},
-	{ },
-};
-
 static int __init dquot_init(void)
 {
 	int i, ret;
@@ -2973,7 +2955,7 @@ static int __init dquot_init(void)
 
 	printk(KERN_NOTICE "VFS: Disk quotas %s\n", __DQUOT_VERSION__);
 
-	register_sysctl_table(sys_table);
+	register_sysctl("fs/quota", fs_dqstats_table);
 
 	dquot_cachep = kmem_cache_create("dquot",
 			sizeof(struct dquot), sizeof(unsigned long) * 4,
-- 
2.39.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
