Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE29836735
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  6 Jun 2019 00:06:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1hYe30-0002k2-JI; Wed, 05 Jun 2019 22:06:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@metux.net>) id 1hYdU7-0001Cw-S3
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 05 Jun 2019 21:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T4VF+zLqc+MjvNhO3ypgTZfzdNLjwP27hXK5ZYo/LuI=; b=Y2NdU1UTgEthkbakZkLeKN9Foq
 VvoGkqbyY3lS0GBIeQgmHFF+jjdMIsx6he04dTDXQSnL0thwtYKytkDhMxIc+J3DlFXBRz+Zc408v
 pdlcXiSJutA819fgdp0q/F7kXUMA5YVRmsHV0hpAf+tCMvLBHUbDQTth0cYDgAuZLTNk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T4VF+zLqc+MjvNhO3ypgTZfzdNLjwP27hXK5ZYo/LuI=; b=NkJ23Fog51BgO9/T1LXRFjhmAX
 ltaA/4Lw36o48uva/Wk+ulij3RksChQV0ls2ryXC5/r2sdMqEA79aNNJmlYsdWFLh0QyNeUNUUYSu
 cC5bw0sJZoT6/YP+BDAWsq+YMNoXRMDrO9b3BHn3uPl0L0LzntseKSEAdpEv3Xx4VB0A=;
Received: from mout.kundenserver.de ([212.227.17.24])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hYdU4-00Am4S-6B
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 05 Jun 2019 21:30:15 +0000
Received: from orion.localdomain ([77.2.1.21]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MStKq-1h7jXq059i-00UHZH; Wed, 05 Jun 2019 23:17:04 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Date: Wed,  5 Jun 2019 23:17:02 +0200
Message-Id: <1559769422-23030-1-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
X-Provags-ID: V03:K1:KhGz3LPXtHFEc3TDhz5N7mtq6XeieAJf1tGgVCFaA6AFyQXtpiT
 9gazZ5Q9mXfMRFWrwXfgze53g6eriCa2Ynv2vTipRgWs3N0okTRbN/9Z64IqrZi1J4ryGqr
 s1qDJjQdQ6mXUr3t5L0auR+0/SRMFMdC6oYA2Z2kTI4h4tGtQnm/zRna1oTMevd0ivOkuZX
 mfmko9S40b9/JlGkb4vtw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VgFC+bXAyr0=:ZOhF4OWn+lcbFrVVtDleLB
 eKY9ZuoZ6ZNm99h9zmxFQuVFIm8bY93/AJhNrYrjDOoAzA/y5I+YTbns3UC6+s+S44x2xbLpx
 jyZKRQ0YrrLJJb1GTIMqczSeU7nc/uBv/0+lTCqWZfJG/Dc1Cu9mT838xPODCPBgWrVSPgyCX
 NszFYX/Ejv2+jDHYUQlW6OJXKqoFr7bt3a5ZgKagB6f//dPOmE2AMSrI8sgp1ZWDqKBMHE9Pw
 kWCT7zXa1HQVBoscmNvefxClfqUHaFT4klru1w7PbeysMPzHjoyR9Lhyjr+cfsrB8tM44MHxC
 P0zJN/v2nx4pLgVvqxgDKEjU/Tt89z+qlet8w5f3hqvLL5ToaSD9rWmlvKd7+aP4NOoXlE+K6
 AVorxcQH0+HQyBm5zNYr6KGk7RsPvjQNms92k0Z7F1L/MCX3fjirEiDyvkoCnS1GOlO5VcZuO
 84WBjoq1xv5imNQnsty0o32SboKqth4uf1U5y6ltdJOTs7LltBnXHwsV0qptBUClscCWcwDL0
 QWLDWXcJp0eV9RnbFpKQk48QF25/PEvH4X7/D+JC2JDKoF6tHDomIH0zs5SDWCcxeCX0K3J31
 rwwuxs9cq4MnhzGjzdCSkBObXvmYl9WTsPNGIYaYX2tczvLJlWf0vaZ0TH9XSiAiiqWdr1jdO
 /IOvmsLUJrxzTTYRTNtQ8WTLkFbAedhkA2qAlCnRsIaFrxyhb6Zi6E2yWLlDTj7i0zOGeYSTM
 /8A/4Y/m1Q7Ch/6JzDLPZBRV3OlF3tdPXxIbbw==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.17.24 listed in list.dnswl.org]
X-Headers-End: 1hYdU4-00Am4S-6B
X-Mailman-Approved-At: Wed, 05 Jun 2019 22:06:15 +0000
Subject: [Linux-NTFS-Dev] [PATCH] fs: ntfs: drop unneeded likely() call
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
Cc: linux-ntfs-dev@lists.sourceforge.net
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
