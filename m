Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7DC2D91B6
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 14 Dec 2020 03:24:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kodXl-00081E-0L; Mon, 14 Dec 2020 02:24:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1knlHP-0004wp-Je
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Dec 2020 16:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gaJXBhrA6SVgI+3Xva2LJf27yCKYkaztXkIgb/m62UE=; b=eSwYB06AjsAccKHIep/v5nyoBL
 2GRqU4v1kB18hWNLU3Vrsgeg74SzfyjEaYmGLVv5taXyBLGgjhSvvrzVMZBHxxzjpc3gZNu8erxWV
 LROHEhnvhS19Ffbiz0o7vky/QGGahNBsYPa2VyOfPuqnFuVJgU7kxx41GT3ptsJ5Yswk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gaJXBhrA6SVgI+3Xva2LJf27yCKYkaztXkIgb/m62UE=; b=OQG8Ax/m7C7Yu0Hmx2xsm88VTt
 SR4MUD4UDpwOGox2yaMV8oI8j1124SZgCi+NOpCGciTjRkpCwmLX3PzO6kfM7XPvZ6w6z3fLoPm6D
 YozTVNGC1dz64MCkyLdS/RK9O7822UqkhLmjy3/AGLWPYKCjIn60NM2j2LRPSs+Mx0jY=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1knlHK-008DTn-9g
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 11 Dec 2020 16:28:27 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id CF3E91CC;
 Fri, 11 Dec 2020 19:28:15 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1607704095;
 bh=gaJXBhrA6SVgI+3Xva2LJf27yCKYkaztXkIgb/m62UE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=gfsbqWdBz205WU5aFgkDWM/z1yDKf0m8O6Dysa4s5rl7+OMd2vn64tjqMmKaygUIT
 z+4i09kAqZ5m9IGzea7Og6IHkqLDw0nDKcmElqdVfZ2dwAG96M7RO4/ELWkgupuVQG
 BRBrCiPCAEreTkYlMqkSIbxQnGSev4qaQzGHLWJk=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 11 Dec 2020 19:28:15 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 11 Dec 2020 19:28:15 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: Eric Biggers <ebiggers@kernel.org>
Thread-Topic: [PATCH v14 06/10] fs/ntfs3: Add compression
Thread-Index: AQHWylTdIpZR6rup4EqAA/Bg1BTo06nnEmaAgAsMS3A=
Date: Fri, 11 Dec 2020 16:28:15 +0000
Message-ID: <d5b485fa9ced4923a47704c9ec19552e@paragon-software.com>
References: <20201204154600.1546096-1-almaz.alexandrovich@paragon-software.com>
 <20201204154600.1546096-7-almaz.alexandrovich@paragon-software.com>
 <X8qCLXJOit0M+4X7@sol.localdomain>
In-Reply-To: <X8qCLXJOit0M+4X7@sol.localdomain>
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
 for more information. [URIs: suse.cz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1knlHK-008DTn-9g
X-Mailman-Approved-At: Mon, 14 Dec 2020 02:24:51 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v14 06/10] fs/ntfs3: Add compression
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
Sent: Friday, December 4, 2020 9:39 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de
> Subject: Re: [PATCH v14 06/10] fs/ntfs3: Add compression
> 
> On Fri, Dec 04, 2020 at 06:45:56PM +0300, Konstantin Komarov wrote:
> > This adds compression
> >
> > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > ---
> >  fs/ntfs3/lib/common_defs.h       | 196 +++++++++++
> >  fs/ntfs3/lib/decompress_common.c | 314 +++++++++++++++++
> >  fs/ntfs3/lib/decompress_common.h | 558 +++++++++++++++++++++++++++++++
> >  fs/ntfs3/lib/lzx_common.c        | 204 +++++++++++
> >  fs/ntfs3/lib/lzx_common.h        |  31 ++
> >  fs/ntfs3/lib/lzx_constants.h     | 113 +++++++
> >  fs/ntfs3/lib/lzx_decompress.c    | 553 ++++++++++++++++++++++++++++++
> >  fs/ntfs3/lib/xpress_constants.h  |  23 ++
> >  fs/ntfs3/lib/xpress_decompress.c | 165 +++++++++
> >  fs/ntfs3/lznt.c                  | 452 +++++++++++++++++++++++++
> >  10 files changed, 2609 insertions(+)
> >  create mode 100644 fs/ntfs3/lib/common_defs.h
> >  create mode 100644 fs/ntfs3/lib/decompress_common.c
> >  create mode 100644 fs/ntfs3/lib/decompress_common.h
> >  create mode 100644 fs/ntfs3/lib/lzx_common.c
> >  create mode 100644 fs/ntfs3/lib/lzx_common.h
> >  create mode 100644 fs/ntfs3/lib/lzx_constants.h
> >  create mode 100644 fs/ntfs3/lib/lzx_decompress.c
> >  create mode 100644 fs/ntfs3/lib/xpress_constants.h
> >  create mode 100644 fs/ntfs3/lib/xpress_decompress.c
> >  create mode 100644 fs/ntfs3/lznt.c
> 
> This really could use a much better commit message.  Including mentioning where
> the LZX and XPRESS decompression code came from
> (https://github.com/ebiggers/ntfs-3g-system-compression).
> 

Hi Eric! Fixed in V15!

> Also note you've marked the files as "SPDX-License-Identifier: GPL-2.0",
> but they really are "SPDX-License-Identifier: GPL-2.0-or-later".
> 

Thanks, fixed as well.

> Also I still think you should consider using the simpler version from
> ntfs-3g-system-compression commit 3ddd227ee8e3, which I had originally intended
> to be included in NTFS-3G itself.  That version was fewer lines of code and
> fewer files, as it was simplified for decompression-only.  The latest version
> (the one you're using) is shared with a project that also implements compression
> (so that I can more easily maintain both projects), so it's more complex than
> needed for decompression-only support.  But in the kernel context it may make
> sense to go with a simpler version.  There are a few performance optimizations
> you'd miss by going with the older version, but they weren't too significant,
> and probably you don't need to squeeze out every bit of performance possible
> when reading XPRESS and LZX-compressed files in this context?
> 
> - Eric

We used the newest code initially. Looking at the commit you've pointed out, but it will
take some time as needs to pass full set of tests with new code. On the differences you've
mentioned between the first and latest code in ntfs-3g system compression: we've removed
the optimizations (needed to go into kernel), also the reparse points stuff is being parsed by
ntfs3 driver itself. Given this, doesn't seems there are many differences remain.
Also, we'll follow your recommendations, if you highly recommend to stick to the commit
you've mentioned (but at this moment it seems "newer=better" formula still valid).

Thanks!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
