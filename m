Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 394302F9C2B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 11:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6AoHA0CzAGgkwIF15jKWTeCPDENXsc9TIV/sLb1GO94=; b=hvmYHrHOSoNwmTbn1+5k+rO/T
	xh3oD9VW9y3g1cFQNsKjqb+6LgSb7iJdTUmds6V+YBQHneoOQgyGPzxY/6eyKnLuqDQv923Fh0Tpb
	k8zBzXUqUSY2kdklcb6C2rgmZ0zi/W6Jg2HJsG9PyRY5n1stRM4eqeyN71qSZE52nEU9o=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1RQx-00089w-T0; Mon, 18 Jan 2021 10:06:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1l1QwY-00084Y-1K
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 09:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0uRs6X/nEb5Hp6vrw8vJZxCQ51MaQnJYk7+aDEmyQyw=; b=P8WyL3O/vEXKx56NG+5VzfNMFY
 MMjmqjiiH26xSBo2SAnhV+lWpqFz9gff9CUDps05B7a3JZIkQE/quDpOTszkPBvT8bIzTPu0oh2dP
 mmTqlodvcEdryox84BJNI60fTLIkFt4Uz66aB9vlXonS1w9CAPUA1EfnIRmD/xzXJMOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0uRs6X/nEb5Hp6vrw8vJZxCQ51MaQnJYk7+aDEmyQyw=; b=ic4/6cojrvAmf0QVBTEIixGRbU
 N1fNPa7T5PKwcX23XYPGTXbNzBdUmdMHHUv2WOuUqoJCfyusy824Fc2rtADcRJxJU/T2Kv7VJIigP
 9s0uLQCKjkBRFFWXVJILRga69TTDEMnZ/HViDJXxq2VJinWIUoEPxRQ58bHYW74Yu8o0=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1QwM-004zla-L5
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 09:35:25 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 04BDD82074;
 Mon, 18 Jan 2021 12:35:06 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1610962506;
 bh=0uRs6X/nEb5Hp6vrw8vJZxCQ51MaQnJYk7+aDEmyQyw=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=hKurjRgOKVVaidFj2rFVhkTbU9x+Ym9j86GJ2tzIot3mOVLdiycIMgQ+qoVO3xj/t
 dM/KbgjO3+6fA9+7er4P42rd8BgxFw8uzh4+Q2fV00x7IGDZJxmUZQDeKvV3BvY7l7
 32dL3Ob9/h7BK8xizqzTTAy0kDmtcZ02ojIjuCHo=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 18 Jan 2021 12:35:05 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Mon, 18 Jan 2021 12:35:05 +0300
To: Kari Argillander <kari.argillander@gmail.com>
Thread-Topic: [PATCH v17 02/10] fs/ntfs3: Add initialization of super block
Thread-Index: AQHW34lDSM77DZhIDU+vJCA3qNRrR6oWIfSAgBcXH+A=
Date: Mon, 18 Jan 2021 09:35:05 +0000
Message-ID: <750a0cef33f34c0989cacfb0bcd4ac5e@paragon-software.com>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-3-almaz.alexandrovich@paragon-software.com>
 <20210103195017.fim2msuzj3kup6rq@kari-VirtualBox>
In-Reply-To: <20210103195017.fim2msuzj3kup6rq@kari-VirtualBox>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.0.64]
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l1QwM-004zla-L5
X-Mailman-Approved-At: Mon, 18 Jan 2021 09:57:56 +0000
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
From: Konstantin Komarov via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Cc: "andy.lavr@gmail.com" <andy.lavr@gmail.com>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>,
 "ebiggers@kernel.org" <ebiggers@kernel.org>,
 "joe@perches.com" <joe@perches.com>, "hch@lst.de" <hch@lst.de>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Kari Argillander <kari.argillander@gmail.com>
