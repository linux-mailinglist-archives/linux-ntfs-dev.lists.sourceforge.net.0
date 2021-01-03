Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F75B2E8F6B
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXU-0005vc-Qw; Mon, 04 Jan 2021 02:24:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kwBWV-0007Ff-7P
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 22:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IPkgGX+SKWseAA881v8oRHr85WnU1YqvzzzJRMs/71c=; b=lnloLo4RcplxC5zGOcA9X6nMfV
 IVnIbI6cLRMBckCLoJ4Wfo7NrWio5yRfw7g4jgVO4eGLOFqU5S68AJ/LETlKEdndfttLh/qaxZVFj
 +8b183QJXkFFOGLXrw0luV3j4/WO3A+BUOeshI7do6l6kGRqMe3YNdnbuRtaAIYXzn58=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IPkgGX+SKWseAA881v8oRHr85WnU1YqvzzzJRMs/71c=; b=Zn6lL49FFzMtcbrWn7UTOPRCSV
 qRDI903NeRqiMY6cuxpVOIi2yRlb2wyIgwI2BvtvKGTcRwkb95GrruohDfz43pixLMCVOVU98vgM8
 qj13up95asb29B32ouecvJJXfbb6zKVW5nQ05hzR3Kc0PtrgFdYCROUOU0AkCyDkAfKg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kwBWI-004St9-1j
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 22:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IPkgGX+SKWseAA881v8oRHr85WnU1YqvzzzJRMs/71c=; b=BdIKsHNTHDDRsSDH1FUIo5CixW
 fHX/00nq5Thq2nVnXzL0YbgDHkdY/qDUQrsPMorvAXhHt5f1BNttlCATeR6jkTV0FQt9Ad0tTyx81
 iaVc1Rav9ITLT5mVkawRsEsFACWkTUbVDvimQn3bx9NuKS9lGDdN2ZBIx7H0CMQaEigliabbWS3us
 MKtaOat9jms2jhHciwkXUhmGybyhT5rwm8RZqZLCE3lP0T13hvvW3rGT+R84cDbKfF16v4UPY22bV
 F7/McCtkUNeatMVFJXU/p1VsxkWYmcYc8j5afI+Gup+JbRXBxgjTv3BRlZDWwfpRW02m2hWNJ09S9
 yYFmplGw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1kwBUS-000Ogt-2m; Sun, 03 Jan 2021 22:05:04 +0000
Date: Sun, 3 Jan 2021 22:04:44 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210103220444.GA28414@casper.infradead.org>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-5-almaz.alexandrovich@paragon-software.com>
 <20210103215732.vbgcrf42xnao6gw2@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210103215732.vbgcrf42xnao6gw2@kari-VirtualBox>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kwBWI-004St9-1j
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
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
Cc: ebiggers@kernel.org, andy.lavr@gmail.com, nborisov@suse.com,
 rdunlap@infradead.org, dsterba@suse.cz, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Jan 03, 2021 at 11:57:32PM +0200, Kari Argillander wrote:
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

No.  run_packed_size() is going to load/store eight bytes to/from that
pointer.  You can't just cast a pointer to a different size and expect
it to work (it might happen to work, particularly on little-endian,
but big-endian is going to get completely the wrong value).



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
