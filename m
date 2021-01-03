Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EE82E8F71
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXU-0005vH-Kl; Mon, 04 Jan 2021 02:24:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1kw9Oh-0002ox-0K
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 19:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TvfnUAY1SgI03Kuiug6GUBwACUdLjnyIVSBnyZjSUXM=; b=Fr8ybumCJH0E3GD1GBgC6JLGwT
 dLCxwt3f4QFetJxtUrhHHS3jZHt/YpjKh/bNpluKzjTwXAdvWire7eZTdARl8u9OPhkIFLHDt/Tyn
 4lVxjoIzQT0QypyWaBegZs6NruoPhN/hi66xOwIg94JnSD7tKEwOVjRT04iZmm4Qdlv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TvfnUAY1SgI03Kuiug6GUBwACUdLjnyIVSBnyZjSUXM=; b=EUaM+WcFmbinFIZthlWI21vtU7
 kn1Wo2AFq5JzhVabqOhPwcgQInDq9hTdSJRmsHVdZFlHGUX707RbhLAxBoJreeLuTf3Y3hQpRggtj
 GvXe5vP2NNoh+K1+U0EYqIL7lAUpVGY8EvwbHKgOyuWu5hLrErY0o/CQXl0DarXWtQl8=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kw9OV-004Foi-B2
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 19:50:38 +0000
Received: by mail-lf1-f46.google.com with SMTP id 23so59732269lfg.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 03 Jan 2021 11:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TvfnUAY1SgI03Kuiug6GUBwACUdLjnyIVSBnyZjSUXM=;
 b=PijcJXvXQUNrXAJDo24yZQGEYPCiqBM3N6jhLG5dwjkifjXYj1qmAZ/h57XSI+uNwy
 SpVHsy7JogSdfMifghFePcfoMEXbTAy1gxY4Z/jLrfeCCZ9ZrswmhvKtvWG7tcaDeT1D
 q9r6Ll5Kt3i1giU8zUB1Fxc+KvwmrQtLOyTwG+awlaoDB/THtgDP5r1oQ+O76XAR3iv6
 PuWKw95Io7ql5/nTAytcU4HCITM7zTt1v3/h6uyQ1R+hBjenU6fpeXfmNXR0rDf9tSX1
 eCDqnMv9zcOE820RZDofeypNRr622NosOmjZM6ohMU9K4X17D3wG1bvuw0vrohmpT3ZT
 xIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TvfnUAY1SgI03Kuiug6GUBwACUdLjnyIVSBnyZjSUXM=;
 b=B9Vel8esDm3sryarsTdPAAK+cJoG+/GI7trDaMCYta+uT9hVYxo1AbAwyb77uBLAup
 FbTEhAwGfVBbrhRj+JlT3zFK2nhBw5leRIwWVZFPsdcWH9WwAhwwbbgQxgmgUmCg0xm7
 Udf2Nm16wfnwPILa5YQCBxSQ6xtQHaQKUrG7tdPOgOCIZPkf8WUipSpBzd7rL/MGZo3r
 uSMTCd1EjyKzX8ligvKAr8sLxav37qcjrcHNeh1YS7Zsx8wKX7GuT/THxXPpHmvEbJq8
 SW+OpdhsPy0OMnB/u6nm/nDz+Hv/01evQQirDm8xEAiYUw1/BwJF0j5ZMIOZkHh6yU79
 vwXQ==
X-Gm-Message-State: AOAM533Nx9em+8s5w22dJu/3apfR8mz1yjeOkkgUa0SjYyf8WtPXH4LJ
 9i5DmgwQrQu+G4+YBBckwag=
X-Google-Smtp-Source: ABdhPJyPOLejIgK0xeFHge64zWBnhLAUr8UHXScFQLS0eQUhQytyet3GKB7DlUr8RsMlugzREtDhXA==
X-Received: by 2002:a19:8cb:: with SMTP id 194mr32169405lfi.463.1609703420688; 
 Sun, 03 Jan 2021 11:50:20 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id u10sm7079549lfm.156.2021.01.03.11.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jan 2021 11:50:19 -0800 (PST)
Date: Sun, 3 Jan 2021 21:50:17 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210103195017.fim2msuzj3kup6rq@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-3-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-3-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kw9OV-004Foi-B2
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 02/10] fs/ntfs3: Add initialization
 of super block
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 31, 2020 at 06:23:53PM +0300, Konstantin Komarov wrote:
 
> diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c

