Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC3236BB15
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 26 Apr 2021 23:13:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lb8XT-00008q-Oy; Mon, 26 Apr 2021 21:13:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <haoxu@linux.alibaba.com>) id 1lax3f-0005QW-6Y
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 26 Apr 2021 08:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X822xbbbfiDl5cE+lll5/mM4Yq1pgttm5ZEZWZmIDCk=; b=EYciCGbii47fNIgISFA86QK4J8
 9bLH7/7bleXmZ0mTHAb6Q7qxjzPoRWEBBDhpS5+CiCQlc7vOGM8an8c+SuQ1FjDnIIasfSDTE9a1s
 ZwKwYfmZhdOk9q/axJV++wgiEQBmaiDoDWGXve23cFTZHrfoeHq9vD6JcFYbfUlZE0d0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X822xbbbfiDl5cE+lll5/mM4Yq1pgttm5ZEZWZmIDCk=; b=EFZTwB+lCnGEDdByv3k8RKM9gd
 pw9XFBbhFHEY32gsioG9HE4hVd2uHtc5XaURvlAzVguDyKNo1bUhRjx2aSuWyzDLG0huCYeOenD28
 Hw7KnUTyKpL17nHl6ZBIMn3kdWiWyHhU4ojMXS+lN41rRCpEBT0Z4ShEi5yVFhuADNDw=;
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lax3b-00Aueb-Qe
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 26 Apr 2021 08:57:36 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R611e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395; MF=haoxu@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0UWnOySz_1619425013; 
Received: from e18g09479.et15sqa.tbsite.net(mailfrom:haoxu@linux.alibaba.com
 fp:SMTPD_---0UWnOySz_1619425013) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 26 Apr 2021 16:17:02 +0800
From: Hao Xu <haoxu@linux.alibaba.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Anton Altaparmakov <anton@tuxera.com>
Date: Mon, 26 Apr 2021 16:16:53 +0800
Message-Id: <1619425013-130530-3-git-send-email-haoxu@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1619425013-130530-1-git-send-email-haoxu@linux.alibaba.com>
References: <1619425013-130530-1-git-send-email-haoxu@linux.alibaba.com>
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lax3b-00Aueb-Qe
X-Mailman-Approved-At: Mon, 26 Apr 2021 21:13:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH 2/2] ntfs: remove redundant check
 buffer_uptodate()
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Joseph Qi <joseph.qi@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Now set_buffer_uptodate() will test first and then set, so we don't have
to check buffer_uptodate() first, remove it to simplify code.

Signed-off-by: Hao Xu <haoxu@linux.alibaba.com>
---
 fs/ntfs/file.c    | 9 +++------
 fs/ntfs/logfile.c | 3 +--
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
index e5aab265dff1..08b6bdf2cc2f 100644
--- a/fs/ntfs/file.c
+++ b/fs/ntfs/file.c
@@ -719,8 +719,7 @@ static int ntfs_prepare_pages_for_non_resident_write(struct page **pages,
 			 * error recovery.
 			 */
 			if (PageUptodate(page)) {
-				if (!buffer_uptodate(bh))
-					set_buffer_uptodate(bh);
+				set_buffer_uptodate(bh);
 				if (unlikely(was_hole)) {
 					/* We allocated the buffer. */
 					clean_bdev_bh_alias(bh);
@@ -814,8 +813,7 @@ static int ntfs_prepare_pages_for_non_resident_write(struct page **pages,
 		read_unlock_irqrestore(&ni->size_lock, flags);
 		if (bh_pos > initialized_size) {
 			if (PageUptodate(page)) {
-				if (!buffer_uptodate(bh))
-					set_buffer_uptodate(bh);
+				set_buffer_uptodate(bh);
 			} else if (!buffer_uptodate(bh)) {
 				zero_user(page, bh_offset(bh), blocksize);
 				set_buffer_uptodate(bh);
@@ -938,8 +936,7 @@ static int ntfs_prepare_pages_for_non_resident_write(struct page **pages,
 				 * debatable and this could be removed.
 				 */
 				if (PageUptodate(page)) {
-					if (!buffer_uptodate(bh))
-						set_buffer_uptodate(bh);
+					set_buffer_uptodate(bh);
 				} else if (!buffer_uptodate(bh)) {
 					zero_user(page, bh_offset(bh),
 						blocksize);
diff --git a/fs/ntfs/logfile.c b/fs/ntfs/logfile.c
index bc1bf217b38e..9695540ce581 100644
--- a/fs/ntfs/logfile.c
+++ b/fs/ntfs/logfile.c
@@ -796,8 +796,7 @@ bool ntfs_empty_logfile(struct inode *log_vi)
 			get_bh(bh);
 			/* Set the entire contents of the buffer to 0xff. */
 			memset(bh->b_data, -1, block_size);
-			if (!buffer_uptodate(bh))
-				set_buffer_uptodate(bh);
+			set_buffer_uptodate(bh);
 			if (buffer_dirty(bh))
 				clear_buffer_dirty(bh);
 			/*
-- 
1.8.3.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
