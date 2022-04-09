Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CDC4FA79C
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  9 Apr 2022 14:21:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ndA5f-0001KM-ED; Sat, 09 Apr 2022 12:21:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <michalorzel.eng@gmail.com>) id 1nd8D2-0008NX-ED
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 10:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5QftsX1dgd5OMiDjNSHKc4sKfhDSWXlBSyJWmhsDORE=; b=Bp4BAjbNHuElnrWwDlqGwVdfxr
 DxYIBVOmZqrScchBpuJPm7f8jBChFtVD+m6RwUtXsJnJsCxc+8feuBYWbNr+rwxFxZ4XIOHacaDLD
 afD7wVlv06H1rEUgHzz7IZefhK2INOmd7wn1J9oUNvJPOzGfFuXS0CB79TAtE2BroqjQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5QftsX1dgd5OMiDjNSHKc4sKfhDSWXlBSyJWmhsDORE=; b=UjIbpp6bd9Qkv4UT8vy5Gum74c
 h2ELUAy47XZhS+9K9rh6iBwUvP+YFUc15oAkewBAfHWTektckHs42H96hy1P8e2MJUeUB0m1BhQOY
 3GcY+9BQc8jn729RO7wY9jHZrAoA2JPStrCIIlvjY66DxahLb/VpL1jkzclcCYZ9pFmE=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nd8D0-0003uy-5J
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 09 Apr 2022 10:20:46 +0000
Received: by mail-lj1-f176.google.com with SMTP id b43so14307481ljr.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 09 Apr 2022 03:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5QftsX1dgd5OMiDjNSHKc4sKfhDSWXlBSyJWmhsDORE=;
 b=lIcaIvVgQWhf4bm21WVG4xpWBPraOWyb1f6F59KYYAkMggzis7CkSLVbW6960O74u/
 el2jRgkdd2sXdTu7zCFrzGxuBYpP+pZ04sjx3fM5FvQHaXGdkKa8TSoJ/06Exx7rw43j
 bjAiH1puHxtVOPfC2t4JJo+1x8RS/QYeC9ZSxseviBh1fBzDdm2bg6wqAJ7RVxvFi5a4
 xsSHw8HDPTgNA3x8N+NzfCFOkgoJkByY/dzalIvn2bEvBX6iHWb7f9tAZm1yerigeM4x
 b6N3Ylh+F+y4pZuePJaBdZ/mad+RgxS2mwY7urf0ELWob8NzCy+2yhpoz6JXKw6vxfDR
 XZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5QftsX1dgd5OMiDjNSHKc4sKfhDSWXlBSyJWmhsDORE=;
 b=Nh9dZZv5k/+Z9EpBk1fITIU1UM2qAQ0ZCRruY5mPlgHezvXWWNRMjQKRzF96vslFpa
 9DLQa43M5vHI+CGlwfNXCrpOMWn/DMg8r2ti5qlWwxQ3wZrJUIrXrvWGHqtkLaK56Mfh
 G3dYqyCnqZQPbshCIzyy7WV2njWQhQ1sW7faYY+O0liNGP1Z5GsY0Mebg5/jjK3rG5bn
 Udwzzpg7t3vKP81PJT4mEn71AMX77a9mr+UlKCy7a06eam4kL6POba28Tp8KqzSJLUcy
 2kE24dE44V7RKItREQwnMQaqAoGs7smYJLrk68tiQ44d2I5Oxx5L/xSyMv2HoFlKDllj
 OUuA==
X-Gm-Message-State: AOAM53394aNEKPy84o7QoUH6agDSQ8D+B4D2X12fUYN3/s8peZTbDHSD
 vk2jTXZiOjVkLz0d7QRPmgI=
X-Google-Smtp-Source: ABdhPJwdqdeQNfPRzFlZMVy9U++8XAvooRz27TV4IDt40ZVMkyp9aNtRrPu1iD9L5v9gpgq2Z4XXOg==
X-Received: by 2002:a2e:700c:0:b0:24b:56ab:1ab8 with SMTP id
 l12-20020a2e700c000000b0024b56ab1ab8mr2089677ljc.357.1649499638896; 
 Sat, 09 Apr 2022 03:20:38 -0700 (PDT)
Received: from morzel-asus.lan (static-91-225-135-18.devs.futuro.pl.
 [91.225.135.18]) by smtp.gmail.com with ESMTPSA id
 h8-20020ac24da8000000b0046b8a03301bsm363680lfe.137.2022.04.09.03.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Apr 2022 03:20:38 -0700 (PDT)
