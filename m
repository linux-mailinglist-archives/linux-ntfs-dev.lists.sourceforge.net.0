Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 645BC2BBC2B
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 21 Nov 2020 03:22:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kgIY3-00077S-Fr; Sat, 21 Nov 2020 02:22:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kg8zG-000592-Tk
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 20 Nov 2020 16:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RlfIjERfpK5SitKg9aUON2r7ZKvTcdc4tsaF+GEgWf8=; b=LM11yVnvPxgYy8FoQkR4EHVj+7
 6v2+jyz79TsNOa7dnEcOm34lHoNdefBqwGSR+umIus5rDFGUyUBY7Z3fF6vsG9FtTWW2BKtTEIubG
 CxOfZKnix/T0b7KHCdc6rPj1F14sLqQxTHdZs0HRw0BbozwUsPwWYg4bsKMvX7b4M9cA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RlfIjERfpK5SitKg9aUON2r7ZKvTcdc4tsaF+GEgWf8=; b=dBZTG+6SMQsBHYZqPUS/QBnDLd
 CwlokQ7Uda9KQwcVJPoHeQqvf4n6HnKzb1TfG7EQps7PjINT3GZ6eMUBiczD9Z8eWt6TMf14EDtdw
 ccP5eNrZhKVLLCfSY/NJVnNaH7EU4u4u0qNel6PpP1KG6pOwr0KAs03pBEfQfKVUdCVI=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kg8z6-003Jos-Oe
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 20 Nov 2020 16:10:14 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 51A511D46;
 Fri, 20 Nov 2020 19:09:52 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1605888592;
 bh=RlfIjERfpK5SitKg9aUON2r7ZKvTcdc4tsaF+GEgWf8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=p0aDecgmYNQjL4/KU7QbgOV2lmL015zweLGFaWtBk51Yd7VeCR8HImXDI6QTijo8S
 rDIsYir9pYD72dgxsz1gai95361t6QyHbbEUz0gZUTe2+DE3D0WDRfWs9M3wrjIK8s
 R4NnsGPOGufliQL4Md4HEaADY8PuAjxxH6xiXENs=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 20 Nov 2020 19:09:51 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 20 Nov 2020 19:09:40 +0300
Message-ID: <20201120160944.1629091-7-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201120160944.1629091-1-almaz.alexandrovich@paragon-software.com>
References: <20201120160944.1629091-1-almaz.alexandrovich@paragon-software.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kg8z6-003Jos-Oe
X-Mailman-Approved-At: Sat, 21 Nov 2020 02:22:45 +0000
Subject: [Linux-NTFS-Dev] [PATCH v13 06/10] fs/ntfs3: Add compression
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
Cc: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 nborisov@suse.com, linux-kernel@vger.kernel.org, rdunlap@infradead.org,
 aaptel@suse.com, willy@infradead.org, dsterba@suse.cz, ebiggers@kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, hch@lst.de, viro@zeniv.linux.org.uk,
 joe@perches.com, dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This adds compression

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 fs/ntfs3/lznt.c | 452 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 452 insertions(+)
 create mode 100644 fs/ntfs3/lznt.c

