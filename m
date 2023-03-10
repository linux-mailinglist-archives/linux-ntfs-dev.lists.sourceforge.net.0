Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1AC6B940D
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3xA-0001QN-HL;
	Tue, 14 Mar 2023 12:40:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1palua-0004N1-4s
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EPRtJdAYUThD9v7MOatRvgqEa9X3fVwxqlIN4DTz3cs=; b=AAKLOlzfuYHyXFb+md4BnGtShe
 3dzfSCru+jCxsdZda90ZjA3xo+x/rsOz6zMvGZowaDvKX+SL63iEH5UvlZiFBo85ajNFr3qall9fu
 O90KW3snQBhzRVxFLgHcg9TGiM34r8XsqOX+blYp1PzrsZWoGOmp0WHTsOJZh1vaU4V8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EPRtJdAYUThD9v7MOatRvgqEa9X3fVwxqlIN4DTz3cs=; b=iMBFp5IoMrCvlnTyCMpgWR1182
 kN3X9iKHhgxzFcK41X+NlaaqMgCbpo76tjq4NwIe3/DKJuBIeo38AU+QP6gZI9lGjy+WMCouijgXt
 lwsRBrVy7dmTMHbiAulwp/KE1/MkVqVPq+YxNcnAauf0Z43UB2pRbapG0c0r3Tzsu3TQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paluX-0043w3-0W for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=EPRtJdAYUThD9v7MOatRvgqEa9X3fVwxqlIN4DTz3cs=; b=SnYgNMBzREroBXdPEY7ZqIIMzG
 cTnmobatmfXagXhqbITIy4V4ITQRAK7YAEx/+E69OXETmV5ggH1R2qyBW8N55HLDXLE4gc+kys/6F
 uSuOaFyJtC+f2y3omET8kB7nLHBQ/JDqkiv/NSKoVOVa8DeEhDAC/PTgx4G/c4ECoc4as0kMX4dts
 gOPJbb8IsXGj/4pLluzZrFaAsVZbLg85X3cPxknaJLPtK3XDqmj4HA0Tz28c44eCuDodXMVeQM33x
 1rP/K8GTCDr113mywkzg4bTIPqPka82LBxtqt+lyqrBRy0aXqPi635WEuSTk1XJyD56evrKQWDkfl
 yWAponhw==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paluB-00GaJH-7h; Fri, 10 Mar 2023 23:12:07 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: dhowells@redhat.com, linux-cachefs@redhat.com, jack@suse.com,
 jaharkes@cs.cmu.edu, coda@cs.cmu.edu, codalist@coda.cs.cmu.edu,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 10 Mar 2023 15:12:03 -0800
Message-Id: <20230310231206.3952808-3-mcgrof@kernel.org>
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
 fs/devpts/inode.c | 20 + 1 file changed, 1 insertion(+), 19 deletions(-) 
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
X-Headers-End: 1paluX-0043w3-0W
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH 2/5] devpts: simplify two-level sysctl
 registration for pty_kern_table
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
 fs/devpts/inode.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/fs/devpts/inode.c b/fs/devpts/inode.c
index 4f25015aa534..fe3db0eda8e4 100644
--- a/fs/devpts/inode.c
+++ b/fs/devpts/inode.c
@@ -72,24 +72,6 @@ static struct ctl_table pty_table[] = {
 	{}
 };
 
-static struct ctl_table pty_kern_table[] = {
-	{
-		.procname	= "pty",
-		.mode		= 0555,
-		.child		= pty_table,
-	},
-	{}
-};
-
-static struct ctl_table pty_root_table[] = {
-	{
-		.procname	= "kernel",
-		.mode		= 0555,
-		.child		= pty_kern_table,
-	},
-	{}
-};
-
 struct pts_mount_opts {
 	int setuid;
 	int setgid;
@@ -630,7 +612,7 @@ static int __init init_devpts_fs(void)
 {
 	int err = register_filesystem(&devpts_fs_type);
 	if (!err) {
-		register_sysctl_table(pty_root_table);
+		register_sysctl("kernel/pty", pty_table);
 	}
 	return err;
 }
-- 
2.39.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
