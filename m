Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D79DB2D91B9
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 14 Dec 2020 03:24:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kodXj-0007yu-8B; Mon, 14 Dec 2020 02:24:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1knlAT-0000sq-7y
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Dec 2020 16:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ppG9pR09JAeViNBD1iHOpdyvtN8JfNSF+O8g/lkaQ7U=; b=Q9XLfnU8UVK9iGm9QPJugH5ziR
 APDTVeJ8LIzdO4OhjLP2a10mdt6gaDSFxxtGIXPnioBCLxQzfELWGc8n3X7Yh25VxVR5JtQO32ORt
 NnU7SMvIaHKithtmyKO3L8CbscxYMaOcmMJhLrBcUgXRaGyYRuXSNwlcmXzb3O70WiUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ppG9pR09JAeViNBD1iHOpdyvtN8JfNSF+O8g/lkaQ7U=; b=PNSWZq3a+T/pnl/I4nW/Lmgfqw
 yX14UVRRsBmNB/DjrQ5KVxVnKdBvkVSZ2pKniT4tLn9ik/pH6lOREQDK7Fb2NXrcc2f1nW4blOp7D
 5SrrMgHO0AOXI3dJH/ojpwpLIUl3SahRTA4Ln0gDhtanGk1ewH3x9W7RJsv6Ixm41AIs=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1knlAH-008CtQ-Hw
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Dec 2020 16:21:17 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 02E1E1D21;
 Fri, 11 Dec 2020 19:20:52 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1607703652;
 bh=ppG9pR09JAeViNBD1iHOpdyvtN8JfNSF+O8g/lkaQ7U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KeNkVdxu92sKCyo7FI/hK2DwVERrW/thWndRIvEc3iBTqDNwvKbxY91D0DEdA2d0O
 omzpRaE3OqEHhp3BkHiEGxXAaHQbGV/kqMtdgz/Et46dKWzq8N+aKmWJsGhTmbLl+Y
 s/BjxEWtSDRNnd/b8/ITIOQXAKafsWHhZiaIM5mc=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 11 Dec 2020 19:20:51 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: <linux-fsdevel@vger.kernel.org>
Date: Fri, 11 Dec 2020 19:18:40 +0300
Message-ID: <20201211161844.3590331-7-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201211161844.3590331-1-almaz.alexandrovich@paragon-software.com>
References: <20201211161844.3590331-1-almaz.alexandrovich@paragon-software.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1knlAH-008CtQ-Hw
X-Mailman-Approved-At: Mon, 14 Dec 2020 02:24:49 +0000
Subject: [Linux-NTFS-Dev] [PATCH v15 06/10] fs/ntfs3: Add compression
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

