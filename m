Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32005328586
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  1 Mar 2021 17:56:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ADEkx3COwVILeMdlamTfQbH/FfJ6xFvvPS9F3jESpTU=; b=A6UZ56Mfzjnt1Gttben997yJt
	iUdTUyrGdReCnjdWP33N2Dfr7tkif1jeyUMr34sRPCxiIqZ8YLPbWf9Sc3KKf4EnAqz7B+v/MbYbw
	NamCUd923vOIjAGT9hqItUZ6ITOeH1vn+nDErbJtgrbOI1BbdBtPge8uA+5CIL1Zgg8PA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lGlqB-0003ts-4b; Mon, 01 Mar 2021 16:56:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1lGl1K-0005gq-SH
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 01 Mar 2021 16:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TdHJX+4YRorMA81K/QK42GHkunjDZq99gKiQd8H6EIA=; b=LlZT5KQogtmLkRzDKymSG+MlO/
 cULA4RPveok4ySzlakMrezUSKYJCagEDuHKwVSMAZHTDx3Ul3NoVuSdimAhpW6SFCpyVzY7fV2Yue
 cwwYsni2jX3ghskzWEOS67x6CrAyUqDh3t+Q3PhpYAKA5URq3XlACW8nL2Gs7Ttffg9U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TdHJX+4YRorMA81K/QK42GHkunjDZq99gKiQd8H6EIA=; b=EgFFFeBDoTlZcTAbFryuG2+42y
 eeRtCKrdXDUSuzVhzSDdrCgKgMeBA8wiCdw98UfF0MF8y2iU8D/c9xH8V+mymkG+wZjRRi5WYQg4C
 d1TUDsjLrils5rwGM9NJVfaI70qXpRIkZuTd36mEOkWXV0IiQmWU76xv0gPvVzJLP78Q=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lGl0x-000104-Rf
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 01 Mar 2021 16:03:42 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 27928822BE;
 Mon,  1 Mar 2021 19:03:09 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1614614589;
 bh=TdHJX+4YRorMA81K/QK42GHkunjDZq99gKiQd8H6EIA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=hFAoc6bpjjTve11u/9ABoDJxpUCRAWCVU8SaDO4XwcBl80vGjJ7pEvGX2r2VXhooX
 f8Scz7PhflcKwlEeYXHZ2DXfpscHe5kbwqsOjxfoiqagmaOwDKAwW92OeFFAkRMooO
 9zQUC1Xr6YgBd0fvwpr6dmsr7iYLIW4MVuVPrpi8=
