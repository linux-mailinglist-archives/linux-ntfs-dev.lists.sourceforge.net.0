Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1E9598041
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Aug 2022 10:42:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oOb73-0000BV-Dn;
	Thu, 18 Aug 2022 08:42:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ritesh.list@gmail.com>) id 1oOXiU-0000CT-Cv
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CIXPojNt+yIDbPYg2qBN1uuNsthwKBFWVWuxVjGTqgo=; b=dJCjSE4Y6CRGmDlU8XsxcLshRb
 zgmILYdUnbSdQufNUJVgHYq5CR+G6dlr3CtfV9HupZQLAIIXN8Vsja/cB4AVkxcrH1zCPNQNOc4bd
 TkR3b7WAlQg3wY7TPj54CSfrPkOlaGjADr14FqI27ERhkTCFScHZkNYr4t5MYX4hFkH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CIXPojNt+yIDbPYg2qBN1uuNsthwKBFWVWuxVjGTqgo=; b=lNcCydMV59K/6FMJCVbcoy2aom
 gSHOWLxicXqJQtmgN5WoLuYzB8EIqAJyH1l8AAEEn9stQ90Pduw94XBxSZJ244O1fEK2ayLahfD/z
 e+lNTEk4GxIhaWV2ahY6rbjDN81to1vsB6Kd9sWv3VTATa1mxl2RxHOvf7FHacyvgHrQ=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oOXiQ-007Qke-6K for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:14 +0000
Received: by mail-pl1-f176.google.com with SMTP id u22so582182plq.12
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Aug 2022 22:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=CIXPojNt+yIDbPYg2qBN1uuNsthwKBFWVWuxVjGTqgo=;
 b=TRzMhtMr+7LC87xERlKGV5G6CxzQx5xbGT9HbWz+Gnh28ZyzkvcbsRPRjazJEIfiPk
 OchvFk0j2y8dQA88uW4rT4kDzx19T1pUsNZTk0MmswMmjf+7h4D+dWq1lTTjhjcPJ5wB
 nEzMroSn59Bcyv5lVTp17tbHffMFvptE4IG9vpy2Vc5NH43IpTuAGu8UoS4ZY5OOAs4C
 52QKxhNOeeYFJ+RfiJa44rn6QxL3GzYy7YfHwhkr/vobUhRYio1ywP8+xrhQ4H1WEIlo
 Z8Sv4XRhLzksyrD29r08JtoRZkrFEjnasi7Dp4jqFmClN8/q9FN6OfT0vEs35q+EyXVq
 Tb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=CIXPojNt+yIDbPYg2qBN1uuNsthwKBFWVWuxVjGTqgo=;
 b=17d0bmY7ZOK3J2r7w50RUh2H5h6zdAKx/L0FbahS8NaWnvsvqEEq3qofFcs4I7FJ+R
 A5cukCKLdZmz7R/4qZ0L2XCBZGkNt1vgBHlO15BcLW83ReRgTdTpBfUEZ67V9L6et6MV
 +WUFvAeduUG6qDA9nrMzOPONbHshCj90/glDWGmn6f6IYUbKsldvO0UmhMj62AASkhCi
 OY9sR+e2JxM9+ktBlXQdsmAQLysRAJbcgbB1R3QJMBNZV202KHqpABkcqoAqiMqYIugz
 neB7JYmxnLmcnNHqhdSjgU/imwqljyd3Pd6ob+eDMJsEVUGqN9v7hK+V/NxVrZhR8pYF
 3KEQ==
X-Gm-Message-State: ACgBeo1IFlyxjbfz6+d4DIx0bg7WS97uOcmJlTDn1IY2BWK3r3NdJhxq
 9jV15MFqAZsNxw6no50oGtg=
X-Google-Smtp-Source: AA6agR6AL0hNqRWZBg/FFHYRTLG1VbwkZ8VSQJ/nomhHtQdOhWavTe/L/Dc9wFHjH4XDt5Vf6166vg==
X-Received: by 2002:a17:902:dac9:b0:172:af95:2db4 with SMTP id
 q9-20020a170902dac900b00172af952db4mr1414037plx.70.1660799103779; 
 Wed, 17 Aug 2022 22:05:03 -0700 (PDT)
Received: from localhost ([2406:7400:63:e947:599c:6cd1:507f:801e])
 by smtp.gmail.com with ESMTPSA id
 j8-20020a170902da8800b0016edff78844sm330530plx.277.2022.08.17.22.05.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Aug 2022 22:05:03 -0700 (PDT)