Sent: Sunday, January 3, 2021 10:50 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de; ebiggers@kernel.org;
> andy.lavr@gmail.com
> Subject: Re: [PATCH v17 02/10] fs/ntfs3: Add initialization of super block
> 
> On Thu, Dec 31, 2020 at 06:23:53PM +0300, Konstantin Komarov wrote:
> 
> > diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c
> 
> > +int ntfs_loadlog_and_replay(struct ntfs_inode *ni, struct ntfs_sb_info *sbi)
> > +{
> > +	int err = 0;
> > +	struct super_block *sb = sbi->sb;
> > +	struct inode *inode = &ni->vfs_inode;
> > +	struct MFT_REF ref;
> > +
> > +	/* Check for 4GB */
> > +	if (inode->i_size >= 0x100000000ull) {
> > +		ntfs_err(sb, "$LogFile is too big");
> > +		err = -EINVAL;
> > +		goto out;
> > +	}
> > +
> > +	sbi->flags |= NTFS_FLAGS_LOG_REPLAYING;
> > +
> > +	ref.low = cpu_to_le32(MFT_REC_MFT);
> > +	ref.high = 0;
> > +	ref.seq = cpu_to_le16(1);
> > +
> > +	inode = ntfs_iget5(sb, &ref, NULL);
> > +
> > +	if (IS_ERR(inode))
> > +		inode = NULL;
> > +
> > +	if (!inode) {
> > +		/* Try to use mft copy */
> > +		u64 t64 = sbi->mft.lbo;
> > +
> > +		sbi->mft.lbo = sbi->mft.lbo2;
> > +		inode = ntfs_iget5(sb, &ref, NULL);
> > +		sbi->mft.lbo = t64;
> > +		if (IS_ERR(inode))
> > +			inode = NULL;
> > +	}
> > +
> > +	if (!inode) {
> > +		err = -EINVAL;
> > +		ntfs_err(sb, "Failed to load $MFT.");
> > +		goto out;
> > +	}
> > +
> > +	sbi->mft.ni = ntfs_i(inode);
> > +
> > +	err = ni_load_all_mi(sbi->mft.ni);
> > +	if (!err)
> > +		err = log_replay(ni);
> 
> We only get error from log_replay if
> 
> > +
> > +	iput(inode);
> > +	sbi->mft.ni = NULL;
> > +
> > +	sync_blockdev(sb->s_bdev);
> > +	invalidate_bdev(sb->s_bdev);
> > +
> > +	/* reinit MFT */
> > +	if (sbi->flags & NTFS_FLAGS_NEED_REPLAY) {
> > +		err = 0;
> > +		goto out;
> > +	}
> > +
> > +	if (sb_rdonly(sb))
> > +		goto out;
> 
> we get here. Is this a intentional? Probably but I'm just checking.
> 

Hi Kari! Thanks for your attention on our patches.
This may be indeed quite entangled, here are the cases needed to be
covered:
1) !err && !(sbi->flags & NTFS_FLAGS_NEED_REPLAY) - ok
2) err && !(sbi->flags & NTFS_FLAGS_NEED_REPLAY) - no memory,
  io error, etc on prepare to replay stage
3) !err && (sbi->flags & NTFS_FLAGS_NEED_REPLAY) -
  journal is not empty, storage is readonly or unsupported log version
4) err && (sbi->flags & NTFS_FLAGS_NEED_REPLAY) - no memory, io error,
  etc while replaying
Distinction is that, cases 2/3 lead to mount error every time, while
case 4 permits read-only mount.

> > diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
> 
> > +int ntfs_create_inode(struct inode *dir, struct dentry *dentry,
> > +		      const struct cpu_str *uni, umode_t mode, dev_t dev,
> > +		      const char *symname, u32 size, int excl,
> > +		      struct ntfs_fnd *fnd, struct inode **new_inode)
> > +{
> 
> > +#ifdef CONFIG_NTFS3_FS_POSIX_ACL
> 
> In Kconfig this is NTFS3_POSIX_ACL. This repeat every file.
> 

This is OK. You may refer to similar parts of ext4/btrfs sources as a
reference:
fs/ext4/Kconfig or fs/btrfs/Kconfig

> > +int ntfs_unlink_inode(struct inode *dir, const struct dentry *dentry)
> > +{
> > +	int err;
> > +	struct super_block *sb = dir->i_sb;
> > +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> > +	struct inode *inode = d_inode(dentry);
> > +	struct ntfs_inode *ni = ntfs_i(inode);
> > +	const struct qstr *name = &dentry->d_name;
> > +	struct ntfs_inode *dir_ni = ntfs_i(dir);
> > +	struct ntfs_index *indx = &dir_ni->dir;
> > +	struct cpu_str *uni = NULL;
> > +	struct ATTR_FILE_NAME *fname;
> > +	u8 name_type;
> > +	struct ATTR_LIST_ENTRY *le;
> > +	struct MFT_REF ref;
> > +	bool is_dir = S_ISDIR(inode->i_mode);
> > +	struct INDEX_ROOT *dir_root;
> > +
> > +	dir_root = indx_get_root(indx, dir_ni, NULL, NULL);
> > +	if (!dir_root)
> > +		return -EINVAL;
> > +
> > +	ni_lock(ni);
> > +
> > +	if (is_dir && !dir_is_empty(inode)) {
> > +		err = -ENOTEMPTY;
> > +		goto out1;
> > +	}
> > +
> > +	if (ntfs_is_meta_file(sbi, inode->i_ino)) {
> > +		err = -EINVAL;
> > +		goto out1;
> > +	}
> > +
> > +	/* allocate PATH_MAX bytes */
> > +	uni = __getname();
> > +	if (!uni) {
> > +		err = -ENOMEM;
> > +		goto out1;
> > +	}
> > +
> > +	/* Convert input string to unicode */
> > +	err = ntfs_nls_to_utf16(sbi, name->name, name->len, uni, NTFS_NAME_LEN,
> > +				UTF16_HOST_ENDIAN);
> > +	if (err < 0)
> > +		goto out4;
> > +
> > +	le = NULL;
> 
> Little bit random place for this. Do we even need to NULL le.
> 

Thanks. Inititialization is moved to to the place where ni_fname_name
is being called.
> > +
> > +	/*mark rw ntfs as dirty. it will be cleared at umount*/
> > +	ntfs_set_state(sbi, NTFS_DIRTY_DIRTY);
> > +
> > +	/* find name in record */
> > +#ifdef NTFS3_64BIT_CLUSTER
> > +	ref.low = cpu_to_le32(dir->i_ino & 0xffffffff);
> > +	ref.high = cpu_to_le16(dir->i_ino >> 32);
> > +#else
> > +	ref.low = cpu_to_le32(dir->i_ino & 0xffffffff);
> > +	ref.high = 0;
> > +#endif
> > +	ref.seq = dir_ni->mi.mrec->seq;
> > +
> > +	fname = ni_fname_name(ni, uni, &ref, &le);
> 
> > diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
> 
> > +#ifdef CONFIG_PRINTK
> > +/*
> > + * Trace warnings/notices/errors
> > + * Thanks Joe Perches <joe@perches.com> for implementation
> > + */
> > +void ntfs_printk(const struct super_block *sb, const char *fmt, ...)
> > +{
> > +	struct va_format vaf;
> > +	va_list args;
> > +	int level;
> > +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> > +
> > +	/*should we use different ratelimits for warnings/notices/errors? */
> > +	if (!___ratelimit(&sbi->msg_ratelimit, "ntfs3"))
> > +		return;
> > +
> > +	va_start(args, fmt);
> > +
> > +	level = printk_get_level(fmt);
> > +	vaf.fmt = printk_skip_level(fmt);
> > +	vaf.va = &args;
> > +	printk("%c%cntfs3: %s: %pV\n", KERN_SOH_ASCII, level, sb->s_id, &vaf);
> > +
> > +	va_end(args);
> > +}
> > +
> > +static char s_name_buf[512];
> > +static atomic_t s_name_buf_cnt = ATOMIC_INIT(1); // 1 means 'free s_name_buf'
> > +
> > +/* print warnings/notices/errors about inode using name or inode number */
> > +void ntfs_inode_printk(struct inode *inode, const char *fmt, ...)
> > +{
> > +	struct super_block *sb = inode->i_sb;
> > +	struct ntfs_sb_info *sbi = sb->s_fs_info;
> > +	char *name;
> > +	va_list args;
> > +	struct va_format vaf;
> > +	int level;
> > +
> > +	if (!___ratelimit(&sbi->msg_ratelimit, "ntfs3"))
> > +		return;
> > +
> > +	if (atomic_dec_and_test(&s_name_buf_cnt)) {
> > +		/* use static allocated buffer */
> > +		name = s_name_buf;
> > +	} else {
> > +		name = kmalloc(sizeof(s_name_buf), GFP_NOFS);
> > +	}
> > +
> > +	if (name) {
> > +		struct dentry *dentry = d_find_alias(inode);
> > +		const u32 name_len = ARRAY_SIZE(s_name_buf) - 1;
> > +
> > +		if (dentry) {
> > +			spin_lock(&dentry->d_lock);
> > +			snprintf(name, name_len, "%s", dentry->d_name.name);
> > +			spin_unlock(&dentry->d_lock);
> > +			dput(dentry);
> > +			name[name_len] = 0; /* to be sure*/
> > +		} else {
> > +			name[0] = 0;
> > +		}
> > +	}
> > +
> > +	va_start(args, fmt);
> > +
> > +	level = printk_get_level(fmt);
> > +	vaf.fmt = printk_skip_level(fmt);
> > +	vaf.va = &args;
> > +
> > +	printk("%c%cntfs3: %s: ino=%lx, \"%s\" %pV\n", KERN_SOH_ASCII, level,
> > +	       sb->s_id, inode->i_ino, name ? name : "", &vaf);
> > +
> > +	va_end(args);
> > +
> > +	atomic_inc(&s_name_buf_cnt);
> > +	if (name != s_name_buf)
> > +		kfree(name);
> > +}
> > +#endif
> 
> Should these be in debug.c or something? Atleast I do not see point why
> they are in super.c.
> 
Overall, the problem file name may be omitted, but it seems to be useful for
debug purposes. This code is placed into super.c because ntfs_printk is described there.

> > +static int __init init_ntfs_fs(void)
> > +{
> > +	int err;
> > +
> > +#ifdef NTFS3_INDEX_BINARY_SEARCH
> > +	pr_notice("ntfs3: +index binary search\n");
> > +#endif
> > +
> > +#ifdef NTFS3_CHECK_FREE_CLST
> > +	pr_notice("ntfs3: +check free clusters\n");
> > +#endif
> > +
> > +#if NTFS_LINK_MAX < 0xffff
> > +	pr_notice("ntfs3: max link count %u\n", NTFS_LINK_MAX);
> > +#endif
> > +
> > +#ifdef NTFS3_64BIT_CLUSTER
> > +	pr_notice("ntfs3: 64 bits per cluster\n");
> > +#else
> > +	pr_notice("ntfs3: 32 bits per cluster\n");
> > +#endif
> > +#ifdef CONFIG_NTFS3_LZX_XPRESS
> > +	pr_notice("ntfs3: read-only lzx/xpress compression included\n");
> > +#endif
> > +
> > +	ntfs_inode_cachep = kmem_cache_create(
> > +		"ntfs_inode_cache", sizeof(struct ntfs_inode), 0,
> > +		(SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD | SLAB_ACCOUNT),
> > +		init_once);
> > +	if (!ntfs_inode_cachep) {
> > +		err = -ENOMEM;
> > +		goto failed;
> > +	}
> > +
> > +	err = register_filesystem(&ntfs_fs_type);
> > +	if (!err)
> > +		return 0;
> 
> Do we need kmem_cache_destroy() here if err?
> 
Thanks, this will be fixed in v18.
> > +
> > +failed:
> > +	return err;
> > +}


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
