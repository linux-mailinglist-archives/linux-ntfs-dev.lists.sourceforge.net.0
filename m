Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3C031A744
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 12 Feb 2021 23:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CWOjnd3APXm1v4NJ9eIKQUtIfXk52NJfvEr/lznAUOo=; b=EaGrp2h+0Dj9mGTRPNYsCZw40
	jYyRjYY96+wfoFyBojJZxUthDvUlDwnK0Y+HiXe6AtLQGDBe2J/V5XK9Hz/CoGBdydQwapJSpOhCF
	Xex8dMAyU6JpW/dpPiU9msY2+zFth5rwL5LTFVUIFyUO4eITNVDE2CpnKXMhFr+t7yYMo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lAgWL-0005KL-Qn; Fri, 12 Feb 2021 22:02:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1lAbFT-0002Nt-BH
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 12 Feb 2021 16:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1i9rGPuvk5FcyUhsGCQXAx++/DYcfC6nLheRShFaw9E=; b=mMgKEoE/Vup71m4LymR7+AA9Y7
 xNAGU8OObZCqy9S6E6e2Py+rB8xqLHkEk7/g79UBZblU538w6VnulHgrr9+i/NuA7l7cbVc0/LrPi
 aJbxQUG6Su6ISgQkXwvsf3nO7VTW8acexnIDB7ixdGSKUTNPctPL0Uls6YFVgP6wa3bM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1i9rGPuvk5FcyUhsGCQXAx++/DYcfC6nLheRShFaw9E=; b=JTjd7jpagDMjqM7093PwTM3+qq
 4VfWG3S7Pe4feVV02ni2CjNSb+lrnX5KZuwwuvBuVzqS8xSC7GfTdEWsXT604hGhhpox9dQK2rvjG
 vXQ2fhPHgiK08blDM3LY+sIXefUUqexF4KcAcCJvhbRRv2T2GxRS0yW3SdVvhyK6eypU=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lAbFD-006S5A-Sy
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 12 Feb 2021 16:24:51 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 0198982298;
 Fri, 12 Feb 2021 19:24:24 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1613147064;
 bh=1i9rGPuvk5FcyUhsGCQXAx++/DYcfC6nLheRShFaw9E=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PZvZ5TdljXveZIBxW+oHmTWUpFINdULKdEsyeaiUvtRBEWRb6X5z8cwC5zBnjCQ0m
 QFU3FNd//nJKf1GGUmIZvqOYxPd8LHFzxpSoAsCLx/sbhyBLXSlEDuvTVAb6gSDBc1
 P1n3QhpIh4KoaMoipS6vwuJ35HykaFobk5eFeWH4=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 12 Feb 2021 19:24:22 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 12 Feb 2021 19:24:08 +0300
Message-ID: <20210212162416.2756937-3-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210212162416.2756937-1-almaz.alexandrovich@paragon-software.com>
References: <20210212162416.2756937-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lAbFD-006S5A-Sy
X-Mailman-Approved-At: Fri, 12 Feb 2021 22:02:33 +0000
Subject: [Linux-NTFS-Dev] [PATCH v21 02/10] fs/ntfs3: Add initialization of
 super block
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
From: Konstantin Komarov via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, linux-ntfs-dev@lists.sourceforge.net, hch@lst.de,
 viro@zeniv.linux.org.uk, joe@perches.com, dan.carpenter@oracle.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This adds initialization of super block

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 fs/ntfs3/fsntfs.c | 2535 +++++++++++++++++++++++++++++++++++++++++++
 fs/ntfs3/index.c  | 2646 +++++++++++++++++++++++++++++++++++++++++++++
 fs/ntfs3/inode.c  | 2058 +++++++++++++++++++++++++++++++++++
 fs/ntfs3/super.c  | 1502 +++++++++++++++++++++++++
 4 files changed, 8741 insertions(+)
 create mode 100644 fs/ntfs3/fsntfs.c
 create mode 100644 fs/ntfs3/index.c
 create mode 100644 fs/ntfs3/inode.c
 create mode 100644 fs/ntfs3/super.c

diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c
new file mode 100644
index 000000000000..ecf3aaad755e
--- /dev/null
+++ b/fs/ntfs3/fsntfs.c
@@ -0,0 +1,2535 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ */
+
+#include <linux/blkdev.h>
+#include <linux/buffer_head.h>
+#include <linux/fs.h>
+#include <linux/nls.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+
+// clang-format off
+const struct cpu_str NAME_MFT = {
+	4, 0, { '$', 'M', 'F', 'T' },
+};
+const struct cpu_str NAME_MIRROR = {
+	8, 0, { '$', 'M', 'F', 'T', 'M', 'i', 'r', 'r' },
+};
+const struct cpu_str NAME_LOGFILE = {
+	8, 0, { '$', 'L', 'o', 'g', 'F', 'i', 'l', 'e' },
+};
+const struct cpu_str NAME_VOLUME = {
+	7, 0, { '$', 'V', 'o', 'l', 'u', 'm', 'e' },
+};
+const struct cpu_str NAME_ATTRDEF = {
+	8, 0, { '$', 'A', 't', 't', 'r', 'D', 'e', 'f' },
+};
+const struct cpu_str NAME_ROOT = {
+	1, 0, { '.' },
+};
+const struct cpu_str NAME_BITMAP = {
+	7, 0, { '$', 'B', 'i', 't', 'm', 'a', 'p' },
+};
+const struct cpu_str NAME_BOOT = {
+	5, 0, { '$', 'B', 'o', 'o', 't' },
+};
+const struct cpu_str NAME_BADCLUS = {
+	8, 0, { '$', 'B', 'a', 'd', 'C', 'l', 'u', 's' },
+};
+const struct cpu_str NAME_QUOTA = {
+	6, 0, { '$', 'Q', 'u', 'o', 't', 'a' },
+};
+const struct cpu_str NAME_SECURE = {
+	7, 0, { '$', 'S', 'e', 'c', 'u', 'r', 'e' },
+};
+const struct cpu_str NAME_UPCASE = {
+	7, 0, { '$', 'U', 'p', 'C', 'a', 's', 'e' },
+};
+const struct cpu_str NAME_EXTEND = {
+	7, 0, { '$', 'E', 'x', 't', 'e', 'n', 'd' },
+};
+const struct cpu_str NAME_OBJID = {
+	6, 0, { '$', 'O', 'b', 'j', 'I', 'd' },
+};
+const struct cpu_str NAME_REPARSE = {
+	8, 0, { '$', 'R', 'e', 'p', 'a', 'r', 's', 'e' },
+};
+const struct cpu_str NAME_USNJRNL = {
+	8, 0, { '$', 'U', 's', 'n', 'J', 'r', 'n', 'l' },
+};
+const __le16 BAD_NAME[4] = {
+	cpu_to_le16('$'), cpu_to_le16('B'), cpu_to_le16('a'), cpu_to_le16('d'),
+};
+const __le16 I30_NAME[4] = {
+	cpu_to_le16('$'), cpu_to_le16('I'), cpu_to_le16('3'), cpu_to_le16('0'),
+};
+const __le16 SII_NAME[4] = {
+	cpu_to_le16('$'), cpu_to_le16('S'), cpu_to_le16('I'), cpu_to_le16('I'),
+};
+const __le16 SDH_NAME[4] = {
+	cpu_to_le16('$'), cpu_to_le16('S'), cpu_to_le16('D'), cpu_to_le16('H'),
+};
+const __le16 SDS_NAME[4] = {
+	cpu_to_le16('$'), cpu_to_le16('S'), cpu_to_le16('D'), cpu_to_le16('S'),
+};
+const __le16 SO_NAME[2] = {
+	cpu_to_le16('$'), cpu_to_le16('O'),
+};
+const __le16 SQ_NAME[2] = {
+	cpu_to_le16('$'), cpu_to_le16('Q'),
+};
+const __le16 SR_NAME[2] = {
+	cpu_to_le16('$'), cpu_to_le16('R'),
+};
+
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+const __le16 WOF_NAME[17] = {
+	cpu_to_le16('W'), cpu_to_le16('o'), cpu_to_le16('f'), cpu_to_le16('C'),
+	cpu_to_le16('o'), cpu_to_le16('m'), cpu_to_le16('p'), cpu_to_le16('r'),
+	cpu_to_le16('e'), cpu_to_le16('s'), cpu_to_le16('s'), cpu_to_le16('e'),
+	cpu_to_le16('d'), cpu_to_le16('D'), cpu_to_le16('a'), cpu_to_le16('t'),
+	cpu_to_le16('a'),
+};
+#endif
+
+// clang-format on
+
+/*
+ * ntfs_fix_pre_write
+ *
+ * inserts fixups into 'rhdr' before writing to disk
+ */
+bool ntfs_fix_pre_write(struct NTFS_RECORD_HEADER *rhdr, size_t bytes)
+{
+	u16 *fixup, *ptr;
+	u16 sample;
+	u16 fo = le16_to_cpu(rhdr->fix_off);
+	u16 fn = le16_to_cpu(rhdr->fix_num);
+
+	if ((fo & 1) || fo + fn * sizeof(short) > SECTOR_SIZE || !fn-- ||
+	    fn * SECTOR_SIZE > bytes) {
+		return false;
+	}
+
+	/* Get fixup pointer */
+	fixup = Add2Ptr(rhdr, fo);
+
+	if (*fixup >= 0x7FFF)
+		*fixup = 1;
+	else
+		*fixup += 1;
+
+	sample = *fixup;
+
+	ptr = Add2Ptr(rhdr, SECTOR_SIZE - sizeof(short));
+
+	while (fn--) {
+		*++fixup = *ptr;
+		*ptr = sample;
+		ptr += SECTOR_SIZE / sizeof(short);
+	}
+	return true;
+}
+
+/*
+ * ntfs_fix_post_read
+ *
+ * remove fixups after reading from disk
+ * Returns < 0 if error, 0 if ok, 1 if need to update fixups
+ */
+int ntfs_fix_post_read(struct NTFS_RECORD_HEADER *rhdr, size_t bytes,
+		       bool simple)
+{
+	int ret;
+	u16 *fixup, *ptr;
+	u16 sample, fo, fn;
+
+	fo = le16_to_cpu(rhdr->fix_off);
+	fn = simple ? ((bytes >> SECTOR_SHIFT) + 1) :
+		      le16_to_cpu(rhdr->fix_num);
+
+	/* Check errors */
+	if ((fo & 1) || fo + fn * sizeof(short) > SECTOR_SIZE || !fn-- ||
+	    fn * SECTOR_SIZE > bytes) {
+		return -EINVAL; /* native chkntfs returns ok! */
+	}
+
+	/* Get fixup pointer */
+	fixup = Add2Ptr(rhdr, fo);
+	sample = *fixup;
+	ptr = Add2Ptr(rhdr, SECTOR_SIZE - sizeof(short));
+	ret = 0;
+
+	while (fn--) {
+		/* Test current word */
+		if (*ptr != sample) {
+			/* Fixup does not match! Is it serious error? */
+			ret = -E_NTFS_FIXUP;
+		}
+
+		/* Replace fixup */
+		*ptr = *++fixup;
+		ptr += SECTOR_SIZE / sizeof(short);
+	}
+
+	return ret;
+}
+
+/*
+ * ntfs_extend_init
+ *
+ * loads $Extend file
+ */
+int ntfs_extend_init(struct ntfs_sb_info *sbi)
+{
+	int err;
+	struct super_block *sb = sbi->sb;
+	struct inode *inode, *inode2;
+	struct MFT_REF ref;
+
+	if (sbi->volume.major_ver < 3) {
+		ntfs_notice(sb, "Skip $Extend 'cause NTFS version");
+		return 0;
+	}
+
+	ref.low = cpu_to_le32(MFT_REC_EXTEND);
+	ref.high = 0;
+	ref.seq = cpu_to_le16(MFT_REC_EXTEND);
+	inode = ntfs_iget5(sb, &ref, &NAME_EXTEND);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $Extend.");
+		inode = NULL;
+		goto out;
+	}
+
+	/* if ntfs_iget5 reads from disk it never returns bad inode */
+	if (!S_ISDIR(inode->i_mode)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Try to find $ObjId */
+	inode2 = dir_search_u(inode, &NAME_OBJID, NULL);
+	if (inode2 && !IS_ERR(inode2)) {
+		if (is_bad_inode(inode2)) {
+			iput(inode2);
+		} else {
+			sbi->objid.ni = ntfs_i(inode2);
+			sbi->objid_no = inode2->i_ino;
+		}
+	}
+
+	/* Try to find $Quota */
+	inode2 = dir_search_u(inode, &NAME_QUOTA, NULL);
+	if (inode2 && !IS_ERR(inode2)) {
+		sbi->quota_no = inode2->i_ino;
+		iput(inode2);
+	}
+
+	/* Try to find $Reparse */
+	inode2 = dir_search_u(inode, &NAME_REPARSE, NULL);
+	if (inode2 && !IS_ERR(inode2)) {
+		sbi->reparse.ni = ntfs_i(inode2);
+		sbi->reparse_no = inode2->i_ino;
+	}
+
+	/* Try to find $UsnJrnl */
+	inode2 = dir_search_u(inode, &NAME_USNJRNL, NULL);
+	if (inode2 && !IS_ERR(inode2)) {
+		sbi->usn_jrnl_no = inode2->i_ino;
+		iput(inode2);
+	}
+
+	err = 0;
+out:
+	iput(inode);
+	return err;
+}
+
+int ntfs_loadlog_and_replay(struct ntfs_inode *ni, struct ntfs_sb_info *sbi)
+{
+	int err = 0;
+	struct super_block *sb = sbi->sb;
+	struct inode *inode = &ni->vfs_inode;
+	struct MFT_REF ref;
+
+	/* Check for 4GB */
+	if (inode->i_size >= 0x100000000ull) {
+		ntfs_err(sb, "$LogFile is too big");
+		err = -EINVAL;
+		goto out;
+	}
+
+	sbi->flags |= NTFS_FLAGS_LOG_REPLAYING;
+
+	ref.low = cpu_to_le32(MFT_REC_MFT);
+	ref.high = 0;
+	ref.seq = cpu_to_le16(1);
+
+	inode = ntfs_iget5(sb, &ref, NULL);
+
+	if (IS_ERR(inode))
+		inode = NULL;
+
+	if (!inode) {
+		/* Try to use mft copy */
+		u64 t64 = sbi->mft.lbo;
+
+		sbi->mft.lbo = sbi->mft.lbo2;
+		inode = ntfs_iget5(sb, &ref, NULL);
+		sbi->mft.lbo = t64;
+		if (IS_ERR(inode))
+			inode = NULL;
+	}
+
+	if (!inode) {
+		err = -EINVAL;
+		ntfs_err(sb, "Failed to load $MFT.");
+		goto out;
+	}
+
+	sbi->mft.ni = ntfs_i(inode);
+
+	err = ni_load_all_mi(sbi->mft.ni);
+	if (!err)
+		err = log_replay(ni);
+
+	iput(inode);
+	sbi->mft.ni = NULL;
+
+	sync_blockdev(sb->s_bdev);
+	invalidate_bdev(sb->s_bdev);
+
+	if (sbi->flags & NTFS_FLAGS_NEED_REPLAY) {
+		err = 0;
+		goto out;
+	}
+
+	if (sb_rdonly(sb))
+		goto out;
+
+	err = ntfs_bio_fill_1(sbi, &ni->file.run);
+
+out:
+	sbi->flags &= ~NTFS_FLAGS_LOG_REPLAYING;
+
+	return err;
+}
+
+/*
+ * ntfs_query_def
+ *
+ * returns current ATTR_DEF_ENTRY for given attribute type
+ */
+const struct ATTR_DEF_ENTRY *ntfs_query_def(struct ntfs_sb_info *sbi,
+					    enum ATTR_TYPE type)
+{
+	int type_in = le32_to_cpu(type);
+	size_t min_idx = 0;
+	size_t max_idx = sbi->def_entries - 1;
+
+	while (min_idx <= max_idx) {
+		size_t i = min_idx + ((max_idx - min_idx) >> 1);
+		const struct ATTR_DEF_ENTRY *entry = sbi->def_table + i;
+		int diff = le32_to_cpu(entry->type) - type_in;
+
+		if (!diff)
+			return entry;
+		if (diff < 0)
+			min_idx = i + 1;
+		else if (i)
+			max_idx = i - 1;
+		else
+			return NULL;
+	}
+	return NULL;
+}
+
+/*
+ * ntfs_look_for_free_space
+ *
+ * looks for a free space in bitmap
+ */
+int ntfs_look_for_free_space(struct ntfs_sb_info *sbi, CLST lcn, CLST len,
+			     CLST *new_lcn, CLST *new_len,
+			     enum ALLOCATE_OPT opt)
+{
+	int err;
+	struct super_block *sb = sbi->sb;
+	size_t a_lcn, zlen, zeroes, zlcn, zlen2, ztrim, new_zlen;
+	struct wnd_bitmap *wnd = &sbi->used.bitmap;
+
+	down_write_nested(&wnd->rw_lock, BITMAP_MUTEX_CLUSTERS);
+	if (opt & ALLOCATE_MFT) {
+		CLST alen;
+
+		zlen = wnd_zone_len(wnd);
+
+		if (!zlen) {
+			err = ntfs_refresh_zone(sbi);
+			if (err)
+				goto out;
+
+			zlen = wnd_zone_len(wnd);
+
+			if (!zlen) {
+				ntfs_err(sbi->sb,
+					 "no free space to extend mft");
+				err = -ENOSPC;
+				goto out;
+			}
+		}
+
+		lcn = wnd_zone_bit(wnd);
+		alen = zlen > len ? len : zlen;
+
+		wnd_zone_set(wnd, lcn + alen, zlen - alen);
+
+		err = wnd_set_used(wnd, lcn, alen);
+		if (err)
+			goto out;
+
+		*new_lcn = lcn;
+		*new_len = alen;
+		goto ok;
+	}
+
+	/*
+	 * 'Cause cluster 0 is always used this value means that we should use
+	 * cached value of 'next_free_lcn' to improve performance
+	 */
+	if (!lcn)
+		lcn = sbi->used.next_free_lcn;
+
+	if (lcn >= wnd->nbits)
+		lcn = 0;
+
+	*new_len = wnd_find(wnd, len, lcn, BITMAP_FIND_MARK_AS_USED, &a_lcn);
+	if (*new_len) {
+		*new_lcn = a_lcn;
+		goto ok;
+	}
+
+	/* Try to use clusters from MftZone */
+	zlen = wnd_zone_len(wnd);
+	zeroes = wnd_zeroes(wnd);
+
+	/* Check too big request */
+	if (len > zeroes + zlen)
+		goto no_space;
+
+	if (zlen <= NTFS_MIN_MFT_ZONE)
+		goto no_space;
+
+	/* How many clusters to cat from zone */
+	zlcn = wnd_zone_bit(wnd);
+	zlen2 = zlen >> 1;
+	ztrim = len > zlen ? zlen : (len > zlen2 ? len : zlen2);
+	new_zlen = zlen - ztrim;
+
+	if (new_zlen < NTFS_MIN_MFT_ZONE) {
+		new_zlen = NTFS_MIN_MFT_ZONE;
+		if (new_zlen > zlen)
+			new_zlen = zlen;
+	}
+
+	wnd_zone_set(wnd, zlcn, new_zlen);
+
+	/* allocate continues clusters */
+	*new_len =
+		wnd_find(wnd, len, 0,
+			 BITMAP_FIND_MARK_AS_USED | BITMAP_FIND_FULL, &a_lcn);
+	if (*new_len) {
+		*new_lcn = a_lcn;
+		goto ok;
+	}
+
+no_space:
+	up_write(&wnd->rw_lock);
+
+	return -ENOSPC;
+
+ok:
+	err = 0;
+
+	ntfs_unmap_meta(sb, *new_lcn, *new_len);
+
+	if (opt & ALLOCATE_MFT)
+		goto out;
+
+	/* Set hint for next requests */
+	sbi->used.next_free_lcn = *new_lcn + *new_len;
+
+out:
+	up_write(&wnd->rw_lock);
+	return err;
+}
+
+/*
+ * ntfs_extend_mft
+ *
+ * allocates additional MFT records
+ * sbi->mft.bitmap is locked for write
+ *
+ * NOTE: recursive:
+ *	ntfs_look_free_mft ->
+ *	ntfs_extend_mft ->
+ *	attr_set_size ->
+ *	ni_insert_nonresident ->
+ *	ni_insert_attr ->
+ *	ni_ins_attr_ext ->
+ *	ntfs_look_free_mft ->
+ *	ntfs_extend_mft
+ * To avoid recursive always allocate space for two new mft records
+ * see attrib.c: "at least two mft to avoid recursive loop"
+ */
+static int ntfs_extend_mft(struct ntfs_sb_info *sbi)
+{
+	int err;
+	struct ntfs_inode *ni = sbi->mft.ni;
+	size_t new_mft_total;
+	u64 new_mft_bytes, new_bitmap_bytes;
+	struct ATTRIB *attr;
+	struct wnd_bitmap *wnd = &sbi->mft.bitmap;
+
+	new_mft_total = (wnd->nbits + MFT_INCREASE_CHUNK + 127) & (CLST)~127;
+	new_mft_bytes = (u64)new_mft_total << sbi->record_bits;
+
+	/* Step 1: Resize $MFT::DATA */
+	down_write(&ni->file.run_lock);
+	err = attr_set_size(ni, ATTR_DATA, NULL, 0, &ni->file.run,
+			    new_mft_bytes, NULL, false, &attr);
+
+	if (err) {
+		up_write(&ni->file.run_lock);
+		goto out;
+	}
+
+	attr->nres.valid_size = attr->nres.data_size;
+	new_mft_total = le64_to_cpu(attr->nres.alloc_size) >> sbi->record_bits;
+	ni->mi.dirty = true;
+
+	/* Step 2: Resize $MFT::BITMAP */
+	new_bitmap_bytes = bitmap_size(new_mft_total);
+
+	err = attr_set_size(ni, ATTR_BITMAP, NULL, 0, &sbi->mft.bitmap.run,
+			    new_bitmap_bytes, &new_bitmap_bytes, true, NULL);
+
+	/* Refresh Mft Zone if necessary */
+	down_write_nested(&sbi->used.bitmap.rw_lock, BITMAP_MUTEX_CLUSTERS);
+
+	ntfs_refresh_zone(sbi);
+
+	up_write(&sbi->used.bitmap.rw_lock);
+	up_write(&ni->file.run_lock);
+
+	if (err)
+		goto out;
+
+	err = wnd_extend(wnd, new_mft_total);
+
+	if (err)
+		goto out;
+
+	ntfs_clear_mft_tail(sbi, sbi->mft.used, new_mft_total);
+
+	err = _ni_write_inode(&ni->vfs_inode, 0);
+out:
+	return err;
+}
+
+/*
+ * ntfs_look_free_mft
+ *
+ * looks for a free MFT record
+ */
+int ntfs_look_free_mft(struct ntfs_sb_info *sbi, CLST *rno, bool mft,
+		       struct ntfs_inode *ni, struct mft_inode **mi)
+{
+	int err = 0;
+	size_t zbit, zlen, from, to, fr;
+	size_t mft_total;
+	struct MFT_REF ref;
+	struct super_block *sb = sbi->sb;
+	struct wnd_bitmap *wnd = &sbi->mft.bitmap;
+	u32 ir;
+
+	static_assert(sizeof(sbi->mft.reserved_bitmap) * 8 >=
+		      MFT_REC_FREE - MFT_REC_RESERVED);
+
+	if (!mft)
+		down_write_nested(&wnd->rw_lock, BITMAP_MUTEX_MFT);
+
+	zlen = wnd_zone_len(wnd);
+
+	/* Always reserve space for MFT */
+	if (zlen) {
+		if (mft) {
+			zbit = wnd_zone_bit(wnd);
+			*rno = zbit;
+			wnd_zone_set(wnd, zbit + 1, zlen - 1);
+		}
+		goto found;
+	}
+
+	/* No MFT zone. find the nearest to '0' free MFT */
+	if (!wnd_find(wnd, 1, MFT_REC_FREE, 0, &zbit)) {
+		/* Resize MFT */
+		mft_total = wnd->nbits;
+
+		err = ntfs_extend_mft(sbi);
+		if (!err) {
+			zbit = mft_total;
+			goto reserve_mft;
+		}
+
+		if (!mft || MFT_REC_FREE == sbi->mft.next_reserved)
+			goto out;
+
+		err = 0;
+
+		/*
+		 * Look for free record reserved area [11-16) ==
+		 * [MFT_REC_RESERVED, MFT_REC_FREE ) MFT bitmap always
+		 * marks it as used
+		 */
+		if (!sbi->mft.reserved_bitmap) {
+			/* Once per session create internal bitmap for 5 bits */
+			sbi->mft.reserved_bitmap = 0xFF;
+
+			ref.high = 0;
+			for (ir = MFT_REC_RESERVED; ir < MFT_REC_FREE; ir++) {
+				struct inode *i;
+				struct ntfs_inode *ni;
+				struct MFT_REC *mrec;
+
+				ref.low = cpu_to_le32(ir);
+				ref.seq = cpu_to_le16(ir);
+
+				i = ntfs_iget5(sb, &ref, NULL);
+				if (IS_ERR(i)) {
+next:
+					ntfs_notice(
+						sb,
+						"Invalid reserved record %x",
+						ref.low);
+					continue;
+				}
+				if (is_bad_inode(i)) {
+					iput(i);
+					goto next;
+				}
+
+				ni = ntfs_i(i);
+
+				mrec = ni->mi.mrec;
+
+				if (!is_rec_base(mrec))
+					goto next;
+
+				if (mrec->hard_links)
+					goto next;
+
+				if (!ni_std(ni))
+					goto next;
+
+				if (ni_find_attr(ni, NULL, NULL, ATTR_NAME,
+						 NULL, 0, NULL, NULL))
+					goto next;
+
+				__clear_bit(ir - MFT_REC_RESERVED,
+					    &sbi->mft.reserved_bitmap);
+			}
+		}
+
+		/* Scan 5 bits for zero. Bit 0 == MFT_REC_RESERVED */
+		zbit = find_next_zero_bit(&sbi->mft.reserved_bitmap,
+					  MFT_REC_FREE, MFT_REC_RESERVED);
+		if (zbit >= MFT_REC_FREE) {
+			sbi->mft.next_reserved = MFT_REC_FREE;
+			goto out;
+		}
+
+		zlen = 1;
+		sbi->mft.next_reserved = zbit;
+	} else {
+reserve_mft:
+		zlen = zbit == MFT_REC_FREE ? (MFT_REC_USER - MFT_REC_FREE) : 4;
+		if (zbit + zlen > wnd->nbits)
+			zlen = wnd->nbits - zbit;
+
+		while (zlen > 1 && !wnd_is_free(wnd, zbit, zlen))
+			zlen -= 1;
+
+		/* [zbit, zbit + zlen) will be used for Mft itself */
+		from = sbi->mft.used;
+		if (from < zbit)
+			from = zbit;
+		to = zbit + zlen;
+		if (from < to) {
+			ntfs_clear_mft_tail(sbi, from, to);
+			sbi->mft.used = to;
+		}
+	}
+
+	if (mft) {
+		*rno = zbit;
+		zbit += 1;
+		zlen -= 1;
+	}
+
+	wnd_zone_set(wnd, zbit, zlen);
+
+found:
+	if (!mft) {
+		/* The request to get record for general purpose */
+		if (sbi->mft.next_free < MFT_REC_USER)
+			sbi->mft.next_free = MFT_REC_USER;
+
+		for (;;) {
+			if (sbi->mft.next_free >= sbi->mft.bitmap.nbits) {
+			} else if (!wnd_find(wnd, 1, MFT_REC_USER, 0, &fr)) {
+				sbi->mft.next_free = sbi->mft.bitmap.nbits;
+			} else {
+				*rno = fr;
+				sbi->mft.next_free = *rno + 1;
+				break;
+			}
+
+			err = ntfs_extend_mft(sbi);
+			if (err)
+				goto out;
+		}
+	}
+
+	if (ni && !ni_add_subrecord(ni, *rno, mi)) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	/* We have found a record that are not reserved for next MFT */
+	if (*rno >= MFT_REC_FREE)
+		wnd_set_used(wnd, *rno, 1);
+	else if (*rno >= MFT_REC_RESERVED && sbi->mft.reserved_bitmap_inited)
+		__set_bit(*rno - MFT_REC_RESERVED, &sbi->mft.reserved_bitmap);
+
+out:
+	if (!mft)
+		up_write(&wnd->rw_lock);
+
+	return err;
+}
+
+/*
+ * ntfs_mark_rec_free
+ *
+ * marks record as free
+ */
+void ntfs_mark_rec_free(struct ntfs_sb_info *sbi, CLST rno)
+{
+	struct wnd_bitmap *wnd = &sbi->mft.bitmap;
+
+	down_write_nested(&wnd->rw_lock, BITMAP_MUTEX_MFT);
+	if (rno >= wnd->nbits)
+		goto out;
+
+	if (rno >= MFT_REC_FREE) {
+		if (!wnd_is_used(wnd, rno, 1))
+			ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+		else
+			wnd_set_free(wnd, rno, 1);
+	} else if (rno >= MFT_REC_RESERVED && sbi->mft.reserved_bitmap_inited) {
+		__clear_bit(rno - MFT_REC_RESERVED, &sbi->mft.reserved_bitmap);
+	}
+
+	if (rno < wnd_zone_bit(wnd))
+		wnd_zone_set(wnd, rno, 1);
+	else if (rno < sbi->mft.next_free && rno >= MFT_REC_USER)
+		sbi->mft.next_free = rno;
+
+out:
+	up_write(&wnd->rw_lock);
+}
+
+/*
+ * ntfs_clear_mft_tail
+ *
+ * formats empty records [from, to)
+ * sbi->mft.bitmap is locked for write
+ */
+int ntfs_clear_mft_tail(struct ntfs_sb_info *sbi, size_t from, size_t to)
+{
+	int err;
+	u32 rs;
+	u64 vbo;
+	struct runs_tree *run;
+	struct ntfs_inode *ni;
+
+	if (from >= to)
+		return 0;
+
+	rs = sbi->record_size;
+	ni = sbi->mft.ni;
+	run = &ni->file.run;
+
+	down_read(&ni->file.run_lock);
+	vbo = (u64)from * rs;
+	for (; from < to; from++, vbo += rs) {
+		struct ntfs_buffers nb;
+
+		err = ntfs_get_bh(sbi, run, vbo, rs, &nb);
+		if (err)
+			goto out;
+
+		err = ntfs_write_bh(sbi, &sbi->new_rec->rhdr, &nb, 0);
+		nb_put(&nb);
+		if (err)
+			goto out;
+	}
+
+out:
+	sbi->mft.used = from;
+	up_read(&ni->file.run_lock);
+	return err;
+}
+
+/*
+ * ntfs_refresh_zone
+ *
+ * refreshes Mft zone
+ * sbi->used.bitmap is locked for rw
+ * sbi->mft.bitmap is locked for write
+ * sbi->mft.ni->file.run_lock for write
+ */
+int ntfs_refresh_zone(struct ntfs_sb_info *sbi)
+{
+	CLST zone_limit, zone_max, lcn, vcn, len;
+	size_t lcn_s, zlen;
+	struct wnd_bitmap *wnd = &sbi->used.bitmap;
+	struct ntfs_inode *ni = sbi->mft.ni;
+
+	/* Do not change anything unless we have non empty Mft zone */
+	if (wnd_zone_len(wnd))
+		return 0;
+
+	/*
+	 * Compute the mft zone at two steps
+	 * It would be nice if we are able to allocate
+	 * 1/8 of total clusters for MFT but not more then 512 MB
+	 */
+	zone_limit = (512 * 1024 * 1024) >> sbi->cluster_bits;
+	zone_max = wnd->nbits >> 3;
+	if (zone_max > zone_limit)
+		zone_max = zone_limit;
+
+	vcn = bytes_to_cluster(sbi,
+			       (u64)sbi->mft.bitmap.nbits << sbi->record_bits);
+
+	if (!run_lookup_entry(&ni->file.run, vcn - 1, &lcn, &len, NULL))
+		lcn = SPARSE_LCN;
+
+	/* We should always find Last Lcn for MFT */
+	if (lcn == SPARSE_LCN)
+		return -EINVAL;
+
+	lcn_s = lcn + 1;
+
+	/* Try to allocate clusters after last MFT run */
+	zlen = wnd_find(wnd, zone_max, lcn_s, 0, &lcn_s);
+	if (!zlen) {
+		ntfs_notice(sbi->sb, "MftZone: unavailable");
+		return 0;
+	}
+
+	/* Truncate too large zone */
+	wnd_zone_set(wnd, lcn_s, zlen);
+
+	return 0;
+}
+
+/*
+ * ntfs_update_mftmirr
+ *
+ * updates $MFTMirr data
+ */
+int ntfs_update_mftmirr(struct ntfs_sb_info *sbi, int wait)
+{
+	int err;
+	struct super_block *sb = sbi->sb;
+	u32 blocksize = sb->s_blocksize;
+	sector_t block1, block2;
+	u32 bytes;
+
+	if (!(sbi->flags & NTFS_FLAGS_MFTMIRR))
+		return 0;
+
+	err = 0;
+	bytes = sbi->mft.recs_mirr << sbi->record_bits;
+	block1 = sbi->mft.lbo >> sb->s_blocksize_bits;
+	block2 = sbi->mft.lbo2 >> sb->s_blocksize_bits;
+
+	for (; bytes >= blocksize; bytes -= blocksize) {
+		struct buffer_head *bh1, *bh2;
+
+		bh1 = sb_bread(sb, block1++);
+		if (!bh1) {
+			err = -EIO;
+			goto out;
+		}
+
+		bh2 = sb_getblk(sb, block2++);
+		if (!bh2) {
+			put_bh(bh1);
+			err = -EIO;
+			goto out;
+		}
+
+		if (buffer_locked(bh2))
+			__wait_on_buffer(bh2);
+
+		lock_buffer(bh2);
+		memcpy(bh2->b_data, bh1->b_data, blocksize);
+		set_buffer_uptodate(bh2);
+		mark_buffer_dirty(bh2);
+		unlock_buffer(bh2);
+
+		put_bh(bh1);
+		bh1 = NULL;
+
+		if (wait)
+			err = sync_dirty_buffer(bh2);
+
+		put_bh(bh2);
+		if (err)
+			goto out;
+	}
+
+	sbi->flags &= ~NTFS_FLAGS_MFTMIRR;
+
+out:
+	return err;
+}
+
+/*
+ * ntfs_set_state
+ *
+ * mount: ntfs_set_state(NTFS_DIRTY_DIRTY)
+ * umount: ntfs_set_state(NTFS_DIRTY_CLEAR)
+ * ntfs error: ntfs_set_state(NTFS_DIRTY_ERROR)
+ */
+int ntfs_set_state(struct ntfs_sb_info *sbi, enum NTFS_DIRTY_FLAGS dirty)
+{
+	int err;
+	struct ATTRIB *attr;
+	struct VOLUME_INFO *info;
+	struct mft_inode *mi;
+	struct ntfs_inode *ni;
+
+	/*
+	 * do not change state if fs was real_dirty
+	 * do not change state if fs already dirty(clear)
+	 * do not change any thing if mounted read only
+	 */
+	if (sbi->volume.real_dirty || sb_rdonly(sbi->sb))
+		return 0;
+
+	/* Check cached value */
+	if ((dirty == NTFS_DIRTY_CLEAR ? 0 : VOLUME_FLAG_DIRTY) ==
+	    (sbi->volume.flags & VOLUME_FLAG_DIRTY))
+		return 0;
+
+	ni = sbi->volume.ni;
+	if (!ni)
+		return -EINVAL;
+
+	mutex_lock_nested(&ni->ni_lock, NTFS_INODE_MUTEX_DIRTY);
+
+	attr = ni_find_attr(ni, NULL, NULL, ATTR_VOL_INFO, NULL, 0, NULL, &mi);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	info = resident_data_ex(attr, SIZEOF_ATTRIBUTE_VOLUME_INFO);
+	if (!info) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	switch (dirty) {
+	case NTFS_DIRTY_ERROR:
+		ntfs_notice(sbi->sb, "Mark volume as dirty due to NTFS errors");
+		sbi->volume.real_dirty = true;
+		fallthrough;
+	case NTFS_DIRTY_DIRTY:
+		info->flags |= VOLUME_FLAG_DIRTY;
+		break;
+	case NTFS_DIRTY_CLEAR:
+		info->flags &= ~VOLUME_FLAG_DIRTY;
+		break;
+	}
+	/* cache current volume flags*/
+	sbi->volume.flags = info->flags;
+	mi->dirty = true;
+	err = 0;
+
+out:
+	ni_unlock(ni);
+	if (err)
+		return err;
+
+	mark_inode_dirty(&ni->vfs_inode);
+	/*verify(!ntfs_update_mftmirr()); */
+	err = sync_inode_metadata(&ni->vfs_inode, 1);
+
+	return err;
+}
+
+/*
+ * security_hash
+ *
+ * calculates a hash of security descriptor
+ */
+static inline __le32 security_hash(const void *sd, size_t bytes)
+{
+	u32 hash = 0;
+	const __le32 *ptr = sd;
+
+	bytes >>= 2;
+	while (bytes--)
+		hash = ((hash >> 0x1D) | (hash << 3)) + le32_to_cpu(*ptr++);
+	return cpu_to_le32(hash);
+}
+
+int ntfs_sb_read(struct super_block *sb, u64 lbo, size_t bytes, void *buffer)
+{
+	struct block_device *bdev = sb->s_bdev;
+	u32 blocksize = sb->s_blocksize;
+	u64 block = lbo >> sb->s_blocksize_bits;
+	u32 off = lbo & (blocksize - 1);
+	u32 op = blocksize - off;
+
+	for (; bytes; block += 1, off = 0, op = blocksize) {
+		struct buffer_head *bh = __bread(bdev, block, blocksize);
+
+		if (!bh)
+			return -EIO;
+
+		if (op > bytes)
+			op = bytes;
+
+		memcpy(buffer, bh->b_data + off, op);
+
+		put_bh(bh);
+
+		bytes -= op;
+		buffer = Add2Ptr(buffer, op);
+	}
+
+	return 0;
+}
+
+int ntfs_sb_write(struct super_block *sb, u64 lbo, size_t bytes,
+		  const void *buf, int wait)
+{
+	u32 blocksize = sb->s_blocksize;
+	struct block_device *bdev = sb->s_bdev;
+	sector_t block = lbo >> sb->s_blocksize_bits;
+	u32 off = lbo & (blocksize - 1);
+	u32 op = blocksize - off;
+	struct buffer_head *bh;
+
+	if (!wait && (sb->s_flags & SB_SYNCHRONOUS))
+		wait = 1;
+
+	for (; bytes; block += 1, off = 0, op = blocksize) {
+		if (op > bytes)
+			op = bytes;
+
+		if (op < blocksize) {
+			bh = __bread(bdev, block, blocksize);
+			if (!bh) {
+				ntfs_err(sb, "failed to read block %llx",
+					 (u64)block);
+				return -EIO;
+			}
+		} else {
+			bh = __getblk(bdev, block, blocksize);
+			if (!bh)
+				return -ENOMEM;
+		}
+
+		if (buffer_locked(bh))
+			__wait_on_buffer(bh);
+
+		lock_buffer(bh);
+		if (buf) {
+			memcpy(bh->b_data + off, buf, op);
+			buf = Add2Ptr(buf, op);
+		} else {
+			memset(bh->b_data + off, -1, op);
+		}
+
+		set_buffer_uptodate(bh);
+		mark_buffer_dirty(bh);
+		unlock_buffer(bh);
+
+		if (wait) {
+			int err = sync_dirty_buffer(bh);
+
+			if (err) {
+				ntfs_err(
+					sb,
+					"failed to sync buffer at block %llx, error %d",
+					(u64)block, err);
+				put_bh(bh);
+				return err;
+			}
+		}
+
+		put_bh(bh);
+
+		bytes -= op;
+	}
+	return 0;
+}
+
+int ntfs_sb_write_run(struct ntfs_sb_info *sbi, const struct runs_tree *run,
+		      u64 vbo, const void *buf, size_t bytes)
+{
+	struct super_block *sb = sbi->sb;
+	u8 cluster_bits = sbi->cluster_bits;
+	u32 off = vbo & sbi->cluster_mask;
+	CLST lcn, clen, vcn = vbo >> cluster_bits, vcn_next;
+	u64 lbo, len;
+	size_t idx;
+
+	if (!run_lookup_entry(run, vcn, &lcn, &clen, &idx))
+		return -ENOENT;
+
+	if (lcn == SPARSE_LCN)
+		return -EINVAL;
+
+	lbo = ((u64)lcn << cluster_bits) + off;
+	len = ((u64)clen << cluster_bits) - off;
+
+	for (;;) {
+		u32 op = len < bytes ? len : bytes;
+		int err = ntfs_sb_write(sb, lbo, op, buf, 0);
+
+		if (err)
+			return err;
+
+		bytes -= op;
+		if (!bytes)
+			break;
+
+		vcn_next = vcn + clen;
+		if (!run_get_entry(run, ++idx, &vcn, &lcn, &clen) ||
+		    vcn != vcn_next)
+			return -ENOENT;
+
+		if (lcn == SPARSE_LCN)
+			return -EINVAL;
+
+		if (buf)
+			buf = Add2Ptr(buf, op);
+
+		lbo = ((u64)lcn << cluster_bits);
+		len = ((u64)clen << cluster_bits);
+	}
+
+	return 0;
+}
+
+struct buffer_head *ntfs_bread_run(struct ntfs_sb_info *sbi,
+				   const struct runs_tree *run, u64 vbo)
+{
+	struct super_block *sb = sbi->sb;
+	u8 cluster_bits = sbi->cluster_bits;
+	CLST lcn;
+	u64 lbo;
+
+	if (!run_lookup_entry(run, vbo >> cluster_bits, &lcn, NULL, NULL))
+		return ERR_PTR(-ENOENT);
+
+	lbo = ((u64)lcn << cluster_bits) + (vbo & sbi->cluster_mask);
+
+	return ntfs_bread(sb, lbo >> sb->s_blocksize_bits);
+}
+
+int ntfs_read_run_nb(struct ntfs_sb_info *sbi, const struct runs_tree *run,
+		     u64 vbo, void *buf, u32 bytes, struct ntfs_buffers *nb)
+{
+	int err;
+	struct super_block *sb = sbi->sb;
+	u32 blocksize = sb->s_blocksize;
+	u8 cluster_bits = sbi->cluster_bits;
+	u32 off = vbo & sbi->cluster_mask;
+	u32 nbh = 0;
+	CLST vcn_next, vcn = vbo >> cluster_bits;
+	CLST lcn, clen;
+	u64 lbo, len;
+	size_t idx;
+	struct buffer_head *bh;
+
+	if (!run) {
+		/* first reading of $Volume + $MFTMirr + $LogFile goes here*/
+		if (vbo > MFT_REC_VOL * sbi->record_size) {
+			err = -ENOENT;
+			goto out;
+		}
+
+		/* use absolute boot's 'MFTCluster' to read record */
+		lbo = vbo + sbi->mft.lbo;
+		len = sbi->record_size;
+	} else if (!run_lookup_entry(run, vcn, &lcn, &clen, &idx)) {
+		err = -ENOENT;
+		goto out;
+	} else {
+		if (lcn == SPARSE_LCN) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		lbo = ((u64)lcn << cluster_bits) + off;
+		len = ((u64)clen << cluster_bits) - off;
+	}
+
+	off = lbo & (blocksize - 1);
+	if (nb) {
+		nb->off = off;
+		nb->bytes = bytes;
+	}
+
+	for (;;) {
+		u32 len32 = len >= bytes ? bytes : len;
+		sector_t block = lbo >> sb->s_blocksize_bits;
+
+		do {
+			u32 op = blocksize - off;
+
+			if (op > len32)
+				op = len32;
+
+			bh = ntfs_bread(sb, block);
+			if (!bh) {
+				err = -EIO;
+				goto out;
+			}
+
+			if (buf) {
+				memcpy(buf, bh->b_data + off, op);
+				buf = Add2Ptr(buf, op);
+			}
+
+			if (!nb) {
+				put_bh(bh);
+			} else if (nbh >= ARRAY_SIZE(nb->bh)) {
+				err = -EINVAL;
+				goto out;
+			} else {
+				nb->bh[nbh++] = bh;
+				nb->nbufs = nbh;
+			}
+
+			bytes -= op;
+			if (!bytes)
+				return 0;
+			len32 -= op;
+			block += 1;
+			off = 0;
+
+		} while (len32);
+
+		vcn_next = vcn + clen;
+		if (!run_get_entry(run, ++idx, &vcn, &lcn, &clen) ||
+		    vcn != vcn_next) {
+			err = -ENOENT;
+			goto out;
+		}
+
+		if (lcn == SPARSE_LCN) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		lbo = ((u64)lcn << cluster_bits);
+		len = ((u64)clen << cluster_bits);
+	}
+
+out:
+	if (!nbh)
+		return err;
+
+	while (nbh) {
+		put_bh(nb->bh[--nbh]);
+		nb->bh[nbh] = NULL;
+	}
+
+	nb->nbufs = 0;
+	return err;
+}
+
+/* Returns < 0 if error, 0 if ok, '-E_NTFS_FIXUP' if need to update fixups */
+int ntfs_read_bh(struct ntfs_sb_info *sbi, const struct runs_tree *run, u64 vbo,
+		 struct NTFS_RECORD_HEADER *rhdr, u32 bytes,
+		 struct ntfs_buffers *nb)
+{
+	int err = ntfs_read_run_nb(sbi, run, vbo, rhdr, bytes, nb);
+
+	if (err)
+		return err;
+	return ntfs_fix_post_read(rhdr, nb->bytes, true);
+}
+
+int ntfs_get_bh(struct ntfs_sb_info *sbi, const struct runs_tree *run, u64 vbo,
+		u32 bytes, struct ntfs_buffers *nb)
+{
+	int err = 0;
+	struct super_block *sb = sbi->sb;
+	u32 blocksize = sb->s_blocksize;
+	u8 cluster_bits = sbi->cluster_bits;
+	CLST vcn_next, vcn = vbo >> cluster_bits;
+	u32 off;
+	u32 nbh = 0;
+	CLST lcn, clen;
+	u64 lbo, len;
+	size_t idx;
+
+	nb->bytes = bytes;
+
+	if (!run_lookup_entry(run, vcn, &lcn, &clen, &idx)) {
+		err = -ENOENT;
+		goto out;
+	}
+
+	off = vbo & sbi->cluster_mask;
+	lbo = ((u64)lcn << cluster_bits) + off;
+	len = ((u64)clen << cluster_bits) - off;
+
+	nb->off = off = lbo & (blocksize - 1);
+
+	for (;;) {
+		u32 len32 = len < bytes ? len : bytes;
+		sector_t block = lbo >> sb->s_blocksize_bits;
+
+		do {
+			u32 op;
+			struct buffer_head *bh;
+
+			if (nbh >= ARRAY_SIZE(nb->bh)) {
+				err = -EINVAL;
+				goto out;
+			}
+
+			op = blocksize - off;
+			if (op > len32)
+				op = len32;
+
+			if (op == blocksize) {
+				bh = sb_getblk(sb, block);
+				if (!bh) {
+					err = -ENOMEM;
+					goto out;
+				}
+				if (buffer_locked(bh))
+					__wait_on_buffer(bh);
+				set_buffer_uptodate(bh);
+			} else {
+				bh = ntfs_bread(sb, block);
+				if (!bh) {
+					err = -EIO;
+					goto out;
+				}
+			}
+
+			nb->bh[nbh++] = bh;
+			bytes -= op;
+			if (!bytes) {
+				nb->nbufs = nbh;
+				return 0;
+			}
+
+			block += 1;
+			len32 -= op;
+			off = 0;
+		} while (len32);
+
+		vcn_next = vcn + clen;
+		if (!run_get_entry(run, ++idx, &vcn, &lcn, &clen) ||
+		    vcn != vcn_next) {
+			err = -ENOENT;
+			goto out;
+		}
+
+		lbo = ((u64)lcn << cluster_bits);
+		len = ((u64)clen << cluster_bits);
+	}
+
+out:
+	while (nbh) {
+		put_bh(nb->bh[--nbh]);
+		nb->bh[nbh] = NULL;
+	}
+
+	nb->nbufs = 0;
+
+	return err;
+}
+
+int ntfs_write_bh(struct ntfs_sb_info *sbi, struct NTFS_RECORD_HEADER *rhdr,
+		  struct ntfs_buffers *nb, int sync)
+{
+	int err = 0;
+	struct super_block *sb = sbi->sb;
+	u32 block_size = sb->s_blocksize;
+	u32 bytes = nb->bytes;
+	u32 off = nb->off;
+	u16 fo = le16_to_cpu(rhdr->fix_off);
+	u16 fn = le16_to_cpu(rhdr->fix_num);
+	u32 idx;
+	__le16 *fixup;
+	__le16 sample;
+
+	if ((fo & 1) || fo + fn * sizeof(short) > SECTOR_SIZE || !fn-- ||
+	    fn * SECTOR_SIZE > bytes) {
+		return -EINVAL;
+	}
+
+	for (idx = 0; bytes && idx < nb->nbufs; idx += 1, off = 0) {
+		u32 op = block_size - off;
+		char *bh_data;
+		struct buffer_head *bh = nb->bh[idx];
+		__le16 *ptr, *end_data;
+
+		if (op > bytes)
+			op = bytes;
+
+		if (buffer_locked(bh))
+			__wait_on_buffer(bh);
+
+		lock_buffer(nb->bh[idx]);
+
+		bh_data = bh->b_data + off;
+		end_data = Add2Ptr(bh_data, op);
+		memcpy(bh_data, rhdr, op);
+
+		if (!idx) {
+			u16 t16;
+
+			fixup = Add2Ptr(bh_data, fo);
+			sample = *fixup;
+			t16 = le16_to_cpu(sample);
+			if (t16 >= 0x7FFF) {
+				sample = *fixup = cpu_to_le16(1);
+			} else {
+				sample = cpu_to_le16(t16 + 1);
+				*fixup = sample;
+			}
+
+			*(__le16 *)Add2Ptr(rhdr, fo) = sample;
+		}
+
+		ptr = Add2Ptr(bh_data, SECTOR_SIZE - sizeof(short));
+
+		do {
+			*++fixup = *ptr;
+			*ptr = sample;
+			ptr += SECTOR_SIZE / sizeof(short);
+		} while (ptr < end_data);
+
+		set_buffer_uptodate(bh);
+		mark_buffer_dirty(bh);
+		unlock_buffer(bh);
+
+		if (sync) {
+			int err2 = sync_dirty_buffer(bh);
+
+			if (!err && err2)
+				err = err2;
+		}
+
+		bytes -= op;
+		rhdr = Add2Ptr(rhdr, op);
+	}
+
+	return err;
+}
+
+static inline struct bio *ntfs_alloc_bio(u32 nr_vecs)
+{
+	struct bio *bio = bio_alloc(GFP_NOFS | __GFP_HIGH, nr_vecs);
+
+	if (!bio && (current->flags & PF_MEMALLOC)) {
+		while (!bio && (nr_vecs /= 2))
+			bio = bio_alloc(GFP_NOFS | __GFP_HIGH, nr_vecs);
+	}
+	return bio;
+}
+
+/* read/write pages from/to disk*/
+int ntfs_bio_pages(struct ntfs_sb_info *sbi, const struct runs_tree *run,
+		   struct page **pages, u32 nr_pages, u64 vbo, u32 bytes,
+		   u32 op)
+{
+	int err = 0;
+	struct bio *new, *bio = NULL;
+	struct super_block *sb = sbi->sb;
+	struct block_device *bdev = sb->s_bdev;
+	struct page *page;
+	u8 cluster_bits = sbi->cluster_bits;
+	CLST lcn, clen, vcn, vcn_next;
+	u32 add, off, page_idx;
+	u64 lbo, len;
+	size_t run_idx;
+	struct blk_plug plug;
+
+	if (!bytes)
+		return 0;
+
+	blk_start_plug(&plug);
+
+	/* align vbo and bytes to be 512 bytes aligned */
+	lbo = (vbo + bytes + 511) & ~511ull;
+	vbo = vbo & ~511ull;
+	bytes = lbo - vbo;
+
+	vcn = vbo >> cluster_bits;
+	if (!run_lookup_entry(run, vcn, &lcn, &clen, &run_idx)) {
+		err = -ENOENT;
+		goto out;
+	}
+	off = vbo & sbi->cluster_mask;
+	page_idx = 0;
+	page = pages[0];
+
+	for (;;) {
+		lbo = ((u64)lcn << cluster_bits) + off;
+		len = ((u64)clen << cluster_bits) - off;
+new_bio:
+		new = ntfs_alloc_bio(nr_pages - page_idx);
+		if (!new) {
+			err = -ENOMEM;
+			goto out;
+		}
+		if (bio) {
+			bio_chain(bio, new);
+			submit_bio(bio);
+		}
+		bio = new;
+		bio_set_dev(bio, bdev);
+		bio->bi_iter.bi_sector = lbo >> 9;
+		bio->bi_opf = op;
+
+		while (len) {
+			off = vbo & (PAGE_SIZE - 1);
+			add = off + len > PAGE_SIZE ? (PAGE_SIZE - off) : len;
+
+			if (bio_add_page(bio, page, add, off) < add)
+				goto new_bio;
+
+			if (bytes <= add)
+				goto out;
+			bytes -= add;
+			vbo += add;
+
+			if (add + off == PAGE_SIZE) {
+				page_idx += 1;
+				if (WARN_ON(page_idx >= nr_pages)) {
+					err = -EINVAL;
+					goto out;
+				}
+				page = pages[page_idx];
+			}
+
+			if (len <= add)
+				break;
+			len -= add;
+			lbo += add;
+		}
+
+		vcn_next = vcn + clen;
+		if (!run_get_entry(run, ++run_idx, &vcn, &lcn, &clen) ||
+		    vcn != vcn_next) {
+			err = -ENOENT;
+			goto out;
+		}
+		off = 0;
+	}
+out:
+	if (bio) {
+		if (!err)
+			err = submit_bio_wait(bio);
+		bio_put(bio);
+	}
+	blk_finish_plug(&plug);
+
+	return err;
+}
+
+/*
+ * Helper for ntfs_loadlog_and_replay
+ * fill on-disk logfile range by (-1)
+ * this means empty logfile
+ */
+int ntfs_bio_fill_1(struct ntfs_sb_info *sbi, const struct runs_tree *run)
+{
+	int err = 0;
+	struct super_block *sb = sbi->sb;
+	struct block_device *bdev = sb->s_bdev;
+	u8 cluster_bits = sbi->cluster_bits;
+	struct bio *new, *bio = NULL;
+	CLST lcn, clen;
+	u64 lbo, len;
+	size_t run_idx;
+	struct page *fill;
+	void *kaddr;
+	struct blk_plug plug;
+
+	fill = alloc_page(GFP_KERNEL);
+	if (!fill)
+		return -ENOMEM;
+
+	kaddr = kmap_atomic(fill);
+	memset(kaddr, -1, PAGE_SIZE);
+	kunmap_atomic(kaddr);
+	flush_dcache_page(fill);
+	lock_page(fill);
+
+	if (!run_lookup_entry(run, 0, &lcn, &clen, &run_idx)) {
+		err = -ENOENT;
+		goto out;
+	}
+
+	/*
+	 * TODO: try blkdev_issue_write_same
+	 */
+	blk_start_plug(&plug);
+	do {
+		lbo = (u64)lcn << cluster_bits;
+		len = (u64)clen << cluster_bits;
+new_bio:
+		new = ntfs_alloc_bio(BIO_MAX_PAGES);
+		if (!new) {
+			err = -ENOMEM;
+			break;
+		}
+		if (bio) {
+			bio_chain(bio, new);
+			submit_bio(bio);
+		}
+		bio = new;
+		bio_set_dev(bio, bdev);
+		bio->bi_opf = REQ_OP_WRITE;
+		bio->bi_iter.bi_sector = lbo >> 9;
+
+		for (;;) {
+			u32 add = len > PAGE_SIZE ? PAGE_SIZE : len;
+
+			if (bio_add_page(bio, fill, add, 0) < add)
+				goto new_bio;
+
+			lbo += add;
+			if (len <= add)
+				break;
+			len -= add;
+		}
+	} while (run_get_entry(run, ++run_idx, NULL, &lcn, &clen));
+
+	if (bio) {
+		if (!err)
+			err = submit_bio_wait(bio);
+		bio_put(bio);
+	}
+	blk_finish_plug(&plug);
+out:
+	unlock_page(fill);
+	put_page(fill);
+
+	return err;
+}
+
+int ntfs_vbo_to_lbo(struct ntfs_sb_info *sbi, const struct runs_tree *run,
+		    u64 vbo, u64 *lbo, u64 *bytes)
+{
+	u32 off;
+	CLST lcn, len;
+	u8 cluster_bits = sbi->cluster_bits;
+
+	if (!run_lookup_entry(run, vbo >> cluster_bits, &lcn, &len, NULL))
+		return -ENOENT;
+
+	off = vbo & sbi->cluster_mask;
+	*lbo = lcn == SPARSE_LCN ? -1 : (((u64)lcn << cluster_bits) + off);
+	*bytes = ((u64)len << cluster_bits) - off;
+
+	return 0;
+}
+
+struct ntfs_inode *ntfs_new_inode(struct ntfs_sb_info *sbi, CLST rno, bool dir)
+{
+	int err = 0;
+	struct super_block *sb = sbi->sb;
+	struct inode *inode = new_inode(sb);
+	struct ntfs_inode *ni;
+
+	if (!inode)
+		return ERR_PTR(-ENOMEM);
+
+	ni = ntfs_i(inode);
+
+	err = mi_format_new(&ni->mi, sbi, rno, dir ? RECORD_FLAG_DIR : 0,
+			    false);
+	if (err)
+		goto out;
+
+	inode->i_ino = rno;
+	if (insert_inode_locked(inode) < 0) {
+		err = -EIO;
+		goto out;
+	}
+
+out:
+	if (err) {
+		iput(inode);
+		ni = ERR_PTR(err);
+	}
+	return ni;
+}
+
+/*
+ * O:BAG:BAD:(A;OICI;FA;;;WD)
+ * owner S-1-5-32-544 (Administrators)
+ * group S-1-5-32-544 (Administrators)
+ * ACE: allow S-1-1-0 (Everyone) with FILE_ALL_ACCESS
+ */
+const u8 s_default_security[] __aligned(8) = {
+	0x01, 0x00, 0x04, 0x80, 0x30, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
+	0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x1C, 0x00,
+	0x01, 0x00, 0x00, 0x00, 0x00, 0x03, 0x14, 0x00, 0xFF, 0x01, 0x1F, 0x00,
+	0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
+	0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x20, 0x00, 0x00, 0x00,
+	0x20, 0x02, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
+	0x20, 0x00, 0x00, 0x00, 0x20, 0x02, 0x00, 0x00,
+};
+
+static_assert(sizeof(s_default_security) == 0x50);
+
+static inline u32 sid_length(const struct SID *sid)
+{
+	return offsetof(struct SID, SubAuthority[0]) +
+	       (sid->SubAuthorityCount * sizeof(u32));
+}
+
+/*
+ * Thanks Mark Harmstone for idea
+ */
+static bool is_acl_valid(const struct ACL *acl, u32 len)
+{
+	const struct ACE_HEADER *ace;
+	u32 i;
+	u16 ace_count, ace_size;
+
+	if (acl->AclRevision != ACL_REVISION)
+		return false;
+
+	if (acl->Sbz1)
+		return false;
+
+	if (le16_to_cpu(acl->AclSize) > len)
+		return false;
+
+	if (acl->Sbz2)
+		return false;
+
+	len -= sizeof(struct ACL);
+
+	ace = (struct ACE_HEADER *)&acl[1];
+	ace_count = le16_to_cpu(acl->AceCount);
+
+	for (i = 0; i < ace_count; i++) {
+		if (len < sizeof(struct ACE_HEADER))
+			return false;
+
+		ace_size = le16_to_cpu(ace->AceSize);
+		if (len < ace_size)
+			return false;
+
+		len -= ace_size;
+
+		ace = Add2Ptr(ace, ace_size);
+	}
+
+	return true;
+}
+
+bool is_sd_valid(const struct SECURITY_DESCRIPTOR_RELATIVE *sd, u32 len)
+{
+	u32 sd_owner, sd_group, sd_sacl, sd_dacl;
+
+	if (len < sizeof(struct SECURITY_DESCRIPTOR_RELATIVE))
+		return false;
+
+	if (sd->Revision != 1)
+		return false;
+
+	if (sd->Sbz1)
+		return false;
+
+	if (!(sd->Control & SE_SELF_RELATIVE))
+		return false;
+
+	sd_owner = le32_to_cpu(sd->Owner);
+	if (sd_owner) {
+		const struct SID *owner = Add2Ptr(sd, sd_owner);
+
+		if (sd_owner + offsetof(struct SID, SubAuthority) > len)
+			return false;
+
+		if (owner->Revision != 1)
+			return false;
+
+		if (sd_owner + sid_length(owner) > len)
+			return false;
+	}
+
+	sd_group = le32_to_cpu(sd->Group);
+	if (sd_group) {
+		const struct SID *group = Add2Ptr(sd, sd_group);
+
+		if (sd_group + offsetof(struct SID, SubAuthority) > len)
+			return false;
+
+		if (group->Revision != 1)
+			return false;
+
+		if (sd_group + sid_length(group) > len)
+			return false;
+	}
+
+	sd_sacl = le32_to_cpu(sd->Sacl);
+	if (sd_sacl) {
+		const struct ACL *sacl = Add2Ptr(sd, sd_sacl);
+
+		if (sd_sacl + sizeof(struct ACL) > len)
+			return false;
+
+		if (!is_acl_valid(sacl, len - sd_sacl))
+			return false;
+	}
+
+	sd_dacl = le32_to_cpu(sd->Dacl);
+	if (sd_dacl) {
+		const struct ACL *dacl = Add2Ptr(sd, sd_dacl);
+
+		if (sd_dacl + sizeof(struct ACL) > len)
+			return false;
+
+		if (!is_acl_valid(dacl, len - sd_dacl))
+			return false;
+	}
+
+	return true;
+}
+
+/*
+ * ntfs_security_init
+ *
+ * loads and parse $Secure
+ */
+int ntfs_security_init(struct ntfs_sb_info *sbi)
+{
+	int err;
+	struct super_block *sb = sbi->sb;
+	struct inode *inode;
+	struct ntfs_inode *ni;
+	struct MFT_REF ref;
+	struct ATTRIB *attr;
+	struct ATTR_LIST_ENTRY *le;
+	u64 sds_size;
+	size_t cnt, off;
+	struct NTFS_DE *ne;
+	struct NTFS_DE_SII *sii_e;
+	struct ntfs_fnd *fnd_sii = NULL;
+	const struct INDEX_ROOT *root_sii;
+	const struct INDEX_ROOT *root_sdh;
+	struct ntfs_index *indx_sdh = &sbi->security.index_sdh;
+	struct ntfs_index *indx_sii = &sbi->security.index_sii;
+
+	ref.low = cpu_to_le32(MFT_REC_SECURE);
+	ref.high = 0;
+	ref.seq = cpu_to_le16(MFT_REC_SECURE);
+
+	inode = ntfs_iget5(sb, &ref, &NAME_SECURE);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $Secure.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	le = NULL;
+
+	attr = ni_find_attr(ni, NULL, &le, ATTR_ROOT, SDH_NAME,
+			    ARRAY_SIZE(SDH_NAME), NULL, NULL);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	root_sdh = resident_data(attr);
+	if (root_sdh->type != ATTR_ZERO ||
+	    root_sdh->rule != NTFS_COLLATION_TYPE_SECURITY_HASH) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = indx_init(indx_sdh, sbi, attr, INDEX_MUTEX_SDH);
+	if (err)
+		goto out;
+
+	attr = ni_find_attr(ni, attr, &le, ATTR_ROOT, SII_NAME,
+			    ARRAY_SIZE(SII_NAME), NULL, NULL);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	root_sii = resident_data(attr);
+	if (root_sii->type != ATTR_ZERO ||
+	    root_sii->rule != NTFS_COLLATION_TYPE_UINT) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = indx_init(indx_sii, sbi, attr, INDEX_MUTEX_SII);
+	if (err)
+		goto out;
+
+	fnd_sii = fnd_get();
+	if (!fnd_sii) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	sds_size = inode->i_size;
+
+	/* Find the last valid Id */
+	sbi->security.next_id = SECURITY_ID_FIRST;
+	/* Always write new security at the end of bucket */
+	sbi->security.next_off =
+		Quad2Align(sds_size - SecurityDescriptorsBlockSize);
+
+	cnt = 0;
+	off = 0;
+	ne = NULL;
+
+	for (;;) {
+		u32 next_id;
+
+		err = indx_find_raw(indx_sii, ni, root_sii, &ne, &off, fnd_sii);
+		if (err || !ne)
+			break;
+
+		sii_e = (struct NTFS_DE_SII *)ne;
+		if (le16_to_cpu(ne->view.data_size) < SIZEOF_SECURITY_HDR)
+			continue;
+
+		next_id = le32_to_cpu(sii_e->sec_id) + 1;
+		if (next_id >= sbi->security.next_id)
+			sbi->security.next_id = next_id;
+
+		cnt += 1;
+	}
+
+	sbi->security.ni = ni;
+	inode = NULL;
+out:
+	iput(inode);
+	fnd_put(fnd_sii);
+
+	return err;
+}
+
+/*
+ * ntfs_get_security_by_id
+ *
+ * reads security descriptor by id
+ */
+int ntfs_get_security_by_id(struct ntfs_sb_info *sbi, __le32 security_id,
+			    struct SECURITY_DESCRIPTOR_RELATIVE **sd,
+			    size_t *size)
+{
+	int err;
+	int diff;
+	struct ntfs_inode *ni = sbi->security.ni;
+	struct ntfs_index *indx = &sbi->security.index_sii;
+	void *p = NULL;
+	struct NTFS_DE_SII *sii_e;
+	struct ntfs_fnd *fnd_sii;
+	struct SECURITY_HDR d_security;
+	const struct INDEX_ROOT *root_sii;
+	u32 t32;
+
+	*sd = NULL;
+
+	mutex_lock_nested(&ni->ni_lock, NTFS_INODE_MUTEX_SECURITY);
+
+	fnd_sii = fnd_get();
+	if (!fnd_sii) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	root_sii = indx_get_root(indx, ni, NULL, NULL);
+	if (!root_sii) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Try to find this SECURITY descriptor in SII indexes */
+	err = indx_find(indx, ni, root_sii, &security_id, sizeof(security_id),
+			NULL, &diff, (struct NTFS_DE **)&sii_e, fnd_sii);
+	if (err)
+		goto out;
+
+	if (diff)
+		goto out;
+
+	t32 = le32_to_cpu(sii_e->sec_hdr.size);
+	if (t32 < SIZEOF_SECURITY_HDR) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (t32 > SIZEOF_SECURITY_HDR + 0x10000) {
+		/*
+		 * looks like too big security. 0x10000 - is arbitrary big number
+		 */
+		err = -EFBIG;
+		goto out;
+	}
+
+	*size = t32 - SIZEOF_SECURITY_HDR;
+
+	p = ntfs_malloc(*size);
+	if (!p) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	err = ntfs_read_run_nb(sbi, &ni->file.run,
+			       le64_to_cpu(sii_e->sec_hdr.off), &d_security,
+			       sizeof(d_security), NULL);
+	if (err)
+		goto out;
+
+	if (memcmp(&d_security, &sii_e->sec_hdr, SIZEOF_SECURITY_HDR)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = ntfs_read_run_nb(sbi, &ni->file.run,
+			       le64_to_cpu(sii_e->sec_hdr.off) +
+				       SIZEOF_SECURITY_HDR,
+			       p, *size, NULL);
+	if (err)
+		goto out;
+
+	*sd = p;
+	p = NULL;
+
+out:
+	ntfs_free(p);
+	fnd_put(fnd_sii);
+	ni_unlock(ni);
+
+	return err;
+}
+
+/*
+ * ntfs_insert_security
+ *
+ * inserts security descriptor into $Secure::SDS
+ *
+ * SECURITY Descriptor Stream data is organized into chunks of 256K bytes
+ * and it contains a mirror copy of each security descriptor.  When writing
+ * to a security descriptor at location X, another copy will be written at
+ * location (X+256K).
+ * When writing a security descriptor that will cross the 256K boundary,
+ * the pointer will be advanced by 256K to skip
+ * over the mirror portion.
+ */
+int ntfs_insert_security(struct ntfs_sb_info *sbi,
+			 const struct SECURITY_DESCRIPTOR_RELATIVE *sd,
+			 u32 size_sd, __le32 *security_id, bool *inserted)
+{
+	int err, diff;
+	struct ntfs_inode *ni = sbi->security.ni;
+	struct ntfs_index *indx_sdh = &sbi->security.index_sdh;
+	struct ntfs_index *indx_sii = &sbi->security.index_sii;
+	struct NTFS_DE_SDH *e;
+	struct NTFS_DE_SDH sdh_e;
+	struct NTFS_DE_SII sii_e;
+	struct SECURITY_HDR *d_security;
+	u32 new_sec_size = size_sd + SIZEOF_SECURITY_HDR;
+	u32 aligned_sec_size = Quad2Align(new_sec_size);
+	struct SECURITY_KEY hash_key;
+	struct ntfs_fnd *fnd_sdh = NULL;
+	const struct INDEX_ROOT *root_sdh;
+	const struct INDEX_ROOT *root_sii;
+	u64 mirr_off, new_sds_size;
+	u32 next, left;
+
+	static_assert((1 << Log2OfSecurityDescriptorsBlockSize) ==
+		      SecurityDescriptorsBlockSize);
+
+	hash_key.hash = security_hash(sd, size_sd);
+	hash_key.sec_id = SECURITY_ID_INVALID;
+
+	if (inserted)
+		*inserted = false;
+	*security_id = SECURITY_ID_INVALID;
+
+	/* Allocate a temporal buffer*/
+	d_security = ntfs_zalloc(aligned_sec_size);
+	if (!d_security)
+		return -ENOMEM;
+
+	mutex_lock_nested(&ni->ni_lock, NTFS_INODE_MUTEX_SECURITY);
+
+	fnd_sdh = fnd_get();
+	if (!fnd_sdh) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	root_sdh = indx_get_root(indx_sdh, ni, NULL, NULL);
+	if (!root_sdh) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	root_sii = indx_get_root(indx_sii, ni, NULL, NULL);
+	if (!root_sii) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/*
+	 * Check if such security already exists
+	 * use "SDH" and hash -> to get the offset in "SDS"
+	 */
+	err = indx_find(indx_sdh, ni, root_sdh, &hash_key, sizeof(hash_key),
+			&d_security->key.sec_id, &diff, (struct NTFS_DE **)&e,
+			fnd_sdh);
+	if (err)
+		goto out;
+
+	while (e) {
+		if (le32_to_cpu(e->sec_hdr.size) == new_sec_size) {
+			err = ntfs_read_run_nb(sbi, &ni->file.run,
+					       le64_to_cpu(e->sec_hdr.off),
+					       d_security, new_sec_size, NULL);
+			if (err)
+				goto out;
+
+			if (le32_to_cpu(d_security->size) == new_sec_size &&
+			    d_security->key.hash == hash_key.hash &&
+			    !memcmp(d_security + 1, sd, size_sd)) {
+				*security_id = d_security->key.sec_id;
+				/*such security already exists*/
+				err = 0;
+				goto out;
+			}
+		}
+
+		err = indx_find_sort(indx_sdh, ni, root_sdh,
+				     (struct NTFS_DE **)&e, fnd_sdh);
+		if (err)
+			goto out;
+
+		if (!e || e->key.hash != hash_key.hash)
+			break;
+	}
+
+	/* Zero unused space */
+	next = sbi->security.next_off & (SecurityDescriptorsBlockSize - 1);
+	left = SecurityDescriptorsBlockSize - next;
+
+	/* Zero gap until SecurityDescriptorsBlockSize */
+	if (left < new_sec_size) {
+		/* zero "left" bytes from sbi->security.next_off */
+		sbi->security.next_off += SecurityDescriptorsBlockSize + left;
+	}
+
+	/* Zero tail of previous security */
+	//used = ni->vfs_inode.i_size & (SecurityDescriptorsBlockSize - 1);
+
+	/*
+	 * Example:
+	 * 0x40438 == ni->vfs_inode.i_size
+	 * 0x00440 == sbi->security.next_off
+	 * need to zero [0x438-0x440)
+	 * if (next > used) {
+	 *  u32 tozero = next - used;
+	 *  zero "tozero" bytes from sbi->security.next_off - tozero
+	 */
+
+	/* format new security descriptor */
+	d_security->key.hash = hash_key.hash;
+	d_security->key.sec_id = cpu_to_le32(sbi->security.next_id);
+	d_security->off = cpu_to_le64(sbi->security.next_off);
+	d_security->size = cpu_to_le32(new_sec_size);
+	memcpy(d_security + 1, sd, size_sd);
+
+	/* Write main SDS bucket */
+	err = ntfs_sb_write_run(sbi, &ni->file.run, sbi->security.next_off,
+				d_security, aligned_sec_size);
+
+	if (err)
+		goto out;
+
+	mirr_off = sbi->security.next_off + SecurityDescriptorsBlockSize;
+	new_sds_size = mirr_off + aligned_sec_size;
+
+	if (new_sds_size > ni->vfs_inode.i_size) {
+		err = attr_set_size(ni, ATTR_DATA, SDS_NAME,
+				    ARRAY_SIZE(SDS_NAME), &ni->file.run,
+				    new_sds_size, &new_sds_size, false, NULL);
+		if (err)
+			goto out;
+	}
+
+	/* Write copy SDS bucket */
+	err = ntfs_sb_write_run(sbi, &ni->file.run, mirr_off, d_security,
+				aligned_sec_size);
+	if (err)
+		goto out;
+
+	/* Fill SII entry */
+	sii_e.de.view.data_off =
+		cpu_to_le16(offsetof(struct NTFS_DE_SII, sec_hdr));
+	sii_e.de.view.data_size = cpu_to_le16(SIZEOF_SECURITY_HDR);
+	sii_e.de.view.res = 0;
+	sii_e.de.size = cpu_to_le16(SIZEOF_SII_DIRENTRY);
+	sii_e.de.key_size = cpu_to_le16(sizeof(d_security->key.sec_id));
+	sii_e.de.flags = 0;
+	sii_e.de.res = 0;
+	sii_e.sec_id = d_security->key.sec_id;
+	memcpy(&sii_e.sec_hdr, d_security, SIZEOF_SECURITY_HDR);
+
+	err = indx_insert_entry(indx_sii, ni, &sii_e.de, NULL, NULL);
+	if (err)
+		goto out;
+
+	/* Fill SDH entry */
+	sdh_e.de.view.data_off =
+		cpu_to_le16(offsetof(struct NTFS_DE_SDH, sec_hdr));
+	sdh_e.de.view.data_size = cpu_to_le16(SIZEOF_SECURITY_HDR);
+	sdh_e.de.view.res = 0;
+	sdh_e.de.size = cpu_to_le16(SIZEOF_SDH_DIRENTRY);
+	sdh_e.de.key_size = cpu_to_le16(sizeof(sdh_e.key));
+	sdh_e.de.flags = 0;
+	sdh_e.de.res = 0;
+	sdh_e.key.hash = d_security->key.hash;
+	sdh_e.key.sec_id = d_security->key.sec_id;
+	memcpy(&sdh_e.sec_hdr, d_security, SIZEOF_SECURITY_HDR);
+	sdh_e.magic[0] = cpu_to_le16('I');
+	sdh_e.magic[1] = cpu_to_le16('I');
+
+	fnd_clear(fnd_sdh);
+	err = indx_insert_entry(indx_sdh, ni, &sdh_e.de, (void *)(size_t)1,
+				fnd_sdh);
+	if (err)
+		goto out;
+
+	*security_id = d_security->key.sec_id;
+	if (inserted)
+		*inserted = true;
+
+	/* Update Id and offset for next descriptor */
+	sbi->security.next_id += 1;
+	sbi->security.next_off += aligned_sec_size;
+
+out:
+	fnd_put(fnd_sdh);
+	mark_inode_dirty(&ni->vfs_inode);
+	ni_unlock(ni);
+	ntfs_free(d_security);
+
+	return err;
+}
+
+/*
+ * ntfs_reparse_init
+ *
+ * loads and parse $Extend/$Reparse
+ */
+int ntfs_reparse_init(struct ntfs_sb_info *sbi)
+{
+	int err;
+	struct ntfs_inode *ni = sbi->reparse.ni;
+	struct ntfs_index *indx = &sbi->reparse.index_r;
+	struct ATTRIB *attr;
+	struct ATTR_LIST_ENTRY *le;
+	const struct INDEX_ROOT *root_r;
+
+	if (!ni)
+		return 0;
+
+	le = NULL;
+	attr = ni_find_attr(ni, NULL, &le, ATTR_ROOT, SR_NAME,
+			    ARRAY_SIZE(SR_NAME), NULL, NULL);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	root_r = resident_data(attr);
+	if (root_r->type != ATTR_ZERO ||
+	    root_r->rule != NTFS_COLLATION_TYPE_UINTS) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = indx_init(indx, sbi, attr, INDEX_MUTEX_SR);
+	if (err)
+		goto out;
+
+out:
+	return err;
+}
+
+/*
+ * ntfs_objid_init
+ *
+ * loads and parse $Extend/$ObjId
+ */
+int ntfs_objid_init(struct ntfs_sb_info *sbi)
+{
+	int err;
+	struct ntfs_inode *ni = sbi->objid.ni;
+	struct ntfs_index *indx = &sbi->objid.index_o;
+	struct ATTRIB *attr;
+	struct ATTR_LIST_ENTRY *le;
+	const struct INDEX_ROOT *root;
+
+	if (!ni)
+		return 0;
+
+	le = NULL;
+	attr = ni_find_attr(ni, NULL, &le, ATTR_ROOT, SO_NAME,
+			    ARRAY_SIZE(SO_NAME), NULL, NULL);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	root = resident_data(attr);
+	if (root->type != ATTR_ZERO ||
+	    root->rule != NTFS_COLLATION_TYPE_UINTS) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = indx_init(indx, sbi, attr, INDEX_MUTEX_SO);
+	if (err)
+		goto out;
+
+out:
+	return err;
+}
+
+int ntfs_objid_remove(struct ntfs_sb_info *sbi, struct GUID *guid)
+{
+	int err;
+	struct ntfs_inode *ni = sbi->objid.ni;
+	struct ntfs_index *indx = &sbi->objid.index_o;
+
+	if (!ni)
+		return -EINVAL;
+
+	mutex_lock_nested(&ni->ni_lock, NTFS_INODE_MUTEX_OBJID);
+
+	err = indx_delete_entry(indx, ni, guid, sizeof(*guid), NULL);
+
+	mark_inode_dirty(&ni->vfs_inode);
+	ni_unlock(ni);
+
+	return err;
+}
+
+int ntfs_insert_reparse(struct ntfs_sb_info *sbi, __le32 rtag,
+			const struct MFT_REF *ref)
+{
+	int err;
+	struct ntfs_inode *ni = sbi->reparse.ni;
+	struct ntfs_index *indx = &sbi->reparse.index_r;
+	struct NTFS_DE_R re;
+
+	if (!ni)
+		return -EINVAL;
+
+	memset(&re, 0, sizeof(re));
+
+	re.de.view.data_off = cpu_to_le16(offsetof(struct NTFS_DE_R, zero));
+	re.de.size = cpu_to_le16(sizeof(struct NTFS_DE_R));
+	re.de.key_size = cpu_to_le16(sizeof(re.key));
+
+	re.key.ReparseTag = rtag;
+	memcpy(&re.key.ref, ref, sizeof(*ref));
+
+	mutex_lock_nested(&ni->ni_lock, NTFS_INODE_MUTEX_REPARSE);
+
+	err = indx_insert_entry(indx, ni, &re.de, NULL, NULL);
+
+	mark_inode_dirty(&ni->vfs_inode);
+	ni_unlock(ni);
+
+	return err;
+}
+
+int ntfs_remove_reparse(struct ntfs_sb_info *sbi, __le32 rtag,
+			const struct MFT_REF *ref)
+{
+	int err, diff;
+	struct ntfs_inode *ni = sbi->reparse.ni;
+	struct ntfs_index *indx = &sbi->reparse.index_r;
+	struct ntfs_fnd *fnd = NULL;
+	struct REPARSE_KEY rkey;
+	struct NTFS_DE_R *re;
+	struct INDEX_ROOT *root_r;
+
+	if (!ni)
+		return -EINVAL;
+
+	rkey.ReparseTag = rtag;
+	rkey.ref = *ref;
+
+	mutex_lock_nested(&ni->ni_lock, NTFS_INODE_MUTEX_REPARSE);
+
+	if (rtag) {
+		err = indx_delete_entry(indx, ni, &rkey, sizeof(rkey), NULL);
+		goto out1;
+	}
+
+	fnd = fnd_get();
+	if (!fnd) {
+		err = -ENOMEM;
+		goto out1;
+	}
+
+	root_r = indx_get_root(indx, ni, NULL, NULL);
+	if (!root_r) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* 1 - forces to ignore rkey.ReparseTag when comparing keys */
+	err = indx_find(indx, ni, root_r, &rkey, sizeof(rkey), (void *)1, &diff,
+			(struct NTFS_DE **)&re, fnd);
+	if (err)
+		goto out;
+
+	if (memcmp(&re->key.ref, ref, sizeof(*ref))) {
+		/* Impossible. Looks like volume corrupt?*/
+		goto out;
+	}
+
+	memcpy(&rkey, &re->key, sizeof(rkey));
+
+	fnd_put(fnd);
+	fnd = NULL;
+
+	err = indx_delete_entry(indx, ni, &rkey, sizeof(rkey), NULL);
+	if (err)
+		goto out;
+
+out:
+	fnd_put(fnd);
+
+out1:
+	mark_inode_dirty(&ni->vfs_inode);
+	ni_unlock(ni);
+
+	return err;
+}
+
+static inline void ntfs_unmap_and_discard(struct ntfs_sb_info *sbi, CLST lcn,
+					  CLST len)
+{
+	ntfs_unmap_meta(sbi->sb, lcn, len);
+	ntfs_discard(sbi, lcn, len);
+}
+
+void mark_as_free_ex(struct ntfs_sb_info *sbi, CLST lcn, CLST len, bool trim)
+{
+	CLST end, i;
+	struct wnd_bitmap *wnd = &sbi->used.bitmap;
+
+	down_write_nested(&wnd->rw_lock, BITMAP_MUTEX_CLUSTERS);
+	if (!wnd_is_used(wnd, lcn, len)) {
+		ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+
+		end = lcn + len;
+		len = 0;
+		for (i = lcn; i < end; i++) {
+			if (wnd_is_used(wnd, i, 1)) {
+				if (!len)
+					lcn = i;
+				len += 1;
+				continue;
+			}
+
+			if (!len)
+				continue;
+
+			if (trim)
+				ntfs_unmap_and_discard(sbi, lcn, len);
+
+			wnd_set_free(wnd, lcn, len);
+			len = 0;
+		}
+
+		if (!len)
+			goto out;
+	}
+
+	if (trim)
+		ntfs_unmap_and_discard(sbi, lcn, len);
+	wnd_set_free(wnd, lcn, len);
+
+out:
+	up_write(&wnd->rw_lock);
+}
+
+/*
+ * run_deallocate
+ *
+ * deallocate clusters
+ */
+int run_deallocate(struct ntfs_sb_info *sbi, struct runs_tree *run, bool trim)
+{
+	CLST lcn, len;
+	size_t idx = 0;
+
+	while (run_get_entry(run, idx++, NULL, &lcn, &len)) {
+		if (lcn == SPARSE_LCN)
+			continue;
+
+		mark_as_free_ex(sbi, lcn, len, trim);
+	}
+
+	return 0;
+}
diff --git a/fs/ntfs3/index.c b/fs/ntfs3/index.c
new file mode 100644
index 000000000000..73867148a3e7
--- /dev/null
+++ b/fs/ntfs3/index.c
@@ -0,0 +1,2646 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ */
+
+#include <linux/blkdev.h>
+#include <linux/buffer_head.h>
+#include <linux/fs.h>
+#include <linux/nls.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+
+static const struct INDEX_NAMES {
+	const __le16 *name;
+	u8 name_len;
+} s_index_names[INDEX_MUTEX_TOTAL] = {
+	{ I30_NAME, ARRAY_SIZE(I30_NAME) }, { SII_NAME, ARRAY_SIZE(SII_NAME) },
+	{ SDH_NAME, ARRAY_SIZE(SDH_NAME) }, { SO_NAME, ARRAY_SIZE(SO_NAME) },
+	{ SQ_NAME, ARRAY_SIZE(SQ_NAME) },   { SR_NAME, ARRAY_SIZE(SR_NAME) },
+};
+
+/*
+ * compare two names in index
+ * if l1 != 0
+ *   both names are little endian on-disk ATTR_FILE_NAME structs
+ * else
+ *   key1 - cpu_str, key2 - ATTR_FILE_NAME
+ */
+static int cmp_fnames(const void *key1, size_t l1, const void *key2, size_t l2,
+		      const void *data)
+{
+	const struct ATTR_FILE_NAME *f2 = key2;
+	const struct ntfs_sb_info *sbi = data;
+	const struct ATTR_FILE_NAME *f1;
+	u16 fsize2;
+	bool both_case;
+
+	if (l2 <= offsetof(struct ATTR_FILE_NAME, name))
+		return -1;
+
+	fsize2 = fname_full_size(f2);
+	if (l2 < fsize2)
+		return -1;
+
+	both_case = f2->type != FILE_NAME_DOS /*&& !sbi->options.nocase*/;
+	if (!l1) {
+		const struct le_str *s2 = (struct le_str *)&f2->name_len;
+
+		/*
+		 * If names are equal (case insensitive)
+		 * try to compare it case sensitive
+		 */
+		return ntfs_cmp_names_cpu(key1, s2, sbi->upcase, both_case);
+	}
+
+	f1 = key1;
+	return ntfs_cmp_names(f1->name, f1->name_len, f2->name, f2->name_len,
+			      sbi->upcase, both_case);
+}
+
+/* $SII of $Secure and $Q of Quota */
+static int cmp_uint(const void *key1, size_t l1, const void *key2, size_t l2,
+		    const void *data)
+{
+	const u32 *k1 = key1;
+	const u32 *k2 = key2;
+
+	if (l2 < sizeof(u32))
+		return -1;
+
+	if (*k1 < *k2)
+		return -1;
+	if (*k1 > *k2)
+		return 1;
+	return 0;
+}
+
+/* $SDH of $Secure */
+static int cmp_sdh(const void *key1, size_t l1, const void *key2, size_t l2,
+		   const void *data)
+{
+	const struct SECURITY_KEY *k1 = key1;
+	const struct SECURITY_KEY *k2 = key2;
+	u32 t1, t2;
+
+	if (l2 < sizeof(struct SECURITY_KEY))
+		return -1;
+
+	t1 = le32_to_cpu(k1->hash);
+	t2 = le32_to_cpu(k2->hash);
+
+	/* First value is a hash value itself */
+	if (t1 < t2)
+		return -1;
+	if (t1 > t2)
+		return 1;
+
+	/* Second value is security Id */
+	if (data) {
+		t1 = le32_to_cpu(k1->sec_id);
+		t2 = le32_to_cpu(k2->sec_id);
+		if (t1 < t2)
+			return -1;
+		if (t1 > t2)
+			return 1;
+	}
+
+	return 0;
+}
+
+/* $O of ObjId and "$R" for Reparse */
+static int cmp_uints(const void *key1, size_t l1, const void *key2, size_t l2,
+		     const void *data)
+{
+	const __le32 *k1 = key1;
+	const __le32 *k2 = key2;
+	size_t count;
+
+	if ((size_t)data == 1) {
+		/*
+		 * ni_delete_all -> ntfs_remove_reparse -> delete all with this reference
+		 * k1, k2 - pointers to REPARSE_KEY
+		 */
+
+		k1 += 1; // skip REPARSE_KEY.ReparseTag
+		k2 += 1; // skip REPARSE_KEY.ReparseTag
+		if (l2 <= sizeof(int))
+			return -1;
+		l2 -= sizeof(int);
+		if (l1 <= sizeof(int))
+			return 1;
+		l1 -= sizeof(int);
+	}
+
+	if (l2 < sizeof(int))
+		return -1;
+
+	for (count = min(l1, l2) >> 2; count > 0; --count, ++k1, ++k2) {
+		u32 t1 = le32_to_cpu(*k1);
+		u32 t2 = le32_to_cpu(*k2);
+
+		if (t1 > t2)
+			return 1;
+		if (t1 < t2)
+			return -1;
+	}
+
+	if (l1 > l2)
+		return 1;
+	if (l1 < l2)
+		return -1;
+
+	return 0;
+}
+
+static inline NTFS_CMP_FUNC get_cmp_func(const struct INDEX_ROOT *root)
+{
+	switch (root->type) {
+	case ATTR_NAME:
+		if (root->rule == NTFS_COLLATION_TYPE_FILENAME)
+			return &cmp_fnames;
+		break;
+	case ATTR_ZERO:
+		switch (root->rule) {
+		case NTFS_COLLATION_TYPE_UINT:
+			return &cmp_uint;
+		case NTFS_COLLATION_TYPE_SECURITY_HASH:
+			return &cmp_sdh;
+		case NTFS_COLLATION_TYPE_UINTS:
+			return &cmp_uints;
+		default:
+			break;
+		}
+	default:
+		break;
+	}
+
+	return NULL;
+}
+
+struct bmp_buf {
+	struct ATTRIB *b;
+	struct mft_inode *mi;
+	struct buffer_head *bh;
+	ulong *buf;
+	size_t bit;
+	u32 nbits;
+	u64 new_valid;
+};
+
+static int bmp_buf_get(struct ntfs_index *indx, struct ntfs_inode *ni,
+		       size_t bit, struct bmp_buf *bbuf)
+{
+	struct ATTRIB *b;
+	size_t data_size, valid_size, vbo, off = bit >> 3;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	CLST vcn = off >> sbi->cluster_bits;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	struct buffer_head *bh;
+	struct super_block *sb;
+	u32 blocksize;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+
+	bbuf->bh = NULL;
+
+	b = ni_find_attr(ni, NULL, &le, ATTR_BITMAP, in->name, in->name_len,
+			 &vcn, &bbuf->mi);
+	bbuf->b = b;
+	if (!b)
+		return -EINVAL;
+
+	if (!b->non_res) {
+		data_size = le32_to_cpu(b->res.data_size);
+
+		if (off >= data_size)
+			return -EINVAL;
+
+		bbuf->buf = (ulong *)resident_data(b);
+		bbuf->bit = 0;
+		bbuf->nbits = data_size * 8;
+
+		return 0;
+	}
+
+	data_size = le64_to_cpu(b->nres.data_size);
+	if (WARN_ON(off >= data_size)) {
+		/* looks like filesystem error */
+		return -EINVAL;
+	}
+
+	valid_size = le64_to_cpu(b->nres.valid_size);
+
+	bh = ntfs_bread_run(sbi, &indx->bitmap_run, off);
+	if (!bh)
+		return -EIO;
+
+	if (IS_ERR(bh))
+		return PTR_ERR(bh);
+
+	bbuf->bh = bh;
+
+	if (buffer_locked(bh))
+		__wait_on_buffer(bh);
+
+	lock_buffer(bh);
+
+	sb = sbi->sb;
+	blocksize = sb->s_blocksize;
+
+	vbo = off & ~(size_t)sbi->block_mask;
+
+	bbuf->new_valid = vbo + blocksize;
+	if (bbuf->new_valid <= valid_size)
+		bbuf->new_valid = 0;
+	else if (bbuf->new_valid > data_size)
+		bbuf->new_valid = data_size;
+
+	if (vbo >= valid_size) {
+		memset(bh->b_data, 0, blocksize);
+	} else if (vbo + blocksize > valid_size) {
+		u32 voff = valid_size & sbi->block_mask;
+
+		memset(bh->b_data + voff, 0, blocksize - voff);
+	}
+
+	bbuf->buf = (ulong *)bh->b_data;
+	bbuf->bit = 8 * (off & ~(size_t)sbi->block_mask);
+	bbuf->nbits = 8 * blocksize;
+
+	return 0;
+}
+
+static void bmp_buf_put(struct bmp_buf *bbuf, bool dirty)
+{
+	struct buffer_head *bh = bbuf->bh;
+	struct ATTRIB *b = bbuf->b;
+
+	if (!bh) {
+		if (b && !b->non_res && dirty)
+			bbuf->mi->dirty = true;
+		return;
+	}
+
+	if (!dirty)
+		goto out;
+
+	if (bbuf->new_valid) {
+		b->nres.valid_size = cpu_to_le64(bbuf->new_valid);
+		bbuf->mi->dirty = true;
+	}
+
+	set_buffer_uptodate(bh);
+	mark_buffer_dirty(bh);
+
+out:
+	unlock_buffer(bh);
+	put_bh(bh);
+}
+
+/*
+ * indx_mark_used
+ *
+ * marks the bit 'bit' as used
+ */
+static int indx_mark_used(struct ntfs_index *indx, struct ntfs_inode *ni,
+			  size_t bit)
+{
+	int err;
+	struct bmp_buf bbuf;
+
+	err = bmp_buf_get(indx, ni, bit, &bbuf);
+	if (err)
+		return err;
+
+	__set_bit(bit - bbuf.bit, bbuf.buf);
+
+	bmp_buf_put(&bbuf, true);
+
+	return 0;
+}
+
+/*
+ * indx_mark_free
+ *
+ * the bit 'bit' as free
+ */
+static int indx_mark_free(struct ntfs_index *indx, struct ntfs_inode *ni,
+			  size_t bit)
+{
+	int err;
+	struct bmp_buf bbuf;
+
+	err = bmp_buf_get(indx, ni, bit, &bbuf);
+	if (err)
+		return err;
+
+	__clear_bit(bit - bbuf.bit, bbuf.buf);
+
+	bmp_buf_put(&bbuf, true);
+
+	return 0;
+}
+
+/*
+ * if ntfs_readdir calls this function (indx_used_bit -> scan_nres_bitmap),
+ * inode is shared locked and no ni_lock
+ * use rw_semaphore for read/write access to bitmap_run
+ */
+static int scan_nres_bitmap(struct ntfs_inode *ni, struct ATTRIB *bitmap,
+			    struct ntfs_index *indx, size_t from,
+			    bool (*fn)(const ulong *buf, u32 bit, u32 bits,
+				       size_t *ret),
+			    size_t *ret)
+{
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct super_block *sb = sbi->sb;
+	struct runs_tree *run = &indx->bitmap_run;
+	struct rw_semaphore *lock = &indx->run_lock;
+	u32 nbits = sb->s_blocksize * 8;
+	u32 blocksize = sb->s_blocksize;
+	u64 valid_size = le64_to_cpu(bitmap->nres.valid_size);
+	u64 data_size = le64_to_cpu(bitmap->nres.data_size);
+	sector_t eblock = bytes_to_block(sb, data_size);
+	size_t vbo = from >> 3;
+	sector_t blk = (vbo & sbi->cluster_mask) >> sb->s_blocksize_bits;
+	sector_t vblock = vbo >> sb->s_blocksize_bits;
+	sector_t blen, block;
+	CLST lcn, clen, vcn, vcn_next;
+	size_t idx;
+	struct buffer_head *bh;
+	bool ok;
+
+	*ret = MINUS_ONE_T;
+
+	if (vblock >= eblock)
+		return 0;
+
+	from &= nbits - 1;
+	vcn = vbo >> sbi->cluster_bits;
+
+	down_read(lock);
+	ok = run_lookup_entry(run, vcn, &lcn, &clen, &idx);
+	up_read(lock);
+
+next_run:
+	if (!ok) {
+		int err;
+		const struct INDEX_NAMES *name = &s_index_names[indx->type];
+
+		down_write(lock);
+		err = attr_load_runs_vcn(ni, ATTR_BITMAP, name->name,
+					 name->name_len, run, vcn);
+		up_write(lock);
+		if (err)
+			return err;
+		down_read(lock);
+		ok = run_lookup_entry(run, vcn, &lcn, &clen, &idx);
+		up_read(lock);
+		if (!ok)
+			return -EINVAL;
+	}
+
+	blen = (sector_t)clen * sbi->blocks_per_cluster;
+	block = (sector_t)lcn * sbi->blocks_per_cluster;
+
+	for (; blk < blen; blk++, from = 0) {
+		bh = ntfs_bread(sb, block + blk);
+		if (!bh)
+			return -EIO;
+
+		vbo = (u64)vblock << sb->s_blocksize_bits;
+		if (vbo >= valid_size) {
+			memset(bh->b_data, 0, blocksize);
+		} else if (vbo + blocksize > valid_size) {
+			u32 voff = valid_size & sbi->block_mask;
+
+			memset(bh->b_data + voff, 0, blocksize - voff);
+		}
+
+		if (vbo + blocksize > data_size)
+			nbits = 8 * (data_size - vbo);
+
+		ok = nbits > from ?
+			     (*fn)((ulong *)bh->b_data, from, nbits, ret) :
+			     false;
+		put_bh(bh);
+
+		if (ok) {
+			*ret += 8 * vbo;
+			return 0;
+		}
+
+		if (++vblock >= eblock) {
+			*ret = MINUS_ONE_T;
+			return 0;
+		}
+	}
+	blk = 0;
+	vcn_next = vcn + clen;
+	down_read(lock);
+	ok = run_get_entry(run, ++idx, &vcn, &lcn, &clen) && vcn == vcn_next;
+	if (!ok)
+		vcn = vcn_next;
+	up_read(lock);
+	goto next_run;
+}
+
+static bool scan_for_free(const ulong *buf, u32 bit, u32 bits, size_t *ret)
+{
+	size_t pos = find_next_zero_bit(buf, bits, bit);
+
+	if (pos >= bits)
+		return false;
+	*ret = pos;
+	return true;
+}
+
+/*
+ * indx_find_free
+ *
+ * looks for free bit
+ * returns -1 if no free bits
+ */
+static int indx_find_free(struct ntfs_index *indx, struct ntfs_inode *ni,
+			  size_t *bit, struct ATTRIB **bitmap)
+{
+	struct ATTRIB *b;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+	int err;
+
+	b = ni_find_attr(ni, NULL, &le, ATTR_BITMAP, in->name, in->name_len,
+			 NULL, NULL);
+
+	if (!b)
+		return -ENOENT;
+
+	*bitmap = b;
+	*bit = MINUS_ONE_T;
+
+	if (!b->non_res) {
+		u32 nbits = 8 * le32_to_cpu(b->res.data_size);
+		size_t pos = find_next_zero_bit(resident_data(b), nbits, 0);
+
+		if (pos < nbits)
+			*bit = pos;
+	} else {
+		err = scan_nres_bitmap(ni, b, indx, 0, &scan_for_free, bit);
+
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static bool scan_for_used(const ulong *buf, u32 bit, u32 bits, size_t *ret)
+{
+	size_t pos = find_next_bit(buf, bits, bit);
+
+	if (pos >= bits)
+		return false;
+	*ret = pos;
+	return true;
+}
+
+/*
+ * indx_used_bit
+ *
+ * looks for used bit
+ * returns MINUS_ONE_T if no used bits
+ */
+int indx_used_bit(struct ntfs_index *indx, struct ntfs_inode *ni, size_t *bit)
+{
+	struct ATTRIB *b;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	size_t from = *bit;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+	int err;
+
+	b = ni_find_attr(ni, NULL, &le, ATTR_BITMAP, in->name, in->name_len,
+			 NULL, NULL);
+
+	if (!b)
+		return -ENOENT;
+
+	*bit = MINUS_ONE_T;
+
+	if (!b->non_res) {
+		u32 nbits = le32_to_cpu(b->res.data_size) * 8;
+		size_t pos = find_next_bit(resident_data(b), nbits, from);
+
+		if (pos < nbits)
+			*bit = pos;
+	} else {
+		err = scan_nres_bitmap(ni, b, indx, from, &scan_for_used, bit);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/*
+ * hdr_find_split
+ *
+ * finds a point at which the index allocation buffer would like to
+ * be split.
+ * NOTE: This function should never return 'END' entry NULL returns on error
+ */
+static const inline struct NTFS_DE *hdr_find_split(const struct INDEX_HDR *hdr)
+{
+	size_t o;
+	const struct NTFS_DE *e = hdr_first_de(hdr);
+	u32 used_2 = le32_to_cpu(hdr->used) >> 1;
+	u16 esize = le16_to_cpu(e->size);
+
+	if (!e || de_is_last(e))
+		return NULL;
+
+	for (o = le32_to_cpu(hdr->de_off) + esize; o < used_2; o += esize) {
+		const struct NTFS_DE *p = e;
+
+		e = Add2Ptr(hdr, o);
+
+		/* We must not return END entry */
+		if (de_is_last(e))
+			return p;
+
+		esize = le16_to_cpu(e->size);
+	}
+
+	return e;
+}
+
+/*
+ * hdr_insert_head
+ *
+ * inserts some entries at the beginning of the buffer.
+ * It is used to insert entries into a newly-created buffer.
+ */
+static const inline struct NTFS_DE *
+hdr_insert_head(struct INDEX_HDR *hdr, const void *ins, u32 ins_bytes)
+{
+	u32 to_move;
+	struct NTFS_DE *e = hdr_first_de(hdr);
+	u32 used = le32_to_cpu(hdr->used);
+
+	if (!e)
+		return NULL;
+
+	/* Now we just make room for the inserted entries and jam it in. */
+	to_move = used - le32_to_cpu(hdr->de_off);
+	memmove(Add2Ptr(e, ins_bytes), e, to_move);
+	memcpy(e, ins, ins_bytes);
+	hdr->used = cpu_to_le32(used + ins_bytes);
+
+	return e;
+}
+
+void fnd_clear(struct ntfs_fnd *fnd)
+{
+	int i;
+
+	for (i = 0; i < fnd->level; i++) {
+		struct indx_node *n = fnd->nodes[i];
+
+		if (!n)
+			continue;
+
+		put_indx_node(n);
+		fnd->nodes[i] = NULL;
+	}
+	fnd->level = 0;
+	fnd->root_de = NULL;
+}
+
+static int fnd_push(struct ntfs_fnd *fnd, struct indx_node *n,
+		    struct NTFS_DE *e)
+{
+	int i;
+
+	i = fnd->level;
+	if (i < 0 || i >= ARRAY_SIZE(fnd->nodes))
+		return -EINVAL;
+	fnd->nodes[i] = n;
+	fnd->de[i] = e;
+	fnd->level += 1;
+	return 0;
+}
+
+static struct indx_node *fnd_pop(struct ntfs_fnd *fnd)
+{
+	struct indx_node *n;
+	int i = fnd->level;
+
+	i -= 1;
+	n = fnd->nodes[i];
+	fnd->nodes[i] = NULL;
+	fnd->level = i;
+
+	return n;
+}
+
+static bool fnd_is_empty(struct ntfs_fnd *fnd)
+{
+	if (!fnd->level)
+		return !fnd->root_de;
+
+	return !fnd->de[fnd->level - 1];
+}
+
+/*
+ * hdr_find_e
+ *
+ * locates an entry the index buffer.
+ * If no matching entry is found, it returns the first entry which is greater
+ * than the desired entry If the search key is greater than all the entries the
+ * buffer, it returns the 'end' entry. This function does a binary search of the
+ * current index buffer, for the first entry that is <= to the search value
+ * Returns NULL if error
+ */
+static struct NTFS_DE *hdr_find_e(const struct ntfs_index *indx,
+				  const struct INDEX_HDR *hdr, const void *key,
+				  size_t key_len, const void *ctx, int *diff)
+{
+	struct NTFS_DE *e;
+	NTFS_CMP_FUNC cmp = indx->cmp;
+	u32 e_size, e_key_len;
+	u32 end = le32_to_cpu(hdr->used);
+	u32 off = le32_to_cpu(hdr->de_off);
+
+#ifdef NTFS3_INDEX_BINARY_SEARCH
+	int max_idx = 0, fnd, min_idx;
+	int nslots = 64;
+	u16 *offs;
+
+	if (end > 0x10000)
+		goto next;
+
+	offs = ntfs_malloc(sizeof(u16) * nslots);
+	if (!offs)
+		goto next;
+
+	/* use binary search algorithm */
+next1:
+	if (off + sizeof(struct NTFS_DE) > end) {
+		e = NULL;
+		goto out1;
+	}
+	e = Add2Ptr(hdr, off);
+	e_size = le16_to_cpu(e->size);
+
+	if (e_size < sizeof(struct NTFS_DE) || off + e_size > end) {
+		e = NULL;
+		goto out1;
+	}
+
+	if (max_idx >= nslots) {
+		u16 *ptr;
+		int new_slots = QuadAlign(2 * nslots);
+
+		ptr = ntfs_malloc(sizeof(u16) * new_slots);
+		if (ptr)
+			memcpy(ptr, offs, sizeof(u16) * max_idx);
+		ntfs_free(offs);
+		offs = ptr;
+		nslots = new_slots;
+		if (!ptr)
+			goto next;
+	}
+
+	/* Store entry table */
+	offs[max_idx] = off;
+
+	if (!de_is_last(e)) {
+		off += e_size;
+		max_idx += 1;
+		goto next1;
+	}
+
+	/*
+	 * Table of pointers is created
+	 * Use binary search to find entry that is <= to the search value
+	 */
+	fnd = -1;
+	min_idx = 0;
+
+	while (min_idx <= max_idx) {
+		int mid_idx = min_idx + ((max_idx - min_idx) >> 1);
+		int diff2;
+
+		e = Add2Ptr(hdr, offs[mid_idx]);
+
+		e_key_len = le16_to_cpu(e->key_size);
+
+		diff2 = (*cmp)(key, key_len, e + 1, e_key_len, ctx);
+
+		if (!diff2) {
+			*diff = 0;
+			goto out1;
+		}
+
+		if (diff2 < 0) {
+			max_idx = mid_idx - 1;
+			fnd = mid_idx;
+			if (!fnd)
+				break;
+		} else {
+			min_idx = mid_idx + 1;
+		}
+	}
+
+	if (fnd == -1) {
+		e = NULL;
+		goto out1;
+	}
+
+	*diff = -1;
+	e = Add2Ptr(hdr, offs[fnd]);
+
+out1:
+	ntfs_free(offs);
+
+	return e;
+#endif
+
+next:
+	/*
+	 * Entries index are sorted
+	 * Enumerate all entries until we find entry that is <= to the search value
+	 */
+	if (off + sizeof(struct NTFS_DE) > end)
+		return NULL;
+
+	e = Add2Ptr(hdr, off);
+	e_size = le16_to_cpu(e->size);
+
+	if (e_size < sizeof(struct NTFS_DE) || off + e_size > end)
+		return NULL;
+
+	off += e_size;
+
+	e_key_len = le16_to_cpu(e->key_size);
+
+	*diff = (*cmp)(key, key_len, e + 1, e_key_len, ctx);
+	if (!*diff)
+		return e;
+
+	if (*diff <= 0)
+		return e;
+
+	if (de_is_last(e)) {
+		*diff = 1;
+		return e;
+	}
+	goto next;
+}
+
+/*
+ * hdr_insert_de
+ *
+ * inserts an index entry into the buffer.
+ * 'before' should be a pointer previously returned from hdr_find_e
+ */
+static struct NTFS_DE *hdr_insert_de(const struct ntfs_index *indx,
+				     struct INDEX_HDR *hdr,
+				     const struct NTFS_DE *de,
+				     struct NTFS_DE *before, const void *ctx)
+{
+	int diff;
+	size_t off = PtrOffset(hdr, before);
+	u32 used = le32_to_cpu(hdr->used);
+	u32 total = le32_to_cpu(hdr->total);
+	u16 de_size = le16_to_cpu(de->size);
+
+	/* First, check to see if there's enough room */
+	if (used + de_size > total)
+		return NULL;
+
+	/* We know there's enough space, so we know we'll succeed. */
+	if (before) {
+		/* Check that before is inside Index */
+		if (off >= used || off < le32_to_cpu(hdr->de_off) ||
+		    off + le16_to_cpu(before->size) > total) {
+			return NULL;
+		}
+		goto ok;
+	}
+	/* No insert point is applied. Get it manually */
+	before = hdr_find_e(indx, hdr, de + 1, le16_to_cpu(de->key_size), ctx,
+			    &diff);
+	if (!before)
+		return NULL;
+	off = PtrOffset(hdr, before);
+
+ok:
+	/* Now we just make room for the entry and jam it in. */
+	memmove(Add2Ptr(before, de_size), before, used - off);
+
+	hdr->used = cpu_to_le32(used + de_size);
+	memcpy(before, de, de_size);
+
+	return before;
+}
+
+/*
+ * hdr_delete_de
+ *
+ * removes an entry from the index buffer
+ */
+static inline struct NTFS_DE *hdr_delete_de(struct INDEX_HDR *hdr,
+					    struct NTFS_DE *re)
+{
+	u32 used = le32_to_cpu(hdr->used);
+	u16 esize = le16_to_cpu(re->size);
+	u32 off = PtrOffset(hdr, re);
+	int bytes = used - (off + esize);
+
+	if (off >= used || esize < sizeof(struct NTFS_DE) ||
+	    bytes < sizeof(struct NTFS_DE))
+		return NULL;
+
+	hdr->used = cpu_to_le32(used - esize);
+	memmove(re, Add2Ptr(re, esize), bytes);
+
+	return re;
+}
+
+void indx_clear(struct ntfs_index *indx)
+{
+	run_close(&indx->alloc_run);
+	run_close(&indx->bitmap_run);
+}
+
+int indx_init(struct ntfs_index *indx, struct ntfs_sb_info *sbi,
+	      const struct ATTRIB *attr, enum index_mutex_classed type)
+{
+	u32 t32;
+	const struct INDEX_ROOT *root = resident_data(attr);
+
+	/* Check root fields */
+	if (!root->index_block_clst)
+		return -EINVAL;
+
+	indx->type = type;
+	indx->idx2vbn_bits = __ffs(root->index_block_clst);
+
+	t32 = le32_to_cpu(root->index_block_size);
+	indx->index_bits = blksize_bits(t32);
+
+	/* Check index record size */
+	if (t32 < sbi->cluster_size) {
+		/* index record is smaller than a cluster, use 512 blocks */
+		if (t32 != root->index_block_clst * SECTOR_SIZE)
+			return -EINVAL;
+
+		/* Check alignment to a cluster */
+		if ((sbi->cluster_size >> SECTOR_SHIFT) &
+		    (root->index_block_clst - 1)) {
+			return -EINVAL;
+		}
+
+		indx->vbn2vbo_bits = SECTOR_SHIFT;
+	} else {
+		/* index record must be a multiple of cluster size */
+		if (t32 != root->index_block_clst << sbi->cluster_bits)
+			return -EINVAL;
+
+		indx->vbn2vbo_bits = sbi->cluster_bits;
+	}
+
+	init_rwsem(&indx->run_lock);
+
+	indx->cmp = get_cmp_func(root);
+	return indx->cmp ? 0 : -EINVAL;
+}
+
+static struct indx_node *indx_new(struct ntfs_index *indx,
+				  struct ntfs_inode *ni, CLST vbn,
+				  const __le64 *sub_vbn)
+{
+	int err;
+	struct NTFS_DE *e;
+	struct indx_node *r;
+	struct INDEX_HDR *hdr;
+	struct INDEX_BUFFER *index;
+	u64 vbo = (u64)vbn << indx->vbn2vbo_bits;
+	u32 bytes = 1u << indx->index_bits;
+	u16 fn;
+	u32 eo;
+
+	r = ntfs_zalloc(sizeof(struct indx_node));
+	if (!r)
+		return ERR_PTR(-ENOMEM);
+
+	index = ntfs_zalloc(bytes);
+	if (!index) {
+		ntfs_free(r);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	err = ntfs_get_bh(ni->mi.sbi, &indx->alloc_run, vbo, bytes, &r->nb);
+
+	if (err) {
+		ntfs_free(index);
+		ntfs_free(r);
+		return ERR_PTR(err);
+	}
+
+	/* Create header */
+	index->rhdr.sign = NTFS_INDX_SIGNATURE;
+	index->rhdr.fix_off = cpu_to_le16(sizeof(struct INDEX_BUFFER)); // 0x28
+	fn = (bytes >> SECTOR_SHIFT) + 1; // 9
+	index->rhdr.fix_num = cpu_to_le16(fn);
+	index->vbn = cpu_to_le64(vbn);
+	hdr = &index->ihdr;
+	eo = QuadAlign(sizeof(struct INDEX_BUFFER) + fn * sizeof(short));
+	hdr->de_off = cpu_to_le32(eo);
+
+	e = Add2Ptr(hdr, eo);
+
+	if (sub_vbn) {
+		e->flags = NTFS_IE_LAST | NTFS_IE_HAS_SUBNODES;
+		e->size = cpu_to_le16(sizeof(struct NTFS_DE) + sizeof(u64));
+		hdr->used =
+			cpu_to_le32(eo + sizeof(struct NTFS_DE) + sizeof(u64));
+		de_set_vbn_le(e, *sub_vbn);
+		hdr->flags = 1;
+	} else {
+		e->size = cpu_to_le16(sizeof(struct NTFS_DE));
+		hdr->used = cpu_to_le32(eo + sizeof(struct NTFS_DE));
+		e->flags = NTFS_IE_LAST;
+	}
+
+	hdr->total = cpu_to_le32(bytes - offsetof(struct INDEX_BUFFER, ihdr));
+
+	r->index = index;
+	return r;
+}
+
+struct INDEX_ROOT *indx_get_root(struct ntfs_index *indx, struct ntfs_inode *ni,
+				 struct ATTRIB **attr, struct mft_inode **mi)
+{
+	struct ATTR_LIST_ENTRY *le = NULL;
+	struct ATTRIB *a;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+
+	a = ni_find_attr(ni, NULL, &le, ATTR_ROOT, in->name, in->name_len, NULL,
+			 mi);
+	if (!a)
+		return NULL;
+
+	if (attr)
+		*attr = a;
+
+	return resident_data_ex(a, sizeof(struct INDEX_ROOT));
+}
+
+static int indx_write(struct ntfs_index *indx, struct ntfs_inode *ni,
+		      struct indx_node *node, int sync)
+{
+	struct INDEX_BUFFER *ib = node->index;
+
+	return ntfs_write_bh(ni->mi.sbi, &ib->rhdr, &node->nb, sync);
+}
+
+/*
+ * if ntfs_readdir calls this function
+ * inode is shared locked and no ni_lock
+ * use rw_semaphore for read/write access to alloc_run
+ */
+int indx_read(struct ntfs_index *indx, struct ntfs_inode *ni, CLST vbn,
+	      struct indx_node **node)
+{
+	int err;
+	struct INDEX_BUFFER *ib;
+	struct runs_tree *run = &indx->alloc_run;
+	struct rw_semaphore *lock = &indx->run_lock;
+	u64 vbo = (u64)vbn << indx->vbn2vbo_bits;
+	u32 bytes = 1u << indx->index_bits;
+	struct indx_node *in = *node;
+	const struct INDEX_NAMES *name;
+
+	if (!in) {
+		in = ntfs_zalloc(sizeof(struct indx_node));
+		if (!in)
+			return -ENOMEM;
+	} else {
+		nb_put(&in->nb);
+	}
+
+	ib = in->index;
+	if (!ib) {
+		ib = ntfs_malloc(bytes);
+		if (!ib) {
+			err = -ENOMEM;
+			goto out;
+		}
+	}
+
+	down_read(lock);
+	err = ntfs_read_bh(ni->mi.sbi, run, vbo, &ib->rhdr, bytes, &in->nb);
+	up_read(lock);
+	if (!err)
+		goto ok;
+
+	if (err == -E_NTFS_FIXUP)
+		goto ok;
+
+	if (err != -ENOENT)
+		goto out;
+
+	name = &s_index_names[indx->type];
+	down_write(lock);
+	err = attr_load_runs_range(ni, ATTR_ALLOC, name->name, name->name_len,
+				   run, vbo, vbo + bytes);
+	up_write(lock);
+	if (err)
+		goto out;
+
+	down_read(lock);
+	err = ntfs_read_bh(ni->mi.sbi, run, vbo, &ib->rhdr, bytes, &in->nb);
+	up_read(lock);
+	if (err == -E_NTFS_FIXUP)
+		goto ok;
+
+	if (err)
+		goto out;
+
+ok:
+	if (err == -E_NTFS_FIXUP) {
+		ntfs_write_bh(ni->mi.sbi, &ib->rhdr, &in->nb, 0);
+		err = 0;
+	}
+
+	in->index = ib;
+	*node = in;
+
+out:
+	if (ib != in->index)
+		ntfs_free(ib);
+
+	if (*node != in) {
+		nb_put(&in->nb);
+		ntfs_free(in);
+	}
+
+	return err;
+}
+
+/*
+ * indx_find
+ *
+ * scans NTFS directory for given entry
+ */
+int indx_find(struct ntfs_index *indx, struct ntfs_inode *ni,
+	      const struct INDEX_ROOT *root, const void *key, size_t key_len,
+	      const void *ctx, int *diff, struct NTFS_DE **entry,
+	      struct ntfs_fnd *fnd)
+{
+	int err;
+	struct NTFS_DE *e;
+	const struct INDEX_HDR *hdr;
+	struct indx_node *node;
+
+	if (!root)
+		root = indx_get_root(&ni->dir, ni, NULL, NULL);
+
+	if (!root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	hdr = &root->ihdr;
+
+	/* Check cache */
+	e = fnd->level ? fnd->de[fnd->level - 1] : fnd->root_de;
+	if (e && !de_is_last(e) &&
+	    !(*indx->cmp)(key, key_len, e + 1, le16_to_cpu(e->key_size), ctx)) {
+		*entry = e;
+		*diff = 0;
+		return 0;
+	}
+
+	/* Soft finder reset */
+	fnd_clear(fnd);
+
+	/* Lookup entry that is <= to the search value */
+	e = hdr_find_e(indx, hdr, key, key_len, ctx, diff);
+	if (!e)
+		return -EINVAL;
+
+	if (fnd)
+		fnd->root_de = e;
+
+	err = 0;
+
+	for (;;) {
+		node = NULL;
+		if (*diff >= 0 || !de_has_vcn_ex(e)) {
+			*entry = e;
+			goto out;
+		}
+
+		/* Read next level. */
+		err = indx_read(indx, ni, de_get_vbn(e), &node);
+		if (err)
+			goto out;
+
+		/* Lookup entry that is <= to the search value */
+		e = hdr_find_e(indx, &node->index->ihdr, key, key_len, ctx,
+			       diff);
+		if (!e) {
+			err = -EINVAL;
+			put_indx_node(node);
+			goto out;
+		}
+
+		fnd_push(fnd, node, e);
+	}
+
+out:
+	return err;
+}
+
+int indx_find_sort(struct ntfs_index *indx, struct ntfs_inode *ni,
+		   const struct INDEX_ROOT *root, struct NTFS_DE **entry,
+		   struct ntfs_fnd *fnd)
+{
+	int err;
+	struct indx_node *n = NULL;
+	struct NTFS_DE *e;
+	size_t iter = 0;
+	int level = fnd->level;
+
+	if (!*entry) {
+		/* Start find */
+		e = hdr_first_de(&root->ihdr);
+		if (!e)
+			return 0;
+		fnd_clear(fnd);
+		fnd->root_de = e;
+	} else if (!level) {
+		if (de_is_last(fnd->root_de)) {
+			*entry = NULL;
+			return 0;
+		}
+
+		e = hdr_next_de(&root->ihdr, fnd->root_de);
+		if (!e)
+			return -EINVAL;
+		fnd->root_de = e;
+	} else {
+		n = fnd->nodes[level - 1];
+		e = fnd->de[level - 1];
+
+		if (de_is_last(e))
+			goto pop_level;
+
+		e = hdr_next_de(&n->index->ihdr, e);
+		if (!e)
+			return -EINVAL;
+
+		fnd->de[level - 1] = e;
+	}
+
+	/* Just to avoid tree cycle */
+next_iter:
+	if (iter++ >= 1000)
+		return -EINVAL;
+
+	while (de_has_vcn_ex(e)) {
+		if (le16_to_cpu(e->size) <
+		    sizeof(struct NTFS_DE) + sizeof(u64)) {
+			if (n) {
+				fnd_pop(fnd);
+				ntfs_free(n);
+			}
+			return -EINVAL;
+		}
+
+		/* Read next level */
+		err = indx_read(indx, ni, de_get_vbn(e), &n);
+		if (err)
+			return err;
+
+		/* Try next level */
+		e = hdr_first_de(&n->index->ihdr);
+		if (!e) {
+			ntfs_free(n);
+			return -EINVAL;
+		}
+
+		fnd_push(fnd, n, e);
+	}
+
+	if (le16_to_cpu(e->size) > sizeof(struct NTFS_DE)) {
+		*entry = e;
+		return 0;
+	}
+
+pop_level:
+	for (;;) {
+		if (!de_is_last(e))
+			goto next_iter;
+
+		/* Pop one level */
+		if (n) {
+			fnd_pop(fnd);
+			ntfs_free(n);
+		}
+
+		level = fnd->level;
+
+		if (level) {
+			n = fnd->nodes[level - 1];
+			e = fnd->de[level - 1];
+		} else if (fnd->root_de) {
+			n = NULL;
+			e = fnd->root_de;
+			fnd->root_de = NULL;
+		} else {
+			*entry = NULL;
+			return 0;
+		}
+
+		if (le16_to_cpu(e->size) > sizeof(struct NTFS_DE)) {
+			*entry = e;
+			if (!fnd->root_de)
+				fnd->root_de = e;
+			return 0;
+		}
+	}
+}
+
+int indx_find_raw(struct ntfs_index *indx, struct ntfs_inode *ni,
+		  const struct INDEX_ROOT *root, struct NTFS_DE **entry,
+		  size_t *off, struct ntfs_fnd *fnd)
+{
+	int err;
+	struct indx_node *n = NULL;
+	struct NTFS_DE *e = NULL;
+	struct NTFS_DE *e2;
+	size_t bit;
+	CLST next_used_vbn;
+	CLST next_vbn;
+	u32 record_size = ni->mi.sbi->record_size;
+
+	/* Use non sorted algorithm */
+	if (!*entry) {
+		/* This is the first call */
+		e = hdr_first_de(&root->ihdr);
+		if (!e)
+			return 0;
+		fnd_clear(fnd);
+		fnd->root_de = e;
+
+		/* The first call with setup of initial element */
+		if (*off >= record_size) {
+			next_vbn = (((*off - record_size) >> indx->index_bits))
+				   << indx->idx2vbn_bits;
+			/* jump inside cycle 'for'*/
+			goto next;
+		}
+
+		/* Start enumeration from root */
+		*off = 0;
+	} else if (!fnd->root_de)
+		return -EINVAL;
+
+	for (;;) {
+		/* Check if current entry can be used */
+		if (e && le16_to_cpu(e->size) > sizeof(struct NTFS_DE))
+			goto ok;
+
+		if (!fnd->level) {
+			/* Continue to enumerate root */
+			if (!de_is_last(fnd->root_de)) {
+				e = hdr_next_de(&root->ihdr, fnd->root_de);
+				if (!e)
+					return -EINVAL;
+				fnd->root_de = e;
+				continue;
+			}
+
+			/* Start to enumerate indexes from 0 */
+			next_vbn = 0;
+		} else {
+			/* Continue to enumerate indexes */
+			e2 = fnd->de[fnd->level - 1];
+
+			n = fnd->nodes[fnd->level - 1];
+
+			if (!de_is_last(e2)) {
+				e = hdr_next_de(&n->index->ihdr, e2);
+				if (!e)
+					return -EINVAL;
+				fnd->de[fnd->level - 1] = e;
+				continue;
+			}
+
+			/* Continue with next index */
+			next_vbn = le64_to_cpu(n->index->vbn) +
+				   root->index_block_clst;
+		}
+
+next:
+		/* Release current index */
+		if (n) {
+			fnd_pop(fnd);
+			put_indx_node(n);
+			n = NULL;
+		}
+
+		/* Skip all free indexes */
+		bit = next_vbn >> indx->idx2vbn_bits;
+		err = indx_used_bit(indx, ni, &bit);
+		if (err == -ENOENT || bit == MINUS_ONE_T) {
+			/* No used indexes */
+			*entry = NULL;
+			return 0;
+		}
+
+		next_used_vbn = bit << indx->idx2vbn_bits;
+
+		/* Read buffer into memory */
+		err = indx_read(indx, ni, next_used_vbn, &n);
+		if (err)
+			return err;
+
+		e = hdr_first_de(&n->index->ihdr);
+		fnd_push(fnd, n, e);
+		if (!e)
+			return -EINVAL;
+	}
+
+ok:
+	/* return offset to restore enumerator if necessary */
+	if (!n) {
+		/* 'e' points in root */
+		*off = PtrOffset(&root->ihdr, e);
+	} else {
+		/* 'e' points in index */
+		*off = (le64_to_cpu(n->index->vbn) << indx->vbn2vbo_bits) +
+		       record_size + PtrOffset(&n->index->ihdr, e);
+	}
+
+	*entry = e;
+	return 0;
+}
+
+/*
+ * indx_create_allocate
+ *
+ * create "Allocation + Bitmap" attributes
+ */
+static int indx_create_allocate(struct ntfs_index *indx, struct ntfs_inode *ni,
+				CLST *vbn)
+{
+	int err = -ENOMEM;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct ATTRIB *bitmap;
+	struct ATTRIB *alloc;
+	u32 data_size = 1u << indx->index_bits;
+	u32 alloc_size = ntfs_up_cluster(sbi, data_size);
+	CLST len = alloc_size >> sbi->cluster_bits;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+	CLST alen;
+	struct runs_tree run;
+
+	run_init(&run);
+
+	err = attr_allocate_clusters(sbi, &run, 0, 0, len, NULL, 0, &alen, 0,
+				     NULL);
+	if (err)
+		goto out;
+
+	err = ni_insert_nonresident(ni, ATTR_ALLOC, in->name, in->name_len,
+				    &run, 0, len, 0, &alloc, NULL);
+	if (err)
+		goto out1;
+
+	alloc->nres.valid_size = alloc->nres.data_size = cpu_to_le64(data_size);
+
+	err = ni_insert_resident(ni, bitmap_size(1), ATTR_BITMAP, in->name,
+				 in->name_len, &bitmap, NULL);
+	if (err)
+		goto out2;
+
+	if (in->name == I30_NAME) {
+		ni->vfs_inode.i_size = data_size;
+		inode_set_bytes(&ni->vfs_inode, alloc_size);
+	}
+
+	memcpy(&indx->alloc_run, &run, sizeof(run));
+
+	*vbn = 0;
+
+	return 0;
+
+out2:
+	mi_remove_attr(&ni->mi, alloc);
+
+out1:
+	run_deallocate(sbi, &run, false);
+
+out:
+	return err;
+}
+
+/*
+ * indx_add_allocate
+ *
+ * add clusters to index
+ */
+static int indx_add_allocate(struct ntfs_index *indx, struct ntfs_inode *ni,
+			     CLST *vbn)
+{
+	int err;
+	size_t bit;
+	u64 data_size, alloc_size;
+	u64 bmp_size, bmp_size_v;
+	struct ATTRIB *bmp, *alloc;
+	struct mft_inode *mi;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+
+	err = indx_find_free(indx, ni, &bit, &bmp);
+	if (err)
+		goto out1;
+
+	if (bit != MINUS_ONE_T) {
+		bmp = NULL;
+	} else {
+		if (bmp->non_res) {
+			bmp_size = le64_to_cpu(bmp->nres.data_size);
+			bmp_size_v = le64_to_cpu(bmp->nres.valid_size);
+		} else {
+			bmp_size = bmp_size_v = le32_to_cpu(bmp->res.data_size);
+		}
+
+		bit = bmp_size << 3;
+	}
+
+	data_size = (u64)(bit + 1) << indx->index_bits;
+	alloc_size = ntfs_up_cluster(ni->mi.sbi, data_size);
+
+	if (bmp) {
+		/* Increase bitmap */
+		err = attr_set_size(ni, ATTR_BITMAP, in->name, in->name_len,
+				    &indx->bitmap_run, bitmap_size(bit + 1),
+				    NULL, true, NULL);
+		if (err)
+			goto out1;
+	}
+
+	alloc = ni_find_attr(ni, NULL, NULL, ATTR_ALLOC, in->name, in->name_len,
+			     NULL, &mi);
+	if (!alloc) {
+		if (bmp)
+			goto out2;
+		goto out1;
+	}
+
+	/* Increase allocation */
+	err = attr_set_size(ni, ATTR_ALLOC, in->name, in->name_len,
+			    &indx->alloc_run, data_size, &data_size, true,
+			    NULL);
+	if (err) {
+		if (bmp)
+			goto out2;
+		goto out1;
+	}
+
+	*vbn = bit << indx->idx2vbn_bits;
+
+	return 0;
+
+out2:
+	/* Ops (no space?) */
+	attr_set_size(ni, ATTR_BITMAP, in->name, in->name_len,
+		      &indx->bitmap_run, bmp_size, &bmp_size_v, false, NULL);
+
+out1:
+	return err;
+}
+
+/*
+ * indx_insert_into_root
+ *
+ * attempts to insert an entry into the index root
+ * If necessary, it will twiddle the index b-tree.
+ */
+static int indx_insert_into_root(struct ntfs_index *indx, struct ntfs_inode *ni,
+				 const struct NTFS_DE *new_de,
+				 struct NTFS_DE *root_de, const void *ctx,
+				 struct ntfs_fnd *fnd)
+{
+	int err = 0;
+	struct NTFS_DE *e, *e0, *re;
+	struct mft_inode *mi;
+	struct ATTRIB *attr;
+	struct MFT_REC *rec;
+	struct INDEX_HDR *hdr;
+	struct indx_node *n;
+	CLST new_vbn;
+	__le64 *sub_vbn, t_vbn;
+	u16 new_de_size;
+	u32 hdr_used, hdr_total, asize, used, aoff, to_move;
+	u32 root_size, new_root_size;
+	struct ntfs_sb_info *sbi;
+	char *next;
+	int ds_root;
+	struct INDEX_ROOT *root, *a_root = NULL;
+
+	/* Get the record this root placed in */
+	root = indx_get_root(indx, ni, &attr, &mi);
+	if (!root)
+		goto out;
+
+	/*
+	 * Try easy case:
+	 * hdr_insert_de will succeed if there's room the root for the new entry.
+	 */
+	hdr = &root->ihdr;
+	sbi = ni->mi.sbi;
+	rec = mi->mrec;
+	aoff = PtrOffset(rec, attr);
+	used = le32_to_cpu(rec->used);
+	new_de_size = le16_to_cpu(new_de->size);
+	hdr_used = le32_to_cpu(hdr->used);
+	hdr_total = le32_to_cpu(hdr->total);
+	asize = le32_to_cpu(attr->size);
+	next = Add2Ptr(attr, asize);
+	root_size = le32_to_cpu(attr->res.data_size);
+
+	ds_root = new_de_size + hdr_used - hdr_total;
+
+	if (used + ds_root < sbi->max_bytes_per_attr) {
+		/* make a room for new elements */
+		mi_resize_attr(mi, attr, ds_root);
+		hdr->total = cpu_to_le32(hdr_total + ds_root);
+		e = hdr_insert_de(indx, hdr, new_de, root_de, ctx);
+		WARN_ON(!e);
+		fnd_clear(fnd);
+		fnd->root_de = e;
+
+		return 0;
+	}
+
+	/* Make a copy of root attribute to restore if error */
+	a_root = ntfs_memdup(attr, asize);
+	if (!a_root) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	/* copy all the non-end entries from the index root to the new buffer.*/
+	to_move = 0;
+	e0 = hdr_first_de(hdr);
+
+	/* Calculate the size to copy */
+	for (e = e0;; e = hdr_next_de(hdr, e)) {
+		if (!e) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		if (de_is_last(e))
+			break;
+		to_move += le16_to_cpu(e->size);
+	}
+
+	n = NULL;
+	if (!to_move) {
+		re = NULL;
+	} else {
+		re = ntfs_memdup(e0, to_move);
+		if (!re) {
+			err = -ENOMEM;
+			goto out;
+		}
+	}
+
+	sub_vbn = NULL;
+	if (de_has_vcn(e)) {
+		t_vbn = de_get_vbn_le(e);
+		sub_vbn = &t_vbn;
+	}
+
+	new_root_size = sizeof(struct INDEX_ROOT) + sizeof(struct NTFS_DE) +
+			sizeof(u64);
+	ds_root = new_root_size - root_size;
+
+	if (ds_root > 0 && used + ds_root > sbi->max_bytes_per_attr) {
+		/* make root external */
+		err = -EOPNOTSUPP;
+		goto out;
+	}
+
+	if (ds_root)
+		mi_resize_attr(mi, attr, ds_root);
+
+	/* Fill first entry (vcn will be set later) */
+	e = (struct NTFS_DE *)(root + 1);
+	memset(e, 0, sizeof(struct NTFS_DE));
+	e->size = cpu_to_le16(sizeof(struct NTFS_DE) + sizeof(u64));
+	e->flags = NTFS_IE_HAS_SUBNODES | NTFS_IE_LAST;
+
+	hdr->flags = 1;
+	hdr->used = hdr->total =
+		cpu_to_le32(new_root_size - offsetof(struct INDEX_ROOT, ihdr));
+
+	fnd->root_de = hdr_first_de(hdr);
+	mi->dirty = true;
+
+	/* Create alloc and bitmap attributes (if not) */
+	err = run_is_empty(&indx->alloc_run) ?
+		      indx_create_allocate(indx, ni, &new_vbn) :
+		      indx_add_allocate(indx, ni, &new_vbn);
+
+	/* layout of record may be changed, so rescan root */
+	root = indx_get_root(indx, ni, &attr, &mi);
+	if (!root) {
+		/* bug? */
+		ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+		err = -EINVAL;
+		goto out1;
+	}
+
+	if (err) {
+		/* restore root */
+		if (mi_resize_attr(mi, attr, -ds_root))
+			memcpy(attr, a_root, asize);
+		else {
+			/* bug? */
+			ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+		}
+		goto out1;
+	}
+
+	e = (struct NTFS_DE *)(root + 1);
+	*(__le64 *)(e + 1) = cpu_to_le64(new_vbn);
+	mi->dirty = true;
+
+	/* now we can create/format the new buffer and copy the entries into */
+	n = indx_new(indx, ni, new_vbn, sub_vbn);
+	if (IS_ERR(n)) {
+		err = PTR_ERR(n);
+		goto out1;
+	}
+
+	hdr = &n->index->ihdr;
+	hdr_used = le32_to_cpu(hdr->used);
+	hdr_total = le32_to_cpu(hdr->total);
+
+	/* Copy root entries into new buffer */
+	hdr_insert_head(hdr, re, to_move);
+
+	/* Update bitmap attribute */
+	indx_mark_used(indx, ni, new_vbn >> indx->idx2vbn_bits);
+
+	/* Check if we can insert new entry new index buffer */
+	if (hdr_used + new_de_size > hdr_total) {
+		/*
+		 * This occurs if mft record is the same or bigger than index
+		 * buffer. Move all root new index and have no space to add
+		 * new entry classic case when mft record is 1K and index
+		 * buffer 4K the problem should not occurs
+		 */
+		ntfs_free(re);
+		indx_write(indx, ni, n, 0);
+
+		put_indx_node(n);
+		fnd_clear(fnd);
+		err = indx_insert_entry(indx, ni, new_de, ctx, fnd);
+		goto out;
+	}
+
+	/*
+	 * Now root is a parent for new index buffer
+	 * Insert NewEntry a new buffer
+	 */
+	e = hdr_insert_de(indx, hdr, new_de, NULL, ctx);
+	if (!e) {
+		err = -EINVAL;
+		goto out1;
+	}
+	fnd_push(fnd, n, e);
+
+	/* Just write updates index into disk */
+	indx_write(indx, ni, n, 0);
+
+	n = NULL;
+
+out1:
+	ntfs_free(re);
+	if (n)
+		put_indx_node(n);
+
+out:
+	ntfs_free(a_root);
+	return err;
+}
+
+/*
+ * indx_insert_into_buffer
+ *
+ * attempts to insert an entry into an Index Allocation Buffer.
+ * If necessary, it will split the buffer.
+ */
+static int
+indx_insert_into_buffer(struct ntfs_index *indx, struct ntfs_inode *ni,
+			struct INDEX_ROOT *root, const struct NTFS_DE *new_de,
+			const void *ctx, int level, struct ntfs_fnd *fnd)
+{
+	int err;
+	const struct NTFS_DE *sp;
+	struct NTFS_DE *e, *de_t, *up_e = NULL;
+	struct indx_node *n2 = NULL;
+	struct indx_node *n1 = fnd->nodes[level];
+	struct INDEX_HDR *hdr1 = &n1->index->ihdr;
+	struct INDEX_HDR *hdr2;
+	u32 to_copy, used;
+	CLST new_vbn;
+	__le64 t_vbn, *sub_vbn;
+	u16 sp_size;
+
+	/* Try the most easy case */
+	e = fnd->level - 1 == level ? fnd->de[level] : NULL;
+	e = hdr_insert_de(indx, hdr1, new_de, e, ctx);
+	fnd->de[level] = e;
+	if (e) {
+		/* Just write updated index into disk */
+		indx_write(indx, ni, n1, 0);
+		return 0;
+	}
+
+	/*
+	 * No space to insert into buffer. Split it.
+	 * To split we:
+	 *  - Save split point ('cause index buffers will be changed)
+	 * - Allocate NewBuffer and copy all entries <= sp into new buffer
+	 * - Remove all entries (sp including) from TargetBuffer
+	 * - Insert NewEntry into left or right buffer (depending on sp <=>
+	 *     NewEntry)
+	 * - Insert sp into parent buffer (or root)
+	 * - Make sp a parent for new buffer
+	 */
+	sp = hdr_find_split(hdr1);
+	if (!sp)
+		return -EINVAL;
+
+	sp_size = le16_to_cpu(sp->size);
+	up_e = ntfs_malloc(sp_size + sizeof(u64));
+	if (!up_e)
+		return -ENOMEM;
+	memcpy(up_e, sp, sp_size);
+
+	if (!hdr1->flags) {
+		up_e->flags |= NTFS_IE_HAS_SUBNODES;
+		up_e->size = cpu_to_le16(sp_size + sizeof(u64));
+		sub_vbn = NULL;
+	} else {
+		t_vbn = de_get_vbn_le(up_e);
+		sub_vbn = &t_vbn;
+	}
+
+	/* Allocate on disk a new index allocation buffer. */
+	err = indx_add_allocate(indx, ni, &new_vbn);
+	if (err)
+		goto out;
+
+	/* Allocate and format memory a new index buffer */
+	n2 = indx_new(indx, ni, new_vbn, sub_vbn);
+	if (IS_ERR(n2)) {
+		err = PTR_ERR(n2);
+		goto out;
+	}
+
+	hdr2 = &n2->index->ihdr;
+
+	/* Make sp a parent for new buffer */
+	de_set_vbn(up_e, new_vbn);
+
+	/* copy all the entries <= sp into the new buffer. */
+	de_t = hdr_first_de(hdr1);
+	to_copy = PtrOffset(de_t, sp);
+	hdr_insert_head(hdr2, de_t, to_copy);
+
+	/* remove all entries (sp including) from hdr1 */
+	used = le32_to_cpu(hdr1->used) - to_copy - sp_size;
+	memmove(de_t, Add2Ptr(sp, sp_size), used - le32_to_cpu(hdr1->de_off));
+	hdr1->used = cpu_to_le32(used);
+
+	/* Insert new entry into left or right buffer (depending on sp <=> new_de) */
+	hdr_insert_de(indx,
+		      (*indx->cmp)(new_de + 1, le16_to_cpu(new_de->key_size),
+				   up_e + 1, le16_to_cpu(up_e->key_size),
+				   ctx) < 0 ?
+			      hdr2 :
+			      hdr1,
+		      new_de, NULL, ctx);
+
+	indx_mark_used(indx, ni, new_vbn >> indx->idx2vbn_bits);
+
+	indx_write(indx, ni, n1, 0);
+	indx_write(indx, ni, n2, 0);
+
+	put_indx_node(n2);
+
+	/*
+	 * we've finished splitting everybody, so we are ready to
+	 * insert the promoted entry into the parent.
+	 */
+	if (!level) {
+		/* Insert in root */
+		err = indx_insert_into_root(indx, ni, up_e, NULL, ctx, fnd);
+		if (err)
+			goto out;
+	} else {
+		/*
+		 * The target buffer's parent is another index buffer
+		 * TODO: Remove recursion
+		 */
+		err = indx_insert_into_buffer(indx, ni, root, up_e, ctx,
+					      level - 1, fnd);
+		if (err)
+			goto out;
+	}
+
+out:
+	ntfs_free(up_e);
+
+	return err;
+}
+
+/*
+ * indx_insert_entry
+ *
+ * inserts new entry into index
+ */
+int indx_insert_entry(struct ntfs_index *indx, struct ntfs_inode *ni,
+		      const struct NTFS_DE *new_de, const void *ctx,
+		      struct ntfs_fnd *fnd)
+{
+	int err;
+	int diff;
+	struct NTFS_DE *e;
+	struct ntfs_fnd *fnd_a = NULL;
+	struct INDEX_ROOT *root;
+
+	if (!fnd) {
+		fnd_a = fnd_get();
+		if (!fnd_a) {
+			err = -ENOMEM;
+			goto out1;
+		}
+		fnd = fnd_a;
+	}
+
+	root = indx_get_root(indx, ni, NULL, NULL);
+	if (!root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (fnd_is_empty(fnd)) {
+		/* Find the spot the tree where we want to insert the new entry. */
+		err = indx_find(indx, ni, root, new_de + 1,
+				le16_to_cpu(new_de->key_size), ctx, &diff, &e,
+				fnd);
+		if (err)
+			goto out;
+
+		if (!diff) {
+			err = -EEXIST;
+			goto out;
+		}
+	}
+
+	if (!fnd->level) {
+		/* The root is also a leaf, so we'll insert the new entry into it. */
+		err = indx_insert_into_root(indx, ni, new_de, fnd->root_de, ctx,
+					    fnd);
+		if (err)
+			goto out;
+	} else {
+		/* found a leaf buffer, so we'll insert the new entry into it.*/
+		err = indx_insert_into_buffer(indx, ni, root, new_de, ctx,
+					      fnd->level - 1, fnd);
+		if (err)
+			goto out;
+	}
+
+out:
+	fnd_put(fnd_a);
+out1:
+	return err;
+}
+
+/*
+ * indx_find_buffer
+ *
+ * locates a buffer the tree.
+ */
+static struct indx_node *indx_find_buffer(struct ntfs_index *indx,
+					  struct ntfs_inode *ni,
+					  const struct INDEX_ROOT *root,
+					  __le64 vbn, struct indx_node *n)
+{
+	int err;
+	const struct NTFS_DE *e;
+	struct indx_node *r;
+	const struct INDEX_HDR *hdr = n ? &n->index->ihdr : &root->ihdr;
+
+	/* Step 1: Scan one level */
+	for (e = hdr_first_de(hdr);; e = hdr_next_de(hdr, e)) {
+		if (!e)
+			return ERR_PTR(-EINVAL);
+
+		if (de_has_vcn(e) && vbn == de_get_vbn_le(e))
+			return n;
+
+		if (de_is_last(e))
+			break;
+	}
+
+	/* Step2: Do recursion */
+	e = Add2Ptr(hdr, le32_to_cpu(hdr->de_off));
+	for (;;) {
+		if (de_has_vcn_ex(e)) {
+			err = indx_read(indx, ni, de_get_vbn(e), &n);
+			if (err)
+				return ERR_PTR(err);
+
+			r = indx_find_buffer(indx, ni, root, vbn, n);
+			if (r)
+				return r;
+		}
+
+		if (de_is_last(e))
+			break;
+
+		e = Add2Ptr(e, le16_to_cpu(e->size));
+	}
+
+	return NULL;
+}
+
+/*
+ * indx_shrink
+ *
+ * deallocates unused tail indexes
+ */
+static int indx_shrink(struct ntfs_index *indx, struct ntfs_inode *ni,
+		       size_t bit)
+{
+	int err = 0;
+	u64 bpb, new_data;
+	size_t nbits;
+	struct ATTRIB *b;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	const struct INDEX_NAMES *in = &s_index_names[indx->type];
+
+	b = ni_find_attr(ni, NULL, &le, ATTR_BITMAP, in->name, in->name_len,
+			 NULL, NULL);
+
+	if (!b)
+		return -ENOENT;
+
+	if (!b->non_res) {
+		unsigned long pos;
+		const unsigned long *bm = resident_data(b);
+
+		nbits = le32_to_cpu(b->res.data_size) * 8;
+
+		if (bit >= nbits)
+			return 0;
+
+		pos = find_next_bit(bm, nbits, bit);
+		if (pos < nbits)
+			return 0;
+	} else {
+		size_t used = MINUS_ONE_T;
+
+		nbits = le64_to_cpu(b->nres.data_size) * 8;
+
+		if (bit >= nbits)
+			return 0;
+
+		err = scan_nres_bitmap(ni, b, indx, bit, &scan_for_used, &used);
+		if (err)
+			return err;
+
+		if (used != MINUS_ONE_T)
+			return 0;
+	}
+
+	new_data = (u64)bit << indx->index_bits;
+
+	err = attr_set_size(ni, ATTR_ALLOC, in->name, in->name_len,
+			    &indx->alloc_run, new_data, &new_data, false, NULL);
+	if (err)
+		return err;
+
+	bpb = bitmap_size(bit);
+	if (bpb * 8 == nbits)
+		return 0;
+
+	err = attr_set_size(ni, ATTR_BITMAP, in->name, in->name_len,
+			    &indx->bitmap_run, bpb, &bpb, false, NULL);
+
+	return err;
+}
+
+static int indx_free_children(struct ntfs_index *indx, struct ntfs_inode *ni,
+			      const struct NTFS_DE *e, bool trim)
+{
+	int err;
+	struct indx_node *n;
+	struct INDEX_HDR *hdr;
+	CLST vbn = de_get_vbn(e);
+	size_t i;
+
+	err = indx_read(indx, ni, vbn, &n);
+	if (err)
+		return err;
+
+	hdr = &n->index->ihdr;
+	/* First, recurse into the children, if any.*/
+	if (hdr_has_subnode(hdr)) {
+		for (e = hdr_first_de(hdr); e; e = hdr_next_de(hdr, e)) {
+			indx_free_children(indx, ni, e, false);
+			if (de_is_last(e))
+				break;
+		}
+	}
+
+	put_indx_node(n);
+
+	i = vbn >> indx->idx2vbn_bits;
+	/* We've gotten rid of the children; add this buffer to the free list. */
+	indx_mark_free(indx, ni, i);
+
+	if (!trim)
+		return 0;
+
+	/*
+	 * If there are no used indexes after current free index
+	 * then we can truncate allocation and bitmap
+	 * Use bitmap to estimate the case
+	 */
+	indx_shrink(indx, ni, i + 1);
+	return 0;
+}
+
+/*
+ * indx_get_entry_to_replace
+ *
+ * finds a replacement entry for a deleted entry
+ * always returns a node entry:
+ * NTFS_IE_HAS_SUBNODES is set the flags and the size includes the sub_vcn
+ */
+static int indx_get_entry_to_replace(struct ntfs_index *indx,
+				     struct ntfs_inode *ni,
+				     const struct NTFS_DE *de_next,
+				     struct NTFS_DE **de_to_replace,
+				     struct ntfs_fnd *fnd)
+{
+	int err;
+	int level = -1;
+	CLST vbn;
+	struct NTFS_DE *e, *te, *re;
+	struct indx_node *n;
+	struct INDEX_BUFFER *ib;
+
+	*de_to_replace = NULL;
+
+	/* Find first leaf entry down from de_next */
+	vbn = de_get_vbn(de_next);
+	for (;;) {
+		n = NULL;
+		err = indx_read(indx, ni, vbn, &n);
+		if (err)
+			goto out;
+
+		e = hdr_first_de(&n->index->ihdr);
+		fnd_push(fnd, n, e);
+
+		if (!de_is_last(e)) {
+			/*
+			 * This buffer is non-empty, so its first entry could be used as the
+			 * replacement entry.
+			 */
+			level = fnd->level - 1;
+		}
+
+		if (!de_has_vcn(e))
+			break;
+
+		/* This buffer is a node. Continue to go down */
+		vbn = de_get_vbn(e);
+	}
+
+	if (level == -1)
+		goto out;
+
+	n = fnd->nodes[level];
+	te = hdr_first_de(&n->index->ihdr);
+	/* Copy the candidate entry into the replacement entry buffer. */
+	re = ntfs_malloc(le16_to_cpu(te->size) + sizeof(u64));
+	if (!re) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	*de_to_replace = re;
+	memcpy(re, te, le16_to_cpu(te->size));
+
+	if (!de_has_vcn(re)) {
+		/*
+		 * The replacement entry we found doesn't have a sub_vcn. increase its size
+		 * to hold one.
+		 */
+		le16_add_cpu(&re->size, sizeof(u64));
+		re->flags |= NTFS_IE_HAS_SUBNODES;
+	} else {
+		/*
+		 * The replacement entry we found was a node entry, which means that all
+		 * its child buffers are empty. Return them to the free pool.
+		 */
+		indx_free_children(indx, ni, te, true);
+	}
+
+	/*
+	 * Expunge the replacement entry from its former location,
+	 * and then write that buffer.
+	 */
+	ib = n->index;
+	e = hdr_delete_de(&ib->ihdr, te);
+
+	fnd->de[level] = e;
+	indx_write(indx, ni, n, 0);
+
+	/* Check to see if this action created an empty leaf. */
+	if (ib_is_leaf(ib) && ib_is_empty(ib))
+		return 0;
+
+out:
+	fnd_clear(fnd);
+	return err;
+}
+
+/*
+ * indx_delete_entry
+ *
+ * deletes an entry from the index.
+ */
+int indx_delete_entry(struct ntfs_index *indx, struct ntfs_inode *ni,
+		      const void *key, u32 key_len, const void *ctx)
+{
+	int err, diff;
+	struct INDEX_ROOT *root;
+	struct INDEX_HDR *hdr;
+	struct ntfs_fnd *fnd, *fnd2;
+	struct INDEX_BUFFER *ib;
+	struct NTFS_DE *e, *re, *next, *prev, *me;
+	struct indx_node *n, *n2d = NULL;
+	__le64 sub_vbn;
+	int level, level2;
+	struct ATTRIB *attr;
+	struct mft_inode *mi;
+	u32 e_size, root_size, new_root_size;
+	size_t trim_bit;
+	const struct INDEX_NAMES *in;
+
+	fnd = fnd_get();
+	if (!fnd) {
+		err = -ENOMEM;
+		goto out2;
+	}
+
+	fnd2 = fnd_get();
+	if (!fnd2) {
+		err = -ENOMEM;
+		goto out1;
+	}
+
+	root = indx_get_root(indx, ni, &attr, &mi);
+	if (!root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Locate the entry to remove. */
+	err = indx_find(indx, ni, root, key, key_len, ctx, &diff, &e, fnd);
+	if (err)
+		goto out;
+
+	if (!e || diff) {
+		err = -ENOENT;
+		goto out;
+	}
+
+	level = fnd->level;
+
+	if (level) {
+		n = fnd->nodes[level - 1];
+		e = fnd->de[level - 1];
+		ib = n->index;
+		hdr = &ib->ihdr;
+	} else {
+		hdr = &root->ihdr;
+		e = fnd->root_de;
+		n = NULL;
+	}
+
+	e_size = le16_to_cpu(e->size);
+
+	if (!de_has_vcn_ex(e)) {
+		/* The entry to delete is a leaf, so we can just rip it out */
+		hdr_delete_de(hdr, e);
+
+		if (!level) {
+			hdr->total = hdr->used;
+
+			/* Shrink resident root attribute */
+			mi_resize_attr(mi, attr, 0 - e_size);
+			goto out;
+		}
+
+		indx_write(indx, ni, n, 0);
+
+		/*
+		 * Check to see if removing that entry made
+		 * the leaf empty.
+		 */
+		if (ib_is_leaf(ib) && ib_is_empty(ib)) {
+			fnd_pop(fnd);
+			fnd_push(fnd2, n, e);
+		}
+	} else {
+		/*
+		 * The entry we wish to delete is a node buffer, so we
+		 * have to find a replacement for it.
+		 */
+		next = de_get_next(e);
+
+		err = indx_get_entry_to_replace(indx, ni, next, &re, fnd2);
+		if (err)
+			goto out;
+
+		if (re) {
+			de_set_vbn_le(re, de_get_vbn_le(e));
+			hdr_delete_de(hdr, e);
+
+			err = level ? indx_insert_into_buffer(indx, ni, root,
+							      re, ctx,
+							      fnd->level - 1,
+							      fnd) :
+				      indx_insert_into_root(indx, ni, re, e,
+							    ctx, fnd);
+			ntfs_free(re);
+
+			if (err)
+				goto out;
+		} else {
+			/*
+			 * There is no replacement for the current entry.
+			 * This means that the subtree rooted at its node is empty,
+			 * and can be deleted, which turn means that the node can
+			 * just inherit the deleted entry sub_vcn
+			 */
+			indx_free_children(indx, ni, next, true);
+
+			de_set_vbn_le(next, de_get_vbn_le(e));
+			hdr_delete_de(hdr, e);
+			if (level) {
+				indx_write(indx, ni, n, 0);
+			} else {
+				hdr->total = hdr->used;
+
+				/* Shrink resident root attribute */
+				mi_resize_attr(mi, attr, 0 - e_size);
+			}
+		}
+	}
+
+	/* Delete a branch of tree */
+	if (!fnd2 || !fnd2->level)
+		goto out;
+
+	/* Reinit root 'cause it can be changed */
+	root = indx_get_root(indx, ni, &attr, &mi);
+	if (!root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	n2d = NULL;
+	sub_vbn = fnd2->nodes[0]->index->vbn;
+	level2 = 0;
+	level = fnd->level;
+
+	hdr = level ? &fnd->nodes[level - 1]->index->ihdr : &root->ihdr;
+
+	/* Scan current level */
+	for (e = hdr_first_de(hdr);; e = hdr_next_de(hdr, e)) {
+		if (!e) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		if (de_has_vcn(e) && sub_vbn == de_get_vbn_le(e))
+			break;
+
+		if (de_is_last(e)) {
+			e = NULL;
+			break;
+		}
+	}
+
+	if (!e) {
+		/* Do slow search from root */
+		struct indx_node *in;
+
+		fnd_clear(fnd);
+
+		in = indx_find_buffer(indx, ni, root, sub_vbn, NULL);
+		if (IS_ERR(in)) {
+			err = PTR_ERR(in);
+			goto out;
+		}
+
+		if (in)
+			fnd_push(fnd, in, NULL);
+	}
+
+	/* Merge fnd2 -> fnd */
+	for (level = 0; level < fnd2->level; level++) {
+		fnd_push(fnd, fnd2->nodes[level], fnd2->de[level]);
+		fnd2->nodes[level] = NULL;
+	}
+	fnd2->level = 0;
+
+	hdr = NULL;
+	for (level = fnd->level; level; level--) {
+		struct indx_node *in = fnd->nodes[level - 1];
+
+		ib = in->index;
+		if (ib_is_empty(ib)) {
+			sub_vbn = ib->vbn;
+		} else {
+			hdr = &ib->ihdr;
+			n2d = in;
+			level2 = level;
+			break;
+		}
+	}
+
+	if (!hdr)
+		hdr = &root->ihdr;
+
+	e = hdr_first_de(hdr);
+	if (!e) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (hdr != &root->ihdr || !de_is_last(e)) {
+		prev = NULL;
+		while (!de_is_last(e)) {
+			if (de_has_vcn(e) && sub_vbn == de_get_vbn_le(e))
+				break;
+			prev = e;
+			e = hdr_next_de(hdr, e);
+			if (!e) {
+				err = -EINVAL;
+				goto out;
+			}
+		}
+
+		if (sub_vbn != de_get_vbn_le(e)) {
+			/*
+			 * Didn't find the parent entry, although this buffer is the parent trail.
+			 * Something is corrupt.
+			 */
+			err = -EINVAL;
+			goto out;
+		}
+
+		if (de_is_last(e)) {
+			/*
+			 * Since we can't remove the end entry, we'll remove its
+			 * predecessor instead. This means we have to transfer the
+			 * predecessor's sub_vcn to the end entry.
+			 * Note: that this index block is not empty, so the
+			 * predecessor must exist
+			 */
+			if (!prev) {
+				err = -EINVAL;
+				goto out;
+			}
+
+			if (de_has_vcn(prev)) {
+				de_set_vbn_le(e, de_get_vbn_le(prev));
+			} else if (de_has_vcn(e)) {
+				le16_sub_cpu(&e->size, sizeof(u64));
+				e->flags &= ~NTFS_IE_HAS_SUBNODES;
+				le32_sub_cpu(&hdr->used, sizeof(u64));
+			}
+			e = prev;
+		}
+
+		/*
+		 * Copy the current entry into a temporary buffer (stripping off its
+		 * down-pointer, if any) and delete it from the current buffer or root,
+		 * as appropriate.
+		 */
+		e_size = le16_to_cpu(e->size);
+		me = ntfs_memdup(e, e_size);
+		if (!me) {
+			err = -ENOMEM;
+			goto out;
+		}
+
+		if (de_has_vcn(me)) {
+			me->flags &= ~NTFS_IE_HAS_SUBNODES;
+			le16_sub_cpu(&me->size, sizeof(u64));
+		}
+
+		hdr_delete_de(hdr, e);
+
+		if (hdr == &root->ihdr) {
+			level = 0;
+			hdr->total = hdr->used;
+
+			/* Shrink resident root attribute */
+			mi_resize_attr(mi, attr, 0 - e_size);
+		} else {
+			indx_write(indx, ni, n2d, 0);
+			level = level2;
+		}
+
+		/* Mark unused buffers as free */
+		trim_bit = -1;
+		for (; level < fnd->level; level++) {
+			ib = fnd->nodes[level]->index;
+			if (ib_is_empty(ib)) {
+				size_t k = le64_to_cpu(ib->vbn) >>
+					   indx->idx2vbn_bits;
+
+				indx_mark_free(indx, ni, k);
+				if (k < trim_bit)
+					trim_bit = k;
+			}
+		}
+
+		fnd_clear(fnd);
+		/*fnd->root_de = NULL;*/
+
+		/*
+		 * Re-insert the entry into the tree.
+		 * Find the spot the tree where we want to insert the new entry.
+		 */
+		err = indx_insert_entry(indx, ni, me, ctx, fnd);
+		ntfs_free(me);
+		if (err)
+			goto out;
+
+		if (trim_bit != -1)
+			indx_shrink(indx, ni, trim_bit);
+	} else {
+		/*
+		 * This tree needs to be collapsed down to an empty root.
+		 * Recreate the index root as an empty leaf and free all the bits the
+		 * index allocation bitmap.
+		 */
+		fnd_clear(fnd);
+		fnd_clear(fnd2);
+
+		in = &s_index_names[indx->type];
+
+		err = attr_set_size(ni, ATTR_ALLOC, in->name, in->name_len,
+				    &indx->alloc_run, 0, NULL, false, NULL);
+		err = ni_remove_attr(ni, ATTR_ALLOC, in->name, in->name_len,
+				     false, NULL);
+		run_close(&indx->alloc_run);
+
+		err = attr_set_size(ni, ATTR_BITMAP, in->name, in->name_len,
+				    &indx->bitmap_run, 0, NULL, false, NULL);
+		err = ni_remove_attr(ni, ATTR_BITMAP, in->name, in->name_len,
+				     false, NULL);
+		run_close(&indx->bitmap_run);
+
+		root = indx_get_root(indx, ni, &attr, &mi);
+		if (!root) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		root_size = le32_to_cpu(attr->res.data_size);
+		new_root_size =
+			sizeof(struct INDEX_ROOT) + sizeof(struct NTFS_DE);
+
+		if (new_root_size != root_size &&
+		    !mi_resize_attr(mi, attr, new_root_size - root_size)) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		/* Fill first entry */
+		e = (struct NTFS_DE *)(root + 1);
+		e->ref.low = 0;
+		e->ref.high = 0;
+		e->ref.seq = 0;
+		e->size = cpu_to_le16(sizeof(struct NTFS_DE));
+		e->flags = NTFS_IE_LAST; // 0x02
+		e->key_size = 0;
+		e->res = 0;
+
+		hdr = &root->ihdr;
+		hdr->flags = 0;
+		hdr->used = hdr->total = cpu_to_le32(
+			new_root_size - offsetof(struct INDEX_ROOT, ihdr));
+		mi->dirty = true;
+	}
+
+out:
+	fnd_put(fnd2);
+out1:
+	fnd_put(fnd);
+out2:
+	return err;
+}
+
+int indx_update_dup(struct ntfs_inode *ni, struct ntfs_sb_info *sbi,
+		    const struct ATTR_FILE_NAME *fname,
+		    const struct NTFS_DUP_INFO *dup, int sync)
+{
+	int err, diff;
+	struct NTFS_DE *e = NULL;
+	struct ATTR_FILE_NAME *e_fname;
+	struct ntfs_fnd *fnd;
+	struct INDEX_ROOT *root;
+	struct mft_inode *mi;
+	struct ntfs_index *indx = &ni->dir;
+
+	fnd = fnd_get();
+	if (!fnd) {
+		err = -ENOMEM;
+		goto out1;
+	}
+
+	root = indx_get_root(indx, ni, NULL, &mi);
+	if (!root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Find entries tree and on disk */
+	err = indx_find(indx, ni, root, fname, fname_full_size(fname), sbi,
+			&diff, &e, fnd);
+	if (err)
+		goto out;
+
+	if (!e) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (diff) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	e_fname = (struct ATTR_FILE_NAME *)(e + 1);
+
+	if (!memcmp(&e_fname->dup, dup, sizeof(*dup))) {
+		/* nothing to update in index! Try to avoid this call */
+		goto out;
+	}
+
+	memcpy(&e_fname->dup, dup, sizeof(*dup));
+
+	if (fnd->level) {
+		err = indx_write(indx, ni, fnd->nodes[fnd->level - 1], sync);
+	} else if (sync) {
+		mi->dirty = true;
+		err = mi_write(mi, 1);
+	} else {
+		mi->dirty = true;
+		mark_inode_dirty(&ni->vfs_inode);
+	}
+
+out:
+	fnd_put(fnd);
+
+out1:
+	return err;
+}
diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
new file mode 100644
index 000000000000..1ab2e500b8b0
--- /dev/null
+++ b/fs/ntfs3/inode.c
@@ -0,0 +1,2058 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ */
+
+#include <linux/blkdev.h>
+#include <linux/buffer_head.h>
+#include <linux/fs.h>
+#include <linux/iversion.h>
+#include <linux/mpage.h>
+#include <linux/namei.h>
+#include <linux/nls.h>
+#include <linux/uio.h>
+#include <linux/version.h>
+#include <linux/writeback.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+
+/*
+ * ntfs_read_mft
+ *
+ * reads record and parses MFT
+ */
+static struct inode *ntfs_read_mft(struct inode *inode,
+				   const struct cpu_str *name,
+				   const struct MFT_REF *ref)
+{
+	int err = 0;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	mode_t mode = 0;
+	struct ATTR_STD_INFO5 *std5 = NULL;
+	struct ATTR_LIST_ENTRY *le;
+	struct ATTRIB *attr;
+	bool is_match = false;
+	bool is_root = false;
+	bool is_dir;
+	unsigned long ino = inode->i_ino;
+	u32 rp_fa = 0, asize, t32;
+	u16 roff, rsize, names = 0;
+	const struct ATTR_FILE_NAME *fname = NULL;
+	const struct INDEX_ROOT *root;
+	struct REPARSE_DATA_BUFFER rp; // 0x18 bytes
+	u64 t64;
+	struct MFT_REC *rec;
+	struct runs_tree *run;
+
+	inode->i_op = NULL;
+
+	err = mi_init(&ni->mi, sbi, ino);
+	if (err)
+		goto out;
+
+	if (!sbi->mft.ni && ino == MFT_REC_MFT && !sb->s_root) {
+		t64 = sbi->mft.lbo >> sbi->cluster_bits;
+		t32 = bytes_to_cluster(sbi, MFT_REC_VOL * sbi->record_size);
+		sbi->mft.ni = ni;
+		init_rwsem(&ni->file.run_lock);
+
+		if (!run_add_entry(&ni->file.run, 0, t64, t32, true)) {
+			err = -ENOMEM;
+			goto out;
+		}
+	}
+
+	err = mi_read(&ni->mi, ino == MFT_REC_MFT);
+
+	if (err)
+		goto out;
+
+	rec = ni->mi.mrec;
+
+	if (sbi->flags & NTFS_FLAGS_LOG_REPLAYING) {
+		;
+	} else if (ref->seq != rec->seq) {
+		err = -EINVAL;
+		ntfs_err(sb, "MFT: r=%lx, expect seq=%x instead of %x!", ino,
+			 le16_to_cpu(ref->seq), le16_to_cpu(rec->seq));
+		goto out;
+	} else if (!is_rec_inuse(rec)) {
+		err = -EINVAL;
+		ntfs_err(sb, "Inode r=%x is not in use!", (u32)ino);
+		goto out;
+	}
+
+	if (le32_to_cpu(rec->total) != sbi->record_size) {
+		// bad inode?
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (!is_rec_base(rec))
+		goto Ok;
+
+	/* record should contain $I30 root */
+	is_dir = rec->flags & RECORD_FLAG_DIR;
+
+	inode->i_generation = le16_to_cpu(rec->seq);
+
+	/* Enumerate all struct Attributes MFT */
+	le = NULL;
+	attr = NULL;
+
+	/*
+	 * to reduce tab pressure use goto instead of
+	 * while( (attr = ni_enum_attr_ex(ni, attr, &le, NULL) ))
+	 */
+next_attr:
+	run = NULL;
+	err = -EINVAL;
+	attr = ni_enum_attr_ex(ni, attr, &le, NULL);
+	if (!attr)
+		goto end_enum;
+
+	if (le && le->vcn) {
+		/* This is non primary attribute segment. Ignore if not MFT */
+		if (ino != MFT_REC_MFT || attr->type != ATTR_DATA)
+			goto next_attr;
+
+		run = &ni->file.run;
+		asize = le32_to_cpu(attr->size);
+		goto attr_unpack_run;
+	}
+
+	roff = attr->non_res ? 0 : le16_to_cpu(attr->res.data_off);
+	rsize = attr->non_res ? 0 : le32_to_cpu(attr->res.data_size);
+	asize = le32_to_cpu(attr->size);
+
+	switch (attr->type) {
+	case ATTR_STD:
+		if (attr->non_res ||
+		    asize < sizeof(struct ATTR_STD_INFO) + roff ||
+		    rsize < sizeof(struct ATTR_STD_INFO))
+			goto out;
+
+		if (std5)
+			goto next_attr;
+
+		std5 = Add2Ptr(attr, roff);
+
+#ifdef STATX_BTIME
+		nt2kernel(std5->cr_time, &ni->i_crtime);
+#endif
+		nt2kernel(std5->a_time, &inode->i_atime);
+		nt2kernel(std5->c_time, &inode->i_ctime);
+		nt2kernel(std5->m_time, &inode->i_mtime);
+
+		ni->std_fa = std5->fa;
+
+		if (asize >= sizeof(struct ATTR_STD_INFO5) + roff &&
+		    rsize >= sizeof(struct ATTR_STD_INFO5))
+			ni->std_security_id = std5->security_id;
+		goto next_attr;
+
+	case ATTR_LIST:
+		if (attr->name_len || le || ino == MFT_REC_LOG)
+			goto out;
+
+		err = ntfs_load_attr_list(ni, attr);
+		if (err)
+			goto out;
+
+		le = NULL;
+		attr = NULL;
+		goto next_attr;
+
+	case ATTR_NAME:
+		if (attr->non_res || asize < SIZEOF_ATTRIBUTE_FILENAME + roff ||
+		    rsize < SIZEOF_ATTRIBUTE_FILENAME)
+			goto out;
+
+		fname = Add2Ptr(attr, roff);
+		if (fname->type == FILE_NAME_DOS)
+			goto next_attr;
+
+		names += 1;
+		if (name && name->len == fname->name_len &&
+		    !ntfs_cmp_names_cpu(name, (struct le_str *)&fname->name_len,
+					NULL, false))
+			is_match = true;
+
+		goto next_attr;
+
+	case ATTR_DATA:
+		if (is_dir) {
+			/* ignore data attribute in dir record */
+			goto next_attr;
+		}
+
+		if (ino == MFT_REC_BADCLUST && !attr->non_res)
+			goto next_attr;
+
+		if (attr->name_len &&
+		    ((ino != MFT_REC_BADCLUST || !attr->non_res ||
+		      attr->name_len != ARRAY_SIZE(BAD_NAME) ||
+		      memcmp(attr_name(attr), BAD_NAME, sizeof(BAD_NAME))) &&
+		     (ino != MFT_REC_SECURE || !attr->non_res ||
+		      attr->name_len != ARRAY_SIZE(SDS_NAME) ||
+		      memcmp(attr_name(attr), SDS_NAME, sizeof(SDS_NAME))))) {
+			/* file contains stream attribute. ignore it */
+			goto next_attr;
+		}
+
+		if (is_attr_sparsed(attr))
+			ni->std_fa |= FILE_ATTRIBUTE_SPARSE_FILE;
+		else
+			ni->std_fa &= ~FILE_ATTRIBUTE_SPARSE_FILE;
+
+		if (is_attr_compressed(attr))
+			ni->std_fa |= FILE_ATTRIBUTE_COMPRESSED;
+		else
+			ni->std_fa &= ~FILE_ATTRIBUTE_COMPRESSED;
+
+		if (is_attr_encrypted(attr))
+			ni->std_fa |= FILE_ATTRIBUTE_ENCRYPTED;
+		else
+			ni->std_fa &= ~FILE_ATTRIBUTE_ENCRYPTED;
+
+		if (!attr->non_res) {
+			ni->i_valid = inode->i_size = rsize;
+			inode_set_bytes(inode, rsize);
+			t32 = asize;
+		} else {
+			t32 = le16_to_cpu(attr->nres.run_off);
+		}
+
+		mode = S_IFREG | (0777 & sbi->options.fs_fmask_inv);
+
+		if (!attr->non_res) {
+			ni->ni_flags |= NI_FLAG_RESIDENT;
+			goto next_attr;
+		}
+
+		inode_set_bytes(inode, attr_ondisk_size(attr));
+
+		ni->i_valid = le64_to_cpu(attr->nres.valid_size);
+		inode->i_size = le64_to_cpu(attr->nres.data_size);
+		if (!attr->nres.alloc_size)
+			goto next_attr;
+
+		run = ino == MFT_REC_BITMAP ? &sbi->used.bitmap.run :
+					      &ni->file.run;
+		break;
+
+	case ATTR_ROOT:
+		if (attr->non_res)
+			goto out;
+
+		root = Add2Ptr(attr, roff);
+		is_root = true;
+
+		if (attr->name_len != ARRAY_SIZE(I30_NAME) ||
+		    memcmp(attr_name(attr), I30_NAME, sizeof(I30_NAME)))
+			goto next_attr;
+
+		if (root->type != ATTR_NAME ||
+		    root->rule != NTFS_COLLATION_TYPE_FILENAME)
+			goto out;
+
+		if (!is_dir)
+			goto next_attr;
+
+		ni->ni_flags |= NI_FLAG_DIR;
+
+		err = indx_init(&ni->dir, sbi, attr, INDEX_MUTEX_I30);
+		if (err)
+			goto out;
+
+		mode = sb->s_root ?
+			       (S_IFDIR | (0777 & sbi->options.fs_dmask_inv)) :
+			       (S_IFDIR | 0777);
+		goto next_attr;
+
+	case ATTR_ALLOC:
+		if (!is_root || attr->name_len != ARRAY_SIZE(I30_NAME) ||
+		    memcmp(attr_name(attr), I30_NAME, sizeof(I30_NAME)))
+			goto next_attr;
+
+		inode->i_size = le64_to_cpu(attr->nres.data_size);
+		ni->i_valid = le64_to_cpu(attr->nres.valid_size);
+		inode_set_bytes(inode, le64_to_cpu(attr->nres.alloc_size));
+
+		run = &ni->dir.alloc_run;
+		break;
+
+	case ATTR_BITMAP:
+		if (ino == MFT_REC_MFT) {
+			if (!attr->non_res)
+				goto out;
+#ifndef CONFIG_NTFS3_64BIT_CLUSTER
+			/* 0x20000000 = 2^32 / 8 */
+			if (le64_to_cpu(attr->nres.alloc_size) >= 0x20000000)
+				goto out;
+#endif
+			run = &sbi->mft.bitmap.run;
+			break;
+		} else if (is_dir && attr->name_len == ARRAY_SIZE(I30_NAME) &&
+			   !memcmp(attr_name(attr), I30_NAME,
+				   sizeof(I30_NAME)) &&
+			   attr->non_res) {
+			run = &ni->dir.bitmap_run;
+			break;
+		}
+		goto next_attr;
+
+	case ATTR_REPARSE:
+		if (attr->name_len)
+			goto next_attr;
+
+		rp_fa = ni_parse_reparse(ni, attr, &rp);
+		switch (rp_fa) {
+		case REPARSE_LINK:
+			if (!attr->non_res) {
+				inode->i_size = rsize;
+				inode_set_bytes(inode, rsize);
+				t32 = asize;
+			} else {
+				inode->i_size =
+					le64_to_cpu(attr->nres.data_size);
+				t32 = le16_to_cpu(attr->nres.run_off);
+			}
+
+			/* Looks like normal symlink */
+			ni->i_valid = inode->i_size;
+
+			/* Clear directory bit */
+			if (ni->ni_flags & NI_FLAG_DIR) {
+				indx_clear(&ni->dir);
+				memset(&ni->dir, 0, sizeof(ni->dir));
+				ni->ni_flags &= ~NI_FLAG_DIR;
+			} else {
+				run_close(&ni->file.run);
+			}
+			mode = S_IFLNK | 0777;
+			is_dir = false;
+			if (attr->non_res) {
+				run = &ni->file.run;
+				goto attr_unpack_run; // double break
+			}
+			break;
+
+		case REPARSE_COMPRESSED:
+			break;
+
+		case REPARSE_DEDUPLICATED:
+			break;
+		}
+		goto next_attr;
+
+	case ATTR_EA_INFO:
+		if (!attr->name_len &&
+		    resident_data_ex(attr, sizeof(struct EA_INFO)))
+			ni->ni_flags |= NI_FLAG_EA;
+		goto next_attr;
+
+	default:
+		goto next_attr;
+	}
+
+attr_unpack_run:
+	roff = le16_to_cpu(attr->nres.run_off);
+
+	t64 = le64_to_cpu(attr->nres.svcn);
+	err = run_unpack_ex(run, sbi, ino, t64, le64_to_cpu(attr->nres.evcn),
+			    t64, Add2Ptr(attr, roff), asize - roff);
+	if (err < 0)
+		goto out;
+	err = 0;
+	goto next_attr;
+
+end_enum:
+
+	if (!std5)
+		goto out;
+
+	if (!is_match && name) {
+		/* reuse rec as buffer for ascii name */
+		err = -ENOENT;
+		goto out;
+	}
+
+	if (std5->fa & FILE_ATTRIBUTE_READONLY)
+		mode &= ~0222;
+
+	/* Setup 'uid' and 'gid' */
+	inode->i_uid = sbi->options.fs_uid;
+	inode->i_gid = sbi->options.fs_gid;
+
+	if (!names) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (S_ISDIR(mode)) {
+		ni->std_fa |= FILE_ATTRIBUTE_DIRECTORY;
+
+		/*
+		 * dot and dot-dot should be included in count but was not
+		 * included in enumeration.
+		 * Usually a hard links to directories are disabled
+		 */
+		set_nlink(inode, 1);
+		inode->i_op = &ntfs_dir_inode_operations;
+		inode->i_fop = &ntfs_dir_operations;
+		ni->i_valid = 0;
+	} else if (S_ISLNK(mode)) {
+		ni->std_fa &= ~FILE_ATTRIBUTE_DIRECTORY;
+		inode->i_op = &ntfs_link_inode_operations;
+		inode->i_fop = NULL;
+		inode_nohighmem(inode); // ??
+		set_nlink(inode, names);
+	} else if (S_ISREG(mode)) {
+		ni->std_fa &= ~FILE_ATTRIBUTE_DIRECTORY;
+
+		set_nlink(inode, names);
+
+		inode->i_op = &ntfs_file_inode_operations;
+		inode->i_fop = &ntfs_file_operations;
+		inode->i_mapping->a_ops =
+			is_compressed(ni) ? &ntfs_aops_cmpr : &ntfs_aops;
+
+		if (ino != MFT_REC_MFT)
+			init_rwsem(&ni->file.run_lock);
+	} else if (fname && fname->home.low == cpu_to_le32(MFT_REC_EXTEND) &&
+		   fname->home.seq == cpu_to_le16(MFT_REC_EXTEND)) {
+		/* Records in $Extend are not a files or general directories */
+	} else {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if ((sbi->options.sys_immutable &&
+	     (std5->fa & FILE_ATTRIBUTE_SYSTEM)) &&
+	    !S_ISFIFO(mode) && !S_ISSOCK(mode) && !S_ISLNK(mode)) {
+		inode->i_flags |= S_IMMUTABLE;
+	} else {
+		inode->i_flags &= ~S_IMMUTABLE;
+	}
+
+	inode->i_mode = mode;
+	if (!(ni->ni_flags & NI_FLAG_EA)) {
+		/* if no xattr then no security (stored in xattr) */
+		inode->i_flags |= S_NOSEC;
+	}
+
+Ok:
+	if (ino == MFT_REC_MFT && !sb->s_root)
+		sbi->mft.ni = NULL;
+
+	unlock_new_inode(inode);
+
+	return inode;
+
+out:
+	if (ino == MFT_REC_MFT && !sb->s_root)
+		sbi->mft.ni = NULL;
+
+	iget_failed(inode);
+	return ERR_PTR(err);
+}
+
+/* returns 1 if match */
+static int ntfs_test_inode(struct inode *inode, void *data)
+{
+	struct MFT_REF *ref = data;
+
+	return ino_get(ref) == inode->i_ino;
+}
+
+static int ntfs_set_inode(struct inode *inode, void *data)
+{
+	const struct MFT_REF *ref = data;
+
+	inode->i_ino = ino_get(ref);
+	return 0;
+}
+
+struct inode *ntfs_iget5(struct super_block *sb, const struct MFT_REF *ref,
+			 const struct cpu_str *name)
+{
+	struct inode *inode;
+
+	inode = iget5_locked(sb, ino_get(ref), ntfs_test_inode, ntfs_set_inode,
+			     (void *)ref);
+	if (unlikely(!inode))
+		return ERR_PTR(-ENOMEM);
+
+	/* If this is a freshly allocated inode, need to read it now. */
+	if (inode->i_state & I_NEW)
+		inode = ntfs_read_mft(inode, name, ref);
+	else if (ref->seq != ntfs_i(inode)->mi.mrec->seq) {
+		/* inode overlaps? */
+		make_bad_inode(inode);
+	}
+
+	return inode;
+}
+
+enum get_block_ctx {
+	GET_BLOCK_GENERAL = 0,
+	GET_BLOCK_WRITE_BEGIN = 1,
+	GET_BLOCK_DIRECT_IO_R = 2,
+	GET_BLOCK_DIRECT_IO_W = 3,
+	GET_BLOCK_BMAP = 4,
+};
+
+static noinline int ntfs_get_block_vbo(struct inode *inode, u64 vbo,
+				       struct buffer_head *bh, int create,
+				       enum get_block_ctx ctx)
+{
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct page *page = bh->b_page;
+	u8 cluster_bits = sbi->cluster_bits;
+	u32 block_size = sb->s_blocksize;
+	u64 bytes, lbo, valid;
+	u32 off;
+	int err;
+	CLST vcn, lcn, len;
+	bool new;
+
+	/*clear previous state*/
+	clear_buffer_new(bh);
+	clear_buffer_uptodate(bh);
+
+	/* direct write uses 'create=0'*/
+	if (!create && vbo >= ni->i_valid) {
+		/* out of valid */
+		return 0;
+	}
+
+	if (vbo >= inode->i_size) {
+		/* out of size */
+		return 0;
+	}
+
+	if (is_resident(ni)) {
+		ni_lock(ni);
+		err = attr_data_read_resident(ni, page);
+		ni_unlock(ni);
+
+		if (!err)
+			set_buffer_uptodate(bh);
+		bh->b_size = block_size;
+		return err;
+	}
+
+	vcn = vbo >> cluster_bits;
+	off = vbo & sbi->cluster_mask;
+	new = false;
+
+	err = attr_data_get_block(ni, vcn, 1, &lcn, &len, create ? &new : NULL);
+	if (err)
+		goto out;
+
+	if (!len)
+		return 0;
+
+	bytes = ((u64)len << cluster_bits) - off;
+
+	if (lcn == SPARSE_LCN) {
+		if (!create) {
+			if (bh->b_size > bytes)
+				bh->b_size = bytes;
+
+			return 0;
+		}
+		WARN_ON(1);
+	}
+
+	if (new) {
+		set_buffer_new(bh);
+		if ((len << cluster_bits) > block_size)
+			ntfs_sparse_cluster(inode, page, vcn, len);
+	}
+
+	lbo = ((u64)lcn << cluster_bits) + off;
+
+	set_buffer_mapped(bh);
+	bh->b_bdev = sb->s_bdev;
+	bh->b_blocknr = lbo >> sb->s_blocksize_bits;
+
+	valid = ni->i_valid;
+
+	if (ctx == GET_BLOCK_DIRECT_IO_W) {
+		/*ntfs_direct_IO will update ni->i_valid */
+		if (vbo >= valid)
+			set_buffer_new(bh);
+	} else if (create) {
+		/*normal write*/
+		if (vbo >= valid) {
+			set_buffer_new(bh);
+			if (bytes > bh->b_size)
+				bytes = bh->b_size;
+			ni->i_valid = vbo + bytes;
+			mark_inode_dirty(inode);
+		}
+	} else if (valid >= inode->i_size) {
+		/* normal read of normal file*/
+	} else if (vbo >= valid) {
+		/* read out of valid data*/
+		/* should never be here 'cause already checked */
+		clear_buffer_mapped(bh);
+	} else if (vbo + bytes <= valid) {
+		/* normal read */
+	} else if (vbo + block_size <= valid) {
+		/* normal short read */
+		bytes = block_size;
+	} else {
+		/*
+		 * read across valid size: vbo < valid && valid < vbo + block_size
+		 */
+		u32 voff = valid - vbo;
+
+		bh->b_size = bytes = block_size;
+		off = vbo & (PAGE_SIZE - 1);
+		set_bh_page(bh, page, off);
+		ll_rw_block(REQ_OP_READ, 0, 1, &bh);
+		wait_on_buffer(bh);
+		/* Uhhuh. Read error. Complain and punt. */
+		if (!buffer_uptodate(bh)) {
+			err = -EIO;
+			goto out;
+		}
+		zero_user_segment(page, off + voff, off + block_size);
+	}
+
+	if (bh->b_size > bytes)
+		bh->b_size = bytes;
+
+#ifndef __LP64__
+	if (ctx == GET_BLOCK_DIRECT_IO_W || ctx == GET_BLOCK_DIRECT_IO_R) {
+		static_assert(sizeof(size_t) < sizeof(loff_t));
+		if (bytes > 0x40000000u)
+			bh->b_size = 0x40000000u;
+	}
+#endif
+
+	return 0;
+
+out:
+	return err;
+}
+
+int ntfs_get_block(struct inode *inode, sector_t vbn,
+		   struct buffer_head *bh_result, int create)
+{
+	return ntfs_get_block_vbo(inode, (u64)vbn << inode->i_blkbits,
+				  bh_result, create, GET_BLOCK_GENERAL);
+}
+
+static int ntfs_get_block_bmap(struct inode *inode, sector_t vsn,
+			       struct buffer_head *bh_result, int create)
+{
+	return ntfs_get_block_vbo(inode,
+				  (u64)vsn << inode->i_sb->s_blocksize_bits,
+				  bh_result, create, GET_BLOCK_BMAP);
+}
+
+static sector_t ntfs_bmap(struct address_space *mapping, sector_t block)
+{
+	return generic_block_bmap(mapping, block, ntfs_get_block_bmap);
+}
+
+static int ntfs_readpage(struct file *file, struct page *page)
+{
+	int err;
+	struct address_space *mapping = page->mapping;
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (is_resident(ni)) {
+		ni_lock(ni);
+		err = attr_data_read_resident(ni, page);
+		ni_unlock(ni);
+		if (err != E_NTFS_NONRESIDENT) {
+			unlock_page(page);
+			return err;
+		}
+	}
+
+	if (is_compressed(ni)) {
+		ni_lock(ni);
+		err = ni_readpage_cmpr(ni, page);
+		ni_unlock(ni);
+		return err;
+	}
+
+	/* normal + sparse files */
+	return mpage_readpage(page, ntfs_get_block);
+}
+
+static void ntfs_readahead(struct readahead_control *rac)
+{
+	struct address_space *mapping = rac->mapping;
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	u64 valid;
+	loff_t pos;
+
+	if (is_resident(ni)) {
+		/* no readahead for resident */
+		return;
+	}
+
+	if (is_compressed(ni)) {
+		/* no readahead for compressed */
+		return;
+	}
+
+	valid = ni->i_valid;
+	pos = readahead_pos(rac);
+
+	if (valid < i_size_read(inode) && pos <= valid &&
+	    valid < pos + readahead_length(rac)) {
+		/* range cross 'valid'. read it page by page */
+		return;
+	}
+
+	mpage_readahead(rac, ntfs_get_block);
+}
+
+static int ntfs_get_block_direct_IO_R(struct inode *inode, sector_t iblock,
+				      struct buffer_head *bh_result, int create)
+{
+	return ntfs_get_block_vbo(inode, (u64)iblock << inode->i_blkbits,
+				  bh_result, create, GET_BLOCK_DIRECT_IO_R);
+}
+
+static int ntfs_get_block_direct_IO_W(struct inode *inode, sector_t iblock,
+				      struct buffer_head *bh_result, int create)
+{
+	return ntfs_get_block_vbo(inode, (u64)iblock << inode->i_blkbits,
+				  bh_result, create, GET_BLOCK_DIRECT_IO_W);
+}
+
+static ssize_t ntfs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
+{
+	struct file *file = iocb->ki_filp;
+	struct address_space *mapping = file->f_mapping;
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	size_t count = iov_iter_count(iter);
+	loff_t vbo = iocb->ki_pos;
+	loff_t end = vbo + count;
+	int wr = iov_iter_rw(iter) & WRITE;
+	const struct iovec *iov = iter->iov;
+	unsigned long nr_segs = iter->nr_segs;
+	loff_t valid;
+	ssize_t ret;
+
+	if (is_resident(ni)) {
+		/*switch to buffered write*/
+		ret = 0;
+		goto out;
+	}
+
+	ret = blockdev_direct_IO(iocb, inode, iter,
+				 wr ? ntfs_get_block_direct_IO_W :
+				      ntfs_get_block_direct_IO_R);
+	valid = ni->i_valid;
+	if (wr) {
+		if (ret <= 0)
+			goto out;
+
+		vbo += ret;
+		if (vbo > valid && !S_ISBLK(inode->i_mode)) {
+			ni->i_valid = vbo;
+			mark_inode_dirty(inode);
+		}
+	} else if (vbo < valid && valid < end) {
+		/* fix page */
+		unsigned long uaddr = ~0ul;
+		struct page *page;
+		long i, npages;
+		size_t dvbo = valid - vbo;
+		size_t off = 0;
+
+		/*Find user address*/
+		for (i = 0; i < nr_segs; i++) {
+			if (off <= dvbo && dvbo < off + iov[i].iov_len) {
+				uaddr = (unsigned long)iov[i].iov_base + dvbo -
+					off;
+				break;
+			}
+			off += iov[i].iov_len;
+		}
+
+		if (uaddr == ~0ul)
+			goto fix_error;
+
+		npages = get_user_pages_unlocked(uaddr, 1, &page, FOLL_WRITE);
+
+		if (npages <= 0)
+			goto fix_error;
+
+		zero_user_segment(page, valid & (PAGE_SIZE - 1), PAGE_SIZE);
+		put_page(page);
+	}
+
+out:
+	return ret;
+fix_error:
+	ntfs_inode_warn(inode, "file garbage at 0x%llx", valid);
+	goto out;
+}
+
+int ntfs_set_size(struct inode *inode, u64 new_size)
+{
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	int err;
+
+	/* Check for maximum file size */
+	if (is_sparsed(ni) || is_compressed(ni)) {
+		if (new_size > sbi->maxbytes_sparse) {
+			err = -EFBIG;
+			goto out;
+		}
+	} else if (new_size > sbi->maxbytes) {
+		err = -EFBIG;
+		goto out;
+	}
+
+	ni_lock(ni);
+	down_write(&ni->file.run_lock);
+
+	err = attr_set_size(ni, ATTR_DATA, NULL, 0, &ni->file.run, new_size,
+			    &ni->i_valid, true, NULL);
+
+	up_write(&ni->file.run_lock);
+	ni_unlock(ni);
+
+	mark_inode_dirty(inode);
+
+out:
+	return err;
+}
+
+static int ntfs_writepage(struct page *page, struct writeback_control *wbc)
+{
+	struct address_space *mapping = page->mapping;
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	int err;
+
+	if (is_resident(ni)) {
+		ni_lock(ni);
+		err = attr_data_write_resident(ni, page);
+		ni_unlock(ni);
+		if (err != E_NTFS_NONRESIDENT) {
+			unlock_page(page);
+			return err;
+		}
+	}
+
+	return block_write_full_page(page, ntfs_get_block, wbc);
+}
+
+static int ntfs_writepages(struct address_space *mapping,
+			   struct writeback_control *wbc)
+{
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	/* redirect call to 'ntfs_writepage' for resident files*/
+	get_block_t *get_block = is_resident(ni) ? NULL : &ntfs_get_block;
+
+	return mpage_writepages(mapping, wbc, get_block);
+}
+
+static int ntfs_get_block_write_begin(struct inode *inode, sector_t vbn,
+				      struct buffer_head *bh_result, int create)
+{
+	return ntfs_get_block_vbo(inode, (u64)vbn << inode->i_blkbits,
+				  bh_result, create, GET_BLOCK_WRITE_BEGIN);
+}
+
+static int ntfs_write_begin(struct file *file, struct address_space *mapping,
+			    loff_t pos, u32 len, u32 flags, struct page **pagep,
+			    void **fsdata)
+{
+	int err;
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	*pagep = NULL;
+	if (is_resident(ni)) {
+		struct page *page = grab_cache_page_write_begin(
+			mapping, pos >> PAGE_SHIFT, flags);
+
+		if (!page) {
+			err = -ENOMEM;
+			goto out;
+		}
+
+		ni_lock(ni);
+		err = attr_data_read_resident(ni, page);
+		ni_unlock(ni);
+
+		if (!err) {
+			*pagep = page;
+			goto out;
+		}
+		unlock_page(page);
+		put_page(page);
+
+		if (err != E_NTFS_NONRESIDENT)
+			goto out;
+	}
+
+	err = block_write_begin(mapping, pos, len, flags, pagep,
+				ntfs_get_block_write_begin);
+
+out:
+	return err;
+}
+
+/* address_space_operations::write_end */
+static int ntfs_write_end(struct file *file, struct address_space *mapping,
+			  loff_t pos, u32 len, u32 copied, struct page *page,
+			  void *fsdata)
+
+{
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	u64 valid = ni->i_valid;
+	bool dirty = false;
+	int err;
+
+	if (is_resident(ni)) {
+		ni_lock(ni);
+		err = attr_data_write_resident(ni, page);
+		ni_unlock(ni);
+		if (!err) {
+			dirty = true;
+			/* clear any buffers in page*/
+			if (page_has_buffers(page)) {
+				struct buffer_head *head, *bh;
+
+				bh = head = page_buffers(page);
+				do {
+					clear_buffer_dirty(bh);
+					clear_buffer_mapped(bh);
+					set_buffer_uptodate(bh);
+				} while (head != (bh = bh->b_this_page));
+			}
+			SetPageUptodate(page);
+			err = copied;
+		}
+		unlock_page(page);
+		put_page(page);
+	} else {
+		err = generic_write_end(file, mapping, pos, len, copied, page,
+					fsdata);
+	}
+
+	if (err >= 0) {
+		if (!(ni->std_fa & FILE_ATTRIBUTE_ARCHIVE)) {
+			inode->i_ctime = inode->i_mtime = current_time(inode);
+			ni->std_fa |= FILE_ATTRIBUTE_ARCHIVE;
+			dirty = true;
+		}
+
+		if (valid != ni->i_valid) {
+			/* ni->i_valid is changed in ntfs_get_block_vbo */
+			dirty = true;
+		}
+
+		if (dirty)
+			mark_inode_dirty(inode);
+	}
+
+	return err;
+}
+
+int reset_log_file(struct inode *inode)
+{
+	int err;
+	loff_t pos = 0;
+	u32 log_size = inode->i_size;
+	struct address_space *mapping = inode->i_mapping;
+
+	for (;;) {
+		u32 len;
+		void *kaddr;
+		struct page *page;
+
+		len = pos + PAGE_SIZE > log_size ? (log_size - pos) : PAGE_SIZE;
+
+		err = block_write_begin(mapping, pos, len, 0, &page,
+					ntfs_get_block_write_begin);
+		if (err)
+			goto out;
+
+		kaddr = kmap_atomic(page);
+		memset(kaddr, -1, len);
+		kunmap_atomic(kaddr);
+		flush_dcache_page(page);
+
+		err = block_write_end(NULL, mapping, pos, len, len, page, NULL);
+		if (err < 0)
+			goto out;
+		pos += len;
+
+		if (pos >= log_size)
+			break;
+		balance_dirty_pages_ratelimited(mapping);
+	}
+out:
+	mark_inode_dirty_sync(inode);
+
+	return err;
+}
+
+int ntfs3_write_inode(struct inode *inode, struct writeback_control *wbc)
+{
+	return _ni_write_inode(inode, wbc->sync_mode == WB_SYNC_ALL);
+}
+
+int ntfs_sync_inode(struct inode *inode)
+{
+	return _ni_write_inode(inode, 1);
+}
+
+/*
+ * helper function for ntfs_flush_inodes.  This writes both the inode
+ * and the file data blocks, waiting for in flight data blocks before
+ * the start of the call.  It does not wait for any io started
+ * during the call
+ */
+static int writeback_inode(struct inode *inode)
+{
+	int ret = sync_inode_metadata(inode, 0);
+
+	if (!ret)
+		ret = filemap_fdatawrite(inode->i_mapping);
+	return ret;
+}
+
+/*
+ * write data and metadata corresponding to i1 and i2.  The io is
+ * started but we do not wait for any of it to finish.
+ *
+ * filemap_flush is used for the block device, so if there is a dirty
+ * page for a block already in flight, we will not wait and start the
+ * io over again
+ */
+int ntfs_flush_inodes(struct super_block *sb, struct inode *i1,
+		      struct inode *i2)
+{
+	int ret = 0;
+
+	if (i1)
+		ret = writeback_inode(i1);
+	if (!ret && i2)
+		ret = writeback_inode(i2);
+	if (!ret)
+		ret = filemap_flush(sb->s_bdev->bd_inode->i_mapping);
+	return ret;
+}
+
+int inode_write_data(struct inode *inode, const void *data, size_t bytes)
+{
+	pgoff_t idx;
+
+	/* Write non resident data */
+	for (idx = 0; bytes; idx++) {
+		size_t op = bytes > PAGE_SIZE ? PAGE_SIZE : bytes;
+		struct page *page = ntfs_map_page(inode->i_mapping, idx);
+
+		if (IS_ERR(page))
+			return PTR_ERR(page);
+
+		lock_page(page);
+		WARN_ON(!PageUptodate(page));
+		ClearPageUptodate(page);
+
+		memcpy(page_address(page), data, op);
+
+		flush_dcache_page(page);
+		SetPageUptodate(page);
+		unlock_page(page);
+
+		ntfs_unmap_page(page);
+
+		bytes -= op;
+		data = Add2Ptr(data, PAGE_SIZE);
+	}
+	return 0;
+}
+
+/*
+ * number of bytes to for REPARSE_DATA_BUFFER(IO_REPARSE_TAG_SYMLINK)
+ * for unicode string of 'uni_len' length
+ */
+static inline u32 ntfs_reparse_bytes(u32 uni_len)
+{
+	/* header + unicode string + decorated unicode string */
+	return sizeof(short) * (2 * uni_len + 4) +
+	       offsetof(struct REPARSE_DATA_BUFFER,
+			SymbolicLinkReparseBuffer.PathBuffer);
+}
+
+static struct REPARSE_DATA_BUFFER *
+ntfs_create_reparse_buffer(struct ntfs_sb_info *sbi, const char *symname,
+			   u32 size, u16 *nsize)
+{
+	int i, err;
+	struct REPARSE_DATA_BUFFER *rp;
+	__le16 *rp_name;
+	typeof(rp->SymbolicLinkReparseBuffer) *rs;
+
+	rp = ntfs_zalloc(ntfs_reparse_bytes(2 * size + 2));
+	if (!rp)
+		return ERR_PTR(-ENOMEM);
+
+	rs = &rp->SymbolicLinkReparseBuffer;
+	rp_name = rs->PathBuffer;
+
+	/* Convert link name to utf16 */
+	err = ntfs_nls_to_utf16(sbi, symname, size,
+				(struct cpu_str *)(rp_name - 1), 2 * size,
+				UTF16_LITTLE_ENDIAN);
+	if (err < 0)
+		goto out;
+
+	/* err = the length of unicode name of symlink */
+	*nsize = ntfs_reparse_bytes(err);
+
+	if (*nsize > sbi->reparse.max_size) {
+		err = -EFBIG;
+		goto out;
+	}
+
+	/* translate linux '/' into windows '\' */
+	for (i = 0; i < err; i++) {
+		if (rp_name[i] == cpu_to_le16('/'))
+			rp_name[i] = cpu_to_le16('\\');
+	}
+
+	rp->ReparseTag = IO_REPARSE_TAG_SYMLINK;
+	rp->ReparseDataLength =
+		cpu_to_le16(*nsize - offsetof(struct REPARSE_DATA_BUFFER,
+					      SymbolicLinkReparseBuffer));
+
+	/* PrintName + SubstituteName */
+	rs->SubstituteNameOffset = cpu_to_le16(sizeof(short) * err);
+	rs->SubstituteNameLength = cpu_to_le16(sizeof(short) * err + 8);
+	rs->PrintNameLength = rs->SubstituteNameOffset;
+
+	/*
+	 * TODO: use relative path if possible to allow windows to parse this path
+	 * 0-absolute path 1- relative path (SYMLINK_FLAG_RELATIVE)
+	 */
+	rs->Flags = 0;
+
+	memmove(rp_name + err + 4, rp_name, sizeof(short) * err);
+
+	/* decorate SubstituteName */
+	rp_name += err;
+	rp_name[0] = cpu_to_le16('\\');
+	rp_name[1] = cpu_to_le16('?');
+	rp_name[2] = cpu_to_le16('?');
+	rp_name[3] = cpu_to_le16('\\');
+
+	return rp;
+out:
+	ntfs_free(rp);
+	return ERR_PTR(err);
+}
+
+int ntfs_create_inode(struct user_namespace *mnt_userns, struct inode *dir,
+		      struct dentry *dentry, const struct cpu_str *uni,
+		      umode_t mode, dev_t dev, const char *symname, u32 size,
+		      int excl, struct ntfs_fnd *fnd, struct inode **new_inode)
+{
+	int err;
+	struct super_block *sb = dir->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	const struct qstr *name = &dentry->d_name;
+	CLST ino = 0;
+	struct ntfs_inode *dir_ni = ntfs_i(dir);
+	struct ntfs_inode *ni = NULL;
+	struct inode *inode = NULL;
+	struct ATTRIB *attr;
+	struct ATTR_STD_INFO5 *std5;
+	struct ATTR_FILE_NAME *fname;
+	struct MFT_REC *rec;
+	u32 asize, dsize, sd_size;
+	enum FILE_ATTRIBUTE fa;
+	__le32 security_id = SECURITY_ID_INVALID;
+	CLST vcn;
+	const void *sd;
+	u16 t16, nsize = 0, aid = 0;
+	struct INDEX_ROOT *root, *dir_root;
+	struct NTFS_DE *e, *new_de = NULL;
+	struct REPARSE_DATA_BUFFER *rp = NULL;
+	bool is_dir = S_ISDIR(mode);
+	bool is_link = S_ISLNK(mode);
+	bool rp_inserted = false;
+	bool is_sp = S_ISCHR(mode) || S_ISBLK(mode) || S_ISFIFO(mode) ||
+		     S_ISSOCK(mode);
+
+	if (is_sp)
+		return -EOPNOTSUPP;
+
+	dir_root = indx_get_root(&dir_ni->dir, dir_ni, NULL, NULL);
+	if (!dir_root)
+		return -EINVAL;
+
+	if (is_dir) {
+		/* use parent's directory attributes */
+		fa = dir_ni->std_fa | FILE_ATTRIBUTE_DIRECTORY |
+		     FILE_ATTRIBUTE_ARCHIVE;
+		/*
+		 * By default child directory inherits parent attributes
+		 * root directory is hidden + system
+		 * Make an exception for children in root
+		 */
+		if (dir->i_ino == MFT_REC_ROOT)
+			fa &= ~(FILE_ATTRIBUTE_HIDDEN | FILE_ATTRIBUTE_SYSTEM);
+	} else if (is_link) {
+		/* It is good idea that link should be the same type (file/dir) as target */
+		fa = FILE_ATTRIBUTE_REPARSE_POINT;
+
+		/*
+		 * linux: there are dir/file/symlink and so on
+		 * NTFS: symlinks are "dir + reparse" or "file + reparse"
+		 * It is good idea to create:
+		 * dir + reparse if 'symname' points to directory
+		 * or
+		 * file + reparse if 'symname' points to file
+		 * Unfortunately kern_path hangs if symname contains 'dir'
+		 */
+
+		/*
+		 *	struct path path;
+		 *
+		 *	if (!kern_path(symname, LOOKUP_FOLLOW, &path)){
+		 *		struct inode *target = d_inode(path.dentry);
+		 *
+		 *		if (S_ISDIR(target->i_mode))
+		 *			fa |= FILE_ATTRIBUTE_DIRECTORY;
+		 *		// if ( target->i_sb == sb ){
+		 *		//	use relative path?
+		 *		// }
+		 *		path_put(&path);
+		 *	}
+		 */
+	} else if (sbi->options.sparse) {
+		/* sparsed regular file, cause option 'sparse' */
+		fa = FILE_ATTRIBUTE_SPARSE_FILE | FILE_ATTRIBUTE_ARCHIVE;
+	} else if (dir_ni->std_fa & FILE_ATTRIBUTE_COMPRESSED) {
+		/* compressed regular file, if parent is compressed */
+		fa = FILE_ATTRIBUTE_COMPRESSED | FILE_ATTRIBUTE_ARCHIVE;
+	} else {
+		/* regular file, default attributes */
+		fa = FILE_ATTRIBUTE_ARCHIVE;
+	}
+
+	if (!(mode & 0222))
+		fa |= FILE_ATTRIBUTE_READONLY;
+
+	/* allocate PATH_MAX bytes */
+	new_de = __getname();
+	if (!new_de) {
+		err = -ENOMEM;
+		goto out1;
+	}
+
+	/*mark rw ntfs as dirty. it will be cleared at umount*/
+	ntfs_set_state(sbi, NTFS_DIRTY_DIRTY);
+
+	/* Step 1: allocate and fill new mft record */
+	err = ntfs_look_free_mft(sbi, &ino, false, NULL, NULL);
+	if (err)
+		goto out2;
+
+	ni = ntfs_new_inode(sbi, ino, fa & FILE_ATTRIBUTE_DIRECTORY);
+	if (IS_ERR(ni)) {
+		err = PTR_ERR(ni);
+		ni = NULL;
+		goto out3;
+	}
+	inode = &ni->vfs_inode;
+
+	inode->i_atime = inode->i_mtime = inode->i_ctime = ni->i_crtime =
+		current_time(inode);
+
+	rec = ni->mi.mrec;
+	rec->hard_links = cpu_to_le16(1);
+	attr = Add2Ptr(rec, le16_to_cpu(rec->attr_off));
+
+	/* Get default security id */
+	sd = s_default_security;
+	sd_size = sizeof(s_default_security);
+
+	if (is_ntfs3(sbi)) {
+		security_id = dir_ni->std_security_id;
+		if (le32_to_cpu(security_id) < SECURITY_ID_FIRST) {
+			security_id = sbi->security.def_security_id;
+
+			if (security_id == SECURITY_ID_INVALID &&
+			    !ntfs_insert_security(sbi, sd, sd_size,
+						  &security_id, NULL))
+				sbi->security.def_security_id = security_id;
+		}
+	}
+
+	/* Insert standard info */
+	std5 = Add2Ptr(attr, SIZEOF_RESIDENT);
+
+	if (security_id == SECURITY_ID_INVALID) {
+		dsize = sizeof(struct ATTR_STD_INFO);
+	} else {
+		dsize = sizeof(struct ATTR_STD_INFO5);
+		std5->security_id = security_id;
+		ni->std_security_id = security_id;
+	}
+	asize = SIZEOF_RESIDENT + dsize;
+
+	attr->type = ATTR_STD;
+	attr->size = cpu_to_le32(asize);
+	attr->id = cpu_to_le16(aid++);
+	attr->res.data_off = SIZEOF_RESIDENT_LE;
+	attr->res.data_size = cpu_to_le32(dsize);
+
+	std5->cr_time = std5->m_time = std5->c_time = std5->a_time =
+		kernel2nt(&inode->i_atime);
+
+	ni->std_fa = fa;
+	std5->fa = fa;
+
+	attr = Add2Ptr(attr, asize);
+
+	/* Insert file name */
+	err = fill_name_de(sbi, new_de, name, uni);
+	if (err)
+		goto out4;
+
+	fname = (struct ATTR_FILE_NAME *)(new_de + 1);
+
+	new_de->ref.low = cpu_to_le32(ino);
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	new_de->ref.high = cpu_to_le16(ino >> 32);
+	fname->home.high = cpu_to_le16(dir->i_ino >> 32);
+#endif
+	new_de->ref.seq = rec->seq;
+
+	fname->home.low = cpu_to_le32(dir->i_ino & 0xffffffff);
+	fname->home.seq = dir_ni->mi.mrec->seq;
+
+	fname->dup.cr_time = fname->dup.m_time = fname->dup.c_time =
+		fname->dup.a_time = std5->cr_time;
+	fname->dup.alloc_size = fname->dup.data_size = 0;
+	fname->dup.fa = std5->fa;
+	fname->dup.ea_size = fname->dup.reparse = 0;
+
+	dsize = le16_to_cpu(new_de->key_size);
+	asize = QuadAlign(SIZEOF_RESIDENT + dsize);
+
+	attr->type = ATTR_NAME;
+	attr->size = cpu_to_le32(asize);
+	attr->res.data_off = SIZEOF_RESIDENT_LE;
+	attr->res.flags = RESIDENT_FLAG_INDEXED;
+	attr->id = cpu_to_le16(aid++);
+	attr->res.data_size = cpu_to_le32(dsize);
+	memcpy(Add2Ptr(attr, SIZEOF_RESIDENT), fname, dsize);
+
+	attr = Add2Ptr(attr, asize);
+
+	if (security_id == SECURITY_ID_INVALID) {
+		/* Insert security attribute */
+		asize = SIZEOF_RESIDENT + QuadAlign(sd_size);
+
+		attr->type = ATTR_SECURE;
+		attr->size = cpu_to_le32(asize);
+		attr->id = cpu_to_le16(aid++);
+		attr->res.data_off = SIZEOF_RESIDENT_LE;
+		attr->res.data_size = cpu_to_le32(sd_size);
+		memcpy(Add2Ptr(attr, SIZEOF_RESIDENT), sd, sd_size);
+
+		attr = Add2Ptr(attr, asize);
+	}
+
+	if (fa & FILE_ATTRIBUTE_DIRECTORY) {
+		/*
+		 * regular directory or symlink to directory
+		 * Create root attribute
+		 */
+		dsize = sizeof(struct INDEX_ROOT) + sizeof(struct NTFS_DE);
+		asize = sizeof(I30_NAME) + SIZEOF_RESIDENT + dsize;
+
+		attr->type = ATTR_ROOT;
+		attr->size = cpu_to_le32(asize);
+		attr->id = cpu_to_le16(aid++);
+
+		attr->name_len = ARRAY_SIZE(I30_NAME);
+		attr->name_off = SIZEOF_RESIDENT_LE;
+		attr->res.data_off =
+			cpu_to_le16(sizeof(I30_NAME) + SIZEOF_RESIDENT);
+		attr->res.data_size = cpu_to_le32(dsize);
+		memcpy(Add2Ptr(attr, SIZEOF_RESIDENT), I30_NAME,
+		       sizeof(I30_NAME));
+
+		root = Add2Ptr(attr, sizeof(I30_NAME) + SIZEOF_RESIDENT);
+		memcpy(root, dir_root, offsetof(struct INDEX_ROOT, ihdr));
+		root->ihdr.de_off =
+			cpu_to_le32(sizeof(struct INDEX_HDR)); // 0x10
+		root->ihdr.used = cpu_to_le32(sizeof(struct INDEX_HDR) +
+					      sizeof(struct NTFS_DE));
+		root->ihdr.total = root->ihdr.used;
+
+		e = Add2Ptr(root, sizeof(struct INDEX_ROOT));
+		e->size = cpu_to_le16(sizeof(struct NTFS_DE));
+		e->flags = NTFS_IE_LAST;
+	} else if (is_link) {
+		/*
+		 * symlink to file
+		 * Create empty resident data attribute
+		 */
+		asize = SIZEOF_RESIDENT;
+
+		/* insert empty ATTR_DATA */
+		attr->type = ATTR_DATA;
+		attr->size = cpu_to_le32(SIZEOF_RESIDENT);
+		attr->id = cpu_to_le16(aid++);
+		attr->name_off = SIZEOF_RESIDENT_LE;
+		attr->res.data_off = SIZEOF_RESIDENT_LE;
+	} else {
+		/*
+		 * regular file
+		 */
+		attr->type = ATTR_DATA;
+		attr->id = cpu_to_le16(aid++);
+		/* Create empty non resident data attribute */
+		attr->non_res = 1;
+		attr->nres.evcn = cpu_to_le64(-1ll);
+		if (fa & FILE_ATTRIBUTE_SPARSE_FILE) {
+			attr->size = cpu_to_le32(SIZEOF_NONRESIDENT_EX + 8);
+			attr->name_off = SIZEOF_NONRESIDENT_EX_LE;
+			attr->flags = ATTR_FLAG_SPARSED;
+			asize = SIZEOF_NONRESIDENT_EX + 8;
+		} else if (fa & FILE_ATTRIBUTE_COMPRESSED) {
+			attr->size = cpu_to_le32(SIZEOF_NONRESIDENT_EX + 8);
+			attr->name_off = SIZEOF_NONRESIDENT_EX_LE;
+			attr->flags = ATTR_FLAG_COMPRESSED;
+			attr->nres.c_unit = COMPRESSION_UNIT;
+			asize = SIZEOF_NONRESIDENT_EX + 8;
+		} else {
+			attr->size = cpu_to_le32(SIZEOF_NONRESIDENT + 8);
+			attr->name_off = SIZEOF_NONRESIDENT_LE;
+			asize = SIZEOF_NONRESIDENT + 8;
+		}
+		attr->nres.run_off = attr->name_off;
+	}
+
+	if (is_dir) {
+		ni->ni_flags |= NI_FLAG_DIR;
+		err = indx_init(&ni->dir, sbi, attr, INDEX_MUTEX_I30);
+		if (err)
+			goto out4;
+	} else if (is_link) {
+		rp = ntfs_create_reparse_buffer(sbi, symname, size, &nsize);
+
+		if (IS_ERR(rp)) {
+			err = PTR_ERR(rp);
+			rp = NULL;
+			goto out4;
+		}
+
+		/*
+		 * Insert ATTR_REPARSE
+		 */
+		attr = Add2Ptr(attr, asize);
+		attr->type = ATTR_REPARSE;
+		attr->id = cpu_to_le16(aid++);
+
+		/* resident or non resident? */
+		asize = QuadAlign(SIZEOF_RESIDENT + nsize);
+		t16 = PtrOffset(rec, attr);
+
+		if (asize + t16 + 8 > sbi->record_size) {
+			CLST alen;
+			CLST clst = bytes_to_cluster(sbi, nsize);
+
+			/* bytes per runs */
+			t16 = sbi->record_size - t16 - SIZEOF_NONRESIDENT;
+
+			attr->non_res = 1;
+			attr->nres.evcn = cpu_to_le64(clst - 1);
+			attr->name_off = SIZEOF_NONRESIDENT_LE;
+			attr->nres.run_off = attr->name_off;
+			attr->nres.data_size = cpu_to_le64(nsize);
+			attr->nres.valid_size = attr->nres.data_size;
+			attr->nres.alloc_size =
+				cpu_to_le64(ntfs_up_cluster(sbi, nsize));
+
+			err = attr_allocate_clusters(sbi, &ni->file.run, 0, 0,
+						     clst, NULL, 0, &alen, 0,
+						     NULL);
+			if (err)
+				goto out5;
+
+			err = run_pack(&ni->file.run, 0, clst,
+				       Add2Ptr(attr, SIZEOF_NONRESIDENT), t16,
+				       &vcn);
+			if (err < 0)
+				goto out5;
+
+			if (vcn != clst) {
+				err = -EINVAL;
+				goto out5;
+			}
+
+			asize = SIZEOF_NONRESIDENT + QuadAlign(err);
+			inode->i_size = nsize;
+		} else {
+			attr->res.data_off = SIZEOF_RESIDENT_LE;
+			attr->res.data_size = cpu_to_le32(nsize);
+			memcpy(Add2Ptr(attr, SIZEOF_RESIDENT), rp, nsize);
+			inode->i_size = nsize;
+			nsize = 0;
+		}
+
+		attr->size = cpu_to_le32(asize);
+
+		err = ntfs_insert_reparse(sbi, IO_REPARSE_TAG_SYMLINK,
+					  &new_de->ref);
+		if (err)
+			goto out5;
+
+		rp_inserted = true;
+	}
+
+	attr = Add2Ptr(attr, asize);
+	attr->type = ATTR_END;
+
+	rec->used = cpu_to_le32(PtrOffset(rec, attr) + 8);
+	rec->next_attr_id = cpu_to_le16(aid);
+
+	/* Step 2: Add new name in index */
+	err = indx_insert_entry(&dir_ni->dir, dir_ni, new_de, sbi, fnd);
+	if (err)
+		goto out6;
+
+	/* Update current directory record */
+	mark_inode_dirty(dir);
+
+	/* Fill vfs inode fields */
+	inode->i_uid = sbi->options.uid ? sbi->options.fs_uid : current_fsuid();
+	inode->i_gid =
+		sbi->options.gid ?
+			sbi->options.fs_gid :
+			(dir->i_mode & S_ISGID) ? dir->i_gid : current_fsgid();
+	inode->i_generation = le16_to_cpu(rec->seq);
+
+	dir->i_mtime = dir->i_ctime = inode->i_atime;
+
+	if (is_dir) {
+		if (dir->i_mode & S_ISGID)
+			mode |= S_ISGID;
+		inode->i_op = &ntfs_dir_inode_operations;
+		inode->i_fop = &ntfs_dir_operations;
+	} else if (is_link) {
+		inode->i_op = &ntfs_link_inode_operations;
+		inode->i_fop = NULL;
+		inode->i_mapping->a_ops = &ntfs_aops;
+	} else {
+		inode->i_op = &ntfs_file_inode_operations;
+		inode->i_fop = &ntfs_file_operations;
+		inode->i_mapping->a_ops =
+			is_compressed(ni) ? &ntfs_aops_cmpr : &ntfs_aops;
+		init_rwsem(&ni->file.run_lock);
+	}
+
+	inode->i_mode = mode;
+
+#ifdef CONFIG_NTFS3_FS_POSIX_ACL
+	if (!is_link && (sb->s_flags & SB_POSIXACL)) {
+		err = ntfs_init_acl(mnt_userns, inode, dir);
+		if (err)
+			goto out6;
+	} else
+#endif
+	{
+		inode->i_flags |= S_NOSEC;
+	}
+
+	/* Write non resident data */
+	if (nsize) {
+		err = ntfs_sb_write_run(sbi, &ni->file.run, 0, rp, nsize);
+		if (err)
+			goto out7;
+	}
+
+	/* call 'd_instantiate' after inode->i_op is set but before finish_open */
+	d_instantiate(dentry, inode);
+
+	mark_inode_dirty(inode);
+	mark_inode_dirty(dir);
+
+	/* normal exit */
+	goto out2;
+
+out7:
+
+	/* undo 'indx_insert_entry' */
+	indx_delete_entry(&dir_ni->dir, dir_ni, new_de + 1,
+			  le16_to_cpu(new_de->key_size), sbi);
+out6:
+	if (rp_inserted)
+		ntfs_remove_reparse(sbi, IO_REPARSE_TAG_SYMLINK, &new_de->ref);
+
+out5:
+	if (is_dir || run_is_empty(&ni->file.run))
+		goto out4;
+
+	run_deallocate(sbi, &ni->file.run, false);
+
+out4:
+	clear_rec_inuse(rec);
+	clear_nlink(inode);
+	ni->mi.dirty = false;
+	discard_new_inode(inode);
+out3:
+	ntfs_mark_rec_free(sbi, ino);
+
+out2:
+	__putname(new_de);
+	ntfs_free(rp);
+
+out1:
+	if (err)
+		return err;
+
+	unlock_new_inode(inode);
+
+	*new_inode = inode;
+	return 0;
+}
+
+int ntfs_link_inode(struct inode *inode, struct dentry *dentry)
+{
+	int err;
+	struct inode *dir = d_inode(dentry->d_parent);
+	struct ntfs_inode *dir_ni = ntfs_i(dir);
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	const struct qstr *name = &dentry->d_name;
+	struct NTFS_DE *new_de = NULL;
+	struct ATTR_FILE_NAME *fname;
+	struct ATTRIB *attr;
+	u16 key_size;
+	struct INDEX_ROOT *dir_root;
+
+	dir_root = indx_get_root(&dir_ni->dir, dir_ni, NULL, NULL);
+	if (!dir_root)
+		return -EINVAL;
+
+	/* allocate PATH_MAX bytes */
+	new_de = __getname();
+	if (!new_de)
+		return -ENOMEM;
+
+	/*mark rw ntfs as dirty. it will be cleared at umount*/
+	ntfs_set_state(ni->mi.sbi, NTFS_DIRTY_DIRTY);
+
+	// Insert file name
+	err = fill_name_de(sbi, new_de, name, NULL);
+	if (err)
+		goto out;
+
+	key_size = le16_to_cpu(new_de->key_size);
+	fname = (struct ATTR_FILE_NAME *)(new_de + 1);
+
+	err = ni_insert_resident(ni, key_size, ATTR_NAME, NULL, 0, &attr, NULL);
+	if (err)
+		goto out;
+
+	new_de->ref.low = cpu_to_le32(inode->i_ino);
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	new_de->ref.high = cpu_to_le16(inode->i_ino >> 32);
+	fname->home.high = cpu_to_le16(dir->i_ino >> 32);
+#endif
+	new_de->ref.seq = ni->mi.mrec->seq;
+
+	fname->home.low = cpu_to_le32(dir->i_ino & 0xffffffff);
+	fname->home.seq = dir_ni->mi.mrec->seq;
+
+	fname->dup.cr_time = fname->dup.m_time = fname->dup.c_time =
+		fname->dup.a_time = kernel2nt(&inode->i_ctime);
+	fname->dup.alloc_size = fname->dup.data_size = 0;
+	fname->dup.fa = ni->std_fa;
+	fname->dup.ea_size = fname->dup.reparse = 0;
+
+	memcpy(Add2Ptr(attr, SIZEOF_RESIDENT), fname, key_size);
+
+	err = indx_insert_entry(&dir_ni->dir, dir_ni, new_de, sbi, NULL);
+	if (err)
+		goto out;
+
+	le16_add_cpu(&ni->mi.mrec->hard_links, 1);
+	ni->mi.dirty = true;
+
+out:
+	__putname(new_de);
+	return err;
+}
+
+/*
+ * ntfs_unlink_inode
+ *
+ * inode_operations::unlink
+ * inode_operations::rmdir
+ */
+int ntfs_unlink_inode(struct inode *dir, const struct dentry *dentry)
+{
+	int err;
+	struct super_block *sb = dir->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct inode *inode = d_inode(dentry);
+	struct ntfs_inode *ni = ntfs_i(inode);
+	const struct qstr *name = &dentry->d_name;
+	struct ntfs_inode *dir_ni = ntfs_i(dir);
+	struct ntfs_index *indx = &dir_ni->dir;
+	struct cpu_str *uni = NULL;
+	struct ATTR_FILE_NAME *fname;
+	u8 name_type;
+	struct ATTR_LIST_ENTRY *le;
+	struct MFT_REF ref;
+	bool is_dir = S_ISDIR(inode->i_mode);
+	struct INDEX_ROOT *dir_root;
+
+	dir_root = indx_get_root(indx, dir_ni, NULL, NULL);
+	if (!dir_root)
+		return -EINVAL;
+
+	ni_lock(ni);
+
+	if (is_dir && !dir_is_empty(inode)) {
+		err = -ENOTEMPTY;
+		goto out1;
+	}
+
+	if (ntfs_is_meta_file(sbi, inode->i_ino)) {
+		err = -EINVAL;
+		goto out1;
+	}
+
+	/* allocate PATH_MAX bytes */
+	uni = __getname();
+	if (!uni) {
+		err = -ENOMEM;
+		goto out1;
+	}
+
+	/* Convert input string to unicode */
+	err = ntfs_nls_to_utf16(sbi, name->name, name->len, uni, NTFS_NAME_LEN,
+				UTF16_HOST_ENDIAN);
+	if (err < 0)
+		goto out4;
+
+	/*mark rw ntfs as dirty. it will be cleared at umount*/
+	ntfs_set_state(sbi, NTFS_DIRTY_DIRTY);
+
+	/* find name in record */
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	ref.low = cpu_to_le32(dir->i_ino & 0xffffffff);
+	ref.high = cpu_to_le16(dir->i_ino >> 32);
+#else
+	ref.low = cpu_to_le32(dir->i_ino & 0xffffffff);
+	ref.high = 0;
+#endif
+	ref.seq = dir_ni->mi.mrec->seq;
+
+	le = NULL;
+	fname = ni_fname_name(ni, uni, &ref, &le);
+	if (!fname) {
+		err = -ENOENT;
+		goto out3;
+	}
+
+	name_type = paired_name(fname->type);
+
+	err = indx_delete_entry(indx, dir_ni, fname, fname_full_size(fname),
+				sbi);
+	if (err)
+		goto out4;
+
+	/* Then remove name from mft */
+	ni_remove_attr_le(ni, attr_from_name(fname), le);
+
+	le16_add_cpu(&ni->mi.mrec->hard_links, -1);
+	ni->mi.dirty = true;
+
+	if (name_type != FILE_NAME_POSIX) {
+		/* Now we should delete name by type */
+		fname = ni_fname_type(ni, name_type, &le);
+		if (fname) {
+			err = indx_delete_entry(indx, dir_ni, fname,
+						fname_full_size(fname), sbi);
+			if (err)
+				goto out4;
+
+			ni_remove_attr_le(ni, attr_from_name(fname), le);
+
+			le16_add_cpu(&ni->mi.mrec->hard_links, -1);
+		}
+	}
+
+out4:
+	switch (err) {
+	case 0:
+		drop_nlink(inode);
+	case -ENOTEMPTY:
+	case -ENOSPC:
+	case -EROFS:
+		break;
+	default:
+		make_bad_inode(inode);
+	}
+
+	dir->i_mtime = dir->i_ctime = current_time(dir);
+	mark_inode_dirty(dir);
+	inode->i_ctime = dir->i_ctime;
+	if (inode->i_nlink)
+		mark_inode_dirty(inode);
+
+out3:
+	__putname(uni);
+out1:
+	ni_unlock(ni);
+	return err;
+}
+
+void ntfs_evict_inode(struct inode *inode)
+{
+	truncate_inode_pages_final(&inode->i_data);
+
+	if (inode->i_nlink)
+		_ni_write_inode(inode, inode_needs_sync(inode));
+
+	invalidate_inode_buffers(inode);
+	clear_inode(inode);
+
+	ni_clear(ntfs_i(inode));
+}
+
+static noinline int ntfs_readlink_hlp(struct inode *inode, char *buffer,
+				      int buflen)
+{
+	int i, err = 0;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	u64 i_size = inode->i_size;
+	u16 nlen = 0;
+	void *to_free = NULL;
+	struct REPARSE_DATA_BUFFER *rp;
+	struct le_str *uni;
+	struct ATTRIB *attr;
+
+	/* Reparse data present. Try to parse it */
+	static_assert(!offsetof(struct REPARSE_DATA_BUFFER, ReparseTag));
+	static_assert(sizeof(u32) == sizeof(rp->ReparseTag));
+
+	*buffer = 0;
+
+	/* Read into temporal buffer */
+	if (i_size > sbi->reparse.max_size || i_size <= sizeof(u32)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	attr = ni_find_attr(ni, NULL, NULL, ATTR_REPARSE, NULL, 0, NULL, NULL);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (!attr->non_res) {
+		rp = resident_data_ex(attr, i_size);
+		if (!rp) {
+			err = -EINVAL;
+			goto out;
+		}
+	} else {
+		rp = ntfs_malloc(i_size);
+		if (!rp) {
+			err = -ENOMEM;
+			goto out;
+		}
+		to_free = rp;
+		err = ntfs_read_run_nb(sbi, &ni->file.run, 0, rp, i_size, NULL);
+		if (err)
+			goto out;
+	}
+
+	err = -EINVAL;
+
+	/* Microsoft Tag */
+	switch (rp->ReparseTag) {
+	case IO_REPARSE_TAG_MOUNT_POINT:
+		/* Mount points and junctions */
+		/* Can we use 'Rp->MountPointReparseBuffer.PrintNameLength'? */
+		if (i_size <= offsetof(struct REPARSE_DATA_BUFFER,
+				       MountPointReparseBuffer.PathBuffer))
+			goto out;
+		uni = Add2Ptr(rp,
+			      offsetof(struct REPARSE_DATA_BUFFER,
+				       MountPointReparseBuffer.PathBuffer) +
+				      le16_to_cpu(rp->MountPointReparseBuffer
+							  .PrintNameOffset) -
+				      2);
+		nlen = le16_to_cpu(rp->MountPointReparseBuffer.PrintNameLength);
+		break;
+
+	case IO_REPARSE_TAG_SYMLINK:
+		/* FolderSymbolicLink */
+		/* Can we use 'Rp->SymbolicLinkReparseBuffer.PrintNameLength'? */
+		if (i_size <= offsetof(struct REPARSE_DATA_BUFFER,
+				       SymbolicLinkReparseBuffer.PathBuffer))
+			goto out;
+		uni = Add2Ptr(rp,
+			      offsetof(struct REPARSE_DATA_BUFFER,
+				       SymbolicLinkReparseBuffer.PathBuffer) +
+				      le16_to_cpu(rp->SymbolicLinkReparseBuffer
+							  .PrintNameOffset) -
+				      2);
+		nlen = le16_to_cpu(
+			rp->SymbolicLinkReparseBuffer.PrintNameLength);
+		break;
+
+	case IO_REPARSE_TAG_CLOUD:
+	case IO_REPARSE_TAG_CLOUD_1:
+	case IO_REPARSE_TAG_CLOUD_2:
+	case IO_REPARSE_TAG_CLOUD_3:
+	case IO_REPARSE_TAG_CLOUD_4:
+	case IO_REPARSE_TAG_CLOUD_5:
+	case IO_REPARSE_TAG_CLOUD_6:
+	case IO_REPARSE_TAG_CLOUD_7:
+	case IO_REPARSE_TAG_CLOUD_8:
+	case IO_REPARSE_TAG_CLOUD_9:
+	case IO_REPARSE_TAG_CLOUD_A:
+	case IO_REPARSE_TAG_CLOUD_B:
+	case IO_REPARSE_TAG_CLOUD_C:
+	case IO_REPARSE_TAG_CLOUD_D:
+	case IO_REPARSE_TAG_CLOUD_E:
+	case IO_REPARSE_TAG_CLOUD_F:
+		err = sizeof("OneDrive") - 1;
+		if (err > buflen)
+			err = buflen;
+		memcpy(buffer, "OneDrive", err);
+		goto out;
+
+	default:
+		if (IsReparseTagMicrosoft(rp->ReparseTag)) {
+			/* unknown Microsoft Tag */
+			goto out;
+		}
+		if (!IsReparseTagNameSurrogate(rp->ReparseTag) ||
+		    i_size <= sizeof(struct REPARSE_POINT)) {
+			goto out;
+		}
+
+		/* Users tag */
+		uni = Add2Ptr(rp, sizeof(struct REPARSE_POINT) - 2);
+		nlen = le16_to_cpu(rp->ReparseDataLength) -
+		       sizeof(struct REPARSE_POINT);
+	}
+
+	/* Convert nlen from bytes to UNICODE chars */
+	nlen >>= 1;
+
+	/* Check that name is available */
+	if (!nlen || &uni->name[nlen] > (__le16 *)Add2Ptr(rp, i_size))
+		goto out;
+
+	/* If name is already zero terminated then truncate it now */
+	if (!uni->name[nlen - 1])
+		nlen -= 1;
+	uni->len = nlen;
+
+	err = ntfs_utf16_to_nls(sbi, uni, buffer, buflen);
+
+	if (err < 0)
+		goto out;
+
+	/* translate windows '\' into linux '/' */
+	for (i = 0; i < err; i++) {
+		if (buffer[i] == '\\')
+			buffer[i] = '/';
+	}
+
+	/* Always set last zero */
+	buffer[err] = 0;
+out:
+	ntfs_free(to_free);
+	return err;
+}
+
+static const char *ntfs_get_link(struct dentry *de, struct inode *inode,
+				 struct delayed_call *done)
+{
+	int err;
+	char *ret;
+
+	if (!de)
+		return ERR_PTR(-ECHILD);
+
+	ret = kmalloc(PAGE_SIZE, GFP_NOFS);
+	if (!ret)
+		return ERR_PTR(-ENOMEM);
+
+	err = ntfs_readlink_hlp(inode, ret, PAGE_SIZE);
+	if (err < 0) {
+		kfree(ret);
+		return ERR_PTR(err);
+	}
+
+	set_delayed_call(done, kfree_link, ret);
+
+	return ret;
+}
+
+const struct inode_operations ntfs_link_inode_operations = {
+	.get_link = ntfs_get_link,
+	.setattr = ntfs3_setattr,
+	.listxattr = ntfs_listxattr,
+	.permission = ntfs_permission,
+	.get_acl = ntfs_get_acl,
+	.set_acl = ntfs_set_acl,
+};
+
+const struct address_space_operations ntfs_aops = {
+	.readpage = ntfs_readpage,
+	.readahead = ntfs_readahead,
+	.writepage = ntfs_writepage,
+	.writepages = ntfs_writepages,
+	.write_begin = ntfs_write_begin,
+	.write_end = ntfs_write_end,
+	.direct_IO = ntfs_direct_IO,
+	.bmap = ntfs_bmap,
+};
+
+const struct address_space_operations ntfs_aops_cmpr = {
+	.readpage = ntfs_readpage,
+	.readahead = ntfs_readahead,
+};
diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
new file mode 100644
index 000000000000..7d09d3eaaf2a
--- /dev/null
+++ b/fs/ntfs3/super.c
@@ -0,0 +1,1502 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ *
+ *                 terminology
+ *
+ * cluster - allocation unit     - 512,1K,2K,4K,...,2M
+ * vcn - virtual cluster number  - offset inside the file in clusters
+ * vbo - virtual byte offset     - offset inside the file in bytes
+ * lcn - logical cluster number  - 0 based cluster in clusters heap
+ * lbo - logical byte offset     - absolute position inside volume
+ * run - maps vcn to lcn         - stored in attributes in packed form
+ * attr - attribute segment      - std/name/data etc records inside MFT
+ * mi  - mft inode               - one MFT record(usually 1024 bytes or 4K), consists of attributes
+ * ni  - ntfs inode              - extends linux inode. consists of one or more mft inodes
+ * index - unit inside directory - 2K, 4K, <=page size, does not depend on cluster size
+ *
+ * TODO: Implement
+ * https://docs.microsoft.com/en-us/windows/wsl/file-permissions
+ */
+
+#include <linux/backing-dev.h>
+#include <linux/blkdev.h>
+#include <linux/buffer_head.h>
+#include <linux/exportfs.h>
+#include <linux/fs.h>
+#include <linux/iversion.h>
+#include <linux/module.h>
+#include <linux/nls.h>
+#include <linux/parser.h>
+#include <linux/seq_file.h>
+#include <linux/statfs.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+#include "lib/lib.h"
+#endif
+
+#ifdef CONFIG_PRINTK
+/*
+ * Trace warnings/notices/errors
+ * Thanks Joe Perches <joe@perches.com> for implementation
+ */
+void ntfs_printk(const struct super_block *sb, const char *fmt, ...)
+{
+	struct va_format vaf;
+	va_list args;
+	int level;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+
+	/*should we use different ratelimits for warnings/notices/errors? */
+	if (!___ratelimit(&sbi->msg_ratelimit, "ntfs3"))
+		return;
+
+	va_start(args, fmt);
+
+	level = printk_get_level(fmt);
+	vaf.fmt = printk_skip_level(fmt);
+	vaf.va = &args;
+	printk("%c%cntfs3: %s: %pV\n", KERN_SOH_ASCII, level, sb->s_id, &vaf);
+
+	va_end(args);
+}
+
+static char s_name_buf[512];
+static atomic_t s_name_buf_cnt = ATOMIC_INIT(1); // 1 means 'free s_name_buf'
+
+/* print warnings/notices/errors about inode using name or inode number */
+void ntfs_inode_printk(struct inode *inode, const char *fmt, ...)
+{
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	char *name;
+	va_list args;
+	struct va_format vaf;
+	int level;
+
+	if (!___ratelimit(&sbi->msg_ratelimit, "ntfs3"))
+		return;
+
+	if (atomic_dec_and_test(&s_name_buf_cnt)) {
+		/* use static allocated buffer */
+		name = s_name_buf;
+	} else {
+		name = kmalloc(sizeof(s_name_buf), GFP_NOFS);
+	}
+
+	if (name) {
+		struct dentry *dentry = d_find_alias(inode);
+		const u32 name_len = ARRAY_SIZE(s_name_buf) - 1;
+
+		if (dentry) {
+			spin_lock(&dentry->d_lock);
+			snprintf(name, name_len, "%s", dentry->d_name.name);
+			spin_unlock(&dentry->d_lock);
+			dput(dentry);
+			name[name_len] = 0; /* to be sure*/
+		} else {
+			name[0] = 0;
+		}
+	}
+
+	va_start(args, fmt);
+
+	level = printk_get_level(fmt);
+	vaf.fmt = printk_skip_level(fmt);
+	vaf.va = &args;
+
+	printk("%c%cntfs3: %s: ino=%lx, \"%s\" %pV\n", KERN_SOH_ASCII, level,
+	       sb->s_id, inode->i_ino, name ? name : "", &vaf);
+
+	va_end(args);
+
+	atomic_inc(&s_name_buf_cnt);
+	if (name != s_name_buf)
+		kfree(name);
+}
+#endif
+
+/*
+ * Shared memory struct.
+ *
+ * on-disk ntfs's upcase table is created by ntfs formater
+ * 'upcase' table is 128K bytes of memory
+ * we should read it into memory when mounting
+ * Several ntfs volumes likely use the same 'upcase' table
+ * It is good idea to share in-memory 'upcase' table between different volumes
+ * Unfortunately winxp/vista/win7 use different upcase tables
+ */
+static DEFINE_SPINLOCK(s_shared_lock);
+
+static struct {
+	void *ptr;
+	u32 len;
+	int cnt;
+} s_shared[8];
+
+/*
+ * ntfs_set_shared
+ *
+ * Returns 'ptr' if pointer was saved in shared memory
+ * Returns NULL if pointer was not shared
+ */
+void *ntfs_set_shared(void *ptr, u32 bytes)
+{
+	void *ret = NULL;
+	int i, j = -1;
+
+	spin_lock(&s_shared_lock);
+	for (i = 0; i < ARRAY_SIZE(s_shared); i++) {
+		if (!s_shared[i].cnt) {
+			j = i;
+		} else if (bytes == s_shared[i].len &&
+			   !memcmp(s_shared[i].ptr, ptr, bytes)) {
+			s_shared[i].cnt += 1;
+			ret = s_shared[i].ptr;
+			break;
+		}
+	}
+
+	if (!ret && j != -1) {
+		s_shared[j].ptr = ptr;
+		s_shared[j].len = bytes;
+		s_shared[j].cnt = 1;
+		ret = ptr;
+	}
+	spin_unlock(&s_shared_lock);
+
+	return ret;
+}
+
+/*
+ * ntfs_put_shared
+ *
+ * Returns 'ptr' if pointer is not shared anymore
+ * Returns NULL if pointer is still shared
+ */
+void *ntfs_put_shared(void *ptr)
+{
+	void *ret = ptr;
+	int i;
+
+	spin_lock(&s_shared_lock);
+	for (i = 0; i < ARRAY_SIZE(s_shared); i++) {
+		if (s_shared[i].cnt && s_shared[i].ptr == ptr) {
+			if (--s_shared[i].cnt)
+				ret = NULL;
+			break;
+		}
+	}
+	spin_unlock(&s_shared_lock);
+
+	return ret;
+}
+
+static inline void clear_mount_options(struct ntfs_mount_options *options)
+{
+	unload_nls(options->nls);
+}
+
+enum Opt {
+	Opt_uid,
+	Opt_gid,
+	Opt_umask,
+	Opt_dmask,
+	Opt_fmask,
+	Opt_immutable,
+	Opt_discard,
+	Opt_force,
+	Opt_sparse,
+	Opt_nohidden,
+	Opt_showmeta,
+	Opt_acl,
+	Opt_noatime,
+	Opt_nls,
+	Opt_prealloc,
+	Opt_no_acs_rules,
+	Opt_err,
+};
+
+static const match_table_t ntfs_tokens = {
+	{ Opt_uid, "uid=%u" },
+	{ Opt_gid, "gid=%u" },
+	{ Opt_umask, "umask=%o" },
+	{ Opt_dmask, "dmask=%o" },
+	{ Opt_fmask, "fmask=%o" },
+	{ Opt_immutable, "sys_immutable" },
+	{ Opt_discard, "discard" },
+	{ Opt_force, "force" },
+	{ Opt_sparse, "sparse" },
+	{ Opt_nohidden, "nohidden" },
+	{ Opt_acl, "acl" },
+	{ Opt_noatime, "noatime" },
+	{ Opt_showmeta, "showmeta" },
+	{ Opt_nls, "nls=%s" },
+	{ Opt_prealloc, "prealloc" },
+	{ Opt_no_acs_rules, "no_acs_rules" },
+	{ Opt_err, NULL },
+};
+
+static noinline int ntfs_parse_options(struct super_block *sb, char *options,
+				       int silent,
+				       struct ntfs_mount_options *opts)
+{
+	char *p;
+	substring_t args[MAX_OPT_ARGS];
+	int option;
+	char nls_name[30];
+	struct nls_table *nls;
+
+	opts->fs_uid = current_uid();
+	opts->fs_gid = current_gid();
+	opts->fs_fmask_inv = opts->fs_dmask_inv = ~current_umask();
+	nls_name[0] = 0;
+
+	if (!options)
+		goto out;
+
+	while ((p = strsep(&options, ","))) {
+		int token;
+
+		if (!*p)
+			continue;
+
+		token = match_token(p, ntfs_tokens, args);
+		switch (token) {
+		case Opt_immutable:
+			opts->sys_immutable = 1;
+			break;
+		case Opt_uid:
+			if (match_int(&args[0], &option))
+				return -EINVAL;
+			opts->fs_uid = make_kuid(current_user_ns(), option);
+			if (!uid_valid(opts->fs_uid))
+				return -EINVAL;
+			opts->uid = 1;
+			break;
+		case Opt_gid:
+			if (match_int(&args[0], &option))
+				return -EINVAL;
+			opts->fs_gid = make_kgid(current_user_ns(), option);
+			if (!gid_valid(opts->fs_gid))
+				return -EINVAL;
+			opts->gid = 1;
+			break;
+		case Opt_umask:
+			if (match_octal(&args[0], &option))
+				return -EINVAL;
+			opts->fs_fmask_inv = opts->fs_dmask_inv = ~option;
+			opts->fmask = opts->dmask = 1;
+			break;
+		case Opt_dmask:
+			if (match_octal(&args[0], &option))
+				return -EINVAL;
+			opts->fs_dmask_inv = ~option;
+			opts->dmask = 1;
+			break;
+		case Opt_fmask:
+			if (match_octal(&args[0], &option))
+				return -EINVAL;
+			opts->fs_fmask_inv = ~option;
+			opts->fmask = 1;
+			break;
+		case Opt_discard:
+			opts->discard = 1;
+			break;
+		case Opt_force:
+			opts->force = 1;
+			break;
+		case Opt_sparse:
+			opts->sparse = 1;
+			break;
+		case Opt_nohidden:
+			opts->nohidden = 1;
+			break;
+		case Opt_acl:
+#ifdef CONFIG_NTFS3_FS_POSIX_ACL
+			sb->s_flags |= SB_POSIXACL;
+			break;
+#else
+			ntfs_err(sb, "support for ACL not compiled in!");
+			return -EINVAL;
+#endif
+		case Opt_noatime:
+			sb->s_flags |= SB_NOATIME;
+			break;
+		case Opt_showmeta:
+			opts->showmeta = 1;
+			break;
+		case Opt_nls:
+			match_strlcpy(nls_name, &args[0], sizeof(nls_name));
+			break;
+		case Opt_prealloc:
+			opts->prealloc = 1;
+			break;
+		case Opt_no_acs_rules:
+			opts->no_acs_rules = 1;
+			break;
+		default:
+			if (!silent)
+				ntfs_err(
+					sb,
+					"Unrecognized mount option \"%s\" or missing value",
+					p);
+			//return -EINVAL;
+		}
+	}
+
+out:
+	if (!strcmp(nls_name[0] ? nls_name : CONFIG_NLS_DEFAULT, "utf8")) {
+		/* For UTF-8 use utf16s_to_utf8s/utf8s_to_utf16s instead of nls */
+		nls = NULL;
+	} else if (nls_name[0]) {
+		nls = load_nls(nls_name);
+		if (!nls) {
+			ntfs_err(sb, "failed to load \"%s\"", nls_name);
+			return -EINVAL;
+		}
+	} else {
+		nls = load_nls_default();
+		if (!nls) {
+			ntfs_err(sb, "failed to load default nls");
+			return -EINVAL;
+		}
+	}
+	opts->nls = nls;
+
+	return 0;
+}
+
+static int ntfs_remount(struct super_block *sb, int *flags, char *data)
+{
+	int err, ro_rw;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_mount_options old_opts;
+	char *orig_data = kstrdup(data, GFP_KERNEL);
+
+	if (data && !orig_data)
+		return -ENOMEM;
+
+	/* Store  original options */
+	memcpy(&old_opts, &sbi->options, sizeof(old_opts));
+	clear_mount_options(&sbi->options);
+	memset(&sbi->options, 0, sizeof(sbi->options));
+
+	err = ntfs_parse_options(sb, data, 0, &sbi->options);
+	if (err)
+		goto restore_opts;
+
+	ro_rw = 0;
+	if (sb_rdonly(sb) && !(*flags & SB_RDONLY)) {
+		/* ro -> rw */
+		ro_rw = 1;
+		if (sbi->flags & NTFS_FLAGS_NEED_REPLAY) {
+			ntfs_warn(
+				sb,
+				"Couldn't remount rw because journal is not replayed. Please umount/remount instead\n");
+			err = -EINVAL;
+			goto restore_opts;
+		}
+	}
+
+	sync_filesystem(sb);
+
+	if (ro_rw && (sbi->volume.flags & VOLUME_FLAG_DIRTY) &&
+	    !sbi->options.force) {
+		ntfs_warn(sb, "volume is dirty and \"force\" flag is not set!");
+		err = -EINVAL;
+		goto restore_opts;
+	}
+
+	clear_mount_options(&old_opts);
+
+	*flags = (*flags & ~SB_LAZYTIME) | (sb->s_flags & SB_LAZYTIME) |
+		 SB_NODIRATIME | SB_NOATIME;
+	ntfs_info(sb, "re-mounted. Opts: %s", orig_data);
+	err = 0;
+	goto out;
+
+restore_opts:
+	clear_mount_options(&sbi->options);
+	memcpy(&sbi->options, &old_opts, sizeof(old_opts));
+
+out:
+	kfree(orig_data);
+	return err;
+}
+
+static struct kmem_cache *ntfs_inode_cachep;
+
+static struct inode *ntfs_alloc_inode(struct super_block *sb)
+{
+	struct ntfs_inode *ni = kmem_cache_alloc(ntfs_inode_cachep, GFP_NOFS);
+
+	if (!ni)
+		return NULL;
+
+	memset(ni, 0, offsetof(struct ntfs_inode, vfs_inode));
+
+	mutex_init(&ni->ni_lock);
+
+	return &ni->vfs_inode;
+}
+
+static void ntfs_i_callback(struct rcu_head *head)
+{
+	struct inode *inode = container_of(head, struct inode, i_rcu);
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	mutex_destroy(&ni->ni_lock);
+
+	kmem_cache_free(ntfs_inode_cachep, ni);
+}
+
+static void ntfs_destroy_inode(struct inode *inode)
+{
+	call_rcu(&inode->i_rcu, ntfs_i_callback);
+}
+
+static void init_once(void *foo)
+{
+	struct ntfs_inode *ni = foo;
+
+	inode_init_once(&ni->vfs_inode);
+}
+
+/* noinline to reduce binary size*/
+static noinline void put_ntfs(struct ntfs_sb_info *sbi)
+{
+	ntfs_free(sbi->new_rec);
+	ntfs_vfree(ntfs_put_shared(sbi->upcase));
+	ntfs_free(sbi->def_table);
+
+	wnd_close(&sbi->mft.bitmap);
+	wnd_close(&sbi->used.bitmap);
+
+	if (sbi->mft.ni)
+		iput(&sbi->mft.ni->vfs_inode);
+
+	if (sbi->security.ni)
+		iput(&sbi->security.ni->vfs_inode);
+
+	if (sbi->reparse.ni)
+		iput(&sbi->reparse.ni->vfs_inode);
+
+	if (sbi->objid.ni)
+		iput(&sbi->objid.ni->vfs_inode);
+
+	if (sbi->volume.ni)
+		iput(&sbi->volume.ni->vfs_inode);
+
+	ntfs_update_mftmirr(sbi, 0);
+
+	indx_clear(&sbi->security.index_sii);
+	indx_clear(&sbi->security.index_sdh);
+	indx_clear(&sbi->reparse.index_r);
+	indx_clear(&sbi->objid.index_o);
+	ntfs_free(sbi->compress.lznt);
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+	xpress_free_decompressor(sbi->compress.xpress);
+	lzx_free_decompressor(sbi->compress.lzx);
+#endif
+	clear_mount_options(&sbi->options);
+
+	ntfs_free(sbi);
+}
+
+static void ntfs_put_super(struct super_block *sb)
+{
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+
+	/*mark rw ntfs as clear, if possible*/
+	ntfs_set_state(sbi, NTFS_DIRTY_CLEAR);
+
+	put_ntfs(sbi);
+
+	sync_blockdev(sb->s_bdev);
+}
+
+static int ntfs_statfs(struct dentry *dentry, struct kstatfs *buf)
+{
+	struct super_block *sb = dentry->d_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct wnd_bitmap *wnd = &sbi->used.bitmap;
+
+	buf->f_type = sb->s_magic;
+	buf->f_bsize = sbi->cluster_size;
+	buf->f_blocks = wnd->nbits;
+
+	buf->f_bfree = buf->f_bavail = wnd_zeroes(wnd);
+	buf->f_fsid.val[0] = sbi->volume.ser_num;
+	buf->f_fsid.val[1] = (sbi->volume.ser_num >> 32);
+	buf->f_namelen = NTFS_NAME_LEN;
+
+	return 0;
+}
+
+static int ntfs_show_options(struct seq_file *m, struct dentry *root)
+{
+	struct super_block *sb = root->d_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_mount_options *opts = &sbi->options;
+	struct user_namespace *user_ns = seq_user_ns(m);
+
+	if (opts->uid)
+		seq_printf(m, ",uid=%u",
+			   from_kuid_munged(user_ns, opts->fs_uid));
+	if (opts->gid)
+		seq_printf(m, ",gid=%u",
+			   from_kgid_munged(user_ns, opts->fs_gid));
+	if (opts->fmask)
+		seq_printf(m, ",fmask=%04o", ~opts->fs_fmask_inv);
+	if (opts->dmask)
+		seq_printf(m, ",dmask=%04o", ~opts->fs_dmask_inv);
+	if (opts->nls)
+		seq_printf(m, ",nls=%s", opts->nls->charset);
+	else
+		seq_puts(m, ",nls=utf8");
+	if (opts->sys_immutable)
+		seq_puts(m, ",sys_immutable");
+	if (opts->discard)
+		seq_puts(m, ",discard");
+	if (opts->sparse)
+		seq_puts(m, ",sparse");
+	if (opts->showmeta)
+		seq_puts(m, ",showmeta");
+	if (opts->nohidden)
+		seq_puts(m, ",nohidden");
+	if (opts->force)
+		seq_puts(m, ",force");
+	if (opts->no_acs_rules)
+		seq_puts(m, ",no_acs_rules");
+	if (opts->prealloc)
+		seq_puts(m, ",prealloc");
+	if (sb->s_flags & SB_POSIXACL)
+		seq_puts(m, ",acl");
+	if (sb->s_flags & SB_NOATIME)
+		seq_puts(m, ",noatime");
+
+	return 0;
+}
+
+/*super_operations::sync_fs*/
+static int ntfs_sync_fs(struct super_block *sb, int wait)
+{
+	int err = 0, err2;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_inode *ni;
+	struct inode *inode;
+
+	ni = sbi->security.ni;
+	if (ni) {
+		inode = &ni->vfs_inode;
+		err2 = _ni_write_inode(inode, wait);
+		if (err2 && !err)
+			err = err2;
+	}
+
+	ni = sbi->objid.ni;
+	if (ni) {
+		inode = &ni->vfs_inode;
+		err2 = _ni_write_inode(inode, wait);
+		if (err2 && !err)
+			err = err2;
+	}
+
+	ni = sbi->reparse.ni;
+	if (ni) {
+		inode = &ni->vfs_inode;
+		err2 = _ni_write_inode(inode, wait);
+		if (err2 && !err)
+			err = err2;
+	}
+
+	if (!err)
+		ntfs_set_state(sbi, NTFS_DIRTY_CLEAR);
+
+	ntfs_update_mftmirr(sbi, wait);
+
+	return err;
+}
+
+static const struct super_operations ntfs_sops = {
+	.alloc_inode = ntfs_alloc_inode,
+	.destroy_inode = ntfs_destroy_inode,
+	.evict_inode = ntfs_evict_inode,
+	.put_super = ntfs_put_super,
+	.statfs = ntfs_statfs,
+	.show_options = ntfs_show_options,
+	.sync_fs = ntfs_sync_fs,
+	.remount_fs = ntfs_remount,
+	.write_inode = ntfs3_write_inode,
+};
+
+static struct inode *ntfs_export_get_inode(struct super_block *sb, u64 ino,
+					   u32 generation)
+{
+	struct MFT_REF ref;
+	struct inode *inode;
+
+	ref.low = cpu_to_le32(ino);
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	ref.high = cpu_to_le16(ino >> 32);
+#else
+	ref.high = 0;
+#endif
+	ref.seq = cpu_to_le16(generation);
+
+	inode = ntfs_iget5(sb, &ref, NULL);
+	if (!IS_ERR(inode) && is_bad_inode(inode)) {
+		iput(inode);
+		inode = ERR_PTR(-ESTALE);
+	}
+
+	return inode;
+}
+
+static struct dentry *ntfs_fh_to_dentry(struct super_block *sb, struct fid *fid,
+					int fh_len, int fh_type)
+{
+	return generic_fh_to_dentry(sb, fid, fh_len, fh_type,
+				    ntfs_export_get_inode);
+}
+
+static struct dentry *ntfs_fh_to_parent(struct super_block *sb, struct fid *fid,
+					int fh_len, int fh_type)
+{
+	return generic_fh_to_parent(sb, fid, fh_len, fh_type,
+				    ntfs_export_get_inode);
+}
+
+/* TODO: == ntfs_sync_inode */
+static int ntfs_nfs_commit_metadata(struct inode *inode)
+{
+	return _ni_write_inode(inode, 1);
+}
+
+static const struct export_operations ntfs_export_ops = {
+	.fh_to_dentry = ntfs_fh_to_dentry,
+	.fh_to_parent = ntfs_fh_to_parent,
+	.get_parent = ntfs3_get_parent,
+	.commit_metadata = ntfs_nfs_commit_metadata,
+};
+
+/* Returns Gb,Mb to print with "%u.%02u Gb" */
+static u32 format_size_gb(const u64 bytes, u32 *mb)
+{
+	/* Do simple right 30 bit shift of 64 bit value */
+	u64 kbytes = bytes >> 10;
+	u32 kbytes32 = kbytes;
+
+	*mb = (100 * (kbytes32 & 0xfffff) + 0x7ffff) >> 20;
+	if (*mb >= 100)
+		*mb = 99;
+
+	return (kbytes32 >> 20) | (((u32)(kbytes >> 32)) << 12);
+}
+
+static u32 true_sectors_per_clst(const struct NTFS_BOOT *boot)
+{
+	return boot->sectors_per_clusters <= 0x80 ?
+		       boot->sectors_per_clusters :
+		       (1u << (0 - boot->sectors_per_clusters));
+}
+
+/* inits internal info from on-disk boot sector*/
+static int ntfs_init_from_boot(struct super_block *sb, u32 sector_size,
+			       u64 dev_size)
+{
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	int err;
+	u32 mb, gb, boot_sector_size, sct_per_clst, record_size;
+	u64 sectors, clusters, fs_size, mlcn, mlcn2;
+	struct NTFS_BOOT *boot;
+	struct buffer_head *bh;
+	struct MFT_REC *rec;
+	u16 fn, ao;
+
+	sbi->volume.blocks = dev_size >> PAGE_SHIFT;
+
+	bh = ntfs_bread(sb, 0);
+	if (!bh)
+		return -EIO;
+
+	err = -EINVAL;
+	boot = (struct NTFS_BOOT *)bh->b_data;
+
+	if (memcmp(boot->system_id, "NTFS    ", sizeof("NTFS    ") - 1))
+		goto out;
+
+	/* 0x55AA is not mandaroty. Thanks Maxim Suhanov*/
+	/*if (0x55 != boot->boot_magic[0] || 0xAA != boot->boot_magic[1])
+	 *	goto out;
+	 */
+
+	boot_sector_size = (u32)boot->bytes_per_sector[1] << 8;
+	if (boot->bytes_per_sector[0] || boot_sector_size < SECTOR_SIZE ||
+	    !is_power_of2(boot_sector_size)) {
+		goto out;
+	}
+
+	/* cluster size: 512, 1K, 2K, 4K, ... 2M */
+	sct_per_clst = true_sectors_per_clst(boot);
+	if (!is_power_of2(sct_per_clst))
+		goto out;
+
+	mlcn = le64_to_cpu(boot->mft_clst);
+	mlcn2 = le64_to_cpu(boot->mft2_clst);
+	sectors = le64_to_cpu(boot->sectors_per_volume);
+
+	if (mlcn * sct_per_clst >= sectors)
+		goto out;
+
+	if (mlcn2 * sct_per_clst >= sectors)
+		goto out;
+
+	/* Check MFT record size */
+	if ((boot->record_size < 0 &&
+	     SECTOR_SIZE > (2U << (-boot->record_size))) ||
+	    (boot->record_size >= 0 && !is_power_of2(boot->record_size))) {
+		goto out;
+	}
+
+	/* Check index record size */
+	if ((boot->index_size < 0 &&
+	     SECTOR_SIZE > (2U << (-boot->index_size))) ||
+	    (boot->index_size >= 0 && !is_power_of2(boot->index_size))) {
+		goto out;
+	}
+
+	sbi->sector_size = boot_sector_size;
+	sbi->sector_bits = blksize_bits(boot_sector_size);
+	fs_size = (sectors + 1) << sbi->sector_bits;
+
+	gb = format_size_gb(fs_size, &mb);
+
+	/*
+	 * - Volume formatted and mounted with the same sector size
+	 * - Volume formatted 4K and mounted as 512
+	 * - Volume formatted 512 and mounted as 4K
+	 */
+	if (sbi->sector_size != sector_size) {
+		ntfs_warn(sb,
+			  "Different NTFS' sector size and media sector size");
+		dev_size += sector_size - 1;
+	}
+
+	sbi->cluster_size = boot_sector_size * sct_per_clst;
+	sbi->cluster_bits = blksize_bits(sbi->cluster_size);
+
+	sbi->mft.lbo = mlcn << sbi->cluster_bits;
+	sbi->mft.lbo2 = mlcn2 << sbi->cluster_bits;
+
+	if (sbi->cluster_size < sbi->sector_size)
+		goto out;
+
+	sbi->cluster_mask = sbi->cluster_size - 1;
+	sbi->cluster_mask_inv = ~(u64)sbi->cluster_mask;
+	sbi->record_size = record_size = boot->record_size < 0 ?
+						 1 << (-boot->record_size) :
+						 (u32)boot->record_size
+							 << sbi->cluster_bits;
+
+	if (record_size > MAXIMUM_BYTES_PER_MFT)
+		goto out;
+
+	sbi->record_bits = blksize_bits(record_size);
+	sbi->attr_size_tr = (5 * record_size >> 4); // ~320 bytes
+
+	sbi->max_bytes_per_attr =
+		record_size - QuadAlign(MFTRECORD_FIXUP_OFFSET_1) -
+		QuadAlign(((record_size >> SECTOR_SHIFT) * sizeof(short))) -
+		QuadAlign(sizeof(enum ATTR_TYPE));
+
+	sbi->index_size = boot->index_size < 0 ?
+				  1u << (-boot->index_size) :
+				  (u32)boot->index_size << sbi->cluster_bits;
+
+	sbi->volume.ser_num = le64_to_cpu(boot->serial_num);
+	sbi->volume.size = sectors << sbi->sector_bits;
+
+	/* warning if RAW volume */
+	if (dev_size < fs_size) {
+		u32 mb0, gb0;
+
+		gb0 = format_size_gb(dev_size, &mb0);
+		ntfs_warn(
+			sb,
+			"RAW NTFS volume: Filesystem size %u.%02u Gb > volume size %u.%02u Gb. Mount in read-only",
+			gb, mb, gb0, mb0);
+		sb->s_flags |= SB_RDONLY;
+	}
+
+	clusters = sbi->volume.size >> sbi->cluster_bits;
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+#if BITS_PER_LONG < 64
+#error "CONFIG_NTFS3_64BIT_CLUSTER incompatible in 32 bit OS"
+#endif
+#else
+	/* 32 bits per cluster */
+	if (clusters >> 32) {
+		ntfs_notice(
+			sb,
+			"NTFS %u.%02u Gb is too big to use 32 bits per cluster",
+			gb, mb);
+		goto out;
+	}
+#endif
+
+	sbi->used.bitmap.nbits = clusters;
+
+	rec = ntfs_zalloc(record_size);
+	if (!rec) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	sbi->new_rec = rec;
+	rec->rhdr.sign = NTFS_FILE_SIGNATURE;
+	rec->rhdr.fix_off = cpu_to_le16(MFTRECORD_FIXUP_OFFSET_1);
+	fn = (sbi->record_size >> SECTOR_SHIFT) + 1;
+	rec->rhdr.fix_num = cpu_to_le16(fn);
+	ao = QuadAlign(MFTRECORD_FIXUP_OFFSET_1 + sizeof(short) * fn);
+	rec->attr_off = cpu_to_le16(ao);
+	rec->used = cpu_to_le32(ao + QuadAlign(sizeof(enum ATTR_TYPE)));
+	rec->total = cpu_to_le32(sbi->record_size);
+	((struct ATTRIB *)Add2Ptr(rec, ao))->type = ATTR_END;
+
+	if (sbi->cluster_size < PAGE_SIZE)
+		sb_set_blocksize(sb, sbi->cluster_size);
+
+	sbi->block_mask = sb->s_blocksize - 1;
+	sbi->blocks_per_cluster = sbi->cluster_size >> sb->s_blocksize_bits;
+	sbi->volume.blocks = sbi->volume.size >> sb->s_blocksize_bits;
+
+	/* Maximum size for normal files */
+	sbi->maxbytes = (clusters << sbi->cluster_bits) - 1;
+
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	if (clusters >= (1ull << (64 - sbi->cluster_bits)))
+		sbi->maxbytes = -1;
+	sbi->maxbytes_sparse = -1;
+#else
+	/* Maximum size for sparse file */
+	sbi->maxbytes_sparse = (1ull << (sbi->cluster_bits + 32)) - 1;
+#endif
+
+	err = 0;
+
+out:
+	brelse(bh);
+
+	return err;
+}
+
+/* try to mount*/
+static int ntfs_fill_super(struct super_block *sb, void *data, int silent)
+{
+	int err;
+	struct ntfs_sb_info *sbi;
+	struct block_device *bdev = sb->s_bdev;
+	struct inode *bd_inode = bdev->bd_inode;
+	struct request_queue *rq = bdev_get_queue(bdev);
+	struct inode *inode = NULL;
+	struct ntfs_inode *ni;
+	size_t i, tt;
+	CLST vcn, lcn, len;
+	struct ATTRIB *attr;
+	const struct VOLUME_INFO *info;
+	u32 idx, done, bytes;
+	struct ATTR_DEF_ENTRY *t;
+	u16 *upcase = NULL;
+	u16 *shared;
+	bool is_ro;
+	struct MFT_REF ref;
+
+	ref.high = 0;
+
+	sbi = ntfs_zalloc(sizeof(struct ntfs_sb_info));
+	if (!sbi)
+		return -ENOMEM;
+
+	sb->s_fs_info = sbi;
+	sbi->sb = sb;
+	sb->s_flags |= SB_NODIRATIME;
+	sb->s_magic = 0x7366746e; // "ntfs"
+	sb->s_op = &ntfs_sops;
+	sb->s_export_op = &ntfs_export_ops;
+	sb->s_time_gran = NTFS_TIME_GRAN; // 100 nsec
+	sb->s_xattr = ntfs_xattr_handlers;
+
+	ratelimit_state_init(&sbi->msg_ratelimit, DEFAULT_RATELIMIT_INTERVAL,
+			     DEFAULT_RATELIMIT_BURST);
+
+	err = ntfs_parse_options(sb, data, silent, &sbi->options);
+	if (err)
+		goto out;
+
+	if (!rq || !blk_queue_discard(rq) || !rq->limits.discard_granularity) {
+		;
+	} else {
+		sbi->discard_granularity = rq->limits.discard_granularity;
+		sbi->discard_granularity_mask_inv =
+			~(u64)(sbi->discard_granularity - 1);
+	}
+
+	sb_set_blocksize(sb, PAGE_SIZE);
+
+	/* parse boot */
+	err = ntfs_init_from_boot(sb, rq ? queue_logical_block_size(rq) : 512,
+				  bd_inode->i_size);
+	if (err)
+		goto out;
+
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	sb->s_maxbytes = MAX_LFS_FILESIZE;
+#else
+	sb->s_maxbytes = 0xFFFFFFFFull << sbi->cluster_bits;
+#endif
+
+	mutex_init(&sbi->compress.mtx_lznt);
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+	mutex_init(&sbi->compress.mtx_xpress);
+	mutex_init(&sbi->compress.mtx_lzx);
+#endif
+
+	/*
+	 * Load $Volume. This should be done before $LogFile
+	 * 'cause 'sbi->volume.ni' is used 'ntfs_set_state'
+	 */
+	ref.low = cpu_to_le32(MFT_REC_VOL);
+	ref.seq = cpu_to_le16(MFT_REC_VOL);
+	inode = ntfs_iget5(sb, &ref, &NAME_VOLUME);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $Volume.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	/* Load and save label (not necessary) */
+	attr = ni_find_attr(ni, NULL, NULL, ATTR_LABEL, NULL, 0, NULL, NULL);
+
+	if (!attr) {
+		/* It is ok if no ATTR_LABEL */
+	} else if (!attr->non_res && !is_attr_ext(attr)) {
+		/* $AttrDef allows labels to be up to 128 symbols */
+		err = utf16s_to_utf8s(resident_data(attr),
+				      le32_to_cpu(attr->res.data_size) >> 1,
+				      UTF16_LITTLE_ENDIAN, sbi->volume.label,
+				      sizeof(sbi->volume.label));
+		if (err < 0)
+			sbi->volume.label[0] = 0;
+	} else {
+		/* should we break mounting here? */
+		//err = -EINVAL;
+		//goto out;
+	}
+
+	attr = ni_find_attr(ni, attr, NULL, ATTR_VOL_INFO, NULL, 0, NULL, NULL);
+	if (!attr || is_attr_ext(attr)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	info = resident_data_ex(attr, SIZEOF_ATTRIBUTE_VOLUME_INFO);
+	if (!info) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	sbi->volume.major_ver = info->major_ver;
+	sbi->volume.minor_ver = info->minor_ver;
+	sbi->volume.flags = info->flags;
+
+	sbi->volume.ni = ni;
+	inode = NULL;
+
+	/* Load $MFTMirr to estimate recs_mirr */
+	ref.low = cpu_to_le32(MFT_REC_MIRR);
+	ref.seq = cpu_to_le16(MFT_REC_MIRR);
+	inode = ntfs_iget5(sb, &ref, &NAME_MIRROR);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $MFTMirr.");
+		inode = NULL;
+		goto out;
+	}
+
+	sbi->mft.recs_mirr =
+		ntfs_up_cluster(sbi, inode->i_size) >> sbi->record_bits;
+
+	iput(inode);
+
+	/* Load $LogFile to replay */
+	ref.low = cpu_to_le32(MFT_REC_LOG);
+	ref.seq = cpu_to_le16(MFT_REC_LOG);
+	inode = ntfs_iget5(sb, &ref, &NAME_LOGFILE);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $LogFile.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	err = ntfs_loadlog_and_replay(ni, sbi);
+	if (err)
+		goto out;
+
+	iput(inode);
+	inode = NULL;
+
+	is_ro = sb_rdonly(sbi->sb);
+
+	if (sbi->flags & NTFS_FLAGS_NEED_REPLAY) {
+		if (!is_ro) {
+			ntfs_warn(sb,
+				  "failed to replay log file. Can't mount rw!");
+			err = -EINVAL;
+			goto out;
+		}
+	} else if (sbi->volume.flags & VOLUME_FLAG_DIRTY) {
+		if (!is_ro && !sbi->options.force) {
+			ntfs_warn(
+				sb,
+				"volume is dirty and \"force\" flag is not set!");
+			err = -EINVAL;
+			goto out;
+		}
+	}
+
+	/* Load $MFT */
+	ref.low = cpu_to_le32(MFT_REC_MFT);
+	ref.seq = cpu_to_le16(1);
+
+	inode = ntfs_iget5(sb, &ref, &NAME_MFT);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $MFT.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	sbi->mft.used = ni->i_valid >> sbi->record_bits;
+	tt = inode->i_size >> sbi->record_bits;
+	sbi->mft.next_free = MFT_REC_USER;
+
+	err = wnd_init(&sbi->mft.bitmap, sb, tt);
+	if (err)
+		goto out;
+
+	err = ni_load_all_mi(ni);
+	if (err)
+		goto out;
+
+	sbi->mft.ni = ni;
+
+	/* Load $BadClus */
+	ref.low = cpu_to_le32(MFT_REC_BADCLUST);
+	ref.seq = cpu_to_le16(MFT_REC_BADCLUST);
+	inode = ntfs_iget5(sb, &ref, &NAME_BADCLUS);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $BadClus.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	for (i = 0; run_get_entry(&ni->file.run, i, &vcn, &lcn, &len); i++) {
+		if (lcn == SPARSE_LCN)
+			continue;
+
+		if (!sbi->bad_clusters)
+			ntfs_notice(sb, "Volume contains bad blocks");
+
+		sbi->bad_clusters += len;
+	}
+
+	iput(inode);
+
+	/* Load $Bitmap */
+	ref.low = cpu_to_le32(MFT_REC_BITMAP);
+	ref.seq = cpu_to_le16(MFT_REC_BITMAP);
+	inode = ntfs_iget5(sb, &ref, &NAME_BITMAP);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $Bitmap.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+#ifndef CONFIG_NTFS3_64BIT_CLUSTER
+	if (inode->i_size >> 32) {
+		err = -EINVAL;
+		goto out;
+	}
+#endif
+
+	/* Check bitmap boundary */
+	tt = sbi->used.bitmap.nbits;
+	if (inode->i_size < bitmap_size(tt)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Not necessary */
+	sbi->used.bitmap.set_tail = true;
+	err = wnd_init(&sbi->used.bitmap, sbi->sb, tt);
+	if (err)
+		goto out;
+
+	iput(inode);
+
+	/* Compute the mft zone */
+	err = ntfs_refresh_zone(sbi);
+	if (err)
+		goto out;
+
+	/* Load $AttrDef */
+	ref.low = cpu_to_le32(MFT_REC_ATTR);
+	ref.seq = cpu_to_le16(MFT_REC_ATTR);
+	inode = ntfs_iget5(sbi->sb, &ref, &NAME_ATTRDEF);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $AttrDef -> %d", err);
+		inode = NULL;
+		goto out;
+	}
+
+	if (inode->i_size < sizeof(struct ATTR_DEF_ENTRY)) {
+		err = -EINVAL;
+		goto out;
+	}
+	bytes = inode->i_size;
+	sbi->def_table = t = ntfs_malloc(bytes);
+	if (!t) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	for (done = idx = 0; done < bytes; done += PAGE_SIZE, idx++) {
+		unsigned long tail = bytes - done;
+		struct page *page = ntfs_map_page(inode->i_mapping, idx);
+
+		if (IS_ERR(page)) {
+			err = PTR_ERR(page);
+			goto out;
+		}
+		memcpy(Add2Ptr(t, done), page_address(page),
+		       min(PAGE_SIZE, tail));
+		ntfs_unmap_page(page);
+
+		if (!idx && ATTR_STD != t->type) {
+			err = -EINVAL;
+			goto out;
+		}
+	}
+
+	t += 1;
+	sbi->def_entries = 1;
+	done = sizeof(struct ATTR_DEF_ENTRY);
+	sbi->reparse.max_size = MAXIMUM_REPARSE_DATA_BUFFER_SIZE;
+	sbi->ea_max_size = 0x10000; /* default formater value */
+
+	while (done + sizeof(struct ATTR_DEF_ENTRY) <= bytes) {
+		u32 t32 = le32_to_cpu(t->type);
+		u64 sz = le64_to_cpu(t->max_sz);
+
+		if ((t32 & 0xF) || le32_to_cpu(t[-1].type) >= t32)
+			break;
+
+		if (t->type == ATTR_REPARSE)
+			sbi->reparse.max_size = sz;
+		else if (t->type == ATTR_EA)
+			sbi->ea_max_size = sz;
+
+		done += sizeof(struct ATTR_DEF_ENTRY);
+		t += 1;
+		sbi->def_entries += 1;
+	}
+	iput(inode);
+
+	/* Load $UpCase */
+	ref.low = cpu_to_le32(MFT_REC_UPCASE);
+	ref.seq = cpu_to_le16(MFT_REC_UPCASE);
+	inode = ntfs_iget5(sb, &ref, &NAME_UPCASE);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load $LogFile.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	if (inode->i_size != 0x10000 * sizeof(short)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	sbi->upcase = upcase = ntfs_vmalloc(0x10000 * sizeof(short));
+	if (!upcase) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	for (idx = 0; idx < (0x10000 * sizeof(short) >> PAGE_SHIFT); idx++) {
+		const __le16 *src;
+		u16 *dst = Add2Ptr(upcase, idx << PAGE_SHIFT);
+		struct page *page = ntfs_map_page(inode->i_mapping, idx);
+
+		if (IS_ERR(page)) {
+			err = PTR_ERR(page);
+			goto out;
+		}
+
+		src = page_address(page);
+
+#ifdef __BIG_ENDIAN
+		for (i = 0; i < PAGE_SIZE / sizeof(u16); i++)
+			*dst++ = le16_to_cpu(*src++);
+#else
+		memcpy(dst, src, PAGE_SIZE);
+#endif
+		ntfs_unmap_page(page);
+	}
+
+	shared = ntfs_set_shared(upcase, 0x10000 * sizeof(short));
+	if (shared && upcase != shared) {
+		sbi->upcase = shared;
+		ntfs_vfree(upcase);
+	}
+
+	iput(inode);
+	inode = NULL;
+
+	if (is_ntfs3(sbi)) {
+		/* Load $Secure */
+		err = ntfs_security_init(sbi);
+		if (err)
+			goto out;
+
+		/* Load $Extend */
+		err = ntfs_extend_init(sbi);
+		if (err)
+			goto load_root;
+
+		/* Load $Extend\$Reparse */
+		err = ntfs_reparse_init(sbi);
+		if (err)
+			goto load_root;
+
+		/* Load $Extend\$ObjId */
+		err = ntfs_objid_init(sbi);
+		if (err)
+			goto load_root;
+	}
+
+load_root:
+
+	/* Load root */
+	ref.low = cpu_to_le32(MFT_REC_ROOT);
+	ref.seq = cpu_to_le16(MFT_REC_ROOT);
+	inode = ntfs_iget5(sb, &ref, &NAME_ROOT);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		ntfs_err(sb, "Failed to load root.");
+		inode = NULL;
+		goto out;
+	}
+
+	ni = ntfs_i(inode);
+
+	sb->s_root = d_make_root(inode);
+
+	if (!sb->s_root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	return 0;
+
+out:
+	iput(inode);
+
+	if (sb->s_root) {
+		d_drop(sb->s_root);
+		sb->s_root = NULL;
+	}
+
+	put_ntfs(sbi);
+
+	sb->s_fs_info = NULL;
+	return err;
+}
+
+void ntfs_unmap_meta(struct super_block *sb, CLST lcn, CLST len)
+{
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct block_device *bdev = sb->s_bdev;
+	sector_t devblock = (u64)lcn * sbi->blocks_per_cluster;
+	unsigned long blocks = (u64)len * sbi->blocks_per_cluster;
+	unsigned long cnt = 0;
+	unsigned long limit = global_zone_page_state(NR_FREE_PAGES)
+			      << (PAGE_SHIFT - sb->s_blocksize_bits);
+
+	if (limit >= 0x2000)
+		limit -= 0x1000;
+	else if (limit < 32)
+		limit = 32;
+	else
+		limit >>= 1;
+
+	while (blocks--) {
+		clean_bdev_aliases(bdev, devblock++, 1);
+		if (cnt++ >= limit) {
+			sync_blockdev(bdev);
+			cnt = 0;
+		}
+	}
+}
+
+/*
+ * ntfs_discard
+ *
+ * issue a discard request (trim for SSD)
+ */
+int ntfs_discard(struct ntfs_sb_info *sbi, CLST lcn, CLST len)
+{
+	int err;
+	u64 lbo, bytes, start, end;
+	struct super_block *sb;
+
+	if (sbi->used.next_free_lcn == lcn + len)
+		sbi->used.next_free_lcn = lcn;
+
+	if (sbi->flags & NTFS_FLAGS_NODISCARD)
+		return -EOPNOTSUPP;
+
+	if (!sbi->options.discard)
+		return -EOPNOTSUPP;
+
+	lbo = (u64)lcn << sbi->cluster_bits;
+	bytes = (u64)len << sbi->cluster_bits;
+
+	/* Align up 'start' on discard_granularity */
+	start = (lbo + sbi->discard_granularity - 1) &
+		sbi->discard_granularity_mask_inv;
+	/* Align down 'end' on discard_granularity */
+	end = (lbo + bytes) & sbi->discard_granularity_mask_inv;
+
+	sb = sbi->sb;
+	if (start >= end)
+		return 0;
+
+	err = blkdev_issue_discard(sb->s_bdev, start >> 9, (end - start) >> 9,
+				   GFP_NOFS, 0);
+
+	if (err == -EOPNOTSUPP)
+		sbi->flags |= NTFS_FLAGS_NODISCARD;
+
+	return err;
+}
+
+static struct dentry *ntfs_mount(struct file_system_type *fs_type, int flags,
+				 const char *dev_name, void *data)
+{
+	return mount_bdev(fs_type, flags, dev_name, data, ntfs_fill_super);
+}
+
+static struct file_system_type ntfs_fs_type = {
+	.owner = THIS_MODULE,
+	.name = "ntfs3",
+	.mount = ntfs_mount,
+	.kill_sb = kill_block_super,
+	.fs_flags = FS_REQUIRES_DEV,
+};
+
+static int __init init_ntfs_fs(void)
+{
+	int err;
+
+	pr_notice("ntfs3: Index binary search\n");
+	pr_notice("ntfs3: Hot fix free clusters\n");
+	pr_notice("ntfs3: Max link count %u\n", NTFS_LINK_MAX);
+
+#ifdef CONFIG_NTFS3_FS_POSIX_ACL
+	pr_notice("ntfs3: Enabled Linux POSIX ACLs support\n");
+#endif
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	pr_notice("ntfs3: Activated 64 bits per cluster\n");
+#else
+	pr_notice("ntfs3: Activated 32 bits per cluster\n");
+#endif
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+	pr_notice("ntfs3: Read-only lzx/xpress compression included\n");
+#endif
+
+	ntfs_inode_cachep = kmem_cache_create(
+		"ntfs_inode_cache", sizeof(struct ntfs_inode), 0,
+		(SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD | SLAB_ACCOUNT),
+		init_once);
+	if (!ntfs_inode_cachep) {
+		err = -ENOMEM;
+		goto failed;
+	}
+
+	err = register_filesystem(&ntfs_fs_type);
+	if (!err)
+		return 0;
+
+	kmem_cache_destroy(ntfs_inode_cachep);
+
+failed:
+	return err;
+}
+
+static void __exit exit_ntfs_fs(void)
+{
+	if (ntfs_inode_cachep) {
+		rcu_barrier();
+		kmem_cache_destroy(ntfs_inode_cachep);
+	}
+
+	unregister_filesystem(&ntfs_fs_type);
+}
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("ntfs3 read/write filesystem");
+MODULE_INFO(behaviour, "Index binary search");
+MODULE_INFO(behaviour, "Hot fix free clusters");
+#ifdef CONFIG_NTFS3_FS_POSIX_ACL
+MODULE_INFO(behaviour, "Enabled Linux POSIX ACLs support");
+#endif
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+MODULE_INFO(cluster, "Activated 64 bits per cluster");
+#else
+MODULE_INFO(cluster, "Activated 32 bits per cluster");
+#endif
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+MODULE_INFO(compression, "Read-only lzx/xpress compression included");
+#endif
+
+MODULE_AUTHOR("Konstantin Komarov");
+MODULE_ALIAS_FS("ntfs3");
+
+module_init(init_ntfs_fs);
+module_exit(exit_ntfs_fs);
-- 
2.25.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
