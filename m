Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE62195D1A
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 20 Aug 2019 13:18:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1i029j-000284-Q7; Tue, 20 Aug 2019 11:18:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@metux.net>) id 1i0210-0005aG-8o
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 11:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T4VF+zLqc+MjvNhO3ypgTZfzdNLjwP27hXK5ZYo/LuI=; b=PKsokLAjU0gvgQW0WSWdbkKTN3
 Pk096xS4C2ndL4xqJCROJKAVTO9xyrnJlmodnZe2mkL4Pp88KrbwrNEVQlesLbhFrLqhgtbRvWwhW
 N/1Jz64YOMM9fF7DHK8SS8EYklDsFFcp3NNZ+UWX0avLB/cVneZdqaxPWTz7Ecaaoga4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T4VF+zLqc+MjvNhO3ypgTZfzdNLjwP27hXK5ZYo/LuI=; b=l8DOl4Z5zdX8xB+4Q8jUjskdJN
 DAmmjzxrKdlRYJx8kcJzZIF1Lajrl4iyTUqyopyTDgSxyb8HCLZJaTvQ8mALgTx0DSY4GyPvaW4SO
 Mr/tXYpG0SzBm4W5yuT3EoNzMRvS1aXRODO+ePzw0Ork8jJtgOx2AAhBHyEZdvKp3QW0=;
Received: from mout.kundenserver.de ([212.227.126.131])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i020w-009LJK-4M
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 20 Aug 2019 11:09:25 +0000
Received: from orion.localdomain ([95.117.23.32]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MG9c4-1i3MGm2nIi-00GX5c; Tue, 20 Aug 2019 12:56:12 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Date: Tue, 20 Aug 2019 12:56:11 +0200
Message-Id: <1566298572-12409-1-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
X-Provags-ID: V03:K1:X0bL9kCI73MtDlPdTq2uEsLqyQMLuaPrFjP/C6b4lIR5Z/L0S5C
 AY5OLqdWdxHFXZd+4Qown7BcrfbDwmY64obA51lAQz/MEbVxmhAmacfvsOFnrmNNGsiYVaS
 tBdCnOLL5E1cqSM22KQ+xm8yuxgl9qzumMJ5pVbIYXgirXKuU5OcDEXYIibfxykbJij5I89
 2Ll9OPUhe19o2y2M+mwtA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GE5rl69iIKE=:rMN5vWk5G/7occE2gpJeK3
 C9j1mr7QamDXDupU0KXvTmr/r4XttXrnjZ5mwgqNizAzyEqBG+XPeUv4k94ZREw4iYcJ8+91B
 nv4r7xt/ES4kPDkykb2lRF7JZzQW7zScC8nWkzjBKYNIHcms2th6yQCFK+ubH2H0Cfi2ix/6a
 WMBNVAOJFgjfk3NL7pcpkqkMZMfXx98okruvnXU4EYkzwAZ3aTC/1K4SVB/2keO3LItUltjZx
 ix+CkX5fmSfWUGy/EgUE1LH0Y4R3kCjgQFNMpX80A/aKrIjbJD9YOZ4XZjzKiW+QgjPnhecYR
 5CFcp/UlYT8c98gI6qYaMsoXhfNlCEXSe3cTzBNQ2G091lb597sDcBZ2rql9vXgI13ALQILvB
 pTj7LF8Fmb5f0QeStf/8SFuL43ezbg9gkcxOv7fbsfhVqZpt1cWpvsE985hfQAJ7ovNwL0K1b
 wfNNMfeL1B0X3HH6sTyMNC70vVqDrRL3PfsIJiYR0+WviDJ7XTLquyYF+FS50KUNVwDk23xiA
 G3ktJT50DH/3d34dqRq/6BCGexlTmm+MUKHicX5oVzGxjClc4fWnmQ/t5+LnaLiM+kuSV+tAi
 ttauWNVOWDE/JJzhXNNPtLYFJxJpVSxUNwADyWchgP6GHeji0VQ0dUL/Oqdi4Dv5IHfHL6ZUc
 lluUxGZOjqudmNzV07+bnxq4mkOsiOVD6mj2gJ7QlANtr5qXzCc6HbQYxS1gcLvXdytyUqQnV
 m2XaWsXpGaGx1Rq2d1vSUsmK0XNzZT6VMZhMXA==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i020w-009LJK-4M
X-Mailman-Approved-At: Tue, 20 Aug 2019 11:18:26 +0000
Subject: [Linux-NTFS-Dev] [PATCH 1/2] fs: ntfs: drop unneeded likely() call
 around IS_ERR()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-input@vger.kernel.org,
 dmitry.torokhov@gmail.com, pali.rohar@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Enrico Weigelt <info@metux.net>

IS_ERR() already calls unlikely(), so this extra likely() call
around the !IS_ERR() is not needed.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 fs/ntfs/mft.c     | 8 ++++----
 fs/ntfs/namei.c   | 2 +-
 fs/ntfs/runlist.c | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 20c841a..06f706b 100644
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
index 2d3cc9e..4e6a44b 100644
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
index 508744a..97932fb 100644
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
-- 
1.9.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
