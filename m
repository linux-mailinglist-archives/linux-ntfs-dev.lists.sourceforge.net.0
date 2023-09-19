Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D137A5B03
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 09:35:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiVGq-0007pa-PJ;
	Tue, 19 Sep 2023 07:35:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiSiP-0005yl-Mn
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9fxuIUmv0rn3plQF4/og445RxsuZjG3jMIUqfxIahw8=; b=ATA7DqPG+TLw4C3YqMH1KEq5Na
 q5tkw2/RCydDCLce/IrGUP8ceSd0GRcd+z5e349F0XBopShlUWEXOdljERt3RIqZrwPirWyiFLZMv
 RImImt7CCjRSXmXhqyVupT2PbF82P2VcmXxFyYKCPEiwjOWsTOdlZRxbP+1vy5b2pW3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9fxuIUmv0rn3plQF4/og445RxsuZjG3jMIUqfxIahw8=; b=OWsY2v/17aUanVpZcRfBsz/CcC
 RHiSurGiAsHb0G+abZmHmsgBl6GLmCC9BZumrEnwWMecb7gKCQQfXdS8xRbtmwjJdCfGWQOOnEYVx
 iPc6WUzx9diTvbgOMiTBj4gn1aCEwjqwv10FhJOR4QcMnKTuNsCqYEfLpDsGWZCE1nU8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiSiM-00E5gI-Ur for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 04:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=9fxuIUmv0rn3plQF4/og445RxsuZjG3jMIUqfxIahw8=; b=BFaYsLdAmE7gx/PdwTImssQtTC
 R3BHPO08LdZ/3NOe3UnaYNyA5T+h74fBjO/dQ3DQ2k2mvGCXpO6sCdOlRDFkW2rFPLvhGxcX1cejV
 8va1HkPghMIs3g1aqcQFF22ZBkJbCakeV2qQxnwJIXoW3E8R/v87B6ybyvhgM12J+uc2R/wOoDC60
 uwar+aEergefltYvlguaRjvNidrrTrwg6LA0c68y51IHET1tQV2kWWuc586cGqR40fCw5WeFVQyYn
 QsEm7H89GPpjrRvgk67mJJYnXcqi3vp9+B/jLtlZCgtQ0/fRK38kc7800mNwfT5ZBAlnb2Rez3fwZ
 4FzLFRJg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiSi2-00FFkJ-6R; Tue, 19 Sep 2023 04:51:38 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 19 Sep 2023 05:51:11 +0100
Message-Id: <20230919045135.3635437-3-willy@infradead.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230919045135.3635437-1-willy@infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Saves a folio->page->folio conversion. Signed-off-by: Matthew
 Wilcox (Oracle) <willy@infradead.org> --- fs/mpage.c | 3 +-- 1 file changed,
 1 insertion(+), 2 deletions(-) diff --git a/fs/mpage.c b/fs/mpage.c index
 242e213ee064..964a6efe594d 100644 --- a/fs/mpage.c +++ b/fs/mpage.c @@ -119, 8
 +119, 7 @@ static void map_buffer_to_folio(struct folio *folio,
 struct buffer_he [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1qiSiM-00E5gI-Ur
X-Mailman-Approved-At: Tue, 19 Sep 2023 07:35:39 +0000
Subject: [Linux-ntfs-dev] [PATCH 02/26] mpage: Convert map_buffer_to_folio()
 to folio_create_empty_buffers()
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

Saves a folio->page->folio conversion.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/mpage.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/mpage.c b/fs/mpage.c
index 242e213ee064..964a6efe594d 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -119,8 +119,7 @@ static void map_buffer_to_folio(struct folio *folio, struct buffer_head *bh,
 			folio_mark_uptodate(folio);
 			return;
 		}
-		create_empty_buffers(&folio->page, i_blocksize(inode), 0);
-		head = folio_buffers(folio);
+		head = folio_create_empty_buffers(folio, i_blocksize(inode), 0);
 	}
 
 	page_bh = head;
-- 
2.40.1



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
