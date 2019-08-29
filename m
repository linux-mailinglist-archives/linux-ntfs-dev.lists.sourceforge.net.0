Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C64ABBA3
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  6 Sep 2019 17:00:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i6FjB-00049W-Hl; Fri, 06 Sep 2019 15:00:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yefremov.denis@gmail.com>) id 1i3NeL-0005Fd-5q
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Aug 2019 16:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WRm9Dlayh6LoOp5c/Pq7/z+hWsqAetw4GK4CPNMVmzM=; b=gzJW/urqYGUr/WNBXTd01cs7gU
 Qipug9pFFK8ctW3HPxvgoKnxo0pVUuFxOeKNHJwnNSKCnalHwUEAvmdy6zUZc7L/AdiwZWPn+NfYL
 umLeTyH4oswiuTUKI1T16fuSklb8wNDulsSh/v94GvcFUm9TiU9GrRat/D4Dav0OSWVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WRm9Dlayh6LoOp5c/Pq7/z+hWsqAetw4GK4CPNMVmzM=; b=NISaqIjb8/+uD55i7c4hax0tT8
 RoYKpN28V5BrjQXL/f3yesNS7CoL38of1D5dqofqZ+Q+pxu8YJXXfDnA8zg+k68y85kGL4SMBMZTt
 Ur0/0LsdOMdKGZL63Rr9aBbGSlDx4E4i2r4rtx2kJ2pPxrPN/gwwgOC1e0Spm0VzwmxU=;
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i3NeJ-00346C-Py
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Aug 2019 16:51:53 +0000
Received: by mail-wm1-f68.google.com with SMTP id p13so4579579wmh.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 29 Aug 2019 09:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WRm9Dlayh6LoOp5c/Pq7/z+hWsqAetw4GK4CPNMVmzM=;
 b=Cnmg8TSW0ptC+fa27iQ4bEriBTWFWUg2n7CIS8JX4MYXzZZQPfkfkLR/cWWQTOy9jZ
 by4yZUWgoq3S2W7bUAuoQqF+oYefyM4RCZI6Wt4DjL7PTrb2cRDg+uNWgHKXn8H4RpCF
 CrD4WxbrNn7MuepJ1Tw00uwzDcUvrqlg4JoHZaNMwc5QAidqazYO6dDK77ASFPJ1wwnB
 ZCyhTiqK3P+0Bf53kR6foT5jWMPwetkW4nH1IKnScKgs82AzxhUAq+Cks3kBBVyP9LqW
 fNLkYhi2hplzpuWQuoAb+UyF+EAvfgtOsUcv+MK+30UztyjMJOC5I0VXXnh/LS+MqWyE
 L1eQ==
X-Gm-Message-State: APjAAAU6RG3kY0MUgaJ6ZGYC3eW2jkJ5P5RYefoQ92DO1RQandT1bdnI
 mRgAkSv+v8Z407NzSzWx1Fw=
X-Google-Smtp-Source: APXvYqxS8+iLPfnMOsQV2WHXPP0Xm+FMBUv/lN9MF07WLkCm1A7Ap2UXdrdTCdBt6n09CFaXPCIcHQ==
X-Received: by 2002:a1c:be15:: with SMTP id o21mr12562188wmf.140.1567097505283; 
 Thu, 29 Aug 2019 09:51:45 -0700 (PDT)
Received: from green.intra.ispras.ru (bran.ispras.ru. [83.149.199.196])
 by smtp.googlemail.com with ESMTPSA id o14sm8340770wrg.64.2019.08.29.09.51.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 09:51:44 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: linux-kernel@vger.kernel.org
Date: Thu, 29 Aug 2019 19:50:25 +0300
Message-Id: <20190829165025.15750-11-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829165025.15750-1-efremov@linux.com>
References: <20190829165025.15750-1-efremov@linux.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yefremov.denis[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i3NeJ-00346C-Py
X-Mailman-Approved-At: Fri, 06 Sep 2019 15:00:43 +0000
Subject: [Linux-NTFS-Dev] [PATCH v3 11/11] ntfs: remove (un)?likely() from
 IS_ERR() conditions
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
Cc: Joe Perches <joe@perches.com>, linux-ntfs-dev@lists.sourceforge.net,
 Andrew Morton <akpm@linux-foundation.org>,
 Anton Altaparmakov <anton@tuxera.com>, Denis Efremov <efremov@linux.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

"likely(!IS_ERR(x))" is excessive. IS_ERR() already uses
unlikely() internally.

Signed-off-by: Denis Efremov <efremov@linux.com>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: Joe Perches <joe@perches.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-ntfs-dev@lists.sourceforge.net
---
 fs/ntfs/mft.c     | 12 ++++++------
 fs/ntfs/namei.c   |  2 +-
 fs/ntfs/runlist.c |  2 +-
 fs/ntfs/super.c   |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 20c841a906f2..3aac5c917afe 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -71,7 +71,7 @@ static inline MFT_RECORD *map_mft_record_page(ntfs_inode *ni)
 	}
 	/* Read, map, and pin the page. */
 	page = ntfs_map_page(mft_vi->i_mapping, index);
