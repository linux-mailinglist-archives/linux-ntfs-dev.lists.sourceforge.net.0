Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FE52FA341
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 15:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TYUi4XmJdLfQyqsecrfsD2eanZMGK/6vVO/GaPRjr78=; b=TgYj5O5opzU8ShEB8bq1Wxz02
	qfIf6ocLOV9k9jJ50tMRS/WRMYaA3jCqk+zQHwsuJ4sSbQQUWDeT6bG+bQq5CKzThvSEHyCDx76tK
	Ga53KAEeBY1xJdGa5uU+PgNF6EfoZw0BApo43zBSOqfEdGYOJGz35SbfEiDGp/adrSLdQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1Vhg-0005ce-4E; Mon, 18 Jan 2021 14:40:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1l1TE1-0007jd-Ao
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 12:01:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vHceS8rgoIK1PXhk2Onpa85/3bo7y8S6c44QIUn8Dvc=; b=ZoRbc1E/hhAIituVTfaWVOjBDv
 a7wChXZHp9QuUpAtwIl2FRzRORjMayAoSfAV4UnYOcq8B1lBuCqWN+/8pAbWjSt7EAjal5fHkyh5+
 wJ6i3nA8ryeNliDG1YVhahLL2oqhPU7rSxf5hPklwqg+WZbt1W7r5iJ0ovU2mewOjjHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vHceS8rgoIK1PXhk2Onpa85/3bo7y8S6c44QIUn8Dvc=; b=PY6RPe8sFOnvFMg+e2n2mqS2WU
 06n4EtxkU7Q3vjtitdK9pzKm46od559oi2AxkmwQOSNUQiuYX7HO86oLPb7R4pmg6LHJxPPhLm7o1
 nzmvsQTYexOfnoICz+ui+yN79hCYDF2miKTlPtDcJxD8CPwXs0X4loQOpIcwZHk2mAoE=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1TDo-00CWdt-Fy
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 12:01:37 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 20887241;
 Mon, 18 Jan 2021 15:01:05 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1610971265;
 bh=vHceS8rgoIK1PXhk2Onpa85/3bo7y8S6c44QIUn8Dvc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=jS4AH8DQGIGzee+RTZzQr1+93TWOpdYVffshauAgsvCmw+ZGAdun0SXEzxVWoJCht
 y+E+f93NL5IEg7UOfLmxKyXwhqg+Ugj1UFks8SWhBrEcjtjJZHznKGUkfrjM6gaC4s
 rpSu9oN5BZRcU/rFozo9JxmTng45o8uOaUxJ+TJU=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 18 Jan 2021 15:01:04 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Mon, 18 Jan 2021 15:01:04 +0300
To: Kari Argillander <kari.argillander@gmail.com>
Thread-Topic: [PATCH v17 05/10] fs/ntfs3: Add attrib operations
Thread-Index: AQHW34lESlOgt0gdi0CCf1q7eejdPqoWbvYAgBbwkNA=
Date: Mon, 18 Jan 2021 12:01:04 +0000
Message-ID: <4f25e89e96e644cfb0d200332a02efaf@paragon-software.com>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-6-almaz.alexandrovich@paragon-software.com>
 <20210104002554.gdxoyu2q2aaae5ph@kari-VirtualBox>
