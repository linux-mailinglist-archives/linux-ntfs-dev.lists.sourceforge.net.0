Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 207EE1D6E15
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 May 2020 01:34:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jaSnL-0003xV-N7; Sun, 17 May 2020 23:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <guoqing.jiang@cloud.ionos.com>) id 1jaRDB-0001lg-0L
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 17 May 2020 21:52:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+wk8eJiuJkTmafHRN2lqlXH3cKLjXM5vs5pMzq94at4=; b=VmG8g0PSLHDzKQxpW9mjMLc1lN
 MK/+M9kJPBA5KXwQ6aqxr6Gn8SU/BMmgtpJ9KlwOor9t7UuMmW6rRHtKkQSQlnFXrrXxK03z8sQNV
 KC2xZH+0gBl2w/+BUvVPfFabmd8IAfuCYuklV7dWeEqdS0OOxqGAQ+9aZzP3T4T0qQyA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+wk8eJiuJkTmafHRN2lqlXH3cKLjXM5vs5pMzq94at4=; b=fkLhMYpZBzTZ4AUArJrEsIC8FO
 3jpQxX3sAYtTdZgkXlyBXCHJevh+U9jKkaAB9OvAbcV1XK69eIqQlhZpHoIj9MuC6AeLLouVjkf+c
 0UEI1R6cq7zUDFZ851/Cj9ROMX2jPkrqtij0XGKtVH0Rs8yI/vGF0KIb6vJ0iv7Slxbg=;
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jaRD9-00ClwN-GN
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 17 May 2020 21:52:44 +0000
Received: by mail-lj1-f194.google.com with SMTP id v16so3721497ljc.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 17 May 2020 14:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloud.ionos.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+wk8eJiuJkTmafHRN2lqlXH3cKLjXM5vs5pMzq94at4=;
 b=CHwAYPWVqx2xG0WKKNwAhXYS8gSUMjSVGqRoSLl/fQTpPWjrKxjaANisJJeMKqhAqz
 7kBLq9hp1zuHV0D6OH6y6TUFPbExeVal77Y/jRJqwickCAIf5kAAS/GZa36ZehDQ9ajh
 8ueNhXfcgUtJf+0Bw2cjv3+nlHsmxR1YXF+dPBVdvI6OXPpdjgGEw7WIhkaXqpx0Tl6u
 tQUrF1G/HpS0bUwOuhbmsWw34ZqLnRg2ST3FxmbS8PyiJgd7uB80CHkG+334Uye0pH6f
 DxZuokIjWM7IGLGQrLRY2vDbgzOyCo75X8Mh23lJEwebdOPhc3Ytt8SM1mkAY1w5TXxf
 Htwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+wk8eJiuJkTmafHRN2lqlXH3cKLjXM5vs5pMzq94at4=;
 b=cz6IKyiBS+SH+0dTVWk2Ldma3cdQ2oSR1KoU8mt80fGaQ5hZk2xoMBuP8Obawm9hK0
 79G0WDgiSGlUFIRq5aNSXWYPJCV7ihIQsgO7PQszkgB2Dib6kEIwkO7GGjJtn62lEMn0
 uep1rf95bCcE6+E+wkTbsW4bA3AVG8Idaxj4wsg7ncdzxbI/+FSikQSok1rfjNRNm5/G
 Ost+k/aXjUENBizMppTVArv8yt31AuuMin4cTqzq5a7oyYhVZUdYV1pQrr8Y2NyPUbVO
 OQ3wlMnvQ8iQ9g862hx6IUavPxsARDsgRAR/W7J7Ue5r+ntgRd9Wh2RwtAHKE3tm4kpm
 hj7Q==
X-Gm-Message-State: AOAM533RvyOI1JJaBS0RLOFZ2hysK8UKd52qJTpmHsQySJZUlTkaxk1a
 7oZvBrx9EQ18zOSsY1e/BM88xK5UFRN2uw==
X-Google-Smtp-Source: ABdhPJyyj0MqyHctEZVnb5vi30vD5DWpT0PNj3+q7zNi/6gGxhYA+Upq6iCEPrNBuDtqBUzX0XJwFA==
X-Received: by 2002:adf:aacb:: with SMTP id i11mr16139970wrc.6.1589752050205; 
 Sun, 17 May 2020 14:47:30 -0700 (PDT)
Received: from ls00508.pb.local ([2001:1438:4010:2540:bc3e:92a1:7010:2763])
 by smtp.gmail.com with ESMTPSA id v126sm14441244wmb.4.2020.05.17.14.47.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 14:47:29 -0700 (PDT)
From: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
To: akpm@linux-foundation.org,
	viro@zeniv.linux.org.uk
Date: Sun, 17 May 2020 23:47:15 +0200
Message-Id: <20200517214718.468-8-guoqing.jiang@cloud.ionos.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200517214718.468-1-guoqing.jiang@cloud.ionos.com>
References: <20200517214718.468-1-guoqing.jiang@cloud.ionos.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jaRD9-00ClwN-GN
X-Mailman-Approved-At: Sun, 17 May 2020 23:34:09 +0000
Subject: [Linux-NTFS-Dev] [PATCH 07/10] ntfs: replace attach_page_buffers
 with attach_page_private
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
 linux-ntfs-dev@lists.sourceforge.net, david@fromorbit.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, hch@infradead.org,
 linux-fsdevel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Call the new function since attach_page_buffers will be removed.

Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: linux-ntfs-dev@lists.sourceforge.net
Signed-off-by: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
---
No change since RFC V2.

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
