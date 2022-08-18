Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCAD598042
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 18 Aug 2022 10:42:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oOb75-0000CO-5e;
	Thu, 18 Aug 2022 08:42:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ritesh.list@gmail.com>) id 1oOXii-0004a8-6n
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7o9q6zRE/LnQajbGEZFofVIBdR8mGxbes8De4o3wgBI=; b=GvSXIGU06kGTvG4hUhnCAY7r1T
 /2IVSg0PD96WibBFTfe+0ZXHzHf0Ne1MHSU+ZWsSorHnq1L2qoPJWrrkieHdLMNkMKh1BM4SocFeG
 RTQad6u5FBD45fQwif/AZy5vZYk/ivN4FIXhplRPGRxgcjutl95jrkbeqxWYbMquRCeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7o9q6zRE/LnQajbGEZFofVIBdR8mGxbes8De4o3wgBI=; b=XbtklXuyMIJSNks1RqLtuz6OI6
 1AIMfjpIWdq/tcs4+PS1olG4BxWkVQ8Pr2oXBtBteMOdNOtCLb25CoJY4EgSjyvfmvj0oCbrcttOU
 RE+qibuNEXzYDeKEmVG9LC95seBVEuvDpeOxXfFblOgIOoUfWPcr/u/OwvSJCASNTkoo=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oOXie-007QlX-Qn for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 18 Aug 2022 05:05:28 +0000
Received: by mail-pj1-f43.google.com with SMTP id
 s4-20020a17090a5d0400b001fabc6bb0baso1954137pji.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 17 Aug 2022 22:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=7o9q6zRE/LnQajbGEZFofVIBdR8mGxbes8De4o3wgBI=;
 b=lTSZFbH1W3gB1hd+vKpaQ4maRyY+LejWXlwd8H4J5CGwKw8gYcZMMrVXDDIAM6R42K
 HVugf2myQsympLMaiRGNSFJx2pj77DEPcrMKzjwO+0ZoMcVddx0C/RyNW2MSAiF4EM2O
 rF6dcc1iWppY9YZosFq/E/bNI0sDOeaTKnk7Ih5QhIwkjWWIzKgPp6XDXR2S1ajSl5iZ
 iUfCitWt9NyHUvD5qLVTjDp8kg8/6PGSH1B6ZtNK2z2lWUc8CyKES6uH+tNTfXsYJGsl
 gJev7Z/45P7Of2cRD8FjFTYu72lHzesHE8I42VEnUqFKkxDe6KZcuRfzIzmpun1Pn9JV
 l/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=7o9q6zRE/LnQajbGEZFofVIBdR8mGxbes8De4o3wgBI=;
 b=mjFOxDLKF3fP4d0f4YUEAlAK6IzLiiu1+3wThXleGP1+wOzwaQsBDKafACGpQq0zQv
 KatWFaHeDrcghjOs/mQ56QOxQPSOC5sM17qRQnJQDOKp1q+DGKB4bifPXXCGTe0Conf7
 TWO7c8HOloyraGR2M5BQ03jJVfI9JdQUyT0/Q9/DIvDb2kK0BCAxeGFSrQ+XcA67DJtO
 +4HI3yiu3TvFpuNJbbjVIEvO+nd5VSwF2+vuUa4nBwCd2MWIk2eLCAqP93bXhNLoMTOR
 bLhY4f0CLpQ7qyctdMgJsr4zw8VOyqCigACXHjLnNM8jfbDTfKRN2Tqf1fGgqpQsmaoi
 jZTQ==
X-Gm-Message-State: ACgBeo1r/reZ+X9jdfTLe/jnPC1esMGtzeXVXLJok5oW6jkg/hFccp/C
 Q0CpbSFQD+97B9Z20vzfb4M=
X-Google-Smtp-Source: AA6agR7zRkfBlCwk+TxT4r9iiOceSAqhD0U8vSEdSqityZUqM089DSmox1f0QHE5lfMVykKYq9sWWQ==
X-Received: by 2002:a17:902:ea0d:b0:170:cabd:b28 with SMTP id
 s13-20020a170902ea0d00b00170cabd0b28mr1146909plg.115.1660799119348; 
 Wed, 17 Aug 2022 22:05:19 -0700 (PDT)
