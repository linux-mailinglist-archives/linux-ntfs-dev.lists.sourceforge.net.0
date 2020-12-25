Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC482E33B1
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Dec 2020 03:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=anDJxpXReAAxuP+ULQM3NtuiHnRQJyMRPwYJe4zLExo=; b=PC3EcNwi7Xh18l2OYW35QPwrV
	E2Ab62+La8wKwC75qGYHxMqeOsPi4bCXeRW2rcKxTLJBhkDaUf79D6YxNl0eAXBer/pa8tQafs+s1
	5tJ8U99m9ge5doD/DxcBIYCk80Z4eUrfNNrPz5GZ8CNGvml9ag3bUTMsd+dofc5M2Io+Q=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ktiXS-0002Bb-7J; Mon, 28 Dec 2020 02:45:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kso4Z-0006Lj-Bu
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 25 Dec 2020 14:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a3vCXtOVAq0v1LpHhX/gxZhzzONc9DA9mRBJasl+8Xc=; b=ZFRQ8g6POsvrHkDLxws+P6Fpjl
 A6nt8DbZFNGOf16hTMeJi4q5d/NUToHsB3BtmW/w6ckSx4pAJQL4TL+Z/VREpzFPkQDzGcieWlOXT
 CojOPFz8fsLo0OnHR9ao08fddzUz6ccoYiN+HGak/jmkZM+izvkrEfq+/MMpXJ07hxHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a3vCXtOVAq0v1LpHhX/gxZhzzONc9DA9mRBJasl+8Xc=; b=W7tcxtrBROq4KRivolWmmSS9dU
 WTqgk8+jPFu02dcy/G+VLlOTWJhCDgjVL+Wl767OtbVBrWzgylUGD0js0NJNp8C4/eOtkEiZi+8N6
 77iSGFrOMUY6k3vJP4vwYZIUj1B8ci2qc/ZTuQcxY9iy8XRq9FLxhSmRgFP1Et4MMJ8Y=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kso4U-00CKMg-7w
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 25 Dec 2020 14:28:03 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 8E6201D60;
 Fri, 25 Dec 2020 17:27:49 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1608906469;
 bh=a3vCXtOVAq0v1LpHhX/gxZhzzONc9DA9mRBJasl+8Xc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=jqzGJ2VTkSERNY2Hb41cKzgmgnp3CWicIg1xf77UEQtpCBWysq4K+XA6ZImnAfacr
 nAgxr9XFUP8pY4hWe2vQ6A4x8TLc6quUGqoeUn0910q6MDrl6VnmeTt0h18wGCIQNj
 MiU1pspk4jU5vC9p4RsXcPb2Nki3/KsRo1d1AZWk=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 25 Dec 2020 17:27:49 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 25 Dec 2020 17:27:49 +0300
To: Eric Biggers <ebiggers@kernel.org>
Thread-Topic: [PATCH v14 04/10] fs/ntfs3: Add file operations and
 implementation
Thread-Index: AQHWylTc0sqKo6zsN0SFUheHXUqDgannEzcAgAsNYqCAFd5qAA==
Date: Fri, 25 Dec 2020 14:27:48 +0000
Message-ID: <b831c93b507f4c06905abac95f3d5ff2@paragon-software.com>
References: <20201204154600.1546096-1-almaz.alexandrovich@paragon-software.com>
 <20201204154600.1546096-5-almaz.alexandrovich@paragon-software.com>
 <X8qC3NaNv1kmCO4c@sol.localdomain>
 <229c4a26f2834f8dabf566823936d3e4@paragon-software.com>
In-Reply-To: <229c4a26f2834f8dabf566823936d3e4@paragon-software.com>
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
X-Headers-End: 1kso4U-00CKMg-7w
X-Mailman-Approved-At: Mon, 28 Dec 2020 02:45:35 +0000
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
From: Konstantin Komarov via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
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

Sent: Friday, December 11, 2020 7:31 PM
> To: 'Eric Biggers' <ebiggers@kernel.org>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de
> Subject: RE: [PATCH v14 04/10] fs/ntfs3: Add file operations and implementation
> 
> From: Eric Biggers <ebiggers@kernel.org>
> Sent: Friday, December 4, 2020 9:42 PM
> > To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> > aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> > linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de
> > Subject: Re: [PATCH v14 04/10] fs/ntfs3: Add file operations and implementation
> >
> > On Fri, Dec 04, 2020 at 06:45:54PM +0300, Konstantin Komarov wrote:
> > > +/* external compression lzx/xpress */
> > > +static int decompress_lzx_xpress(struct ntfs_sb_info *sbi, const char *cmpr,
> > > +				 size_t cmpr_size, void *unc, size_t unc_size,
> > > +				 u32 frame_size)
> > > +{
> > > +	int err;
> > > +	void *ctx;
> > > +
> > > +	if (cmpr_size == unc_size) {
> > > +		/* frame not compressed */
> > > +		memcpy(unc, cmpr, unc_size);
> > > +		return 0;
> > > +	}
> > > +
> > > +	err = 0;
> > > +	ctx = NULL;
> > > +	spin_lock(&sbi->compress.lock);
> > > +	if (frame_size == 0x8000) {
> > > +		/* LZX: frame compressed */
> > > +		if (!sbi->compress.lzx) {
> > > +			/* Lazy initialize lzx decompress context */
> > > +			spin_unlock(&sbi->compress.lock);
> > > +			ctx = lzx_allocate_decompressor(0x8000);
> > > +			if (!ctx)
> > > +				return -ENOMEM;
> > > +			if (IS_ERR(ctx)) {
> > > +				/* should never failed */
> > > +				err = PTR_ERR(ctx);
> > > +				goto out;
> > > +			}
> > > +
> > > +			spin_lock(&sbi->compress.lock);
> > > +			if (!sbi->compress.lzx) {
> > > +				sbi->compress.lzx = ctx;
> > > +				ctx = NULL;
> > > +			}
> > > +		}
> > > +
> > > +		if (lzx_decompress(sbi->compress.lzx, cmpr, cmpr_size, unc,
> > > +				   unc_size)) {
> > > +			err = -EINVAL;
> > > +		}
> > > +	} else {
> > > +		/* XPRESS: frame compressed */
> > > +		if (!sbi->compress.xpress) {
> > > +			/* Lazy initialize xpress decompress context */
> > > +			spin_unlock(&sbi->compress.lock);
> > > +			ctx = xpress_allocate_decompressor();
> > > +			if (!ctx)
> > > +				return -ENOMEM;
> > > +
> > > +			spin_lock(&sbi->compress.lock);
> > > +			if (!sbi->compress.xpress) {
> > > +				sbi->compress.xpress = ctx;
> > > +				ctx = NULL;
> > > +			}
> > > +		}
> > > +
> > > +		if (xpress_decompress(sbi->compress.xpress, cmpr, cmpr_size,
> > > +				      unc, unc_size)) {
> > > +			err = -EINVAL;
> > > +		}
> > > +	}
> > > +	spin_unlock(&sbi->compress.lock);
> > > +out:
> > > +	ntfs_free(ctx);
> > > +	return err;
> > > +}
> >
> > Decompression is a somewhat heavyweight operation.  Not the type of thing that
> > should be done while holding a spin lock.
> >
> > - Eric
> 
> Hi Eric! We plan to swap spinlock to mutex in the next version.
> 
> Best regards!

Hi Eric! Changed the global spinlock to the mutexes for each type of compression.
This should resolve the problem. Please check out the V16.

Thanks!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
