Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8182E33B9
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Dec 2020 03:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8R5uNwy6Tf1kYo7Wu3U1vryhAyaiPui3PAjiwAlv/sA=; b=eR02lbemHeKs3fhAeJIG0y818
	X62BC1b/6bRpOuCCqtYHN4mq5aM7lMtEjYqiBQOBdHR9KIrTRUksOKjUq7+JFprTH7ymvVcBgNsD+
	WGGxtkPA5z4F5dArIB/q40HeeigrwsSkZtxZ6CFBARL61874EPCRLFWDK88kXecZFODNo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ktiXS-0002CA-9C; Mon, 28 Dec 2020 02:45:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kso65-0006OQ-TT
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 25 Dec 2020 14:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SjRuFnOir9ov00MT7KJb/UJDoRO9X7wmJGdxGII63Vc=; b=R24cBM/N0LyCKfm++cH/M2EoQO
 QLKFzJ+ucgJadj7hw22pddXpTsOi2t6RbPMVWHb9B0FpoW1Dm+w+r/DXGdxtE5ZR77b2mLYAjQtA6
 9WGvEPfs+nRrPzXv/3flxW3XkO0M3YMV4f6BmA6dIJSte3a6fmAEWXEyZROv5rD2r0y4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SjRuFnOir9ov00MT7KJb/UJDoRO9X7wmJGdxGII63Vc=; b=i9r0sI0loBKgcVMwDY9NcKaa57
 ttyL9/mixDMd2rv+Am++nLPcwOV0aiWG8ePTeYZob4R5TlIiCBIga1bvTQeyTcVlCClIkvv4BUNXe
 N+BlQRgz7373ozJT/CD2ZBk0heceBa7qoscWK0Aub581Y+gnbT5f3bVZpQOevaodGkts=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kso5x-00CKOX-5V
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 25 Dec 2020 14:29:37 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 674927F4DB;
 Fri, 25 Dec 2020 17:29:15 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1608906555;
 bh=SjRuFnOir9ov00MT7KJb/UJDoRO9X7wmJGdxGII63Vc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=S4M4VbKc+MWIl/rXqN7ltDNbF3sLGw0opXoGPyDDL1K7Ka/xTy6NjEjLom8w+M6Qf
 HGCs93G3QIbbjFbmgFEePmjGn+ICF5wMrxzniAbigIBqtk0+FoLzLUGtVVkFCWjoGN
 sdyAJ4rFiWY3ZSEMsdsksYpdmshOTUvh0GOxWPao=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 25 Dec 2020 17:29:15 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 25 Dec 2020 17:29:15 +0300
To: Eric Biggers <ebiggers@kernel.org>
Thread-Topic: [PATCH v14 06/10] fs/ntfs3: Add compression
Thread-Index: AQHWylTdIpZR6rup4EqAA/Bg1BTo06nnEmaAgAsMS3CAFeDpUA==
Date: Fri, 25 Dec 2020 14:29:14 +0000
Message-ID: <e9a7b40787e14f6c93dfd6656735fed8@paragon-software.com>
References: <20201204154600.1546096-1-almaz.alexandrovich@paragon-software.com>
 <20201204154600.1546096-7-almaz.alexandrovich@paragon-software.com>
 <X8qCLXJOit0M+4X7@sol.localdomain>
 <d5b485fa9ced4923a47704c9ec19552e@paragon-software.com>
In-Reply-To: <d5b485fa9ced4923a47704c9ec19552e@paragon-software.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kso5x-00CKOX-5V
X-Mailman-Approved-At: Mon, 28 Dec 2020 02:45:35 +0000
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