diff --git a/fs/ntfs3/lznt.c b/fs/ntfs3/lznt.c
new file mode 100644
index 000000000000..edba953b754a
--- /dev/null
+++ b/fs/ntfs3/lznt.c
@@ -0,0 +1,452 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2020 Paragon Software GmbH, All rights reserved.
+ *
+ */
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
+/* src buffer is zero */
+#define LZNT_ERROR_ALL_ZEROS	1
+#define LZNT_CHUNK_SIZE		0x1000
+// clang-format on
+
+struct lznt_hash {
+	const u8 *p1;
+	const u8 *p2;
+};
+
+struct lznt {
+	const u8 *unc;
+	const u8 *unc_end;
+	const u8 *best_match;
+	size_t max_len;
+	bool std;
+
+	struct lznt_hash hash[LZNT_CHUNK_SIZE];
+};
+
+static inline size_t get_match_len(const u8 *ptr, const u8 *end, const u8 *prev,
+				   size_t max_len)
+{
+	size_t len = 0;
+
+	while (ptr + len < end && ptr[len] == prev[len] && ++len < max_len)
+		;
+	return len;
+}
+
+static size_t longest_match_std(const u8 *src, struct lznt *ctx)
+{
+	size_t hash_index;
+	size_t len1 = 0, len2 = 0;
+	const u8 **hash;
+
+	hash_index =
+		((40543U * ((((src[0] << 4) ^ src[1]) << 4) ^ src[2])) >> 4) &
+		(LZNT_CHUNK_SIZE - 1);
+
+	hash = &(ctx->hash[hash_index].p1);
+
+	if (hash[0] >= ctx->unc && hash[0] < src && hash[0][0] == src[0] &&
+	    hash[0][1] == src[1] && hash[0][2] == src[2]) {
+		len1 = 3;
+		if (ctx->max_len > 3)
+			len1 += get_match_len(src + 3, ctx->unc_end,
+					      hash[0] + 3, ctx->max_len - 3);
+	}
+
+	if (hash[1] >= ctx->unc && hash[1] < src && hash[1][0] == src[0] &&
+	    hash[1][1] == src[1] && hash[1][2] == src[2]) {
+		len2 = 3;
+		if (ctx->max_len > 3)
+			len2 += get_match_len(src + 3, ctx->unc_end,
+					      hash[1] + 3, ctx->max_len - 3);
+	}
+
+	/* Compare two matches and select the best one */
+	if (len1 < len2) {
+		ctx->best_match = hash[1];
+		len1 = len2;
+	} else {
+		ctx->best_match = hash[0];
+	}
+
+	hash[1] = hash[0];
+	hash[0] = src;
+	return len1;
+}
+
+static size_t longest_match_best(const u8 *src, struct lznt *ctx)
+{
+	size_t max_len;
+	const u8 *ptr;
+
+	if (ctx->unc >= src || !ctx->max_len)
+		return 0;
+
+	max_len = 0;
+	for (ptr = ctx->unc; ptr < src; ++ptr) {
+		size_t len =
+			get_match_len(src, ctx->unc_end, ptr, ctx->max_len);
+		if (len >= max_len) {
+			max_len = len;
+			ctx->best_match = ptr;
+		}
+	}
+
+	return max_len >= 3 ? max_len : 0;
+}
+
+static const size_t s_max_len[] = {
+	0x1002, 0x802, 0x402, 0x202, 0x102, 0x82, 0x42, 0x22, 0x12,
+};
+
+static const size_t s_max_off[] = {
+	0x10, 0x20, 0x40, 0x80, 0x100, 0x200, 0x400, 0x800, 0x1000,
+};
+
+static inline u16 make_pair(size_t offset, size_t len, size_t index)
+{
+	return ((offset - 1) << (12 - index)) |
+	       ((len - 3) & (((1 << (12 - index)) - 1)));
+}
+
+static inline size_t parse_pair(u16 pair, size_t *offset, size_t index)
+{
+	*offset = 1 + (pair >> (12 - index));
+	return 3 + (pair & ((1 << (12 - index)) - 1));
+}
+
+/*
+ * compress_chunk
+ *
+ * returns one of the three values:
+ * 0 - ok, 'cmpr' contains 'cmpr_chunk_size' bytes of compressed data
+ * 1 - input buffer is full zero
+ * -2 - the compressed buffer is too small to hold the compressed data
+ */
+static inline int compress_chunk(size_t (*match)(const u8 *, struct lznt *),
+				 const u8 *unc, const u8 *unc_end, u8 *cmpr,
+				 u8 *cmpr_end, size_t *cmpr_chunk_size,
+				 struct lznt *ctx)
+{
+	size_t cnt = 0;
+	size_t idx = 0;
+	const u8 *up = unc;
+	u8 *cp = cmpr + 3;
+	u8 *cp2 = cmpr + 2;
+	u8 not_zero = 0;
+	/* Control byte of 8-bit values: ( 0 - means byte as is, 1 - short pair ) */
+	u8 ohdr = 0;
+	u8 *last;
+	u16 t16;
+
+	if (unc + LZNT_CHUNK_SIZE < unc_end)
+		unc_end = unc + LZNT_CHUNK_SIZE;
+
+	last = min(cmpr + LZNT_CHUNK_SIZE + sizeof(short), cmpr_end);
+
+	ctx->unc = unc;
+	ctx->unc_end = unc_end;
+	ctx->max_len = s_max_len[0];
+
+	while (up < unc_end) {
+		size_t max_len;
+
+		while (unc + s_max_off[idx] < up)
+			ctx->max_len = s_max_len[++idx];
+
+		// Find match
+		max_len = up + 3 <= unc_end ? (*match)(up, ctx) : 0;
+
+		if (!max_len) {
+			if (cp >= last)
+				goto NotCompressed;
+			not_zero |= *cp++ = *up++;
+		} else if (cp + 1 >= last) {
+			goto NotCompressed;
+		} else {
+			t16 = make_pair(up - ctx->best_match, max_len, idx);
+			*cp++ = t16;
+			*cp++ = t16 >> 8;
+
+			ohdr |= 1 << cnt;
+			up += max_len;
+		}
+
+		cnt = (cnt + 1) & 7;
+		if (!cnt) {
+			*cp2 = ohdr;
+			ohdr = 0;
+			cp2 = cp;
+			cp += 1;
+		}
+	}
+
+	if (cp2 < last)
+		*cp2 = ohdr;
+	else
+		cp -= 1;
+
+	*cmpr_chunk_size = cp - cmpr;
+
+	t16 = (*cmpr_chunk_size - 3) | 0xB000;
+	cmpr[0] = t16;
+	cmpr[1] = t16 >> 8;
+
+	return not_zero ? 0 : LZNT_ERROR_ALL_ZEROS;
+
+NotCompressed:
+
+	if ((cmpr + LZNT_CHUNK_SIZE + sizeof(short)) > last)
+		return -2;
+
+	/*
+	 * Copy non cmpr data
+	 * 0x3FFF == ((LZNT_CHUNK_SIZE + 2 - 3) | 0x3000)
+	 */
+	cmpr[0] = 0xff;
+	cmpr[1] = 0x3f;
+
+	memcpy(cmpr + sizeof(short), unc, LZNT_CHUNK_SIZE);
+	*cmpr_chunk_size = LZNT_CHUNK_SIZE + sizeof(short);
+
+	return 0;
+}
+
+static inline ssize_t decompress_chunk(u8 *unc, u8 *unc_end, const u8 *cmpr,
+				       const u8 *cmpr_end)
+{
+	u8 *up = unc;
+	u8 ch = *cmpr++;
+	size_t bit = 0;
+	size_t index = 0;
+	u16 pair;
+	size_t offset, length;
+
+	/* Do decompression until pointers are inside range */
+	while (up < unc_end && cmpr < cmpr_end) {
+		/* Correct index */
+		while (unc + s_max_off[index] < up)
+			index += 1;
+
+		/* Check the current flag for zero */
+		if (!(ch & (1 << bit))) {
+			/* Just copy byte */
+			*up++ = *cmpr++;
+			goto next;
+		}
+
+		/* Check for boundary */
+		if (cmpr + 1 >= cmpr_end)
+			return -EINVAL;
+
+		/* Read a short from little endian stream */
+		pair = cmpr[1];
+		pair <<= 8;
+		pair |= cmpr[0];
+
+		cmpr += 2;
+
+		/* Translate packed information into offset and length */
+		length = parse_pair(pair, &offset, index);
+
+		/* Check offset for boundary */
+		if (unc + offset > up)
+			return -EINVAL;
+
+		/* Truncate the length if necessary */
+		if (up + length >= unc_end)
+			length = unc_end - up;
+
+		/* Now we copy bytes. This is the heart of LZ algorithm. */
+		for (; length > 0; length--, up++)
+			*up = *(up - offset);
+
+next:
+		/* Advance flag bit value */
+		bit = (bit + 1) & 7;
+
+		if (!bit) {
+			if (cmpr >= cmpr_end)
+				break;
+
+			ch = *cmpr++;
+		}
+	}
+
+	/* return the size of uncompressed data */
+	return up - unc;
+}
+
+/*
+ * 0 - standard compression
+ * !0 - best compression, requires a lot of cpu
+ */
+struct lznt *get_lznt_ctx(int level)
+{
+	struct lznt *r = ntfs_alloc(
+		level ? offsetof(struct lznt, hash) : sizeof(struct lznt), 1);
+
+	if (r)
+		r->std = !level;
+	return r;
+}
+
+/*
+ * compress_lznt
+ *
+ * Compresses "unc" into "cmpr"
+ * +x - ok, 'cmpr' contains 'final_compressed_size' bytes of compressed data
+ * 0 - input buffer is full zero
+ */
+size_t compress_lznt(const void *unc, size_t unc_size, void *cmpr,
+		     size_t cmpr_size, struct lznt *ctx)
+{
+	int err;
+	size_t (*match)(const u8 *src, struct lznt *ctx);
+	u8 *p = cmpr;
+	u8 *end = p + cmpr_size;
+	const u8 *unc_chunk = unc;
+	const u8 *unc_end = unc_chunk + unc_size;
+	bool is_zero = true;
+
+	if (ctx->std) {
+		match = &longest_match_std;
+		memset(ctx->hash, 0, sizeof(ctx->hash));
+	} else {
+		match = &longest_match_best;
+	}
+
+	/* compression cycle */
+	for (; unc_chunk < unc_end; unc_chunk += LZNT_CHUNK_SIZE) {
+		cmpr_size = 0;
+		err = compress_chunk(match, unc_chunk, unc_end, p, end,
+				     &cmpr_size, ctx);
+		if (err < 0)
+			return unc_size;
+
+		if (is_zero && err != LZNT_ERROR_ALL_ZEROS)
+			is_zero = false;
+
+		p += cmpr_size;
+	}
+
+	if (p <= end - 2)
+		p[0] = p[1] = 0;
+
+	return is_zero ? 0 : PtrOffset(cmpr, p);
+}
+
+/*
+ * decompress_lznt
+ *
+ * decompresses "cmpr" into "unc"
+ */
+ssize_t decompress_lznt(const void *cmpr, size_t cmpr_size, void *unc,
+			size_t unc_size)
+{
+	const u8 *cmpr_chunk = cmpr;
+	const u8 *cmpr_end = cmpr_chunk + cmpr_size;
+	u8 *unc_chunk = unc;
+	u8 *unc_end = unc_chunk + unc_size;
+	u16 chunk_hdr;
+
+	if (cmpr_size < sizeof(short))
+		return -EINVAL;
+
+	/* read chunk header */
+	chunk_hdr = cmpr_chunk[1];
+	chunk_hdr <<= 8;
+	chunk_hdr |= cmpr_chunk[0];
+
+	/* loop through decompressing chunks */
+	for (;;) {
+		size_t chunk_size_saved;
+		size_t unc_use;
+		size_t cmpr_use = 3 + (chunk_hdr & (LZNT_CHUNK_SIZE - 1));
+
+		/* Check that the chunk actually fits the supplied buffer */
+		if (cmpr_chunk + cmpr_use > cmpr_end)
+			return -EINVAL;
+
+		/* First make sure the chunk contains compressed data */
+		if (chunk_hdr & 0x8000) {
+			/* Decompress a chunk and return if we get an error */
+			ssize_t err =
+				decompress_chunk(unc_chunk, unc_end,
+						 cmpr_chunk + sizeof(chunk_hdr),
+						 cmpr_chunk + cmpr_use);
+			if (err < 0)
+				return err;
+			unc_use = err;
+		} else {
+			/* This chunk does not contain compressed data */
+			unc_use = unc_chunk + LZNT_CHUNK_SIZE > unc_end ?
+					  unc_end - unc_chunk :
+					  LZNT_CHUNK_SIZE;
+
+			if (cmpr_chunk + sizeof(chunk_hdr) + unc_use >
+			    cmpr_end) {
+				return -EINVAL;
+			}
+
+			memcpy(unc_chunk, cmpr_chunk + sizeof(chunk_hdr),
+			       unc_use);
+		}
+
+		/* Advance pointers */
+		cmpr_chunk += cmpr_use;
+		unc_chunk += unc_use;
+
+		/* Check for the end of unc buffer */
+		if (unc_chunk >= unc_end)
+			break;
+
+		/* Proceed the next chunk */
+		if (cmpr_chunk > cmpr_end - 2)
+			break;
+
+		chunk_size_saved = LZNT_CHUNK_SIZE;
+
+		/* read chunk header */
+		chunk_hdr = cmpr_chunk[1];
+		chunk_hdr <<= 8;
+		chunk_hdr |= cmpr_chunk[0];
+
+		if (!chunk_hdr)
+			break;
+
+		/* Check the size of unc buffer */
+		if (unc_use < chunk_size_saved) {
+			size_t t1 = chunk_size_saved - unc_use;
+			u8 *t2 = unc_chunk + t1;
+
+			/* 'Zero' memory */
+			if (t2 >= unc_end)
+				break;
+
+			memset(unc_chunk, 0, t1);
+			unc_chunk = t2;
+		}
+	}
+
+	/* Check compression boundary */
+	if (cmpr_chunk > cmpr_end)
+		return -EINVAL;
+
+	/*
+	 * The unc size is just a difference between current
+	 * pointer and original one
+	 */
+	return PtrOffset(unc, unc_chunk);
+}
-- 
2.25.4



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
