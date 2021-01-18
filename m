Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2001B2F9C49
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 11:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eH0rNQj+MOHqi6x4vcDkaq6wTxFSk4aOtZ1ajgukEYM=; b=OHTPBaVIKAMEB4cjLXvTXUxg7
	WDd7bE5woVsH8BGYDbOn9o9R38F+Xj376E39phbN9Vn8T1ze4FmS5kZXsWiW7AyNXQj2YwD2TDtE0
	r2BXt4MdnkwQYiPoRumLaPgHpTdTcUjW8ZDocRGqpDdg9dmEjJlc3FyZUnnaDqtEJSVw8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1RiJ-0005Tq-Vz; Mon, 18 Jan 2021 10:24:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1l1RLT-0006xF-T7
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 10:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aAXmNjz4q5S0W0c0IZ1Bv7RcX/Rhi8sD8uJj4s1AT5I=; b=cwoPXSKaDl2KEHcC4yBpRdhehw
 KKbP9hW6LKx3sEnser1ibMjbulrdrNVOx5ifEc4uZJ+xHePSlwX08V5+b6KQBLKqQ7sEJuCKbrwyj
 QLpfSrtjOdZ4gCJ0l5p5L4gh6ULlEnl0W59bAzUE+XAfz/tKELi8UlDwH4uoqB4H1RS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aAXmNjz4q5S0W0c0IZ1Bv7RcX/Rhi8sD8uJj4s1AT5I=; b=BwOVfBhL86hRPfvkfnLOPmE2Wm
 kGrrudO+j37W/2iOWieU5ymFoUptm0UCv0N5hlcV0mJFfKkiT9qSIgZloSVzzxnj1mviEoIQ2bInD
 LLhElJKNXTMRdXmFIiNmxyALUzOcgp71ByvJcIEOFjIEKVD2qAQnYAEOn88ryOz9Ge10=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1RLO-00533u-P6
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 10:01:11 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 9F758437;
 Mon, 18 Jan 2021 13:00:53 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1610964053;
 bh=aAXmNjz4q5S0W0c0IZ1Bv7RcX/Rhi8sD8uJj4s1AT5I=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=O8ghBgYgNWPpgMYC+hBI2YeSoGvWMrjn+dnreqKMR8EHU3pJ1qhQpOaa9XfUNwXrW
 aAVH2pTNiHJgBE1S5d8sYhM9D42NbP33v/GSp4CSotLbZ2yLSlBxKNY5+hKbN+VHzA
 8enpxFdH0Vu3Ic0zhPgdBxP6VLuV1OneuxmitcHc=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 18 Jan 2021 13:00:53 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Mon, 18 Jan 2021 13:00:53 +0300
To: Kari Argillander <kari.argillander@gmail.com>
Thread-Topic: [PATCH v17 04/10] fs/ntfs3: Add file operations and
 implementation
Thread-Index: AQHW34lDl37E64dyR0CcHdNH1rcznqoWRYIAgBb3I5A=
Date: Mon, 18 Jan 2021 10:00:53 +0000
Message-ID: <cf76ecec5ec1419eacf4c170df65a57d@paragon-software.com>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-5-almaz.alexandrovich@paragon-software.com>
 <20210103215732.vbgcrf42xnao6gw2@kari-VirtualBox>
In-Reply-To: <20210103215732.vbgcrf42xnao6gw2@kari-VirtualBox>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.0.64]
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l1RLO-00533u-P6
X-Mailman-Approved-At: Mon, 18 Jan 2021 10:24:46 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 04/10] fs/ntfs3: Add file
 operations and implementation
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
Sent: Monday, January 4, 2021 12:58 AM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de; ebiggers@kernel.org;
> andy.lavr@gmail.com
> Subject: Re: [PATCH v17 04/10] fs/ntfs3: Add file operations and implementation
> 
> On Thu, Dec 31, 2020 at 06:23:55PM +0300, Konstantin Komarov wrote:
> > This adds file operations and implementation
> >
> > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > ---
> >  fs/ntfs3/dir.c     |  570 ++++++++
> >  fs/ntfs3/file.c    | 1140 ++++++++++++++++
> >  fs/ntfs3/frecord.c | 3088 ++++++++++++++++++++++++++++++++++++++++++++
> >  fs/ntfs3/namei.c   |  590 +++++++++
> >  fs/ntfs3/record.c  |  614 +++++++++
> >  fs/ntfs3/run.c     | 1254 ++++++++++++++++++
> >  6 files changed, 7256 insertions(+)
> >  create mode 100644 fs/ntfs3/dir.c
> >  create mode 100644 fs/ntfs3/file.c
> >  create mode 100644 fs/ntfs3/frecord.c
> >  create mode 100644 fs/ntfs3/namei.c
> >  create mode 100644 fs/ntfs3/record.c
> >  create mode 100644 fs/ntfs3/run.c
> >
> > diff --git a/fs/ntfs3/file.c b/fs/ntfs3/file.c
> 
> > +int ntfs_file_fsync(struct file *filp, loff_t start, loff_t end, int datasync)
> > +{
> > +	return generic_file_fsync(filp, start, end, datasync);
> > +}
> 
> Do we have a reson why we implement this if we just use generic. Isn't
> it more clear if we use generic fsync straight away?
> 
Hi! Indeed. Migration to the generic fsync will be introduced in v18.