From: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
To: linux-ext4@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Thu, 18 Aug 2022 10:34:37 +0530
Message-Id: <e069c0539be0aec61abcdc6f6141982ec85d489d.1660788334.git.ritesh.list@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1660788334.git.ritesh.list@gmail.com>
References: <cover.1660788334.git.ritesh.list@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  submit_bh always returns 0. This patch cleans up 2 of it's
 caller in jbd2 to drop submit_bh's useless return value. Once all submit_bh
 callers are cleaned up, we can make it's return type as void. Reviewed-by:
 Christoph Hellwig Reviewed-by: Jan Kara Signed-off-by: Ritesh Harjani (IBM)
 --- fs/jbd2/commit.c | 10 ++++------ fs/jbd2/journal.c | 9 ++++----- 2 files
 changed, 8 insertions(+), 11 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oOXiQ-007Qke-6K
X-Mailman-Approved-At: Thu, 18 Aug 2022 08:42:46 +0000
Subject: [Linux-NTFS-Dev] [PATCHv3 1/4] jbd2: Drop useless return value of
 submit_bh
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
Cc: "Ritesh Harjani \(IBM\)" <ritesh.list@gmail.com>, Jan Kara <jack@suse.cz>,
 linux-ntfs-dev@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

submit_bh always returns 0. This patch cleans up 2 of it's caller
in jbd2 to drop submit_bh's useless return value.
Once all submit_bh callers are cleaned up, we can make it's return
type as void.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Ritesh Harjani (IBM) <ritesh.list@gmail.com>
---
 fs/jbd2/commit.c  | 10 ++++------
 fs/jbd2/journal.c |  9 ++++-----
 2 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/fs/jbd2/commit.c b/fs/jbd2/commit.c
index b2b2bc9b88d9..6b51d2dc56e2 100644
--- a/fs/jbd2/commit.c
+++ b/fs/jbd2/commit.c
@@ -122,8 +122,8 @@ static int journal_submit_commit_record(journal_t *journal,
 {
 	struct commit_header *tmp;
 	struct buffer_head *bh;
-	int ret;
 	struct timespec64 now;
+	blk_opf_t write_flags = REQ_OP_WRITE | REQ_SYNC;
 
 	*cbh = NULL;
 
@@ -155,13 +155,11 @@ static int journal_submit_commit_record(journal_t *journal,
 
 	if (journal->j_flags & JBD2_BARRIER &&
 	    !jbd2_has_feature_async_commit(journal))
-		ret = submit_bh(REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH |
-				REQ_FUA, bh);
-	else
-		ret = submit_bh(REQ_OP_WRITE | REQ_SYNC, bh);
+		write_flags |= REQ_PREFLUSH | REQ_FUA;
 
+	submit_bh(write_flags, bh);
 	*cbh = bh;
-	return ret;
+	return 0;
 }
 
 /*
diff --git a/fs/jbd2/journal.c b/fs/jbd2/journal.c
index 6350d3857c89..f669ae1ff7a2 100644
--- a/fs/jbd2/journal.c
+++ b/fs/jbd2/journal.c
@@ -1606,7 +1606,7 @@ static int jbd2_write_superblock(journal_t *journal, blk_opf_t write_flags)
 {
 	struct buffer_head *bh = journal->j_sb_buffer;
 	journal_superblock_t *sb = journal->j_superblock;
-	int ret;
+	int ret = 0;
 
 	/* Buffer got discarded which means block device got invalidated */
 	if (!buffer_mapped(bh)) {
@@ -1636,7 +1636,7 @@ static int jbd2_write_superblock(journal_t *journal, blk_opf_t write_flags)
 		sb->s_checksum = jbd2_superblock_csum(journal, sb);
 	get_bh(bh);
 	bh->b_end_io = end_buffer_write_sync;
-	ret = submit_bh(REQ_OP_WRITE | write_flags, bh);
+	submit_bh(REQ_OP_WRITE | write_flags, bh);
 	wait_on_buffer(bh);
 	if (buffer_write_io_error(bh)) {
 		clear_buffer_write_io_error(bh);
@@ -1644,9 +1644,8 @@ static int jbd2_write_superblock(journal_t *journal, blk_opf_t write_flags)
 		ret = -EIO;
 	}
 	if (ret) {
-		printk(KERN_ERR "JBD2: Error %d detected when updating "
-		       "journal superblock for %s.\n", ret,
-		       journal->j_devname);
+		printk(KERN_ERR "JBD2: I/O error when updating journal superblock for %s.\n",
+				journal->j_devname);
 		if (!is_journal_aborted(journal))
 			jbd2_journal_abort(journal, ret);
 	}
-- 
2.35.3



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
