Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1960E30751E
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 28 Jan 2021 12:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=17x4+HnudGU3O200529fB8YNNMHT3+P1y+BpyZSsiYI=; b=P1HP5lbSFM2b3+N52SROICBgE
	Qroj4Vgku9Fb7lTCPCbAhk4L/m7BmaAvzfEHHFho52wDO/H3RmYUKJvcV+h/tGeNuqx0SqcTJwFWR
	JR61SvKtm7r/0ubuTBfBMckWLr4FEQohwfe4zt1F18JY99bga+6XWzWgyhLDwisJJ51GI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l55oM-00030v-90; Thu, 28 Jan 2021 11:50:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1l53Ex-0007Rh-3X
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 28 Jan 2021 09:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5MrskzEWYdIQwUYeFlQxfNZPXnrbm3pUehgrJmesp60=; b=dtkUWD9+ODWNE0apgV9V+bxgXk
 puaqjvRpeFLedz9dNrXVRtCYLDCJedz7oYSRWHIlGvivzaLIxupnl614exJ61zMKvI8CdHkQBYMTM
 ljSe4OKxv1iGKTHjZ1gVB89g7zwjoiVdae02KbgNJcEMis1r6gPhtmpACJc1brwM4ibk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5MrskzEWYdIQwUYeFlQxfNZPXnrbm3pUehgrJmesp60=; b=gaUJxg2hItdKORSw0q5657S+qN
 eKm+KFt1fHbYCz1RAsesI1lJ2BtQM7ldViyMaRBhINsRzFJ19d9MZSGdfpQgCVfmgW12qrewZC2xF
 a1yd+Qy6AiUWFhm9UUyx46fS90Grpk6RCbry2ZBfulQxTQUJ/mjoHaVsabQ8a/eug3cg=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l53Em-00E3jw-RD
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 28 Jan 2021 09:05:23 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 5F00D1F86;
 Thu, 28 Jan 2021 12:05:04 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1611824704;
 bh=5MrskzEWYdIQwUYeFlQxfNZPXnrbm3pUehgrJmesp60=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=AGRMQqHucj3mCSB+HqLRrXGT36SNErR2OjzN3UvOh2Dyg9LPoqIhFUUldg9oC/6SU
 ZV+5B3qe05uPZpCFuU1EZMRs9TnIDAEEMDySMwOm5SZ608THSm6ljkTMYgnN70KDi7
 quKZsWMbTteMC/ZSIFZuiG/e/xbzk3NJseQ/8DsA=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Thu, 28 Jan 2021 12:05:03 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Thu, 28 Jan 2021 12:04:51 +0300
Message-ID: <20210128090455.3576502-7-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128090455.3576502-1-almaz.alexandrovich@paragon-software.com>
References: <20210128090455.3576502-1-almaz.alexandrovich@paragon-software.com>
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
X-Headers-End: 1l53Em-00E3jw-RD
X-Mailman-Approved-At: Thu, 28 Jan 2021 11:50:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH v19 06/10] fs/ntfs3: Add compression
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
 fs/ntfs3/lib/decompress_common.c | 332 +++++++++++++++
 fs/ntfs3/lib/decompress_common.h | 352 ++++++++++++++++
 fs/ntfs3/lib/lib.h               |  26 ++
 fs/ntfs3/lib/lzx_decompress.c    | 683 +++++++++++++++++++++++++++++++
 fs/ntfs3/lib/xpress_decompress.c | 155 +++++++
 fs/ntfs3/lznt.c                  | 452 ++++++++++++++++++++
 6 files changed, 2000 insertions(+)
 create mode 100644 fs/ntfs3/lib/decompress_common.c
 create mode 100644 fs/ntfs3/lib/decompress_common.h
 create mode 100644 fs/ntfs3/lib/lib.h
 create mode 100644 fs/ntfs3/lib/lzx_decompress.c
 create mode 100644 fs/ntfs3/lib/xpress_decompress.c
 create mode 100644 fs/ntfs3/lznt.c