From: Konstantin Komarov
> Sent: Friday, December 11, 2020 7:28 PM
> To: 'Eric Biggers' <ebiggers@kernel.org>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de
> Subject: RE: [PATCH v14 06/10] fs/ntfs3: Add compression
> 
> From: Eric Biggers <ebiggers@kernel.org>
> Sent: Friday, December 4, 2020 9:39 PM
> > To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> > aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> > linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de
> > Subject: Re: [PATCH v14 06/10] fs/ntfs3: Add compression
> >
> > On Fri, Dec 04, 2020 at 06:45:56PM +0300, Konstantin Komarov wrote:
> > > This adds compression
> > >
> > > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > > ---
> > >  fs/ntfs3/lib/common_defs.h       | 196 +++++++++++
> > >  fs/ntfs3/lib/decompress_common.c | 314 +++++++++++++++++
> > >  fs/ntfs3/lib/decompress_common.h | 558 +++++++++++++++++++++++++++++++
> > >  fs/ntfs3/lib/lzx_common.c        | 204 +++++++++++
> > >  fs/ntfs3/lib/lzx_common.h        |  31 ++
> > >  fs/ntfs3/lib/lzx_constants.h     | 113 +++++++
> > >  fs/ntfs3/lib/lzx_decompress.c    | 553 ++++++++++++++++++++++++++++++
> > >  fs/ntfs3/lib/xpress_constants.h  |  23 ++
> > >  fs/ntfs3/lib/xpress_decompress.c | 165 +++++++++
> > >  fs/ntfs3/lznt.c                  | 452 +++++++++++++++++++++++++
> > >  10 files changed, 2609 insertions(+)
> > >  create mode 100644 fs/ntfs3/lib/common_defs.h
> > >  create mode 100644 fs/ntfs3/lib/decompress_common.c
> > >  create mode 100644 fs/ntfs3/lib/decompress_common.h
> > >  create mode 100644 fs/ntfs3/lib/lzx_common.c
> > >  create mode 100644 fs/ntfs3/lib/lzx_common.h
> > >  create mode 100644 fs/ntfs3/lib/lzx_constants.h
> > >  create mode 100644 fs/ntfs3/lib/lzx_decompress.c
> > >  create mode 100644 fs/ntfs3/lib/xpress_constants.h
> > >  create mode 100644 fs/ntfs3/lib/xpress_decompress.c
> > >  create mode 100644 fs/ntfs3/lznt.c
> >
> > This really could use a much better commit message.  Including mentioning where
> > the LZX and XPRESS decompression code came from
> > (https://github.com/ebiggers/ntfs-3g-system-compression).
> >
> 
> Hi Eric! Fixed in V15!
> 
> > Also note you've marked the files as "SPDX-License-Identifier: GPL-2.0",
> > but they really are "SPDX-License-Identifier: GPL-2.0-or-later".
> >
> 
> Thanks, fixed as well.
> 
> > Also I still think you should consider using the simpler version from
> > ntfs-3g-system-compression commit 3ddd227ee8e3, which I had originally intended
> > to be included in NTFS-3G itself.  That version was fewer lines of code and
> > fewer files, as it was simplified for decompression-only.  The latest version
> > (the one you're using) is shared with a project that also implements compression
> > (so that I can more easily maintain both projects), so it's more complex than
> > needed for decompression-only support.  But in the kernel context it may make
> > sense to go with a simpler version.  There are a few performance optimizations
> > you'd miss by going with the older version, but they weren't too significant,
> > and probably you don't need to squeeze out every bit of performance possible
> > when reading XPRESS and LZX-compressed files in this context?
> >
> > - Eric
> 
> We used the newest code initially. Looking at the commit you've pointed out, but it will
> take some time as needs to pass full set of tests with new code. On the differences you've
> mentioned between the first and latest code in ntfs-3g system compression: we've removed
> the optimizations (needed to go into kernel), also the reparse points stuff is being parsed by
> ntfs3 driver itself. Given this, doesn't seems there are many differences remain.
> Also, we'll follow your recommendations, if you highly recommend to stick to the commit
> you've mentioned (but at this moment it seems "newer=better" formula still valid).
> 
> Thanks!

Hi Eric! The code in V16 is now based on the initial ntfs-3g plugin code, just as you suggested.

Best regards.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
