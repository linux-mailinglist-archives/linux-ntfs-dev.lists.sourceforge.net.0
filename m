Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE2382DE4A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 18:15:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPQY6-00032b-Nl;
	Mon, 15 Jan 2024 17:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christian@heusel.eu>) id 1rPPii-00089K-7Y
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 16:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kXAvpbGnGuMNJRdIHXRdIiSaEZig1OHbIKQQ8NUslKU=; b=UUecfdH13589px4W1W19vtvnRQ
 CXe5jFRsQLcsFogACynC2/GIEsRoLnP7YIpbM5Fm+PWSbeAUWTKIOttkOJKk7l5Inm0SU/j3JqcPE
 8VimSxDcdpWnAj0EHQhKhM5p5wbrCw7KVjBmNKHhefmV+WJ1jQdmdu2Uh17s61V9DFXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kXAvpbGnGuMNJRdIHXRdIiSaEZig1OHbIKQQ8NUslKU=; b=F
 japjgrlsUS+6m09rwaumXV06q6jwKYyuasLuj/cptOmDwD5rBOmmUVsZ5tqwhR1jjWQLRjsoW4xlL
 T9c7dxVxT4xzHGJK60qgHcQbwIN6xSWNKmJR3rjZP37VJ5KgeOhrO+cnRgpInAhfaq4tdrykPTlKd
 yhIk8yvWbv0aozFU=;
