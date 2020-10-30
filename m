Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7832A1B65
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1EC-0001vD-OE; Sun, 01 Nov 2020 00:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kYWjm-0002by-AW
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 15:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=syPIYL65kzdSI9QtlC1kkmn71u9ZYAZkCYUkgaozJR0=; b=PAa+etwqwzTlmn39rQ6fMKEpKJ
 fPdZdWmx5fvKj59x0tC7dwtaDlOui6Zp0uKaMRnUHRSPxN4KaKnm4xASGBu8CEx20BGjbz73yPPPY
 LPDGp3/Ut5JW97OpA5ZSjpU5fAStE0pp8QVjCTNd5CYilqRZ4GKBy9Q5AM6zkCLCNYJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=syPIYL65kzdSI9QtlC1kkmn71u9ZYAZkCYUkgaozJR0=; b=em7NaUBXbF97Y+5laXlNqKXzr3
 m7RUehPtOnVp1vaLmowv0eHvKo9itBdTL+Rl4z9ZHa1cmHJco1tyDij+kzFx+swshLaYQCeVFmKl6
 JUQmq7mcUV4AL5GAZQ0WyhDcq4wPSdjWqH1/G2nSisLnUSJlPiv2Z9HUmhk4ukqVNQFI=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYWjZ-002kis-I9
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 15:54:46 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id DCC2A821E1;
 Fri, 30 Oct 2020 18:54:19 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1604073259;
 bh=syPIYL65kzdSI9QtlC1kkmn71u9ZYAZkCYUkgaozJR0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=CYotYB9f5yhJUVk3re1IZ5/cHgQOFkf/NWjQh6GkFrDl2D+BC3PdllRfbU5yfAUIa
 TbpyTNfnzfDlNnr9HU9F0V1cRRKlkmTPM2Cl2gxcsSCrEnqO8Mer8XUregPd7hUlwW
 5+PNO56HiSIMHexxCC+GjcgY6TzHv5//DVbzs5A4=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 30 Oct 2020 18:54:19 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 30 Oct 2020 18:54:19 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: Matthew Wilcox <willy@infradead.org>
Thread-Topic: [PATCH v10 02/10] fs/ntfs3: Add initialization of super block
Thread-Index: AQHWqVNpqBsn1Djmw0u2qExWV5sKkamlTrSAgAsIPMA=
Date: Fri, 30 Oct 2020 15:54:19 +0000
Message-ID: <afb07a383dc747398f65ac541206b562@paragon-software.com>
References: <20201023154431.1853715-1-almaz.alexandrovich@paragon-software.com>
 <20201023154431.1853715-3-almaz.alexandrovich@paragon-software.com>
 <20201023182503.GE20115@casper.infradead.org>
In-Reply-To: <20201023182503.GE20115@casper.infradead.org>
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
 for more information. [URIs: tuxera.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kYWjZ-002kis-I9
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:08 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v10 02/10] fs/ntfs3: Add initialization
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
Cc: "nborisov@suse.com" <nborisov@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>, "dsterba@suse.cz" <dsterba@suse.cz>,
 "joe@perches.com" <joe@perches.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "pali@kernel.org" <pali@kernel.org>, "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Matthew Wilcox <willy@infradead.org>
Sent: Friday, October 23, 2020 9:25 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com; linux-ntfs-
> dev@lists.sourceforge.net; anton@tuxera.com
> Subject: Re: [PATCH v10 02/10] fs/ntfs3: Add initialization of super block
> 
> On Fri, Oct 23, 2020 at 06:44:23PM +0300, Konstantin Komarov wrote:
> > +
> > +/*ntfs_readpage*/
> > +/*ntfs_readpages*/
> > +/*ntfs_writepage*/
> > +/*ntfs_writepages*/
> > +/*ntfs_block_truncate_page*/
> 
> What are these for?
> 
> > +int ntfs_readpage(struct file *file, struct page *page)
> > +{
> > +	int err;
> > +	struct address_space *mapping = page->mapping;
> > +	struct inode *inode = mapping->host;
> > +	struct ntfs_inode *ni = ntfs_i(inode);
> > +	u64 vbo = (u64)page->index << PAGE_SHIFT;
> > +	u64 valid;
> > +	struct ATTRIB *attr;
> > +	const char *data;
> > +	u32 data_size;
> > +
> [...]
> > +
> > +	if (is_compressed(ni)) {
> > +		if (PageUptodate(page)) {
> > +			unlock_page(page);
> > +			return 0;
> > +		}
> 
> You can skip this -- the readpage op won't be called for pages which
> are Uptodate.
> 
> > +	/* normal + sparse files */
> > +	err = mpage_readpage(page, ntfs_get_block);
> > +	if (err)
> > +		goto out;
> 
> It would be nice to use iomap instead of mpage, but that's a big ask.
> 
> > +	valid = ni->i_valid;
> > +	if (vbo < valid && valid < vbo + PAGE_SIZE) {
> > +		if (PageLocked(page))
> > +			wait_on_page_bit(page, PG_locked);
> > +		if (PageError(page)) {
> > +			ntfs_inode_warn(inode, "file garbage at 0x%llx", valid);
> > +			goto out;
> > +		}
> > +		zero_user_segment(page, valid & (PAGE_SIZE - 1), PAGE_SIZE);
> 
> Nono, you can't zero data after the page has been unlocked.  You can
> handle this case in ntfs_get_block().  If the block is entirely beyond
> i_size, returning a hole will cause mpage_readpage() to zero it.  If it
> straddles i_size, you can either ensure that the on-media block contains
> zeroes after the EOF, or if you can't depend on that, you can read it
> in synchronously in your get_block() and then zero the tail and set the
> buffer Uptodate.  Not the most appetising solution, but what you have here
> is racy with the user writing to it after reading.

Hello Matthew! Thanks a lot for this feedback. Fixed in v11, please check out.

Cheers!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
