Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 830886B940A
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 14 Mar 2023 13:40:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pc3x9-0001PU-7E;
	Tue, 14 Mar 2023 12:40:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1paluX-0001XD-PL
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vwgcdlyuo+GJ5jvlI6ItnonZwvRm0XCG4SGb6jgIIUk=; b=kq5lVr9j/yD9ot338nBRyFGFf+
 Nq3Y2c6633Z6//wMDonOU70MUEYmRsV2EdwbPNH0gs1K7kdKQXqOvSBoksECoMRwNi6JwRw//jXLG
 qcAQWjDo/fzmo+7/u1dWK3WcsSSamBK8SGrZGF5snkBXdzFjvnlvt361SdVX18sKVUd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vwgcdlyuo+GJ5jvlI6ItnonZwvRm0XCG4SGb6jgIIUk=; b=mUQswget/2yvhQBnlkK+KbRMLo
 /KLyQg0TrFNUf0LcbSw6A/6o3WEWwLxZ/4io45zbQVlpvBFI7SJ1qEq2aHt3cXrgElvsKEy8PQEfM
 BsFaxpDoivJmxscghnPv/crwznFW0lXwO8vVG8aTQnXiNSwCt8DhB8oa7if6rDx8S9D8=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paluX-0043w5-0W for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 10 Mar 2023 23:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=vwgcdlyuo+GJ5jvlI6ItnonZwvRm0XCG4SGb6jgIIUk=; b=dMTygatsLoA/2mFiksWRScl55F
 vdQLDay0b6L3bB/x+/odyMiMicp6eud00Iajv04D2ddWCyvWiafl9OIo5tou8FIOsvyLu16ZBB50x
 swGL2v8tqMw0P8jJEYy3/QzIRKcd88WHrFDx0Hv1gO8EwjgzhCItc5tQj3tyBcAWXcibMN7A1fcgA
 SMwQlmrB5SHEVnl6ReEcNznTdZurq/VPVJdZc9Pr6iaGLKObUHughlIWS1F9ChW5GGv5RfBNQ8vom
 VXqAaYigO9jd4r/iE6KHoTCdsFfRQOb4LmAAkwcxo/oeY0KwFQxHUMFl+uFQq94ITAjN2zgaZNmLM
 IvKM80xQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paluB-00GaJL-AJ; Fri, 10 Mar 2023 23:12:07 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: dhowells@redhat.com, linux-cachefs@redhat.com, jack@suse.com,
 jaharkes@cs.cmu.edu, coda@cs.cmu.edu, codalist@coda.cs.cmu.edu,
 anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net
Date: Fri, 10 Mar 2023 15:12:05 -0800
Message-Id: <20230310231206.3952808-5-mcgrof@kernel.org>
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
 --- fs/coda/sysctl.c | 11 + 1 file changed, 1 insertion(+), 10 deletions(-)
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1paluX-0043w5-0W
X-Mailman-Approved-At: Tue, 14 Mar 2023 12:40:31 +0000
Subject: [Linux-ntfs-dev] [PATCH 4/5] coda: simplify one-level sysctl
 registration for coda_table
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
 fs/coda/sysctl.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/fs/coda/sysctl.c b/fs/coda/sysctl.c
index fda3b702b1c5..a247c14aaab7 100644
--- a/fs/coda/sysctl.c
+++ b/fs/coda/sysctl.c
@@ -39,19 +39,10 @@ static struct ctl_table coda_table[] = {
 	{}
 };
 
-static struct ctl_table fs_table[] = {
-	{
-		.procname	= "coda",
-		.mode		= 0555,
-		.child		= coda_table
-	},
-	{}
-};
-
 void coda_sysctl_init(void)
 {
 	if ( !fs_table_header )
-		fs_table_header = register_sysctl_table(fs_table);
+		fs_table_header = register_sysctl("coda", coda_table);
 }
 
 void coda_sysctl_clean(void)
-- 
2.39.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