Received: from mout.kundenserver.de ([212.227.17.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPPig-0002TG-CX for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 16:21:52 +0000
Received: from meterpeter.INF524.stwhd ([141.70.80.5]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N5VLY-1r6Fsk23Kc-016uBC; Mon, 15 Jan 2024 16:55:48 +0100
From: Christian Heusel <christian@heusel.eu>
To: Anton Altaparmakov <anton@tuxera.com>, Namjae Jeon <linkinjeon@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Mon, 15 Jan 2024 16:55:38 +0100
Message-ID: <20240115155540.94127-1-christian@heusel.eu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8Cj9rg6OYmZJSHmw+KpGRyrT/3xXnK/X35tHaWFT4Z017Ota8AT
 +UpSs8EPfJNryBWCRdJ7rI9VvFTg5c6Vc5VpE3p4Hp4ckDB1SDYl+R2QmnAQs2sS1UR11L7
 hyQSXn72ht4wi6xeYDPjrlSgcqmCHltgg0OQ5L7f/BjZIKoYKMMQSif/AlihCZsZRY2gLH2
 vlSHgaRvde2FmeVPkE51w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:+LJiLA6krnw=;9Ai1o31LK/ta4E4wEri9d2p/hYj
 zH7xnkrrvepMmlbjdDd4g1mR/Mf8uhnWE59G+amIf0hNCcUQLaH+IQIk6X5OcxDjg/WvvLinp
 bEBaL4/FK2FcnXJYftx3+Jm/c/yJ5Yk2ZxU5OjF3wIXfsh2cwAw1dgasRAAHq0g7XqpGmT8g7
 esNg8XNBCZaLAj/gBWOw4fTSvs010GGGKD/QT2whjZvHZHZ9rLDro3wyma4H83TDtweINRZB2
 PHj8AbuqyqEatvJzJuH9bwSGpLsL0mZKIBqUrsUgGK/VL6bUsJxyxyewf4Hv3wKG8Pu9es5if
 JyAXUcRgC4+0gIRNKelLPKGZO2cPhHEdnsjfCKslOg3/lH1452D+HBmhAyHHy1YxNbUpeL5g3
 2IW3BI/H2d700+06oqjyZopgua3s7rc5qr0xPqm76cKq6qOsQflo6bru3kef8qZzXYIqMFkoJ
 khLqNM+odWbdadYEKP7t3+IFmuBl6mup1bDXEmgvQzyStwiGKAlC/9YNVSyGcuQ75IMAYU2u7
 9b9ZHJ7FCxEMKy2HqmwnjKQuG54XWXIHj7AZ7eFUK5ZECqqqejtPPzUrzBw9N8+xK/VFtibL/
 FpIm47GraF6OPkQKPl/MIaCkeHi/0JcBfRj/HAqZRO8W5tkKVTjgGe/hu8ZzP2LavcIiHP6LB
 62DlmjcZXNkSbuMHYCVzV1mOkN74cP1oJzm60RvkNeHufueK9zm2QPLvOu8ONCZvgVmB8cu7W
 ujLzZpAjvZpHg0Nm7XC4gY4LU54TIPkxdWhLyTd845QytZ2cyfakXlh1XhJeMaLuJw4T8jEGX
 Lmk9+63ARX8o0X8onWe7z98qujUQOAObAqZ4bMUgpyTRtQnmAnx6brmwC0Dhw5SAMcwlJkhyf
 zbfmyvzcYttn3Pw==
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Utilize the %pe print specifier in multiple log messages to
 get the symbolic error name as a string (i.e "-ENOMEM") instead of the error
 code to increase the log messages readablility. This change was suggested
 in
 https://lore.kernel.org/all/92972476-0b1f-4d0a-9951-af3fc8bc6e65@suswa.mountain/
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPPig-0002TG-CX
X-Mailman-Approved-At: Mon, 15 Jan 2024 17:14:55 +0000
Subject: [Linux-ntfs-dev] [PATCH] ntfs: print symbolic error name instead of
 error code
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
Cc: Christian Heusel <christian@heusel.eu>, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Utilize the %pe print specifier in multiple log messages to get the
symbolic error name as a string (i.e "-ENOMEM") instead of the error
code to increase the log messages readablility.

This change was suggested in
https://lore.kernel.org/all/92972476-0b1f-4d0a-9951-af3fc8bc6e65@suswa.mountain/

Signed-off-by: Christian Heusel <christian@heusel.eu>
---
 fs/ntfs/dir.c   | 12 ++++--------
 fs/ntfs/index.c |  6 ++----
 fs/ntfs/mft.c   |  6 +++---
 3 files changed, 9 insertions(+), 15 deletions(-)

diff --git a/fs/ntfs/dir.c b/fs/ntfs/dir.c
index 629723a8d712..8df4f233969d 100644
--- a/fs/ntfs/dir.c
+++ b/fs/ntfs/dir.c
@@ -88,8 +88,7 @@ MFT_REF ntfs_lookup_inode_by_name(ntfs_inode *dir_ni, const ntfschar *uname,
 	/* Get hold of the mft record for the directory. */
 	m = map_mft_record(dir_ni);
 	if (IS_ERR(m)) {
-		ntfs_error(sb, "map_mft_record() failed with error code %ld.",
-				-PTR_ERR(m));
+		ntfs_error(sb, "map_mft_record() failed with error %pe.", m);
 		return ERR_MREF(PTR_ERR(m));
 	}
 	ctx = ntfs_attr_get_search_ctx(dir_ni, m);
@@ -308,8 +307,7 @@ MFT_REF ntfs_lookup_inode_by_name(ntfs_inode *dir_ni, const ntfschar *uname,
 	page = ntfs_map_page(ia_mapping, vcn <<
 			dir_ni->itype.index.vcn_size_bits >> PAGE_SHIFT);
 	if (IS_ERR(page)) {
-		ntfs_error(sb, "Failed to map directory index page, error %ld.",
-				-PTR_ERR(page));
+		ntfs_error(sb, "Failed to map directory index page, error %pe.", page);
 		err = PTR_ERR(page);
 		goto err_out;
 	}
@@ -639,8 +637,7 @@ u64 ntfs_lookup_inode_by_name(ntfs_inode *dir_ni, const ntfschar *uname,
 	/* Get hold of the mft record for the directory. */
 	m = map_mft_record(dir_ni);
 	if (IS_ERR(m)) {
-		ntfs_error(sb, "map_mft_record() failed with error code %ld.",
-				-PTR_ERR(m));
+		ntfs_error(sb, "map_mft_record() failed with error %pe.", m);
 		return ERR_MREF(PTR_ERR(m));
 	}
 	ctx = ntfs_attr_get_search_ctx(dir_ni, m);
@@ -786,8 +783,7 @@ u64 ntfs_lookup_inode_by_name(ntfs_inode *dir_ni, const ntfschar *uname,
 	page = ntfs_map_page(ia_mapping, vcn <<
 			dir_ni->itype.index.vcn_size_bits >> PAGE_SHIFT);
 	if (IS_ERR(page)) {
-		ntfs_error(sb, "Failed to map directory index page, error %ld.",
-				-PTR_ERR(page));
+		ntfs_error(sb, "Failed to map directory index page, error %pe.", page);
 		err = PTR_ERR(page);
 		goto err_out;
 	}
diff --git a/fs/ntfs/index.c b/fs/ntfs/index.c
index d46c2c03a032..777bbd4548ad 100644
--- a/fs/ntfs/index.c
+++ b/fs/ntfs/index.c
@@ -137,8 +137,7 @@ int ntfs_index_lookup(const void *key, const int key_len,
 	/* Get hold of the mft record for the index inode. */
 	m = map_mft_record(base_ni);
 	if (IS_ERR(m)) {
-		ntfs_error(sb, "map_mft_record() failed with error code %ld.",
-				-PTR_ERR(m));
+		ntfs_error(sb, "map_mft_record() failed with code %pe.", m);
 		return PTR_ERR(m);
 	}
 	actx = ntfs_attr_get_search_ctx(base_ni, m);
@@ -264,8 +263,7 @@ int ntfs_index_lookup(const void *key, const int key_len,
 	page = ntfs_map_page(ia_mapping, vcn <<
 			idx_ni->itype.index.vcn_size_bits >> PAGE_SHIFT);
 	if (IS_ERR(page)) {
-		ntfs_error(sb, "Failed to map index page, error %ld.",
-				-PTR_ERR(page));
+		ntfs_error(sb, "Failed to map index page, error %pe.", page);
 		err = PTR_ERR(page);
 		goto err_out;
 	}
diff --git a/fs/ntfs/mft.c b/fs/ntfs/mft.c
index 6fd1dc4b08c8..fed9abc3ff1f 100644
--- a/fs/ntfs/mft.c
+++ b/fs/ntfs/mft.c
@@ -159,7 +159,7 @@ MFT_RECORD *map_mft_record(ntfs_inode *ni)
 
 	mutex_unlock(&ni->mrec_lock);
 	atomic_dec(&ni->count);
-	ntfs_error(ni->vol->sb, "Failed with error code %lu.", -PTR_ERR(m));
+	ntfs_error(ni->vol->sb, "Failed with error %pe.", m);
 	return m;
 }
 
@@ -285,8 +285,8 @@ MFT_RECORD *map_extent_mft_record(ntfs_inode *base_ni, MFT_REF mref,
 			return ERR_PTR(-EIO);
 		}
 map_err_out:
-		ntfs_error(base_ni->vol->sb, "Failed to map extent "
-				"mft record, error code %ld.", -PTR_ERR(m));
+		ntfs_error(base_ni->vol->sb,
+			   "Failed to map extent mft record, error %pe.", m);
 		return m;
 	}
 	/* Record wasn't there. Get a new ntfs inode and initialize it. */
-- 
2.43.0



_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