From: Michal Orzel <michalorzel.eng@gmail.com>
To: Jens Axboe <axboe@kernel.dk>, "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
Date: Sat,  9 Apr 2022 12:19:32 +0200
Message-Id: <20220409101933.207157-2-michalorzel.eng@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220409101933.207157-1-michalorzel.eng@gmail.com>
References: <20220409101933.207157-1-michalorzel.eng@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Get rid of redundant assignments which end up in values not
 being read either because they are overwritten or the function ends. Reported
 by clang-tidy [deadcode.DeadStores] Signed-off-by: Michal Orzel ---
 block/badblocks.c
 | 2 -- block/blk-map.c | 5 ++--- block/partitions/acorn.c | 4 ++--
 block/partitions/atari.c
 | 1 - block/partitions/ldm.c | 15 +++ 5 file [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.176 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michalorzel.eng[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nd8D0-0003uy-5J
X-Mailman-Approved-At: Sat, 09 Apr 2022 12:21:14 +0000
Subject: [Linux-NTFS-Dev] [PATCH] block: Remove redundant assignments
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
Cc: linux-block@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 llvm@lists.linux.dev, Michal Orzel <michalorzel.eng@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Get rid of redundant assignments which end up in values not being
read either because they are overwritten or the function ends.

Reported by clang-tidy [deadcode.DeadStores]

Signed-off-by: Michal Orzel <michalorzel.eng@gmail.com>
---
 block/badblocks.c        |  2 --
 block/blk-map.c          |  5 ++---
 block/partitions/acorn.c |  4 ++--
 block/partitions/atari.c |  1 -
 block/partitions/ldm.c   | 15 +++------------
 5 files changed, 7 insertions(+), 20 deletions(-)

diff --git a/block/badblocks.c b/block/badblocks.c
index d39056630d9c..3afb550c0f7b 100644
--- a/block/badblocks.c
+++ b/block/badblocks.c
@@ -65,7 +65,6 @@ int badblocks_check(struct badblocks *bb, sector_t s, int sectors,
 		s >>= bb->shift;
 		target += (1<<bb->shift) - 1;
 		target >>= bb->shift;
-		sectors = target - s;
 	}
 	/* 'target' is now the first block after the bad range */
 
@@ -345,7 +344,6 @@ int badblocks_clear(struct badblocks *bb, sector_t s, int sectors)
 		s += (1<<bb->shift) - 1;
 		s >>= bb->shift;
 		target >>= bb->shift;
-		sectors = target - s;
 	}
 
 	write_seqlock_irq(&bb->lock);
diff --git a/block/blk-map.c b/block/blk-map.c
index c7f71d83eff1..fa72e63e18c2 100644
--- a/block/blk-map.c
+++ b/block/blk-map.c
@@ -260,10 +260,9 @@ static int bio_map_user_iov(struct request *rq, struct iov_iter *iter,
 
 		npages = DIV_ROUND_UP(offs + bytes, PAGE_SIZE);
 
-		if (unlikely(offs & queue_dma_alignment(rq->q))) {
-			ret = -EINVAL;
+		if (unlikely(offs & queue_dma_alignment(rq->q)))
 			j = 0;
-		} else {
+		else {
 			for (j = 0; j < npages; j++) {
 				struct page *page = pages[j];
 				unsigned int n = PAGE_SIZE - offs;
diff --git a/block/partitions/acorn.c b/block/partitions/acorn.c
index 2c381c694c57..d2fc122d7426 100644
--- a/block/partitions/acorn.c
+++ b/block/partitions/acorn.c
@@ -282,13 +282,13 @@ int adfspart_check_ADFS(struct parsed_partitions *state)
 #ifdef CONFIG_ACORN_PARTITION_RISCIX
 		case PARTITION_RISCIX_SCSI:
 		case PARTITION_RISCIX_MFM:
-			slot = riscix_partition(state, start_sect, slot,
+			riscix_partition(state, start_sect, slot,
 						nr_sects);
 			break;
 #endif
 
 		case PARTITION_LINUX:
-			slot = linux_partition(state, start_sect, slot,
+			linux_partition(state, start_sect, slot,
 					       nr_sects);
 			break;
 		}
diff --git a/block/partitions/atari.c b/block/partitions/atari.c
index da5994175416..9655c728262a 100644
--- a/block/partitions/atari.c
+++ b/block/partitions/atari.c
@@ -140,7 +140,6 @@ int atari_partition(struct parsed_partitions *state)
 				/* accept only GEM,BGM,RAW,LNX,SWP partitions */
 				if (!((pi->flg & 1) && OK_id(pi->id)))
 					continue;
-				part_fmt = 2;
 				put_partition (state, slot,
 						be32_to_cpu(pi->st),
 						be32_to_cpu(pi->siz));
diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index 27f6c7d9c776..38e58960ae03 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -736,7 +736,6 @@ static bool ldm_parse_cmp3 (const u8 *buffer, int buflen, struct vblk *vb)
 		len = r_cols;
 	} else {
 		r_stripe = 0;
-		r_cols   = 0;
 		len = r_parent;
 	}
 	if (len < 0)
@@ -783,11 +782,8 @@ static int ldm_parse_dgr3 (const u8 *buffer, int buflen, struct vblk *vb)
 		r_id1 = ldm_relative (buffer, buflen, 0x24, r_diskid);
 		r_id2 = ldm_relative (buffer, buflen, 0x24, r_id1);
 		len = r_id2;
-	} else {
-		r_id1 = 0;
-		r_id2 = 0;
+	} else
 		len = r_diskid;
-	}
 	if (len < 0)
 		return false;
 
@@ -826,11 +822,8 @@ static bool ldm_parse_dgr4 (const u8 *buffer, int buflen, struct vblk *vb)
 		r_id1 = ldm_relative (buffer, buflen, 0x44, r_name);
 		r_id2 = ldm_relative (buffer, buflen, 0x44, r_id1);
 		len = r_id2;
-	} else {
-		r_id1 = 0;
-		r_id2 = 0;
+	} else
 		len = r_name;
-	}
 	if (len < 0)
 		return false;
 
@@ -963,10 +956,8 @@ static bool ldm_parse_prt3(const u8 *buffer, int buflen, struct vblk *vb)
 			return false;
 		}
 		len = r_index;
-	} else {
-		r_index = 0;
+	} else
 		len = r_diskid;
-	}
 	if (len < 0) {
 		ldm_error("len %d < 0", len);
 		return false;
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