This patch adds different types of NTFS-applicable compressions:
- lznt
- lzx
- xpress
Latter two (lzx, xpress) implement Windows Compact OS feature and
were taken from ntfs-3g system comression plugin authored by Eric Biggers
(https://github.com/ebiggers/ntfs-3g-system-compression)
which were ported to ntfs3 and adapted to Linux Kernel environment.

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 fs/ntfs3/lib/common_defs.h       | 196 +++++++++++
 fs/ntfs3/lib/decompress_common.c | 314 +++++++++++++++++
 fs/ntfs3/lib/decompress_common.h | 558 +++++++++++++++++++++++++++++++
 fs/ntfs3/lib/lib.h               |  18 +
 fs/ntfs3/lib/lzx_common.c        | 204 +++++++++++
 fs/ntfs3/lib/lzx_common.h        |  31 ++
 fs/ntfs3/lib/lzx_constants.h     | 113 +++++++
 fs/ntfs3/lib/lzx_decompress.c    | 554 ++++++++++++++++++++++++++++++
 fs/ntfs3/lib/xpress_constants.h  |  23 ++
 fs/ntfs3/lib/xpress_decompress.c | 166 +++++++++
 fs/ntfs3/lznt.c                  | 452 +++++++++++++++++++++++++
 11 files changed, 2629 insertions(+)
 create mode 100644 fs/ntfs3/lib/common_defs.h
 create mode 100644 fs/ntfs3/lib/decompress_common.c
 create mode 100644 fs/ntfs3/lib/decompress_common.h
 create mode 100644 fs/ntfs3/lib/lib.h
 create mode 100644 fs/ntfs3/lib/lzx_common.c
 create mode 100644 fs/ntfs3/lib/lzx_common.h
 create mode 100644 fs/ntfs3/lib/lzx_constants.h
 create mode 100644 fs/ntfs3/lib/lzx_decompress.c
 create mode 100644 fs/ntfs3/lib/xpress_constants.h
 create mode 100644 fs/ntfs3/lib/xpress_decompress.c
 create mode 100644 fs/ntfs3/lznt.c

diff --git a/fs/ntfs3/lib/common_defs.h b/fs/ntfs3/lib/common_defs.h
new file mode 100644
index 000000000000..b1495874a420
--- /dev/null
+++ b/fs/ntfs3/lib/common_defs.h
@@ -0,0 +1,196 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2012-2016 Eric Biggers
+ *
+ * Adapted for linux kernel by Alexander Mamaev:
+ * - remove implementations of get_unaligned_
+ * - remove SSE and AVX instructions
+ * - assume GCC is always defined
+ * - inlined aligned_malloc/aligned_free
+ * - ISO C90
+ * - linux kernel code style
+ */
+
+#ifndef _COMMON_DEFS_H
+#define _COMMON_DEFS_H
+
+#include <linux/string.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <linux/slab.h>
+#include <asm/unaligned.h>
+
+
+/* ========================================================================== */
+/*				Type definitions			      */
+/* ========================================================================== */
+
+/*
+ * Type of a machine word.  'u32 long' would be logical, but that is only
+ * 32 bits on x86_64 Windows.  The same applies to 'uint_fast32_t'.  So the best
+ * we can do without a bunch of #ifdefs appears to be 'size_t'.
+ */
+
+#define WORDBYTES	sizeof(size_t)
+#define WORDBITS	(8 * WORDBYTES)
+
+/* ========================================================================== */
+/*			   Compiler-specific definitions		      */
+/* ========================================================================== */
+
+#  define forceinline		__always_inline
+#  define _aligned_attribute(n) __aligned(n)
+#  define bsr32(n)		(31 - __builtin_clz(n))
+#  define bsr64(n)		(63 - __builtin_clzll(n))
+#  define bsf32(n)		__builtin_ctz(n)
+#  define bsf64(n)		__builtin_ctzll(n)
+
+/* STATIC_ASSERT() - verify the truth of an expression at compilation time */
+#define STATIC_ASSERT(expr)	((void)sizeof(char[1 - 2 * !(expr)]))
+
+/* STATIC_ASSERT_ZERO() - verify the truth of an expression at compilation time
+ * and also produce a result of value '0' to be used in constant expressions
+ */
+#define STATIC_ASSERT_ZERO(expr) ((int)sizeof(char[-!(expr)]))
+
+/* UNALIGNED_ACCESS_IS_FAST should be defined to 1 if unaligned memory accesses
+ * can be performed efficiently on the target platform.
+ */
+#if defined(__x86_64__) || defined(__i386__) || defined(__ARM_FEATURE_UNALIGNED)
+#  define UNALIGNED_ACCESS_IS_FAST 1
+#else
+#  define UNALIGNED_ACCESS_IS_FAST 0
+#endif
+
+/* ========================================================================== */
+/*			    Unaligned memory accesses			      */
+/* ========================================================================== */
+
+#define load_word_unaligned(p) get_unaligned((const size_t *)(p))
+#define store_word_unaligned(v, p) put_unaligned((v), (size_t *)(p))
+
+
+/* ========================================================================== */
+/*			       Bit scan functions			      */
+/* ========================================================================== */
+
+/*
+ * Bit Scan Reverse (BSR) - find the 0-based index (relative to the least
+ * significant end) of the *most* significant 1 bit in the input value.  The
+ * input value must be nonzero!
+ */
+
+#ifndef bsr32
+static forceinline u32
+bsr32(u32 v)
+{
+	u32 bit = 0;
+
+	while ((v >>= 1) != 0)
+		bit++;
+	return bit;
+}
+#endif
+
+#ifndef bsr64
+static forceinline u32
+bsr64(u64 v)
+{
+	u32 bit = 0;
+
+	while ((v >>= 1) != 0)
+		bit++;
+	return bit;
+}
+#endif
+
+static forceinline u32
+bsrw(size_t v)
+{
+	STATIC_ASSERT(WORDBITS == 32 || WORDBITS == 64);
+	if (WORDBITS == 32)
+		return bsr32(v);
+	else
+		return bsr64(v);
+}
+
+/*
+ * Bit Scan Forward (BSF) - find the 0-based index (relative to the least
+ * significant end) of the *least* significant 1 bit in the input value.  The
+ * input value must be nonzero!
+ */
+
+#ifndef bsf32
+static forceinline u32
+bsf32(u32 v)
+{
+	u32 bit;
+
+	for (bit = 0; !(v & 1); bit++, v >>= 1)
+		;
+	return bit;
+}
+#endif
+
+#ifndef bsf64
+static forceinline u32
+bsf64(u64 v)
+{
+	u32 bit;
+
+	for (bit = 0; !(v & 1); bit++, v >>= 1)
+		;
+	return bit;
+}
+#endif
+
+static forceinline u32
+bsfw(size_t v)
+{
+	STATIC_ASSERT(WORDBITS == 32 || WORDBITS == 64);
+	if (WORDBITS == 32)
+		return bsf32(v);
+	else
+		return bsf64(v);
+}
+
+/* Return the log base 2 of 'n', rounded up to the nearest integer. */
+static forceinline u32
+ilog2_ceil(size_t n)
+{
+	if (n <= 1)
+		return 0;
+	return 1 + bsrw(n - 1);
+}
+
+/* ========================================================================== */
+/*			    Aligned memory allocation			      */
+/* ========================================================================== */
+
+static forceinline void *
+aligned_malloc(size_t size, size_t alignment)
+{
+	const uintptr_t mask = alignment - 1;
+	char *ptr = NULL;
+	char *raw_ptr;
+
+	raw_ptr = kmalloc(mask + sizeof(size_t) + size, GFP_NOFS);
+	if (raw_ptr) {
+		ptr = (char *)raw_ptr + sizeof(size_t);
+		ptr = (void *)(((uintptr_t)ptr + mask) & ~mask);
+		*((size_t *)ptr - 1) = ptr - raw_ptr;
+	}
+	return ptr;
+}
+
+static forceinline void
+aligned_free(void *ptr)
+{
+	if (ptr)
+		kfree((char *)ptr - *((size_t *)ptr - 1));
+}
+
+extern void *aligned_malloc(size_t size, size_t alignment);
+extern void aligned_free(void *ptr);
+
+#endif /* _COMMON_DEFS_H */
diff --git a/fs/ntfs3/lib/decompress_common.c b/fs/ntfs3/lib/decompress_common.c
new file mode 100644
index 000000000000..c8512818bb43
--- /dev/null
+++ b/fs/ntfs3/lib/decompress_common.c
@@ -0,0 +1,314 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * decompress_common.c
+ *
+ * Code for decompression shared among multiple compression formats.
+ *
+ * The following copying information applies to this specific source code file:
+ *
+ * Written in 2012-2016 by Eric Biggers <ebiggers3@gmail.com>
+ *
+ * To the extent possible under law, the author(s) have dedicated all copyright
+ * and related and neighboring rights to this software to the public domain
+ * worldwide via the Creative Commons Zero 1.0 Universal Public Domain
+ * Dedication (the "CC0").
+ *
+ * This software is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
+ * FOR A PARTICULAR PURPOSE. See the CC0 for more details.
+ *
+ * You should have received a copy of the CC0 along with this software; if not
+ * see <http://creativecommons.org/publicdomain/zero/1.0/>.
+ */
+
+#include "decompress_common.h"
+
+/*
+ * make_huffman_decode_table() -
+ *
+ * Given an alphabet of symbols and the length of each symbol's codeword in a
+ * canonical prefix code, build a table for quickly decoding symbols that were
+ * encoded with that code.
+ *
+ * A _prefix code_ is an assignment of bitstrings called _codewords_ to symbols
+ * such that no whole codeword is a prefix of any other.  A prefix code might be
+ * a _Huffman code_, which means that it is an optimum prefix code for a given
+ * list of symbol frequencies and was generated by the Huffman algorithm.
+ * Although the prefix codes processed here will ordinarily be "Huffman codes",
+ * strictly speaking the decoder cannot know whether a given code was actually
+ * generated by the Huffman algorithm or not.
+ *
+ * A prefix code is _canonical_ if and only if a longer codeword never
+ * lexicographically precedes a shorter codeword, and the lexicographic ordering
+ * of codewords of equal length is the same as the lexicographic ordering of the
+ * corresponding symbols.  The advantage of using a canonical prefix code is
+ * that the codewords can be reconstructed from only the symbol => codeword
+ * length mapping.  This eliminates the need to transmit the codewords
+ * explicitly.  Instead, they can be enumerated in lexicographic order after
+ * sorting the symbols primarily by increasing codeword length and secondarily
+ * by increasing symbol value.
+ *
+ * However, the decoder's real goal is to decode symbols with the code, not just
+ * generate the list of codewords.  Consequently, this function directly builds
+ * a table for efficiently decoding symbols using the code.  The basic idea is
+ * that given the next 'max_codeword_len' bits of input, the decoder can look up
+ * the next decoded symbol by indexing a table containing '2^max_codeword_len'
+ * entries.  A codeword with length 'max_codeword_len' will have exactly one
+ * entry in this table, whereas a codeword shorter than 'max_codeword_len' will
+ * have multiple entries in this table.  Precisely, a codeword of length 'n'
+ * will have '2^(max_codeword_len - n)' entries.  The index of each such entry,
+ * considered as a bitstring of length 'max_codeword_len', will contain the
+ * corresponding codeword as a prefix.
+ *
+ * That's the basic idea, but we extend it in two ways:
+ *
+ * - Often the maximum codeword length is too long for it to be efficient to
+ *   build the full decode table whenever a new code is used.  Instead, we build
+ *   a "root" table using only '2^table_bits' entries, where 'table_bits <=
+ *   max_codeword_len'.  Then, a lookup of 'table_bits' bits produces either a
+ *   symbol directly (for codewords not longer than 'table_bits'), or the index
+ *   of a subtable which must be indexed with additional bits of input to fully
+ *   decode the symbol (for codewords longer than 'table_bits').
+ *
+ * - Whenever the decoder decodes a symbol, it needs to know the codeword length
+ *   so that it can remove the appropriate number of input bits.  The obvious
+ *   solution would be to simply retain the codeword lengths array and use the
+ *   decoded symbol as an index into it.  However, that would require two array
+ *   accesses when decoding each symbol.  Our strategy is to instead store the
+ *   codeword length directly in the decode table entry along with the symbol.
+ *
+ * See MAKE_DECODE_TABLE_ENTRY() for full details on the format of decode table
+ * entries, and see read_huffsym() for full details on how symbols are decoded.
+ *
+ * @decode_table:
+ *	The array in which to build the decode table.  This must have been
+ *	declared by the DECODE_TABLE() macro.  This may alias @lens, since all
+ *	@lens are consumed before the decode table is written to.
+ *
+ * @num_syms:
+ *	The number of symbols in the alphabet.
+ *
+ * @table_bits:
+ *	The log base 2 of the number of entries in the root table.
+ *
+ * @lens:
+ *	An array of length @num_syms, indexed by symbol, that gives the length
+ *	of the codeword, in bits, for each symbol.  The length can be 0, which
+ *	means that the symbol does not have a codeword assigned.  In addition,
+ *	@lens may alias @decode_table, as noted above.
+ *
+ * @max_codeword_len:
+ *	The maximum codeword length permitted for this code.  All entries in
+ *	'lens' must be less than or equal to this value.
+ *
+ * @working_space
+ *	A temporary array that was declared with DECODE_TABLE_WORKING_SPACE().
+ *
+ * Returns 0 on success, or -1 if the lengths do not form a valid prefix code.
+ */
+int
+make_huffman_decode_table(u16 decode_table[], u32 num_syms,
+			  u32 table_bits, const u8 lens[],
+			  u32 max_codeword_len, u16 working_space[])
+{
+	u16 * const len_counts = &working_space[0];
+	u16 * const offsets = &working_space[1 * (max_codeword_len + 1)];
+	u16 * const sorted_syms = &working_space[2 * (max_codeword_len + 1)];
+	s32 remainder = 1;
+	void *entry_ptr = decode_table;
+	u32 codeword_len = 1;
+	u32 sym_idx;
+	u32 codeword;
+	u32 subtable_pos;
+	u32 subtable_bits;
+	u32 subtable_prefix;
+	u32 len;
+	u32 sym;
+	u32 stores_per_loop;
+
+	/* Count how many codewords have each length, including 0.  */
+	for (len = 0; len <= max_codeword_len; len++)
+		len_counts[len] = 0;
+	for (sym = 0; sym < num_syms; sym++)
+		len_counts[lens[sym]]++;
+
+	/* It is already guaranteed that all lengths are <= max_codeword_len,
+	 * but it cannot be assumed they form a complete prefix code.  A
+	 * codeword of length n should require a proportion of the codespace
+	 * equaling (1/2)^n.  The code is complete if and only if, by this
+	 * measure, the codespace is exactly filled by the lengths.
+	 */
+	for (len = 1; len <= max_codeword_len; len++) {
+		remainder = (remainder << 1) - len_counts[len];
+		/* Do the lengths overflow the codespace? */
+		if (unlikely(remainder < 0))
+			return -1;
+	}
+
+	if (remainder != 0) {
+		/* The lengths do not fill the codespace; that is, they form an
+		 * incomplete code.  This is permitted only if the code is empty
+		 * (contains no symbols).
+		 */
+
+		if (unlikely(remainder != 1U << max_codeword_len))
+			return -1;
+
+		/* The code is empty.  When processing a well-formed stream, the
+		 * decode table need not be initialized in this case.  However,
+		 * we cannot assume the stream is well-formed, so we must
+		 * initialize the decode table anyway.  Setting all entries to 0
+		 * makes the decode table always produce symbol '0' without
+		 * consuming any bits, which is good enough.
+		 */
+		memset(decode_table, 0, sizeof(decode_table[0]) << table_bits);
+		return 0;
+	}
+
+	/* Sort the symbols primarily by increasing codeword length and
+	 * secondarily by increasing symbol value.
+	 */
+
+	/* Initialize 'offsets' so that 'offsets[len]' is the number of
+	 * codewords shorter than 'len' bits, including length 0.
+	 */
+	offsets[0] = 0;
+	for (len = 0; len < max_codeword_len; len++)
+		offsets[len + 1] = offsets[len] + len_counts[len];
+
+	/* Use the 'offsets' array to sort the symbols. */
+	for (sym = 0; sym < num_syms; sym++)
+		sorted_syms[offsets[lens[sym]]++] = sym;
+
+	/*
+	 * Fill the root table entries for codewords no longer than table_bits.
+	 *
+	 * The table will start with entries for the shortest codeword(s), which
+	 * will have the most entries.  From there, the number of entries per
+	 * codeword will decrease.  As an optimization, we may begin filling
+	 * entries with SSE2 vector accesses (8 entries/store), then change to
+	 * word accesses (2 or 4 entries/store), then change to 16-bit accesses
+	 * (1 entry/store).
+	 */
+	sym_idx = offsets[0];
+
+	/* Fill entries one word (2 or 4 entries) at a time. */
+	for (stores_per_loop = (1U << (table_bits - codeword_len)) /
+					(WORDBYTES / sizeof(decode_table[0]));
+	     stores_per_loop != 0; codeword_len++, stores_per_loop >>= 1){
+		u32 end_sym_idx = sym_idx + len_counts[codeword_len];
+
+		for (; sym_idx < end_sym_idx; sym_idx++) {
+			/* Accessing the array of u16 as u32 or u64 would
+			 * violate strict aliasing and would require compiling
+			 * the code with -fno-strict-aliasing to guarantee
+			 * correctness.  To work around this problem, use the
+			 * gcc 'may_alias' extension.
+			 */
+			size_t v = repeat_u16(
+				MAKE_DECODE_TABLE_ENTRY(sorted_syms[sym_idx],
+							codeword_len));
+			u32 n = stores_per_loop;
+
+			do {
+				*(size_t __attribute__((may_alias)) *)entry_ptr = v;
+				entry_ptr += sizeof(v);
+			} while (--n);
+		}
+	}
+
+	/* Fill entries one at a time. */
+	for (stores_per_loop = (1U << (table_bits - codeword_len));
+	     stores_per_loop != 0; codeword_len++, stores_per_loop >>= 1){
+		u32 end_sym_idx = sym_idx + len_counts[codeword_len];
+
+		for (; sym_idx < end_sym_idx; sym_idx++) {
+			u16 v = MAKE_DECODE_TABLE_ENTRY(sorted_syms[sym_idx],
+							codeword_len);
+			u32 n = stores_per_loop;
+
+			do {
+				*(u16 *)entry_ptr = v;
+				entry_ptr += sizeof(v);
+			} while (--n);
+		}
+	}
+
+	/* If all symbols were processed, then no subtables are required. */
+	if (sym_idx == num_syms)
+		return 0;
+
+	/* At least one subtable is required.  Process the remaining symbols. */
+	codeword = ((u16 *)entry_ptr - decode_table) << 1;
+	subtable_pos = 1U << table_bits;
+	subtable_bits = table_bits;
+	subtable_prefix = -1;
+	do {
+		u32 prefix;
+		u16 entry;
+		u32 n;
+
+		while (len_counts[codeword_len] == 0) {
+			codeword_len++;
+			codeword <<= 1;
+		}
+
+		prefix = codeword >> (codeword_len - table_bits);
+
+		/* Start a new subtable if the first 'table_bits' bits of the
+		 * codeword don't match the prefix for the previous subtable, or
+		 * if this will be the first subtable.
+		 */
+		if (prefix != subtable_prefix) {
+
+			subtable_prefix = prefix;
+
+			/*
+			 * Calculate the subtable length.  If the codeword
+			 * length exceeds 'table_bits' by n, then the subtable
+			 * needs at least 2^n entries.  But it may need more; if
+			 * there are fewer than 2^n codewords of length
+			 * 'table_bits + n' remaining, then n will need to be
+			 * incremented to bring in longer codewords until the
+			 * subtable can be filled completely.  Note that it
+			 * always will, eventually, be possible to fill the
+			 * subtable, since it was previously verified that the
+			 * code is complete.
+			 */
+			subtable_bits = codeword_len - table_bits;
+			remainder = (s32)1 << subtable_bits;
+			for (;;) {
+				remainder -= len_counts[table_bits +
+							subtable_bits];
+				if (remainder <= 0)
+					break;
+				subtable_bits++;
+				remainder <<= 1;
+			}
+
+			/* Create the entry that points from the root table to
+			 * the subtable.  This entry contains the index of the
+			 * start of the subtable and the number of bits with
+			 * which the subtable is indexed (the log base 2 of the
+			 * number of entries it contains).
+			 */
+			decode_table[subtable_prefix] =
+				MAKE_DECODE_TABLE_ENTRY(subtable_pos,
+							subtable_bits);
+		}
+
+		/* Fill the subtable entries for this symbol. */
+		entry = MAKE_DECODE_TABLE_ENTRY(sorted_syms[sym_idx],
+						    codeword_len - table_bits);
+		n = 1U << (subtable_bits - (codeword_len -
+						     table_bits));
+		do {
+			decode_table[subtable_pos++] = entry;
+		} while (--n);
+
+		len_counts[codeword_len]--;
+		codeword++;
+	} while (++sym_idx < num_syms);
+
+	return 0;
+}
diff --git a/fs/ntfs3/lib/decompress_common.h b/fs/ntfs3/lib/decompress_common.h
new file mode 100644
index 000000000000..c839fdbb21ae
--- /dev/null
+++ b/fs/ntfs3/lib/decompress_common.h
@@ -0,0 +1,558 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+/*
+ * decompress_common.h
+ *
+ * Header for decompression code shared by multiple compression formats.
+ *
+ * The following copying information applies to this specific source code file:
+ *
+ * Written in 2012-2016 by Eric Biggers <ebiggers3@gmail.com>
+ *
+ * To the extent possible under law, the author(s) have dedicated all copyright
+ * and related and neighboring rights to this software to the public domain
+ * worldwide via the Creative Commons Zero 1.0 Universal Public Domain
+ * Dedication (the "CC0").
+ *
+ * This software is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
+ * FOR A PARTICULAR PURPOSE. See the CC0 for more details.
+ *
+ * You should have received a copy of the CC0 along with this software; if not
+ * see <http://creativecommons.org/publicdomain/zero/1.0/>.
+ */
+
+#ifndef _DECOMPRESS_COMMON_H
+#define _DECOMPRESS_COMMON_H
+
+#include "common_defs.h"
+
+/******************************************************************************/
+/*                   Input bitstream for XPRESS and LZX                       */
+/*----------------------------------------------------------------------------*/
+
+/* Structure that encapsulates a block of in-memory data being interpreted as a
+ * stream of bits, optionally with interwoven literal bytes.  Bits are assumed
+ * to be stored in little endian 16-bit coding units, with the bits ordered high
+ * to low.
+ */
+struct input_bitstream {
+
+	/* Bits that have been read from the input buffer.  The bits are
+	 * left-justified; the next bit is always bit 31.
+	 */
+	u32 bitbuf;
+
+	/* Number of bits currently held in @bitbuf.  */
+	u32 bitsleft;
+
+	/* Pointer to the next byte to be retrieved from the input buffer.  */
+	const u8 *next;
+
+	/* Pointer past the end of the input buffer.  */
+	const u8 *end;
+};
+
+/* Initialize a bitstream to read from the specified input buffer.  */
+static forceinline void
+init_input_bitstream(struct input_bitstream *is, const void *buffer, u32 size)
+{
+	is->bitbuf = 0;
+	is->bitsleft = 0;
+	is->next = buffer;
+	is->end = is->next + size;
+}
+
+/* Note: for performance reasons, the following methods don't return error codes
+ * to the caller if the input buffer is overrun.  Instead, they just assume that
+ * all overrun data is zeroes.  This has no effect on well-formed compressed
+ * data.  The only disadvantage is that bad compressed data may go undetected,
+ * but even this is irrelevant if higher level code checksums the uncompressed
+ * data anyway.
+ */
+
+/* Ensure the bit buffer variable for the bitstream contains at least @num_bits
+ * bits.  Following this, bitstream_peek_bits() and/or bitstream_remove_bits()
+ * may be called on the bitstream to peek or remove up to @num_bits bits.
+ */
+static forceinline void
+bitstream_ensure_bits(struct input_bitstream *is, const u32 num_bits)
+{
+	/* This currently works for at most 17 bits.  */
+
+	if (is->bitsleft >= num_bits)
+		return;
+
+	if (unlikely(is->end - is->next < 2))
+		goto overflow;
+
+	is->bitbuf |= (u32)get_unaligned_le16(is->next) << (16 - is->bitsleft);
+	is->next += 2;
+	is->bitsleft += 16;
+
+	if (unlikely(num_bits == 17 && is->bitsleft == 16)) {
+		if (unlikely(is->end - is->next < 2))
+			goto overflow;
+
+		is->bitbuf |= (u32)get_unaligned_le16(is->next);
+		is->next += 2;
+		is->bitsleft = 32;
+	}
+
+	return;
+
+overflow:
+	is->bitsleft = 32;
+}
+
+/* Return the next @num_bits bits from the bitstream, without removing them.
+ * There must be at least @num_bits remaining in the buffer variable, from a
+ * previous call to bitstream_ensure_bits().
+ */
+static forceinline u32
+bitstream_peek_bits(const struct input_bitstream *is, const u32 num_bits)
+{
+	return (is->bitbuf >> 1) >> (sizeof(is->bitbuf) * 8 - num_bits - 1);
+}
+
+/* Remove @num_bits from the bitstream.  There must be at least @num_bits
+ * remaining in the buffer variable, from a previous call to
+ * bitstream_ensure_bits().
+ */
+static forceinline void
+bitstream_remove_bits(struct input_bitstream *is, u32 num_bits)
+{
+	is->bitbuf <<= num_bits;
+	is->bitsleft -= num_bits;
+}
+
+/* Remove and return @num_bits bits from the bitstream.  There must be at least
+ * @num_bits remaining in the buffer variable, from a previous call to
+ * bitstream_ensure_bits().
+ */
+static forceinline u32
+bitstream_pop_bits(struct input_bitstream *is, u32 num_bits)
+{
+	u32 bits = bitstream_peek_bits(is, num_bits);
+
+	bitstream_remove_bits(is, num_bits);
+	return bits;
+}
+
+/* Read and return the next @num_bits bits from the bitstream.  */
+static forceinline u32
+bitstream_read_bits(struct input_bitstream *is, u32 num_bits)
+{
+	bitstream_ensure_bits(is, num_bits);
+	return bitstream_pop_bits(is, num_bits);
+}
+
+/* Read and return the next literal byte embedded in the bitstream.  */
+static forceinline u8
+bitstream_read_byte(struct input_bitstream *is)
+{
+	if (unlikely(is->end == is->next))
+		return 0;
+	return *is->next++;
+}
+
+/* Read and return the next 16-bit integer embedded in the bitstream.  */
+static forceinline u16
+bitstream_read_u16(struct input_bitstream *is)
+{
+	u16 v;
+
+	if (unlikely(is->end - is->next < 2))
+		return 0;
+	v = get_unaligned_le16(is->next);
+	is->next += 2;
+	return v;
+}
+
+/* Read and return the next 32-bit integer embedded in the bitstream.  */
+static forceinline u32
+bitstream_read_u32(struct input_bitstream *is)
+{
+	u32 v;
+
+	if (unlikely(is->end - is->next < 4))
+		return 0;
+	v = get_unaligned_le32(is->next);
+	is->next += 4;
+	return v;
+}
+
+/* Read into @dst_buffer an array of literal bytes embedded in the bitstream.
+ * Return 0 if there were enough bytes remaining in the input, otherwise -1.
+ */
+static forceinline int
+bitstream_read_bytes(struct input_bitstream *is, void *dst_buffer, size_t count)
+{
+	if (unlikely(is->end - is->next < count))
+		return -1;
+	memcpy(dst_buffer, is->next, count);
+	is->next += count;
+	return 0;
+}
+
+/* Align the input bitstream on a coding-unit boundary.  */
+static forceinline void
+bitstream_align(struct input_bitstream *is)
+{
+	is->bitsleft = 0;
+	is->bitbuf = 0;
+}
+
+/******************************************************************************/
+/*                             Huffman decoding                               */
+/*----------------------------------------------------------------------------*/
+
+/*
+ * Required alignment for the Huffman decode tables.  We require this alignment
+ * so that we can fill the entries with vector or word instructions and not have
+ * to deal with misaligned buffers.
+ */
+#define DECODE_TABLE_ALIGNMENT 16
+
+/*
+ * Each decode table entry is 16 bits divided into two fields: 'symbol' (high 12
+ * bits) and 'length' (low 4 bits).  The precise meaning of these fields depends
+ * on the type of entry:
+ *
+ * Root table entries which are *not* subtable pointers:
+ *	symbol: symbol to decode
+ *	length: codeword length in bits
+ *
+ * Root table entries which are subtable pointers:
+ *	symbol: index of start of subtable
+ *	length: number of bits with which the subtable is indexed
+ *
+ * Subtable entries:
+ *	symbol: symbol to decode
+ *	length: codeword length in bits, minus the number of bits with which the
+ *		root table is indexed
+ */
+#define DECODE_TABLE_SYMBOL_SHIFT  4
+#define DECODE_TABLE_MAX_SYMBOL	   ((1 << (16 - DECODE_TABLE_SYMBOL_SHIFT)) - 1)
+#define DECODE_TABLE_MAX_LENGTH    ((1 << DECODE_TABLE_SYMBOL_SHIFT) - 1)
+#define DECODE_TABLE_LENGTH_MASK   DECODE_TABLE_MAX_LENGTH
+#define MAKE_DECODE_TABLE_ENTRY(symbol, length) \
+	(((symbol) << DECODE_TABLE_SYMBOL_SHIFT) | (length))
+
+/*
+ * Read and return the next Huffman-encoded symbol from the given bitstream
+ * using the given decode table.
+ *
+ * If the input data is exhausted, then the Huffman symbol will be decoded as if
+ * the missing bits were all zeroes.
+ *
+ * XXX: This is mostly duplicated in lzms_decode_huffman_symbol() in
+ * lzms_decompress.c; keep them in sync!
+ */
+static forceinline u32
+read_huffsym(struct input_bitstream *is, const u16 decode_table[],
+	     u32 table_bits, u32 max_codeword_len)
+{
+	u32 entry;
+	u32 symbol;
+	u32 length;
+
+	/* Preload the bitbuffer with 'max_codeword_len' bits so that we're
+	 * guaranteed to be able to fully decode a codeword.
+	 */
+	bitstream_ensure_bits(is, max_codeword_len);
+
+	/* Index the root table by the next 'table_bits' bits of input. */
+	entry = decode_table[bitstream_peek_bits(is, table_bits)];
+
+	/* Extract the "symbol" and "length" from the entry. */
+	symbol = entry >> DECODE_TABLE_SYMBOL_SHIFT;
+	length = entry & DECODE_TABLE_LENGTH_MASK;
+
+	/* If the root table is indexed by the full 'max_codeword_len' bits,
+	 * then there cannot be any subtables, and this will be known at compile
+	 * time.  Otherwise, we must check whether the decoded symbol is really
+	 * a subtable pointer.  If so, we must discard the bits with which the
+	 * root table was indexed, then index the subtable by the next 'length'
+	 * bits of input to get the real entry.
+	 */
+	if (max_codeword_len > table_bits &&
+	    entry >= (1U << (table_bits + DECODE_TABLE_SYMBOL_SHIFT))) {
+		/* Subtable required */
+		bitstream_remove_bits(is, table_bits);
+		entry = decode_table[symbol + bitstream_peek_bits(is, length)];
+		symbol = entry >> DECODE_TABLE_SYMBOL_SHIFT;
+		length = entry & DECODE_TABLE_LENGTH_MASK;
+	}
+
+	/* Discard the bits (or the remaining bits, if a subtable was required)
+	 * of the codeword.
+	 */
+	bitstream_remove_bits(is, length);
+
+	/* Return the decoded symbol. */
+	return symbol;
+}
+
+/*
+ * The DECODE_TABLE_ENOUGH() macro evaluates to the maximum number of decode
+ * table entries, including all subtable entries, that may be required for
+ * decoding a given Huffman code.  This depends on three parameters:
+ *
+ *	num_syms: the maximum number of symbols in the code
+ *	table_bits: the number of bits with which the root table will be indexed
+ *	max_codeword_len: the maximum allowed codeword length in the code
+ *
+ * Given these parameters, the utility program 'enough' from zlib, when passed
+ * the three arguments 'num_syms', 'table_bits', and 'max_codeword_len', will
+ * compute the maximum number of entries required.  This has already been done
+ * for the combinations we need and incorporated into the macro below so that
+ * the mapping can be done at compilation time.  If an unknown combination is
+ * used, then a compilation error will result.  To fix this, use 'enough' to
+ * find the missing value and add it below.  If that still doesn't fix the
+ * compilation error, then most likely a constraint would be violated by the
+ * requested parameters, so they cannot be used, at least without other changes
+ * to the decode table --- see DECODE_TABLE_SIZE().
+ */
+#define DECODE_TABLE_ENOUGH(num_syms, table_bits, max_codeword_len) ( \
+	((num_syms) == 8 && (table_bits) == 7 && (max_codeword_len) == 15) ? 128 : \
+	((num_syms) == 8 && (table_bits) == 5 && (max_codeword_len) == 7) ? 36 : \
+	((num_syms) == 8 && (table_bits) == 6 && (max_codeword_len) == 7) ? 66 : \
+	((num_syms) == 8 && (table_bits) == 7 && (max_codeword_len) == 7) ? 128 : \
+	((num_syms) == 20 && (table_bits) == 5 && (max_codeword_len) == 15) ? 1062 : \
+	((num_syms) == 20 && (table_bits) == 6 && (max_codeword_len) == 15) ? 582 : \
+	((num_syms) == 20 && (table_bits) == 7 && (max_codeword_len) == 15) ? 390 : \
+	((num_syms) == 54 && (table_bits) == 9 && (max_codeword_len) == 15) ? 618 : \
+	((num_syms) == 54 && (table_bits) == 10 && (max_codeword_len) == 15) ? 1098 : \
+	((num_syms) == 249 && (table_bits) == 9 && (max_codeword_len) == 16) ? 878 : \
+	((num_syms) == 249 && (table_bits) == 10 && (max_codeword_len) == 16) ? 1326 : \
+	((num_syms) == 249 && (table_bits) == 11 && (max_codeword_len) == 16) ? 2318 : \
+	((num_syms) == 256 && (table_bits) == 9 && (max_codeword_len) == 15) ? 822 : \
+	((num_syms) == 256 && (table_bits) == 10 && (max_codeword_len) == 15) ? 1302 : \
+	((num_syms) == 256 && (table_bits) == 11 && (max_codeword_len) == 15) ? 2310 : \
+	((num_syms) == 512 && (table_bits) == 10 && (max_codeword_len) == 15) ? 1558 : \
+	((num_syms) == 512 && (table_bits) == 11 && (max_codeword_len) == 15) ? 2566 : \
+	((num_syms) == 512 && (table_bits) == 12 && (max_codeword_len) == 15) ? 4606 : \
+	((num_syms) == 656 && (table_bits) == 10 && (max_codeword_len) == 16) ? 1734 : \
+	((num_syms) == 656 && (table_bits) == 11 && (max_codeword_len) == 16) ? 2726 : \
+	((num_syms) == 656 && (table_bits) == 12 && (max_codeword_len) == 16) ? 4758 : \
+	((num_syms) == 799 && (table_bits) == 9 && (max_codeword_len) == 15) ? 1366 : \
+	((num_syms) == 799 && (table_bits) == 10 && (max_codeword_len) == 15) ? 1846 : \
+	((num_syms) == 799 && (table_bits) == 11 && (max_codeword_len) == 15) ? 2854 : \
+	-1)
+
+/* Wrapper around DECODE_TABLE_ENOUGH() that does additional compile-time
+ * validation.
+ */
+#define DECODE_TABLE_SIZE(num_syms, table_bits, max_codeword_len) (	\
+									\
+	/* All values must be positive. */				\
+	STATIC_ASSERT_ZERO((num_syms) > 0) +				\
+	STATIC_ASSERT_ZERO((table_bits) > 0) +				\
+	STATIC_ASSERT_ZERO((max_codeword_len) > 0) +			\
+									\
+	/* There cannot be more symbols than possible codewords. */	\
+	STATIC_ASSERT_ZERO((num_syms) <= 1U << (max_codeword_len)) +	\
+									\
+	/* There is no reason for the root table to be indexed with */	\
+	/* more bits than the maximum codeword length. */		\
+	STATIC_ASSERT_ZERO((table_bits) <= (max_codeword_len)) +	\
+									\
+	/* The maximum symbol value must fit in the 'symbol' field. */	\
+	STATIC_ASSERT_ZERO((num_syms) - 1 <= DECODE_TABLE_MAX_SYMBOL) +	\
+									\
+	/* The maximum codeword length in the root table must fit in */ \
+	/* the 'length' field. */					\
+	STATIC_ASSERT_ZERO((table_bits) <= DECODE_TABLE_MAX_LENGTH) +	\
+									\
+	/* The maximum codeword length in a subtable must fit in the */	\
+	/* 'length' field. */						\
+	STATIC_ASSERT_ZERO((max_codeword_len) - (table_bits) <=		\
+				DECODE_TABLE_MAX_LENGTH) +		\
+									\
+	/* The minimum subtable index must be greater than the maximum */\
+	/* symbol value.  If this were not the case, then there would */\
+	/* be no way to tell whether a given root table entry is a */	\
+	/* "subtable pointer" or not.  (An alternate solution would */	\
+	/* be to reserve a flag bit specifically for this purpose.) */	\
+	STATIC_ASSERT_ZERO((1U << (table_bits)) > (num_syms) - 1) +	\
+									\
+	/* The needed 'enough' value must have been defined. */		\
+	STATIC_ASSERT_ZERO(DECODE_TABLE_ENOUGH(				\
+				(num_syms), (table_bits),		\
+				(max_codeword_len)) > 0) +		\
+									\
+	/* The maximum subtable index must fit in the 'symbol' field. */\
+	STATIC_ASSERT_ZERO(DECODE_TABLE_ENOUGH(				\
+				(num_syms), (table_bits),		\
+				(max_codeword_len)) - 1 <=		\
+					DECODE_TABLE_MAX_SYMBOL) +	\
+									\
+	/* Finally, make the macro evaluate to the needed maximum */	\
+	/* number of decode table entries. */				\
+	DECODE_TABLE_ENOUGH((num_syms), (table_bits),			\
+			    (max_codeword_len))				\
+)
+
+
+/*
+ * Declare the decode table for a Huffman code, given several compile-time
+ * constants that describe the code.  See DECODE_TABLE_ENOUGH() for details.
+ *
+ * Decode tables must be aligned to a DECODE_TABLE_ALIGNMENT-byte boundary.
+ * This implies that if a decode table is nested inside a dynamically allocated
+ * structure, then the outer structure must be allocated on a
+ * DECODE_TABLE_ALIGNMENT-byte aligned boundary as well.
+ */
+#define DECODE_TABLE(name, num_syms, table_bits, max_codeword_len) \
+	u16 name[DECODE_TABLE_SIZE((num_syms), (table_bits), \
+				   (max_codeword_len))]	\
+		_aligned_attribute(DECODE_TABLE_ALIGNMENT)
+
+/*
+ * Declare the temporary "working_space" array needed for building the decode
+ * table for a Huffman code.
+ */
+#define DECODE_TABLE_WORKING_SPACE(name, num_syms, max_codeword_len)	\
+	u16 name[2 * ((max_codeword_len) + 1)  + (num_syms)]
+
+extern int
+make_huffman_decode_table(u16 decode_table[], u32 num_syms,
+			  u32 table_bits, const u8 lens[],
+			  u32 max_codeword_len, u16 working_space[]);
+
+/******************************************************************************/
+/*                             LZ match copying                               */
+/*----------------------------------------------------------------------------*/
+
+static forceinline void
+copy_word_unaligned(const void *src, void *dst)
+{
+	store_word_unaligned(load_word_unaligned(src), dst);
+}
+
+static forceinline size_t
+repeat_u16(u16 b)
+{
+	size_t v = b;
+
+	STATIC_ASSERT(WORDBITS == 32 || WORDBITS == 64);
+	v |= v << 16;
+	v |= v << ((WORDBITS == 64) ? 32 : 0);
+	return v;
+}
+
+static forceinline size_t
+repeat_byte(u8 b)
+{
+	return repeat_u16(((u16)b << 8) | b);
+}
+
+/*
+ * Copy an LZ77 match of 'length' bytes from the match source at 'out_next -
+ * offset' to the match destination at 'out_next'.  The source and destination
+ * may overlap.
+ *
+ * This handles validating the length and offset.  It is validated that the
+ * beginning of the match source is '>= out_begin' and that end of the match
+ * destination is '<= out_end'.  The return value is 0 if the match was valid
+ * (and was copied), otherwise -1.
+ *
+ * 'min_length' is a hint which specifies the minimum possible match length.
+ * This should be a compile-time constant.
+ */
+static forceinline int
+lz_copy(u32 length, u32 offset, u8 *out_begin, u8 *out_next, u8 *out_end,
+	u32 min_length)
+{
+	const u8 *src;
+	u8 *end;
+
+	/* Validate the offset. */
+	if (unlikely(offset > out_next - out_begin))
+		return -1;
+
+	/*
+	 * Fast path: copy a match which is no longer than a few words, is not
+	 * overlapped such that copying a word at a time would produce incorrect
+	 * results, and is not too close to the end of the buffer.  Note that
+	 * this might copy more than the length of the match, but that's okay in
+	 * this scenario.
+	 */
+	src = out_next - offset;
+	if (UNALIGNED_ACCESS_IS_FAST && length <= 3 * WORDBYTES &&
+	    offset >= WORDBYTES && out_end - out_next >= 3 * WORDBYTES) {
+		copy_word_unaligned(src + WORDBYTES*0, out_next + WORDBYTES*0);
+		copy_word_unaligned(src + WORDBYTES*1, out_next + WORDBYTES*1);
+		copy_word_unaligned(src + WORDBYTES*2, out_next + WORDBYTES*2);
+		return 0;
+	}
+
+	/* Validate the length.  This isn't needed in the fast path above, due
+	 * to the additional conditions tested, but we do need it here.
+	 */
+	if (unlikely(length > out_end - out_next))
+		return -1;
+	end = out_next + length;
+
+	/*
+	 * Try to copy one word at a time.  On i386 and x86_64 this is faster
+	 * than copying one byte at a time, unless the data is near-random and
+	 * all the matches have very short lengths.  Note that since this
+	 * requires unaligned memory accesses, it won't necessarily be faster on
+	 * every architecture.
+	 *
+	 * Also note that we might copy more than the length of the match.  For
+	 * example, if a word is 8 bytes and the match is of length 5, then
+	 * we'll simply copy 8 bytes.  This is okay as long as we don't write
+	 * beyond the end of the output buffer, hence the check for (out_end -
+	 * end >= WORDBYTES - 1).
+	 */
+	if (UNALIGNED_ACCESS_IS_FAST && likely(out_end - end >= WORDBYTES - 1)) {
+		if (offset >= WORDBYTES) {
+			/* The source and destination words don't overlap. */
+			do {
+				copy_word_unaligned(src, out_next);
+				src += WORDBYTES;
+				out_next += WORDBYTES;
+			} while (out_next < end);
+			return 0;
+		} else if (offset == 1) {
+			/* Offset 1 matches are equivalent to run-length
+			 * encoding of the previous byte.  This case is common
+			 * if the data contains many repeated bytes.
+			 */
+			size_t v = repeat_byte(*(out_next - 1));
+
+			do {
+				store_word_unaligned(v, out_next);
+				src += WORDBYTES;
+				out_next += WORDBYTES;
+			} while (out_next < end);
+			return 0;
+		}
+		/*
+		 * We don't bother with special cases for other 'offset <
+		 * WORDBYTES', which are usually rarer than 'offset == 1'.
+		 * Extra checks will just slow things down.  Actually, it's
+		 * possible to handle all the 'offset < WORDBYTES' cases using
+		 * the same code, but it still becomes more complicated doesn't
+		 * seem any faster overall; it definitely slows down the more
+		 * common 'offset == 1' case.
+		 */
+	}
+
+	/* Fall back to a bytewise copy.  */
+	if (min_length >= 2)
+		*out_next++ = *src++;
+	if (min_length >= 3)
+		*out_next++ = *src++;
+	if (min_length >= 4)
+		*out_next++ = *src++;
+	do {
+		*out_next++ = *src++;
+	} while (out_next != end);
+	return 0;
+}
+
+#endif /* _DECOMPRESS_COMMON_H */
diff --git a/fs/ntfs3/lib/lib.h b/fs/ntfs3/lib/lib.h
new file mode 100644
index 000000000000..a7fe82b76d5a
--- /dev/null
+++ b/fs/ntfs3/lib/lib.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+/* globals from xpress_decompress.c */
+struct xpress_decompressor *xpress_allocate_decompressor(void);
+void xpress_free_decompressor(struct xpress_decompressor *d);
+int xpress_decompress(struct xpress_decompressor *__restrict d,
+		      const void *__restrict compressed_data,
+		      size_t compressed_size,
+		      void *__restrict uncompressed_data,
+		      size_t uncompressed_size);
+
+/* globals from lzx_decompress.c */
+struct lzx_decompressor *lzx_allocate_decompressor(size_t max_block_size);
+void lzx_free_decompressor(struct lzx_decompressor *d);
+int lzx_decompress(struct lzx_decompressor *__restrict d,
+		   const void *__restrict compressed_data,
+		   size_t compressed_size, void *__restrict uncompressed_data,
+		   size_t uncompressed_size);
diff --git a/fs/ntfs3/lib/lzx_common.c b/fs/ntfs3/lib/lzx_common.c
new file mode 100644
index 000000000000..7c1e44af7673
--- /dev/null
+++ b/fs/ntfs3/lib/lzx_common.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * lzx_common.c - Common code for LZX compression and decompression.
+ */
+
+/*
+ * Copyright (C) 2012-2016 Eric Biggers
+ *
+ * This program is free software: you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License as published by the Free Software
+ * Foundation, either version 2 of the License, or (at your option) any later
+ * version.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
+ * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
+ * details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include "lzx_common.h"
+
+/* Mapping: offset slot => first match offset that uses that offset slot.
+ * The offset slots for repeat offsets map to "fake" offsets < 1.
+ */
+const s32 lzx_offset_slot_base[LZX_MAX_OFFSET_SLOTS + 1] = {
+	-2,	 -1,	  0,	   1,	    2,		/* 0  --- 4  */
+	4,	 6,	  10,	   14,	    22,		/* 5  --- 9  */
+	30,	 46,	  62,	   94,	    126,	/* 10 --- 14 */
+	190,	 254,	  382,	   510,	    766,	/* 15 --- 19 */
+	1022,	 1534,	  2046,	   3070,    4094,	/* 20 --- 24 */
+	6142,	 8190,	  12286,   16382,   24574,	/* 25 --- 29 */
+	32766,	 49150,	  65534,   98302,   131070,	/* 30 --- 34 */
+	196606,	 262142,  393214,  524286,  655358,	/* 35 --- 39 */
+	786430,	 917502,  1048574, 1179646, 1310718,	/* 40 --- 44 */
+	1441790, 1572862, 1703934, 1835006, 1966078,	/* 45 --- 49 */
+	2097150						/* extra     */
+};
+
+/* Mapping: offset slot => how many extra bits must be read and added to the
+ * corresponding offset slot base to decode the match offset.
+ */
+const u8 lzx_extra_offset_bits[LZX_MAX_OFFSET_SLOTS] = {
+	0,	0,	0,	0,	1,
+	1,	2,	2,	3,	3,
+	4,	4,	5,	5,	6,
+	6,	7,	7,	8,	8,
+	9,	9,	10,	10,	11,
+	11,	12,	12,	13,	13,
+	14,	14,	15,	15,	16,
+	16,	17,	17,	17,	17,
+	17,	17,	17,	17,	17,
+	17,	17,	17,	17,	17,
+};
+
+
+/* Round the specified buffer size up to the next valid LZX window size, and
+ * return its order (log2).  Or, if the buffer size is 0 or greater than the
+ * largest valid LZX window size, return 0.
+ */
+u32
+lzx_get_window_order(size_t max_bufsize)
+{
+	if (max_bufsize == 0 || max_bufsize > LZX_MAX_WINDOW_SIZE)
+		return 0;
+
+	return max(ilog2_ceil(max_bufsize), LZX_MIN_WINDOW_ORDER);
+}
+
+/* Given a valid LZX window order, return the number of symbols that will exist
+ * in the main Huffman code.
+ */
+u32
+lzx_get_num_main_syms(u32 window_order)
+{
+	/* Note: one would expect that the maximum match offset would be
+	 * 'window_size - LZX_MIN_MATCH_LEN', which would occur if the first two
+	 * bytes were to match the last two bytes.  However, the format
+	 * disallows this case.  This reduces the number of needed offset slots
+	 * by 1.
+	 */
+	u32 window_size = (u32)1 << window_order;
+	u32 max_offset = window_size - LZX_MIN_MATCH_LEN - 1;
+	u32 num_offset_slots = 30;
+
+	while (max_offset >= lzx_offset_slot_base[num_offset_slots])
+		num_offset_slots++;
+
+	return LZX_NUM_CHARS + (num_offset_slots * LZX_NUM_LEN_HEADERS);
+}
+
+static void
+do_translate_target(void *target, s32 input_pos)
+{
+	s32 abs_offset, rel_offset;
+
+	rel_offset = get_unaligned_le32(target);
+	if (rel_offset >= -input_pos && rel_offset < LZX_WIM_MAGIC_FILESIZE) {
+		if (rel_offset < LZX_WIM_MAGIC_FILESIZE - input_pos) {
+			/* "good translation" */
+			abs_offset = rel_offset + input_pos;
+		} else {
+			/* "compensating translation" */
+			abs_offset = rel_offset - LZX_WIM_MAGIC_FILESIZE;
+		}
+		put_unaligned_le32(abs_offset, target);
+	}
+}
+
+static void
+undo_translate_target(void *target, s32 input_pos)
+{
+	s32 abs_offset, rel_offset;
+
+	abs_offset = get_unaligned_le32(target);
+	if (abs_offset >= 0) {
+		if (abs_offset < LZX_WIM_MAGIC_FILESIZE) {
+			/* "good translation" */
+			rel_offset = abs_offset - input_pos;
+			put_unaligned_le32(rel_offset, target);
+		}
+	} else {
+		if (abs_offset >= -input_pos) {
+			/* "compensating translation" */
+			rel_offset = abs_offset + LZX_WIM_MAGIC_FILESIZE;
+			put_unaligned_le32(rel_offset, target);
+		}
+	}
+}
+
+/*
+ * Do or undo the 'E8' preprocessing used in LZX.  Before compression, the
+ * uncompressed data is preprocessed by changing the targets of x86 CALL
+ * instructions from relative offsets to absolute offsets.  After decompression,
+ * the translation is undone by changing the targets of x86 CALL instructions
+ * from absolute offsets to relative offsets.
+ *
+ * Note that despite its intent, E8 preprocessing can be done on any data even
+ * if it is not actually x86 machine code.  In fact, E8 preprocessing appears to
+ * always be used in LZX-compressed resources in WIM files; there is no bit to
+ * indicate whether it is used or not, unlike in the LZX compressed format as
+ * used in cabinet files, where a bit is reserved for that purpose.
+ *
+ * E8 preprocessing is disabled in the last 6 bytes of the uncompressed data,
+ * which really means the 5-byte call instruction cannot start in the last 10
+ * bytes of the uncompressed data.  This is one of the errors in the LZX
+ * documentation.
+ *
+ * E8 preprocessing does not appear to be disabled after the 32768th chunk of a
+ * WIM resource, which apparently is another difference from the LZX compression
+ * used in cabinet files.
+ *
+ * E8 processing is supposed to take the file size as a parameter, as it is used
+ * in calculating the translated jump targets.	But in WIM files, this file size
+ * is always the same (LZX_WIM_MAGIC_FILESIZE == 12000000).
+ */
+static void
+lzx_e8_filter(u8 *data, u32 size, void (*process_target)(void *, s32))
+{
+	/*
+	 * A worthwhile optimization is to push the end-of-buffer check into the
+	 * relatively rare E8 case.  This is possible if we replace the last six
+	 * bytes of data with E8 bytes; then we are guaranteed to hit an E8 byte
+	 * before reaching end-of-buffer.  In addition, this scheme guarantees
+	 * that no translation can begin following an E8 byte in the last 10
+	 * bytes because a 4-byte offset containing E8 as its high byte is a
+	 * large negative number that is not valid for translation.  That is
+	 * exactly what we need.
+	 */
+	u8 *tail;
+	u8 saved_bytes[6];
+	u8 *p;
+
+	if (size <= 10)
+		return;
+
+	tail = &data[size - 6];
+	memcpy(saved_bytes, tail, 6);
+	memset(tail, 0xE8, 6);
+	p = data;
+	for (;;) {
+		while (*p != 0xE8)
+			p++;
+		if (p >= tail)
+			break;
+		(*process_target)(p + 1, p - data);
+		p += 5;
+	}
+	memcpy(tail, saved_bytes, 6);
+}
+
+void
+lzx_preprocess(u8 *data, u32 size)
+{
+	lzx_e8_filter(data, size, do_translate_target);
+}
+
+void
+lzx_postprocess(u8 *data, u32 size)
+{
+	lzx_e8_filter(data, size, undo_translate_target);
+}
diff --git a/fs/ntfs3/lib/lzx_common.h b/fs/ntfs3/lib/lzx_common.h
new file mode 100644
index 000000000000..08324df55b50
--- /dev/null
+++ b/fs/ntfs3/lib/lzx_common.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+/*
+ * lzx_common.h
+ *
+ * Declarations shared between LZX compression and decompression.
+ */
+
+#ifndef _LZX_COMMON_H
+#define _LZX_COMMON_H
+
+#include "lzx_constants.h"
+#include "common_defs.h"
+
+extern const s32 lzx_offset_slot_base[LZX_MAX_OFFSET_SLOTS + 1];
+
+extern const u8 lzx_extra_offset_bits[LZX_MAX_OFFSET_SLOTS];
+
+extern u32
+lzx_get_window_order(size_t max_bufsize);
+
+extern u32
+lzx_get_num_main_syms(u32 window_order);
+
+extern void
+lzx_preprocess(u8 *data, u32 size);
+
+extern void
+lzx_postprocess(u8 *data, u32 size);
+
+#endif /* _LZX_COMMON_H */
diff --git a/fs/ntfs3/lib/lzx_constants.h b/fs/ntfs3/lib/lzx_constants.h
new file mode 100644
index 000000000000..e2ee53f917dd
--- /dev/null
+++ b/fs/ntfs3/lib/lzx_constants.h
@@ -0,0 +1,113 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * lzx_constants.h
+ *
+ * Constants for the LZX compression format.
+ */
+
+#ifndef _LZX_CONSTANTS_H
+#define _LZX_CONSTANTS_H
+
+/* Number of literal byte values.  */
+#define LZX_NUM_CHARS	256
+
+/* The smallest and largest allowed match lengths.  */
+#define LZX_MIN_MATCH_LEN	2
+#define LZX_MAX_MATCH_LEN	257
+
+/* Number of distinct match lengths that can be represented.  */
+#define LZX_NUM_LENS		(LZX_MAX_MATCH_LEN - LZX_MIN_MATCH_LEN + 1)
+
+/* Number of match lengths for which no length symbol is required.  */
+#define LZX_NUM_PRIMARY_LENS	7
+#define LZX_NUM_LEN_HEADERS	(LZX_NUM_PRIMARY_LENS + 1)
+
+/* Valid values of the 3-bit block type field.  */
+#define LZX_BLOCKTYPE_VERBATIM       1
+#define LZX_BLOCKTYPE_ALIGNED        2
+#define LZX_BLOCKTYPE_UNCOMPRESSED   3
+
+/* 'LZX_MIN_WINDOW_SIZE' and 'LZX_MAX_WINDOW_SIZE' are the minimum and maximum
+ * sizes of the sliding window.
+ */
+#define LZX_MIN_WINDOW_ORDER	15u
+#define LZX_MAX_WINDOW_ORDER	21
+#define LZX_MIN_WINDOW_SIZE	(1UL << LZX_MIN_WINDOW_ORDER)  /* 32768   */
+#define LZX_MAX_WINDOW_SIZE	(1UL << LZX_MAX_WINDOW_ORDER)  /* 2097152 */
+
+/* Maximum number of offset slots.  (The actual number of offset slots depends
+ * on the window size.)
+ */
+#define LZX_MAX_OFFSET_SLOTS	50
+
+/* Maximum number of symbols in the main code.  (The actual number of symbols in
+ * the main code depends on the window size.)
+ */
+#define LZX_MAINCODE_MAX_NUM_SYMBOLS	\
+	(LZX_NUM_CHARS + (LZX_MAX_OFFSET_SLOTS * LZX_NUM_LEN_HEADERS))
+
+/* Number of symbols in the length code.  */
+#define LZX_LENCODE_NUM_SYMBOLS		(LZX_NUM_LENS - LZX_NUM_PRIMARY_LENS)
+
+/* Number of symbols in the pre-code.  */
+#define LZX_PRECODE_NUM_SYMBOLS		20
+
+/* Number of bits in which each pre-code codeword length is represented.  */
+#define LZX_PRECODE_ELEMENT_SIZE	4
+
+/* Number of low-order bits of each match offset that are entropy-encoded in
+ * aligned offset blocks.
+ */
+#define LZX_NUM_ALIGNED_OFFSET_BITS	3
+
+/* Number of symbols in the aligned offset code.  */
+#define LZX_ALIGNEDCODE_NUM_SYMBOLS	(1 << LZX_NUM_ALIGNED_OFFSET_BITS)
+
+/* Mask for the match offset bits that are entropy-encoded in aligned offset
+ * blocks.
+ */
+#define LZX_ALIGNED_OFFSET_BITMASK	((1 << LZX_NUM_ALIGNED_OFFSET_BITS) - 1)
+
+/* Number of bits in which each aligned offset codeword length is represented.  */
+#define LZX_ALIGNEDCODE_ELEMENT_SIZE	3
+
+/* The first offset slot which requires an aligned offset symbol in aligned
+ * offset blocks.
+ */
+#define LZX_MIN_ALIGNED_OFFSET_SLOT	8
+
+/* The offset slot base for LZX_MIN_ALIGNED_OFFSET_SLOT.  */
+#define LZX_MIN_ALIGNED_OFFSET		14
+
+/* The maximum number of extra offset bits in verbatim blocks.  (One would need
+ * to subtract LZX_NUM_ALIGNED_OFFSET_BITS to get the number of extra offset
+ * bits in *aligned* blocks.)
+ */
+#define LZX_MAX_NUM_EXTRA_BITS		17
+
+/* Maximum lengths (in bits) for length-limited Huffman code construction.  */
+#define LZX_MAX_MAIN_CODEWORD_LEN	16
+#define LZX_MAX_LEN_CODEWORD_LEN	16
+#define LZX_MAX_PRE_CODEWORD_LEN	((1 << LZX_PRECODE_ELEMENT_SIZE) - 1)
+#define LZX_MAX_ALIGNED_CODEWORD_LEN	((1 << LZX_ALIGNEDCODE_ELEMENT_SIZE) - 1)
+
+/* For LZX-compressed blocks in WIM resources, this value is always used as the
+ * filesize parameter for the call instruction (0xe8 byte) preprocessing, even
+ * though the blocks themselves are not this size, and the size of the actual
+ * file resource in the WIM file is very likely to be something entirely
+ * different as well.
+ */
+#define LZX_WIM_MAGIC_FILESIZE	12000000
+
+/* Assumed LZX block size when the encoded block size begins with a 0 bit.
+ * This is probably WIM-specific.
+ */
+#define LZX_DEFAULT_BLOCK_SIZE	32768
+
+/* Number of offsets in the recent (or "repeat") offsets queue.  */
+#define LZX_NUM_RECENT_OFFSETS	3
+
+/* An offset of n bytes is actually encoded as (n + LZX_OFFSET_ADJUSTMENT).  */
+#define LZX_OFFSET_ADJUSTMENT	(LZX_NUM_RECENT_OFFSETS - 1)
+
+#endif /* _LZX_CONSTANTS_H */
diff --git a/fs/ntfs3/lib/lzx_decompress.c b/fs/ntfs3/lib/lzx_decompress.c
new file mode 100644
index 000000000000..a048dd8bd1c9
--- /dev/null
+++ b/fs/ntfs3/lib/lzx_decompress.c
@@ -0,0 +1,554 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * lzx_decompress.c
+ *
+ * A decompressor for the LZX compression format, as used in WIM files.
+ */
+
+/*
+ * Copyright (C) 2012-2016 Eric Biggers
+ *
+ * This program is free software: you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License as published by the Free Software
+ * Foundation, either version 2 of the License, or (at your option) any later
+ * version.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
+ * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
+ * details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/*
+ * LZX is an LZ77 and Huffman-code based compression format that has many
+ * similarities to DEFLATE (the format used by zlib/gzip).  The compression
+ * ratio is as good or better than DEFLATE.  See lzx_compress.c for a format
+ * overview, and see https://en.wikipedia.org/wiki/LZX_(algorithm) for a
+ * historical overview.  Here I make some pragmatic notes.
+ *
+ * The old specification for LZX is the document "Microsoft LZX Data Compression
+ * Format" (1997).  It defines the LZX format as used in cabinet files.  Allowed
+ * window sizes are 2^n where 15 <= n <= 21.  However, this document contains
+ * several errors, so don't read too much into it...
+ *
+ * The new specification for LZX is the document "[MS-PATCH]: LZX DELTA
+ * Compression and Decompression" (2014).  It defines the LZX format as used by
+ * Microsoft's binary patcher.	It corrects several errors in the 1997 document
+ * and extends the format in several ways --- namely, optional reference data,
+ * up to 2^25 byte windows, and longer match lengths.
+ *
+ * WIM files use a more restricted form of LZX.  No LZX DELTA extensions are
+ * present, the window is not "sliding", E8 preprocessing is done
+ * unconditionally with a fixed file size, and the maximum window size is always
+ * 2^15 bytes (equal to the size of each "chunk" in a compressed WIM resource).
+ * This code is primarily intended to implement this form of LZX.  But although
+ * not compatible with WIMGAPI, this code also supports maximum window sizes up
+ * to 2^21 bytes.
+ *
+ * TODO: Add support for window sizes up to 2^25 bytes.
+ */
+
+#include "decompress_common.h"
+#include "lzx_common.h"
+#include "lib.h"
+
+/* These values are chosen for fast decompression.  */
+#define LZX_MAINCODE_TABLEBITS		11
+#define LZX_LENCODE_TABLEBITS		9
+#define LZX_PRECODE_TABLEBITS		6
+#define LZX_ALIGNEDCODE_TABLEBITS	7
+
+#define LZX_READ_LENS_MAX_OVERRUN 50
+
+struct lzx_decompressor {
+
+	DECODE_TABLE(maincode_decode_table, LZX_MAINCODE_MAX_NUM_SYMBOLS,
+		     LZX_MAINCODE_TABLEBITS, LZX_MAX_MAIN_CODEWORD_LEN);
+	u8 maincode_lens[LZX_MAINCODE_MAX_NUM_SYMBOLS + LZX_READ_LENS_MAX_OVERRUN];
+
+	DECODE_TABLE(lencode_decode_table, LZX_LENCODE_NUM_SYMBOLS,
+		     LZX_LENCODE_TABLEBITS, LZX_MAX_LEN_CODEWORD_LEN);
+	u8 lencode_lens[LZX_LENCODE_NUM_SYMBOLS + LZX_READ_LENS_MAX_OVERRUN];
+
+	union {
+		DECODE_TABLE(alignedcode_decode_table, LZX_ALIGNEDCODE_NUM_SYMBOLS,
+			     LZX_ALIGNEDCODE_TABLEBITS, LZX_MAX_ALIGNED_CODEWORD_LEN);
+		u8 alignedcode_lens[LZX_ALIGNEDCODE_NUM_SYMBOLS];
+	};
+
+	union {
+		DECODE_TABLE(precode_decode_table, LZX_PRECODE_NUM_SYMBOLS,
+			     LZX_PRECODE_TABLEBITS, LZX_MAX_PRE_CODEWORD_LEN);
+		u8 precode_lens[LZX_PRECODE_NUM_SYMBOLS];
+		u8 extra_offset_bits[LZX_MAX_OFFSET_SLOTS];
+	};
+
+	union {
+		DECODE_TABLE_WORKING_SPACE(maincode_working_space,
+					   LZX_MAINCODE_MAX_NUM_SYMBOLS,
+					   LZX_MAX_MAIN_CODEWORD_LEN);
+		DECODE_TABLE_WORKING_SPACE(lencode_working_space,
+					   LZX_LENCODE_NUM_SYMBOLS,
+					   LZX_MAX_LEN_CODEWORD_LEN);
+		DECODE_TABLE_WORKING_SPACE(alignedcode_working_space,
+					   LZX_ALIGNEDCODE_NUM_SYMBOLS,
+					   LZX_MAX_ALIGNED_CODEWORD_LEN);
+		DECODE_TABLE_WORKING_SPACE(precode_working_space,
+					   LZX_PRECODE_NUM_SYMBOLS,
+					   LZX_MAX_PRE_CODEWORD_LEN);
+	};
+
+	u32 window_order;
+	u32 num_main_syms;
+
+	/* Like lzx_extra_offset_bits[], but does not include the entropy-coded
+	 * bits of aligned offset blocks
+	 */
+	u8 extra_offset_bits_minus_aligned[LZX_MAX_OFFSET_SLOTS];
+
+} _aligned_attribute(DECODE_TABLE_ALIGNMENT);
+
+/* Read a Huffman-encoded symbol using the precode. */
+static forceinline u32
+read_presym(const struct lzx_decompressor *d, struct input_bitstream *is)
+{
+	return read_huffsym(is, d->precode_decode_table,
+			    LZX_PRECODE_TABLEBITS, LZX_MAX_PRE_CODEWORD_LEN);
+}
+
+/* Read a Huffman-encoded symbol using the main code. */
+static forceinline u32
+read_mainsym(const struct lzx_decompressor *d, struct input_bitstream *is)
+{
+	return read_huffsym(is, d->maincode_decode_table,
+			    LZX_MAINCODE_TABLEBITS, LZX_MAX_MAIN_CODEWORD_LEN);
+}
+
+/* Read a Huffman-encoded symbol using the length code. */
+static forceinline u32
+read_lensym(const struct lzx_decompressor *d, struct input_bitstream *is)
+{
+	return read_huffsym(is, d->lencode_decode_table,
+			    LZX_LENCODE_TABLEBITS, LZX_MAX_LEN_CODEWORD_LEN);
+}
+
+/* Read a Huffman-encoded symbol using the aligned offset code. */
+static forceinline u32
+read_alignedsym(const struct lzx_decompressor *d, struct input_bitstream *is)
+{
+	return read_huffsym(is, d->alignedcode_decode_table,
+			    LZX_ALIGNEDCODE_TABLEBITS, LZX_MAX_ALIGNED_CODEWORD_LEN);
+}
+
+/*
+ * Read a precode from the compressed input bitstream, then use it to decode
+ * @num_lens codeword length values and write them to @lens.
+ */
+static int
+lzx_read_codeword_lens(struct lzx_decompressor *d, struct input_bitstream *is,
+		       u8 *lens, u32 num_lens)
+{
+	u8 *len_ptr = lens;
+	u8 *lens_end = lens + num_lens;
+	int i;
+
+	/* Read the lengths of the precode codewords.  These are stored
+	 * explicitly.
+	 */
+	for (i = 0; i < LZX_PRECODE_NUM_SYMBOLS; i++) {
+		d->precode_lens[i] =
+			bitstream_read_bits(is, LZX_PRECODE_ELEMENT_SIZE);
+	}
+
+	/* Build the decoding table for the precode. */
+	if (make_huffman_decode_table(d->precode_decode_table,
+				      LZX_PRECODE_NUM_SYMBOLS,
+				      LZX_PRECODE_TABLEBITS,
+				      d->precode_lens,
+				      LZX_MAX_PRE_CODEWORD_LEN,
+				      d->precode_working_space))
+		return -1;
+
+	/* Decode the codeword lengths.  */
+	do {
+		u32 presym;
+		u8 len;
+
+		/* Read the next precode symbol.  */
+		presym = read_presym(d, is);
+		if (presym < 17) {
+			/* Difference from old length  */
+			len = *len_ptr - presym;
+			if ((s8)len < 0)
+				len += 17;
+			*len_ptr++ = len;
+		} else {
+			/* Special RLE values  */
+
+			u32 run_len;
+
+			if (presym == 17) {
+				/* Run of 0's  */
+				run_len = 4 + bitstream_read_bits(is, 4);
+				len = 0;
+			} else if (presym == 18) {
+				/* Longer run of 0's  */
+				run_len = 20 + bitstream_read_bits(is, 5);
+				len = 0;
+			} else {
+				/* Run of identical lengths  */
+				run_len = 4 + bitstream_read_bits(is, 1);
+				presym = read_presym(d, is);
+				if (unlikely(presym > 17))
+					return -1;
+				len = *len_ptr - presym;
+				if ((s8)len < 0)
+					len += 17;
+			}
+
+			do {
+				*len_ptr++ = len;
+			} while (--run_len);
+			/*
+			 * The worst case overrun is when presym == 18,
+			 * run_len == 20 + 31, and only 1 length was remaining.
+			 * So LZX_READ_LENS_MAX_OVERRUN == 50.
+			 *
+			 * Overrun while reading the first half of maincode_lens
+			 * can corrupt the previous values in the second half.
+			 * This doesn't really matter because the resulting
+			 * lengths will still be in range, and data that
+			 * generates overruns is invalid anyway.
+			 */
+		}
+	} while (len_ptr < lens_end);
+
+	return 0;
+}
+
+/*
+ * Read the header of an LZX block.  For all block types, the block type and
+ * size is saved in *block_type_ret and *block_size_ret, respectively.	For
+ * compressed blocks, the codeword lengths are also saved.  For uncompressed
+ * blocks, the recent offsets queue is also updated.
+ */
+static int
+lzx_read_block_header(struct lzx_decompressor *d, struct input_bitstream *is,
+		      u32 recent_offsets[], int *block_type_ret,
+		      u32 *block_size_ret)
+{
+	int block_type;
+	u32 block_size;
+	int i;
+
+	bitstream_ensure_bits(is, 4);
+
+	/* Read the block type. */
+	block_type = bitstream_pop_bits(is, 3);
+
+	/* Read the block size. */
+	if (bitstream_pop_bits(is, 1)) {
+		block_size = LZX_DEFAULT_BLOCK_SIZE;
+	} else {
+		block_size = bitstream_read_bits(is, 16);
+		if (d->window_order >= 16) {
+			block_size <<= 8;
+			block_size |= bitstream_read_bits(is, 8);
+		}
+	}
+
+	switch (block_type) {
+
+	case LZX_BLOCKTYPE_ALIGNED:
+
+		/* Read the aligned offset codeword lengths. */
+
+		for (i = 0; i < LZX_ALIGNEDCODE_NUM_SYMBOLS; i++) {
+			d->alignedcode_lens[i] =
+				bitstream_read_bits(is,
+						    LZX_ALIGNEDCODE_ELEMENT_SIZE);
+		}
+
+		/* Fall though, since the rest of the header for aligned offset
+		 * blocks is the same as that for verbatim blocks.
+		 */
+		fallthrough;
+
+	case LZX_BLOCKTYPE_VERBATIM:
+
+		/* Read the main codeword lengths, which are divided into two
+		 * parts: literal symbols and match headers.
+		 */
+		if (lzx_read_codeword_lens(d, is, d->maincode_lens,
+					   LZX_NUM_CHARS))
+			return -1;
+
+		if (lzx_read_codeword_lens(d, is, d->maincode_lens + LZX_NUM_CHARS,
+					   d->num_main_syms - LZX_NUM_CHARS))
+			return -1;
+
+
+		/* Read the length codeword lengths. */
+
+		if (lzx_read_codeword_lens(d, is, d->lencode_lens,
+					   LZX_LENCODE_NUM_SYMBOLS))
+			return -1;
+
+		break;
+
+	case LZX_BLOCKTYPE_UNCOMPRESSED:
+		/*
+		 * The header of an uncompressed block contains new values for
+		 * the recent offsets queue, starting on the next 16-bit
+		 * boundary in the bitstream.  Careful: if the stream is
+		 * *already* aligned, the correct thing to do is to throw away
+		 * the next 16 bits (this is probably a mistake in the format).
+		 */
+		bitstream_ensure_bits(is, 1);
+		bitstream_align(is);
+		recent_offsets[0] = bitstream_read_u32(is);
+		recent_offsets[1] = bitstream_read_u32(is);
+		recent_offsets[2] = bitstream_read_u32(is);
+
+		/* Offsets of 0 are invalid.  */
+		if (recent_offsets[0] == 0 || recent_offsets[1] == 0 ||
+		    recent_offsets[2] == 0)
+			return -1;
+		break;
+
+	default:
+		/* Unrecognized block type.  */
+		return -1;
+	}
+
+	*block_type_ret = block_type;
+	*block_size_ret = block_size;
+	return 0;
+}
+
+/* Decompress a block of LZX-compressed data. */
+static int
+lzx_decompress_block(struct lzx_decompressor *d, struct input_bitstream *is,
+		     int block_type, u32 block_size,
+		     u8 * const out_begin, u8 *out_next, u32 recent_offsets[])
+{
+	u8 * const block_end = out_next + block_size;
+	u32 min_aligned_offset_slot;
+
+	/*
+	 * Build the Huffman decode tables.  We always need to build the main
+	 * and length decode tables.  For aligned blocks we additionally need to
+	 * build the aligned offset decode table.
+	 */
+
+	if (make_huffman_decode_table(d->maincode_decode_table,
+				      d->num_main_syms,
+				      LZX_MAINCODE_TABLEBITS,
+				      d->maincode_lens,
+				      LZX_MAX_MAIN_CODEWORD_LEN,
+				      d->maincode_working_space))
+		return -1;
+
+	if (make_huffman_decode_table(d->lencode_decode_table,
+				      LZX_LENCODE_NUM_SYMBOLS,
+				      LZX_LENCODE_TABLEBITS,
+				      d->lencode_lens,
+				      LZX_MAX_LEN_CODEWORD_LEN,
+				      d->lencode_working_space))
+		return -1;
+
+	if (block_type == LZX_BLOCKTYPE_ALIGNED) {
+		if (make_huffman_decode_table(d->alignedcode_decode_table,
+					      LZX_ALIGNEDCODE_NUM_SYMBOLS,
+					      LZX_ALIGNEDCODE_TABLEBITS,
+					      d->alignedcode_lens,
+					      LZX_MAX_ALIGNED_CODEWORD_LEN,
+					      d->alignedcode_working_space))
+			return -1;
+		min_aligned_offset_slot = LZX_MIN_ALIGNED_OFFSET_SLOT;
+		memcpy(d->extra_offset_bits, d->extra_offset_bits_minus_aligned,
+		       sizeof(lzx_extra_offset_bits));
+	} else {
+		min_aligned_offset_slot = LZX_MAX_OFFSET_SLOTS;
+		memcpy(d->extra_offset_bits, lzx_extra_offset_bits,
+		       sizeof(lzx_extra_offset_bits));
+	}
+
+	/* Decode the literals and matches. */
+
+	do {
+		u32 mainsym;
+		u32 length;
+		u32 offset;
+		u32 offset_slot;
+
+		mainsym = read_mainsym(d, is);
+		if (mainsym < LZX_NUM_CHARS) {
+			/* Literal */
+			*out_next++ = mainsym;
+			continue;
+		}
+
+		/* Match */
+
+		/* Decode the length header and offset slot.  */
+		STATIC_ASSERT(LZX_NUM_CHARS % LZX_NUM_LEN_HEADERS == 0);
+		length = mainsym % LZX_NUM_LEN_HEADERS;
+		offset_slot = (mainsym - LZX_NUM_CHARS) / LZX_NUM_LEN_HEADERS;
+
+		/* If needed, read a length symbol to decode the full length. */
+		if (length == LZX_NUM_PRIMARY_LENS)
+			length += read_lensym(d, is);
+		length += LZX_MIN_MATCH_LEN;
+
+		if (offset_slot < LZX_NUM_RECENT_OFFSETS) {
+			/* Repeat offset  */
+
+			/* Note: This isn't a real LRU queue, since using the R2
+			 * offset doesn't bump the R1 offset down to R2.
+			 */
+			offset = recent_offsets[offset_slot];
+			recent_offsets[offset_slot] = recent_offsets[0];
+		} else {
+			/* Explicit offset  */
+			offset = bitstream_read_bits(is, d->extra_offset_bits[offset_slot]);
+			if (offset_slot >= min_aligned_offset_slot) {
+				offset = (offset << LZX_NUM_ALIGNED_OFFSET_BITS) |
+					 read_alignedsym(d, is);
+			}
+			offset += lzx_offset_slot_base[offset_slot];
+
+			/* Update the match offset LRU queue.  */
+			STATIC_ASSERT(LZX_NUM_RECENT_OFFSETS == 3);
+			recent_offsets[2] = recent_offsets[1];
+			recent_offsets[1] = recent_offsets[0];
+		}
+		recent_offsets[0] = offset;
+
+		/* Validate the match and copy it to the current position.  */
+		if (unlikely(lz_copy(length, offset, out_begin,
+				     out_next, block_end, LZX_MIN_MATCH_LEN)))
+			return -1;
+		out_next += length;
+	} while (out_next != block_end);
+
+	return 0;
+}
+
+int
+lzx_decompress(struct lzx_decompressor *__restrict d,
+	       const void *__restrict compressed_data, size_t compressed_size,
+	       void *__restrict uncompressed_data, size_t uncompressed_size)
+{
+	u8 * const out_begin = uncompressed_data;
+	u8 *out_next = out_begin;
+	u8 * const out_end = out_begin + uncompressed_size;
+	struct input_bitstream is;
+	u32 recent_offsets[LZX_NUM_RECENT_OFFSETS] = {1, 1, 1};
+	u32 may_have_e8_byte = 0;
+
+	STATIC_ASSERT(LZX_NUM_RECENT_OFFSETS == 3);
+
+	init_input_bitstream(&is, compressed_data, compressed_size);
+
+	/* Codeword lengths begin as all 0's for delta encoding purposes. */
+	memset(d->maincode_lens, 0, d->num_main_syms);
+	memset(d->lencode_lens, 0, LZX_LENCODE_NUM_SYMBOLS);
+
+	/* Decompress blocks until we have all the uncompressed data. */
+
+	while (out_next != out_end) {
+		int block_type;
+		u32 block_size;
+
+		if (lzx_read_block_header(d, &is, recent_offsets,
+					  &block_type, &block_size))
+			return -1;
+
+		if (block_size < 1 || block_size > out_end - out_next)
+			return -1;
+
+		if (likely(block_type != LZX_BLOCKTYPE_UNCOMPRESSED)) {
+
+			/* Compressed block */
+			if (lzx_decompress_block(d, &is, block_type, block_size,
+						 out_begin, out_next,
+						 recent_offsets))
+				return -1;
+
+			/* If the first E8 byte was in this block, then it must
+			 * have been encoded as a literal using mainsym E8.
+			 */
+			may_have_e8_byte |= d->maincode_lens[0xE8];
+		} else {
+
+			/* Uncompressed block */
+			if (bitstream_read_bytes(&is, out_next, block_size))
+				return -1;
+
+			/* Re-align the bitstream if needed. */
+			if (block_size & 1)
+				bitstream_read_byte(&is);
+
+			/* There may have been an E8 byte in the block. */
+			may_have_e8_byte = 1;
+		}
+		out_next += block_size;
+	}
+
+	/* Postprocess the data unless it cannot possibly contain E8 bytes. */
+	if (may_have_e8_byte)
+		lzx_postprocess(uncompressed_data, uncompressed_size);
+
+	return 0;
+}
+
+struct lzx_decompressor *
+lzx_allocate_decompressor(size_t max_block_size)
+{
+	u32 window_order;
+	struct lzx_decompressor *d;
+	u32 offset_slot;
+
+	/*
+	 * ntfs uses lzx only as max_block_size == 0x8000
+	 * this value certainly will not fail
+	 * we can remove lzx_get_window_order + ilog2_ceil + bsrw
+	 */
+	WARN_ON(max_block_size != 0x8000);
+
+	window_order = lzx_get_window_order(max_block_size);
+	if (window_order == 0)
+		return ERR_PTR(-EINVAL);
+
+	d = aligned_malloc(sizeof(*d), DECODE_TABLE_ALIGNMENT);
+	if (!d)
+		return NULL;
+
+	d->window_order = window_order;
+	d->num_main_syms = lzx_get_num_main_syms(window_order);
+
+	/* Initialize 'd->extra_offset_bits_minus_aligned'. */
+	STATIC_ASSERT(sizeof(d->extra_offset_bits_minus_aligned) ==
+		      sizeof(lzx_extra_offset_bits));
+	STATIC_ASSERT(sizeof(d->extra_offset_bits) ==
+		      sizeof(lzx_extra_offset_bits));
+	memcpy(d->extra_offset_bits_minus_aligned, lzx_extra_offset_bits,
+	       sizeof(lzx_extra_offset_bits));
+	for (offset_slot = LZX_MIN_ALIGNED_OFFSET_SLOT;
+	     offset_slot < LZX_MAX_OFFSET_SLOTS; offset_slot++) {
+		d->extra_offset_bits_minus_aligned[offset_slot] -=
+				LZX_NUM_ALIGNED_OFFSET_BITS;
+	}
+
+	return d;
+}
+
+void
+lzx_free_decompressor(struct lzx_decompressor *d)
+{
+	aligned_free(d);
+}
diff --git a/fs/ntfs3/lib/xpress_constants.h b/fs/ntfs3/lib/xpress_constants.h
new file mode 100644
index 000000000000..1e9675a39dcc
--- /dev/null
+++ b/fs/ntfs3/lib/xpress_constants.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * xpress_constants.h
+ *
+ * Constants for the XPRESS compression format.
+ */
+
+#ifndef _XPRESS_CONSTANTS_H
+#define _XPRESS_CONSTANTS_H
+
+#define XPRESS_NUM_CHARS	256
+#define XPRESS_NUM_SYMBOLS	512
+#define XPRESS_MAX_CODEWORD_LEN	15
+
+#define XPRESS_END_OF_DATA	256
+
+#define XPRESS_MIN_OFFSET	1
+#define XPRESS_MAX_OFFSET	65535
+
+#define XPRESS_MIN_MATCH_LEN	3
+#define XPRESS_MAX_MATCH_LEN	65538
+
+#endif /* _XPRESS_CONSTANTS_H */
diff --git a/fs/ntfs3/lib/xpress_decompress.c b/fs/ntfs3/lib/xpress_decompress.c
new file mode 100644
index 000000000000..ab3f3c0b012f
--- /dev/null
+++ b/fs/ntfs3/lib/xpress_decompress.c
@@ -0,0 +1,166 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * xpress_decompress.c
+ *
+ * A decompressor for the XPRESS compression format (Huffman variant).
+ */
+
+/*
+ *
+ * Copyright (C) 2012-2016 Eric Biggers
+ *
+ * This program is free software: you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License as published by the Free Software
+ * Foundation, either version 2 of the License, or (at your option) any later
+ * version.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
+ * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
+ * details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+
+/*
+ * The XPRESS compression format is an LZ77 and Huffman-code based algorithm.
+ * That means it is fairly similar to LZX compression, but XPRESS is simpler, so
+ * it is a little faster to compress and decompress.
+ *
+ * The XPRESS compression format is mostly documented in a file called "[MS-XCA]
+ * Xpress Compression Algorithm".  In the MSDN library, it can currently be
+ * found under Open Specifications => Protocols => Windows Protocols => Windows
+ * Server Protocols => [MS-XCA] Xpress Compression Algorithm".  The format in
+ * WIMs is specifically the algorithm labeled as the "LZ77+Huffman Algorithm"
+ * (there apparently are some other versions of XPRESS as well).
+ *
+ * If you are already familiar with the LZ77 algorithm and Huffman coding, the
+ * XPRESS format is fairly simple.  The compressed data begins with 256 bytes
+ * that contain 512 4-bit integers that are the lengths of the symbols in the
+ * Huffman code used for match/literal headers.  In contrast with more
+ * complicated formats such as DEFLATE and LZX, this is the only Huffman code
+ * that is used for the entirety of the XPRESS compressed data, and the codeword
+ * lengths are not encoded with a pretree.
+ *
+ * The rest of the compressed data is Huffman-encoded symbols.	Values 0 through
+ * 255 represent the corresponding literal bytes.  Values 256 through 511
+ * represent matches and may require extra bits or bytes to be read to get the
+ * match offset and match length.
+ *
+ * The trickiest part is probably the way in which literal bytes for match
+ * lengths are interleaved in the bitstream.
+ *
+ * Also, a caveat--- according to Microsoft's documentation for XPRESS,
+ *
+ *	"Some implementation of the decompression algorithm expect an extra
+ *	symbol to mark the end of the data.  Specifically, some implementations
+ *	fail during decompression if the Huffman symbol 256 is not found after
+ *	the actual data."
+ *
+ * This is the case with Microsoft's implementation in WIMGAPI, for example.  So
+ * although our implementation doesn't currently check for this extra symbol,
+ * compressors would be wise to add it.
+ */
+
+#include "decompress_common.h"
+#include "xpress_constants.h"
+#include "lib.h"
+
+/* This value is chosen for fast decompression.  */
+#define XPRESS_TABLEBITS 11
+
+struct xpress_decompressor {
+	union {
+		DECODE_TABLE(decode_table, XPRESS_NUM_SYMBOLS,
+			     XPRESS_TABLEBITS, XPRESS_MAX_CODEWORD_LEN);
+		u8 lens[XPRESS_NUM_SYMBOLS];
+	};
+	DECODE_TABLE_WORKING_SPACE(working_space, XPRESS_NUM_SYMBOLS,
+				   XPRESS_MAX_CODEWORD_LEN);
+} _aligned_attribute(DECODE_TABLE_ALIGNMENT);
+
+int
+xpress_decompress(struct xpress_decompressor *__restrict d,
+		  const void *__restrict compressed_data, size_t compressed_size,
+		  void *__restrict uncompressed_data, size_t uncompressed_size)
+{
+	const u8 * const in_begin = compressed_data;
+	u8 * const out_begin = uncompressed_data;
+	u8 *out_next = out_begin;
+	u8 * const out_end = out_begin + uncompressed_size;
+	struct input_bitstream is;
+	int i;
+
+	/* Read the Huffman codeword lengths.  */
+	if (compressed_size < XPRESS_NUM_SYMBOLS / 2)
+		return -1;
+	for (i = 0; i < XPRESS_NUM_SYMBOLS / 2; i++) {
+		d->lens[2 * i + 0] = in_begin[i] & 0xf;
+		d->lens[2 * i + 1] = in_begin[i] >> 4;
+	}
+
+	/* Build a decoding table for the Huffman code.  */
+	if (make_huffman_decode_table(d->decode_table, XPRESS_NUM_SYMBOLS,
+				      XPRESS_TABLEBITS, d->lens,
+				      XPRESS_MAX_CODEWORD_LEN,
+				      d->working_space))
+		return -1;
+
+	/* Decode the matches and literals.  */
+
+	init_input_bitstream(&is, in_begin + XPRESS_NUM_SYMBOLS / 2,
+			     compressed_size - XPRESS_NUM_SYMBOLS / 2);
+
+	while (out_next != out_end) {
+		u32 sym;
+		u32 log2_offset;
+		u32 length;
+		u32 offset;
+
+		sym = read_huffsym(&is, d->decode_table,
+				   XPRESS_TABLEBITS, XPRESS_MAX_CODEWORD_LEN);
+		if (sym < XPRESS_NUM_CHARS) {
+			/* Literal  */
+			*out_next++ = sym;
+		} else {
+			/* Match  */
+			length = sym & 0xf;
+			log2_offset = (sym >> 4) & 0xf;
+
+			bitstream_ensure_bits(&is, 16);
+
+			offset = ((u32)1 << log2_offset) |
+				 bitstream_pop_bits(&is, log2_offset);
+
+			if (length == 0xf) {
+				length += bitstream_read_byte(&is);
+				if (length == 0xf + 0xff)
+					length = bitstream_read_u16(&is);
+			}
+			length += XPRESS_MIN_MATCH_LEN;
+
+			if (unlikely(lz_copy(length, offset,
+					     out_begin, out_next, out_end,
+					     XPRESS_MIN_MATCH_LEN)))
+				return -1;
+
+			out_next += length;
+		}
+	}
+	return 0;
+}
+
+struct xpress_decompressor *
+xpress_allocate_decompressor(void)
+{
+	return aligned_malloc(sizeof(struct xpress_decompressor),
+			      DECODE_TABLE_ALIGNMENT);
+}
+
+void
+xpress_free_decompressor(struct xpress_decompressor *d)
+{
+	aligned_free(d);
+}
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
