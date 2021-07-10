Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3B33C364C
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 10 Jul 2021 21:12:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m2IP7-0000Rb-Ao; Sat, 10 Jul 2021 19:12:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1m22dV-00078Y-Cf
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 10 Jul 2021 02:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zkw6U0Y6xh/YBmFJleYaxO9Y4gpi+6ZWIv3Xh/JVFqM=; b=N1KwYRZw/EmqFb6tkShaKyUyWC
 5EQnMSpaE+iPIdgfv38sUHisHtWYsLBjyM9CNCZrn05DvE7E2dXIFxamZtr7/7gpCCGJOIevgYtA1
 Kc4jtibqvAtU0VvwubUwAaVDKazIIMZn9l63/5D6s51xu5d4VTN40wKB1qgTcRl0KYOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zkw6U0Y6xh/YBmFJleYaxO9Y4gpi+6ZWIv3Xh/JVFqM=; b=KaoKKAg85bqNCXgetelfTiZsdX
 0df8e37kVyqts4RNqYePjBc6HF6VKCy16oGqZP4bRE1neOP7nPSE7vtW6FJpzD1wk2cGCLbO7uw4g
 D1ITlZvCB1KfRTpX8lDZxhFFZeE3hsh+8yU4m7otkMtCNBsBUkIWfm9ZCq0bBAQcXf8w=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m22dM-0004Rm-6l
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 10 Jul 2021 02:22:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D593613CC;
 Sat, 10 Jul 2021 02:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625883736;
 bh=NIOvFFYGolkiUWHbQp1PRNxwIQ3ks2cXnYip0cqAkgI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iNzm+lyfQeBBGh3A15D1PA/6UF0rhOq0+7oK+Ux2d5pROnBhwQDLd0bM8PBiq4LS9
 U0ELVrBqMHrK2GzL0Y2XxuAFchi93kRmfOozCzJ+2gy/xH5PU/T604WbyabI32Ur0h
 YOSIFIZXAE5FBNed+up1aSYQDdhbN4vPX7EfsnzN1af6+QEb7Eg18LCB33b92ukSW1
 XmdDtayhY15XuqE8W7jM66NC4oJSAtdN6KORMVS1Sq042PBJIOyqg9Zwt2RqZeBL5s
 w0wq3qe7waC4FLr5LpzsDEuHWeu2Vlrn/Tt6sHJZNTJkKBtCOM5wtcW7PUx/+29vDI
 HC17rgN0kTSLA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  9 Jul 2021 22:20:27 -0400
Message-Id: <20210710022156.3168825-15-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022156.3168825-1-sashal@kernel.org>
References: <20210710022156.3168825-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m22dM-0004Rm-6l
X-Mailman-Approved-At: Sat, 10 Jul 2021 19:12:43 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 5.12 015/104] partitions: msdos:
 fix one-byte get_unaligned()
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
Cc: Sasha Levin <sashal@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-block@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 1b1774998b2dec837a57d729d1a22e5eb2d6d206 ]

A simplification of get_unaligned() clashes with callers that pass
in a character pointer, causing a harmless warning like:

block/partitions/msdos.c: In function 'msdos_partition':
include/asm-generic/unaligned.h:13:22: warning: 'packed' attribute ignored for field of type 'u8' {aka 'unsigned char'} [-Wattributes]

Remove the SYS_IND() macro with the get_unaligned() call
and just use the ->ind field directly.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 block/partitions/ldm.c   |  2 +-
 block/partitions/ldm.h   |  3 ---
 block/partitions/msdos.c | 24 +++++++++++-------------
 3 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
index d333786b5c7e..cc86534c80ad 100644
--- a/block/partitions/ldm.c
+++ b/block/partitions/ldm.c
@@ -510,7 +510,7 @@ static bool ldm_validate_partition_table(struct parsed_partitions *state)
 
 	p = (struct msdos_partition *)(data + 0x01BE);
 	for (i = 0; i < 4; i++, p++)
