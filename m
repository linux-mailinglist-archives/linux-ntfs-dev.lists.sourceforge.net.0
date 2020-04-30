Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E2F1C0A6A
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  1 May 2020 00:26:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jUHdi-0005Fs-JW; Thu, 30 Apr 2020 22:26:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <guoqing.jiang@cloud.ionos.com>) id 1jUHZ0-0004k9-P4
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 30 Apr 2020 22:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+HP7z6Hg8lzRP/U1gFmfA3WajvLlBxqo/6VD8xCmFbY=; b=eJgjIRzfjOmJUxlkx4PuEM6+xs
 TyVJT9LkoZtUN+WdlhdifnWEQXkeqOJdFALKt/uDXlEoT8DK5BWF1EUi45O0nUnBaWGmUX0onmzGe
 F/GG+Ay5STVeCLzc4AE19UKzD9t8Dfd5szAsnXMp/zXKjR3XlL9UKtDEJ4zYmMYWCGq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+HP7z6Hg8lzRP/U1gFmfA3WajvLlBxqo/6VD8xCmFbY=; b=YTw5LKuxNJYvHxhVrfj9kP1Bnt
 D3YbGzFh0BfUiP7SSHkMOmEjkUpf21k/f+24rdHYX0jsoO0xmYf2gT0aqwqBIsKABHmiy5zQ0+ZgI
 40DVdK/fmQXN5dLaVgh6AA9cxI1gsBbWubilywcXFWDljeDHtIJ5rjzQtCpDSVPYM1uY=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jUHYy-003o72-OI
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 30 Apr 2020 22:21:50 +0000
Received: by mail-lj1-f196.google.com with SMTP id y4so1025972ljn.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 30 Apr 2020 15:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloud.ionos.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+HP7z6Hg8lzRP/U1gFmfA3WajvLlBxqo/6VD8xCmFbY=;
 b=hWSupT2lw0h4JkwT99fJDHoFXbGY/qi6K3JHIXf5XBVKrA1IxBVU9BjwR9JRYAP5M3
 mQNvDt+6buK5JxU3IZxBmLzv2kDzBUP6Gel0wdmJlpz/KnhWIY7jFwNA+BriUUF4zQ6e
 F9cGtBvaIgbMyqxC8HVgrTcDdKGLR7mCDmD7KpHofoQk1AYm7qd5z0fb8cCn032cGOWf
 MQPJXejMcv3AkFk6a0BUHTG61C8Bn41oPqbRdS5B/l8Ck9sMF0foC2alUi4NmJaLp6Ol
 Z7ewU8Jdmv3xb8msOTEVnp/iHyk1XgmTBbyFwZCFwhT0W8lD9F5M0SbP32SSiPb2dbI7
 432g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+HP7z6Hg8lzRP/U1gFmfA3WajvLlBxqo/6VD8xCmFbY=;
 b=BnbYcTJKtCb89oMtKizlesdxpcbVjtFek7niOSGHD0ptosVj98w3aBOfSmpNjDn5EJ
 qKkWqhaoXtZcIt7VKJ+qXJ0bHTye5jUhgQ4q8NWDFdbwDOm4caYH9bTsBsoseUY9Dn72
 AiagIHiQdOV4jDRe4GwzLava5P+5bjAD3eaAdh17llpq4vkt6z8R7Fmj9prQjWOOknA3
 8oQxNZbJ4bBBI2/Zc/qAaE2+3Hq6Ag8uFjhQ2HdHW3sMfpoWvSOo3k3Ztv/R0vxQza7r
 zdkp3MvIXp3/I7wv7vV2jB3yt7Rna/kO2PGGGVXNk/TQGB0kXi9H3tBEebHXb5KL45Na
 KkYQ==
X-Gm-Message-State: AGi0PuYprug8g8SKFyBJPSWPXP0rUR6pjHIfain33uTWnMO7a+tap54w
 xszJJslk6RB/6Oqk0tcZmNJLixkJQnUAAA==
X-Google-Smtp-Source: APiQypLxnuHJHZvv+dCCIXb9HbZa2z7yfUHGFVq7rRLwlffWLOh/A1m6HRhFPDQQ2qs6EOYeAyuRQg==
X-Received: by 2002:a17:907:2155:: with SMTP id
 rk21mr517017ejb.163.1588283563771; 
 Thu, 30 Apr 2020 14:52:43 -0700 (PDT)
Received: from ls00508.pb.local ([2001:1438:4010:2540:b82f:dfc:5e2a:e7cc])
 by smtp.gmail.com with ESMTPSA id f13sm92022ejd.2.2020.04.30.14.52.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:52:43 -0700 (PDT)
From: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
To: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Thu, 30 Apr 2020 23:44:48 +0200
Message-Id: <20200430214450.10662-8-guoqing.jiang@cloud.ionos.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214450.10662-1-guoqing.jiang@cloud.ionos.com>
References: <20200430214450.10662-1-guoqing.jiang@cloud.ionos.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jUHYy-003o72-OI
X-Mailman-Approved-At: Thu, 30 Apr 2020 22:26:41 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH V2 7/9] ntfs: replace
 attach_page_buffers with attach_page_private
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
Cc: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>,
 linux-ntfs-dev@lists.sourceforge.net, david@fromorbit.com, willy@infradead.org,
 hch@infradead.org, Anton Altaparmakov <anton@tuxera.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Call the new function since attach_page_buffers will be removed.

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
---
RFC -> RFC V2
1. change the name of new function to attach_page_private.

 fs/ntfs/aops.c | 2 +-
 fs/ntfs/mft.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
index 554b744f41bf..bb0a43860ad2 100644
--- a/fs/ntfs/aops.c
+++ b/fs/ntfs/aops.c
@@ -1732,7 +1732,7 @@ void mark_ntfs_record_dirty(struct page *page, const unsigned int ofs) {
 				bh = bh->b_this_page;
 			} while (bh);
 			tail->b_this_page = head;
-			attach_page_buffers(page, head);
+			attach_page_private(page, head);
 		} else
 			buffers_to_free = bh;
 	}
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 3aac5c917afe..fbb9f1bc623d 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -504,7 +504,7 @@ int ntfs_sync_mft_mirror(ntfs_volume *vol, const unsigned long mft_no,
 			bh = bh->b_this_page;
 		} while (bh);
 		tail->b_this_page = head;
-		attach_page_buffers(page, head);
+		attach_page_private(page, head);
 	}
 	bh = head = page_buffers(page);
 	BUG_ON(!bh);
-- 
2.17.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