diff --git a/fs/ntfs3/lib/decompress_common.c b/fs/ntfs3/lib/decompress_common.c
new file mode 100644
index 000000000000..83c9e93aea77
--- /dev/null
+++ b/fs/ntfs3/lib/decompress_common.c
@@ -0,0 +1,332 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * decompress_common.c - Code shared by the XPRESS and LZX decompressors
+ *
+ * Copyright (C) 2015 Eric Biggers
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
+#include "decompress_common.h"
+
+/*
+ * make_huffman_decode_table() -
+ *
+ * Build a decoding table for a canonical prefix code, or "Huffman code".
+ *
+ * This is an internal function, not part of the library API!
+ *
+ * This takes as input the length of the codeword for each symbol in the
+ * alphabet and produces as output a table that can be used for fast
+ * decoding of prefix-encoded symbols using read_huffsym().
+ *
+ * Strictly speaking, a canonical prefix code might not be a Huffman
+ * code.  But this algorithm will work either way; and in fact, since
+ * Huffman codes are defined in terms of symbol frequencies, there is no
+ * way for the decompressor to know whether the code is a true Huffman
+ * code or not until all symbols have been decoded.
+ *
+ * Because the prefix code is assumed to be "canonical", it can be
+ * reconstructed directly from the codeword lengths.  A prefix code is
+ * canonical if and only if a longer codeword never lexicographically
+ * precedes a shorter codeword, and the lexicographic ordering of
+ * codewords of the same length is the same as the lexicographic ordering
+ * of the corresponding symbols.  Consequently, we can sort the symbols
+ * primarily by codeword length and secondarily by symbol value, then
+ * reconstruct the prefix code by generating codewords lexicographically
+ * in that order.
+ *
+ * This function does not, however, generate the prefix code explicitly.
+ * Instead, it directly builds a table for decoding symbols using the
+ * code.  The basic idea is this: given the next 'max_codeword_len' bits
+ * in the input, we can look up the decoded symbol by indexing a table
+ * containing 2**max_codeword_len entries.  A codeword with length
+ * 'max_codeword_len' will have exactly one entry in this table, whereas
+ * a codeword shorter than 'max_codeword_len' will have multiple entries
+ * in this table.  Precisely, a codeword of length n will be represented
+ * by 2**(max_codeword_len - n) entries in this table.  The 0-based index
+ * of each such entry will contain the corresponding codeword as a prefix
+ * when zero-padded on the left to 'max_codeword_len' binary digits.
+ *
+ * That's the basic idea, but we implement two optimizations regarding
+ * the format of the decode table itself:
+ *
+ * - For many compression formats, the maximum codeword length is too
+ *   long for it to be efficient to build the full decoding table
+ *   whenever a new prefix code is used.  Instead, we can build the table
+ *   using only 2**table_bits entries, where 'table_bits' is some number
+ *   less than or equal to 'max_codeword_len'.  Then, only codewords of
+ *   length 'table_bits' and shorter can be directly looked up.  For
+ *   longer codewords, the direct lookup instead produces the root of a
+ *   binary tree.  Using this tree, the decoder can do traditional
+ *   bit-by-bit decoding of the remainder of the codeword.  Child nodes
+ *   are allocated in extra entries at the end of the table; leaf nodes
+ *   contain symbols.  Note that the long-codeword case is, in general,
+ *   not performance critical, since in Huffman codes the most frequently
+ *   used symbols are assigned the shortest codeword lengths.
+ *
+ * - When we decode a symbol using a direct lookup of the table, we still
+ *   need to know its length so that the bitstream can be advanced by the
+ *   appropriate number of bits.  The simple solution is to simply retain
+ *   the 'lens' array and use the decoded symbol as an index into it.
+ *   However, this requires two separate array accesses in the fast path.
+ *   The optimization is to store the length directly in the decode
+ *   table.  We use the bottom 11 bits for the symbol and the top 5 bits
+ *   for the length.  In addition, to combine this optimization with the
+ *   previous one, we introduce a special case where the top 2 bits of
+ *   the length are both set if the entry is actually the root of a
+ *   binary tree.
+ *
+ * @decode_table:
+ *	The array in which to create the decoding table.  This must have
+ *	a length of at least ((2**table_bits) + 2 * num_syms) entries.
+ *
+ * @num_syms:
+ *	The number of symbols in the alphabet; also, the length of the
+ *	'lens' array.  Must be less than or equal to 2048.
+ *
+ * @table_bits:
+ *	The order of the decode table size, as explained above.  Must be
+ *	less than or equal to 13.
+ *
+ * @lens:
+ *	An array of length @num_syms, indexable by symbol, that gives the
+ *	length of the codeword, in bits, for that symbol.  The length can
+ *	be 0, which means that the symbol does not have a codeword
+ *	assigned.
+ *
+ * @max_codeword_len:
+ *	The longest codeword length allowed in the compression format.
+ *	All entries in 'lens' must be less than or equal to this value.
+ *	This must be less than or equal to 23.
+ *
+ * @working_space
+ *	A temporary array of length '2 * (max_codeword_len + 1) +
+ *	num_syms'.
+ *
+ * Returns 0 on success, or -1 if the lengths do not form a valid prefix
+ * code.
+ */
+int make_huffman_decode_table(u16 decode_table[], const u32 num_syms,
+			      const u32 table_bits, const u8 lens[],
+			      const u32 max_codeword_len,
+			      u16 working_space[])
+{
+	const u32 table_num_entries = 1 << table_bits;
+	u16 * const len_counts = &working_space[0];
+	u16 * const offsets = &working_space[1 * (max_codeword_len + 1)];
+	u16 * const sorted_syms = &working_space[2 * (max_codeword_len + 1)];
+	int left;
+	void *decode_table_ptr;
+	u32 sym_idx;
+	u32 codeword_len;
+	u32 stores_per_loop;
+	u32 decode_table_pos;
+	u32 len;
+	u32 sym;
+
+	/* Count how many symbols have each possible codeword length.
+	 * Note that a length of 0 indicates the corresponding symbol is not
+	 * used in the code and therefore does not have a codeword.
+	 */
+	for (len = 0; len <= max_codeword_len; len++)
+		len_counts[len] = 0;
+	for (sym = 0; sym < num_syms; sym++)
+		len_counts[lens[sym]]++;
+
+	/* We can assume all lengths are <= max_codeword_len, but we
+	 * cannot assume they form a valid prefix code.  A codeword of
+	 * length n should require a proportion of the codespace equaling
+	 * (1/2)^n.  The code is valid if and only if the codespace is
+	 * exactly filled by the lengths, by this measure.
+	 */
+	left = 1;
+	for (len = 1; len <= max_codeword_len; len++) {
+		left <<= 1;
+		left -= len_counts[len];
+		if (left < 0) {
+			/* The lengths overflow the codespace; that is, the code
+			 * is over-subscribed.
+			 */
+			return -1;
+		}
+	}
+
+	if (left) {
+		/* The lengths do not fill the codespace; that is, they form an
+		 * incomplete set.
+		 */
+		if (left == (1 << max_codeword_len)) {
+			/* The code is completely empty.  This is arguably
+			 * invalid, but in fact it is valid in LZX and XPRESS,
+			 * so we must allow it.  By definition, no symbols can
+			 * be decoded with an empty code.  Consequently, we
+			 * technically don't even need to fill in the decode
+			 * table.  However, to avoid accessing uninitialized
+			 * memory if the algorithm nevertheless attempts to
+			 * decode symbols using such a code, we zero out the
+			 * decode table.
+			 */
+			memset(decode_table, 0,
+			       table_num_entries * sizeof(decode_table[0]));
+			return 0;
+		}
+		return -1;
+	}
+
+	/* Sort the symbols primarily by length and secondarily by symbol order.
+	 */
+
+	/* Initialize 'offsets' so that offsets[len] for 1 <= len <=
+	 * max_codeword_len is the number of codewords shorter than 'len' bits.
+	 */
+	offsets[1] = 0;
+	for (len = 1; len < max_codeword_len; len++)
+		offsets[len + 1] = offsets[len] + len_counts[len];
+
+	/* Use the 'offsets' array to sort the symbols.  Note that we do not
+	 * include symbols that are not used in the code.  Consequently, fewer
+	 * than 'num_syms' entries in 'sorted_syms' may be filled.
+	 */
+	for (sym = 0; sym < num_syms; sym++)
+		if (lens[sym])
+			sorted_syms[offsets[lens[sym]]++] = sym;
+
+	/* Fill entries for codewords with length <= table_bits
+	 * --- that is, those short enough for a direct mapping.
+	 *
+	 * The table will start with entries for the shortest codeword(s), which
+	 * have the most entries.  From there, the number of entries per
+	 * codeword will decrease.
+	 */
+	decode_table_ptr = decode_table;
+	sym_idx = 0;
+	codeword_len = 1;
+	stores_per_loop = (1 << (table_bits - codeword_len));
+	for (; stores_per_loop != 0; codeword_len++, stores_per_loop >>= 1) {
+		u32 end_sym_idx = sym_idx + len_counts[codeword_len];
+
+		for (; sym_idx < end_sym_idx; sym_idx++) {
+			u16 entry;
+			u16 *p;
+			u32 n;
+
+			entry = ((u32)codeword_len << 11) | sorted_syms[sym_idx];
+			p = (u16 *)decode_table_ptr;
+			n = stores_per_loop;
+
+			do {
+				*p++ = entry;
+			} while (--n);
+
+			decode_table_ptr = p;
+		}
+	}
+
+	/* If we've filled in the entire table, we are done.  Otherwise,
+	 * there are codewords longer than table_bits for which we must
+	 * generate binary trees.
+	 */
+	decode_table_pos = (u16 *)decode_table_ptr - decode_table;
+	if (decode_table_pos != table_num_entries) {
+		u32 j;
+		u32 next_free_tree_slot;
+		u32 cur_codeword;
+
+		/* First, zero out the remaining entries.  This is
+		 * necessary so that these entries appear as
+		 * "unallocated" in the next part.  Each of these entries
+		 * will eventually be filled with the representation of
+		 * the root node of a binary tree.
+		 */
+		j = decode_table_pos;
+		do {
+			decode_table[j] = 0;
+		} while (++j != table_num_entries);
+
+		/* We allocate child nodes starting at the end of the
+		 * direct lookup table.  Note that there should be
+		 * 2*num_syms extra entries for this purpose, although
+		 * fewer than this may actually be needed.
+		 */
+		next_free_tree_slot = table_num_entries;
+
+		/* Iterate through each codeword with length greater than
+		 * 'table_bits', primarily in order of codeword length
+		 * and secondarily in order of symbol.
+		 */
+		for (cur_codeword = decode_table_pos << 1;
+		     codeword_len <= max_codeword_len;
+		     codeword_len++, cur_codeword <<= 1) {
+			u32 end_sym_idx = sym_idx + len_counts[codeword_len];
+
+			for (; sym_idx < end_sym_idx; sym_idx++, cur_codeword++) {
+				/* 'sorted_sym' is the symbol represented by the
+				 * codeword.
+				 */
+				u32 sorted_sym = sorted_syms[sym_idx];
+				u32 extra_bits = codeword_len - table_bits;
+				u32 node_idx = cur_codeword >> extra_bits;
+
+				/* Go through each bit of the current codeword
+				 * beyond the prefix of length @table_bits and
+				 * walk the appropriate binary tree, allocating
+				 * any slots that have not yet been allocated.
+				 *
+				 * Note that the 'pointer' entry to the binary
+				 * tree, which is stored in the direct lookup
+				 * portion of the table, is represented
+				 * identically to other internal (non-leaf)
+				 * nodes of the binary tree; it can be thought
+				 * of as simply the root of the tree.  The
+				 * representation of these internal nodes is
+				 * simply the index of the left child combined
+				 * with the special bits 0xC000 to distingush
+				 * the entry from direct mapping and leaf node
+				 * entries.
+				 */
+				do {
+					/* At least one bit remains in the
+					 * codeword, but the current node is an
+					 * unallocated leaf.  Change it to an
+					 * internal node.
+					 */
+					if (decode_table[node_idx] == 0) {
+						decode_table[node_idx] =
+							next_free_tree_slot | 0xC000;
+						decode_table[next_free_tree_slot++] = 0;
+						decode_table[next_free_tree_slot++] = 0;
+					}
+
+					/* Go to the left child if the next bit
+					 * in the codeword is 0; otherwise go to
+					 * the right child.
+					 */
+					node_idx = decode_table[node_idx] & 0x3FFF;
+					--extra_bits;
+					node_idx += (cur_codeword >> extra_bits) & 1;
+				} while (extra_bits != 0);
+
+				/* We've traversed the tree using the entire
+				 * codeword, and we're now at the entry where
+				 * the actual symbol will be stored.  This is
+				 * distinguished from internal nodes by not
+				 * having its high two bits set.
+				 */
+				decode_table[node_idx] = sorted_sym;
+			}
+		}
+	}
+	return 0;
+}
diff --git a/fs/ntfs3/lib/decompress_common.h b/fs/ntfs3/lib/decompress_common.h
new file mode 100644
index 000000000000..66297f398403
--- /dev/null
+++ b/fs/ntfs3/lib/decompress_common.h
@@ -0,0 +1,352 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+/*
+ * decompress_common.h - Code shared by the XPRESS and LZX decompressors
+ *
+ * Copyright (C) 2015 Eric Biggers
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
+#include <linux/string.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <linux/slab.h>
+#include <asm/unaligned.h>
+
+
+/* "Force inline" macro (not required, but helpful for performance)  */
+#define forceinline __always_inline
+
+/* Enable whole-word match copying on selected architectures  */
+#if defined(__i386__) || defined(__x86_64__) || defined(__ARM_FEATURE_UNALIGNED)
+#  define FAST_UNALIGNED_ACCESS
+#endif
+
+/* Size of a machine word  */
+#define WORDBYTES (sizeof(size_t))
+
+static forceinline void
+copy_unaligned_word(const void *src, void *dst)
+{
+	put_unaligned(get_unaligned((const size_t *)src), (size_t *)dst);
+}
+
+
+/* Generate a "word" with platform-dependent size whose bytes all contain the
+ * value 'b'.
+ */
+static forceinline size_t repeat_byte(u8 b)
+{
+	size_t v;
+
+	v = b;
+	v |= v << 8;
+	v |= v << 16;
+	v |= v << ((WORDBYTES == 8) ? 32 : 0);
+	return v;
+}
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
+	/* Pointer to just past the end of the input buffer.  */
+	const u8 *end;
+};
+
+/* Initialize a bitstream to read from the specified input buffer.  */
+static forceinline void init_input_bitstream(struct input_bitstream *is,
+					     const void *buffer, u32 size)
+{
+	is->bitbuf = 0;
+	is->bitsleft = 0;
+	is->next = buffer;
+	is->end = is->next + size;
+}
+
+/* Ensure the bit buffer variable for the bitstream contains at least @num_bits
+ * bits.  Following this, bitstream_peek_bits() and/or bitstream_remove_bits()
+ * may be called on the bitstream to peek or remove up to @num_bits bits.  Note
+ * that @num_bits must be <= 16.
+ */
+static forceinline void bitstream_ensure_bits(struct input_bitstream *is,
+					      u32 num_bits)
+{
+	if (is->bitsleft < num_bits) {
+		if (is->end - is->next >= 2) {
+			is->bitbuf |= (u32)get_unaligned_le16(is->next)
+					<< (16 - is->bitsleft);
+			is->next += 2;
+		}
+		is->bitsleft += 16;
+	}
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
+ * Return either a pointer to the byte past the last written, or NULL if the
+ * read overflows the input buffer.
+ */
+static forceinline void *bitstream_read_bytes(struct input_bitstream *is,
+					      void *dst_buffer, size_t count)
+{
+	if ((size_t)(is->end - is->next) < count)
+		return NULL;
+	memcpy(dst_buffer, is->next, count);
+	is->next += count;
+	return (u8 *)dst_buffer + count;
+}
+
+/* Align the input bitstream on a coding-unit boundary.  */
+static forceinline void bitstream_align(struct input_bitstream *is)
+{
+	is->bitsleft = 0;
+	is->bitbuf = 0;
+}
+
+extern int make_huffman_decode_table(u16 decode_table[], const u32 num_syms,
+				     const u32 num_bits, const u8 lens[],
+				     const u32 max_codeword_len,
+				     u16 working_space[]);
+
+
+/* Reads and returns the next Huffman-encoded symbol from a bitstream.  If the
+ * input data is exhausted, the Huffman symbol is decoded as if the missing bits
+ * are all zeroes.
+ */
+static forceinline u32 read_huffsym(struct input_bitstream *istream,
+					 const u16 decode_table[],
+					 u32 table_bits,
+					 u32 max_codeword_len)
+{
+	u32 entry;
+	u32 key_bits;
+
+	bitstream_ensure_bits(istream, max_codeword_len);
+
+	/* Index the decode table by the next table_bits bits of the input.  */
+	key_bits = bitstream_peek_bits(istream, table_bits);
+	entry = decode_table[key_bits];
+	if (entry < 0xC000) {
+		/* Fast case: The decode table directly provided the
+		 * symbol and codeword length.  The low 11 bits are the
+		 * symbol, and the high 5 bits are the codeword length.
+		 */
+		bitstream_remove_bits(istream, entry >> 11);
+		return entry & 0x7FF;
+	}
+	/* Slow case: The codeword for the symbol is longer than
+	 * table_bits, so the symbol does not have an entry
+	 * directly in the first (1 << table_bits) entries of the
+	 * decode table.  Traverse the appropriate binary tree
+	 * bit-by-bit to decode the symbol.
+	 */
+	bitstream_remove_bits(istream, table_bits);
+	do {
+		key_bits = (entry & 0x3FFF) + bitstream_pop_bits(istream, 1);
+	} while ((entry = decode_table[key_bits]) >= 0xC000);
+	return entry;
+}
+
+/*
+ * Copy an LZ77 match at (dst - offset) to dst.
+ *
+ * The length and offset must be already validated --- that is, (dst - offset)
+ * can't underrun the output buffer, and (dst + length) can't overrun the output
+ * buffer.  Also, the length cannot be 0.
+ *
+ * @bufend points to the byte past the end of the output buffer.  This function
+ * won't write any data beyond this position.
+ *
+ * Returns dst + length.
+ */
+static forceinline u8 *lz_copy(u8 *dst, u32 length, u32 offset, const u8 *bufend,
+			       u32 min_length)
+{
+	const u8 *src = dst - offset;
+
+	/*
+	 * Try to copy one machine word at a time.  On i386 and x86_64 this is
+	 * faster than copying one byte at a time, unless the data is
+	 * near-random and all the matches have very short lengths.  Note that
+	 * since this requires unaligned memory accesses, it won't necessarily
+	 * be faster on every architecture.
+	 *
+	 * Also note that we might copy more than the length of the match.  For
+	 * example, if a word is 8 bytes and the match is of length 5, then
+	 * we'll simply copy 8 bytes.  This is okay as long as we don't write
+	 * beyond the end of the output buffer, hence the check for (bufend -
+	 * end >= WORDBYTES - 1).
+	 */
+#ifdef FAST_UNALIGNED_ACCESS
+	u8 * const end = dst + length;
+
+	if (bufend - end >= (ptrdiff_t)(WORDBYTES - 1)) {
+
+		if (offset >= WORDBYTES) {
+			/* The source and destination words don't overlap.  */
+
+			/* To improve branch prediction, one iteration of this
+			 * loop is unrolled.  Most matches are short and will
+			 * fail the first check.  But if that check passes, then
+			 * it becomes increasing likely that the match is long
+			 * and we'll need to continue copying.
+			 */
+
+			copy_unaligned_word(src, dst);
+			src += WORDBYTES;
+			dst += WORDBYTES;
+
+			if (dst < end) {
+				do {
+					copy_unaligned_word(src, dst);
+					src += WORDBYTES;
+					dst += WORDBYTES;
+				} while (dst < end);
+			}
+			return end;
+		} else if (offset == 1) {
+
+			/* Offset 1 matches are equivalent to run-length
+			 * encoding of the previous byte.  This case is common
+			 * if the data contains many repeated bytes.
+			 */
+			size_t v = repeat_byte(*(dst - 1));
+
+			do {
+				put_unaligned(v, (size_t *)dst);
+				src += WORDBYTES;
+				dst += WORDBYTES;
+			} while (dst < end);
+			return end;
+		}
+		/*
+		 * We don't bother with special cases for other 'offset <
+		 * WORDBYTES', which are usually rarer than 'offset == 1'.  Extra
+		 * checks will just slow things down.  Actually, it's possible
+		 * to handle all the 'offset < WORDBYTES' cases using the same
+		 * code, but it still becomes more complicated doesn't seem any
+		 * faster overall; it definitely slows down the more common
+		 * 'offset == 1' case.
+		 */
+	}
+#endif /* FAST_UNALIGNED_ACCESS */
+
+	/* Fall back to a bytewise copy.  */
+
+	if (min_length >= 2) {
+		*dst++ = *src++;
+		length--;
+	}
+	if (min_length >= 3) {
+		*dst++ = *src++;
+		length--;
+	}
+	do {
+		*dst++ = *src++;
+	} while (--length);
+
+	return dst;
+}
diff --git a/fs/ntfs3/lib/lib.h b/fs/ntfs3/lib/lib.h
new file mode 100644
index 000000000000..f508fbad2e71
--- /dev/null
+++ b/fs/ntfs3/lib/lib.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Adapted for linux kernel by Alexander Mamaev:
+ * - remove implementations of get_unaligned_
+ * - assume GCC is always defined
+ * - ISO C90
+ * - linux kernel code style
+ */
+
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
+struct lzx_decompressor *lzx_allocate_decompressor(void);
+void lzx_free_decompressor(struct lzx_decompressor *d);
+int lzx_decompress(struct lzx_decompressor *__restrict d,
+		   const void *__restrict compressed_data,
+		   size_t compressed_size, void *__restrict uncompressed_data,
+		   size_t uncompressed_size);
diff --git a/fs/ntfs3/lib/lzx_decompress.c b/fs/ntfs3/lib/lzx_decompress.c
new file mode 100644
index 000000000000..77a381a693d1
--- /dev/null
+++ b/fs/ntfs3/lib/lzx_decompress.c
@@ -0,0 +1,683 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * lzx_decompress.c - A decompressor for the LZX compression format, which can
+ * be used in "System Compressed" files.  This is based on the code from wimlib.
+ * This code only supports a window size (dictionary size) of 32768 bytes, since
+ * this is the only size used in System Compression.
+ *
+ * Copyright (C) 2015 Eric Biggers
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
+#include "decompress_common.h"
+#include "lib.h"
+
+/* Number of literal byte values  */
+#define LZX_NUM_CHARS			256
+
+/* The smallest and largest allowed match lengths  */
+#define LZX_MIN_MATCH_LEN		2
+#define LZX_MAX_MATCH_LEN		257
+
+/* Number of distinct match lengths that can be represented  */
+#define LZX_NUM_LENS			(LZX_MAX_MATCH_LEN - LZX_MIN_MATCH_LEN + 1)
+
+/* Number of match lengths for which no length symbol is required  */
+#define LZX_NUM_PRIMARY_LENS		7
+#define LZX_NUM_LEN_HEADERS		(LZX_NUM_PRIMARY_LENS + 1)
+
+/* Valid values of the 3-bit block type field  */
+#define LZX_BLOCKTYPE_VERBATIM		1
+#define LZX_BLOCKTYPE_ALIGNED		2
+#define LZX_BLOCKTYPE_UNCOMPRESSED	3
+
+/* Number of offset slots for a window size of 32768  */
+#define LZX_NUM_OFFSET_SLOTS		30
+
+/* Number of symbols in the main code for a window size of 32768  */
+#define LZX_MAINCODE_NUM_SYMBOLS	\
+	(LZX_NUM_CHARS + (LZX_NUM_OFFSET_SLOTS * LZX_NUM_LEN_HEADERS))
+
+/* Number of symbols in the length code  */
+#define LZX_LENCODE_NUM_SYMBOLS		(LZX_NUM_LENS - LZX_NUM_PRIMARY_LENS)
+
+/* Number of symbols in the precode  */
+#define LZX_PRECODE_NUM_SYMBOLS		20
+
+/* Number of bits in which each precode codeword length is represented  */
+#define LZX_PRECODE_ELEMENT_SIZE	4
+
+/* Number of low-order bits of each match offset that are entropy-encoded in
+ * aligned offset blocks
+ */
+#define LZX_NUM_ALIGNED_OFFSET_BITS	3
+
+/* Number of symbols in the aligned offset code  */
+#define LZX_ALIGNEDCODE_NUM_SYMBOLS	(1 << LZX_NUM_ALIGNED_OFFSET_BITS)
+
+/* Mask for the match offset bits that are entropy-encoded in aligned offset
+ * blocks
+ */
+#define LZX_ALIGNED_OFFSET_BITMASK	((1 << LZX_NUM_ALIGNED_OFFSET_BITS) - 1)
+
+/* Number of bits in which each aligned offset codeword length is represented  */
+#define LZX_ALIGNEDCODE_ELEMENT_SIZE	3
+
+/* Maximum lengths (in bits) of the codewords in each Huffman code  */
+#define LZX_MAX_MAIN_CODEWORD_LEN	16
+#define LZX_MAX_LEN_CODEWORD_LEN	16
+#define LZX_MAX_PRE_CODEWORD_LEN	((1 << LZX_PRECODE_ELEMENT_SIZE) - 1)
+#define LZX_MAX_ALIGNED_CODEWORD_LEN	((1 << LZX_ALIGNEDCODE_ELEMENT_SIZE) - 1)
+
+/* The default "filesize" value used in pre/post-processing.  In the LZX format
+ * used in cabinet files this value must be given to the decompressor, whereas
+ * in the LZX format used in WIM files and system-compressed files this value is
+ * fixed at 12000000.
+ */
+#define LZX_DEFAULT_FILESIZE		12000000
+
+/* Assumed block size when the encoded block size begins with a 0 bit.  */
+#define LZX_DEFAULT_BLOCK_SIZE		32768
+
+/* Number of offsets in the recent (or "repeat") offsets queue.  */
+#define LZX_NUM_RECENT_OFFSETS		3
+
+/* These values are chosen for fast decompression.  */
+#define LZX_MAINCODE_TABLEBITS		11
+#define LZX_LENCODE_TABLEBITS		10
+#define LZX_PRECODE_TABLEBITS		6
+#define LZX_ALIGNEDCODE_TABLEBITS	7
+
+#define LZX_READ_LENS_MAX_OVERRUN	50
+
+/* Mapping: offset slot => first match offset that uses that offset slot.
+ */
+static const u32 lzx_offset_slot_base[LZX_NUM_OFFSET_SLOTS + 1] = {
+	0,	1,	2,	3,	4,	/* 0  --- 4  */
+	6,	8,	12,	16,	24,	/* 5  --- 9  */
+	32,	48,	64,	96,	128,	/* 10 --- 14 */
+	192,	256,	384,	512,	768,	/* 15 --- 19 */
+	1024,	1536,	2048,	3072,	4096,   /* 20 --- 24 */
+	6144,	8192,	12288,	16384,	24576,	/* 25 --- 29 */
+	32768,					/* extra     */
+};
+
+/* Mapping: offset slot => how many extra bits must be read and added to the
+ * corresponding offset slot base to decode the match offset.
+ */
+static const u8 lzx_extra_offset_bits[LZX_NUM_OFFSET_SLOTS] = {
+	0,	0,	0,	0,	1,
+	1,	2,	2,	3,	3,
+	4,	4,	5,	5,	6,
+	6,	7,	7,	8,	8,
+	9,	9,	10,	10,	11,
+	11,	12,	12,	13,	13,
+};
+
+/* Reusable heap-allocated memory for LZX decompression  */
+struct lzx_decompressor {
+
+	/* Huffman decoding tables, and arrays that map symbols to codeword
+	 * lengths
+	 */
+
+	u16 maincode_decode_table[(1 << LZX_MAINCODE_TABLEBITS) +
+					(LZX_MAINCODE_NUM_SYMBOLS * 2)];
+	u8 maincode_lens[LZX_MAINCODE_NUM_SYMBOLS + LZX_READ_LENS_MAX_OVERRUN];
+
+
+	u16 lencode_decode_table[(1 << LZX_LENCODE_TABLEBITS) +
+					(LZX_LENCODE_NUM_SYMBOLS * 2)];
+	u8 lencode_lens[LZX_LENCODE_NUM_SYMBOLS + LZX_READ_LENS_MAX_OVERRUN];
+
+
+	u16 alignedcode_decode_table[(1 << LZX_ALIGNEDCODE_TABLEBITS) +
+					(LZX_ALIGNEDCODE_NUM_SYMBOLS * 2)];
+	u8 alignedcode_lens[LZX_ALIGNEDCODE_NUM_SYMBOLS];
+
+	u16 precode_decode_table[(1 << LZX_PRECODE_TABLEBITS) +
+				 (LZX_PRECODE_NUM_SYMBOLS * 2)];
+	u8 precode_lens[LZX_PRECODE_NUM_SYMBOLS];
+
+	/* Temporary space for make_huffman_decode_table()  */
+	u16 working_space[2 * (1 + LZX_MAX_MAIN_CODEWORD_LEN) +
+			  LZX_MAINCODE_NUM_SYMBOLS];
+};
+
+static void undo_e8_translation(void *target, s32 input_pos)
+{
+	s32 abs_offset, rel_offset;
+
+	abs_offset = get_unaligned_le32(target);
+	if (abs_offset >= 0) {
+		if (abs_offset < LZX_DEFAULT_FILESIZE) {
+			/* "good translation" */
+			rel_offset = abs_offset - input_pos;
+			put_unaligned_le32(rel_offset, target);
+		}
+	} else {
+		if (abs_offset >= -input_pos) {
+			/* "compensating translation" */
+			rel_offset = abs_offset + LZX_DEFAULT_FILESIZE;
+			put_unaligned_le32(rel_offset, target);
+		}
+	}
+}
+
+/*
+ * Undo the 'E8' preprocessing used in LZX.  Before compression, the
+ * uncompressed data was preprocessed by changing the targets of suspected x86
+ * CALL instructions from relative offsets to absolute offsets.  After
+ * match/literal decoding, the decompressor must undo the translation.
+ */
+static void lzx_postprocess(u8 *data, u32 size)
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
+		undo_e8_translation(p + 1, p - data);
+		p += 5;
+	}
+	memcpy(tail, saved_bytes, 6);
+}
+
+/* Read a Huffman-encoded symbol using the precode.  */
+static forceinline u32 read_presym(const struct lzx_decompressor *d,
+					struct input_bitstream *is)
+{
+	return read_huffsym(is, d->precode_decode_table,
+			    LZX_PRECODE_TABLEBITS, LZX_MAX_PRE_CODEWORD_LEN);
+}
+
+/* Read a Huffman-encoded symbol using the main code.  */
+static forceinline u32 read_mainsym(const struct lzx_decompressor *d,
+					 struct input_bitstream *is)
+{
+	return read_huffsym(is, d->maincode_decode_table,
+			    LZX_MAINCODE_TABLEBITS, LZX_MAX_MAIN_CODEWORD_LEN);
+}
+
+/* Read a Huffman-encoded symbol using the length code.  */
+static forceinline u32 read_lensym(const struct lzx_decompressor *d,
+					struct input_bitstream *is)
+{
+	return read_huffsym(is, d->lencode_decode_table,
+			    LZX_LENCODE_TABLEBITS, LZX_MAX_LEN_CODEWORD_LEN);
+}
+
+/* Read a Huffman-encoded symbol using the aligned offset code.  */
+static forceinline u32 read_alignedsym(const struct lzx_decompressor *d,
+					    struct input_bitstream *is)
+{
+	return read_huffsym(is, d->alignedcode_decode_table,
+			    LZX_ALIGNEDCODE_TABLEBITS,
+			    LZX_MAX_ALIGNED_CODEWORD_LEN);
+}
+
+/*
+ * Read the precode from the compressed input bitstream, then use it to decode
+ * @num_lens codeword length values.
+ *
+ * @is:		The input bitstream.
+ *
+ * @lens:	An array that contains the length values from the previous time
+ *		the codeword lengths for this Huffman code were read, or all 0's
+ *		if this is the first time.  This array must have at least
+ *		(@num_lens + LZX_READ_LENS_MAX_OVERRUN) entries.
+ *
+ * @num_lens:	Number of length values to decode.
+ *
+ * Returns 0 on success, or -1 if the data was invalid.
+ */
+static int lzx_read_codeword_lens(struct lzx_decompressor *d,
+				  struct input_bitstream *is,
+				  u8 *lens, u32 num_lens)
+{
+	u8 *len_ptr = lens;
+	u8 *lens_end = lens + num_lens;
+	int i;
+
+	/* Read the lengths of the precode codewords.  These are given
+	 * explicitly.
+	 */
+	for (i = 0; i < LZX_PRECODE_NUM_SYMBOLS; i++) {
+		d->precode_lens[i] =
+			bitstream_read_bits(is, LZX_PRECODE_ELEMENT_SIZE);
+	}
+
+	/* Make the decoding table for the precode.  */
+	if (make_huffman_decode_table(d->precode_decode_table,
+				      LZX_PRECODE_NUM_SYMBOLS,
+				      LZX_PRECODE_TABLEBITS,
+				      d->precode_lens,
+				      LZX_MAX_PRE_CODEWORD_LEN,
+				      d->working_space))
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
+				if (presym > 17)
+					return -1;
+				len = *len_ptr - presym;
+				if ((s8)len < 0)
+					len += 17;
+			}
+
+			do {
+				*len_ptr++ = len;
+			} while (--run_len);
+			/* Worst case overrun is when presym == 18,
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
+ * Read the header of an LZX block and save the block type and (uncompressed)
+ * size in *block_type_ret and *block_size_ret, respectively.
+ *
+ * If the block is compressed, also update the Huffman decode @tables with the
+ * new Huffman codes.  If the block is uncompressed, also update the match
+ * offset @queue with the new match offsets.
+ *
+ * Return 0 on success, or -1 if the data was invalid.
+ */
+static int lzx_read_block_header(struct lzx_decompressor *d,
+				 struct input_bitstream *is,
+				 int *block_type_ret,
+				 u32 *block_size_ret,
+				 u32 recent_offsets[])
+{
+	int block_type;
+	u32 block_size;
+	int i;
+
+	bitstream_ensure_bits(is, 4);
+
+	/* The first three bits tell us what kind of block it is, and should be
+	 * one of the LZX_BLOCKTYPE_* values.
+	 */
+	block_type = bitstream_pop_bits(is, 3);
+
+	/* Read the block size.  */
+	if (bitstream_pop_bits(is, 1)) {
+		block_size = LZX_DEFAULT_BLOCK_SIZE;
+	} else {
+		block_size = 0;
+		block_size |= bitstream_read_bits(is, 8);
+		block_size <<= 8;
+		block_size |= bitstream_read_bits(is, 8);
+	}
+
+	switch (block_type) {
+
+	case LZX_BLOCKTYPE_ALIGNED:
+
+		/* Read the aligned offset code and prepare its decode table.
+		 */
+
+		for (i = 0; i < LZX_ALIGNEDCODE_NUM_SYMBOLS; i++) {
+			d->alignedcode_lens[i] =
+				bitstream_read_bits(is,
+						    LZX_ALIGNEDCODE_ELEMENT_SIZE);
+		}
+
+		if (make_huffman_decode_table(d->alignedcode_decode_table,
+					      LZX_ALIGNEDCODE_NUM_SYMBOLS,
+					      LZX_ALIGNEDCODE_TABLEBITS,
+					      d->alignedcode_lens,
+					      LZX_MAX_ALIGNED_CODEWORD_LEN,
+					      d->working_space))
+			return -1;
+
+		/* Fall though, since the rest of the header for aligned offset
+		 * blocks is the same as that for verbatim blocks.
+		 */
+		fallthrough;
+
+	case LZX_BLOCKTYPE_VERBATIM:
+
+		/* Read the main code and prepare its decode table.
+		 *
+		 * Note that the codeword lengths in the main code are encoded
+		 * in two parts: one part for literal symbols, and one part for
+		 * match symbols.
+		 */
+
+		if (lzx_read_codeword_lens(d, is, d->maincode_lens,
+					   LZX_NUM_CHARS))
+			return -1;
+
+		if (lzx_read_codeword_lens(d, is,
+					   d->maincode_lens + LZX_NUM_CHARS,
+					   LZX_MAINCODE_NUM_SYMBOLS - LZX_NUM_CHARS))
+			return -1;
+
+		if (make_huffman_decode_table(d->maincode_decode_table,
+					      LZX_MAINCODE_NUM_SYMBOLS,
+					      LZX_MAINCODE_TABLEBITS,
+					      d->maincode_lens,
+					      LZX_MAX_MAIN_CODEWORD_LEN,
+					      d->working_space))
+			return -1;
+
+		/* Read the length code and prepare its decode table.  */
+
+		if (lzx_read_codeword_lens(d, is, d->lencode_lens,
+					   LZX_LENCODE_NUM_SYMBOLS))
+			return -1;
+
+		if (make_huffman_decode_table(d->lencode_decode_table,
+					      LZX_LENCODE_NUM_SYMBOLS,
+					      LZX_LENCODE_TABLEBITS,
+					      d->lencode_lens,
+					      LZX_MAX_LEN_CODEWORD_LEN,
+					      d->working_space))
+			return -1;
+
+		break;
+
+	case LZX_BLOCKTYPE_UNCOMPRESSED:
+
+		/* Before reading the three recent offsets from the uncompressed
+		 * block header, the stream must be aligned on a 16-bit
+		 * boundary.  But if the stream is *already* aligned, then the
+		 * next 16 bits must be discarded.
+		 */
+		bitstream_ensure_bits(is, 1);
+		bitstream_align(is);
+
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
+/* Decompress a block of LZX-compressed data.  */
+static int lzx_decompress_block(const struct lzx_decompressor *d,
+				struct input_bitstream *is,
+				int block_type, u32 block_size,
+				u8 * const out_begin, u8 *out_next,
+				u32 recent_offsets[])
+{
+	u8 * const block_end = out_next + block_size;
+	u32 ones_if_aligned = 0U - (block_type == LZX_BLOCKTYPE_ALIGNED);
+
+	do {
+		u32 mainsym;
+		u32 match_len;
+		u32 match_offset;
+		u32 offset_slot;
+		u32 num_extra_bits;
+
+		mainsym = read_mainsym(d, is);
+		if (mainsym < LZX_NUM_CHARS) {
+			/* Literal  */
+			*out_next++ = mainsym;
+			continue;
+		}
+
+		/* Match  */
+
+		/* Decode the length header and offset slot.  */
+		mainsym -= LZX_NUM_CHARS;
+		match_len = mainsym % LZX_NUM_LEN_HEADERS;
+		offset_slot = mainsym / LZX_NUM_LEN_HEADERS;
+
+		/* If needed, read a length symbol to decode the full length. */
+		if (match_len == LZX_NUM_PRIMARY_LENS)
+			match_len += read_lensym(d, is);
+		match_len += LZX_MIN_MATCH_LEN;
+
+		if (offset_slot < LZX_NUM_RECENT_OFFSETS) {
+			/* Repeat offset  */
+
+			/* Note: This isn't a real LRU queue, since using the R2
+			 * offset doesn't bump the R1 offset down to R2.  This
+			 * quirk allows all 3 recent offsets to be handled by
+			 * the same code.  (For R0, the swap is a no-op.)
+			 */
+			match_offset = recent_offsets[offset_slot];
+			recent_offsets[offset_slot] = recent_offsets[0];
+			recent_offsets[0] = match_offset;
+		} else {
+			/* Explicit offset  */
+
+			/* Look up the number of extra bits that need to be read
+			 * to decode offsets with this offset slot.
+			 */
+			num_extra_bits = lzx_extra_offset_bits[offset_slot];
+
+			/* Start with the offset slot base value.  */
+			match_offset = lzx_offset_slot_base[offset_slot];
+
+			/* In aligned offset blocks, the low-order 3 bits of
+			 * each offset are encoded using the aligned offset
+			 * code.  Otherwise, all the extra bits are literal.
+			 */
+
+			if ((num_extra_bits & ones_if_aligned) >= LZX_NUM_ALIGNED_OFFSET_BITS) {
+				match_offset +=
+					bitstream_read_bits(is, num_extra_bits -
+								LZX_NUM_ALIGNED_OFFSET_BITS)
+							<< LZX_NUM_ALIGNED_OFFSET_BITS;
+				match_offset += read_alignedsym(d, is);
+			} else {
+				match_offset += bitstream_read_bits(is, num_extra_bits);
+			}
+
+			/* Adjust the offset.  */
+			match_offset -= (LZX_NUM_RECENT_OFFSETS - 1);
+
+			/* Update the recent offsets.  */
+			recent_offsets[2] = recent_offsets[1];
+			recent_offsets[1] = recent_offsets[0];
+			recent_offsets[0] = match_offset;
+		}
+
+		/* Validate the match, then copy it to the current position.  */
+
+		if (match_len > (size_t)(block_end - out_next))
+			return -1;
+
+		if (match_offset > (size_t)(out_next - out_begin))
+			return -1;
+
+		out_next = lz_copy(out_next, match_len, match_offset,
+				   block_end, LZX_MIN_MATCH_LEN);
+
+	} while (out_next != block_end);
+
+	return 0;
+}
+
+/*
+ * lzx_allocate_decompressor - Allocate an LZX decompressor
+ *
+ * Return the pointer to the decompressor on success, or return NULL and set
+ * errno on failure.
+ */
+struct lzx_decompressor *lzx_allocate_decompressor(void)
+{
+	return kmalloc(sizeof(struct lzx_decompressor), GFP_NOFS);
+}
+
+/*
+ * lzx_decompress - Decompress a buffer of LZX-compressed data
+ *
+ * @decompressor:      A decompressor allocated with lzx_allocate_decompressor()
+ * @compressed_data:	The buffer of data to decompress
+ * @compressed_size:	Number of bytes of compressed data
+ * @uncompressed_data:	The buffer in which to store the decompressed data
+ * @uncompressed_size:	The number of bytes the data decompresses into
+ *
+ * Return 0 on success, or return -1 and set errno on failure.
+ */
+int lzx_decompress(struct lzx_decompressor *decompressor,
+		   const void *compressed_data, size_t compressed_size,
+		   void *uncompressed_data, size_t uncompressed_size)
+{
+	struct lzx_decompressor *d = decompressor;
+	u8 * const out_begin = uncompressed_data;
+	u8 *out_next = out_begin;
+	u8 * const out_end = out_begin + uncompressed_size;
+	struct input_bitstream is;
+	u32 recent_offsets[LZX_NUM_RECENT_OFFSETS] = {1, 1, 1};
+	int e8_status = 0;
+
+	init_input_bitstream(&is, compressed_data, compressed_size);
+
+	/* Codeword lengths begin as all 0's for delta encoding purposes.  */
+	memset(d->maincode_lens, 0, LZX_MAINCODE_NUM_SYMBOLS);
+	memset(d->lencode_lens, 0, LZX_LENCODE_NUM_SYMBOLS);
+
+	/* Decompress blocks until we have all the uncompressed data.  */
+
+	while (out_next != out_end) {
+		int block_type;
+		u32 block_size;
+
+		if (lzx_read_block_header(d, &is, &block_type, &block_size,
+					  recent_offsets))
+			goto invalid;
+
+		if (block_size < 1 || block_size > (size_t)(out_end - out_next))
+			goto invalid;
+
+		if (block_type != LZX_BLOCKTYPE_UNCOMPRESSED) {
+
+			/* Compressed block  */
+
+			if (lzx_decompress_block(d,
+						 &is,
+						 block_type,
+						 block_size,
+						 out_begin,
+						 out_next,
+						 recent_offsets))
+				goto invalid;
+
+			e8_status |= d->maincode_lens[0xe8];
+			out_next += block_size;
+		} else {
+			/* Uncompressed block  */
+
+			out_next = bitstream_read_bytes(&is, out_next,
+							block_size);
+			if (!out_next)
+				goto invalid;
+
+			if (block_size & 1)
+				bitstream_read_byte(&is);
+
+			e8_status = 1;
+		}
+	}
+
+	/* Postprocess the data unless it cannot possibly contain 0xe8 bytes. */
+	if (e8_status)
+		lzx_postprocess(uncompressed_data, uncompressed_size);
+
+	return 0;
+
+invalid:
+	return -1;
+}
+
+/*
+ * lzx_free_decompressor - Free an LZX decompressor
+ *
+ * @decompressor:       A decompressor that was allocated with
+ *			lzx_allocate_decompressor(), or NULL.
+ */
+void lzx_free_decompressor(struct lzx_decompressor *decompressor)
+{
+	kfree(decompressor);
+}
diff --git a/fs/ntfs3/lib/xpress_decompress.c b/fs/ntfs3/lib/xpress_decompress.c
new file mode 100644
index 000000000000..3d98f36a981e
--- /dev/null
+++ b/fs/ntfs3/lib/xpress_decompress.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * xpress_decompress.c - A decompressor for the XPRESS compression format
+ * (Huffman variant), which can be used in "System Compressed" files.  This is
+ * based on the code from wimlib.
+ *
+ * Copyright (C) 2015 Eric Biggers
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
+#include "decompress_common.h"
+#include "lib.h"
+
+#define XPRESS_NUM_SYMBOLS	512
+#define XPRESS_MAX_CODEWORD_LEN	15
+#define XPRESS_MIN_MATCH_LEN	3
+
+/* This value is chosen for fast decompression.  */
+#define XPRESS_TABLEBITS 12
+
+/* Reusable heap-allocated memory for XPRESS decompression  */
+struct xpress_decompressor {
+
+	/* The Huffman decoding table  */
+	u16 decode_table[(1 << XPRESS_TABLEBITS) + 2 * XPRESS_NUM_SYMBOLS];
+
+	/* An array that maps symbols to codeword lengths  */
+	u8 lens[XPRESS_NUM_SYMBOLS];
+
+	/* Temporary space for make_huffman_decode_table()  */
+	u16 working_space[2 * (1 + XPRESS_MAX_CODEWORD_LEN) +
+			  XPRESS_NUM_SYMBOLS];
+};
+
+/*
+ * xpress_allocate_decompressor - Allocate an XPRESS decompressor
+ *
+ * Return the pointer to the decompressor on success, or return NULL and set
+ * errno on failure.
+ */
+struct xpress_decompressor *xpress_allocate_decompressor(void)
+{
+	return kmalloc(sizeof(struct xpress_decompressor), GFP_NOFS);
+}
+
+/*
+ * xpress_decompress - Decompress a buffer of XPRESS-compressed data
+ *
+ * @decompressor:       A decompressor that was allocated with
+ *			xpress_allocate_decompressor()
+ * @compressed_data:	The buffer of data to decompress
+ * @compressed_size:	Number of bytes of compressed data
+ * @uncompressed_data:	The buffer in which to store the decompressed data
+ * @uncompressed_size:	The number of bytes the data decompresses into
+ *
+ * Return 0 on success, or return -1 and set errno on failure.
+ */
+int xpress_decompress(struct xpress_decompressor *decompressor,
+		      const void *compressed_data, size_t compressed_size,
+		      void *uncompressed_data, size_t uncompressed_size)
+{
+	struct xpress_decompressor *d = decompressor;
+	const u8 * const in_begin = compressed_data;
+	u8 * const out_begin = uncompressed_data;
+	u8 *out_next = out_begin;
+	u8 * const out_end = out_begin + uncompressed_size;
+	struct input_bitstream is;
+	u32 i;
+
+	/* Read the Huffman codeword lengths.  */
+	if (compressed_size < XPRESS_NUM_SYMBOLS / 2)
+		goto invalid;
+	for (i = 0; i < XPRESS_NUM_SYMBOLS / 2; i++) {
+		d->lens[i*2 + 0] = in_begin[i] & 0xF;
+		d->lens[i*2 + 1] = in_begin[i] >> 4;
+	}
+
+	/* Build a decoding table for the Huffman code.  */
+	if (make_huffman_decode_table(d->decode_table, XPRESS_NUM_SYMBOLS,
+				      XPRESS_TABLEBITS, d->lens,
+				      XPRESS_MAX_CODEWORD_LEN,
+				      d->working_space))
+		goto invalid;
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
+		if (sym < 256) {
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
+			if (offset > (size_t)(out_next - out_begin))
+				goto invalid;
+
+			if (length > (size_t)(out_end - out_next))
+				goto invalid;
+
+			out_next = lz_copy(out_next, length, offset, out_end,
+					   XPRESS_MIN_MATCH_LEN);
+		}
+	}
+	return 0;
+
+invalid:
+	return -1;
+}
+
+/*
+ * xpress_free_decompressor - Free an XPRESS decompressor
+ *
+ * @decompressor:       A decompressor that was allocated with
+ *			xpress_allocate_decompressor(), or NULL.
+ */
+void xpress_free_decompressor(struct xpress_decompressor *decompressor)
+{
+	kfree(decompressor);
+}
diff --git a/fs/ntfs3/lznt.c b/fs/ntfs3/lznt.c
new file mode 100644
index 000000000000..73dc108c3204
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
+	struct lznt *r = ntfs_zalloc(level ? offsetof(struct lznt, hash) :
+					     sizeof(struct lznt));
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