In-Reply-To: <20210104002554.gdxoyu2q2aaae5ph@kari-VirtualBox>
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
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
X-Headers-End: 1l1TDo-00CWdt-Fy
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:40:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 05/10] fs/ntfs3: Add attrib
 operations
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
Sent: Monday, January 4, 2021 3:26 AM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de; ebiggers@kernel.org;
> andy.lavr@gmail.com
> Subject: Re: [PATCH v17 05/10] fs/ntfs3: Add attrib operations
> 
> On Thu, Dec 31, 2020 at 06:23:56PM +0300, Konstantin Komarov wrote:
> > This adds attrib operations
> >
> > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > ---
> >  fs/ntfs3/attrib.c   | 2081 +++++++++++++++++++++++++++++++++++++++++++
> >  fs/ntfs3/attrlist.c |  463 ++++++++++
> >  fs/ntfs3/xattr.c    | 1072 ++++++++++++++++++++++
> >  3 files changed, 3616 insertions(+)
> >  create mode 100644 fs/ntfs3/attrib.c
> >  create mode 100644 fs/ntfs3/attrlist.c
> >  create mode 100644 fs/ntfs3/xattr.c
> >
> > diff --git a/fs/ntfs3/attrlist.c b/fs/ntfs3/attrlist.c
> 
> > +/*
> > + * al_find_ex
> > + *
> > + * finds the first le in the list which matches type, name and vcn
> > + * Returns NULL if not found
> > + */
> > +struct ATTR_LIST_ENTRY *al_find_ex(struct ntfs_inode *ni,
> > +				   struct ATTR_LIST_ENTRY *le,
> > +				   enum ATTR_TYPE type, const __le16 *name,
> > +				   u8 name_len, const CLST *vcn)
> > +{
> > +	struct ATTR_LIST_ENTRY *ret = NULL;
> > +	u32 type_in = le32_to_cpu(type);
> > +
> > +	while ((le = al_enumerate(ni, le))) {
> > +		u64 le_vcn;
> > +		int diff;
> > +
> > +		/* List entries are sorted by type, name and vcn */
> 
> Isn't name sorted with upcase sort.
> 

Hi! You are correct. Will be fixed in v18.

> > +		diff = le32_to_cpu(le->type) - type_in;
> > +		if (diff < 0)
> > +			continue;
> > +
> > +		if (diff > 0)
> > +			return ret;
> > +
> > +		if (le->name_len != name_len)
> > +			continue;
> > +
> > +		if (name_len &&
> > +		    memcmp(le_name(le), name, name_len * sizeof(short)))
> > +			continue;
> 
> So does this compare name correctly? So it is caller responsible that
> name is up_cased? Or does it even mater.
> 
> And this will check every name in right type. Why not use name_cmp and
> then we know if we over. It might be because performance. But maybe
> we can check that like every 10 iteration or something.
> 

Now name check will be only for list_entry with vcn==0.

> > +		if (!vcn)
> > +			return le;
> > +
> > +		le_vcn = le64_to_cpu(le->vcn);
> > +		if (*vcn == le_vcn)
> > +			return le;
> > +
> > +		if (*vcn < le_vcn)
> > +			return ret;
> > +
> > +		ret = le;
> 
> So we still have wrong vcn at this point. And we save that so we can
> return it. What happens if we will not found right one. Atlest function
> comment say that we should return NULL if we do not found matching entry.
> 

Can't agree here.
E.g. given list_entry: 0, 67, 89, 110, 137.
The function will return 89 as the similar thread stores the info about vcn==100.

> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +/*
> > + * al_find_le_to_insert
> > + *
> > + * finds the first list entry which matches type, name and vcn
> 
> This comment seems wrong? This seems to find insert point for new
> le.
> 

Thanks for this. Fixed.

> > + * Returns NULL if not found
> > + */
> > +static struct ATTR_LIST_ENTRY *
> > +al_find_le_to_insert(struct ntfs_inode *ni, enum ATTR_TYPE type,
> > +		     const __le16 *name, u8 name_len, const CLST *vcn)
> > +{
> > +	struct ATTR_LIST_ENTRY *le = NULL, *prev;
> > +	u32 type_in = le32_to_cpu(type);
> > +	int diff;
> > +
> > +	/* List entries are sorted by type, name, vcn */
> > +next:
> > +	le = al_enumerate(ni, prev = le);
> > +	if (!le)
> > +		goto out;
> > +	diff = le32_to_cpu(le->type) - type_in;
> > +	if (diff < 0)
> > +		goto next;
> > +	if (diff > 0)
> > +		goto out;
> > +
> > +	if (ntfs_cmp_names(name, name_len, le_name(le), le->name_len, NULL) > 0)
> > +		goto next;
> 
> Why not go out if compare is < 0. In my mind this will totally ignore
> name and next just find right vcn (or we come next ID) and call it a day.
> 

Will be fixed in v18 as well.

> NAME	VCN
> [AAB]	[2] <- Looks insert point for this.
> 
> [AAA]	[1]
> [AAB]	[1]
> 	    <- This is right point.
> [AAC]	[1]
> 	    <- But we tell that insert point is here.
> [AAD]	[2]
> 
> I might be totally wrong but please tell me what I'm missing.
> 
> > +	if (!vcn || *vcn > le64_to_cpu(le->vcn))
> > +		goto next;
> > +
> > +out:
> > +	if (!le)
> > +		le = prev ? Add2Ptr(prev, le16_to_cpu(prev->size)) :
> > +			    ni->attr_list.le;
> > +
> > +	return le;
> > +}
> 
> There seems to be lot of linear list search. Do you think it will be
> benefital to code binary or jump search for them? Just asking for
> intrest. Might be that it will not benefit at all but just thinking
> here.
> 
> I might try to do that in some point if someone see point of that.

It's nice idea, we will appreciate such patch. But please keep in mind that
binary search will outperform linear dramatically only for heavily fragmented files.
By the way, the same idea of replacing linear with binary search is implemented in
index.c (please refer to NTFS3_INDEX_BINARY_SEARCH).

Also, your notes on attrlist.c led us to refactor this file. Thanks once again!



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
