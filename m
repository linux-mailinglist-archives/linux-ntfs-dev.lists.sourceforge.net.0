Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FC97CB455
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 16 Oct 2023 22:13:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qsTxf-0006YP-48;
	Mon, 16 Oct 2023 20:13:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qsTwO-00042J-O9
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o2OXHpu4bV7SwS3QFGapfGfV2oXZOrEccMoa02Z5eig=; b=lsXgMMh6sDqbJSq0iy3oKTagY+
 AOT92tlmYfFCQGXoR9Ll8CgC5+dDV1pRZA+a0TlgaJHRD0WfNMVabC898u7UmtdrnFnoPGAeRCI2u
 xtutg+QIvjRYndTozO6I/6KbRWEE0Eymn9EJehNekGN0iDvpEa5PhQVKhiO11nh8aZVM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o2OXHpu4bV7SwS3QFGapfGfV2oXZOrEccMoa02Z5eig=; b=FQyrxRHpMgeuQajWjKNNXacRs7
 Sqln6q/przqbBKzGyoIbeLqAzhhDqOsdSDeBOE+8HTnU+IagQQnZexBc8TistTbhac4xHF4xoBl5t
 fcbVfytXJBPgLgA/MdxwJT5kvzmP/4QJe5uCBS9hylSV5BkUaHXwaRtiNNKrYln124So=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qsTwE-00063m-1V for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 16 Oct 2023 20:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=o2OXHpu4bV7SwS3QFGapfGfV2oXZOrEccMoa02Z5eig=; b=aIdJ8DKODFcr9EKo6DuRHl8Qx/
 a7MQ5FImQVq3IzIbfzG/gHhNKXtwSp4UR3tln2o2YYFkK6B4psH3ReRFmnCr+s/ySubrqjQD/hca/
 PkqHFHJ5l+c9E5QfuI5E0E2LCMcrnkTIf++fx2UuD6Jk0DLziicnDe1xeNRIqSt+EVguEA3JNB3xz
 RdwHudSubqKp0nHXmYT45sssjSnzzwxx66wNGTr7S4fR4KZLrWMKvyRJzZZUR3p3WcwVd9r+x6Od2
 nZ33RnvVvh+pojvnhSPpOlb8Sp8GXF9MA0DP5YrzbmCXKIyfjw6P/+5ETqO4M3vjlxK4p4OyDThR+
 eOK4EM9A==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qsTvq-0085bi-Eu; Mon, 16 Oct 2023 20:11:18 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Mon, 16 Oct 2023 21:11:03 +0100
Message-Id: <20231016201114.1928083-17-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20231016201114.1928083-1-willy@infradead.org>
References: <20231016201114.1928083-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This function was already using a folio, so this update to
 the new API removes a single folio->page->folio conversion. Signed-off-by:
 Matthew Wilcox (Oracle) <willy@infradead.org> Acked-by: Ryusuke Konishi
 <konishi.ryusuke@gmail.com>
 --- fs/nilfs2/segment.c | 7 +++---- 1 file changed, 3 insertions(+),
 4 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qsTwE-00063m-1V
X-Mailman-Approved-At: Mon, 16 Oct 2023 20:12:56 +0000
Subject: [Linux-ntfs-dev] [PATCH v2 16/27] nilfs2: Convert
 nilfs_lookup_dirty_data_buffers to use folio_create_empty_buffers
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
 ntfs3@lists.linux.dev, Ryusuke Konishi <konishi.ryusuke@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This function was already using a folio, so this update to the new API
removes a single folio->page->folio conversion.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>
---
 fs/nilfs2/segment.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/fs/nilfs2/segment.c b/fs/nilfs2/segment.c
index 7ec16879756e..94388fe83cf8 100644
--- a/fs/nilfs2/segment.c
+++ b/fs/nilfs2/segment.c
@@ -731,10 +731,9 @@ static size_t nilfs_lookup_dirty_data_buffers(struct inode *inode,
 			continue;
 		}
 		head = folio_buffers(folio);
-		if (!head) {
-			create_empty_buffers(&folio->page, i_blocksize(inode), 0);
-			head = folio_buffers(folio);
-		}
+		if (!head)
+			head = folio_create_empty_buffers(folio,
+					i_blocksize(inode), 0);
 		folio_unlock(folio);
 
 		bh = head;
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