-		if (SYS_IND (p) == LDM_PARTITION) {
+		if (p->sys_ind == LDM_PARTITION) {
 			result = true;
 			break;
 		}
diff --git a/block/partitions/ldm.h b/block/partitions/ldm.h
index d8d6beaa72c4..8693704dcf5e 100644
--- a/block/partitions/ldm.h
+++ b/block/partitions/ldm.h
@@ -84,9 +84,6 @@ struct parsed_partitions;
 #define TOC_BITMAP1		"config"	/* Names of the two defined */
 #define TOC_BITMAP2		"log"		/* bitmaps in the TOCBLOCK. */
 
-/* Borrowed from msdos.c */
-#define SYS_IND(p)		(get_unaligned(&(p)->sys_ind))
-
 struct frag {				/* VBLK Fragment handling */
 	struct list_head list;
 	u32		group;
diff --git a/block/partitions/msdos.c b/block/partitions/msdos.c
index 8f2fcc080264..c94de377c502 100644
--- a/block/partitions/msdos.c
+++ b/block/partitions/msdos.c
@@ -38,8 +38,6 @@
  */
 #include <asm/unaligned.h>
 
-#define SYS_IND(p)	get_unaligned(&p->sys_ind)
-
 static inline sector_t nr_sects(struct msdos_partition *p)
 {
 	return (sector_t)get_unaligned_le32(&p->nr_sects);
@@ -52,9 +50,9 @@ static inline sector_t start_sect(struct msdos_partition *p)
 
 static inline int is_extended_partition(struct msdos_partition *p)
 {
-	return (SYS_IND(p) == DOS_EXTENDED_PARTITION ||
-		SYS_IND(p) == WIN98_EXTENDED_PARTITION ||
-		SYS_IND(p) == LINUX_EXTENDED_PARTITION);
+	return (p->sys_ind == DOS_EXTENDED_PARTITION ||
+		p->sys_ind == WIN98_EXTENDED_PARTITION ||
+		p->sys_ind == LINUX_EXTENDED_PARTITION);
 }
 
 #define MSDOS_LABEL_MAGIC1	0x55
@@ -193,7 +191,7 @@ static void parse_extended(struct parsed_partitions *state,
 
 			put_partition(state, state->next, next, size);
 			set_info(state, state->next, disksig);
-			if (SYS_IND(p) == LINUX_RAID_PARTITION)
+			if (p->sys_ind == LINUX_RAID_PARTITION)
 				state->parts[state->next].flags = ADDPART_FLAG_RAID;
 			loopct = 0;
 			if (++state->next == state->limit)
@@ -546,7 +544,7 @@ static void parse_minix(struct parsed_partitions *state,
 	 * a secondary MBR describing its subpartitions, or
 	 * the normal boot sector. */
 	if (msdos_magic_present(data + 510) &&
-	    SYS_IND(p) == MINIX_PARTITION) { /* subpartition table present */
+	    p->sys_ind == MINIX_PARTITION) { /* subpartition table present */
 		char tmp[1 + BDEVNAME_SIZE + 10 + 9 + 1];
 
 		snprintf(tmp, sizeof(tmp), " %s%d: <minix:", state->name, origin);
@@ -555,7 +553,7 @@ static void parse_minix(struct parsed_partitions *state,
 			if (state->next == state->limit)
 				break;
 			/* add each partition in use */
-			if (SYS_IND(p) == MINIX_PARTITION)
+			if (p->sys_ind == MINIX_PARTITION)
 				put_partition(state, state->next++,
 					      start_sect(p), nr_sects(p));
 		}
@@ -643,7 +641,7 @@ int msdos_partition(struct parsed_partitions *state)
 	p = (struct msdos_partition *) (data + 0x1be);
 	for (slot = 1 ; slot <= 4 ; slot++, p++) {
 		/* If this is an EFI GPT disk, msdos should ignore it. */
-		if (SYS_IND(p) == EFI_PMBR_OSTYPE_EFI_GPT) {
+		if (p->sys_ind == EFI_PMBR_OSTYPE_EFI_GPT) {
 			put_dev_sector(sect);
 			return 0;
 		}
@@ -685,11 +683,11 @@ int msdos_partition(struct parsed_partitions *state)
 		}
 		put_partition(state, slot, start, size);
 		set_info(state, slot, disksig);
-		if (SYS_IND(p) == LINUX_RAID_PARTITION)
+		if (p->sys_ind == LINUX_RAID_PARTITION)
 			state->parts[slot].flags = ADDPART_FLAG_RAID;
-		if (SYS_IND(p) == DM6_PARTITION)
+		if (p->sys_ind == DM6_PARTITION)
 			strlcat(state->pp_buf, "[DM]", PAGE_SIZE);
-		if (SYS_IND(p) == EZD_PARTITION)
+		if (p->sys_ind == EZD_PARTITION)
 			strlcat(state->pp_buf, "[EZD]", PAGE_SIZE);
 	}
 
@@ -698,7 +696,7 @@ int msdos_partition(struct parsed_partitions *state)
 	/* second pass - output for each on a separate line */
 	p = (struct msdos_partition *) (0x1be + data);
 	for (slot = 1 ; slot <= 4 ; slot++, p++) {
-		unsigned char id = SYS_IND(p);
+		unsigned char id = p->sys_ind;
 		int n;
 
 		if (!nr_sects(p))
-- 
2.30.2



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