-	if (likely(!IS_ERR(page))) {
+	if (!IS_ERR(page)) {
 		/* Catch multi sector transfer fixup errors. */
 		if (likely(ntfs_is_mft_recordp((le32*)(page_address(page) +
 				ofs)))) {
@@ -154,7 +154,7 @@ MFT_RECORD *map_mft_record(ntfs_inode *ni)
 	mutex_lock(&ni->mrec_lock);
 
 	m = map_mft_record_page(ni);
-	if (likely(!IS_ERR(m)))
+	if (!IS_ERR(m))
 		return m;
 
 	mutex_unlock(&ni->mrec_lock);
@@ -271,7 +271,7 @@ MFT_RECORD *map_extent_mft_record(ntfs_inode *base_ni, MFT_REF mref,
 		m = map_mft_record(ni);
 		/* map_mft_record() has incremented this on success. */
 		atomic_dec(&ni->count);
-		if (likely(!IS_ERR(m))) {
+		if (!IS_ERR(m)) {
 			/* Verify the sequence number. */
 			if (likely(le16_to_cpu(m->sequence_number) == seq_no)) {
 				ntfs_debug("Done 1.");
@@ -1303,7 +1303,7 @@ static int ntfs_mft_bitmap_extend_allocation_nolock(ntfs_volume *vol)
 	read_unlock_irqrestore(&mftbmp_ni->size_lock, flags);
 	rl = ntfs_attr_find_vcn_nolock(mftbmp_ni,
 			(ll - 1) >> vol->cluster_size_bits, NULL);
-	if (unlikely(IS_ERR(rl) || !rl->length || rl->lcn < 0)) {
+	if (IS_ERR(rl) || unlikely(!rl->length || rl->lcn < 0)) {
 		up_write(&mftbmp_ni->runlist.lock);
 		ntfs_error(vol->sb, "Failed to determine last allocated "
 				"cluster of mft bitmap attribute.");
@@ -1734,7 +1734,7 @@ static int ntfs_mft_data_extend_allocation_nolock(ntfs_volume *vol)
 	read_unlock_irqrestore(&mft_ni->size_lock, flags);
 	rl = ntfs_attr_find_vcn_nolock(mft_ni,
 			(ll - 1) >> vol->cluster_size_bits, NULL);
-	if (unlikely(IS_ERR(rl) || !rl->length || rl->lcn < 0)) {
+	if (IS_ERR(rl) || unlikely(!rl->length || rl->lcn < 0)) {
 		up_write(&mft_ni->runlist.lock);
 		ntfs_error(vol->sb, "Failed to determine last allocated "
 				"cluster of mft data attribute.");
@@ -1776,7 +1776,7 @@ static int ntfs_mft_data_extend_allocation_nolock(ntfs_volume *vol)
 	do {
 		rl2 = ntfs_cluster_alloc(vol, old_last_vcn, nr, lcn, MFT_ZONE,
 				true);
-		if (likely(!IS_ERR(rl2)))
+		if (!IS_ERR(rl2))
 			break;
 		if (PTR_ERR(rl2) != -ENOSPC || nr == min_nr) {
 			ntfs_error(vol->sb, "Failed to allocate the minimal "
diff --git a/fs/ntfs/namei.c b/fs/ntfs/namei.c
index 2d3cc9e3395d..4e6a44bc654c 100644
--- a/fs/ntfs/namei.c
+++ b/fs/ntfs/namei.c
@@ -115,7 +115,7 @@ static struct dentry *ntfs_lookup(struct inode *dir_ino, struct dentry *dent,
 		dent_ino = MREF(mref);
 		ntfs_debug("Found inode 0x%lx. Calling ntfs_iget.", dent_ino);
 		dent_inode = ntfs_iget(vol->sb, dent_ino);
-		if (likely(!IS_ERR(dent_inode))) {
+		if (!IS_ERR(dent_inode)) {
 			/* Consistency check. */
 			if (is_bad_inode(dent_inode) || MSEQNO(mref) ==
 					NTFS_I(dent_inode)->seq_no ||
diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
index 508744a93180..97932fb5179c 100644
--- a/fs/ntfs/runlist.c
+++ b/fs/ntfs/runlist.c
@@ -951,7 +951,7 @@ runlist_element *ntfs_mapping_pairs_decompress(const ntfs_volume *vol,
 	}
 	/* Now combine the new and old runlists checking for overlaps. */
 	old_rl = ntfs_runlists_merge(old_rl, rl);
-	if (likely(!IS_ERR(old_rl)))
+	if (!IS_ERR(old_rl))
 		return old_rl;
 	ntfs_free(rl);
 	ntfs_error(vol->sb, "Failed to merge runlists.");
diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 29621d40f448..7dc3bc604f78 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -1475,7 +1475,7 @@ static bool load_and_init_usnjrnl(ntfs_volume *vol)
 	kfree(name);
 	/* Get the inode. */
 	tmp_ino = ntfs_iget(vol->sb, MREF(mref));
-	if (unlikely(IS_ERR(tmp_ino) || is_bad_inode(tmp_ino))) {
+	if (IS_ERR(tmp_ino) || unlikely(is_bad_inode(tmp_ino))) {
 		if (!IS_ERR(tmp_ino))
 			iput(tmp_ino);
 		ntfs_error(vol->sb, "Failed to load $UsnJrnl.");
-- 
2.21.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