> +int ntfs_loadlog_and_replay(struct ntfs_inode *ni, struct ntfs_sb_info *sbi)
> +{
> +	int err = 0;
> +	struct super_block *sb = sbi->sb;
> +	struct inode *inode = &ni->vfs_inode;
> +	struct MFT_REF ref;
> +
> +	/* Check for 4GB */
> +	if (inode->i_size >= 0x100000000ull) {
> +		ntfs_err(sb, "$LogFile is too big");
> +		err = -EINVAL;
> +		goto out;
> +	}
> +
> +	sbi->flags |= NTFS_FLAGS_LOG_REPLAYING;
> +
> +	ref.low = cpu_to_le32(MFT_REC_MFT);
> +	ref.high = 0;
> +	ref.seq = cpu_to_le16(1);
> +
> +	inode = ntfs_iget5(sb, &ref, NULL);
> +
> +	if (IS_ERR(inode))
> +		inode = NULL;
> +
> +	if (!inode) {
> +		/* Try to use mft copy */
> +		u64 t64 = sbi->mft.lbo;
> +
> +		sbi->mft.lbo = sbi->mft.lbo2;
> +		inode = ntfs_iget5(sb, &ref, NULL);
> +		sbi->mft.lbo = t64;
> +		if (IS_ERR(inode))
> +			inode = NULL;
> +	}
> +
> +	if (!inode) {
> +		err = -EINVAL;
> +		ntfs_err(sb, "Failed to load $MFT.");
> +		goto out;
> +	}
> +
> +	sbi->mft.ni = ntfs_i(inode);
> +
> +	err = ni_load_all_mi(sbi->mft.ni);
> +	if (!err)
> +		err = log_replay(ni);

We only get error from log_replay if 

> +
> +	iput(inode);
> +	sbi->mft.ni = NULL;
> +
> +	sync_blockdev(sb->s_bdev);
> +	invalidate_bdev(sb->s_bdev);
> +
> +	/* reinit MFT */
> +	if (sbi->flags & NTFS_FLAGS_NEED_REPLAY) {
> +		err = 0;
> +		goto out;
> +	}
> +
> +	if (sb_rdonly(sb))
> +		goto out;

we get here. Is this a intentional? Probably but I'm just checking.

> diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c

> +int ntfs_create_inode(struct inode *dir, struct dentry *dentry,
> +		      const struct cpu_str *uni, umode_t mode, dev_t dev,
> +		      const char *symname, u32 size, int excl,
> +		      struct ntfs_fnd *fnd, struct inode **new_inode)
> +{

> +#ifdef CONFIG_NTFS3_FS_POSIX_ACL

In Kconfig this is NTFS3_POSIX_ACL. This repeat every file.

> +int ntfs_unlink_inode(struct inode *dir, const struct dentry *dentry)
> +{
> +	int err;
> +	struct super_block *sb = dir->i_sb;
> +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> +	struct inode *inode = d_inode(dentry);
> +	struct ntfs_inode *ni = ntfs_i(inode);
> +	const struct qstr *name = &dentry->d_name;
> +	struct ntfs_inode *dir_ni = ntfs_i(dir);
> +	struct ntfs_index *indx = &dir_ni->dir;
> +	struct cpu_str *uni = NULL;
> +	struct ATTR_FILE_NAME *fname;
> +	u8 name_type;
> +	struct ATTR_LIST_ENTRY *le;
> +	struct MFT_REF ref;
> +	bool is_dir = S_ISDIR(inode->i_mode);
> +	struct INDEX_ROOT *dir_root;
> +
> +	dir_root = indx_get_root(indx, dir_ni, NULL, NULL);
> +	if (!dir_root)
> +		return -EINVAL;
> +
> +	ni_lock(ni);
> +
> +	if (is_dir && !dir_is_empty(inode)) {
> +		err = -ENOTEMPTY;
> +		goto out1;
> +	}
> +
> +	if (ntfs_is_meta_file(sbi, inode->i_ino)) {
> +		err = -EINVAL;
> +		goto out1;
> +	}
> +
> +	/* allocate PATH_MAX bytes */
> +	uni = __getname();
> +	if (!uni) {
> +		err = -ENOMEM;
> +		goto out1;
> +	}
> +
> +	/* Convert input string to unicode */
> +	err = ntfs_nls_to_utf16(sbi, name->name, name->len, uni, NTFS_NAME_LEN,
> +				UTF16_HOST_ENDIAN);
> +	if (err < 0)
> +		goto out4;
> +
> +	le = NULL;

Little bit random place for this. Do we even need to NULL le.

> +
> +	/*mark rw ntfs as dirty. it will be cleared at umount*/
> +	ntfs_set_state(sbi, NTFS_DIRTY_DIRTY);
> +
> +	/* find name in record */
> +#ifdef NTFS3_64BIT_CLUSTER
> +	ref.low = cpu_to_le32(dir->i_ino & 0xffffffff);
> +	ref.high = cpu_to_le16(dir->i_ino >> 32);
> +#else
> +	ref.low = cpu_to_le32(dir->i_ino & 0xffffffff);
> +	ref.high = 0;
> +#endif
> +	ref.seq = dir_ni->mi.mrec->seq;
> +
> +	fname = ni_fname_name(ni, uni, &ref, &le);

> diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c

> +#ifdef CONFIG_PRINTK
> +/*
> + * Trace warnings/notices/errors
> + * Thanks Joe Perches <joe@perches.com> for implementation
> + */
> +void ntfs_printk(const struct super_block *sb, const char *fmt, ...)
> +{
> +	struct va_format vaf;
> +	va_list args;
> +	int level;
> +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> +
> +	/*should we use different ratelimits for warnings/notices/errors? */
> +	if (!___ratelimit(&sbi->msg_ratelimit, "ntfs3"))
> +		return;
> +
> +	va_start(args, fmt);
> +
> +	level = printk_get_level(fmt);
> +	vaf.fmt = printk_skip_level(fmt);
> +	vaf.va = &args;
> +	printk("%c%cntfs3: %s: %pV\n", KERN_SOH_ASCII, level, sb->s_id, &vaf);
> +
> +	va_end(args);
> +}
> +
> +static char s_name_buf[512];
> +static atomic_t s_name_buf_cnt = ATOMIC_INIT(1); // 1 means 'free s_name_buf'
> +
> +/* print warnings/notices/errors about inode using name or inode number */
> +void ntfs_inode_printk(struct inode *inode, const char *fmt, ...)
> +{
> +	struct super_block *sb = inode->i_sb;
> +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> +	char *name;
> +	va_list args;
> +	struct va_format vaf;
> +	int level;
> +
> +	if (!___ratelimit(&sbi->msg_ratelimit, "ntfs3"))
> +		return;
> +
> +	if (atomic_dec_and_test(&s_name_buf_cnt)) {
> +		/* use static allocated buffer */
> +		name = s_name_buf;
> +	} else {
> +		name = kmalloc(sizeof(s_name_buf), GFP_NOFS);
> +	}
> +
> +	if (name) {
> +		struct dentry *dentry = d_find_alias(inode);
> +		const u32 name_len = ARRAY_SIZE(s_name_buf) - 1;
> +
> +		if (dentry) {
> +			spin_lock(&dentry->d_lock);
> +			snprintf(name, name_len, "%s", dentry->d_name.name);
> +			spin_unlock(&dentry->d_lock);
> +			dput(dentry);
> +			name[name_len] = 0; /* to be sure*/
> +		} else {
> +			name[0] = 0;
> +		}
> +	}
> +
> +	va_start(args, fmt);
> +
> +	level = printk_get_level(fmt);
> +	vaf.fmt = printk_skip_level(fmt);
> +	vaf.va = &args;
> +
> +	printk("%c%cntfs3: %s: ino=%lx, \"%s\" %pV\n", KERN_SOH_ASCII, level,
> +	       sb->s_id, inode->i_ino, name ? name : "", &vaf);
> +
> +	va_end(args);
> +
> +	atomic_inc(&s_name_buf_cnt);
> +	if (name != s_name_buf)
> +		kfree(name);
> +}
> +#endif

Should these be in debug.c or something? Atleast I do not see point why
they are in super.c.

> +static int __init init_ntfs_fs(void)
> +{
> +	int err;
> +
> +#ifdef NTFS3_INDEX_BINARY_SEARCH
> +	pr_notice("ntfs3: +index binary search\n");
> +#endif
> +
> +#ifdef NTFS3_CHECK_FREE_CLST
> +	pr_notice("ntfs3: +check free clusters\n");
> +#endif
> +
> +#if NTFS_LINK_MAX < 0xffff
> +	pr_notice("ntfs3: max link count %u\n", NTFS_LINK_MAX);
> +#endif
> +
> +#ifdef NTFS3_64BIT_CLUSTER
> +	pr_notice("ntfs3: 64 bits per cluster\n");
> +#else
> +	pr_notice("ntfs3: 32 bits per cluster\n");
> +#endif
> +#ifdef CONFIG_NTFS3_LZX_XPRESS
> +	pr_notice("ntfs3: read-only lzx/xpress compression included\n");
> +#endif
> +
> +	ntfs_inode_cachep = kmem_cache_create(
> +		"ntfs_inode_cache", sizeof(struct ntfs_inode), 0,
> +		(SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD | SLAB_ACCOUNT),
> +		init_once);
> +	if (!ntfs_inode_cachep) {
> +		err = -ENOMEM;
> +		goto failed;
> +	}
> +
> +	err = register_filesystem(&ntfs_fs_type);
> +	if (!err)
> +		return 0;

Do we need kmem_cache_destroy() here if err?

> +
> +failed:
> +	return err;
> +}


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
