Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E997A5B07
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGt-0007rK-7X;
	Tue, 19 Sep 2023 07:35:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiR-0000Rk-On
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N6ovGOYS7j9q8wOyOWu2B5Uq08RUxsjTVDWIGzX0CMc=; b=X+P75gLMBrnBPO5WWNDNpYRwTz
 U6jUb6tH8sIs4TyM5gp521igsOE8BcEVZjnYXU7oP9c9hjvAwEQEv58X2OD07FFCGS8hTmn97MhXx
 6enNdepGHLaoemWpVMIla0jX+QK+nGxhI6ZQls6tjknoaO1hHnmbKnXV64C8kt3auy5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N6ovGOYS7j9q8wOyOWu2B5Uq08RUxsjTVDWIGzX0CMc=; b=DAa0z72zO3mBmfN+GsIzgsdqFb
 jOZd0eikKh9R6FN5N8W5lujSERthlUmwKyRTBPv9+TJVA/ffrUKR4Uo8rMoGg7BGv9+gZXsZBI61h
 f5eScWyvCt+eM+1LXK6CxnWwiRGFhk+R+zqCDa9BuUl43ieprGIN3Aq7/RV7op0f2EZc=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiN-00084K-Nb for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=N6ovGOYS7j9q8wOyOWu2B5Uq08RUxsjTVDWIGzX0CMc=; b=gSD3y3/0A4Cql8OnDXKyDsG0Fv
 9uPTYM++ZTTpjlvVSbjwWQXbSealfQoNsXpNk2+yC1nPtlDm2XYBVpaA8ICYBxXivHGctfLVMCF/S
 H6CDp5UXLG6U9JliMb4c7sUyywozbLxXn3gdN7RlpWMgYuYvfWoka3oJzZKC9nzW4NvUylmkovvEK
 gpggozbu5Ll4n5Mq7yQkrMVUXxrEnf2CCIY/+JT/CeSHmWaBsaCYS9SG/KwfCMwEVYfosVeKkbnbY
 opkub3P2d6AHdTtVu1T+4I5q42urpgatsRyE9F/eCAGFUAE4t6ifmEG7dtjhZ4NOGLG+Lz22GVv29
 2qKJiJwA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi3-00FFlG-VI; Tue, 19 Sep 2023 04:51:40 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:23 +0100
Message-Id: <20230919045135.3635437-15-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: All users have now been converted to get_nth_block().
 Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> --- fs/nilfs2/page.h | 6 ------
 1 file changed, 6 deletions(-) diff --git a/fs/nilfs2/page.h b/fs/nilfs2/page.h
 index 344d71942d36..d249ea1cefff 100644 --- a/fs/nilfs2/page.h +++
 b/fs/nilfs2/page.h
 @@ -52,10 +52,4 @@ unsigned long nilfs_find_uncommitted_extent(st [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qiSiN-00084K-Nb
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:40 +0000
Subject: [Linux-ntfs-dev] [PATCH 14/26] nilfs2: Remove
 nilfs_page_get_nth_block
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

All users have now been converted to get_nth_block().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/nilfs2/page.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/fs/nilfs2/page.h b/fs/nilfs2/page.h
index 344d71942d36..d249ea1cefff 100644
--- a/fs/nilfs2/page.h
+++ b/fs/nilfs2/page.h
@@ -52,10 +52,4 @@ unsigned long nilfs_find_uncommitted_extent(struct inode *inode,
 #define NILFS_PAGE_BUG(page, m, a...) \
 	do { nilfs_page_bug(page); BUG(); } while (0)
 
-static inline struct buffer_head *
-nilfs_page_get_nth_block(struct page *page, unsigned int count)
-{
-	return get_nth_bh(page_buffers(page), count);
-}
-
 #endif /* _NILFS_PAGE_H */
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
