Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A06B16FA0E
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 26 Feb 2020 09:55:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1j6sTx-0008EQ-GM; Wed, 26 Feb 2020 08:55:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1j6kEf-0002vB-7o
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 26 Feb 2020 00:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8kpppuVxEfbw1HY9gBs/P7x/njX6QXOO1jMPxsNR6sQ=; b=fIjp+PQe/R/j9YvxPR1BolMj7Q
 WxOoGYw3hh19oThvKyMEq38YCrUeYnVv7LtDhJe2sqJR+lRHil4KpFa9cds7yRI3muoLxn0rpABHx
 r/aXVSwekI+tz7PgMY1D73ONXbxeC4RScmLmTqMczSqb/zimMbVWTyBTj3AdDKpmTxtM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8kpppuVxEfbw1HY9gBs/P7x/njX6QXOO1jMPxsNR6sQ=; b=f
 54DwPnMeIqwx3EEGxBuYNHYVPQ2pzvnq+iGvjvPXMdgnGlND0rAxp8zh8FoyMgM4mjxZeiKDVic1h
 VdcWRkiAiIqZP2YsO4jil4HaAbvAezuAw7eWiyCIdkwiQ7h/WuZpbKsoCrQCSkQ55Yj7K+P2d68bM
 o5p1wHUySdM+GgXk=;
Received: from gateway33.websitewelcome.com ([192.185.146.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j6kEa-00GXvW-Q6
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 26 Feb 2020 00:07:33 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway33.websitewelcome.com (Postfix) with ESMTP id B47EB32CB3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 25 Feb 2020 17:45:49 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 6jtdj2wMx8vkB6jtdjyDXL; Tue, 25 Feb 2020 17:45:49 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8kpppuVxEfbw1HY9gBs/P7x/njX6QXOO1jMPxsNR6sQ=; b=LdFi92iGDpBZAOEsGks8AdD4mT
 auLnIL2SJ/JwRgBeofSCcegK3Uv5sAHC2DZfOZ2k2yOpHIy8hWmokqXZojvcnp5U5t5C18ared7y4
 fH2sRDUIpzmxnyX/j2/hnOOcik3PohMovNqK/m2+9LZve2J6y71A7vYqydRumrArUNyeeiZ8k+gUX
 uGUwCFc0WJH2XLrMxyivzrz6wLTpe81q2ysj3PJv4emwPEmXQFMKNZqtHBF7iwdfZfOCfztLJPwzt
 ErqJagG72z1hQ/8Nx5Rj/HvJgsLQJLBqmtKcW47hVisLRS2ET9m5tGNkUYyb3VU1gTMnzPvHiH2UT
 0cwKBDeQ==;
Received: from [201.162.241.105] (port=30500 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j6jtb-001yzF-GN; Tue, 25 Feb 2020 17:45:48 -0600
Date: Tue, 25 Feb 2020 17:48:37 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: "Richard Russon (FlatCap)" <ldm@flatcap.org>, Jens Axboe <axboe@kernel.dk>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 Ilya Dryomov <idryomov@gmail.com>, Sage Weil <sage@redhat.com>,
 Dongsheng Yang <dongsheng.yang@easystack.cn>
Message-ID: <20200225234836.GA31741@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.241.105
X-Source-L: No
X-Exim-ID: 1j6jtb-001yzF-GN
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.162.241.105]:30500
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 8
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.146.195 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j6kEa-00GXvW-Q6
X-Mailman-Approved-At: Wed, 26 Feb 2020 08:55:53 +0000
Subject: [Linux-NTFS-Dev] [PATCH][next] block: Replace zero-length array
 with flexible-array member
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, ceph-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 block/partitions/ldm.h             | 2 +-
 drivers/block/drbd/drbd_int.h      | 2 +-
 drivers/block/drbd/drbd_protocol.h | 8 ++++----
 drivers/block/rbd_types.h          | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/block/partitions/ldm.h b/block/partitions/ldm.h
index 1ca63e97bccc..172432ce5c0f 100644
--- a/block/partitions/ldm.h
+++ b/block/partitions/ldm.h
@@ -93,7 +93,7 @@ struct frag {				/* VBLK Fragment handling */
 	u8		num;		/* Total number of records */
 	u8		rec;		/* This is record number n */
 	u8		map;		/* Which portions are in use */
-	u8		data[0];
+	u8		data[];
 };
 
 /* In memory LDM database structures. */
diff --git a/drivers/block/drbd/drbd_int.h b/drivers/block/drbd/drbd_int.h
index aae99a2d7bd4..a3314dd781a7 100644
--- a/drivers/block/drbd/drbd_int.h
+++ b/drivers/block/drbd/drbd_int.h
@@ -620,7 +620,7 @@ struct fifo_buffer {
 	unsigned int head_index;
 	unsigned int size;
 	int total; /* sum of all values */
-	int values[0];
+	int values[];
 };
 extern struct fifo_buffer *fifo_alloc(unsigned int fifo_size);
 
diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
index e6fc5ad72501..dea59c92ecc1 100644
--- a/drivers/block/drbd/drbd_protocol.h
+++ b/drivers/block/drbd/drbd_protocol.h
@@ -271,7 +271,7 @@ struct p_rs_param {
 	u32 resync_rate;
 
 	      /* Since protocol version 88 and higher. */
-	char verify_alg[0];
+	char verify_alg[];
 } __packed;
 
 struct p_rs_param_89 {
@@ -305,7 +305,7 @@ struct p_protocol {
 	u32 two_primaries;
 
 	/* Since protocol version 87 and higher. */
-	char integrity_alg[0];
+	char integrity_alg[];
 
 } __packed;
 
@@ -360,7 +360,7 @@ struct p_sizes {
 	u16	    dds_flags; /* use enum dds_flags here. */
 
 	/* optional queue_limits if (agreed_features & DRBD_FF_WSAME) */
-	struct o_qlim qlim[0];
+	struct o_qlim qlim[];
 } __packed;
 
 struct p_state {
@@ -409,7 +409,7 @@ struct p_compressed_bm {
 	 */
 	u8 encoding;
 
-	u8 code[0];
+	u8 code[];
 } __packed;
 
 struct p_delay_probe93 {
diff --git a/drivers/block/rbd_types.h b/drivers/block/rbd_types.h
index ac98ab6ccd3b..a600e0eb6b6f 100644
--- a/drivers/block/rbd_types.h
+++ b/drivers/block/rbd_types.h
@@ -93,7 +93,7 @@ struct rbd_image_header_ondisk {
 	__le32 snap_count;
 	__le32 reserved;
 	__le64 snap_names_len;
-	struct rbd_image_snap_ondisk snaps[0];
+	struct rbd_image_snap_ondisk snaps[];
 } __attribute__((packed));
 
 
-- 
2.25.0



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