Received: from fsd-lkpg.ufsd.paragon-software.com (172.30.114.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 1 Mar 2021 19:03:08 +0300
To: <linux-fsdevel@vger.kernel.org>
Date: Mon, 1 Mar 2021 19:00:56 +0300
Message-ID: <20210301160102.2884774-5-almaz.alexandrovich@paragon-software.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210301160102.2884774-1-almaz.alexandrovich@paragon-software.com>
References: <20210301160102.2884774-1-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
X-Originating-IP: [172.30.114.105]
X-ClientProxiedBy: vdlg-exch-02.paragon-software.com (172.30.1.105) To
 vdlg-exch-02.paragon-software.com (172.30.1.105)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lGl0x-000104-Rf
X-Mailman-Approved-At: Mon, 01 Mar 2021 16:55:55 +0000
Subject: [Linux-NTFS-Dev] [PATCH v22 04/10] fs/ntfs3: Add file operations
 and implementation
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
Content-Type: multipart/mixed; boundary="===============0627426860191141536=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============0627426860191141536==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

This adds file operations and implementation

Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
---
 fs/ntfs3/dir.c     |  594 +++++++++
 fs/ntfs3/file.c    | 1130 ++++++++++++++++
 fs/ntfs3/frecord.c | 3083 ++++++++++++++++++++++++++++++++++++++++++++
 fs/ntfs3/namei.c   |  592 +++++++++
 fs/ntfs3/record.c  |  609 +++++++++
 fs/ntfs3/run.c     | 1110 ++++++++++++++++
 6 files changed, 7118 insertions(+)
 create mode 100644 fs/ntfs3/dir.c
 create mode 100644 fs/ntfs3/file.c
 create mode 100644 fs/ntfs3/frecord.c
 create mode 100644 fs/ntfs3/namei.c
 create mode 100644 fs/ntfs3/record.c
 create mode 100644 fs/ntfs3/run.c

diff --git a/fs/ntfs3/dir.c b/fs/ntfs3/dir.c
new file mode 100644
index 000000000000..9ec6012c405b
--- /dev/null
+++ b/fs/ntfs3/dir.c
@@ -0,0 +1,594 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ *  directory handling functions for ntfs-based filesystems
+ *
+ */
+#include <linux/blkdev.h>
+#include <linux/buffer_head.h>
+#include <linux/fs.h>
+#include <linux/iversion.h>
+#include <linux/nls.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+
+/*
+ * Convert little endian utf16 to nls string
+ */
+int ntfs_utf16_to_nls(struct ntfs_sb_info *sbi, const struct le_str *uni,
+		      u8 *buf, int buf_len)
+{
+	int ret, uni_len, warn;
+	const __le16 *ip;
+	u8 *op;
+	struct nls_table *nls = sbi->options.nls;
+
+	static_assert(sizeof(wchar_t) == sizeof(__le16));
+
+	if (!nls) {
+		/* utf16 -> utf8 */
+		ret = utf16s_to_utf8s((wchar_t *)uni->name, uni->len,
+				      UTF16_LITTLE_ENDIAN, buf, buf_len);
+		buf[ret] = '\0';
+		return ret;
+	}
+
+	ip = uni->name;
+	op = buf;
+	uni_len = uni->len;
+	warn = 0;
+
+	while (uni_len--) {
+		u16 ec;
+		int charlen;
+		char dump[5];
+
+		if (buf_len < NLS_MAX_CHARSET_SIZE) {
+			ntfs_warn(sbi->sb,
+				  "filename was truncated while converting.");
+			break;
+		}
+
+		ec = le16_to_cpu(*ip++);
+		charlen = nls->uni2char(ec, op, buf_len);
+
+		if (charlen > 0) {
+			op += charlen;
+			buf_len -= charlen;
+			continue;
+		}
+
+		*op++ = '_';
+		buf_len -= 1;
+		if (warn)
+			continue;
+
+		warn = 1;
+		hex_byte_pack(&dump[0], ec >> 8);
+		hex_byte_pack(&dump[2], ec);
+		dump[4] = 0;
+
+		ntfs_err(sbi->sb, "failed to convert \"%s\" to %s", dump,
+			 nls->charset);
+	}
+
+	*op = '\0';
+	return op - buf;
+}
+
+// clang-format off
+#define PLANE_SIZE	0x00010000
+
+#define SURROGATE_PAIR	0x0000d800
+#define SURROGATE_LOW	0x00000400
+#define SURROGATE_BITS	0x000003ff
+// clang-format on
+
+/*
+ * modified version of put_utf16 from fs/nls/nls_base.c
+ * is sparse warnings free
+ */
+static inline void put_utf16(wchar_t *s, unsigned int c,
+			     enum utf16_endian endian)
+{
+	static_assert(sizeof(wchar_t) == sizeof(__le16));
+	static_assert(sizeof(wchar_t) == sizeof(__be16));
+
+	switch (endian) {
+	default:
+		*s = (wchar_t)c;
+		break;
+	case UTF16_LITTLE_ENDIAN:
+		*(__le16 *)s = __cpu_to_le16(c);
+		break;
+	case UTF16_BIG_ENDIAN:
+		*(__be16 *)s = __cpu_to_be16(c);
+		break;
+	}
+}
+
+/*
+ * modified version of 'utf8s_to_utf16s' allows to
+ * detect -ENAMETOOLONG without writing out of expected maximum
+ */
+static int _utf8s_to_utf16s(const u8 *s, int inlen, enum utf16_endian endian,
+			    wchar_t *pwcs, int maxout)
+{
+	u16 *op;
+	int size;
+	unicode_t u;
+
+	op = pwcs;
+	while (inlen > 0 && *s) {
+		if (*s & 0x80) {
+			size = utf8_to_utf32(s, inlen, &u);
+			if (size < 0)
+				return -EINVAL;
+			s += size;
+			inlen -= size;
+
+			if (u >= PLANE_SIZE) {
+				if (maxout < 2)
+					return -ENAMETOOLONG;
+
+				u -= PLANE_SIZE;
+				put_utf16(op++,
+					  SURROGATE_PAIR |
+						  ((u >> 10) & SURROGATE_BITS),
+					  endian);
+				put_utf16(op++,
+					  SURROGATE_PAIR | SURROGATE_LOW |
+						  (u & SURROGATE_BITS),
+					  endian);
+				maxout -= 2;
+			} else {
+				if (maxout < 1)
+					return -ENAMETOOLONG;
+
+				put_utf16(op++, u, endian);
+				maxout--;
+			}
+		} else {
+			if (maxout < 1)
+				return -ENAMETOOLONG;
+
+			put_utf16(op++, *s++, endian);
+			inlen--;
+			maxout--;
+		}
+	}
+	return op - pwcs;
+}
+
+/*
+ * Convert input string to utf16
+ *
+ * name, name_len - input name
+ * uni, max_ulen - destination memory
+ * endian - endian of target utf16 string
+ *
+ * This function is called:
+ * - to create ntfs name
+ * - to create symlink
+ *
+ * returns utf16 string length or error (if negative)
+ */
+int ntfs_nls_to_utf16(struct ntfs_sb_info *sbi, const u8 *name, u32 name_len,
+		      struct cpu_str *uni, u32 max_ulen,
+		      enum utf16_endian endian)
+{
+	int ret, slen;
+	const u8 *end;
+	struct nls_table *nls = sbi->options.nls;
+	u16 *uname = uni->name;
+
+	static_assert(sizeof(wchar_t) == sizeof(u16));
+
+	if (!nls) {
+		/* utf8 -> utf16 */
+		ret = _utf8s_to_utf16s(name, name_len, endian, uname, max_ulen);
+		uni->len = ret;
+		return ret;
+	}
+
+	for (ret = 0, end = name + name_len; name < end; ret++, name += slen) {
+		if (ret >= max_ulen)
+			return -ENAMETOOLONG;
+
+		slen = nls->char2uni(name, end - name, uname + ret);
+		if (!slen)
+			return -EINVAL;
+		if (slen < 0)
+			return slen;
+	}
+
+#ifdef __BIG_ENDIAN
+	if (endian == UTF16_LITTLE_ENDIAN) {
+		int i = ret;
+
+		while (i--) {
+			__cpu_to_le16s(uname);
+			uname++;
+		}
+	}
+#else
+	if (endian == UTF16_BIG_ENDIAN) {
+		int i = ret;
+
+		while (i--) {
+			__cpu_to_be16s(uname);
+			uname++;
+		}
+	}
+#endif
+
+	uni->len = ret;
+	return ret;
+}
+
+/* helper function */
+struct inode *dir_search_u(struct inode *dir, const struct cpu_str *uni,
+			   struct ntfs_fnd *fnd)
+{
+	int err = 0;
+	struct super_block *sb = dir->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_inode *ni = ntfs_i(dir);
+	struct NTFS_DE *e;
+	int diff;
+	struct inode *inode = NULL;
+	struct ntfs_fnd *fnd_a = NULL;
+
+	if (!fnd) {
+		fnd_a = fnd_get();
+		if (!fnd_a) {
+			err = -ENOMEM;
+			goto out;
+		}
+		fnd = fnd_a;
+	}
+
+	err = indx_find(&ni->dir, ni, NULL, uni, 0, sbi, &diff, &e, fnd);
+
+	if (err)
+		goto out;
+
+	if (diff) {
+		err = -ENOENT;
+		goto out;
+	}
+
+	inode = ntfs_iget5(sb, &e->ref, uni);
+	if (!IS_ERR(inode) && is_bad_inode(inode)) {
+		iput(inode);
+		err = -EINVAL;
+	}
+out:
+	fnd_put(fnd_a);
+
+	return err == -ENOENT ? NULL : err ? ERR_PTR(err) : inode;
+}
+
+static inline int ntfs_filldir(struct ntfs_sb_info *sbi, struct ntfs_inode *ni,
+			       const struct NTFS_DE *e, u8 *name,
+			       struct dir_context *ctx)
+{
+	const struct ATTR_FILE_NAME *fname;
+	unsigned long ino;
+	int name_len;
+	u32 dt_type;
+
+	fname = Add2Ptr(e, sizeof(struct NTFS_DE));
+
+	if (fname->type == FILE_NAME_DOS)
+		return 0;
+
+	if (!mi_is_ref(&ni->mi, &fname->home))
+		return 0;
+
+	ino = ino_get(&e->ref);
+
+	if (ino == MFT_REC_ROOT)
+		return 0;
+
+	/* Skip meta files ( unless option to show metafiles is set ) */
+	if (!sbi->options.showmeta && ntfs_is_meta_file(sbi, ino))
+		return 0;
+
+	if (sbi->options.nohidden && (fname->dup.fa & FILE_ATTRIBUTE_HIDDEN))
+		return 0;
+
+	name_len = ntfs_utf16_to_nls(sbi, (struct le_str *)&fname->name_len,
+				     name, PATH_MAX);
+	if (name_len <= 0) {
+		ntfs_warn(sbi->sb, "failed to convert name for inode %lx.",
+			  ino);
+		return 0;
+	}
+
+	dt_type = (fname->dup.fa & FILE_ATTRIBUTE_DIRECTORY) ? DT_DIR : DT_REG;
+
+	return !dir_emit(ctx, (s8 *)name, name_len, ino, dt_type);
+}
+
+/*
+ * ntfs_read_hdr
+ *
+ * helper function 'ntfs_readdir'
+ */
+static int ntfs_read_hdr(struct ntfs_sb_info *sbi, struct ntfs_inode *ni,
+			 const struct INDEX_HDR *hdr, u64 vbo, u64 pos,
+			 u8 *name, struct dir_context *ctx)
+{
+	int err;
+	const struct NTFS_DE *e;
+	u32 e_size;
+	u32 end = le32_to_cpu(hdr->used);
+	u32 off = le32_to_cpu(hdr->de_off);
+
+	for (;; off += e_size) {
+		if (off + sizeof(struct NTFS_DE) > end)
+			return -1;
+
+		e = Add2Ptr(hdr, off);
+		e_size = le16_to_cpu(e->size);
+		if (e_size < sizeof(struct NTFS_DE) || off + e_size > end)
+			return -1;
+
+		if (de_is_last(e))
+			return 0;
+
+		/* Skip already enumerated*/
+		if (vbo + off < pos)
+			continue;
+
+		if (le16_to_cpu(e->key_size) < SIZEOF_ATTRIBUTE_FILENAME)
+			return -1;
+
+		ctx->pos = vbo + off;
+
+		/* Submit the name to the filldir callback. */
+		err = ntfs_filldir(sbi, ni, e, name, ctx);
+		if (err)
+			return err;
+	}
+}
+
+/*
+ * file_operations::iterate_shared
+ *
+ * Use non sorted enumeration.
+ * We have an example of broken volume where sorted enumeration
+ * counts each name twice
+ */
+static int ntfs_readdir(struct file *file, struct dir_context *ctx)
+{
+	const struct INDEX_ROOT *root;
+	u64 vbo;
+	size_t bit;
+	loff_t eod;
+	int err = 0;
+	struct inode *dir = file_inode(file);
+	struct ntfs_inode *ni = ntfs_i(dir);
+	struct super_block *sb = dir->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	loff_t i_size = i_size_read(dir);
+	u32 pos = ctx->pos;
+	u8 *name = NULL;
+	struct indx_node *node = NULL;
+	u8 index_bits = ni->dir.index_bits;
+
+	/* name is a buffer of PATH_MAX length */
+	static_assert(NTFS_NAME_LEN * 4 < PATH_MAX);
+
+	eod = i_size + sbi->record_size;
+
+	if (pos >= eod)
+		return 0;
+
+	if (!dir_emit_dots(file, ctx))
+		return 0;
+
+	/* allocate PATH_MAX bytes */
+	name = __getname();
+	if (!name)
+		return -ENOMEM;
+
+	if (!ni->mi_loaded && ni->attr_list.size) {
+		/*
+		 * directory inode is locked for read
+		 * load all subrecords to avoid 'write' access to 'ni' during
+		 * directory reading
+		 */
+		ni_lock(ni);
+		if (!ni->mi_loaded && ni->attr_list.size) {
+			err = ni_load_all_mi(ni);
+			if (!err)
+				ni->mi_loaded = true;
+		}
+		ni_unlock(ni);
+		if (err)
+			goto out;
+	}
+
+	root = indx_get_root(&ni->dir, ni, NULL, NULL);
+	if (!root) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (pos >= sbi->record_size) {
+		bit = (pos - sbi->record_size) >> index_bits;
+	} else {
+		err = ntfs_read_hdr(sbi, ni, &root->ihdr, 0, pos, name, ctx);
+		if (err)
+			goto out;
+		bit = 0;
+	}
+
+	if (!i_size) {
+		ctx->pos = eod;
+		goto out;
+	}
+
+	for (;;) {
+		vbo = (u64)bit << index_bits;
+		if (vbo >= i_size) {
+			ctx->pos = eod;
+			goto out;
+		}
+
+		err = indx_used_bit(&ni->dir, ni, &bit);
+		if (err)
+			goto out;
+
+		if (bit == MINUS_ONE_T) {
+			ctx->pos = eod;
+			goto out;
+		}
+
+		vbo = (u64)bit << index_bits;
+		if (vbo >= i_size) {
+			ntfs_inode_err(dir, "Looks like your dir is corrupt");
+			err = -EINVAL;
+			goto out;
+		}
+
+		err = indx_read(&ni->dir, ni, bit << ni->dir.idx2vbn_bits,
+				&node);
+		if (err)
+			goto out;
+
+		err = ntfs_read_hdr(sbi, ni, &node->index->ihdr,
+				    vbo + sbi->record_size, pos, name, ctx);
+		if (err)
+			goto out;
+
+		bit += 1;
+	}
+
+out:
+
+	__putname(name);
+	put_indx_node(node);
+
+	if (err == -ENOENT) {
+		err = 0;
+		ctx->pos = pos;
+	}
+
+	return err;
+}
+
+static int ntfs_dir_count(struct inode *dir, bool *is_empty, size_t *dirs,
+			  size_t *files)
+{
+	int err = 0;
+	struct ntfs_inode *ni = ntfs_i(dir);
+	struct NTFS_DE *e = NULL;
+	struct INDEX_ROOT *root;
+	struct INDEX_HDR *hdr;
+	const struct ATTR_FILE_NAME *fname;
+	u32 e_size, off, end;
+	u64 vbo = 0;
+	size_t drs = 0, fles = 0, bit = 0;
+	loff_t i_size = ni->vfs_inode.i_size;
+	struct indx_node *node = NULL;
+	u8 index_bits = ni->dir.index_bits;
+
+	if (is_empty)
+		*is_empty = true;
+
+	root = indx_get_root(&ni->dir, ni, NULL, NULL);
+	if (!root)
+		return -EINVAL;
+
+	hdr = &root->ihdr;
+
+	for (;;) {
+		end = le32_to_cpu(hdr->used);
+		off = le32_to_cpu(hdr->de_off);
+
+		for (; off + sizeof(struct NTFS_DE) <= end; off += e_size) {
+			e = Add2Ptr(hdr, off);
+			e_size = le16_to_cpu(e->size);
+			if (e_size < sizeof(struct NTFS_DE) ||
+			    off + e_size > end)
+				break;
+
+			if (de_is_last(e))
+				break;
+
+			fname = de_get_fname(e);
+			if (!fname)
+				continue;
+
+			if (fname->type == FILE_NAME_DOS)
+				continue;
+
+			if (is_empty) {
+				*is_empty = false;
+				if (!dirs && !files)
+					goto out;
+			}
+
+			if (fname->dup.fa & FILE_ATTRIBUTE_DIRECTORY)
+				drs += 1;
+			else
+				fles += 1;
+		}
+
+		if (vbo >= i_size)
+			goto out;
+
+		err = indx_used_bit(&ni->dir, ni, &bit);
+		if (err)
+			goto out;
+
+		if (bit == MINUS_ONE_T)
+			goto out;
+
+		vbo = (u64)bit << index_bits;
+		if (vbo >= i_size)
+			goto out;
+
+		err = indx_read(&ni->dir, ni, bit << ni->dir.idx2vbn_bits,
+				&node);
+		if (err)
+			goto out;
+
+		hdr = &node->index->ihdr;
+		bit += 1;
+		vbo = (u64)bit << ni->dir.idx2vbn_bits;
+	}
+
+out:
+	put_indx_node(node);
+	if (dirs)
+		*dirs = drs;
+	if (files)
+		*files = fles;
+
+	return err;
+}
+
+bool dir_is_empty(struct inode *dir)
+{
+	bool is_empty = false;
+
+	ntfs_dir_count(dir, &is_empty, NULL, NULL);
+
+	return is_empty;
+}
+
+const struct file_operations ntfs_dir_operations = {
+	.llseek = generic_file_llseek,
+	.read = generic_read_dir,
+	.iterate_shared = ntfs_readdir,
+	.fsync = generic_file_fsync,
+	.open = ntfs_file_open,
+};
diff --git a/fs/ntfs3/file.c b/fs/ntfs3/file.c
new file mode 100644
index 000000000000..347baf674008
--- /dev/null
+++ b/fs/ntfs3/file.c
@@ -0,0 +1,1130 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ *  regular file handling primitives for ntfs-based filesystems
+ */
+#include <linux/backing-dev.h>
+#include <linux/buffer_head.h>
+#include <linux/compat.h>
+#include <linux/falloc.h>
+#include <linux/fiemap.h>
+#include <linux/msdos_fs.h> /* FAT_IOCTL_XXX */
+#include <linux/nls.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+
+static int ntfs_ioctl_fitrim(struct ntfs_sb_info *sbi, unsigned long arg)
+{
+	struct fstrim_range __user *user_range;
+	struct fstrim_range range;
+	struct request_queue *q = bdev_get_queue(sbi->sb->s_bdev);
+	int err;
+
+	if (!capable(CAP_SYS_ADMIN))
+		return -EPERM;
+
+	if (!blk_queue_discard(q))
+		return -EOPNOTSUPP;
+
+	user_range = (struct fstrim_range __user *)arg;
+	if (copy_from_user(&range, user_range, sizeof(range)))
+		return -EFAULT;
+
+	range.minlen = max_t(u32, range.minlen, q->limits.discard_granularity);
+
+	err = ntfs_trim_fs(sbi, &range);
+	if (err < 0)
+		return err;
+
+	if (copy_to_user(user_range, &range, sizeof(range)))
+		return -EFAULT;
+
+	return 0;
+}
+
+static long ntfs_ioctl(struct file *filp, u32 cmd, unsigned long arg)
+{
+	struct inode *inode = file_inode(filp);
+	struct ntfs_sb_info *sbi = inode->i_sb->s_fs_info;
+	u32 __user *user_attr = (u32 __user *)arg;
+
+	switch (cmd) {
+	case FAT_IOCTL_GET_ATTRIBUTES:
+		return put_user(le32_to_cpu(ntfs_i(inode)->std_fa), user_attr);
+
+	case FAT_IOCTL_GET_VOLUME_ID:
+		return put_user(sbi->volume.ser_num, user_attr);
+
+	case FITRIM:
+		return ntfs_ioctl_fitrim(sbi, arg);
+	}
+	return -ENOTTY; /* Inappropriate ioctl for device */
+}
+
+#ifdef CONFIG_COMPAT
+static long ntfs_compat_ioctl(struct file *filp, u32 cmd, unsigned long arg)
+
+{
+	return ntfs_ioctl(filp, cmd, (unsigned long)compat_ptr(arg));
+}
+#endif
+
+/*
+ * inode_operations::getattr
+ */
+int ntfs_getattr(struct user_namespace *mnt_userns, const struct path *path,
+		 struct kstat *stat, u32 request_mask, u32 flags)
+{
+	struct inode *inode = d_inode(path->dentry);
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (is_compressed(ni))
+		stat->attributes |= STATX_ATTR_COMPRESSED;
+
+	if (is_encrypted(ni))
+		stat->attributes |= STATX_ATTR_ENCRYPTED;
+
+	stat->attributes_mask |= STATX_ATTR_COMPRESSED | STATX_ATTR_ENCRYPTED;
+
+	generic_fillattr(mnt_userns, inode, stat);
+
+	stat->result_mask |= STATX_BTIME;
+	stat->btime = ni->i_crtime;
+
+	return 0;
+}
+
+static int ntfs_extend_initialized_size(struct file *file,
+					struct ntfs_inode *ni,
+					const loff_t valid,
+					const loff_t new_valid)
+{
+	struct inode *inode = &ni->vfs_inode;
+	struct address_space *mapping = inode->i_mapping;
+	struct ntfs_sb_info *sbi = inode->i_sb->s_fs_info;
+	loff_t pos = valid;
+	int err;
+
+	if (is_resident(ni)) {
+		ni->i_valid = new_valid;
+		return 0;
+	}
+
+	WARN_ON(is_compressed(ni));
+	WARN_ON(valid >= new_valid);
+
+	for (;;) {
+		u32 zerofrom, len;
+		struct page *page;
+		void *fsdata;
+		u8 bits;
+		CLST vcn, lcn, clen;
+
+		if (is_sparsed(ni)) {
+			bits = sbi->cluster_bits;
+			vcn = pos >> bits;
+
+			err = attr_data_get_block(ni, vcn, 0, &lcn, &clen,
+						  NULL);
+			if (err)
+				goto out;
+
+			if (lcn == SPARSE_LCN) {
+				loff_t vbo = (loff_t)vcn << bits;
+				loff_t to = vbo + ((loff_t)clen << bits);
+
+				if (to <= new_valid) {
+					ni->i_valid = to;
+					pos = to;
+					goto next;
+				}
+
+				if (vbo < pos) {
+					pos = vbo;
+				} else {
+					to = (new_valid >> bits) << bits;
+					if (pos < to) {
+						ni->i_valid = to;
+						pos = to;
+						goto next;
+					}
+				}
+			}
+		}
+
+		zerofrom = pos & (PAGE_SIZE - 1);
+		len = PAGE_SIZE - zerofrom;
+
+		if (pos + len > new_valid)
+			len = new_valid - pos;
+
+		err = pagecache_write_begin(file, mapping, pos, len, 0, &page,
+					    &fsdata);
+		if (err)
+			goto out;
+
+		zero_user_segment(page, zerofrom, PAGE_SIZE);
+
+		/* this function in any case puts page*/
+		err = pagecache_write_end(file, mapping, pos, len, len, page,
+					  fsdata);
+		if (err < 0)
+			goto out;
+		pos += len;
+
+next:
+		if (pos >= new_valid)
+			break;
+
+		balance_dirty_pages_ratelimited(mapping);
+		cond_resched();
+	}
+
+	mark_inode_dirty(inode);
+
+	return 0;
+
+out:
+	ni->i_valid = valid;
+	ntfs_inode_warn(inode, "failed to extend initialized size to %llx.",
+			new_valid);
+	return err;
+}
+
+/*
+ * ntfs_sparse_cluster
+ *
+ * Helper function to zero a new allocated clusters
+ */
+void ntfs_sparse_cluster(struct inode *inode, struct page *page0, CLST vcn,
+			 CLST len)
+{
+	struct address_space *mapping = inode->i_mapping;
+	struct ntfs_sb_info *sbi = inode->i_sb->s_fs_info;
+	u64 vbo = (u64)vcn << sbi->cluster_bits;
+	u64 bytes = (u64)len << sbi->cluster_bits;
+	u32 blocksize = 1 << inode->i_blkbits;
+	pgoff_t idx0 = page0 ? page0->index : -1;
+	loff_t vbo_clst = vbo & sbi->cluster_mask_inv;
+	loff_t end = ntfs_up_cluster(sbi, vbo + bytes);
+	pgoff_t idx = vbo_clst >> PAGE_SHIFT;
+	u32 from = vbo_clst & (PAGE_SIZE - 1);
+	pgoff_t idx_end = (end + PAGE_SIZE - 1) >> PAGE_SHIFT;
+	loff_t page_off;
+	u32 to;
+	bool partial;
+	struct page *page;
+
+	for (; idx < idx_end; idx += 1, from = 0) {
+		page = idx == idx0 ? page0 : grab_cache_page(mapping, idx);
+
+		if (!page)
+			continue;
+
+		page_off = (loff_t)idx << PAGE_SHIFT;
+		to = (page_off + PAGE_SIZE) > end ? (end - page_off)
+						  : PAGE_SIZE;
+		partial = false;
+
+		if ((from || PAGE_SIZE != to) &&
+		    likely(!page_has_buffers(page))) {
+			create_empty_buffers(page, blocksize, 0);
+			if (!page_has_buffers(page)) {
+				ntfs_inode_err(
+					inode,
+					"failed to allocate page buffers.");
+				/*err = -ENOMEM;*/
+				goto unlock_page;
+			}
+		}
+
+		if (page_has_buffers(page)) {
+			struct buffer_head *head, *bh;
+			u32 bh_off = 0;
+
+			bh = head = page_buffers(page);
+			do {
+				u32 bh_next = bh_off + blocksize;
+
+				if (from <= bh_off && bh_next <= to) {
+					set_buffer_uptodate(bh);
+					mark_buffer_dirty(bh);
+				} else if (!buffer_uptodate(bh)) {
+					partial = true;
+				}
+				bh_off = bh_next;
+			} while (head != (bh = bh->b_this_page));
+		}
+
+		zero_user_segment(page, from, to);
+
+		if (!partial) {
+			if (!PageUptodate(page))
+				SetPageUptodate(page);
+			set_page_dirty(page);
+		}
+
+unlock_page:
+		if (idx != idx0) {
+			unlock_page(page);
+			put_page(page);
+		}
+		cond_resched();
+	}
+	mark_inode_dirty(inode);
+}
+
+/*
+ * file_operations::mmap
+ */
+static int ntfs_file_mmap(struct file *file, struct vm_area_struct *vma)
+{
+	struct address_space *mapping = file->f_mapping;
+	struct inode *inode = mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	u64 to, from = ((u64)vma->vm_pgoff << PAGE_SHIFT);
+	bool rw = vma->vm_flags & VM_WRITE;
+	int err;
+
+	if (is_encrypted(ni)) {
+		ntfs_inode_warn(inode,
+				"mmap is not supported for encrypted files");
+		err = -EOPNOTSUPP;
+		goto out;
+	}
+
+	if (!rw)
+		goto do_map;
+
+	if (is_compressed(ni)) {
+		ntfs_inode_warn(
+			inode,
+			"mmap(write) is not supported for compressed files");
+		err = -EOPNOTSUPP;
+		goto out;
+	}
+
+	to = min_t(loff_t, i_size_read(inode),
+		   from + vma->vm_end - vma->vm_start);
+
+	if (is_sparsed(ni)) {
+		/* allocate clusters for rw map */
+		struct ntfs_sb_info *sbi = inode->i_sb->s_fs_info;
+		CLST vcn, lcn, len;
+		CLST end = bytes_to_cluster(sbi, to);
+		bool new;
+
+		for (vcn = from >> sbi->cluster_bits; vcn < end; vcn += len) {
+			err = attr_data_get_block(ni, vcn, 1, &lcn, &len, &new);
+			if (err)
+				goto out;
+			if (!new)
+				continue;
+			ntfs_sparse_cluster(inode, NULL, vcn, 1);
+		}
+	}
+
+	if (ni->i_valid < to) {
+		inode_lock(inode);
+		err = ntfs_extend_initialized_size(file, ni, ni->i_valid, to);
+		inode_unlock(inode);
+		if (err)
+			goto out;
+	}
+
+do_map:
+	err = generic_file_mmap(file, vma);
+out:
+	return err;
+}
+
+static int ntfs_extend(struct inode *inode, loff_t pos, size_t count,
+		       struct file *file)
+{
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct address_space *mapping = inode->i_mapping;
+	loff_t end = pos + count;
+	bool extend_init = file && pos > ni->i_valid;
+	int err;
+
+	if (end <= inode->i_size && !extend_init)
+		return 0;
+
+	/*mark rw ntfs as dirty. it will be cleared at umount*/
+	ntfs_set_state(ni->mi.sbi, NTFS_DIRTY_DIRTY);
+
+	if (end > inode->i_size) {
+		err = ntfs_set_size(inode, end);
+		if (err)
+			goto out;
+		inode->i_size = end;
+	}
+
+	if (extend_init && !is_compressed(ni)) {
+		err = ntfs_extend_initialized_size(file, ni, ni->i_valid, pos);
+		if (err)
+			goto out;
+	} else {
+		err = 0;
+	}
+
+	inode->i_ctime = inode->i_mtime = current_time(inode);
+	mark_inode_dirty(inode);
+
+	if (IS_SYNC(inode)) {
+		int err2;
+
+		err = filemap_fdatawrite_range(mapping, pos, end - 1);
+		err2 = sync_mapping_buffers(mapping);
+		if (!err)
+			err = err2;
+		err2 = write_inode_now(inode, 1);
+		if (!err)
+			err = err2;
+		if (!err)
+			err = filemap_fdatawait_range(mapping, pos, end - 1);
+	}
+
+out:
+	return err;
+}
+
+static int ntfs_truncate(struct inode *inode, loff_t new_size)
+{
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	int err, dirty = 0;
+	u64 new_valid;
+
+	if (!S_ISREG(inode->i_mode))
+		return 0;
+
+	if (is_compressed(ni)) {
+		if (ni->i_valid > new_size)
+			ni->i_valid = new_size;
+	} else {
+		err = block_truncate_page(inode->i_mapping, new_size,
+					  ntfs_get_block);
+		if (err)
+			return err;
+	}
+
+	new_valid = ntfs_up_block(sb, min_t(u64, ni->i_valid, new_size));
+
+	ni_lock(ni);
+
+	truncate_setsize(inode, new_size);
+
+	down_write(&ni->file.run_lock);
+	err = attr_set_size(ni, ATTR_DATA, NULL, 0, &ni->file.run, new_size,
+			    &new_valid, true, NULL);
+	up_write(&ni->file.run_lock);
+
+	if (new_valid < ni->i_valid)
+		ni->i_valid = new_valid;
+
+	ni_unlock(ni);
+
+	ni->std_fa |= FILE_ATTRIBUTE_ARCHIVE;
+	inode->i_ctime = inode->i_mtime = current_time(inode);
+	if (!IS_DIRSYNC(inode)) {
+		dirty = 1;
+	} else {
+		err = ntfs_sync_inode(inode);
+		if (err)
+			return err;
+	}
+
+	if (dirty)
+		mark_inode_dirty(inode);
+
+	/*ntfs_flush_inodes(inode->i_sb, inode, NULL);*/
+
+	return 0;
+}
+
+/*
+ * Preallocate space for a file. This implements ntfs's fallocate file
+ * operation, which gets called from sys_fallocate system call. User
+ * space requests 'len' bytes at 'vbo'. If FALLOC_FL_KEEP_SIZE is set
+ * we just allocate clusters without zeroing them out. Otherwise we
+ * allocate and zero out clusters via an expanding truncate.
+ */
+static long ntfs_fallocate(struct file *file, int mode, loff_t vbo, loff_t len)
+{
+	struct inode *inode = file->f_mapping->host;
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	loff_t end = vbo + len;
+	loff_t vbo_down = round_down(vbo, PAGE_SIZE);
+	loff_t i_size;
+	int err;
+
+	/* No support for dir */
+	if (!S_ISREG(inode->i_mode))
+		return -EOPNOTSUPP;
+
+	/* Return error if mode is not supported */
+	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
+		     FALLOC_FL_COLLAPSE_RANGE))
+		return -EOPNOTSUPP;
+
+	ntfs_set_state(sbi, NTFS_DIRTY_DIRTY);
+
+	inode_lock(inode);
+	i_size = inode->i_size;
+
+	if (WARN_ON(ni->ni_flags & NI_FLAG_COMPRESSED_MASK)) {
+		/* should never be here, see ntfs_file_open*/
+		err = -EOPNOTSUPP;
+		goto out;
+	}
+
+	if (mode & FALLOC_FL_PUNCH_HOLE) {
+		if (!(mode & FALLOC_FL_KEEP_SIZE)) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		if (!is_sparsed(ni) && !is_compressed(ni)) {
+			ntfs_inode_warn(
+				inode,
+				"punch_hole only for sparsed/compressed files");
+			err = -EOPNOTSUPP;
+			goto out;
+		}
+
+		err = filemap_write_and_wait_range(inode->i_mapping, vbo,
+						   end - 1);
+		if (err)
+			goto out;
+
+		err = filemap_write_and_wait_range(inode->i_mapping, end,
+						   LLONG_MAX);
+		if (err)
+			goto out;
+
+		truncate_pagecache(inode, vbo_down);
+
+		ni_lock(ni);
+		err = attr_punch_hole(ni, vbo, len);
+		ni_unlock(ni);
+	} else if (mode & FALLOC_FL_COLLAPSE_RANGE) {
+		if (mode & ~FALLOC_FL_COLLAPSE_RANGE) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		/*
+		 * Write tail of the last page before removed range since
+		 * it will get removed from the page cache below.
+		 */
+		err = filemap_write_and_wait_range(inode->i_mapping, vbo_down,
+						   vbo);
+		if (err)
+			goto out;
+
+		/*
+		 * Write data that will be shifted to preserve them
+		 * when discarding page cache below
+		 */
+		err = filemap_write_and_wait_range(inode->i_mapping, end,
+						   LLONG_MAX);
+		if (err)
+			goto out;
+
+		truncate_pagecache(inode, vbo_down);
+
+		ni_lock(ni);
+		err = attr_collapse_range(ni, vbo, len);
+		ni_unlock(ni);
+	} else {
+		/*
+		 * normal file: allocate clusters, do not change 'valid' size
+		 */
+		err = ntfs_set_size(inode, max(end, i_size));
+		if (err)
+			goto out;
+
+		if (is_sparsed(ni) || is_compressed(ni)) {
+			CLST vcn_v = ni->i_valid >> sbi->cluster_bits;
+			CLST vcn = vbo >> sbi->cluster_bits;
+			CLST cend = bytes_to_cluster(sbi, end);
+			CLST lcn, clen;
+			bool new;
+
+			/*
+			 * allocate but not zero new clusters (see below comments)
+			 * this breaks security (one can read unused on-disk areas)
+			 * zeroing these clusters may be too long
+			 * may be we should check here for root rights?
+			 */
+			for (; vcn < cend; vcn += clen) {
+				err = attr_data_get_block(ni, vcn, cend - vcn,
+							  &lcn, &clen, &new);
+				if (err)
+					goto out;
+				if (!new || vcn >= vcn_v)
+					continue;
+
+				/*
+				 * Unwritten area
+				 * NTFS is not able to store several unwritten areas
+				 * Activate 'ntfs_sparse_cluster' to zero new allocated clusters
+				 *
+				 * Dangerous in case:
+				 * 1G of sparsed clusters + 1 cluster of data =>
+				 * valid_size == 1G + 1 cluster
+				 * fallocate(1G) will zero 1G and this can be very long
+				 * xfstest 016/086 will fail without 'ntfs_sparse_cluster'
+				 */
+				/*ntfs_sparse_cluster(inode, NULL, vcn,
+				 *		    min(vcn_v - vcn, clen));
+				 */
+			}
+		}
+
+		if (mode & FALLOC_FL_KEEP_SIZE) {
+			ni_lock(ni);
+			/*true - keep preallocated*/
+			err = attr_set_size(ni, ATTR_DATA, NULL, 0,
+					    &ni->file.run, i_size, &ni->i_valid,
+					    true, NULL);
+			ni_unlock(ni);
+		}
+	}
+
+	if (!err) {
+		inode->i_ctime = inode->i_mtime = current_time(inode);
+		mark_inode_dirty(inode);
+	}
+out:
+	if (err == -EFBIG)
+		err = -ENOSPC;
+
+	inode_unlock(inode);
+	return err;
+}
+
+/*
+ * inode_operations::setattr
+ */
+int ntfs3_setattr(struct user_namespace *mnt_userns, struct dentry *dentry,
+		  struct iattr *attr)
+{
+	struct super_block *sb = dentry->d_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct inode *inode = d_inode(dentry);
+	struct ntfs_inode *ni = ntfs_i(inode);
+	u32 ia_valid = attr->ia_valid;
+	umode_t mode = inode->i_mode;
+	int err;
+
+	if (sbi->options.no_acs_rules) {
+		/* "no access rules" - force any changes of time etc. */
+		attr->ia_valid |= ATTR_FORCE;
+		/* and disable for editing some attributes */
+		attr->ia_valid &= ~(ATTR_UID | ATTR_GID | ATTR_MODE);
+		ia_valid = attr->ia_valid;
+	}
+
+	err = setattr_prepare(mnt_userns, dentry, attr);
+	if (err)
+		goto out;
+
+	if (ia_valid & ATTR_SIZE) {
+		loff_t oldsize = inode->i_size;
+
+		if (WARN_ON(ni->ni_flags & NI_FLAG_COMPRESSED_MASK)) {
+			/* should never be here, see ntfs_file_open*/
+			err = -EOPNOTSUPP;
+			goto out;
+		}
+		inode_dio_wait(inode);
+
+		if (attr->ia_size < oldsize)
+			err = ntfs_truncate(inode, attr->ia_size);
+		else if (attr->ia_size > oldsize)
+			err = ntfs_extend(inode, attr->ia_size, 0, NULL);
+
+		if (err)
+			goto out;
+
+		ni->ni_flags |= NI_FLAG_UPDATE_PARENT;
+	}
+
+	setattr_copy(mnt_userns, inode, attr);
+
+	if (mode != inode->i_mode) {
+		err = ntfs_acl_chmod(mnt_userns, inode);
+		if (err)
+			goto out;
+
+		/* linux 'w' -> windows 'ro' */
+		if (0222 & inode->i_mode)
+			ni->std_fa &= ~FILE_ATTRIBUTE_READONLY;
+		else
+			ni->std_fa |= FILE_ATTRIBUTE_READONLY;
+	}
+
+	mark_inode_dirty(inode);
+out:
+	return err;
+}
+
+static ssize_t ntfs_file_read_iter(struct kiocb *iocb, struct iov_iter *iter)
+{
+	ssize_t err;
+	size_t count = iov_iter_count(iter);
+	struct file *file = iocb->ki_filp;
+	struct inode *inode = file->f_mapping->host;
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (is_encrypted(ni)) {
+		ntfs_inode_warn(inode, "encrypted i/o not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (is_compressed(ni) && (iocb->ki_flags & IOCB_DIRECT)) {
+		ntfs_inode_warn(inode, "direct i/o + compressed not supported");
+		return -EOPNOTSUPP;
+	}
+
+#ifndef CONFIG_NTFS3_LZX_XPRESS
+	if (ni->ni_flags & NI_FLAG_COMPRESSED_MASK) {
+		ntfs_inode_warn(
+			inode,
+			"activate CONFIG_NTFS3_LZX_XPRESS to read external compressed files");
+		return -EOPNOTSUPP;
+	}
+#endif
+
+	if (is_dedup(ni)) {
+		ntfs_inode_warn(inode, "read deduplicated not supported");
+		return -EOPNOTSUPP;
+	}
+
+	err = count ? generic_file_read_iter(iocb, iter) : 0;
+
+	return err;
+}
+
+/* returns array of locked pages */
+static int ntfs_get_frame_pages(struct address_space *mapping, pgoff_t index,
+				struct page **pages, u32 pages_per_frame,
+				bool *frame_uptodate)
+{
+	gfp_t gfp_mask = mapping_gfp_mask(mapping);
+	u32 npages;
+
+	*frame_uptodate = true;
+
+	for (npages = 0; npages < pages_per_frame; npages++, index++) {
+		struct page *page;
+
+		page = find_or_create_page(mapping, index, gfp_mask);
+		if (!page) {
+			while (npages--) {
+				page = pages[npages];
+				unlock_page(page);
+				put_page(page);
+			}
+
+			return -ENOMEM;
+		}
+
+		if (!PageUptodate(page))
+			*frame_uptodate = false;
+
+		pages[npages] = page;
+	}
+
+	return 0;
+}
+
+/*helper for ntfs_file_write_iter (compressed files)*/
+static ssize_t ntfs_compress_write(struct kiocb *iocb, struct iov_iter *from)
+{
+	int err;
+	struct file *file = iocb->ki_filp;
+	size_t count = iov_iter_count(from);
+	loff_t pos = iocb->ki_pos;
+	struct inode *inode = file_inode(file);
+	loff_t i_size = inode->i_size;
+	struct address_space *mapping = inode->i_mapping;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	u64 valid = ni->i_valid;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct page *page, **pages = NULL;
+	size_t written = 0;
+	u8 frame_bits = NTFS_LZNT_CUNIT + sbi->cluster_bits;
+	u32 frame_size = 1u << frame_bits;
+	u32 pages_per_frame = frame_size >> PAGE_SHIFT;
+	u32 ip, off;
+	CLST frame;
+	u64 frame_vbo;
+	pgoff_t index;
+	bool frame_uptodate;
+
+	if (frame_size < PAGE_SIZE) {
+		/*
+		 * frame_size == 8K if cluster 512
+		 * frame_size == 64K if cluster 4096
+		 */
+		ntfs_inode_warn(inode, "page size is bigger than frame size");
+		return -EOPNOTSUPP;
+	}
+
+	pages = ntfs_malloc(pages_per_frame * sizeof(struct page *));
+	if (!pages)
+		return -ENOMEM;
+
+	current->backing_dev_info = inode_to_bdi(inode);
+	err = file_remove_privs(file);
+	if (err)
+		goto out;
+
+	err = file_update_time(file);
+	if (err)
+		goto out;
+
+	/* zero range [valid : pos) */
+	while (valid < pos) {
+		CLST lcn, clen;
+
+		frame = valid >> frame_bits;
+		frame_vbo = valid & ~(frame_size - 1);
+		off = valid & (frame_size - 1);
+
+		err = attr_data_get_block(ni, frame << NTFS_LZNT_CUNIT, 0, &lcn,
+					  &clen, NULL);
+		if (err)
+			goto out;
+
+		if (lcn == SPARSE_LCN) {
+			ni->i_valid = valid =
+				frame_vbo + ((u64)clen << sbi->cluster_bits);
+			continue;
+		}
+
+		/* Load full frame */
+		err = ntfs_get_frame_pages(mapping, frame_vbo >> PAGE_SHIFT,
+					   pages, pages_per_frame,
+					   &frame_uptodate);
+		if (err)
+			goto out;
+
+		if (!frame_uptodate && off) {
+			err = ni_read_frame(ni, frame_vbo, pages,
+					    pages_per_frame);
+			if (err) {
+				for (ip = 0; ip < pages_per_frame; ip++) {
+					page = pages[ip];
+					unlock_page(page);
+					put_page(page);
+				}
+				goto out;
+			}
+		}
+
+		ip = off >> PAGE_SHIFT;
+		off = offset_in_page(valid);
+		for (; ip < pages_per_frame; ip++, off = 0) {
+			page = pages[ip];
+			zero_user_segment(page, off, PAGE_SIZE);
+			flush_dcache_page(page);
+			SetPageUptodate(page);
+		}
+
+		ni_lock(ni);
+		err = ni_write_frame(ni, pages, pages_per_frame);
+		ni_unlock(ni);
+
+		for (ip = 0; ip < pages_per_frame; ip++) {
+			page = pages[ip];
+			SetPageUptodate(page);
+			unlock_page(page);
+			put_page(page);
+		}
+
+		if (err)
+			goto out;
+
+		ni->i_valid = valid = frame_vbo + frame_size;
+	}
+
+	/* copy user data [pos : pos + count) */
+	while (count) {
+		size_t copied, bytes;
+
+		off = pos & (frame_size - 1);
+		bytes = frame_size - off;
+		if (bytes > count)
+			bytes = count;
+
+		frame = pos >> frame_bits;
+		frame_vbo = pos & ~(frame_size - 1);
+		index = frame_vbo >> PAGE_SHIFT;
+
+		if (unlikely(iov_iter_fault_in_readable(from, bytes))) {
+			err = -EFAULT;
+			goto out;
+		}
+
+		/* Load full frame */
+		err = ntfs_get_frame_pages(mapping, index, pages,
+					   pages_per_frame, &frame_uptodate);
+		if (err)
+			goto out;
+
+		if (!frame_uptodate) {
+			loff_t to = pos + bytes;
+
+			if (off || (to < i_size && (to & (frame_size - 1)))) {
+				err = ni_read_frame(ni, frame_vbo, pages,
+						    pages_per_frame);
+				if (err) {
+					for (ip = 0; ip < pages_per_frame;
+					     ip++) {
+						page = pages[ip];
+						unlock_page(page);
+						put_page(page);
+					}
+					goto out;
+				}
+			}
+		}
+
+		WARN_ON(!bytes);
+		copied = 0;
+		ip = off >> PAGE_SHIFT;
+		off = offset_in_page(pos);
+
+		/* copy user data to pages */
+		for (;;) {
+			size_t cp, tail = PAGE_SIZE - off;
+
+			page = pages[ip];
+			cp = iov_iter_copy_from_user_atomic(page, from, off,
+							    min(tail, bytes));
+			flush_dcache_page(page);
+			iov_iter_advance(from, cp);
+			copied += cp;
+			bytes -= cp;
+			if (!bytes || !cp)
+				break;
+
+			if (cp < tail) {
+				off += cp;
+			} else {
+				ip++;
+				off = 0;
+			}
+		}
+
+		ni_lock(ni);
+		err = ni_write_frame(ni, pages, pages_per_frame);
+		ni_unlock(ni);
+
+		for (ip = 0; ip < pages_per_frame; ip++) {
+			page = pages[ip];
+			ClearPageDirty(page);
+			SetPageUptodate(page);
+			unlock_page(page);
+			put_page(page);
+		}
+
+		if (err)
+			goto out;
+
+		/*
+		 * We can loop for a long time in here. Be nice and allow
+		 * us to schedule out to avoid softlocking if preempt
+		 * is disabled.
+		 */
+		cond_resched();
+
+		pos += copied;
+		written += copied;
+
+		count = iov_iter_count(from);
+	}
+
+out:
+	ntfs_free(pages);
+
+	current->backing_dev_info = NULL;
+
+	if (err < 0)
+		return err;
+
+	iocb->ki_pos += written;
+	if (iocb->ki_pos > ni->i_valid)
+		ni->i_valid = iocb->ki_pos;
+
+	return written;
+}
+
+/*
+ * file_operations::write_iter
+ */
+static ssize_t ntfs_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
+{
+	struct file *file = iocb->ki_filp;
+	struct address_space *mapping = file->f_mapping;
+	struct inode *inode = mapping->host;
+	ssize_t ret;
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (is_encrypted(ni)) {
+		ntfs_inode_warn(inode, "encrypted i/o not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (is_compressed(ni) && (iocb->ki_flags & IOCB_DIRECT)) {
+		ntfs_inode_warn(inode, "direct i/o + compressed not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (is_dedup(ni)) {
+		ntfs_inode_warn(inode, "write into deduplicated not supported");
+		return -EOPNOTSUPP;
+	}
+
+	if (!inode_trylock(inode)) {
+		if (iocb->ki_flags & IOCB_NOWAIT)
+			return -EAGAIN;
+		inode_lock(inode);
+	}
+
+	ret = generic_write_checks(iocb, from);
+	if (ret <= 0)
+		goto out;
+
+	if (WARN_ON(ni->ni_flags & NI_FLAG_COMPRESSED_MASK)) {
+		/* should never be here, see ntfs_file_open*/
+		ret = -EOPNOTSUPP;
+		goto out;
+	}
+
+	ret = ntfs_extend(inode, iocb->ki_pos, ret, file);
+	if (ret)
+		goto out;
+
+	ret = is_compressed(ni) ? ntfs_compress_write(iocb, from)
+				: __generic_file_write_iter(iocb, from);
+
+out:
+	inode_unlock(inode);
+
+	if (ret > 0)
+		ret = generic_write_sync(iocb, ret);
+
+	return ret;
+}
+
+/*
+ * file_operations::open
+ */
+int ntfs_file_open(struct inode *inode, struct file *file)
+{
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (unlikely((is_compressed(ni) || is_encrypted(ni)) &&
+		     (file->f_flags & O_DIRECT))) {
+		return -EOPNOTSUPP;
+	}
+
+	/* Decompress "external compressed" file if opened for rw */
+	if ((ni->ni_flags & NI_FLAG_COMPRESSED_MASK) &&
+	    (file->f_flags & (O_WRONLY | O_RDWR | O_TRUNC))) {
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+		int err = ni_decompress_file(ni);
+
+		if (err)
+			return err;
+#else
+		ntfs_inode_warn(
+			inode,
+			"activate CONFIG_NTFS3_LZX_XPRESS to write external compressed files");
+		return -EOPNOTSUPP;
+#endif
+	}
+
+	return generic_file_open(inode, file);
+}
+
+/*
+ * file_operations::release
+ */
+static int ntfs_file_release(struct inode *inode, struct file *file)
+{
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	int err = 0;
+
+	/* if we are the last writer on the inode, drop the block reservation */
+	if (sbi->options.prealloc && ((file->f_mode & FMODE_WRITE) &&
+				      atomic_read(&inode->i_writecount) == 1)) {
+		ni_lock(ni);
+		down_write(&ni->file.run_lock);
+
+		err = attr_set_size(ni, ATTR_DATA, NULL, 0, &ni->file.run,
+				    inode->i_size, &ni->i_valid, false, NULL);
+
+		up_write(&ni->file.run_lock);
+		ni_unlock(ni);
+	}
+	return err;
+}
+
+/* file_operations::fiemap */
+int ntfs_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
+		__u64 start, __u64 len)
+{
+	int err;
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (fieinfo->fi_flags & FIEMAP_FLAG_XATTR)
+		return -EOPNOTSUPP;
+
+	ni_lock(ni);
+
+	err = ni_fiemap(ni, fieinfo, start, len);
+
+	ni_unlock(ni);
+
+	return err;
+}
+
+const struct inode_operations ntfs_file_inode_operations = {
+	.getattr = ntfs_getattr,
+	.setattr = ntfs3_setattr,
+	.listxattr = ntfs_listxattr,
+	.permission = ntfs_permission,
+	.get_acl = ntfs_get_acl,
+	.set_acl = ntfs_set_acl,
+	.fiemap = ntfs_fiemap,
+};
+
+const struct file_operations ntfs_file_operations = {
+	.llseek = generic_file_llseek,
+	.read_iter = ntfs_file_read_iter,
+	.write_iter = ntfs_file_write_iter,
+	.unlocked_ioctl = ntfs_ioctl,
+#ifdef CONFIG_COMPAT
+	.compat_ioctl = ntfs_compat_ioctl,
+#endif
+	.splice_read = generic_file_splice_read,
+	.mmap = ntfs_file_mmap,
+	.open = ntfs_file_open,
+	.fsync = generic_file_fsync,
+	.splice_write = iter_file_splice_write,
+	.fallocate = ntfs_fallocate,
+	.release = ntfs_file_release,
+};
diff --git a/fs/ntfs3/frecord.c b/fs/ntfs3/frecord.c
new file mode 100644
index 000000000000..1999dae8c696
--- /dev/null
+++ b/fs/ntfs3/frecord.c
@@ -0,0 +1,3083 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (C) 2019-2021 Paragon Software GmbH, All rights reserved.
+ *
+ */
+
+#include <linux/blkdev.h>
+#include <linux/buffer_head.h>
+#include <linux/fiemap.h>
+#include <linux/fs.h>
+#include <linux/nls.h>
+#include <linux/vmalloc.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+#include "lib/lib.h"
+#endif
+
+static inline void get_mi_ref(const struct mft_inode *mi, struct MFT_REF *ref)
+{
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	ref->low = cpu_to_le32(mi->rno);
+	ref->high = cpu_to_le16(mi->rno >> 32);
+#else
+	ref->low = cpu_to_le32(mi->rno);
+	ref->high = 0;
+#endif
+	ref->seq = mi->mrec->seq;
+}
+
+static struct mft_inode *ni_ins_mi(struct ntfs_inode *ni, struct rb_root *tree,
+				   CLST ino, struct rb_node *ins)
+{
+	struct rb_node **p = &tree->rb_node;
+	struct rb_node *pr = NULL;
+
+	while (*p) {
+		struct mft_inode *mi;
+
+		pr = *p;
+		mi = rb_entry(pr, struct mft_inode, node);
+		if (mi->rno > ino)
+			p = &pr->rb_left;
+		else if (mi->rno < ino)
+			p = &pr->rb_right;
+		else
+			return mi;
+	}
+
+	if (!ins)
+		return NULL;
+
+	rb_link_node(ins, pr, p);
+	rb_insert_color(ins, tree);
+	return rb_entry(ins, struct mft_inode, node);
+}
+
+/*
+ * ni_find_mi
+ *
+ * finds mft_inode by record number
+ */
+static struct mft_inode *ni_find_mi(struct ntfs_inode *ni, CLST rno)
+{
+	return ni_ins_mi(ni, &ni->mi_tree, rno, NULL);
+}
+
+/*
+ * ni_add_mi
+ *
+ * adds new mft_inode into ntfs_inode
+ */
+static void ni_add_mi(struct ntfs_inode *ni, struct mft_inode *mi)
+{
+	ni_ins_mi(ni, &ni->mi_tree, mi->rno, &mi->node);
+}
+
+/*
+ * ni_remove_mi
+ *
+ * removes mft_inode from ntfs_inode
+ */
+void ni_remove_mi(struct ntfs_inode *ni, struct mft_inode *mi)
+{
+	rb_erase(&mi->node, &ni->mi_tree);
+}
+
+/*
+ * ni_std
+ *
+ * returns pointer into std_info from primary record
+ */
+struct ATTR_STD_INFO *ni_std(struct ntfs_inode *ni)
+{
+	const struct ATTRIB *attr;
+
+	attr = mi_find_attr(&ni->mi, NULL, ATTR_STD, NULL, 0, NULL);
+	return attr ? resident_data_ex(attr, sizeof(struct ATTR_STD_INFO))
+		    : NULL;
+}
+
+/*
+ * ni_std5
+ *
+ * returns pointer into std_info from primary record
+ */
+struct ATTR_STD_INFO5 *ni_std5(struct ntfs_inode *ni)
+{
+	const struct ATTRIB *attr;
+
+	attr = mi_find_attr(&ni->mi, NULL, ATTR_STD, NULL, 0, NULL);
+
+	return attr ? resident_data_ex(attr, sizeof(struct ATTR_STD_INFO5))
+		    : NULL;
+}
+
+/*
+ * ni_clear
+ *
+ * clears resources allocated by ntfs_inode
+ */
+void ni_clear(struct ntfs_inode *ni)
+{
+	struct rb_node *node;
+
+	if (!ni->vfs_inode.i_nlink && is_rec_inuse(ni->mi.mrec))
+		ni_delete_all(ni);
+
+	al_destroy(ni);
+
+	for (node = rb_first(&ni->mi_tree); node;) {
+		struct rb_node *next = rb_next(node);
+		struct mft_inode *mi = rb_entry(node, struct mft_inode, node);
+
+		rb_erase(node, &ni->mi_tree);
+		mi_put(mi);
+		node = next;
+	}
+
+	/* bad inode always has mode == S_IFREG */
+	if (ni->ni_flags & NI_FLAG_DIR)
+		indx_clear(&ni->dir);
+	else {
+		run_close(&ni->file.run);
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+		if (ni->file.offs_page) {
+			/* on-demand allocated page for offsets */
+			put_page(ni->file.offs_page);
+			ni->file.offs_page = NULL;
+		}
+#endif
+	}
+
+	mi_clear(&ni->mi);
+}
+
+/*
+ * ni_load_mi_ex
+ *
+ * finds mft_inode by record number.
+ */
+int ni_load_mi_ex(struct ntfs_inode *ni, CLST rno, struct mft_inode **mi)
+{
+	int err;
+	struct mft_inode *r;
+
+	r = ni_find_mi(ni, rno);
+	if (r)
+		goto out;
+
+	err = mi_get(ni->mi.sbi, rno, &r);
+	if (err)
+		return err;
+
+	ni_add_mi(ni, r);
+
+out:
+	if (mi)
+		*mi = r;
+	return 0;
+}
+
+/*
+ * ni_load_mi
+ *
+ * load mft_inode corresponded list_entry
+ */
+int ni_load_mi(struct ntfs_inode *ni, struct ATTR_LIST_ENTRY *le,
+	       struct mft_inode **mi)
+{
+	CLST rno;
+
+	if (!le) {
+		*mi = &ni->mi;
+		return 0;
+	}
+
+	rno = ino_get(&le->ref);
+	if (rno == ni->mi.rno) {
+		*mi = &ni->mi;
+		return 0;
+	}
+	return ni_load_mi_ex(ni, rno, mi);
+}
+
+/*
+ * ni_find_attr
+ *
+ * returns attribute and record this attribute belongs to
+ */
+struct ATTRIB *ni_find_attr(struct ntfs_inode *ni, struct ATTRIB *attr,
+			    struct ATTR_LIST_ENTRY **le_o, enum ATTR_TYPE type,
+			    const __le16 *name, u8 name_len, const CLST *vcn,
+			    struct mft_inode **mi)
+{
+	struct ATTR_LIST_ENTRY *le;
+	struct mft_inode *m;
+
+	if (!ni->attr_list.size ||
+	    (!name_len && (type == ATTR_LIST || type == ATTR_STD))) {
+		if (le_o)
+			*le_o = NULL;
+		if (mi)
+			*mi = &ni->mi;
+
+		/* Look for required attribute in primary record */
+		return mi_find_attr(&ni->mi, attr, type, name, name_len, NULL);
+	}
+
+	/* first look for list entry of required type */
+	le = al_find_ex(ni, le_o ? *le_o : NULL, type, name, name_len, vcn);
+	if (!le)
+		return NULL;
+
+	if (le_o)
+		*le_o = le;
+
+	/* Load record that contains this attribute */
+	if (ni_load_mi(ni, le, &m))
+		return NULL;
+
+	/* Look for required attribute */
+	attr = mi_find_attr(m, NULL, type, name, name_len, &le->id);
+
+	if (!attr)
+		goto out;
+
+	if (!attr->non_res) {
+		if (vcn && *vcn)
+			goto out;
+	} else if (!vcn) {
+		if (attr->nres.svcn)
+			goto out;
+	} else if (le64_to_cpu(attr->nres.svcn) > *vcn ||
+		   *vcn > le64_to_cpu(attr->nres.evcn)) {
+		goto out;
+	}
+
+	if (mi)
+		*mi = m;
+	return attr;
+
+out:
+	ntfs_set_state(ni->mi.sbi, NTFS_DIRTY_ERROR);
+	return NULL;
+}
+
+/*
+ * ni_enum_attr_ex
+ *
+ * enumerates attributes in ntfs_inode
+ */
+struct ATTRIB *ni_enum_attr_ex(struct ntfs_inode *ni, struct ATTRIB *attr,
+			       struct ATTR_LIST_ENTRY **le,
+			       struct mft_inode **mi)
+{
+	struct mft_inode *mi2;
+	struct ATTR_LIST_ENTRY *le2;
+
+	/* Do we have an attribute list? */
+	if (!ni->attr_list.size) {
+		*le = NULL;
+		if (mi)
+			*mi = &ni->mi;
+		/* Enum attributes in primary record */
+		return mi_enum_attr(&ni->mi, attr);
+	}
+
+	/* get next list entry */
+	le2 = *le = al_enumerate(ni, attr ? *le : NULL);
+	if (!le2)
+		return NULL;
+
+	/* Load record that contains the required attribute */
+	if (ni_load_mi(ni, le2, &mi2))
+		return NULL;
+
+	if (mi)
+		*mi = mi2;
+
+	/* Find attribute in loaded record */
+	return rec_find_attr_le(mi2, le2);
+}
+
+/*
+ * ni_load_attr
+ *
+ * loads attribute that contains given vcn
+ */
+struct ATTRIB *ni_load_attr(struct ntfs_inode *ni, enum ATTR_TYPE type,
+			    const __le16 *name, u8 name_len, CLST vcn,
+			    struct mft_inode **pmi)
+{
+	struct ATTR_LIST_ENTRY *le;
+	struct ATTRIB *attr;
+	struct mft_inode *mi;
+	struct ATTR_LIST_ENTRY *next;
+
+	if (!ni->attr_list.size) {
+		if (pmi)
+			*pmi = &ni->mi;
+		return mi_find_attr(&ni->mi, NULL, type, name, name_len, NULL);
+	}
+
+	le = al_find_ex(ni, NULL, type, name, name_len, NULL);
+	if (!le)
+		return NULL;
+
+	/*
+	 * Unfortunately ATTR_LIST_ENTRY contains only start vcn
+	 * So to find the ATTRIB segment that contains 'vcn' we should
+	 * enumerate some entries
+	 */
+	if (vcn) {
+		for (;; le = next) {
+			next = al_find_ex(ni, le, type, name, name_len, NULL);
+			if (!next || le64_to_cpu(next->vcn) > vcn)
+				break;
+		}
+	}
+
+	if (ni_load_mi(ni, le, &mi))
+		return NULL;
+
+	if (pmi)
+		*pmi = mi;
+
+	attr = mi_find_attr(mi, NULL, type, name, name_len, &le->id);
+	if (!attr)
+		return NULL;
+
+	if (!attr->non_res)
+		return attr;
+
+	if (le64_to_cpu(attr->nres.svcn) <= vcn &&
+	    vcn <= le64_to_cpu(attr->nres.evcn))
+		return attr;
+
+	return NULL;
+}
+
+/*
+ * ni_load_all_mi
+ *
+ * loads all subrecords
+ */
+int ni_load_all_mi(struct ntfs_inode *ni)
+{
+	int err;
+	struct ATTR_LIST_ENTRY *le;
+
+	if (!ni->attr_list.size)
+		return 0;
+
+	le = NULL;
+
+	while ((le = al_enumerate(ni, le))) {
+		CLST rno = ino_get(&le->ref);
+
+		if (rno == ni->mi.rno)
+			continue;
+
+		err = ni_load_mi_ex(ni, rno, NULL);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/*
+ * ni_add_subrecord
+ *
+ * allocate + format + attach a new subrecord
+ */
+bool ni_add_subrecord(struct ntfs_inode *ni, CLST rno, struct mft_inode **mi)
+{
+	struct mft_inode *m;
+
+	m = ntfs_zalloc(sizeof(struct mft_inode));
+	if (!m)
+		return false;
+
+	if (mi_format_new(m, ni->mi.sbi, rno, 0, ni->mi.rno == MFT_REC_MFT)) {
+		mi_put(m);
+		return false;
+	}
+
+	get_mi_ref(&ni->mi, &m->mrec->parent_ref);
+
+	ni_add_mi(ni, m);
+	*mi = m;
+	return true;
+}
+
+/*
+ * ni_remove_attr
+ *
+ * removes all attributes for the given type/name/id
+ */
+int ni_remove_attr(struct ntfs_inode *ni, enum ATTR_TYPE type,
+		   const __le16 *name, size_t name_len, bool base_only,
+		   const __le16 *id)
+{
+	int err;
+	struct ATTRIB *attr;
+	struct ATTR_LIST_ENTRY *le;
+	struct mft_inode *mi;
+	u32 type_in;
+	int diff;
+
+	if (base_only || type == ATTR_LIST || !ni->attr_list.size) {
+		attr = mi_find_attr(&ni->mi, NULL, type, name, name_len, id);
+		if (!attr)
+			return -ENOENT;
+
+		mi_remove_attr(&ni->mi, attr);
+		return 0;
+	}
+
+	type_in = le32_to_cpu(type);
+	le = NULL;
+
+	for (;;) {
+		le = al_enumerate(ni, le);
+		if (!le)
+			return 0;
+
+next_le2:
+		diff = le32_to_cpu(le->type) - type_in;
+		if (diff < 0)
+			continue;
+
+		if (diff > 0)
+			return 0;
+
+		if (le->name_len != name_len)
+			continue;
+
+		if (name_len &&
+		    memcmp(le_name(le), name, name_len * sizeof(short)))
+			continue;
+
+		if (id && le->id != *id)
+			continue;
+		err = ni_load_mi(ni, le, &mi);
+		if (err)
+			return err;
+
+		al_remove_le(ni, le);
+
+		attr = mi_find_attr(mi, NULL, type, name, name_len, id);
+		if (!attr)
+			return -ENOENT;
+
+		mi_remove_attr(mi, attr);
+
+		if (PtrOffset(ni->attr_list.le, le) >= ni->attr_list.size)
+			return 0;
+		goto next_le2;
+	}
+}
+
+/*
+ * ni_ins_new_attr
+ *
+ * inserts the attribute into record
+ * Returns not full constructed attribute or NULL if not possible to create
+ */
+static struct ATTRIB *ni_ins_new_attr(struct ntfs_inode *ni,
+				      struct mft_inode *mi,
+				      struct ATTR_LIST_ENTRY *le,
+				      enum ATTR_TYPE type, const __le16 *name,
+				      u8 name_len, u32 asize, u16 name_off,
+				      CLST svcn)
+{
+	int err;
+	struct ATTRIB *attr;
+	bool le_added = false;
+	struct MFT_REF ref;
+
+	get_mi_ref(mi, &ref);
+
+	if (type != ATTR_LIST && !le && ni->attr_list.size) {
+		err = al_add_le(ni, type, name, name_len, svcn, cpu_to_le16(-1),
+				&ref, &le);
+		if (err) {
+			/* no memory or no space */
+			return NULL;
+		}
+		le_added = true;
+
+		/*
+		 * al_add_le -> attr_set_size (list) -> ni_expand_list
+		 * which moves some attributes out of primary record
+		 * this means that name may point into moved memory
+		 * reinit 'name' from le
+		 */
+		name = le->name;
+	}
+
+	attr = mi_insert_attr(mi, type, name, name_len, asize, name_off);
+	if (!attr) {
+		if (le_added)
+			al_remove_le(ni, le);
+		return NULL;
+	}
+
+	if (type == ATTR_LIST) {
+		/*attr list is not in list entry array*/
+		goto out;
+	}
+
+	if (!le)
+		goto out;
+
+	/* Update ATTRIB Id and record reference */
+	le->id = attr->id;
+	ni->attr_list.dirty = true;
+	le->ref = ref;
+
+out:
+	return attr;
+}
+
+/*
+ * random write access to sparsed or compressed file may result to
+ * not optimized packed runs.
+ * Here it is the place to optimize it
+ */
+static int ni_repack(struct ntfs_inode *ni)
+{
+	int err = 0;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct mft_inode *mi, *mi_p = NULL;
+	struct ATTRIB *attr = NULL, *attr_p;
+	struct ATTR_LIST_ENTRY *le = NULL, *le_p;
+	CLST alloc = 0;
+	u8 cluster_bits = sbi->cluster_bits;
+	CLST svcn, evcn = 0, svcn_p, evcn_p, next_svcn;
+	u32 roff, rs = sbi->record_size;
+	struct runs_tree run;
+
+	run_init(&run);
+
+	while ((attr = ni_enum_attr_ex(ni, attr, &le, &mi))) {
+		if (!attr->non_res)
+			continue;
+
+		svcn = le64_to_cpu(attr->nres.svcn);
+		if (svcn != le64_to_cpu(le->vcn)) {
+			err = -EINVAL;
+			break;
+		}
+
+		if (!svcn) {
+			alloc = le64_to_cpu(attr->nres.alloc_size) >>
+				cluster_bits;
+			mi_p = NULL;
+		} else if (svcn != evcn + 1) {
+			err = -EINVAL;
+			break;
+		}
+
+		evcn = le64_to_cpu(attr->nres.evcn);
+
+		if (svcn > evcn + 1) {
+			err = -EINVAL;
+			break;
+		}
+
+		if (!mi_p) {
+			/* do not try if too little free space */
+			if (le32_to_cpu(mi->mrec->used) + 8 >= rs)
+				continue;
+
+			/* do not try if last attribute segment */
+			if (evcn + 1 == alloc)
+				continue;
+			run_close(&run);
+		}
+
+		roff = le16_to_cpu(attr->nres.run_off);
+		err = run_unpack(&run, sbi, ni->mi.rno, svcn, evcn, svcn,
+				 Add2Ptr(attr, roff),
+				 le32_to_cpu(attr->size) - roff);
+		if (err < 0)
+			break;
+
+		if (!mi_p) {
+			mi_p = mi;
+			attr_p = attr;
+			svcn_p = svcn;
+			evcn_p = evcn;
+			le_p = le;
+			err = 0;
+			continue;
+		}
+
+		/*
+		 * run contains data from two records: mi_p and mi
+		 * try to pack in one
+		 */
+		err = mi_pack_runs(mi_p, attr_p, &run, evcn + 1 - svcn_p);
+		if (err)
+			break;
+
+		next_svcn = le64_to_cpu(attr_p->nres.evcn) + 1;
+
+		if (next_svcn >= evcn + 1) {
+			/* we can remove this attribute segment */
+			al_remove_le(ni, le);
+			mi_remove_attr(mi, attr);
+			le = le_p;
+			continue;
+		}
+
+		attr->nres.svcn = le->vcn = cpu_to_le64(next_svcn);
+		mi->dirty = true;
+		ni->attr_list.dirty = true;
+
+		if (evcn + 1 == alloc) {
+			err = mi_pack_runs(mi, attr, &run,
+					   evcn + 1 - next_svcn);
+			if (err)
+				break;
+			mi_p = NULL;
+		} else {
+			mi_p = mi;
+			attr_p = attr;
+			svcn_p = next_svcn;
+			evcn_p = evcn;
+			le_p = le;
+			run_truncate_head(&run, next_svcn);
+		}
+	}
+
+	if (err) {
+		ntfs_inode_warn(&ni->vfs_inode, "there is a problem");
+		ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+
+		/* Pack loaded but not packed runs */
+		if (mi_p)
+			mi_pack_runs(mi_p, attr_p, &run, evcn_p + 1 - svcn_p);
+	}
+
+	run_close(&run);
+	return err;
+}
+
+/*
+ * ni_try_remove_attr_list
+ *
+ * Can we remove attribute list?
+ * Check the case when primary record contains enough space for all attributes
+ */
+static int ni_try_remove_attr_list(struct ntfs_inode *ni)
+{
+	int err = 0;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct ATTRIB *attr, *attr_list, *attr_ins;
+	struct ATTR_LIST_ENTRY *le;
+	struct mft_inode *mi;
+	u32 asize, free;
+	struct MFT_REF ref;
+	__le16 id;
+
+	if (!ni->attr_list.dirty)
+		return 0;
+
+	err = ni_repack(ni);
+	if (err)
+		return err;
+
+	attr_list = mi_find_attr(&ni->mi, NULL, ATTR_LIST, NULL, 0, NULL);
+	if (!attr_list)
+		return 0;
+
+	asize = le32_to_cpu(attr_list->size);
+
+	/* free space in primary record without attribute list */
+	free = sbi->record_size - le32_to_cpu(ni->mi.mrec->used) + asize;
+	get_mi_ref(&ni->mi, &ref);
+
+	le = NULL;
+	while ((le = al_enumerate(ni, le))) {
+		if (!memcmp(&le->ref, &ref, sizeof(ref)))
+			continue;
+
+		if (le->vcn)
+			return 0;
+
+		mi = ni_find_mi(ni, ino_get(&le->ref));
+		if (!mi)
+			return 0;
+
+		attr = mi_find_attr(mi, NULL, le->type, le_name(le),
+				    le->name_len, &le->id);
+		if (!attr)
+			return 0;
+
+		asize = le32_to_cpu(attr->size);
+		if (asize > free)
+			return 0;
+
+		free -= asize;
+	}
+
+	/* Is seems that attribute list can be removed from primary record */
+	mi_remove_attr(&ni->mi, attr_list);
+
+	/*
+	 * Repeat the cycle above and move all attributes to primary record.
+	 * It should be success!
+	 */
+	le = NULL;
+	while ((le = al_enumerate(ni, le))) {
+		if (!memcmp(&le->ref, &ref, sizeof(ref)))
+			continue;
+
+		mi = ni_find_mi(ni, ino_get(&le->ref));
+
+		attr = mi_find_attr(mi, NULL, le->type, le_name(le),
+				    le->name_len, &le->id);
+		asize = le32_to_cpu(attr->size);
+
+		/* insert into primary record */
+		attr_ins = mi_insert_attr(&ni->mi, le->type, le_name(le),
+					  le->name_len, asize,
+					  le16_to_cpu(attr->name_off));
+		id = attr_ins->id;
+
+		/* copy all except id */
+		memcpy(attr_ins, attr, asize);
+		attr_ins->id = id;
+
+		/* remove from original record */
+		mi_remove_attr(mi, attr);
+	}
+
+	run_deallocate(sbi, &ni->attr_list.run, true);
+	run_close(&ni->attr_list.run);
+	ni->attr_list.size = 0;
+	ntfs_free(ni->attr_list.le);
+	ni->attr_list.le = NULL;
+	ni->attr_list.dirty = false;
+
+	return 0;
+}
+
+/*
+ * ni_create_attr_list
+ *
+ * generates an attribute list for this primary record
+ */
+int ni_create_attr_list(struct ntfs_inode *ni)
+{
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	int err;
+	u32 lsize;
+	struct ATTRIB *attr;
+	struct ATTRIB *arr_move[7];
+	struct ATTR_LIST_ENTRY *le, *le_b[7];
+	struct MFT_REC *rec;
+	bool is_mft;
+	CLST rno = 0;
+	struct mft_inode *mi;
+	u32 free_b, nb, to_free, rs;
+	u16 sz;
+
+	is_mft = ni->mi.rno == MFT_REC_MFT;
+	rec = ni->mi.mrec;
+	rs = sbi->record_size;
+
+	/*
+	 * Skip estimating exact memory requirement
+	 * Looks like one record_size is always enough
+	 */
+	le = ntfs_malloc(al_aligned(rs));
+	if (!le) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	get_mi_ref(&ni->mi, &le->ref);
+	ni->attr_list.le = le;
+
+	attr = NULL;
+	nb = 0;
+	free_b = 0;
+	attr = NULL;
+
+	for (; (attr = mi_enum_attr(&ni->mi, attr)); le = Add2Ptr(le, sz)) {
+		sz = le_size(attr->name_len);
+		le->type = attr->type;
+		le->size = cpu_to_le16(sz);
+		le->name_len = attr->name_len;
+		le->name_off = offsetof(struct ATTR_LIST_ENTRY, name);
+		le->vcn = 0;
+		if (le != ni->attr_list.le)
+			le->ref = ni->attr_list.le->ref;
+		le->id = attr->id;
+
+		if (attr->name_len)
+			memcpy(le->name, attr_name(attr),
+			       sizeof(short) * attr->name_len);
+		else if (attr->type == ATTR_STD)
+			continue;
+		else if (attr->type == ATTR_LIST)
+			continue;
+		else if (is_mft && attr->type == ATTR_DATA)
+			continue;
+
+		if (!nb || nb < ARRAY_SIZE(arr_move)) {
+			le_b[nb] = le;
+			arr_move[nb++] = attr;
+			free_b += le32_to_cpu(attr->size);
+		}
+	}
+
+	lsize = PtrOffset(ni->attr_list.le, le);
+	ni->attr_list.size = lsize;
+
+	to_free = le32_to_cpu(rec->used) + lsize + SIZEOF_RESIDENT;
+	if (to_free <= rs) {
+		to_free = 0;
+	} else {
+		to_free -= rs;
+
+		if (to_free > free_b) {
+			err = -EINVAL;
+			goto out1;
+		}
+	}
+
+	/* Allocate child mft. */
+	err = ntfs_look_free_mft(sbi, &rno, is_mft, ni, &mi);
+	if (err)
+		goto out1;
+
+	/* Call 'mi_remove_attr' in reverse order to keep pointers 'arr_move' valid */
+	while (to_free > 0) {
+		struct ATTRIB *b = arr_move[--nb];
+		u32 asize = le32_to_cpu(b->size);
+		u16 name_off = le16_to_cpu(b->name_off);
+
+		attr = mi_insert_attr(mi, b->type, Add2Ptr(b, name_off),
+				      b->name_len, asize, name_off);
+		WARN_ON(!attr);
+
+		get_mi_ref(mi, &le_b[nb]->ref);
+		le_b[nb]->id = attr->id;
+
+		/* copy all except id */
+		memcpy(attr, b, asize);
+		attr->id = le_b[nb]->id;
+
+		WARN_ON(!mi_remove_attr(&ni->mi, b));
+
+		if (to_free <= asize)
+			break;
+		to_free -= asize;
+		WARN_ON(!nb);
+	}
+
+	attr = mi_insert_attr(&ni->mi, ATTR_LIST, NULL, 0,
+			      lsize + SIZEOF_RESIDENT, SIZEOF_RESIDENT);
+	WARN_ON(!attr);
+
+	attr->non_res = 0;
+	attr->flags = 0;
+	attr->res.data_size = cpu_to_le32(lsize);
+	attr->res.data_off = SIZEOF_RESIDENT_LE;
+	attr->res.flags = 0;
+	attr->res.res = 0;
+
+	memcpy(resident_data_ex(attr, lsize), ni->attr_list.le, lsize);
+
+	ni->attr_list.dirty = false;
+
+	mark_inode_dirty(&ni->vfs_inode);
+	goto out;
+
+out1:
+	ntfs_free(ni->attr_list.le);
+	ni->attr_list.le = NULL;
+	ni->attr_list.size = 0;
+
+out:
+	return err;
+}
+
+/*
+ * ni_ins_attr_ext
+ *
+ * This method adds an external attribute to the ntfs_inode.
+ */
+static int ni_ins_attr_ext(struct ntfs_inode *ni, struct ATTR_LIST_ENTRY *le,
+			   enum ATTR_TYPE type, const __le16 *name, u8 name_len,
+			   u32 asize, CLST svcn, u16 name_off, bool force_ext,
+			   struct ATTRIB **ins_attr, struct mft_inode **ins_mi)
+{
+	struct ATTRIB *attr;
+	struct mft_inode *mi;
+	CLST rno;
+	u64 vbo;
+	struct rb_node *node;
+	int err;
+	bool is_mft, is_mft_data;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+
+	is_mft = ni->mi.rno == MFT_REC_MFT;
+	is_mft_data = is_mft && type == ATTR_DATA && !name_len;
+
+	if (asize > sbi->max_bytes_per_attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/*
+	 * standard information and attr_list cannot be made external.
+	 * The Log File cannot have any external attributes
+	 */
+	if (type == ATTR_STD || type == ATTR_LIST ||
+	    ni->mi.rno == MFT_REC_LOG) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Create attribute list if it is not already existed */
+	if (!ni->attr_list.size) {
+		err = ni_create_attr_list(ni);
+		if (err)
+			goto out;
+	}
+
+	vbo = is_mft_data ? ((u64)svcn << sbi->cluster_bits) : 0;
+
+	if (force_ext)
+		goto insert_ext;
+
+	/* Load all subrecords into memory. */
+	err = ni_load_all_mi(ni);
+	if (err)
+		goto out;
+
+	/* Check each of loaded subrecord */
+	for (node = rb_first(&ni->mi_tree); node; node = rb_next(node)) {
+		mi = rb_entry(node, struct mft_inode, node);
+
+		if (is_mft_data &&
+		    (mi_enum_attr(mi, NULL) ||
+		     vbo <= ((u64)mi->rno << sbi->record_bits))) {
+			/* We can't accept this record 'case MFT's bootstrapping */
+			continue;
+		}
+		if (is_mft &&
+		    mi_find_attr(mi, NULL, ATTR_DATA, NULL, 0, NULL)) {
+			/*
+			 * This child record already has a ATTR_DATA.
+			 * So it can't accept any other records.
+			 */
+			continue;
+		}
+
+		if ((type != ATTR_NAME || name_len) &&
+		    mi_find_attr(mi, NULL, type, name, name_len, NULL)) {
+			/* Only indexed attributes can share same record */
+			continue;
+		}
+
+		/* Try to insert attribute into this subrecord */
+		attr = ni_ins_new_attr(ni, mi, le, type, name, name_len, asize,
+				       name_off, svcn);
+		if (!attr)
+			continue;
+
+		if (ins_attr)
+			*ins_attr = attr;
+		return 0;
+	}
+
+insert_ext:
+	/* We have to allocate a new child subrecord*/
+	err = ntfs_look_free_mft(sbi, &rno, is_mft_data, ni, &mi);
+	if (err)
+		goto out;
+
+	if (is_mft_data && vbo <= ((u64)rno << sbi->record_bits)) {
+		err = -EINVAL;
+		goto out1;
+	}
+
+	attr = ni_ins_new_attr(ni, mi, le, type, name, name_len, asize,
+			       name_off, svcn);
+	if (!attr)
+		goto out2;
+
+	if (ins_attr)
+		*ins_attr = attr;
+	if (ins_mi)
+		*ins_mi = mi;
+
+	return 0;
+
+out2:
+	ni_remove_mi(ni, mi);
+	mi_put(mi);
+	err = -EINVAL;
+
+out1:
+	ntfs_mark_rec_free(sbi, rno);
+
+out:
+	return err;
+}
+
+/*
+ * ni_insert_attr
+ *
+ * inserts an attribute into the file.
+ *
+ * If the primary record has room, it will just insert the attribute.
+ * If not, it may make the attribute external.
+ * For $MFT::Data it may make room for the attribute by
+ * making other attributes external.
+ *
+ * NOTE:
+ * The ATTR_LIST and ATTR_STD cannot be made external.
+ * This function does not fill new attribute full
+ * It only fills 'size'/'type'/'id'/'name_len' fields
+ */
+static int ni_insert_attr(struct ntfs_inode *ni, enum ATTR_TYPE type,
+			  const __le16 *name, u8 name_len, u32 asize,
+			  u16 name_off, CLST svcn, struct ATTRIB **ins_attr,
+			  struct mft_inode **ins_mi)
+{
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	int err;
+	struct ATTRIB *attr, *eattr;
+	struct MFT_REC *rec;
+	bool is_mft;
+	struct ATTR_LIST_ENTRY *le;
+	u32 list_reserve, max_free, free, used, t32;
+	__le16 id;
+	u16 t16;
+
+	is_mft = ni->mi.rno == MFT_REC_MFT;
+	rec = ni->mi.mrec;
+
+	list_reserve = SIZEOF_NONRESIDENT + 3 * (1 + 2 * sizeof(u32));
+	used = le32_to_cpu(rec->used);
+	free = sbi->record_size - used;
+
+	if (is_mft && type != ATTR_LIST) {
+		/* Reserve space for the ATTRIB List. */
+		if (free < list_reserve)
+			free = 0;
+		else
+			free -= list_reserve;
+	}
+
+	if (asize <= free) {
+		attr = ni_ins_new_attr(ni, &ni->mi, NULL, type, name, name_len,
+				       asize, name_off, svcn);
+		if (attr) {
+			if (ins_attr)
+				*ins_attr = attr;
+			if (ins_mi)
+				*ins_mi = &ni->mi;
+			err = 0;
+			goto out;
+		}
+	}
+
+	if (!is_mft || type != ATTR_DATA || svcn) {
+		/* This ATTRIB will be external. */
+		err = ni_ins_attr_ext(ni, NULL, type, name, name_len, asize,
+				      svcn, name_off, false, ins_attr, ins_mi);
+		goto out;
+	}
+
+	/*
+	 * Here we have: "is_mft && type == ATTR_DATA && !svcn
+	 *
+	 * The first chunk of the $MFT::Data ATTRIB must be the base record.
+	 * Evict as many other attributes as possible.
+	 */
+	max_free = free;
+
+	/* Estimate the result of moving all possible attributes away.*/
+	attr = NULL;
+
+	while ((attr = mi_enum_attr(&ni->mi, attr))) {
+		if (attr->type == ATTR_STD)
+			continue;
+		if (attr->type == ATTR_LIST)
+			continue;
+		max_free += le32_to_cpu(attr->size);
+	}
+
+	if (max_free < asize + list_reserve) {
+		/* Impossible to insert this attribute into primary record */
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* Start real attribute moving */
+	attr = NULL;
+
+	for (;;) {
+		attr = mi_enum_attr(&ni->mi, attr);
+		if (!attr) {
+			/* We should never be here 'cause we have already check this case */
+			err = -EINVAL;
+			goto out;
+		}
+
+		/* Skip attributes that MUST be primary record */
+		if (attr->type == ATTR_STD || attr->type == ATTR_LIST)
+			continue;
+
+		le = NULL;
+		if (ni->attr_list.size) {
+			le = al_find_le(ni, NULL, attr);
+			if (!le) {
+				/* Really this is a serious bug */
+				err = -EINVAL;
+				goto out;
+			}
+		}
+
+		t32 = le32_to_cpu(attr->size);
+		t16 = le16_to_cpu(attr->name_off);
+		err = ni_ins_attr_ext(ni, le, attr->type, Add2Ptr(attr, t16),
+				      attr->name_len, t32, attr_svcn(attr), t16,
+				      false, &eattr, NULL);
+		if (err)
+			return err;
+
+		id = eattr->id;
+		memcpy(eattr, attr, t32);
+		eattr->id = id;
+
+		/* remove attrib from primary record */
+		mi_remove_attr(&ni->mi, attr);
+
+		/* attr now points to next attribute */
+		if (attr->type == ATTR_END)
+			goto out;
+	}
+	while (asize + list_reserve > sbi->record_size - le32_to_cpu(rec->used))
+		;
+
+	attr = ni_ins_new_attr(ni, &ni->mi, NULL, type, name, name_len, asize,
+			       name_off, svcn);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (ins_attr)
+		*ins_attr = attr;
+	if (ins_mi)
+		*ins_mi = &ni->mi;
+
+out:
+	return err;
+}
+
+/*
+ * ni_expand_mft_list
+ *
+ * This method splits ATTR_DATA of $MFT
+ */
+static int ni_expand_mft_list(struct ntfs_inode *ni)
+{
+	int err = 0;
+	struct runs_tree *run = &ni->file.run;
+	u32 asize, run_size, done = 0;
+	struct ATTRIB *attr;
+	struct rb_node *node;
+	CLST mft_min, mft_new, svcn, evcn, plen;
+	struct mft_inode *mi, *mi_min, *mi_new;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+
+	/* Find the nearest Mft */
+	mft_min = 0;
+	mft_new = 0;
+	mi_min = NULL;
+
+	for (node = rb_first(&ni->mi_tree); node; node = rb_next(node)) {
+		mi = rb_entry(node, struct mft_inode, node);
+
+		attr = mi_enum_attr(mi, NULL);
+
+		if (!attr) {
+			mft_min = mi->rno;
+			mi_min = mi;
+			break;
+		}
+	}
+
+	if (ntfs_look_free_mft(sbi, &mft_new, true, ni, &mi_new)) {
+		mft_new = 0;
+		// really this is not critical
+	} else if (mft_min > mft_new) {
+		mft_min = mft_new;
+		mi_min = mi_new;
+	} else {
+		ntfs_mark_rec_free(sbi, mft_new);
+		mft_new = 0;
+		ni_remove_mi(ni, mi_new);
+	}
+
+	attr = mi_find_attr(&ni->mi, NULL, ATTR_DATA, NULL, 0, NULL);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	asize = le32_to_cpu(attr->size);
+
+	evcn = le64_to_cpu(attr->nres.evcn);
+	svcn = bytes_to_cluster(sbi, (u64)(mft_min + 1) << sbi->record_bits);
+	if (evcn + 1 >= svcn) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/*
+	 * split primary attribute [0 evcn] in two parts [0 svcn) + [svcn evcn]
+	 *
+	 * Update first part of ATTR_DATA in 'primary MFT
+	 */
+	err = run_pack(run, 0, svcn, Add2Ptr(attr, SIZEOF_NONRESIDENT),
+		       asize - SIZEOF_NONRESIDENT, &plen);
+	if (err < 0)
+		goto out;
+
+	run_size = QuadAlign(err);
+	err = 0;
+
+	if (plen < svcn) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	attr->nres.evcn = cpu_to_le64(svcn - 1);
+	attr->size = cpu_to_le32(run_size + SIZEOF_NONRESIDENT);
+	/* 'done' - how many bytes of primary MFT becomes free */
+	done = asize - run_size - SIZEOF_NONRESIDENT;
+	le32_sub_cpu(&ni->mi.mrec->used, done);
+
+	/* Estimate the size of second part: run_buf=NULL */
+	err = run_pack(run, svcn, evcn + 1 - svcn, NULL, sbi->record_size,
+		       &plen);
+	if (err < 0)
+		goto out;
+
+	run_size = QuadAlign(err);
+	err = 0;
+
+	if (plen < evcn + 1 - svcn) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/*
+	 * This function may implicitly call expand attr_list
+	 * Insert second part of ATTR_DATA in 'mi_min'
+	 */
+	attr = ni_ins_new_attr(ni, mi_min, NULL, ATTR_DATA, NULL, 0,
+			       SIZEOF_NONRESIDENT + run_size,
+			       SIZEOF_NONRESIDENT, svcn);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	attr->non_res = 1;
+	attr->name_off = SIZEOF_NONRESIDENT_LE;
+	attr->flags = 0;
+
+	run_pack(run, svcn, evcn + 1 - svcn, Add2Ptr(attr, SIZEOF_NONRESIDENT),
+		 run_size, &plen);
+
+	attr->nres.svcn = cpu_to_le64(svcn);
+	attr->nres.evcn = cpu_to_le64(evcn);
+	attr->nres.run_off = cpu_to_le16(SIZEOF_NONRESIDENT);
+
+out:
+	if (mft_new) {
+		ntfs_mark_rec_free(sbi, mft_new);
+		ni_remove_mi(ni, mi_new);
+	}
+
+	return !err && !done ? -EOPNOTSUPP : err;
+}
+
+/*
+ * ni_expand_list
+ *
+ * This method moves all possible attributes out of primary record
+ */
+int ni_expand_list(struct ntfs_inode *ni)
+{
+	int err = 0;
+	u32 asize, done = 0;
+	struct ATTRIB *attr, *ins_attr;
+	struct ATTR_LIST_ENTRY *le;
+	bool is_mft = ni->mi.rno == MFT_REC_MFT;
+	struct MFT_REF ref;
+
+	get_mi_ref(&ni->mi, &ref);
+	le = NULL;
+
+	while ((le = al_enumerate(ni, le))) {
+		if (le->type == ATTR_STD)
+			continue;
+
+		if (memcmp(&ref, &le->ref, sizeof(struct MFT_REF)))
+			continue;
+
+		if (is_mft && le->type == ATTR_DATA)
+			continue;
+
+		/* Find attribute in primary record */
+		attr = rec_find_attr_le(&ni->mi, le);
+		if (!attr) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		asize = le32_to_cpu(attr->size);
+
+		/* Always insert into new record to avoid collisions (deep recursive) */
+		err = ni_ins_attr_ext(ni, le, attr->type, attr_name(attr),
+				      attr->name_len, asize, attr_svcn(attr),
+				      le16_to_cpu(attr->name_off), true,
+				      &ins_attr, NULL);
+
+		if (err)
+			goto out;
+
+		memcpy(ins_attr, attr, asize);
+		ins_attr->id = le->id;
+		mi_remove_attr(&ni->mi, attr);
+
+		done += asize;
+		goto out;
+	}
+
+	if (!is_mft) {
+		err = -EFBIG; /* attr list is too big(?) */
+		goto out;
+	}
+
+	/* split mft data as much as possible */
+	err = ni_expand_mft_list(ni);
+	if (err)
+		goto out;
+
+out:
+	return !err && !done ? -EOPNOTSUPP : err;
+}
+
+/*
+ * ni_insert_nonresident
+ *
+ * inserts new nonresident attribute
+ */
+int ni_insert_nonresident(struct ntfs_inode *ni, enum ATTR_TYPE type,
+			  const __le16 *name, u8 name_len,
+			  const struct runs_tree *run, CLST svcn, CLST len,
+			  __le16 flags, struct ATTRIB **new_attr,
+			  struct mft_inode **mi)
+{
+	int err;
+	CLST plen;
+	struct ATTRIB *attr;
+	bool is_ext =
+		(flags & (ATTR_FLAG_SPARSED | ATTR_FLAG_COMPRESSED)) && !svcn;
+	u32 name_size = QuadAlign(name_len * sizeof(short));
+	u32 name_off = is_ext ? SIZEOF_NONRESIDENT_EX : SIZEOF_NONRESIDENT;
+	u32 run_off = name_off + name_size;
+	u32 run_size, asize;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+
+	err = run_pack(run, svcn, len, NULL, sbi->max_bytes_per_attr - run_off,
+		       &plen);
+	if (err < 0)
+		goto out;
+
+	run_size = QuadAlign(err);
+
+	if (plen < len) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	asize = run_off + run_size;
+
+	if (asize > sbi->max_bytes_per_attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	err = ni_insert_attr(ni, type, name, name_len, asize, name_off, svcn,
+			     &attr, mi);
+
+	if (err)
+		goto out;
+
+	attr->non_res = 1;
+	attr->name_off = cpu_to_le16(name_off);
+	attr->flags = flags;
+
+	run_pack(run, svcn, len, Add2Ptr(attr, run_off), run_size, &plen);
+
+	attr->nres.svcn = cpu_to_le64(svcn);
+	attr->nres.evcn = cpu_to_le64((u64)svcn + len - 1);
+
+	err = 0;
+	if (new_attr)
+		*new_attr = attr;
+
+	*(__le64 *)&attr->nres.run_off = cpu_to_le64(run_off);
+
+	attr->nres.alloc_size =
+		svcn ? 0 : cpu_to_le64((u64)len << ni->mi.sbi->cluster_bits);
+	attr->nres.data_size = attr->nres.alloc_size;
+	attr->nres.valid_size = attr->nres.alloc_size;
+
+	if (is_ext) {
+		if (flags & ATTR_FLAG_COMPRESSED)
+			attr->nres.c_unit = COMPRESSION_UNIT;
+		attr->nres.total_size = attr->nres.alloc_size;
+	}
+
+out:
+	return err;
+}
+
+/*
+ * ni_insert_resident
+ *
+ * inserts new resident attribute
+ */
+int ni_insert_resident(struct ntfs_inode *ni, u32 data_size,
+		       enum ATTR_TYPE type, const __le16 *name, u8 name_len,
+		       struct ATTRIB **new_attr, struct mft_inode **mi)
+{
+	int err;
+	u32 name_size = QuadAlign(name_len * sizeof(short));
+	u32 asize = SIZEOF_RESIDENT + name_size + QuadAlign(data_size);
+	struct ATTRIB *attr;
+
+	err = ni_insert_attr(ni, type, name, name_len, asize, SIZEOF_RESIDENT,
+			     0, &attr, mi);
+	if (err)
+		return err;
+
+	attr->non_res = 0;
+	attr->flags = 0;
+
+	attr->res.data_size = cpu_to_le32(data_size);
+	attr->res.data_off = cpu_to_le16(SIZEOF_RESIDENT + name_size);
+	if (type == ATTR_NAME)
+		attr->res.flags = RESIDENT_FLAG_INDEXED;
+	attr->res.res = 0;
+
+	if (new_attr)
+		*new_attr = attr;
+
+	return 0;
+}
+
+/*
+ * ni_remove_attr_le
+ *
+ * removes attribute from record
+ */
+int ni_remove_attr_le(struct ntfs_inode *ni, struct ATTRIB *attr,
+		      struct ATTR_LIST_ENTRY *le)
+{
+	int err;
+	struct mft_inode *mi;
+
+	err = ni_load_mi(ni, le, &mi);
+	if (err)
+		return err;
+
+	mi_remove_attr(mi, attr);
+
+	if (le)
+		al_remove_le(ni, le);
+
+	return 0;
+}
+
+/*
+ * ni_delete_all
+ *
+ * removes all attributes and frees allocates space
+ * ntfs_evict_inode->ntfs_clear_inode->ni_delete_all (if no links)
+ */
+int ni_delete_all(struct ntfs_inode *ni)
+{
+	int err;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	struct ATTRIB *attr = NULL;
+	struct rb_node *node;
+	u16 roff;
+	u32 asize;
+	CLST svcn, evcn;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	bool nt3 = is_ntfs3(sbi);
+	struct MFT_REF ref;
+
+	while ((attr = ni_enum_attr_ex(ni, attr, &le, NULL))) {
+		if (!nt3 || attr->name_len) {
+			;
+		} else if (attr->type == ATTR_REPARSE) {
+			get_mi_ref(&ni->mi, &ref);
+			ntfs_remove_reparse(sbi, 0, &ref);
+		} else if (attr->type == ATTR_ID && !attr->non_res &&
+			   le32_to_cpu(attr->res.data_size) >=
+				   sizeof(struct GUID)) {
+			ntfs_objid_remove(sbi, resident_data(attr));
+		}
+
+		if (!attr->non_res)
+			continue;
+
+		svcn = le64_to_cpu(attr->nres.svcn);
+		evcn = le64_to_cpu(attr->nres.evcn);
+
+		if (evcn + 1 <= svcn)
+			continue;
+
+		asize = le32_to_cpu(attr->size);
+		roff = le16_to_cpu(attr->nres.run_off);
+
+		/*run==1 means unpack and deallocate*/
+		run_unpack_ex(RUN_DEALLOCATE, sbi, ni->mi.rno, svcn, evcn, svcn,
+			      Add2Ptr(attr, roff), asize - roff);
+	}
+
+	if (ni->attr_list.size) {
+		run_deallocate(ni->mi.sbi, &ni->attr_list.run, true);
+		al_destroy(ni);
+	}
+
+	/* Free all subrecords */
+	for (node = rb_first(&ni->mi_tree); node;) {
+		struct rb_node *next = rb_next(node);
+		struct mft_inode *mi = rb_entry(node, struct mft_inode, node);
+
+		clear_rec_inuse(mi->mrec);
+		mi->dirty = true;
+		mi_write(mi, 0);
+
+		ntfs_mark_rec_free(sbi, mi->rno);
+		ni_remove_mi(ni, mi);
+		mi_put(mi);
+		node = next;
+	}
+
+	// Free base record
+	clear_rec_inuse(ni->mi.mrec);
+	ni->mi.dirty = true;
+	err = mi_write(&ni->mi, 0);
+
+	ntfs_mark_rec_free(sbi, ni->mi.rno);
+
+	return err;
+}
+
+/*
+ * ni_fname_name
+ *
+ * returns file name attribute by its value
+ */
+struct ATTR_FILE_NAME *ni_fname_name(struct ntfs_inode *ni,
+				     const struct cpu_str *uni,
+				     const struct MFT_REF *home_dir,
+				     struct ATTR_LIST_ENTRY **le)
+{
+	struct ATTRIB *attr = NULL;
+	struct ATTR_FILE_NAME *fname;
+
+	*le = NULL;
+
+	/* Enumerate all names */
+next:
+	attr = ni_find_attr(ni, attr, le, ATTR_NAME, NULL, 0, NULL, NULL);
+	if (!attr)
+		return NULL;
+
+	fname = resident_data_ex(attr, SIZEOF_ATTRIBUTE_FILENAME);
+	if (!fname)
+		goto next;
+
+	if (home_dir && memcmp(home_dir, &fname->home, sizeof(*home_dir)))
+		goto next;
+
+	if (!uni)
+		goto next;
+
+	if (uni->len != fname->name_len)
+		goto next;
+
+	if (ntfs_cmp_names_cpu(uni, (struct le_str *)&fname->name_len, NULL,
+			       false))
+		goto next;
+
+	return fname;
+}
+
+/*
+ * ni_fname_type
+ *
+ * returns file name attribute with given type
+ */
+struct ATTR_FILE_NAME *ni_fname_type(struct ntfs_inode *ni, u8 name_type,
+				     struct ATTR_LIST_ENTRY **le)
+{
+	struct ATTRIB *attr = NULL;
+	struct ATTR_FILE_NAME *fname;
+
+	*le = NULL;
+
+	/* Enumerate all names */
+	for (;;) {
+		attr = ni_find_attr(ni, attr, le, ATTR_NAME, NULL, 0, NULL,
+				    NULL);
+		if (!attr)
+			return NULL;
+
+		fname = resident_data_ex(attr, SIZEOF_ATTRIBUTE_FILENAME);
+		if (fname && name_type == fname->type)
+			return fname;
+	}
+}
+
+/*
+ * Process compressed/sparsed in special way
+ * NOTE: you need to set ni->std_fa = new_fa
+ * after this function to keep internal structures in consistency
+ */
+int ni_new_attr_flags(struct ntfs_inode *ni, enum FILE_ATTRIBUTE new_fa)
+{
+	struct ATTRIB *attr;
+	struct mft_inode *mi;
+	__le16 new_aflags;
+	u32 new_asize;
+
+	attr = ni_find_attr(ni, NULL, NULL, ATTR_DATA, NULL, 0, NULL, &mi);
+	if (!attr)
+		return -EINVAL;
+
+	new_aflags = attr->flags;
+
+	if (new_fa & FILE_ATTRIBUTE_SPARSE_FILE)
+		new_aflags |= ATTR_FLAG_SPARSED;
+	else
+		new_aflags &= ~ATTR_FLAG_SPARSED;
+
+	if (new_fa & FILE_ATTRIBUTE_COMPRESSED)
+		new_aflags |= ATTR_FLAG_COMPRESSED;
+	else
+		new_aflags &= ~ATTR_FLAG_COMPRESSED;
+
+	if (new_aflags == attr->flags)
+		return 0;
+
+	if ((new_aflags & (ATTR_FLAG_COMPRESSED | ATTR_FLAG_SPARSED)) ==
+	    (ATTR_FLAG_COMPRESSED | ATTR_FLAG_SPARSED)) {
+		ntfs_inode_warn(&ni->vfs_inode,
+				"file can't be sparsed and compressed");
+		return -EOPNOTSUPP;
+	}
+
+	if (!attr->non_res)
+		goto out;
+
+	if (attr->nres.data_size) {
+		ntfs_inode_warn(
+			&ni->vfs_inode,
+			"one can change sparsed/compressed only for empty files");
+		return -EOPNOTSUPP;
+	}
+
+	/* resize nonresident empty attribute in-place only*/
+	new_asize = (new_aflags & (ATTR_FLAG_COMPRESSED | ATTR_FLAG_SPARSED))
+			    ? (SIZEOF_NONRESIDENT_EX + 8)
+			    : (SIZEOF_NONRESIDENT + 8);
+
+	if (!mi_resize_attr(mi, attr, new_asize - le32_to_cpu(attr->size)))
+		return -EOPNOTSUPP;
+
+	if (new_aflags & ATTR_FLAG_SPARSED) {
+		attr->name_off = SIZEOF_NONRESIDENT_EX_LE;
+		/* windows uses 16 clusters per frame but supports one cluster per frame too*/
+		attr->nres.c_unit = 0;
+		ni->vfs_inode.i_mapping->a_ops = &ntfs_aops;
+	} else if (new_aflags & ATTR_FLAG_COMPRESSED) {
+		attr->name_off = SIZEOF_NONRESIDENT_EX_LE;
+		/* the only allowed: 16 clusters per frame */
+		attr->nres.c_unit = NTFS_LZNT_CUNIT;
+		ni->vfs_inode.i_mapping->a_ops = &ntfs_aops_cmpr;
+	} else {
+		attr->name_off = SIZEOF_NONRESIDENT_LE;
+		/* normal files */
+		attr->nres.c_unit = 0;
+		ni->vfs_inode.i_mapping->a_ops = &ntfs_aops;
+	}
+	attr->nres.run_off = attr->name_off;
+out:
+	attr->flags = new_aflags;
+	mi->dirty = true;
+
+	return 0;
+}
+
+/*
+ * ni_parse_reparse
+ *
+ * buffer is at least 24 bytes
+ */
+enum REPARSE_SIGN ni_parse_reparse(struct ntfs_inode *ni, struct ATTRIB *attr,
+				   void *buffer)
+{
+	const struct REPARSE_DATA_BUFFER *rp = NULL;
+	u8 bits;
+	u16 len;
+	typeof(rp->CompressReparseBuffer) *cmpr;
+
+	static_assert(sizeof(struct REPARSE_DATA_BUFFER) <= 24);
+
+	/* Try to estimate reparse point */
+	if (!attr->non_res) {
+		rp = resident_data_ex(attr, sizeof(struct REPARSE_DATA_BUFFER));
+	} else if (le64_to_cpu(attr->nres.data_size) >=
+		   sizeof(struct REPARSE_DATA_BUFFER)) {
+		struct runs_tree run;
+
+		run_init(&run);
+
+		if (!attr_load_runs_vcn(ni, ATTR_REPARSE, NULL, 0, &run, 0) &&
+		    !ntfs_read_run_nb(ni->mi.sbi, &run, 0, buffer,
+				      sizeof(struct REPARSE_DATA_BUFFER),
+				      NULL)) {
+			rp = buffer;
+		}
+
+		run_close(&run);
+	}
+
+	if (!rp)
+		return REPARSE_NONE;
+
+	len = le16_to_cpu(rp->ReparseDataLength);
+	switch (rp->ReparseTag) {
+	case (IO_REPARSE_TAG_MICROSOFT | IO_REPARSE_TAG_SYMBOLIC_LINK):
+		break; /* Symbolic link */
+	case IO_REPARSE_TAG_MOUNT_POINT:
+		break; /* Mount points and junctions */
+	case IO_REPARSE_TAG_SYMLINK:
+		break;
+	case IO_REPARSE_TAG_COMPRESS:
+		/*
+		 * WOF - Windows Overlay Filter - used to compress files with lzx/xpress
+		 * Unlike native NTFS file compression, the Windows Overlay Filter supports
+		 * only read operations. This means that it doesn�t need to sector-align each
+		 * compressed chunk, so the compressed data can be packed more tightly together.
+		 * If you open the file for writing, the Windows Overlay Filter just decompresses
+		 * the entire file, turning it back into a plain file.
+		 *
+		 * ntfs3 driver decompresses the entire file only on write or change size requests
+		 */
+
+		cmpr = &rp->CompressReparseBuffer;
+		if (len < sizeof(*cmpr) ||
+		    cmpr->WofVersion != WOF_CURRENT_VERSION ||
+		    cmpr->WofProvider != WOF_PROVIDER_SYSTEM ||
+		    cmpr->ProviderVer != WOF_PROVIDER_CURRENT_VERSION) {
+			return REPARSE_NONE;
+		}
+
+		switch (cmpr->CompressionFormat) {
+		case WOF_COMPRESSION_XPRESS4K:
+			bits = 0xc; // 4k
+			break;
+		case WOF_COMPRESSION_XPRESS8K:
+			bits = 0xd; // 8k
+			break;
+		case WOF_COMPRESSION_XPRESS16K:
+			bits = 0xe; // 16k
+			break;
+		case WOF_COMPRESSION_LZX32K:
+			bits = 0xf; // 32k
+			break;
+		default:
+			bits = 0x10; // 64k
+			break;
+		}
+		ni_set_ext_compress_bits(ni, bits);
+		return REPARSE_COMPRESSED;
+
+	case IO_REPARSE_TAG_DEDUP:
+		ni->ni_flags |= NI_FLAG_DEDUPLICATED;
+		return REPARSE_DEDUPLICATED;
+
+	default:
+		if (rp->ReparseTag & IO_REPARSE_TAG_NAME_SURROGATE)
+			break;
+
+		return REPARSE_NONE;
+	}
+
+	/* Looks like normal symlink */
+	return REPARSE_LINK;
+}
+
+/*
+ * helper for file_fiemap
+ * assumed ni_lock
+ * TODO: less aggressive locks
+ */
+int ni_fiemap(struct ntfs_inode *ni, struct fiemap_extent_info *fieinfo,
+	      __u64 vbo, __u64 len)
+{
+	int err = 0;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	u8 cluster_bits = sbi->cluster_bits;
+	struct runs_tree *run;
+	struct rw_semaphore *run_lock;
+	struct ATTRIB *attr;
+	CLST vcn = vbo >> cluster_bits;
+	CLST lcn, clen;
+	u64 valid = ni->i_valid;
+	u64 lbo, bytes;
+	u64 end, alloc_size;
+	size_t idx = -1;
+	u32 flags;
+	bool ok;
+
+	if (S_ISDIR(ni->vfs_inode.i_mode)) {
+		run = &ni->dir.alloc_run;
+		attr = ni_find_attr(ni, NULL, NULL, ATTR_ALLOC, I30_NAME,
+				    ARRAY_SIZE(I30_NAME), NULL, NULL);
+		run_lock = &ni->dir.run_lock;
+	} else {
+		run = &ni->file.run;
+		attr = ni_find_attr(ni, NULL, NULL, ATTR_DATA, NULL, 0, NULL,
+				    NULL);
+		if (!attr) {
+			err = -EINVAL;
+			goto out;
+		}
+		if (is_attr_compressed(attr)) {
+			/*unfortunately cp -r incorrectly treats compressed clusters*/
+			err = -EOPNOTSUPP;
+			ntfs_inode_warn(
+				&ni->vfs_inode,
+				"fiemap is not supported for compressed file (cp -r)");
+			goto out;
+		}
+		run_lock = &ni->file.run_lock;
+	}
+
+	if (!attr || !attr->non_res) {
+		err = fiemap_fill_next_extent(
+			fieinfo, 0, 0,
+			attr ? le32_to_cpu(attr->res.data_size) : 0,
+			FIEMAP_EXTENT_DATA_INLINE | FIEMAP_EXTENT_LAST |
+				FIEMAP_EXTENT_MERGED);
+		goto out;
+	}
+
+	end = vbo + len;
+	alloc_size = le64_to_cpu(attr->nres.alloc_size);
+	if (end > alloc_size)
+		end = alloc_size;
+
+	down_read(run_lock);
+
+	while (vbo < end) {
+		if (idx == -1) {
+			ok = run_lookup_entry(run, vcn, &lcn, &clen, &idx);
+		} else {
+			CLST vcn_next = vcn;
+
+			ok = run_get_entry(run, ++idx, &vcn, &lcn, &clen) &&
+			     vcn == vcn_next;
+			if (!ok)
+				vcn = vcn_next;
+		}
+
+		if (!ok) {
+			up_read(run_lock);
+			down_write(run_lock);
+
+			err = attr_load_runs_vcn(ni, attr->type,
+						 attr_name(attr),
+						 attr->name_len, run, vcn);
+
+			up_write(run_lock);
+			down_read(run_lock);
+
+			if (err)
+				break;
+
+			ok = run_lookup_entry(run, vcn, &lcn, &clen, &idx);
+
+			if (!ok) {
+				err = -EINVAL;
+				break;
+			}
+		}
+
+		if (!clen) {
+			err = -EINVAL; // ?
+			break;
+		}
+
+		if (lcn == SPARSE_LCN) {
+			vcn += clen;
+			vbo = (u64)vcn << cluster_bits;
+			continue;
+		}
+
+		flags = FIEMAP_EXTENT_MERGED;
+		if (S_ISDIR(ni->vfs_inode.i_mode)) {
+			;
+		} else if (is_attr_compressed(attr)) {
+			CLST clst_data;
+
+			err = attr_is_frame_compressed(
+				ni, attr, vcn >> attr->nres.c_unit, &clst_data);
+			if (err)
+				break;
+			if (clst_data < NTFS_LZNT_CLUSTERS)
+				flags |= FIEMAP_EXTENT_ENCODED;
+		} else if (is_attr_encrypted(attr)) {
+			flags |= FIEMAP_EXTENT_DATA_ENCRYPTED;
+		}
+
+		vbo = (u64)vcn << cluster_bits;
+		bytes = (u64)clen << cluster_bits;
+		lbo = (u64)lcn << cluster_bits;
+
+		vcn += clen;
+
+		if (vbo + bytes >= end) {
+			bytes = end - vbo;
+			flags |= FIEMAP_EXTENT_LAST;
+		}
+
+		if (vbo + bytes <= valid) {
+			;
+		} else if (vbo >= valid) {
+			flags |= FIEMAP_EXTENT_UNWRITTEN;
+		} else {
+			/* vbo < valid && valid < vbo + bytes */
+			u64 dlen = valid - vbo;
+
+			err = fiemap_fill_next_extent(fieinfo, vbo, lbo, dlen,
+						      flags);
+			if (err < 0)
+				break;
+			if (err == 1) {
+				err = 0;
+				break;
+			}
+
+			vbo = valid;
+			bytes -= dlen;
+			if (!bytes)
+				continue;
+
+			lbo += dlen;
+			flags |= FIEMAP_EXTENT_UNWRITTEN;
+		}
+
+		err = fiemap_fill_next_extent(fieinfo, vbo, lbo, bytes, flags);
+		if (err < 0)
+			break;
+		if (err == 1) {
+			err = 0;
+			break;
+		}
+
+		vbo += bytes;
+	}
+
+	up_read(run_lock);
+
+out:
+	return err;
+}
+
+/*
+ * When decompressing, we typically obtain more than one page per reference.
+ * We inject the additional pages into the page cache.
+ */
+int ni_readpage_cmpr(struct ntfs_inode *ni, struct page *page)
+{
+	int err;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct address_space *mapping = page->mapping;
+	pgoff_t index = page->index;
+	u64 frame_vbo, vbo = (u64)index << PAGE_SHIFT;
+	struct page **pages = NULL; /*array of at most 16 pages. stack?*/
+	u8 frame_bits;
+	CLST frame;
+	u32 i, idx, frame_size, pages_per_frame;
+	gfp_t gfp_mask;
+	struct page *pg;
+
+	if (vbo >= ni->vfs_inode.i_size) {
+		SetPageUptodate(page);
+		err = 0;
+		goto out;
+	}
+
+	if (ni->ni_flags & NI_FLAG_COMPRESSED_MASK) {
+		/* xpress or lzx */
+		frame_bits = ni_ext_compress_bits(ni);
+	} else {
+		/* lznt compression*/
+		frame_bits = NTFS_LZNT_CUNIT + sbi->cluster_bits;
+	}
+	frame_size = 1u << frame_bits;
+	frame = vbo >> frame_bits;
+	frame_vbo = (u64)frame << frame_bits;
+	idx = (vbo - frame_vbo) >> PAGE_SHIFT;
+
+	pages_per_frame = frame_size >> PAGE_SHIFT;
+	pages = ntfs_zalloc(pages_per_frame * sizeof(struct page *));
+	if (!pages) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	pages[idx] = page;
+	index = frame_vbo >> PAGE_SHIFT;
+	gfp_mask = mapping_gfp_mask(mapping);
+
+	for (i = 0; i < pages_per_frame; i++, index++) {
+		if (i == idx)
+			continue;
+
+		pg = find_or_create_page(mapping, index, gfp_mask);
+		if (!pg) {
+			err = -ENOMEM;
+			goto out1;
+		}
+		pages[i] = pg;
+	}
+
+	err = ni_read_frame(ni, frame_vbo, pages, pages_per_frame);
+
+out1:
+	if (err)
+		SetPageError(page);
+
+	for (i = 0; i < pages_per_frame; i++) {
+		pg = pages[i];
+		if (i == idx)
+			continue;
+		unlock_page(pg);
+		put_page(pg);
+	}
+
+out:
+	/* At this point, err contains 0 or -EIO depending on the "critical" page */
+	ntfs_free(pages);
+	unlock_page(page);
+
+	return err;
+}
+
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+/*
+ * decompress lzx/xpress compressed file
+ * remove ATTR_DATA::WofCompressedData
+ * remove ATTR_REPARSE
+ */
+int ni_decompress_file(struct ntfs_inode *ni)
+{
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct inode *inode = &ni->vfs_inode;
+	loff_t i_size = inode->i_size;
+	struct address_space *mapping = inode->i_mapping;
+	gfp_t gfp_mask = mapping_gfp_mask(mapping);
+	struct page **pages = NULL;
+	struct ATTR_LIST_ENTRY *le;
+	struct ATTRIB *attr;
+	CLST vcn, cend, lcn, clen, end;
+	pgoff_t index;
+	u64 vbo;
+	u8 frame_bits;
+	u32 i, frame_size, pages_per_frame, bytes;
+	struct mft_inode *mi;
+	int err;
+
+	/* clusters for decompressed data*/
+	cend = bytes_to_cluster(sbi, i_size);
+
+	if (!i_size)
+		goto remove_wof;
+
+	/* check in advance */
+	if (cend > wnd_zeroes(&sbi->used.bitmap)) {
+		err = -ENOSPC;
+		goto out;
+	}
+
+	frame_bits = ni_ext_compress_bits(ni);
+	frame_size = 1u << frame_bits;
+	pages_per_frame = frame_size >> PAGE_SHIFT;
+	pages = ntfs_zalloc(pages_per_frame * sizeof(struct page *));
+	if (!pages) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	/*
+	 * Step 1: decompress data and copy to new allocated clusters
+	 */
+	index = 0;
+	for (vbo = 0; vbo < i_size; vbo += bytes) {
+		u32 nr_pages;
+		bool new;
+
+		if (vbo + frame_size > i_size) {
+			bytes = i_size - vbo;
+			nr_pages = (bytes + PAGE_SIZE - 1) >> PAGE_SHIFT;
+		} else {
+			nr_pages = pages_per_frame;
+			bytes = frame_size;
+		}
+
+		end = bytes_to_cluster(sbi, vbo + bytes);
+
+		for (vcn = vbo >> sbi->cluster_bits; vcn < end; vcn += clen) {
+			err = attr_data_get_block(ni, vcn, cend - vcn, &lcn,
+						  &clen, &new);
+			if (err)
+				goto out;
+		}
+
+		for (i = 0; i < pages_per_frame; i++, index++) {
+			struct page *pg;
+
+			pg = find_or_create_page(mapping, index, gfp_mask);
+			if (!pg) {
+				while (i--) {
+					unlock_page(pages[i]);
+					put_page(pages[i]);
+				}
+				err = -ENOMEM;
+				goto out;
+			}
+			pages[i] = pg;
+		}
+
+		err = ni_read_frame(ni, vbo, pages, pages_per_frame);
+
+		if (!err) {
+			down_read(&ni->file.run_lock);
+			err = ntfs_bio_pages(sbi, &ni->file.run, pages,
+					     nr_pages, vbo, bytes,
+					     REQ_OP_WRITE);
+			up_read(&ni->file.run_lock);
+		}
+
+		for (i = 0; i < pages_per_frame; i++) {
+			unlock_page(pages[i]);
+			put_page(pages[i]);
+		}
+
+		if (err)
+			goto out;
+
+		cond_resched();
+	}
+
+remove_wof:
+	/*
+	 * Step 2: deallocate attributes ATTR_DATA::WofCompressedData and ATTR_REPARSE
+	 */
+	attr = NULL;
+	le = NULL;
+	while ((attr = ni_enum_attr_ex(ni, attr, &le, NULL))) {
+		CLST svcn, evcn;
+		u32 asize, roff;
+
+		if (attr->type == ATTR_REPARSE) {
+			struct MFT_REF ref;
+
+			get_mi_ref(&ni->mi, &ref);
+			ntfs_remove_reparse(sbi, 0, &ref);
+		}
+
+		if (!attr->non_res)
+			continue;
+
+		if (attr->type != ATTR_REPARSE &&
+		    (attr->type != ATTR_DATA ||
+		     attr->name_len != ARRAY_SIZE(WOF_NAME) ||
+		     memcmp(attr_name(attr), WOF_NAME, sizeof(WOF_NAME))))
+			continue;
+
+		svcn = le64_to_cpu(attr->nres.svcn);
+		evcn = le64_to_cpu(attr->nres.evcn);
+
+		if (evcn + 1 <= svcn)
+			continue;
+
+		asize = le32_to_cpu(attr->size);
+		roff = le16_to_cpu(attr->nres.run_off);
+
+		/*run==1 means unpack and deallocate*/
+		run_unpack_ex(RUN_DEALLOCATE, sbi, ni->mi.rno, svcn, evcn, svcn,
+			      Add2Ptr(attr, roff), asize - roff);
+	}
+
+	/*
+	 * Step 3: remove attribute ATTR_DATA::WofCompressedData
+	 */
+	err = ni_remove_attr(ni, ATTR_DATA, WOF_NAME, ARRAY_SIZE(WOF_NAME),
+			     false, NULL);
+	if (err)
+		goto out;
+
+	/*
+	 * Step 4: remove ATTR_REPARSE
+	 */
+	err = ni_remove_attr(ni, ATTR_REPARSE, NULL, 0, false, NULL);
+	if (err)
+		goto out;
+
+	/*
+	 * Step 5: remove sparse flag from data attribute
+	 */
+	attr = ni_find_attr(ni, NULL, NULL, ATTR_DATA, NULL, 0, NULL, &mi);
+	if (!attr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (attr->non_res && is_attr_sparsed(attr)) {
+		/* sparsed attribute header is 8 bytes bigger than normal*/
+		struct MFT_REC *rec = mi->mrec;
+		u32 used = le32_to_cpu(rec->used);
+		u32 asize = le32_to_cpu(attr->size);
+		u16 roff = le16_to_cpu(attr->nres.run_off);
+		char *rbuf = Add2Ptr(attr, roff);
+
+		memmove(rbuf - 8, rbuf, used - PtrOffset(rec, rbuf));
+		attr->size = cpu_to_le32(asize - 8);
+		attr->flags &= ~ATTR_FLAG_SPARSED;
+		attr->nres.run_off = cpu_to_le16(roff - 8);
+		attr->nres.c_unit = 0;
+		rec->used = cpu_to_le32(used - 8);
+		mi->dirty = true;
+		ni->std_fa &= ~(FILE_ATTRIBUTE_SPARSE_FILE |
+				FILE_ATTRIBUTE_REPARSE_POINT);
+
+		mark_inode_dirty(inode);
+	}
+
+	/* clear cached flag */
+	ni->ni_flags &= ~NI_FLAG_COMPRESSED_MASK;
+	if (ni->file.offs_page) {
+		put_page(ni->file.offs_page);
+		ni->file.offs_page = NULL;
+	}
+	mapping->a_ops = &ntfs_aops;
+
+out:
+	ntfs_free(pages);
+	if (err) {
+		make_bad_inode(inode);
+		ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+	}
+
+	return err;
+}
+
+/* external compression lzx/xpress */
+static int decompress_lzx_xpress(struct ntfs_sb_info *sbi, const char *cmpr,
+				 size_t cmpr_size, void *unc, size_t unc_size,
+				 u32 frame_size)
+{
+	int err;
+	void *ctx;
+
+	if (cmpr_size == unc_size) {
+		/* frame not compressed */
+		memcpy(unc, cmpr, unc_size);
+		return 0;
+	}
+
+	err = 0;
+	if (frame_size == 0x8000) {
+		mutex_lock(&sbi->compress.mtx_lzx);
+		/* LZX: frame compressed */
+		ctx = sbi->compress.lzx;
+		if (!ctx) {
+			/* Lazy initialize lzx decompress context */
+			ctx = lzx_allocate_decompressor();
+			if (!ctx) {
+				err = -ENOMEM;
+				goto out1;
+			}
+
+			sbi->compress.lzx = ctx;
+		}
+
+		if (lzx_decompress(ctx, cmpr, cmpr_size, unc, unc_size)) {
+			/* treat all errors as "invalid argument" */
+			err = -EINVAL;
+		}
+out1:
+		mutex_unlock(&sbi->compress.mtx_lzx);
+	} else {
+		/* XPRESS: frame compressed */
+		mutex_lock(&sbi->compress.mtx_xpress);
+		ctx = sbi->compress.xpress;
+		if (!ctx) {
+			/* Lazy initialize xpress decompress context */
+			ctx = xpress_allocate_decompressor();
+			if (!ctx) {
+				err = -ENOMEM;
+				goto out2;
+			}
+
+			sbi->compress.xpress = ctx;
+		}
+
+		if (xpress_decompress(ctx, cmpr, cmpr_size, unc, unc_size)) {
+			/* treat all errors as "invalid argument" */
+			err = -EINVAL;
+		}
+out2:
+		mutex_unlock(&sbi->compress.mtx_xpress);
+	}
+	return err;
+}
+#endif
+
+/*
+ * ni_read_frame
+ *
+ * pages - array of locked pages
+ */
+int ni_read_frame(struct ntfs_inode *ni, u64 frame_vbo, struct page **pages,
+		  u32 pages_per_frame)
+{
+	int err;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	u8 cluster_bits = sbi->cluster_bits;
+	char *frame_ondisk = NULL;
+	char *frame_mem = NULL;
+	struct page **pages_disk = NULL;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	struct runs_tree *run = &ni->file.run;
+	u64 valid_size = ni->i_valid;
+	u64 vbo_disk;
+	size_t unc_size;
+	u32 frame_size, i, npages_disk, ondisk_size;
+	struct page *pg;
+	struct ATTRIB *attr;
+	CLST frame, clst_data;
+
+	/*
+	 * To simplify decompress algorithm do vmap for source and target pages
+	 */
+	for (i = 0; i < pages_per_frame; i++)
+		kmap(pages[i]);
+
+	frame_size = pages_per_frame << PAGE_SHIFT;
+	frame_mem = vmap(pages, pages_per_frame, VM_MAP, PAGE_KERNEL);
+	if (!frame_mem) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	attr = ni_find_attr(ni, NULL, &le, ATTR_DATA, NULL, 0, NULL, NULL);
+	if (!attr) {
+		err = -ENOENT;
+		goto out1;
+	}
+
+	if (!attr->non_res) {
+		u32 data_size = le32_to_cpu(attr->res.data_size);
+
+		memset(frame_mem, 0, frame_size);
+		if (frame_vbo < data_size) {
+			ondisk_size = data_size - frame_vbo;
+			memcpy(frame_mem, resident_data(attr) + frame_vbo,
+			       min(ondisk_size, frame_size));
+		}
+		err = 0;
+		goto out1;
+	}
+
+	if (frame_vbo >= valid_size) {
+		memset(frame_mem, 0, frame_size);
+		err = 0;
+		goto out1;
+	}
+
+	if (ni->ni_flags & NI_FLAG_COMPRESSED_MASK) {
+#ifndef CONFIG_NTFS3_LZX_XPRESS
+		err = -EOPNOTSUPP;
+		goto out1;
+#else
+		u32 frame_bits = ni_ext_compress_bits(ni);
+		u64 frame64 = frame_vbo >> frame_bits;
+		u64 frames, vbo_data;
+
+		if (frame_size != (1u << frame_bits)) {
+			err = -EINVAL;
+			goto out1;
+		}
+		switch (frame_size) {
+		case 0x1000:
+		case 0x2000:
+		case 0x4000:
+		case 0x8000:
+			break;
+		default:
+			/* unknown compression */
+			err = -EOPNOTSUPP;
+			goto out1;
+		}
+
+		attr = ni_find_attr(ni, attr, &le, ATTR_DATA, WOF_NAME,
+				    ARRAY_SIZE(WOF_NAME), NULL, NULL);
+		if (!attr) {
+			ntfs_inode_err(
+				&ni->vfs_inode,
+				"external compressed file should contains data attribute \"WofCompressedData\"");
+			err = -EINVAL;
+			goto out1;
+		}
+
+		if (!attr->non_res) {
+			run = NULL;
+		} else {
+			run = run_alloc();
+			if (!run) {
+				err = -ENOMEM;
+				goto out1;
+			}
+		}
+
+		frames = (ni->vfs_inode.i_size - 1) >> frame_bits;
+
+		err = attr_wof_frame_info(ni, attr, run, frame64, frames,
+					  frame_bits, &ondisk_size, &vbo_data);
+		if (err)
+			goto out2;
+
+		if (frame64 == frames) {
+			unc_size = 1 + ((ni->vfs_inode.i_size - 1) &
+					(frame_size - 1));
+			ondisk_size = attr_size(attr) - vbo_data;
+		} else {
+			unc_size = frame_size;
+		}
+
+		if (ondisk_size > frame_size) {
+			err = -EINVAL;
+			goto out2;
+		}
+
+		if (!attr->non_res) {
+			if (vbo_data + ondisk_size >
+			    le32_to_cpu(attr->res.data_size)) {
+				err = -EINVAL;
+				goto out1;
+			}
+
+			err = decompress_lzx_xpress(
+				sbi, Add2Ptr(resident_data(attr), vbo_data),
+				ondisk_size, frame_mem, unc_size, frame_size);
+			goto out1;
+		}
+		vbo_disk = vbo_data;
+		/* load all runs to read [vbo_disk-vbo_to) */
+		err = attr_load_runs_range(ni, ATTR_DATA, WOF_NAME,
+					   ARRAY_SIZE(WOF_NAME), run, vbo_disk,
+					   vbo_data + ondisk_size);
+		if (err)
+			goto out2;
+		npages_disk = (ondisk_size + (vbo_disk & (PAGE_SIZE - 1)) +
+			       PAGE_SIZE - 1) >>
+			      PAGE_SHIFT;
+#endif
+	} else if (is_attr_compressed(attr)) {
+		/* lznt compression*/
+		if (sbi->cluster_size > NTFS_LZNT_MAX_CLUSTER) {
+			err = -EOPNOTSUPP;
+			goto out1;
+		}
+
+		if (attr->nres.c_unit != NTFS_LZNT_CUNIT) {
+			err = -EOPNOTSUPP;
+			goto out1;
+		}
+
+		down_write(&ni->file.run_lock);
+		run_truncate_around(run, le64_to_cpu(attr->nres.svcn));
+		frame = frame_vbo >> (cluster_bits + NTFS_LZNT_CUNIT);
+		err = attr_is_frame_compressed(ni, attr, frame, &clst_data);
+		up_write(&ni->file.run_lock);
+		if (err)
+			goto out1;
+
+		if (!clst_data) {
+			memset(frame_mem, 0, frame_size);
+			goto out1;
+		}
+
+		frame_size = sbi->cluster_size << NTFS_LZNT_CUNIT;
+		ondisk_size = clst_data << cluster_bits;
+
+		if (clst_data >= NTFS_LZNT_CLUSTERS) {
+			/* frame is not compressed */
+			down_read(&ni->file.run_lock);
+			err = ntfs_bio_pages(sbi, run, pages, pages_per_frame,
+					     frame_vbo, ondisk_size,
+					     REQ_OP_READ);
+			up_read(&ni->file.run_lock);
+			goto out1;
+		}
+		vbo_disk = frame_vbo;
+		npages_disk = (ondisk_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
+	} else {
+		__builtin_unreachable();
+		err = -EINVAL;
+		goto out1;
+	}
+
+	pages_disk = ntfs_zalloc(npages_disk * sizeof(struct page *));
+	if (!pages_disk) {
+		err = -ENOMEM;
+		goto out2;
+	}
+
+	for (i = 0; i < npages_disk; i++) {
+		pg = alloc_page(GFP_KERNEL);
+		if (!pg) {
+			err = -ENOMEM;
+			goto out3;
+		}
+		pages_disk[i] = pg;
+		lock_page(pg);
+		kmap(pg);
+	}
+
+	/* read 'ondisk_size' bytes from disk */
+	down_read(&ni->file.run_lock);
+	err = ntfs_bio_pages(sbi, run, pages_disk, npages_disk, vbo_disk,
+			     ondisk_size, REQ_OP_READ);
+	up_read(&ni->file.run_lock);
+	if (err)
+		goto out3;
+
+	/*
+	 * To simplify decompress algorithm do vmap for source and target pages
+	 */
+	frame_ondisk = vmap(pages_disk, npages_disk, VM_MAP, PAGE_KERNEL_RO);
+	if (!frame_ondisk) {
+		err = -ENOMEM;
+		goto out3;
+	}
+
+	/* decompress: frame_ondisk -> frame_mem */
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+	if (run != &ni->file.run) {
+		/* LZX or XPRESS */
+		err = decompress_lzx_xpress(
+			sbi, frame_ondisk + (vbo_disk & (PAGE_SIZE - 1)),
+			ondisk_size, frame_mem, unc_size, frame_size);
+	} else
+#endif
+	{
+		/* LZNT - native ntfs compression */
+		unc_size = decompress_lznt(frame_ondisk, ondisk_size, frame_mem,
+					   frame_size);
+		if ((ssize_t)unc_size < 0)
+			err = unc_size;
+		else if (!unc_size || unc_size > frame_size)
+			err = -EINVAL;
+	}
+	if (!err && valid_size < frame_vbo + frame_size) {
+		size_t ok = valid_size - frame_vbo;
+
+		memset(frame_mem + ok, 0, frame_size - ok);
+	}
+
+	vunmap(frame_ondisk);
+
+out3:
+	for (i = 0; i < npages_disk; i++) {
+		pg = pages_disk[i];
+		if (pg) {
+			kunmap(pg);
+			unlock_page(pg);
+			put_page(pg);
+		}
+	}
+	ntfs_free(pages_disk);
+
+out2:
+#ifdef CONFIG_NTFS3_LZX_XPRESS
+	if (run != &ni->file.run)
+		run_free(run);
+#endif
+out1:
+	vunmap(frame_mem);
+out:
+	for (i = 0; i < pages_per_frame; i++) {
+		pg = pages[i];
+		kunmap(pg);
+		ClearPageError(pg);
+		SetPageUptodate(pg);
+	}
+
+	return err;
+}
+
+/*
+ * ni_write_frame
+ *
+ * pages - array of locked pages
+ */
+int ni_write_frame(struct ntfs_inode *ni, struct page **pages,
+		   u32 pages_per_frame)
+{
+	int err;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	u8 frame_bits = NTFS_LZNT_CUNIT + sbi->cluster_bits;
+	u32 frame_size = sbi->cluster_size << NTFS_LZNT_CUNIT;
+	u64 frame_vbo = (u64)pages[0]->index << PAGE_SHIFT;
+	CLST frame = frame_vbo >> frame_bits;
+	char *frame_ondisk = NULL;
+	struct page **pages_disk = NULL;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	char *frame_mem;
+	struct ATTRIB *attr;
+	struct mft_inode *mi;
+	u32 i;
+	struct page *pg;
+	size_t compr_size, ondisk_size;
+	struct lznt *lznt;
+
+	attr = ni_find_attr(ni, NULL, &le, ATTR_DATA, NULL, 0, NULL, &mi);
+	if (!attr) {
+		err = -ENOENT;
+		goto out;
+	}
+
+	if (WARN_ON(!is_attr_compressed(attr))) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (sbi->cluster_size > NTFS_LZNT_MAX_CLUSTER) {
+		err = -EOPNOTSUPP;
+		goto out;
+	}
+
+	if (!attr->non_res) {
+		down_write(&ni->file.run_lock);
+		err = attr_make_nonresident(ni, attr, le, mi,
+					    le32_to_cpu(attr->res.data_size),
+					    &ni->file.run, &attr, pages[0]);
+		up_write(&ni->file.run_lock);
+		if (err)
+			goto out;
+	}
+
+	if (attr->nres.c_unit != NTFS_LZNT_CUNIT) {
+		err = -EOPNOTSUPP;
+		goto out;
+	}
+
+	pages_disk = ntfs_zalloc(pages_per_frame * sizeof(struct page *));
+	if (!pages_disk) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	for (i = 0; i < pages_per_frame; i++) {
+		pg = alloc_page(GFP_KERNEL);
+		if (!pg) {
+			err = -ENOMEM;
+			goto out1;
+		}
+		pages_disk[i] = pg;
+		lock_page(pg);
+		kmap(pg);
+	}
+
+	/*
+	 * To simplify compress algorithm do vmap for source and target pages
+	 */
+	frame_ondisk = vmap(pages_disk, pages_per_frame, VM_MAP, PAGE_KERNEL);
+	if (!frame_ondisk) {
+		err = -ENOMEM;
+		goto out1;
+	}
+
+	for (i = 0; i < pages_per_frame; i++)
+		kmap(pages[i]);
+
+	/* map in-memory frame for read-only */
+	frame_mem = vmap(pages, pages_per_frame, VM_MAP, PAGE_KERNEL_RO);
+	if (!frame_mem) {
+		err = -ENOMEM;
+		goto out2;
+	}
+
+	mutex_lock(&sbi->compress.mtx_lznt);
+	lznt = NULL;
+	if (!sbi->compress.lznt) {
+		/*
+		 * lznt implements two levels of compression:
+		 * 0 - standard compression
+		 * 1 - best compression, requires a lot of cpu
+		 * use mount option?
+		 */
+		lznt = get_lznt_ctx(0);
+		if (!lznt) {
+			mutex_unlock(&sbi->compress.mtx_lznt);
+			err = -ENOMEM;
+			goto out3;
+		}
+
+		sbi->compress.lznt = lznt;
+		lznt = NULL;
+	}
+
+	/* compress: frame_mem -> frame_ondisk */
+	compr_size = compress_lznt(frame_mem, frame_size, frame_ondisk,
+				   frame_size, sbi->compress.lznt);
+	mutex_unlock(&sbi->compress.mtx_lznt);
+	ntfs_free(lznt);
+
+	if (compr_size + sbi->cluster_size > frame_size) {
+		/* frame is not compressed */
+		compr_size = frame_size;
+		ondisk_size = frame_size;
+	} else if (compr_size) {
+		/* frame is compressed */
+		ondisk_size = ntfs_up_cluster(sbi, compr_size);
+		memset(frame_ondisk + compr_size, 0, ondisk_size - compr_size);
+	} else {
+		/* frame is sparsed */
+		ondisk_size = 0;
+	}
+
+	down_write(&ni->file.run_lock);
+	run_truncate_around(&ni->file.run, le64_to_cpu(attr->nres.svcn));
+	err = attr_allocate_frame(ni, frame, compr_size, ni->i_valid);
+	up_write(&ni->file.run_lock);
+	if (err)
+		goto out2;
+
+	if (!ondisk_size)
+		goto out2;
+
+	down_read(&ni->file.run_lock);
+	err = ntfs_bio_pages(sbi, &ni->file.run,
+			     ondisk_size < frame_size ? pages_disk : pages,
+			     pages_per_frame, frame_vbo, ondisk_size,
+			     REQ_OP_WRITE);
+	up_read(&ni->file.run_lock);
+
+out3:
+	vunmap(frame_mem);
+
+out2:
+	for (i = 0; i < pages_per_frame; i++)
+		kunmap(pages[i]);
+
+	vunmap(frame_ondisk);
+out1:
+	for (i = 0; i < pages_per_frame; i++) {
+		pg = pages_disk[i];
+		if (pg) {
+			kunmap(pg);
+			unlock_page(pg);
+			put_page(pg);
+		}
+	}
+	ntfs_free(pages_disk);
+out:
+	return err;
+}
+
+/*
+ * update duplicate info of ATTR_FILE_NAME in MFT and in parent directories
+ */
+static bool ni_update_parent(struct ntfs_inode *ni, struct NTFS_DUP_INFO *dup,
+			     int sync)
+{
+	struct ATTRIB *attr;
+	struct mft_inode *mi;
+	struct ATTR_LIST_ENTRY *le = NULL;
+	struct ntfs_sb_info *sbi = ni->mi.sbi;
+	struct super_block *sb = sbi->sb;
+	bool re_dirty = false;
+	bool active = sb->s_flags & SB_ACTIVE;
+	bool upd_parent = ni->ni_flags & NI_FLAG_UPDATE_PARENT;
+
+	if (ni->mi.mrec->flags & RECORD_FLAG_DIR) {
+		dup->fa |= FILE_ATTRIBUTE_DIRECTORY;
+		attr = NULL;
+		dup->alloc_size = 0;
+		dup->data_size = 0;
+	} else {
+		dup->fa &= ~FILE_ATTRIBUTE_DIRECTORY;
+
+		attr = ni_find_attr(ni, NULL, &le, ATTR_DATA, NULL, 0, NULL,
+				    &mi);
+		if (!attr) {
+			dup->alloc_size = dup->data_size = 0;
+		} else if (!attr->non_res) {
+			u32 data_size = le32_to_cpu(attr->res.data_size);
+
+			dup->alloc_size = cpu_to_le64(QuadAlign(data_size));
+			dup->data_size = cpu_to_le64(data_size);
+		} else {
+			u64 new_valid = ni->i_valid;
+			u64 data_size = le64_to_cpu(attr->nres.data_size);
+			__le64 valid_le;
+
+			dup->alloc_size = is_attr_ext(attr)
+						  ? attr->nres.total_size
+						  : attr->nres.alloc_size;
+			dup->data_size = attr->nres.data_size;
+
+			if (new_valid > data_size)
+				new_valid = data_size;
+
+			valid_le = cpu_to_le64(new_valid);
+			if (valid_le != attr->nres.valid_size) {
+				attr->nres.valid_size = valid_le;
+				mi->dirty = true;
+			}
+		}
+	}
+
+	/* TODO: fill reparse info */
+	dup->reparse = 0;
+	dup->ea_size = 0;
+
+	if (ni->ni_flags & NI_FLAG_EA) {
+		attr = ni_find_attr(ni, attr, &le, ATTR_EA_INFO, NULL, 0, NULL,
+				    NULL);
+		if (attr) {
+			const struct EA_INFO *info;
+
+			info = resident_data_ex(attr, sizeof(struct EA_INFO));
+			dup->ea_size = info->size_pack;
+		}
+	}
+
+	attr = NULL;
+	le = NULL;
+
+	while ((attr = ni_find_attr(ni, attr, &le, ATTR_NAME, NULL, 0, NULL,
+				    &mi))) {
+		struct inode *dir;
+		struct ATTR_FILE_NAME *fname;
+
+		fname = resident_data_ex(attr, SIZEOF_ATTRIBUTE_FILENAME);
+		if (!fname)
+			continue;
+
+		if (memcmp(&fname->dup, dup, sizeof(fname->dup))) {
+			memcpy(&fname->dup, dup, sizeof(fname->dup));
+			mi->dirty = true;
+		} else if (!upd_parent) {
+			continue;
+		}
+
+		if (!active)
+			continue; /*avoid __wait_on_freeing_inode(inode); */
+
+		/*ntfs_iget5 may sleep*/
+		dir = ntfs_iget5(sb, &fname->home, NULL);
+		if (IS_ERR(dir)) {
+			ntfs_inode_warn(
+				&ni->vfs_inode,
+				"failed to open parent directory r=%lx to update",
+				(long)ino_get(&fname->home));
+			continue;
+		}
+
+		if (!is_bad_inode(dir)) {
+			struct ntfs_inode *dir_ni = ntfs_i(dir);
+
+			if (!ni_trylock(dir_ni)) {
+				re_dirty = true;
+			} else {
+				indx_update_dup(dir_ni, sbi, fname, dup, sync);
+				ni_unlock(dir_ni);
+			}
+		}
+		iput(dir);
+	}
+
+	return re_dirty;
+}
+
+/*
+ * ni_write_inode
+ *
+ * write mft base record and all subrecords to disk
+ */
+int ni_write_inode(struct inode *inode, int sync, const char *hint)
+{
+	int err = 0, err2;
+	struct ntfs_inode *ni = ntfs_i(inode);
+	struct super_block *sb = inode->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	bool re_dirty = false;
+	struct ATTR_STD_INFO *std;
+	struct rb_node *node, *next;
+	struct NTFS_DUP_INFO dup;
+
+	if (is_bad_inode(inode) || sb_rdonly(sb))
+		return 0;
+
+	if (!ni_trylock(ni)) {
+		/* 'ni' is under modification, skip for now */
+		mark_inode_dirty_sync(inode);
+		return 0;
+	}
+
+	if (is_rec_inuse(ni->mi.mrec) &&
+	    !(sbi->flags & NTFS_FLAGS_LOG_REPLAYING) && inode->i_nlink) {
+		bool modified = false;
+
+		/* update times in standard attribute */
+		std = ni_std(ni);
+		if (!std) {
+			err = -EINVAL;
+			goto out;
+		}
+
+		/* Update the access times if they have changed. */
+		dup.m_time = kernel2nt(&inode->i_mtime);
+		if (std->m_time != dup.m_time) {
+			std->m_time = dup.m_time;
+			modified = true;
+		}
+
+		dup.c_time = kernel2nt(&inode->i_ctime);
+		if (std->c_time != dup.c_time) {
+			std->c_time = dup.c_time;
+			modified = true;
+		}
+
+		dup.a_time = kernel2nt(&inode->i_atime);
+		if (std->a_time != dup.a_time) {
+			std->a_time = dup.a_time;
+			modified = true;
+		}
+
+		dup.fa = ni->std_fa;
+		if (std->fa != dup.fa) {
+			std->fa = dup.fa;
+			modified = true;
+		}
+
+		if (modified)
+			ni->mi.dirty = true;
+
+		if (!ntfs_is_meta_file(sbi, inode->i_ino) &&
+		    (modified || (ni->ni_flags & NI_FLAG_UPDATE_PARENT))) {
+			dup.cr_time = std->cr_time;
+			/* Not critical if this function fail */
+			re_dirty = ni_update_parent(ni, &dup, sync);
+
+			if (re_dirty)
+				ni->ni_flags |= NI_FLAG_UPDATE_PARENT;
+			else
+				ni->ni_flags &= ~NI_FLAG_UPDATE_PARENT;
+		}
+
+		/* update attribute list */
+		if (ni->attr_list.size && ni->attr_list.dirty) {
+			if (inode->i_ino != MFT_REC_MFT || sync) {
+				err = ni_try_remove_attr_list(ni);
+				if (err)
+					goto out;
+			}
+
+			err = al_update(ni);
+			if (err)
+				goto out;
+		}
+	}
+
+	for (node = rb_first(&ni->mi_tree); node; node = next) {
+		struct mft_inode *mi = rb_entry(node, struct mft_inode, node);
+		bool is_empty;
+
+		next = rb_next(node);
+
+		if (!mi->dirty)
+			continue;
+
+		is_empty = !mi_enum_attr(mi, NULL);
+
+		if (is_empty)
+			clear_rec_inuse(mi->mrec);
+
+		err2 = mi_write(mi, sync);
+		if (!err && err2)
+			err = err2;
+
+		if (is_empty) {
+			ntfs_mark_rec_free(sbi, mi->rno);
+			rb_erase(node, &ni->mi_tree);
+			mi_put(mi);
+		}
+	}
+
+	if (ni->mi.dirty) {
+		err2 = mi_write(&ni->mi, sync);
+		if (!err && err2)
+			err = err2;
+	}
+out:
+	ni_unlock(ni);
+
+	if (err) {
+		ntfs_err(sb, "%s r=%lx failed, %d.", hint, inode->i_ino, err);
+		ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+		return err;
+	}
+
+	if (re_dirty && (sb->s_flags & SB_ACTIVE))
+		mark_inode_dirty_sync(inode);
+
+	return 0;
+}
diff --git a/fs/ntfs3/namei.c b/fs/ntfs3/namei.c
new file mode 100644
index 000000000000..5e3b928984fe
--- /dev/null
+++ b/fs/ntfs3/namei.c
@@ -0,0 +1,592 @@
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
+#include <linux/namei.h>
+#include <linux/nls.h>
+
+#include "debug.h"
+#include "ntfs.h"
+#include "ntfs_fs.h"
+
+/*
+ * fill_name_de
+ *
+ * formats NTFS_DE in 'buf'
+ */
+int fill_name_de(struct ntfs_sb_info *sbi, void *buf, const struct qstr *name,
+		 const struct cpu_str *uni)
+{
+	int err;
+	struct NTFS_DE *e = buf;
+	u16 data_size;
+	struct ATTR_FILE_NAME *fname = (struct ATTR_FILE_NAME *)(e + 1);
+
+#ifndef CONFIG_NTFS3_64BIT_CLUSTER
+	e->ref.high = fname->home.high = 0;
+#endif
+	if (uni) {
+#ifdef __BIG_ENDIAN
+		int ulen = uni->len;
+		__le16 *uname = fname->name;
+		const u16 *name_cpu = uni->name;
+
+		while (ulen--)
+			*uname++ = cpu_to_le16(*name_cpu++);
+#else
+		memcpy(fname->name, uni->name, uni->len * sizeof(u16));
+#endif
+		fname->name_len = uni->len;
+
+	} else {
+		/* Convert input string to unicode */
+		err = ntfs_nls_to_utf16(sbi, name->name, name->len,
+					(struct cpu_str *)&fname->name_len,
+					NTFS_NAME_LEN, UTF16_LITTLE_ENDIAN);
+		if (err < 0)
+			return err;
+	}
+
+	fname->type = FILE_NAME_POSIX;
+	data_size = fname_full_size(fname);
+
+	e->size = cpu_to_le16(QuadAlign(data_size) + sizeof(struct NTFS_DE));
+	e->key_size = cpu_to_le16(data_size);
+	e->flags = 0;
+	e->res = 0;
+
+	return 0;
+}
+
+/*
+ * ntfs_lookup
+ *
+ * inode_operations::lookup
+ */
+static struct dentry *ntfs_lookup(struct inode *dir, struct dentry *dentry,
+				  u32 flags)
+{
+	struct ntfs_inode *ni = ntfs_i(dir);
+	struct cpu_str *uni = __getname();
+	struct inode *inode;
+	int err;
+
+	if (!uni)
+		inode = ERR_PTR(-ENOMEM);
+	else {
+		err = ntfs_nls_to_utf16(ni->mi.sbi, dentry->d_name.name,
+					dentry->d_name.len, uni, NTFS_NAME_LEN,
+					UTF16_HOST_ENDIAN);
+		if (err < 0)
+			inode = ERR_PTR(err);
+		else {
+			ni_lock(ni);
+			inode = dir_search_u(dir, uni, NULL);
+			ni_unlock(ni);
+		}
+		__putname(uni);
+	}
+
+	return d_splice_alias(inode, dentry);
+}
+
+/*
+ * ntfs_create
+ *
+ * inode_operations::create
+ */
+static int ntfs_create(struct user_namespace *mnt_userns, struct inode *dir,
+		       struct dentry *dentry, umode_t mode, bool excl)
+{
+	int err;
+	struct ntfs_inode *ni = ntfs_i(dir);
+	struct inode *inode;
+
+	ni_lock_dir(ni);
+
+	err = ntfs_create_inode(mnt_userns, dir, dentry, NULL, S_IFREG | mode,
+				0, NULL, 0, excl, NULL, &inode);
+
+	ni_unlock(ni);
+
+	return err;
+}
+
+/*
+ * ntfs_link
+ *
+ * inode_operations::link
+ */
+static int ntfs_link(struct dentry *ode, struct inode *dir, struct dentry *de)
+{
+	int err;
+	struct inode *inode = d_inode(ode);
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	if (S_ISDIR(inode->i_mode))
+		return -EPERM;
+
+	if (inode->i_nlink >= NTFS_LINK_MAX)
+		return -EMLINK;
+
+	ni_lock_dir(ntfs_i(dir));
+	if (inode != dir)
+		ni_lock(ni);
+
+	dir->i_ctime = dir->i_mtime = inode->i_ctime = current_time(inode);
+	inc_nlink(inode);
+	ihold(inode);
+
+	err = ntfs_link_inode(inode, de);
+	if (!err) {
+		mark_inode_dirty(inode);
+		mark_inode_dirty(dir);
+		d_instantiate(de, inode);
+	} else {
+		drop_nlink(inode);
+		iput(inode);
+	}
+
+	if (inode != dir)
+		ni_unlock(ni);
+	ni_unlock(ntfs_i(dir));
+
+	return err;
+}
+
+/*
+ * ntfs_unlink
+ *
+ * inode_operations::unlink
+ */
+static int ntfs_unlink(struct inode *dir, struct dentry *dentry)
+{
+	struct ntfs_inode *ni = ntfs_i(dir);
+	int err;
+
+	ni_lock_dir(ni);
+
+	err = ntfs_unlink_inode(dir, dentry);
+
+	ni_unlock(ni);
+
+	return err;
+}
+
+/*
+ * ntfs_symlink
+ *
+ * inode_operations::symlink
+ */
+static int ntfs_symlink(struct user_namespace *mnt_userns, struct inode *dir,
+			struct dentry *dentry, const char *symname)
+{
+	int err;
+	u32 size = strlen(symname);
+	struct inode *inode;
+	struct ntfs_inode *ni = ntfs_i(dir);
+
+	ni_lock_dir(ni);
+
+	err = ntfs_create_inode(mnt_userns, dir, dentry, NULL, S_IFLNK | 0777,
+				0, symname, size, 0, NULL, &inode);
+
+	ni_unlock(ni);
+
+	return err;
+}
+
+/*
+ * ntfs_mkdir
+ *
+ * inode_operations::mkdir
+ */
+static int ntfs_mkdir(struct user_namespace *mnt_userns, struct inode *dir,
+		      struct dentry *dentry, umode_t mode)
+{
+	int err;
+	struct inode *inode;
+	struct ntfs_inode *ni = ntfs_i(dir);
+
+	ni_lock_dir(ni);
+
+	err = ntfs_create_inode(mnt_userns, dir, dentry, NULL, S_IFDIR | mode,
+				0, NULL, -1, 0, NULL, &inode);
+
+	ni_unlock(ni);
+
+	return err;
+}
+
+/*
+ * ntfs_rmdir
+ *
+ * inode_operations::rm_dir
+ */
+static int ntfs_rmdir(struct inode *dir, struct dentry *dentry)
+{
+	struct ntfs_inode *ni = ntfs_i(dir);
+	int err;
+
+	ni_lock_dir(ni);
+
+	err = ntfs_unlink_inode(dir, dentry);
+
+	ni_unlock(ni);
+
+	return err;
+}
+
+/*
+ * ntfs_rename
+ *
+ * inode_operations::rename
+ */
+static int ntfs_rename(struct user_namespace *mnt_userns, struct inode *old_dir,
+		       struct dentry *old_dentry, struct inode *new_dir,
+		       struct dentry *new_dentry, u32 flags)
+{
+	int err;
+	struct super_block *sb = old_dir->i_sb;
+	struct ntfs_sb_info *sbi = sb->s_fs_info;
+	struct ntfs_inode *old_dir_ni = ntfs_i(old_dir);
+	struct ntfs_inode *new_dir_ni = ntfs_i(new_dir);
+	struct ntfs_inode *old_ni;
+	struct ATTR_FILE_NAME *old_name, *new_name, *fname;
+	u8 name_type;
+	bool is_same;
+	struct inode *old_inode, *new_inode;
+	struct NTFS_DE *old_de, *new_de;
+	struct ATTRIB *attr;
+	struct ATTR_LIST_ENTRY *le;
+	u16 new_de_key_size;
+
+	static_assert(SIZEOF_ATTRIBUTE_FILENAME_MAX + SIZEOF_RESIDENT < 1024);
+	static_assert(SIZEOF_ATTRIBUTE_FILENAME_MAX + sizeof(struct NTFS_DE) <
+		      1024);
+	static_assert(PATH_MAX >= 4 * 1024);
+
+	if (flags & ~RENAME_NOREPLACE)
+		return -EINVAL;
+
+	old_inode = d_inode(old_dentry);
+	new_inode = d_inode(new_dentry);
+
+	old_ni = ntfs_i(old_inode);
+
+	is_same = old_dentry->d_name.len == new_dentry->d_name.len &&
+		  !memcmp(old_dentry->d_name.name, new_dentry->d_name.name,
+			  old_dentry->d_name.len);
+
+	if (is_same && old_dir == new_dir) {
+		/* Nothing to do */
+		err = 0;
+		goto out;
+	}
+
+	if (ntfs_is_meta_file(sbi, old_inode->i_ino)) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	if (new_inode) {
+		/*target name exists. unlink it*/
+		dget(new_dentry);
+		ni_lock_dir(new_dir_ni);
+		err = ntfs_unlink_inode(new_dir, new_dentry);
+		ni_unlock(new_dir_ni);
+		dput(new_dentry);
+		if (err)
+			goto out;
+	}
+
+	/* allocate PATH_MAX bytes */
+	old_de = __getname();
+	if (!old_de) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	err = fill_name_de(sbi, old_de, &old_dentry->d_name, NULL);
+	if (err < 0)
+		goto out1;
+
+	old_name = (struct ATTR_FILE_NAME *)(old_de + 1);
+
+	if (is_same) {
+		new_de = old_de;
+	} else {
+		new_de = Add2Ptr(old_de, 1024);
+		err = fill_name_de(sbi, new_de, &new_dentry->d_name, NULL);
+		if (err < 0)
+			goto out1;
+	}
+
+	ni_lock_dir(old_dir_ni);
+	ni_lock(old_ni);
+
+	old_name->home.low = cpu_to_le32(old_dir->i_ino);
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	old_name->home.high = cpu_to_le16(old_dir->i_ino >> 32);
+#endif
+	old_name->home.seq = old_dir_ni->mi.mrec->seq;
+
+	/*get pointer to file_name in mft*/
+	fname = ni_fname_name(old_ni, (struct cpu_str *)&old_name->name_len,
+			      &old_name->home, &le);
+	if (!fname) {
+		err = -EINVAL;
+		goto out2;
+	}
+
+	/* Copy fname info from record into new fname */
+	new_name = (struct ATTR_FILE_NAME *)(new_de + 1);
+	memcpy(&new_name->dup, &fname->dup, sizeof(fname->dup));
+
+	name_type = paired_name(fname->type);
+
+	/* remove first name from directory */
+	err = indx_delete_entry(&old_dir_ni->dir, old_dir_ni, old_de + 1,
+				le16_to_cpu(old_de->key_size), sbi);
+	if (err)
+		goto out3;
+
+	/* remove first name from mft */
+	err = ni_remove_attr_le(old_ni, attr_from_name(fname), le);
+	if (err)
+		goto out4;
+
+	le16_add_cpu(&old_ni->mi.mrec->hard_links, -1);
+	old_ni->mi.dirty = true;
+
+	if (name_type != FILE_NAME_POSIX) {
+		/* get paired name */
+		fname = ni_fname_type(old_ni, name_type, &le);
+		if (fname) {
+			/* remove second name from directory */
+			err = indx_delete_entry(&old_dir_ni->dir, old_dir_ni,
+						fname, fname_full_size(fname),
+						sbi);
+			if (err)
+				goto out5;
+
+			/* remove second name from mft */
+			err = ni_remove_attr_le(old_ni, attr_from_name(fname),
+						le);
+			if (err)
+				goto out6;
+
+			le16_add_cpu(&old_ni->mi.mrec->hard_links, -1);
+			old_ni->mi.dirty = true;
+		}
+	}
+
+	/* Add new name */
+	new_de->ref.low = cpu_to_le32(old_inode->i_ino);
+#ifdef CONFIG_NTFS3_64BIT_CLUSTER
+	new_de->ref.high = cpu_to_le16(old_inode->i_ino >> 32);
+	new_name->home.high = cpu_to_le16(new_dir->i_ino >> 32);
+#endif
+	new_de->ref.seq = old_ni->mi.mrec->seq;
+
+	new_name->home.low = cpu_to_le32(new_dir->i_ino);
+	new_name->home.seq = ntfs_i(new_dir)->mi.mrec->seq;
+
+	new_de_key_size = le16_to_cpu(new_de->key_size);
+
+	/* insert new name in mft */
+	err = ni_insert_resident(old_ni, new_de_key_size, ATTR_NAME, NULL, 0,
+				 &attr, NULL);
+	if (err)
+		goto out7;
+
+	attr->res.flags = RESIDENT_FLAG_INDEXED;
+
+	memcpy(Add2Ptr(attr, SIZEOF_RESIDENT), new_name, new_de_key_size);
+
+	le16_add_cpu(&old_ni->mi.mrec->hard_links, 1);
+	old_ni->mi.dirty = true;
+
+	/* insert new name in directory */
+	err = indx_insert_entry(&new_dir_ni->dir, new_dir_ni, new_de, sbi,
+				NULL);
+	if (err)
+		goto out8;
+
+	if (IS_DIRSYNC(new_dir))
+		err = ntfs_sync_inode(old_inode);
+	else
+		mark_inode_dirty(old_inode);
+
+	old_dir->i_ctime = old_dir->i_mtime = current_time(old_dir);
+	if (IS_DIRSYNC(old_dir))
+		(void)ntfs_sync_inode(old_dir);
+	else
+		mark_inode_dirty(old_dir);
+
+	if (old_dir != new_dir) {
+		new_dir->i_mtime = new_dir->i_ctime = old_dir->i_ctime;
+		mark_inode_dirty(new_dir);
+	}
+
+	if (old_inode) {
+		old_inode->i_ctime = old_dir->i_ctime;
+		mark_inode_dirty(old_inode);
+	}
+
+	err = 0;
+	/* normal way */
+	goto out2;
+
+out8:
+	/* undo
+	 * ni_insert_resident(old_ni, new_de_key_size, ATTR_NAME, NULL, 0,
+	 *			 &attr, NULL);
+	 */
+	mi_remove_attr(&old_ni->mi, attr);
+out7:
+	/* undo
+	 * ni_remove_attr_le(old_ni, attr_from_name(fname), le);
+	 */
+out6:
+	/* undo
+	 * indx_delete_entry(&old_dir_ni->dir, old_dir_ni,
+	 *					fname, fname_full_size(fname),
+	 *					sbi);
+	 */
+out5:
+	/* undo
+	 * ni_remove_attr_le(old_ni, attr_from_name(fname), le);
+	 */
+out4:
+	/* undo:
+	 * indx_delete_entry(&old_dir_ni->dir, old_dir_ni, old_de + 1,
+	 *			old_de->key_size, NULL);
+	 */
+out3:
+out2:
+	ni_unlock(old_ni);
+	ni_unlock(old_dir_ni);
+out1:
+	__putname(old_de);
+out:
+	return err;
+}
+
+/*
+ * ntfs_atomic_open
+ *
+ * inode_operations::atomic_open
+ */
+static int ntfs_atomic_open(struct inode *dir, struct dentry *dentry,
+			    struct file *file, u32 flags, umode_t mode)
+{
+	int err;
+	bool excl = !!(flags & O_EXCL);
+	struct inode *inode;
+	struct ntfs_fnd *fnd = NULL;
+	struct ntfs_inode *ni = ntfs_i(dir);
+	struct dentry *d = NULL;
+	struct cpu_str *uni = __getname();
+
+	if (!uni)
+		return -ENOMEM;
+
+	err = ntfs_nls_to_utf16(ni->mi.sbi, dentry->d_name.name,
+				dentry->d_name.len, uni, NTFS_NAME_LEN,
+				UTF16_HOST_ENDIAN);
+	if (err < 0)
+		goto out;
+
+	ni_lock_dir(ni);
+
+	if (d_in_lookup(dentry)) {
+		fnd = fnd_get();
+		if (!fnd) {
+			err = -ENOMEM;
+			goto out1;
+		}
+
+		d = d_splice_alias(dir_search_u(dir, uni, fnd), dentry);
+		if (IS_ERR(d)) {
+			err = PTR_ERR(d);
+			d = NULL;
+			goto out2;
+		}
+
+		if (d)
+			dentry = d;
+	}
+
+	if (!(flags & O_CREAT) || d_really_is_positive(dentry)) {
+		err = finish_no_open(file, d);
+		goto out2;
+	}
+
+	file->f_mode |= FMODE_CREATED;
+
+	/*fnd contains tree's path to insert to*/
+	/* TODO: init_user_ns? */
+	err = ntfs_create_inode(&init_user_ns, dir, dentry, uni, mode, 0, NULL,
+				0, excl, fnd, &inode);
+	if (!err)
+		err = finish_open(file, dentry, ntfs_file_open);
+	dput(d);
+
+out2:
+	fnd_put(fnd);
+out1:
+	ni_unlock(ni);
+out:
+	__putname(uni);
+
+	return err;
+}
+
+struct dentry *ntfs3_get_parent(struct dentry *child)
+{
+	struct inode *inode = d_inode(child);
+	struct ntfs_inode *ni = ntfs_i(inode);
+
+	struct ATTR_LIST_ENTRY *le = NULL;
+	struct ATTRIB *attr = NULL;
+	struct ATTR_FILE_NAME *fname;
+
+	while ((attr = ni_find_attr(ni, attr, &le, ATTR_NAME, NULL, 0, NULL,
+				    NULL))) {
+		fname = resident_data_ex(attr, SIZEOF_ATTRIBUTE_FILENAME);
+		if (!fname)
+			continue;
+
+		return d_obtain_alias(
+			ntfs_iget5(inode->i_sb, &fname->home, NULL));
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+const struct inode_operations ntfs_dir_inode_operations = {
+	.lookup = ntfs_lookup,
+	.create = ntfs_create,
+	.link = ntfs_link,
+	.unlink = ntfs_unlink,
+	.symlink = ntfs_symlink,
+	.mkdir = ntfs_mkdir,
+	.rmdir = ntfs_rmdir,
+	.rename = ntfs_rename,
+	.permission = ntfs_permission,
+	.get_acl = ntfs_get_acl,
+	.set_acl = ntfs_set_acl,
+	.setattr = ntfs3_setattr,
+	.getattr = ntfs_getattr,
+	.listxattr = ntfs_listxattr,
+	.atomic_open = ntfs_atomic_open,
+	.fiemap = ntfs_fiemap,
+};
diff --git a/fs/ntfs3/record.c b/fs/ntfs3/record.c
new file mode 100644
index 000000000000..0d4a6251bddc
--- /dev/null
+++ b/fs/ntfs3/record.c
@@ -0,0 +1,609 @@
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
+static inline int compare_attr(const struct ATTRIB *left, enum ATTR_TYPE type,
+			       const __le16 *name, u8 name_len,
+			       const u16 *upcase)
+{
+	/* First, compare the type codes: */
+	int diff = le32_to_cpu(left->type) - le32_to_cpu(type);
+
+	if (diff)
+		return diff;
+
+	/*
+	 * They have the same type code, so we have to compare the names.
+	 */
+	return ntfs_cmp_names(attr_name(left), left->name_len, name, name_len,
+			      upcase, true);
+}
+
+/*
+ * mi_new_attt_id
+ *
+ * returns unused attribute id that is less than mrec->next_attr_id
+ */
+static __le16 mi_new_attt_id(struct mft_inode *mi)
+{
+	u16 free_id, max_id, t16;
+	struct MFT_REC *rec = mi->mrec;
+	struct ATTRIB *attr;
+	__le16 id;
+
+	id = rec->next_attr_id;
+	free_id = le16_to_cpu(id);
+	if (free_id < 0x7FFF) {
+		rec->next_attr_id = cpu_to_le16(free_id + 1);
+		return id;
+	}
+
+	/* One record can store up to 1024/24 ~= 42 attributes */
+	free_id = 0;
+	max_id = 0;
+
+	attr = NULL;
+
+	for (;;) {
+		attr = mi_enum_attr(mi, attr);
+		if (!attr) {
+			rec->next_attr_id = cpu_to_le16(max_id + 1);
+			mi->dirty = true;
+			return cpu_to_le16(free_id);
+		}
+
+		t16 = le16_to_cpu(attr->id);
+		if (t16 == free_id) {
+			free_id += 1;
+			attr = NULL;
+		} else if (max_id < t16)
+			max_id = t16;
+	}
+}
+
+int mi_get(struct ntfs_sb_info *sbi, CLST rno, struct mft_inode **mi)
+{
+	int err;
+	struct mft_inode *m = ntfs_zalloc(sizeof(struct mft_inode));
+
+	if (!m)
+		return -ENOMEM;
+
+	err = mi_init(m, sbi, rno);
+	if (err) {
+		ntfs_free(m);
+		return err;
+	}
+
+	err = mi_read(m, false);
+	if (err) {
+		mi_put(m);
+		return err;
+	}
+
+	*mi = m;
+	return 0;
+}
+
+void mi_put(struct mft_inode *mi)
+{
+	mi_clear(mi);
+	ntfs_free(mi);
+}
+
+int mi_init(struct mft_inode *mi, struct ntfs_sb_info *sbi, CLST rno)
+{
+	mi->sbi = sbi;
+	mi->rno = rno;
+	mi->mrec = ntfs_malloc(sbi->record_size);
+	if (!mi->mrec)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/*
+ * mi_read
+ *
+ * reads MFT data
+ */
+int mi_read(struct mft_inode *mi, bool is_mft)
+{
+	int err;
+	struct MFT_REC *rec = mi->mrec;
+	struct ntfs_sb_info *sbi = mi->sbi;
+	u32 bpr = sbi->record_size;
+	u64 vbo = (u64)mi->rno << sbi->record_bits;
+	struct ntfs_inode *mft_ni = sbi->mft.ni;
+	struct runs_tree *run = mft_ni ? &mft_ni->file.run : NULL;
+	struct rw_semaphore *rw_lock = NULL;
+
+	if (is_mounted(sbi)) {
+		if (!is_mft) {
+			rw_lock = &mft_ni->file.run_lock;
+			down_read(rw_lock);
+		}
+	}
+
+	err = ntfs_read_bh(sbi, run, vbo, &rec->rhdr, bpr, &mi->nb);
+	if (rw_lock)
+		up_read(rw_lock);
+	if (!err)
+		goto ok;
+
+	if (err == -E_NTFS_FIXUP) {
+		mi->dirty = true;
+		goto ok;
+	}
+
+	if (err != -ENOENT)
+		goto out;
+
+	if (rw_lock) {
+		ni_lock(mft_ni);
+		down_write(rw_lock);
+	}
+	err = attr_load_runs_vcn(mft_ni, ATTR_DATA, NULL, 0, &mft_ni->file.run,
+				 vbo >> sbi->cluster_bits);
+	if (rw_lock) {
+		up_write(rw_lock);
+		ni_unlock(mft_ni);
+	}
+	if (err)
+		goto out;
+
+	if (rw_lock)
+		down_read(rw_lock);
+	err = ntfs_read_bh(sbi, run, vbo, &rec->rhdr, bpr, &mi->nb);
+	if (rw_lock)
+		up_read(rw_lock);
+
+	if (err == -E_NTFS_FIXUP) {
+		mi->dirty = true;
+		goto ok;
+	}
+	if (err)
+		goto out;
+
+ok:
+	/* check field 'total' only here */
+	if (le32_to_cpu(rec->total) != bpr) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	return 0;
+
+out:
+	return err;
+}
+
+struct ATTRIB *mi_enum_attr(struct mft_inode *mi, struct ATTRIB *attr)
+{
+	const struct MFT_REC *rec = mi->mrec;
+	u32 used = le32_to_cpu(rec->used);
+	u32 t32, off, asize;
+	u16 t16;
+
+	if (!attr) {
+		u32 total = le32_to_cpu(rec->total);
+
+		off = le16_to_cpu(rec->attr_off);
+
+		if (used > total)
+			return NULL;
+
+		if (off >= used || off < MFTRECORD_FIXUP_OFFSET_1 ||
+		    !IsDwordAligned(off)) {
+			return NULL;
+		}
+
+		/* Skip non-resident records */
+		if (!is_rec_inuse(rec))
+			return NULL;
+
+		attr = Add2Ptr(rec, off);
+	} else {
+		/* Check if input attr inside record */
+		off = PtrOffset(rec, attr);
+		if (off >= used)
+			return NULL;
+
+		asize = le32_to_cpu(attr->size);
+		if (asize < SIZEOF_RESIDENT) {
+			/* Impossible 'cause we should not return such attribute */
+			return NULL;
+		}
+
+		attr = Add2Ptr(attr, asize);
+		off += asize;
+	}
+
+	asize = le32_to_cpu(attr->size);
+
+	/* Can we use the first field (attr->type) */
+	if (off + 8 > used) {
+		static_assert(QuadAlign(sizeof(enum ATTR_TYPE)) == 8);
+		return NULL;
+	}
+
+	if (attr->type == ATTR_END) {
+		/* end of enumeration */
+		return NULL;
+	}
+
+	/* 0x100 is last known attribute for now*/
+	t32 = le32_to_cpu(attr->type);
+	if ((t32 & 0xf) || (t32 > 0x100))
+		return NULL;
+
+	/* Check boundary */
+	if (off + asize > used)
+		return NULL;
+
+	/* Check size of attribute */
+	if (!attr->non_res) {
+		if (asize < SIZEOF_RESIDENT)
+			return NULL;
+
+		t16 = le16_to_cpu(attr->res.data_off);
+
+		if (t16 > asize)
+			return NULL;
+
+		t32 = le32_to_cpu(attr->res.data_size);
+		if (t16 + t32 > asize)
+			return NULL;
+
+		return attr;
+	}
+
+	/* Check some nonresident fields */
+	if (attr->name_len &&
+	    le16_to_cpu(attr->name_off) + sizeof(short) * attr->name_len >
+		    le16_to_cpu(attr->nres.run_off)) {
+		return NULL;
+	}
+
+	if (attr->nres.svcn || !is_attr_ext(attr)) {
+		if (asize + 8 < SIZEOF_NONRESIDENT)
+			return NULL;
+
+		if (attr->nres.c_unit)
+			return NULL;
+	} else if (asize + 8 < SIZEOF_NONRESIDENT_EX)
+		return NULL;
+
+	return attr;
+}
+
+/*
+ * mi_find_attr
+ *
+ * finds the attribute by type and name and id
+ */
+struct ATTRIB *mi_find_attr(struct mft_inode *mi, struct ATTRIB *attr,
+			    enum ATTR_TYPE type, const __le16 *name,
+			    size_t name_len, const __le16 *id)
+{
+	u32 type_in = le32_to_cpu(type);
+	u32 atype;
+
+next_attr:
+	attr = mi_enum_attr(mi, attr);
+	if (!attr)
+		return NULL;
+
+	atype = le32_to_cpu(attr->type);
+	if (atype > type_in)
+		return NULL;
+
+	if (atype < type_in)
+		goto next_attr;
+
+	if (attr->name_len != name_len)
+		goto next_attr;
+
+	if (name_len && memcmp(attr_name(attr), name, name_len * sizeof(short)))
+		goto next_attr;
+
+	if (id && *id != attr->id)
+		goto next_attr;
+
+	return attr;
+}
+
+int mi_write(struct mft_inode *mi, int wait)
+{
+	struct MFT_REC *rec;
+	int err;
+	struct ntfs_sb_info *sbi;
+
+	if (!mi->dirty)
+		return 0;
+
+	sbi = mi->sbi;
+	rec = mi->mrec;
+
+	err = ntfs_write_bh(sbi, &rec->rhdr, &mi->nb, wait);
+	if (err)
+		return err;
+
+	if (mi->rno < sbi->mft.recs_mirr)
+		sbi->flags |= NTFS_FLAGS_MFTMIRR;
+
+	mi->dirty = false;
+
+	return 0;
+}
+
+int mi_format_new(struct mft_inode *mi, struct ntfs_sb_info *sbi, CLST rno,
+		  __le16 flags, bool is_mft)
+{
+	int err;
+	u16 seq = 1;
+	struct MFT_REC *rec;
+	u64 vbo = (u64)rno << sbi->record_bits;
+
+	err = mi_init(mi, sbi, rno);
+	if (err)
+		return err;
+
+	rec = mi->mrec;
+
+	if (rno == MFT_REC_MFT) {
+		;
+	} else if (rno < MFT_REC_FREE) {
+		seq = rno;
+	} else if (rno >= sbi->mft.used) {
+		;
+	} else if (mi_read(mi, is_mft)) {
+		;
+	} else if (rec->rhdr.sign == NTFS_FILE_SIGNATURE) {
+		/* Record is reused. Update its sequence number */
+		seq = le16_to_cpu(rec->seq) + 1;
+		if (!seq)
+			seq = 1;
+	}
+
+	memcpy(rec, sbi->new_rec, sbi->record_size);
+
+	rec->seq = cpu_to_le16(seq);
+	rec->flags = RECORD_FLAG_IN_USE | flags;
+
+	mi->dirty = true;
+
+	if (!mi->nb.nbufs) {
+		struct ntfs_inode *ni = sbi->mft.ni;
+		bool lock = false;
+
+		if (is_mounted(sbi) && !is_mft) {
+			down_read(&ni->file.run_lock);
+			lock = true;
+		}
+
+		err = ntfs_get_bh(sbi, &ni->file.run, vbo, sbi->record_size,
+				  &mi->nb);
+		if (lock)
+			up_read(&ni->file.run_lock);
+	}
+
+	return err;
+}
+
+/*
+ * mi_mark_free
+ *
+ * marks record as unused and marks it as free in bitmap
+ */
+void mi_mark_free(struct mft_inode *mi)
+{
+	CLST rno = mi->rno;
+	struct ntfs_sb_info *sbi = mi->sbi;
+
+	if (rno >= MFT_REC_RESERVED && rno < MFT_REC_FREE) {
+		ntfs_clear_mft_tail(sbi, rno, rno + 1);
+		mi->dirty = false;
+		return;
+	}
+
+	if (mi->mrec) {
+		clear_rec_inuse(mi->mrec);
+		mi->dirty = true;
+		mi_write(mi, 0);
+	}
+	ntfs_mark_rec_free(sbi, rno);
+}
+
+/*
+ * mi_insert_attr
+ *
+ * reserves space for new attribute
+ * returns not full constructed attribute or NULL if not possible to create
+ */
+struct ATTRIB *mi_insert_attr(struct mft_inode *mi, enum ATTR_TYPE type,
+			      const __le16 *name, u8 name_len, u32 asize,
+			      u16 name_off)
+{
+	size_t tail;
+	struct ATTRIB *attr;
+	__le16 id;
+	struct MFT_REC *rec = mi->mrec;
+	struct ntfs_sb_info *sbi = mi->sbi;
+	u32 used = le32_to_cpu(rec->used);
+	const u16 *upcase = sbi->upcase;
+	int diff;
+
+	/* Can we insert mi attribute? */
+	if (used + asize > mi->sbi->record_size)
+		return NULL;
+
+	/*
+	 * Scan through the list of attributes to find the point
+	 * at which we should insert it.
+	 */
+	attr = NULL;
+	while ((attr = mi_enum_attr(mi, attr))) {
+		diff = compare_attr(attr, type, name, name_len, upcase);
+		if (diff > 0)
+			break;
+		if (diff < 0)
+			continue;
+
+		if (!is_attr_indexed(attr))
+			return NULL;
+		break;
+	}
+
+	if (!attr) {
+		tail = 8; /* not used, just to suppress warning */
+		attr = Add2Ptr(rec, used - 8);
+	} else {
+		tail = used - PtrOffset(rec, attr);
+	}
+
+	id = mi_new_attt_id(mi);
+
+	memmove(Add2Ptr(attr, asize), attr, tail);
+	memset(attr, 0, asize);
+
+	attr->type = type;
+	attr->size = cpu_to_le32(asize);
+	attr->name_len = name_len;
+	attr->name_off = cpu_to_le16(name_off);
+	attr->id = id;
+
+	memmove(Add2Ptr(attr, name_off), name, name_len * sizeof(short));
+	rec->used = cpu_to_le32(used + asize);
+
+	mi->dirty = true;
+
+	return attr;
+}
+
+/*
+ * mi_remove_attr
+ *
+ * removes the attribute from record
+ * NOTE: The source attr will point to next attribute
+ */
+bool mi_remove_attr(struct mft_inode *mi, struct ATTRIB *attr)
+{
+	struct MFT_REC *rec = mi->mrec;
+	u32 aoff = PtrOffset(rec, attr);
+	u32 used = le32_to_cpu(rec->used);
+	u32 asize = le32_to_cpu(attr->size);
+
+	if (aoff + asize > used)
+		return false;
+
+	used -= asize;
+	memmove(attr, Add2Ptr(attr, asize), used - aoff);
+	rec->used = cpu_to_le32(used);
+	mi->dirty = true;
+
+	return true;
+}
+
+/* bytes = "new attribute size" - "old attribute size" */
+bool mi_resize_attr(struct mft_inode *mi, struct ATTRIB *attr, int bytes)
+{
+	struct MFT_REC *rec = mi->mrec;
+	u32 aoff = PtrOffset(rec, attr);
+	u32 total, used = le32_to_cpu(rec->used);
+	u32 nsize, asize = le32_to_cpu(attr->size);
+	u32 rsize = le32_to_cpu(attr->res.data_size);
+	int tail = (int)(used - aoff - asize);
+	int dsize;
+	char *next;
+
+	if (tail < 0 || aoff >= used)
+		return false;
+
+	if (!bytes)
+		return true;
+
+	total = le32_to_cpu(rec->total);
+	next = Add2Ptr(attr, asize);
+
+	if (bytes > 0) {
+		dsize = QuadAlign(bytes);
+		if (used + dsize > total)
+			return false;
+		nsize = asize + dsize;
+		// move tail
+		memmove(next + dsize, next, tail);
+		memset(next, 0, dsize);
+		used += dsize;
+		rsize += dsize;
+	} else {
+		dsize = QuadAlign(-bytes);
+		if (dsize > asize)
+			return false;
+		nsize = asize - dsize;
+		memmove(next - dsize, next, tail);
+		used -= dsize;
+		rsize -= dsize;
+	}
+
+	rec->used = cpu_to_le32(used);
+	attr->size = cpu_to_le32(nsize);
+	if (!attr->non_res)
+		attr->res.data_size = cpu_to_le32(rsize);
+	mi->dirty = true;
+
+	return true;
+}
+
+int mi_pack_runs(struct mft_inode *mi, struct ATTRIB *attr,
+		 struct runs_tree *run, CLST len)
+{
+	int err = 0;
+	struct ntfs_sb_info *sbi = mi->sbi;
+	u32 new_run_size;
+	CLST plen;
+	struct MFT_REC *rec = mi->mrec;
+	CLST svcn = le64_to_cpu(attr->nres.svcn);
+	u32 used = le32_to_cpu(rec->used);
+	u32 aoff = PtrOffset(rec, attr);
+	u32 asize = le32_to_cpu(attr->size);
+	char *next = Add2Ptr(attr, asize);
+	u16 run_off = le16_to_cpu(attr->nres.run_off);
+	u32 run_size = asize - run_off;
+	u32 tail = used - aoff - asize;
+	u32 dsize = sbi->record_size - used;
+
+	/* Make a maximum gap in current record */
+	memmove(next + dsize, next, tail);
+
+	/* Pack as much as possible */
+	err = run_pack(run, svcn, len, Add2Ptr(attr, run_off), run_size + dsize,
+		       &plen);
+	if (err < 0) {
+		memmove(next, next + dsize, tail);
+		return err;
+	}
+
+	new_run_size = QuadAlign(err);
+
+	memmove(next + new_run_size - run_size, next + dsize, tail);
+
+	attr->size = cpu_to_le32(asize + new_run_size - run_size);
+	attr->nres.evcn = cpu_to_le64(svcn + plen - 1);
+	rec->used = cpu_to_le32(used + new_run_size - run_size);
+	mi->dirty = true;
+
+	return 0;
+}
diff --git a/fs/ntfs3/run.c b/fs/ntfs3/run.c
new file mode 100644
index 000000000000..67d1a856c5ee
--- /dev/null
+++ b/fs/ntfs3/run.c
@@ -0,0 +1,1110 @@
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
+/* runs_tree is a continues memory. Try to avoid big size  */
+#define NTFS3_RUN_MAX_BYTES 0x10000
+
+struct ntfs_run {
+	CLST vcn; /* virtual cluster number */
+	CLST len; /* length in clusters */
+	CLST lcn; /* logical cluster number */
+};
+
+/*
+ * run_lookup
+ *
+ * Lookup the index of a MCB entry that is first <= vcn.
+ * case of success it will return non-zero value and set
+ * 'index' parameter to index of entry been found.
+ * case of entry missing from list 'index' will be set to
+ * point to insertion position for the entry question.
+ */
+bool run_lookup(const struct runs_tree *run, CLST vcn, size_t *index)
+{
+	size_t min_idx, max_idx, mid_idx;
+	struct ntfs_run *r;
+
+	if (!run->count) {
+		*index = 0;
+		return false;
+	}
+
+	min_idx = 0;
+	max_idx = run->count - 1;
+
+	/* Check boundary cases specially, 'cause they cover the often requests */
+	r = run->runs;
+	if (vcn < r->vcn) {
+		*index = 0;
+		return false;
+	}
+
+	if (vcn < r->vcn + r->len) {
+		*index = 0;
+		return true;
+	}
+
+	r += max_idx;
+	if (vcn >= r->vcn + r->len) {
+		*index = run->count;
+		return false;
+	}
+
+	if (vcn >= r->vcn) {
+		*index = max_idx;
+		return true;
+	}
+
+	do {
+		mid_idx = min_idx + ((max_idx - min_idx) >> 1);
+		r = run->runs + mid_idx;
+
+		if (vcn < r->vcn) {
+			max_idx = mid_idx - 1;
+			if (!mid_idx)
+				break;
+		} else if (vcn >= r->vcn + r->len) {
+			min_idx = mid_idx + 1;
+		} else {
+			*index = mid_idx;
+			return true;
+		}
+	} while (min_idx <= max_idx);
+
+	*index = max_idx + 1;
+	return false;
+}
+
+/*
+ * run_consolidate
+ *
+ * consolidate runs starting from a given one.
+ */
+static void run_consolidate(struct runs_tree *run, size_t index)
+{
+	size_t i;
+	struct ntfs_run *r = run->runs + index;
+
+	while (index + 1 < run->count) {
+		/*
+		 * I should merge current run with next
+		 * if start of the next run lies inside one being tested.
+		 */
+		struct ntfs_run *n = r + 1;
+		CLST end = r->vcn + r->len;
+		CLST dl;
+
+		/* Stop if runs are not aligned one to another. */
+		if (n->vcn > end)
+			break;
+
+		dl = end - n->vcn;
+
+		/*
+		 * If range at index overlaps with next one
+		 * then I will either adjust it's start position
+		 * or (if completely matches) dust remove one from the list.
+		 */
+		if (dl > 0) {
+			if (n->len <= dl)
+				goto remove_next_range;
+
+			n->len -= dl;
+			n->vcn += dl;
+			if (n->lcn != SPARSE_LCN)
+				n->lcn += dl;
+			dl = 0;
+		}
+
+		/*
+		 * Stop if sparse mode does not match
+		 * both current and next runs.
+		 */
+		if ((n->lcn == SPARSE_LCN) != (r->lcn == SPARSE_LCN)) {
+			index += 1;
+			r = n;
+			continue;
+		}
+
+		/*
+		 * Check if volume block
+		 * of a next run lcn does not match
+		 * last volume block of the current run.
+		 */
+		if (n->lcn != SPARSE_LCN && n->lcn != r->lcn + r->len)
+			break;
+
+		/*
+		 * Next and current are siblings.
+		 * Eat/join.
+		 */
+		r->len += n->len - dl;
+
+remove_next_range:
+		i = run->count - (index + 1);
+		if (i > 1)
+			memmove(n, n + 1, sizeof(*n) * (i - 1));
+
+		run->count -= 1;
+	}
+}
+
+/* returns true if range [svcn - evcn] is mapped*/
+bool run_is_mapped_full(const struct runs_tree *run, CLST svcn, CLST evcn)
+{
+	size_t i;
+	const struct ntfs_run *r, *end;
+	CLST next_vcn;
+
+	if (!run_lookup(run, svcn, &i))
+		return false;
+
+	end = run->runs + run->count;
+	r = run->runs + i;
+
+	for (;;) {
+		next_vcn = r->vcn + r->len;
+		if (next_vcn > evcn)
+			return true;
+
+		if (++r >= end)
+			return false;
+
+		if (r->vcn != next_vcn)
+			return false;
+	}
+}
+
+bool run_lookup_entry(const struct runs_tree *run, CLST vcn, CLST *lcn,
+		      CLST *len, size_t *index)
+{
+	size_t idx;
+	CLST gap;
+	struct ntfs_run *r;
+
+	/* Fail immediately if nrun was not touched yet. */
+	if (!run->runs)
+		return false;
+
+	if (!run_lookup(run, vcn, &idx))
+		return false;
+
+	r = run->runs + idx;
+
+	if (vcn >= r->vcn + r->len)
+		return false;
+
+	gap = vcn - r->vcn;
+	if (r->len <= gap)
+		return false;
+
+	*lcn = r->lcn == SPARSE_LCN ? SPARSE_LCN : (r->lcn + gap);
+
+	if (len)
+		*len = r->len - gap;
+	if (index)
+		*index = idx;
+
+	return true;
+}
+
+/*
+ * run_truncate_head
+ *
+ * decommit the range before vcn
+ */
+void run_truncate_head(struct runs_tree *run, CLST vcn)
+{
+	size_t index;
+	struct ntfs_run *r;
+
+	if (run_lookup(run, vcn, &index)) {
+		r = run->runs + index;
+
+		if (vcn > r->vcn) {
+			CLST dlen = vcn - r->vcn;
+
+			r->vcn = vcn;
+			r->len -= dlen;
+			if (r->lcn != SPARSE_LCN)
+				r->lcn += dlen;
+		}
+
+		if (!index)
+			return;
+	}
+	r = run->runs;
+	memmove(r, r + index, sizeof(*r) * (run->count - index));
+
+	run->count -= index;
+
+	if (!run->count) {
+		ntfs_vfree(run->runs);
+		run->runs = NULL;
+		run->allocated = 0;
+	}
+}
+
+/*
+ * run_truncate
+ *
+ * decommit the range after vcn
+ */
+void run_truncate(struct runs_tree *run, CLST vcn)
+{
+	size_t index;
+
+	/*
+	 * If I hit the range then
+	 * I have to truncate one.
+	 * If range to be truncated is becoming empty
+	 * then it will entirely be removed.
+	 */
+	if (run_lookup(run, vcn, &index)) {
+		struct ntfs_run *r = run->runs + index;
+
+		r->len = vcn - r->vcn;
+
+		if (r->len > 0)
+			index += 1;
+	}
+
+	/*
+	 * At this point 'index' is set to
+	 * position that should be thrown away (including index itself)
+	 * Simple one - just set the limit.
+	 */
+	run->count = index;
+
+	/* Do not reallocate array 'runs'. Only free if possible */
+	if (!index) {
+		ntfs_vfree(run->runs);
+		run->runs = NULL;
+		run->allocated = 0;
+	}
+}
+
+/* trim head and tail if necessary*/
+void run_truncate_around(struct runs_tree *run, CLST vcn)
+{
+	run_truncate_head(run, vcn);
+
+	if (run->count >= NTFS3_RUN_MAX_BYTES / sizeof(struct ntfs_run) / 2)
+		run_truncate(run, (run->runs + (run->count >> 1))->vcn);
+}
+
+/*
+ * run_add_entry
+ *
+ * sets location to known state.
+ * run to be added may overlap with existing location.
+ * returns false if of memory
+ */
+bool run_add_entry(struct runs_tree *run, CLST vcn, CLST lcn, CLST len,
+		   bool is_mft)
+{
+	size_t used, index;
+	struct ntfs_run *r;
+	bool inrange;
+	CLST tail_vcn = 0, tail_len = 0, tail_lcn = 0;
+	bool should_add_tail = false;
+
+	/*
+	 * Lookup the insertion point.
+	 *
+	 * Execute bsearch for the entry containing
+	 * start position question.
+	 */
+	inrange = run_lookup(run, vcn, &index);
+
+	/*
+	 * Shortcut here would be case of
+	 * range not been found but one been added
+	 * continues previous run.
+	 * this case I can directly make use of
+	 * existing range as my start point.
+	 */
+	if (!inrange && index > 0) {
+		struct ntfs_run *t = run->runs + index - 1;
+
+		if (t->vcn + t->len == vcn &&
+		    (t->lcn == SPARSE_LCN) == (lcn == SPARSE_LCN) &&
+		    (lcn == SPARSE_LCN || lcn == t->lcn + t->len)) {
+			inrange = true;
+			index -= 1;
+		}
+	}
+
+	/*
+	 * At this point 'index' either points to the range
+	 * containing start position or to the insertion position
+	 * for a new range.
+	 * So first let's check if range I'm probing is here already.
+	 */
+	if (!inrange) {
+requires_new_range:
+		/*
+		 * Range was not found.
+		 * Insert at position 'index'
+		 */
+		used = run->count * sizeof(struct ntfs_run);
+
+		/*
+		 * Check allocated space.
+		 * If one is not enough to get one more entry
+		 * then it will be reallocated
+		 */
+		if (run->allocated < used + sizeof(struct ntfs_run)) {
+			size_t bytes;
+			struct ntfs_run *new_ptr;
+
+			/* Use power of 2 for 'bytes'*/
+			if (!used) {
+				bytes = 64;
+			} else if (used <= 16 * PAGE_SIZE) {
+				if (is_power_of2(run->allocated))
+					bytes = run->allocated << 1;
+				else
+					bytes = (size_t)1
+						<< (2 + blksize_bits(used));
+			} else {
+				bytes = run->allocated + (16 * PAGE_SIZE);
+			}
+
+			WARN_ON(!is_mft && bytes > NTFS3_RUN_MAX_BYTES);
+
+			new_ptr = ntfs_vmalloc(bytes);
+
+			if (!new_ptr)
+				return false;
+
+			r = new_ptr + index;
+			memcpy(new_ptr, run->runs,
+			       index * sizeof(struct ntfs_run));
+			memcpy(r + 1, run->runs + index,
+			       sizeof(struct ntfs_run) * (run->count - index));
+
+			ntfs_vfree(run->runs);
+			run->runs = new_ptr;
+			run->allocated = bytes;
+
+		} else {
+			size_t i = run->count - index;
+
+			r = run->runs + index;
+
+			/* memmove appears to be a bottle neck here... */
+			if (i > 0)
+				memmove(r + 1, r, sizeof(struct ntfs_run) * i);
+		}
+
+		r->vcn = vcn;
+		r->lcn = lcn;
+		r->len = len;
+		run->count += 1;
+	} else {
+		r = run->runs + index;
+
+		/*
+		 * If one of ranges was not allocated
+		 * then I have to split location I just matched.
+		 * and insert current one
+		 * a common case this requires tail to be reinserted
+		 * a recursive call.
+		 */
+		if (((lcn == SPARSE_LCN) != (r->lcn == SPARSE_LCN)) ||
+		    (lcn != SPARSE_LCN && lcn != r->lcn + (vcn - r->vcn))) {
+			CLST to_eat = vcn - r->vcn;
+			CLST Tovcn = to_eat + len;
+
+			should_add_tail = Tovcn < r->len;
+
+			if (should_add_tail) {
+				tail_lcn = r->lcn == SPARSE_LCN
+						   ? SPARSE_LCN
+						   : (r->lcn + Tovcn);
+				tail_vcn = r->vcn + Tovcn;
+				tail_len = r->len - Tovcn;
+			}
+
+			if (to_eat > 0) {
+				r->len = to_eat;
+				inrange = false;
+				index += 1;
+				goto requires_new_range;
+			}
+
+			/* lcn should match one I'm going to add. */
+			r->lcn = lcn;
+		}
+
+		/*
+		 * If existing range fits then I'm done.
+		 * Otherwise extend found one and fall back to range jocode.
+		 */
+		if (r->vcn + r->len < vcn + len)
+			r->len += len - ((r->vcn + r->len) - vcn);
+	}
+
+	/*
+	 * And normalize it starting from insertion point.
+	 * It's possible that no insertion needed case if
+	 * start point lies within the range of an entry
+	 * that 'index' points to.
+	 */
+	if (inrange && index > 0)
+		index -= 1;
+	run_consolidate(run, index);
+	run_consolidate(run, index + 1);
+
+	/*
+	 * a special case
+	 * I have to add extra range a tail.
+	 */
+	if (should_add_tail &&
+	    !run_add_entry(run, tail_vcn, tail_lcn, tail_len, is_mft))
+		return false;
+
+	return true;
+}
+
+/*helper for attr_collapse_range, which is helper for fallocate(collapse_range)*/
+bool run_collapse_range(struct runs_tree *run, CLST vcn, CLST len)
+{
+	size_t index, eat;
+	struct ntfs_run *r, *e, *eat_start, *eat_end;
+	CLST end;
+
+	if (WARN_ON(!run_lookup(run, vcn, &index)))
+		return true; /* should never be here */
+
+	e = run->runs + run->count;
+	r = run->runs + index;
+	end = vcn + len;
+
+	if (vcn > r->vcn) {
+		if (r->vcn + r->len <= end) {
+			/* collapse tail of run */
+			r->len = vcn - r->vcn;
+		} else if (r->lcn == SPARSE_LCN) {
+			/* collapse a middle part of sparsed run */
+			r->len -= len;
+		} else {
+			/* collapse a middle part of normal run, split */
+			if (!run_add_entry(run, vcn, SPARSE_LCN, len, false))
+				return false;
+			return run_collapse_range(run, vcn, len);
+		}
+
+		r += 1;
+	}
+
+	eat_start = r;
+	eat_end = r;
+
+	for (; r < e; r++) {
+		CLST d;
+
+		if (r->vcn >= end) {
+			r->vcn -= len;
+			continue;
+		}
+
+		if (r->vcn + r->len <= end) {
+			/* eat this run */
+			eat_end = r + 1;
+			continue;
+		}
+
+		d = end - r->vcn;
+		if (r->lcn != SPARSE_LCN)
+			r->lcn += d;
+		r->len -= d;
+		r->vcn -= len - d;
+	}
+
+	eat = eat_end - eat_start;
+	memmove(eat_start, eat_end, (e - eat_end) * sizeof(*r));
+	run->count -= eat;
+
+	return true;
+}
+
+/*
+ * run_get_entry
+ *
+ * returns index-th mapped region
+ */
+bool run_get_entry(const struct runs_tree *run, size_t index, CLST *vcn,
+		   CLST *lcn, CLST *len)
+{
+	const struct ntfs_run *r;
+
+	if (index >= run->count)
+		return false;
+
+	r = run->runs + index;
+
+	if (!r->len)
+		return false;
+
+	if (vcn)
+		*vcn = r->vcn;
+	if (lcn)
+		*lcn = r->lcn;
+	if (len)
+		*len = r->len;
+	return true;
+}
+
+/*
+ * run_packed_size
+ *
+ * calculates the size of packed int64
+ */
+#ifdef __BIG_ENDIAN
+static inline int run_packed_size(const s64 n)
+{
+	const u8 *p = (const u8 *)&n + sizeof(n) - 1;
+
+	if (n >= 0) {
+		if (p[-7] || p[-6] || p[-5] || p[-4])
+			p -= 4;
+		if (p[-3] || p[-2])
+			p -= 2;
+		if (p[-1])
+			p -= 1;
+		if (p[0] & 0x80)
+			p -= 1;
+	} else {
+		if (p[-7] != 0xff || p[-6] != 0xff || p[-5] != 0xff ||
+		    p[-4] != 0xff)
+			p -= 4;
+		if (p[-3] != 0xff || p[-2] != 0xff)
+			p -= 2;
+		if (p[-1] != 0xff)
+			p -= 1;
+		if (!(p[0] & 0x80))
+			p -= 1;
+	}
+	return (const u8 *)n + sizeof(n) - p;
+}
+
+/* full trusted function. It does not check 'size' for errors */
+static inline void run_pack_s64(u8 *run_buf, u8 size, s64 v)
+{
+	const u8 *p = (u8 *)&v;
+
+	switch (size) {
+	case 8:
+		run_buf[7] = p[0];
+		fallthrough;
+	case 7:
+		run_buf[6] = p[1];
+		fallthrough;
+	case 6:
+		run_buf[5] = p[2];
+		fallthrough;
+	case 5:
+		run_buf[4] = p[3];
+		fallthrough;
+	case 4:
+		run_buf[3] = p[4];
+		fallthrough;
+	case 3:
+		run_buf[2] = p[5];
+		fallthrough;
+	case 2:
+		run_buf[1] = p[6];
+		fallthrough;
+	case 1:
+		run_buf[0] = p[7];
+	}
+}
+
+/* full trusted function. It does not check 'size' for errors */
+static inline s64 run_unpack_s64(const u8 *run_buf, u8 size, s64 v)
+{
+	u8 *p = (u8 *)&v;
+
+	switch (size) {
+	case 8:
+		p[0] = run_buf[7];
+		fallthrough;
+	case 7:
+		p[1] = run_buf[6];
+		fallthrough;
+	case 6:
+		p[2] = run_buf[5];
+		fallthrough;
+	case 5:
+		p[3] = run_buf[4];
+		fallthrough;
+	case 4:
+		p[4] = run_buf[3];
+		fallthrough;
+	case 3:
+		p[5] = run_buf[2];
+		fallthrough;
+	case 2:
+		p[6] = run_buf[1];
+		fallthrough;
+	case 1:
+		p[7] = run_buf[0];
+	}
+	return v;
+}
+
+#else
+
+static inline int run_packed_size(const s64 n)
+{
+	const u8 *p = (const u8 *)&n;
+
+	if (n >= 0) {
+		if (p[7] || p[6] || p[5] || p[4])
+			p += 4;
+		if (p[3] || p[2])
+			p += 2;
+		if (p[1])
+			p += 1;
+		if (p[0] & 0x80)
+			p += 1;
+	} else {
+		if (p[7] != 0xff || p[6] != 0xff || p[5] != 0xff ||
+		    p[4] != 0xff)
+			p += 4;
+		if (p[3] != 0xff || p[2] != 0xff)
+			p += 2;
+		if (p[1] != 0xff)
+			p += 1;
+		if (!(p[0] & 0x80))
+			p += 1;
+	}
+
+	return 1 + p - (const u8 *)&n;
+}
+
+/* full trusted function. It does not check 'size' for errors */
+static inline void run_pack_s64(u8 *run_buf, u8 size, s64 v)
+{
+	const u8 *p = (u8 *)&v;
+
+	/* memcpy( run_buf, &v, size); is it faster? */
+	switch (size) {
+	case 8:
+		run_buf[7] = p[7];
+		fallthrough;
+	case 7:
+		run_buf[6] = p[6];
+		fallthrough;
+	case 6:
+		run_buf[5] = p[5];
+		fallthrough;
+	case 5:
+		run_buf[4] = p[4];
+		fallthrough;
+	case 4:
+		run_buf[3] = p[3];
+		fallthrough;
+	case 3:
+		run_buf[2] = p[2];
+		fallthrough;
+	case 2:
+		run_buf[1] = p[1];
+		fallthrough;
+	case 1:
+		run_buf[0] = p[0];
+	}
+}
+
+/* full trusted function. It does not check 'size' for errors */
+static inline s64 run_unpack_s64(const u8 *run_buf, u8 size, s64 v)
+{
+	u8 *p = (u8 *)&v;
+
+	/* memcpy( &v, run_buf, size); is it faster? */
+	switch (size) {
+	case 8:
+		p[7] = run_buf[7];
+		fallthrough;
+	case 7:
+		p[6] = run_buf[6];
+		fallthrough;
+	case 6:
+		p[5] = run_buf[5];
+		fallthrough;
+	case 5:
+		p[4] = run_buf[4];
+		fallthrough;
+	case 4:
+		p[3] = run_buf[3];
+		fallthrough;
+	case 3:
+		p[2] = run_buf[2];
+		fallthrough;
+	case 2:
+		p[1] = run_buf[1];
+		fallthrough;
+	case 1:
+		p[0] = run_buf[0];
+	}
+	return v;
+}
+#endif
+
+/*
+ * run_pack
+ *
+ * packs runs into buffer
+ * packed_vcns - how much runs we have packed
+ * packed_size - how much bytes we have used run_buf
+ */
+int run_pack(const struct runs_tree *run, CLST svcn, CLST len, u8 *run_buf,
+	     u32 run_buf_size, CLST *packed_vcns)
+{
+	CLST next_vcn, vcn, lcn;
+	CLST prev_lcn = 0;
+	CLST evcn1 = svcn + len;
+	int packed_size = 0;
+	size_t i;
+	bool ok;
+	s64 dlcn;
+	int offset_size, size_size, tmp;
+
+	next_vcn = vcn = svcn;
+
+	*packed_vcns = 0;
+
+	if (!len)
+		goto out;
+
+	ok = run_lookup_entry(run, vcn, &lcn, &len, &i);
+
+	if (!ok)
+		goto error;
+
+	if (next_vcn != vcn)
+		goto error;
+
+	for (;;) {
+		next_vcn = vcn + len;
+		if (next_vcn > evcn1)
+			len = evcn1 - vcn;
+
+		/* how much bytes required to pack len */
+		size_size = run_packed_size(len);
+
+		/* offset_size - how much bytes is packed dlcn */
+		if (lcn == SPARSE_LCN) {
+			offset_size = 0;
+			dlcn = 0;
+		} else {
+			/* NOTE: lcn can be less than prev_lcn! */
+			dlcn = (s64)lcn - prev_lcn;
+			offset_size = run_packed_size(dlcn);
+			prev_lcn = lcn;
+		}
+
+		tmp = run_buf_size - packed_size - 2 - offset_size;
+		if (tmp <= 0)
+			goto out;
+
+		/* can we store this entire run */
+		if (tmp < size_size)
+			goto out;
+
+		if (run_buf) {
+			/* pack run header */
+			run_buf[0] = ((u8)(size_size | (offset_size << 4)));
+			run_buf += 1;
+
+			/* Pack the length of run */
+			run_pack_s64(run_buf, size_size, len);
+
+			run_buf += size_size;
+			/* Pack the offset from previous lcn */
+			run_pack_s64(run_buf, offset_size, dlcn);
+			run_buf += offset_size;
+		}
+
+		packed_size += 1 + offset_size + size_size;
+		*packed_vcns += len;
+
+		if (packed_size + 1 >= run_buf_size || next_vcn >= evcn1)
+			goto out;
+
+		ok = run_get_entry(run, ++i, &vcn, &lcn, &len);
+		if (!ok)
+			goto error;
+
+		if (next_vcn != vcn)
+			goto error;
+	}
+
+out:
+	/* Store last zero */
+	if (run_buf)
+		run_buf[0] = 0;
+
+	return packed_size + 1;
+
+error:
+	return -EOPNOTSUPP;
+}
+
+/*
+ * run_unpack
+ *
+ * unpacks packed runs from "run_buf"
+ * returns error, if negative, or real used bytes
+ */
+int run_unpack(struct runs_tree *run, struct ntfs_sb_info *sbi, CLST ino,
+	       CLST svcn, CLST evcn, CLST vcn, const u8 *run_buf,
+	       u32 run_buf_size)
+{
+	u64 prev_lcn, vcn64, lcn, next_vcn;
+	const u8 *run_last, *run_0;
+	bool is_mft = ino == MFT_REC_MFT;
+
+	/* Check for empty */
+	if (evcn + 1 == svcn)
+		return 0;
+
+	if (evcn < svcn)
+		return -EINVAL;
+
+	run_0 = run_buf;
+	run_last = run_buf + run_buf_size;
+	prev_lcn = 0;
+	vcn64 = svcn;
+
+	/* Read all runs the chain */
+	/* size_size - how much bytes is packed len */
+	while (run_buf < run_last) {
+		/* size_size - how much bytes is packed len */
+		u8 size_size = *run_buf & 0xF;
+		/* offset_size - how much bytes is packed dlcn */
+		u8 offset_size = *run_buf++ >> 4;
+		u64 len;
+
+		if (!size_size)
+			break;
+
+		/*
+		 * Unpack runs.
+		 * NOTE: runs are stored little endian order
+		 * "len" is unsigned value, "dlcn" is signed
+		 * Large positive number requires to store 5 bytes
+		 * e.g.: 05 FF 7E FF FF 00 00 00
+		 */
+		if (size_size > 8)
+			return -EINVAL;
+
+		len = run_unpack_s64(run_buf, size_size, 0);
+		/* skip size_size */
+		run_buf += size_size;
+
+		if (!len)
+			return -EINVAL;
+
+		if (!offset_size)
+			lcn = SPARSE_LCN64;
+		else if (offset_size <= 8) {
+			s64 dlcn;
+
+			/* initial value of dlcn is -1 or 0 */
+			dlcn = (run_buf[offset_size - 1] & 0x80) ? (s64)-1 : 0;
+			dlcn = run_unpack_s64(run_buf, offset_size, dlcn);
+			/* skip offset_size */
+			run_buf += offset_size;
+
+			if (!dlcn)
+				return -EINVAL;
+			lcn = prev_lcn + dlcn;
+			prev_lcn = lcn;
+		} else
+			return -EINVAL;
+
+		next_vcn = vcn64 + len;
+		/* check boundary */
+		if (next_vcn > evcn + 1)
+			return -EINVAL;
+
+#ifndef CONFIG_NTFS3_64BIT_CLUSTER
+		if (next_vcn > 0x100000000ull || (lcn + len) > 0x100000000ull) {
+			ntfs_err(
+				sbi->sb,
+				"This driver is compiled whitout CONFIG_NTFS3_64BIT_CLUSTER (like windows driver).\n"
+				"Volume contains 64 bits run: vcn %llx, lcn %llx, len %llx.\n"
+				"Activate CONFIG_NTFS3_64BIT_CLUSTER to process this case",
+				vcn64, lcn, len);
+			return -EOPNOTSUPP;
+		}
+#endif
+		if (lcn != SPARSE_LCN64 && lcn + len > sbi->used.bitmap.nbits) {
+			/* lcn range is out of volume */
+			return -EINVAL;
+		}
+
+		if (!run)
+			; /* called from check_attr(fslog.c) to check run */
+		else if (run == RUN_DEALLOCATE) {
+			/* called from ni_delete_all to free clusters without storing in run */
+			if (lcn != SPARSE_LCN64)
+				mark_as_free_ex(sbi, lcn, len, true);
+		} else if (vcn64 >= vcn) {
+			if (!run_add_entry(run, vcn64, lcn, len, is_mft))
+				return -ENOMEM;
+		} else if (next_vcn > vcn) {
+			u64 dlen = vcn - vcn64;
+
+			if (!run_add_entry(run, vcn, lcn + dlen, len - dlen,
+					   is_mft))
+				return -ENOMEM;
+		}
+
+		vcn64 = next_vcn;
+	}
+
+	if (vcn64 != evcn + 1) {
+		/* not expected length of unpacked runs */
+		return -EINVAL;
+	}
+
+	return run_buf - run_0;
+}
+
+#ifdef NTFS3_CHECK_FREE_CLST
+/*
+ * run_unpack_ex
+ *
+ * unpacks packed runs from "run_buf"
+ * checks unpacked runs to be used in bitmap
+ * returns error, if negative, or real used bytes
+ */
+int run_unpack_ex(struct runs_tree *run, struct ntfs_sb_info *sbi, CLST ino,
+		  CLST svcn, CLST evcn, CLST vcn, const u8 *run_buf,
+		  u32 run_buf_size)
+{
+	int ret, err;
+	CLST next_vcn, lcn, len;
+	size_t index;
+	bool ok;
+	struct wnd_bitmap *wnd;
+
+	ret = run_unpack(run, sbi, ino, svcn, evcn, vcn, run_buf, run_buf_size);
+	if (ret <= 0)
+		return ret;
+
+	if (!sbi->used.bitmap.sb || !run || run == RUN_DEALLOCATE)
+		return ret;
+
+	if (ino == MFT_REC_BADCLUST)
+		return ret;
+
+	next_vcn = vcn = svcn;
+	wnd = &sbi->used.bitmap;
+
+	for (ok = run_lookup_entry(run, vcn, &lcn, &len, &index);
+	     next_vcn <= evcn;
+	     ok = run_get_entry(run, ++index, &vcn, &lcn, &len)) {
+		if (!ok || next_vcn != vcn)
+			return -EINVAL;
+
+		next_vcn = vcn + len;
+
+		if (lcn == SPARSE_LCN)
+			continue;
+
+		if (sbi->flags & NTFS_FLAGS_NEED_REPLAY)
+			continue;
+
+		down_read_nested(&wnd->rw_lock, BITMAP_MUTEX_CLUSTERS);
+		/* Check for free blocks */
+		ok = wnd_is_used(wnd, lcn, len);
+		up_read(&wnd->rw_lock);
+		if (ok)
+			continue;
+
+		/* Looks like volume is corrupted */
+		ntfs_set_state(sbi, NTFS_DIRTY_ERROR);
+
+		if (down_write_trylock(&wnd->rw_lock)) {
+			/* mark all zero bits as used in range [lcn, lcn+len) */
+			CLST i, lcn_f = 0, len_f = 0;
+
+			err = 0;
+			for (i = 0; i < len; i++) {
+				if (wnd_is_free(wnd, lcn + i, 1)) {
+					if (!len_f)
+						lcn_f = lcn + i;
+					len_f += 1;
+				} else if (len_f) {
+					err = wnd_set_used(wnd, lcn_f, len_f);
+					len_f = 0;
+					if (err)
+						break;
+				}
+			}
+
+			if (len_f)
+				err = wnd_set_used(wnd, lcn_f, len_f);
+
+			up_write(&wnd->rw_lock);
+			if (err)
+				return err;
+		}
+	}
+
+	return ret;
+}
+#endif
+
+/*
+ * run_get_highest_vcn
+ *
+ * returns the highest vcn from a mapping pairs array
+ * it used while replaying log file
+ */
+int run_get_highest_vcn(CLST vcn, const u8 *run_buf, u64 *highest_vcn)
+{
+	u64 vcn64 = vcn;
+	u8 size_size;
+
+	while ((size_size = *run_buf & 0xF)) {
+		u8 offset_size = *run_buf++ >> 4;
+		u64 len;
+
+		if (size_size > 8 || offset_size > 8)
+			return -EINVAL;
+
+		len = run_unpack_s64(run_buf, size_size, 0);
+		if (!len)
+			return -EINVAL;
+
+		run_buf += size_size + offset_size;
+		vcn64 += len;
+
+#ifndef CONFIG_NTFS3_64BIT_CLUSTER
+		if (vcn64 > 0x100000000ull)
+			return -EINVAL;
+#endif
+	}
+
+	*highest_vcn = vcn64 - 1;
+	return 0;
+}
-- 
2.25.4



--===============0627426860191141536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0627426860191141536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============0627426860191141536==--