> > +static long ntfs_fallocate(struct file *file, int mode, loff_t vbo, loff_t len)
> > +{
> 
> > +	/* Return error if mode is not supported */
> > +	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
> > +		     FALLOC_FL_COLLAPSE_RANGE))
> > +		return -EOPNOTSUPP;
> 
> > +
> > +	if (mode & FALLOC_FL_PUNCH_HOLE) {
> 
> > +	} else if (mode & FALLOC_FL_COLLAPSE_RANGE) {
> 
> > +	} else {
> > +		/*
> > +		 * normal file: allocate clusters, do not change 'valid' size
> > +		 */
> > +		err = ntfs_set_size(inode, max(end, i_size));
> > +		if (err)
> > +			goto out;
> > +
> > +		if (is_sparsed(ni) || is_compressed(ni)) {
> > +			CLST vcn_v = ni->i_valid >> sbi->cluster_bits;
> > +			CLST vcn = vbo >> sbi->cluster_bits;
> > +			CLST cend = bytes_to_cluster(sbi, end);
> > +			CLST lcn, clen;
> > +			bool new;
> > +
> > +			/*
> > +			 * allocate but not zero new clusters (see below comments)
> > +			 * this breaks security (one can read unused on-disk areas)
> > +			 * zeroing these clusters may be too long
> > +			 * may be we should check here for root rights?
> > +			 */
> > +			for (; vcn < cend; vcn += clen) {
> > +				err = attr_data_get_block(ni, vcn, cend - vcn,
> > +							  &lcn, &clen, &new);
> > +				if (err)
> > +					goto out;
> > +				if (!new || vcn >= vcn_v)
> > +					continue;
> > +
> > +				/*
> > +				 * Unwritten area
> > +				 * NTFS is not able to store several unwritten areas
> > +				 * Activate 'ntfs_sparse_cluster' to zero new allocated clusters
> > +				 *
> > +				 * Dangerous in case:
> > +				 * 1G of sparsed clusters + 1 cluster of data =>
> > +				 * valid_size == 1G + 1 cluster
> > +				 * fallocate(1G) will zero 1G and this can be very long
> > +				 * xfstest 016/086 will fail whithout 'ntfs_sparse_cluster'
> > +				 */
> > +				/*ntfs_sparse_cluster(inode, NULL, vcn,
> > +				 *		    min(vcn_v - vcn, clen));
> > +				 */
> > +			}
> > +		}
> > +
> > +		if (mode & FALLOC_FL_KEEP_SIZE) {
> 
> Isn't this hole else already (mode & FALLOC_FL_KEEP_SIZE?

Sorry, can you please clarify your question? Not sure, understood it.
> 
> > +			ni_lock(ni);
> > +			/*true - keep preallocated*/
> > +			err = attr_set_size(ni, ATTR_DATA, NULL, 0,
> > +					    &ni->file.run, i_size, &ni->i_valid,
> > +					    true, NULL);
> > +			ni_unlock(ni);
> > +		}
> > +	}
> > +
> > +	if (!err) {
> > +		inode->i_ctime = inode->i_mtime = current_time(inode);
> > +		mark_inode_dirty(inode);
> > +	}
> > +out:
> > +	if (err == -EFBIG)
> > +		err = -ENOSPC;
> > +
> > +	inode_unlock(inode);
> > +	return err;
> > +}
> 
> > diff --git a/fs/ntfs3/namei.c b/fs/ntfs3/namei.c
> 
> > +int mi_get(struct ntfs_sb_info *sbi, CLST rno, struct mft_inode **mi)
> > +{
> > +	int err;
> > +	struct mft_inode *m = ntfs_alloc(sizeof(struct mft_inode), 1);
> > +
> > +	if (!m)
> > +		return -ENOMEM;
> > +
> > +	err = mi_init(m, sbi, rno);
> 
> If error happend should we just free end exit. Now we call mi_put() to
> clean up.
> 

Done, will be fixed in v18.

> > +	if (!err)
> > +		err = mi_read(m, false);
> > +
> > +	if (err) {
> > +		mi_put(m);
> > +		return err;
> > +	}
> > +
> > +	*mi = m;
> > +	return 0;
> > +}
> 
> > +struct ATTRIB *mi_enum_attr(struct mft_inode *mi, struct ATTRIB *attr)
> > +{
> > +	const struct MFT_REC *rec = mi->mrec;
> > +	u32 used = le32_to_cpu(rec->used);
> > +	u32 t32, off, asize;
> > +	u16 t16;
> > +
> > +	if (!attr) {
> > +		u32 total = le32_to_cpu(rec->total);
> > +
> > +		off = le16_to_cpu(rec->attr_off);
> > +
> > +		if (used > total)
> > +			goto out;
> > +
> > +		if (off >= used || off < MFTRECORD_FIXUP_OFFSET_1 ||
> > +		    !IsDwordAligned(off)) {
> > +			goto out;
> > +		}
> > +
> > +		/* Skip non-resident records */
> > +		if (!is_rec_inuse(rec))
> > +			goto out;
> > +
> > +		attr = Add2Ptr(rec, off);
> > +	} else {
> > +		/* Check if input attr inside record */
> > +		off = PtrOffset(rec, attr);
> > +		if (off >= used)
> > +			goto out;
> > +
> > +		asize = le32_to_cpu(attr->size);
> > +		if (asize < SIZEOF_RESIDENT)
> > +			goto out;
> > +
> > +		attr = Add2Ptr(attr, asize);
> > +		off += asize;
> > +	}
> > +
> > +	asize = le32_to_cpu(attr->size);
> > +
> > +	/* Can we use the first field (attr->type) */
> > +	if (off + 8 > used) {
> > +		static_assert(QuadAlign(sizeof(enum ATTR_TYPE)) == 8);
> > +		goto out;
> > +	}
> > +
> > +	if (attr->type == ATTR_END) {
> > +		if (used != off + 8)
> > +			goto out;
> 
> This if is not needed if there is return NULL after. But return
> NULL might also be bug.
> 

Thanks, will also be fixed in v18.

> > +		return NULL;
> > +	}
> > +
> > +	t32 = le32_to_cpu(attr->type);
> > +	if ((t32 & 0xf) || (t32 > 0x100))
> > +		goto out;
> > +
> > +	/* Check boundary */
> > +	if (off + asize > used)
> > +		goto out;
> > +
> > +	/* Check size of attribute */
> > +	if (!attr->non_res) {
> > +		if (asize < SIZEOF_RESIDENT)
> > +			goto out;
> > +
> > +		t16 = le16_to_cpu(attr->res.data_off);
> > +
> > +		if (t16 > asize)
> > +			goto out;
> > +
> > +		t32 = le32_to_cpu(attr->res.data_size);
> > +		if (t16 + t32 > asize)
> > +			goto out;
> > +
> > +		return attr;
> > +	}
> > +
> > +	/* Check some nonresident fields */
> > +	if (attr->name_len &&
> > +	    le16_to_cpu(attr->name_off) + sizeof(short) * attr->name_len >
> > +		    le16_to_cpu(attr->nres.run_off)) {
> > +		goto out;
> > +	}
> > +
> > +	if (attr->nres.svcn || !is_attr_ext(attr)) {
> > +		if (asize + 8 < SIZEOF_NONRESIDENT)
> > +			goto out;
> > +
> > +		if (attr->nres.c_unit)
> > +			goto out;
> > +	} else if (asize + 8 < SIZEOF_NONRESIDENT_EX)
> > +		goto out;
> > +
> > +	return attr;
> > +
> > +out:
> > +	return NULL;
> > +}
> 
> > diff --git a/fs/ntfs3/run.c b/fs/ntfs3/run.c
> 
> > +static inline int run_packed_size(const s64 *n)
> > +{
> > +#ifdef __BIG_ENDIAN
> 
> These are whole functions with ifdef. It would be maybe more clear
> that there really is whole functions to both endiand.
> 

This is controversial question, but fixed as well (in v18).

> > +	const u8 *p = (const u8 *)n + sizeof(*n) - 1;
> > +
> > +	if (*n >= 0) {
> > +		if (p[-7] || p[-6] || p[-5] || p[-4])
> > +			p -= 4;
> > +		if (p[-3] || p[-2])
> > +			p -= 2;
> > +		if (p[-1])
> > +			p -= 1;
> > +		if (p[0] & 0x80)
> > +			p -= 1;
> > +	} else {
> > +		if (p[-7] != 0xff || p[-6] != 0xff || p[-5] != 0xff ||
> > +		    p[-4] != 0xff)
> > +			p -= 4;
> > +		if (p[-3] != 0xff || p[-2] != 0xff)
> > +			p -= 2;
> > +		if (p[-1] != 0xff)
> > +			p -= 1;
> > +		if (!(p[0] & 0x80))
> > +			p -= 1;
> > +	}
> > +	return (const u8 *)n + sizeof(*n) - p;
> 
> }
> #else
> static inline int run_packed_size(const s64 *n)
> {
> 
> Something like this.
> 
> > +	const u8 *p = (const u8 *)n;
> > +
> > +	if (*n >= 0) {
> > +		if (p[7] || p[6] || p[5] || p[4])
> > +			p += 4;
> > +		if (p[3] || p[2])
> > +			p += 2;
> > +		if (p[1])
> > +			p += 1;
> > +		if (p[0] & 0x80)
> > +			p += 1;
> > +	} else {
> > +		if (p[7] != 0xff || p[6] != 0xff || p[5] != 0xff ||
> > +		    p[4] != 0xff)
> > +			p += 4;
> > +		if (p[3] != 0xff || p[2] != 0xff)
> > +			p += 2;
> > +		if (p[1] != 0xff)
> > +			p += 1;
> > +		if (!(p[0] & 0x80))
> > +			p += 1;
> > +	}
> > +
> > +	return 1 + p - (const u8 *)n;
> > +#endif
> > +}
> > +
> > +/*
> > + * run_pack
> > + *
> > + * packs runs into buffer
> > + * packed_vcns - how much runs we have packed
> > + * packed_size - how much bytes we have used run_buf
> > + */
> > +int run_pack(const struct runs_tree *run, CLST svcn, CLST len, u8 *run_buf,
> > +	     u32 run_buf_size, CLST *packed_vcns)
> > +{
> > +	CLST next_vcn, vcn, lcn;
> > +	CLST prev_lcn = 0;
> > +	CLST evcn1 = svcn + len;
> > +	int packed_size = 0;
> > +	size_t i;
> > +	bool ok;
> > +	s64 dlcn, len64;
> > +	int offset_size, size_size, t;
> > +	const u8 *p;
> > +
> > +	next_vcn = vcn = svcn;
> > +
> > +	*packed_vcns = 0;
> > +
> > +	if (!len)
> > +		goto out;
> > +
> > +	ok = run_lookup_entry(run, vcn, &lcn, &len, &i);
> > +
> > +	if (!ok)
> > +		goto error;
> > +
> > +	if (next_vcn != vcn)
> > +		goto error;
> > +
> > +	for (;;) {
> > +		/* offset of current fragment relatively to previous fragment */
> > +		dlcn = 0;
> 
> This dlcn
> 
> > +		next_vcn = vcn + len;
> > +
> > +		if (next_vcn > evcn1)
> > +			len = evcn1 - vcn;
> > +
> > +		/*
> > +		 * mirror of len, but signed, because run_packed_size()
> > +		 * works with signed int only
> > +		 */
> > +		len64 = len;
> > +
> > +		/* how much bytes is packed len64 */
> > +		size_size = run_packed_size(&len64);
> 
> Does (s64 *)&len work just fine?
> 

In addition to Mattew's response:
NTFS by it's spec supports 64bit clusters, however ntfs.sys driver
uses 32bit clusters only. This is a default for ntfs3 as well, which may
be configured to 64bit as well. I.e. len may be both.

> > +
> > +		/* offset_size - how much bytes is packed dlcn */
> > +		if (lcn == SPARSE_LCN) {
> > +			offset_size = 0;
> 
> dlcn might be better to live here?
> 

You are right, done.

> > +		} else {
> > +			/* NOTE: lcn can be less than prev_lcn! */
> > +			dlcn = (s64)lcn - prev_lcn;
> > +			offset_size = run_packed_size(&dlcn);
> > +			prev_lcn = lcn;
> > +		}
> > +	
> > +		t = run_buf_size - packed_size - 2 - offset_size;
> > +		if (t <= 0)
> > +			goto out;
> > +
> > +		/* can we store this entire run */
> > +		if (t < size_size)
> > +			goto out;
> > +
> > +		if (run_buf) {
> > +			p = (u8 *)&len64;
> > +
> > +			/* pack run header */
> > +			run_buf[0] = ((u8)(size_size | (offset_size << 4)));
> > +			run_buf += 1;
> > +
> > +			/* Pack the length of run */
> > +			switch (size_size) {
> > +#ifdef __BIG_ENDIAN
> > +			case 8:
> > +				run_buf[7] = p[0];
> > +				fallthrough;
> > +			case 7:
> > +				run_buf[6] = p[1];
> > +				fallthrough;
> > +			case 6:
> > +				run_buf[5] = p[2];
> > +				fallthrough;
> > +			case 5:
> > +				run_buf[4] = p[3];
> > +				fallthrough;
> > +			case 4:
> > +				run_buf[3] = p[4];
> > +				fallthrough;
> > +			case 3:
> > +				run_buf[2] = p[5];
> > +				fallthrough;
> > +			case 2:
> > +				run_buf[1] = p[6];
> > +				fallthrough;
> > +			case 1:
> > +				run_buf[0] = p[7];
> > +#else
> > +			case 8:
> > +				run_buf[7] = p[7];
> > +				fallthrough;
> > +			case 7:
> > +				run_buf[6] = p[6];
> > +				fallthrough;
> > +			case 6:
> > +				run_buf[5] = p[5];
> > +				fallthrough;
> > +			case 5:
> > +				run_buf[4] = p[4];
> > +				fallthrough;
> > +			case 4:
> > +				run_buf[3] = p[3];
> > +				fallthrough;
> > +			case 3:
> > +				run_buf[2] = p[2];
> > +				fallthrough;
> > +			case 2:
> > +				run_buf[1] = p[1];
> > +				fallthrough;
> > +			case 1:
> > +				run_buf[0] = p[0];
> > +#endif
> > +			}
> 
> Why is this not own function? We use this like 5 places. Also isn't
> little endian just memcopy()
> 

You are right, for little endiand this is just memcopy, but if it isn't
inlined, we will have overhead calling the function.

> > +
> > +			run_buf += size_size;
> > +			p = (u8 *)&dlcn;
> 
> I think that when we have function for that switch tmp p is not needed
> anymore.
> 

Yes, but this doesn't give more readability or simplification I think.
More of a personal preference.

> > +
> > +			/* Pack the offset from previous lcn */
> > +			switch (offset_size) {
> > +#ifdef __BIG_ENDIAN
> > +			case 8:
> > +				run_buf[7] = p[0];
> > +				fallthrough;
> > +			case 7:
> > +				run_buf[6] = p[1];
> > +				fallthrough;
> > +			case 6:
> > +				run_buf[5] = p[2];
> > +				fallthrough;
> > +			case 5:
> > +				run_buf[4] = p[3];
> > +				fallthrough;
> > +			case 4:
> > +				run_buf[3] = p[4];
> > +				fallthrough;
> > +			case 3:
> > +				run_buf[2] = p[5];
> > +				fallthrough;
> > +			case 2:
> > +				run_buf[1] = p[6];
> > +				fallthrough;
> > +			case 1:
> > +				run_buf[0] = p[7];
> > +#else
> > +			case 8:
> > +				run_buf[7] = p[7];
> > +				fallthrough;
> > +			case 7:
> > +				run_buf[6] = p[6];
> > +				fallthrough;
> > +			case 6:
> > +				run_buf[5] = p[5];
> > +				fallthrough;
> > +			case 5:
> > +				run_buf[4] = p[4];
> > +				fallthrough;
> > +			case 4:
> > +				run_buf[3] = p[3];
> > +				fallthrough;
> > +			case 3:
> > +				run_buf[2] = p[2];
> > +				fallthrough;
> > +			case 2:
> > +				run_buf[1] = p[1];
> > +				fallthrough;
> > +			case 1:
> > +				run_buf[0] = p[0];
> > +#endif
> > +			}
> 
> > +int run_get_highest_vcn(CLST vcn, const u8 *run_buf, u64 *highest_vcn)
> > +{
> 
> > +		/* skip size_size */
> > +		run += size_size;
> > +
> > +		if (!len)
> > +			goto error;
> > +
> > +		run += offset_size;
> 
> Can this be straight
> run += size_size + offset_size;
> 

Done.

> > +
> > +#ifdef NTFS3_64BIT_CLUSTER
> > +		if ((vcn >> 32) || (len >> 32))
> > +			goto error;
> > +#endif
> > +		vcn64 += len;
> > +	}
> > +
> > +	*highest_vcn = vcn64 - 1;
> > +	return 0;
> > +}


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
