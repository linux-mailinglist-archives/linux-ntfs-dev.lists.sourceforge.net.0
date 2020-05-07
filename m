Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E171C9E45
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  8 May 2020 00:09:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jWohq-0000TH-P3; Thu, 07 May 2020 22:09:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <guoqing.jiang@cloud.ionos.com>) id 1jWoQ7-00088G-OL
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 07 May 2020 21:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MKELhdYWYdAhzUDf2017C+zkiBNUO+dgi+kWgqsMaQo=; b=eLvGOQjh2xJ/3WLbNAgpxNaeb0
 B9TwnuIcoQebJWU5kadcEzhLRF6Aj4aF7sK7qzKGsSC4JFmpCOxqniNWg3lm37bDiDGAMQvbhaC+W
 6M1I1TqEa2m2n142yIzidO/xidKB/02ja0oHhdpfV/Dvw5XTObQwEPakC5gMZO4nZ7Mg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MKELhdYWYdAhzUDf2017C+zkiBNUO+dgi+kWgqsMaQo=; b=F27DtCZ9v95ZIqetz/IMsVYq9A
 kOEfhnSiuWKNSNeu8ZynoTHdek1sElG7wFSBWJEg/3er6GVbAB2grIK1KCKDez+ncr2mWWoaNNRiv
 eb1CYWxj0b768bghZ7fvS4mnGcvF7Yf5PZpHskQN51F1QtIzgZy5YDks8cGwgItVdaNg=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jWoQ6-000p2A-04
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 07 May 2020 21:51:07 +0000
Received: by mail-ed1-f67.google.com with SMTP id r16so6764199edw.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 07 May 2020 14:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloud.ionos.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MKELhdYWYdAhzUDf2017C+zkiBNUO+dgi+kWgqsMaQo=;
 b=Js03/NCa0TzF0VfdeXIzvkro8wybq6NjNQGCqPdKQimeJrwvTYtam+cSE0RRwMUm3v
 UKO22AXxUWq/amzRnIRIwO0Z5TTODWjNj+FTzFVyBu30xNOBzSAfGNyNMKkLB+Armh8i
 nvTYb6dHmiGx9DTByyKmOD/rNqQhoVbdn/2HvmK0gC/pAmGrkxCsvIYzi4qm0lTF/Dof
 bOzxMb3YXJQhTb0g/oiCNAhJ7f03rlHoxMG7flnajSrFCu0UUpFwCNuCbH6q4YTGwB58
 tjjHhZ0vmnw9ocarUaxvdVGuTgV9Gh2fHuamzzNAgyG4ZfzqwxeVh4dcPrvW+ZQdPafm
 8E6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MKELhdYWYdAhzUDf2017C+zkiBNUO+dgi+kWgqsMaQo=;
 b=exaep+aVItso5BayGHgZpvtEmYWPZYY6sb2cabh7ByLpqvxPeNmk7mKgpNe+Mmg5n4
 U51ZIRl/Zd/Wld+ZNrGqmfNocNzTgrBI0CJqLSThysYR38gik5zAEy9a+V60rh/9GLGr
 ZSOz85A4PH36C2zF8r4hbhsdkKYdP0HDcIQIAsvW56B57+QGh36oDgM2SzzfevWqINnH
 vHyRuRmY3S9rwWdcpAijfaGgzTS/IzT48OiTfMZiOf386yOfRVDd2/zW/hXnU2g/tH8C
 gTrRNaILtoiqgkpNes1TuxHV7i9DouR7xX/DdcMlFikzVD5sTgul7U39cvFNuDJsGhAq
 4aFg==
X-Gm-Message-State: AGi0Puai2tyNH2iLU3MKgKYkQTFxEUHPrMyiSILnnvx2cLrHthzqTNzv
 9gbSCmxA0utzjWYi3m0BJRpHeN4G1imaZQ==
X-Google-Smtp-Source: APiQypJzdpl8spMfNAAlzzO6AXeNQL/Cqjj7WRO6qZUO8sBaGbOHi6SshrS0cNwvt3L9wQtnEzsBJw==
X-Received: by 2002:a17:906:6990:: with SMTP id
 i16mr13653114ejr.175.1588887864765; 
 Thu, 07 May 2020 14:44:24 -0700 (PDT)
Received: from ls00508.pb.local ([2001:1438:4010:2540:a1ee:a39a:b93a:c084])
 by smtp.gmail.com with ESMTPSA id k3sm613530edi.60.2020.05.07.14.44.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:44:23 -0700 (PDT)
From: Guoqing Jiang <guoqing.jiang@cloud.ionos.com>
To: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Date: Thu,  7 May 2020 23:43:57 +0200
Message-Id: <20200507214400.15785-8-guoqing.jiang@cloud.ionos.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507214400.15785-1-guoqing.jiang@cloud.ionos.com>
References: <20200507214400.15785-1-guoqing.jiang@cloud.ionos.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWoQ6-000p2A-04
X-Mailman-Approved-At: Thu, 07 May 2020 22:09:25 +0000
Subject: [Linux-NTFS-Dev] [RFC PATCH V3 07/10] ntfs: replace
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
RFC V2 -> RFC V3: no change

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
