Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB312D91BA
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 14 Dec 2020 03:24:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kodXl-00081Z-3e; Mon, 14 Dec 2020 02:24:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1knlKR-0003hH-1n
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Dec 2020 16:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A8AVjziyGS9mvqPp+KoDokVlgdokqfXgWn3YrrPSS3E=; b=iGxHjeAD1Vzqu4G6shA0JpygGb
 Jds+RUiwlRazipRGnUkKmYgBOGiilJR2D7mYkuuNNukA2aI2GU1y3+7W1UKWYjsp3pnAeE1AL4aJ4
 W2Ag6wNP9uEWutLhaEf+pzCyennjYIgR/VK0V1FryI9rbVn4281lrNezsF9UVPOaBcKA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A8AVjziyGS9mvqPp+KoDokVlgdokqfXgWn3YrrPSS3E=; b=PesqTuoqWvknYwDlrigJcbBeA1
 V1WBSW2jiLmSiYmfoWuxglZYIcgnFtMq8xDi1Zccv0rKDbjr0MQM9meQ2jSeJ93p9K6yCBCmXtxV1
 TrASP3bpBCZzP7/sI6v+eAUJrCHIV8/u5FnCnHE41vbIQZir3eHcHV+fmDP5zsIPKcbo=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1knlKH-008Dgz-9f
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Dec 2020 16:31:35 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id CDD8D822F5;
 Fri, 11 Dec 2020 19:31:18 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1607704278;
 bh=A8AVjziyGS9mvqPp+KoDokVlgdokqfXgWn3YrrPSS3E=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=Prq+kumYRKebBLRY61bLbcEznawpNKYk5DRV0dMef2+dZrwCZc3k0TNElbmosHkNs
 fT4y9O9rU8ZI94+8Cxvs+liwhhT3FHXjcOCWnrOA9TDkaHCnz2rYf+0hgetHrEeLwG
 pgu0qjvDtQ4+/6o2ouaznqff2jIi4keYMd8xi8eE=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 11 Dec 2020 19:31:18 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 11 Dec 2020 19:31:18 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: Eric Biggers <ebiggers@kernel.org>
Thread-Topic: [PATCH v14 04/10] fs/ntfs3: Add file operations and
 implementation
Thread-Index: AQHWylTc0sqKo6zsN0SFUheHXUqDgannEzcAgAsNYqA=
Date: Fri, 11 Dec 2020 16:31:18 +0000
Message-ID: <229c4a26f2834f8dabf566823936d3e4@paragon-software.com>
References: <20201204154600.1546096-1-almaz.alexandrovich@paragon-software.com>
 <20201204154600.1546096-5-almaz.alexandrovich@paragon-software.com>
 <X8qC3NaNv1kmCO4c@sol.localdomain>
In-Reply-To: <X8qC3NaNv1kmCO4c@sol.localdomain>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.8.36]
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1knlKH-008Dgz-9f
X-Mailman-Approved-At: Mon, 14 Dec 2020 02:24:51 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v14 04/10] fs/ntfs3: Add file
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
Cc: "nborisov@suse.com" <nborisov@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>, "joe@perches.com" <joe@perches.com>,
 "hch@lst.de" <hch@lst.de>, "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Eric Biggers <ebiggers@kernel.org>
Sent: Friday, December 4, 2020 9:42 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de
> Subject: Re: [PATCH v14 04/10] fs/ntfs3: Add file operations and implementation
> 
> On Fri, Dec 04, 2020 at 06:45:54PM +0300, Konstantin Komarov wrote:
> > +/* external compression lzx/xpress */
> > +static int decompress_lzx_xpress(struct ntfs_sb_info *sbi, const char *cmpr,
> > +				 size_t cmpr_size, void *unc, size_t unc_size,
> > +				 u32 frame_size)
> > +{
> > +	int err;
> > +	void *ctx;
> > +
> > +	if (cmpr_size == unc_size) {
> > +		/* frame not compressed */
> > +		memcpy(unc, cmpr, unc_size);
> > +		return 0;
> > +	}
> > +
> > +	err = 0;
> > +	ctx = NULL;
> > +	spin_lock(&sbi->compress.lock);
> > +	if (frame_size == 0x8000) {
> > +		/* LZX: frame compressed */
> > +		if (!sbi->compress.lzx) {
> > +			/* Lazy initialize lzx decompress context */
> > +			spin_unlock(&sbi->compress.lock);
> > +			ctx = lzx_allocate_decompressor(0x8000);
> > +			if (!ctx)
> > +				return -ENOMEM;
> > +			if (IS_ERR(ctx)) {
> > +				/* should never failed */
> > +				err = PTR_ERR(ctx);
> > +				goto out;
> > +			}
> > +
> > +			spin_lock(&sbi->compress.lock);
> > +			if (!sbi->compress.lzx) {
> > +				sbi->compress.lzx = ctx;
> > +				ctx = NULL;
> > +			}
> > +		}
> > +
> > +		if (lzx_decompress(sbi->compress.lzx, cmpr, cmpr_size, unc,
> > +				   unc_size)) {
> > +			err = -EINVAL;
> > +		}
> > +	} else {
> > +		/* XPRESS: frame compressed */
> > +		if (!sbi->compress.xpress) {
> > +			/* Lazy initialize xpress decompress context */
> > +			spin_unlock(&sbi->compress.lock);
> > +			ctx = xpress_allocate_decompressor();
> > +			if (!ctx)
> > +				return -ENOMEM;
> > +
> > +			spin_lock(&sbi->compress.lock);
> > +			if (!sbi->compress.xpress) {
> > +				sbi->compress.xpress = ctx;
> > +				ctx = NULL;
> > +			}
> > +		}
> > +
> > +		if (xpress_decompress(sbi->compress.xpress, cmpr, cmpr_size,
> > +				      unc, unc_size)) {
> > +			err = -EINVAL;
> > +		}
> > +	}
> > +	spin_unlock(&sbi->compress.lock);
> > +out:
> > +	ntfs_free(ctx);
> > +	return err;
> > +}
> 
> Decompression is a somewhat heavyweight operation.  Not the type of thing that
> should be done while holding a spin lock.
> 
> - Eric

Hi Eric! We plan to swap spinlock to mutex in the next version.

Best regards!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
