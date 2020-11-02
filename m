Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5350F2AA0FA
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  7 Nov 2020 00:26:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kbB7P-0008Ln-Qh; Fri, 06 Nov 2020 23:26:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <foxhlchen@gmail.com>) id 1kZVo2-0004f4-7d
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 02 Nov 2020 09:07:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0fK+egPCE2bgxCgA1reHpJyulDAd/xhtfW4LIbSxorA=; b=bOwT6j9LSQhVZbJMYoYr6IX/4S
 hHEjpLsG5KOqPhNLXlD73QysZjZCkNb+M0V0JJvndNM7FT+ZOut6D4Ae3QvHh5yCjfoKTdKOlZCxd
 5a/dkP6juP4zmWzdXxeEC+0CObT+eFumcs1XkKhnJQIbDhCAtHYAfezchfKaQzZmRSH4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0fK+egPCE2bgxCgA1reHpJyulDAd/xhtfW4LIbSxorA=; b=e
 zVUc5qOdYc8KIw2CLNjHjiak0oWh2TZ6Vw9xdAMoUgdPoQXhj2t2OXoZXaUmdbRws9qtnRfUtiIk2
 +KxdGQwM28BWSsnQELRvJO8Ph5/uuV3BVzcY9AVHrH9vblVFv48ZBqb2koZy+ruV6Nhzu+eK+3tAs
 87xh6cue6r7B8zXY=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kZVnx-006ARx-AP
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 02 Nov 2020 09:07:14 +0000
Received: by mail-pg1-f196.google.com with SMTP id z24so10249720pgk.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 02 Nov 2020 01:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0fK+egPCE2bgxCgA1reHpJyulDAd/xhtfW4LIbSxorA=;
 b=cqCvIDmA2H0jS30X5BW3VvHglrlsvQezrFZkIhDUcsNfpIYQ08RdHlj08xPyHGJMaY
 avkafUAhe+UMyuiSNhEHpV+lPIEHo3Ol0DgG9OZLxvpJCo71s4SkFTHXxiLzm9NSuR9K
 yLmcRVHFlZOq/+IqsloyZFmrJ9Hd+bAx4/lPg47G5ntTmS2Q8XEwMBtXlWyeMe9qW61q
 hvdAGf9cXKtI9RDRjUQixvVEtlqEp9jwJBu9/3VCX7C+D+SmXWmVryM9xupwbOQSh8x4
 76mqdLIHg36RSn16vM+fOBfdWxK5aDrEvaqilZahBJXlZOhTx19nAFFzPebWlWaCQpbm
 LZzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0fK+egPCE2bgxCgA1reHpJyulDAd/xhtfW4LIbSxorA=;
 b=c4/q0a3QXv35SBDDV5oazeFaLz/9roSaGw8NVvvx/7zr09gJ2ppaE5X7c1D617vMzm
 1Lro5qf7FKSda/4qezsRZHyt6NyuOJb/FhGLut+d+bUcCtzC8vgG4RkllTP4a5CKmTQN
 Q//Y+bTByw4Bc5dsTVe3pOsvu6d/GU6mhUNP7LegrFJQbzzgZku/izaxPa0ipRkg35oD
 YHXJIPXBZ3T+U8fsjqTYEejxqtA8djsikSm69ty085Ct1NLmZdtIiQ5sCNPa6c9CumKw
 mpBk32TGWfNC8plpZodxAEf1Axq7sK74LXiZPLS4YyiOy4CP7yh3zGqya2mPR71yF0J9
 /sEQ==
X-Gm-Message-State: AOAM533DZx60Qmu6RvNbpevYodYnOz1f62aCv6Ojsvf0xtt6DLhTnDok
 955D1d9j+r09o/ApiN9ZR1s=
X-Google-Smtp-Source: ABdhPJzgBaHinhVOYGJsjQUOly32tiCeKhHK4US6tPoktuTJiLtjm/A66vwPVlQFsptYRdqSVhXOBQ==
X-Received: by 2002:a63:3202:: with SMTP id y2mr12202643pgy.97.1604308023787; 
 Mon, 02 Nov 2020 01:07:03 -0800 (PST)
Received: from localhost.localdomain (cl-ubuntu-kdev.xen.prgmr.com.
 [71.19.148.84])
 by smtp.gmail.com with ESMTPSA id n11sm2083605pjv.52.2020.11.02.01.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 01:07:02 -0800 (PST)
From: Fox Chen <foxhlchen@gmail.com>
To: anton@tuxera.com
Date: Mon,  2 Nov 2020 17:06:49 +0800
Message-Id: <20201102090649.140696-1-foxhlchen@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (foxhlchen[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kZVnx-006ARx-AP
X-Mailman-Approved-At: Fri, 06 Nov 2020 23:26:05 +0000
Subject: [Linux-NTFS-Dev] [PATCH] NTFS: Add name sanity check to
 ntfs_attr_find
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
Cc: linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 syzbot+ecbcf37464c627253e44@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Fox Chen <foxhlchen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

When mounting, if Attribute data is correupted, doing named attribute
lookup can lead to invalid memory access. This is reported by syzkaller.

This patch adds a sanity check prior to attribute name lookup. If attribute's
name_offset is invalid, It will mark volume error and return -EIO.

Reported-by: syzbot+ecbcf37464c627253e44@syzkaller.appspotmail.com
Signed-off-by: Fox Chen <foxhlchen@gmail.com>
---
 fs/ntfs/attrib.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index d563abc3e136..e7366f74ff62 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -607,6 +607,16 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 		 * If @name is present, compare the two names.  If @name is
 		 * missing, assume we want an unnamed attribute.
 		 */
+
+		/*
+		 * Sanity check, a->name_offset should be within the range of a->lengh,
+		 */
+		if (name && ((u8*)a + le16_to_cpu(a->name_offset)) > ((u8*)a + le32_to_cpu(a->length))) {
+			ntfs_error(vol->sb, "Invalid Attribute Name. Inode is corrupt.  Run chkdsk.");
+			NVolSetErrors(vol);
+			return -EIO;
+		}
+
 		if (!name) {
 			/* The search failed if the found attribute is named. */
 			if (a->name_length)
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