Received: from localhost ([2406:7400:63:e947:599c:6cd1:507f:801e])
 by smtp.gmail.com with ESMTPSA id
 h17-20020a170902f55100b0016e808dbe55sm350841plf.96.2022.08.17.22.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Aug 2022 22:05:18 -0700 (PDT)
From: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
To: linux-ext4@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Thu, 18 Aug 2022 10:34:40 +0530
Message-Id: <cb66ef823374cdd94d2d03083ce13de844fffd41.1660788334.git.ritesh.list@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1660788334.git.ritesh.list@gmail.com>
References: <cover.1660788334.git.ritesh.list@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: submit_bh/submit_bh_wbc are non-blocking functions which just
 submit the bio and return. The caller of submit_bh/submit_bh_wbc needs to
 wait on buffer till I/O completion and then check buffer head's [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oOXie-007QlX-Qn
X-Mailman-Approved-At: Thu, 18 Aug 2022 08:42:46 +0000
Subject: [Linux-NTFS-Dev] [PATCHv3 4/4] fs/buffer: Make submit_bh &
 submit_bh_wbc return type as void
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

submit_bh/submit_bh_wbc are non-blocking functions which just submit
the bio and return. The caller of submit_bh/submit_bh_wbc needs to wait
on buffer till I/O completion and then check buffer head's b_state field
to know if there was any I/O error.

Hence there is no need for these functions to have any return type.
Even now they always returns 0. Hence drop the return value and make
their return type as void to avoid any confusion.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Ritesh Harjani (IBM) <ritesh.list@gmail.com>
---
 fs/buffer.c                 | 13 ++++++-------
 include/linux/buffer_head.h |  2 +-
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index c21b72c06eb0..0a7ba84c1905 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -52,8 +52,8 @@
 #include "internal.h"
 
 static int fsync_buffers_list(spinlock_t *lock, struct list_head *list);
-static int submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
-			 struct writeback_control *wbc);
+static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
+			  struct writeback_control *wbc);
 
 #define BH_ENTRY(list) list_entry((list), struct buffer_head, b_assoc_buffers)
 
@@ -2673,8 +2673,8 @@ static void end_bio_bh_io_sync(struct bio *bio)
 	bio_put(bio);
 }
 
-static int submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
-			 struct writeback_control *wbc)
+static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
+			  struct writeback_control *wbc)
 {
 	const enum req_op op = opf & REQ_OP_MASK;
 	struct bio *bio;
@@ -2717,12 +2717,11 @@ static int submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
 	}
 
 	submit_bio(bio);
-	return 0;
 }
 
-int submit_bh(blk_opf_t opf, struct buffer_head *bh)
+void submit_bh(blk_opf_t opf, struct buffer_head *bh)
 {
-	return submit_bh_wbc(opf, bh, NULL);
+	submit_bh_wbc(opf, bh, NULL);
 }
 EXPORT_SYMBOL(submit_bh);
 
diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
index def8b8d30ccc..b1373844c43d 100644
--- a/include/linux/buffer_head.h
+++ b/include/linux/buffer_head.h
@@ -229,7 +229,7 @@ void ll_rw_block(blk_opf_t, int, struct buffer_head * bh[]);
 int sync_dirty_buffer(struct buffer_head *bh);
 int __sync_dirty_buffer(struct buffer_head *bh, blk_opf_t op_flags);
 void write_dirty_buffer(struct buffer_head *bh, blk_opf_t op_flags);
-int submit_bh(blk_opf_t, struct buffer_head *);
+void submit_bh(blk_opf_t, struct buffer_head *);
 void write_boundary_block(struct block_device *bdev,
 			sector_t bblock, unsigned blocksize);
 int bh_uptodate_or_lock(struct buffer_head *bh);
-- 
2.35.3



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
