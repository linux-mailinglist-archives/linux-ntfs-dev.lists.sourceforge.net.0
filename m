Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 924503E49BC
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  9 Aug 2021 18:22:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mD83B-0006am-KA; Mon, 09 Aug 2021 16:22:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1mD7xN-00020N-JM
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 16:16:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hV8BuQ4XGeVeEzQJ9C3R5KKb0YJVQwXbWV5mttl1z2s=; b=UPyUerovpNKaIYOVRV99bMj6Io
 8zCKvpCNc0OPXDc41RSjkKBZEA1mOaM4BLJCoaiRFGn3N5U6XuT3rK9u1JkHwRYe/qoqz2wuTtmPS
 vzoK4O1067/M+SPtNWcPpnB0eoayVqAUlwM+SS+plkktedW/wWMLZ/1bNZ/gxOyCT7uM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hV8BuQ4XGeVeEzQJ9C3R5KKb0YJVQwXbWV5mttl1z2s=; b=MqwAYs7ALgVryfAmVjzdGb3Tnv
 7aZG0caQMxJSmNuCUK5vNTjiT7BEI7hHO5FewsIsTxQ6NAXh4LFtSWpsPq72Nfj6yoH7EqLmaq3xc
 gWUvr+I3eFeDuCpxng6k+m9xVUuj+3/8BL0kEuuBb2sFCgDHT6j5OHIUuX9hjOOLfaZE=;
Received: from relaydlg-01.paragon-software.com ([81.5.88.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mD7xC-0001iE-Il
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 09 Aug 2021 16:16:53 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relaydlg-01.paragon-software.com (Postfix) with ESMTPS id 377AA8204F;
 Mon,  9 Aug 2021 19:16:33 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1628525793;
 bh=hV8BuQ4XGeVeEzQJ9C3R5KKb0YJVQwXbWV5mttl1z2s=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=OERvHu/Co4Ip6GwS5PcB9LI8PkAj68oAnuc6PpSekkvqoJ7J6TYgBoJupWYwRbPs+
 2EsbNTtZrdcdMB33hw1YfrUpIe7YfsN0XHxzZP3FcPs9JX3YgRNxYWs24uUV7l7a6I
 3goVLSgIM5jeXhezAjQ7ivNSDlWz9SA+Yu64ypxg=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 9 Aug 2021 19:16:32 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.2176.009; Mon, 9 Aug 2021 19:16:32 +0300
To: "dsterba@suse.cz" <dsterba@suse.cz>
Thread-Topic: [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
Thread-Index: AQHXhICc1pQ/IBT4qUef2OyFKHPZBatq3zkAgACJiZA=
Date: Mon, 9 Aug 2021 16:16:32 +0000
Message-ID: <918ff89414fa49f8bcb2dfd00a7b0f0b@paragon-software.com>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210729134943.778917-11-almaz.alexandrovich@paragon-software.com>
 <20210809105652.GK5047@twin.jikos.cz>
In-Reply-To: <20210809105652.GK5047@twin.jikos.cz>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.0.26]
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [81.5.88.159 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mD7xC-0001iE-Il
X-Mailman-Approved-At: Mon, 09 Aug 2021 16:22:52 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
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
 "kari.argillander@gmail.com" <kari.argillander@gmail.com>,
 "nborisov@suse.com" <nborisov@suse.com>,
 "oleksandr@natalenko.name" <oleksandr@natalenko.name>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

> From: David Sterba <dsterba@suse.cz>
> Sent: Monday, August 9, 2021 1:57 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de; ebiggers@kernel.org;
> andy.lavr@gmail.com; kari.argillander@gmail.com; oleksandr@natalenko.name
> Subject: Re: [PATCH v27 10/10] fs/ntfs3: Add MAINTAINERS
> 
> On Thu, Jul 29, 2021 at 04:49:43PM +0300, Konstantin Komarov wrote:
> > This adds MAINTAINERS
> >
> > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > ---
> >  MAINTAINERS | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 9c3428380..3b6b48537 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -13279,6 +13279,13 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/aia21/ntfs.git
> >  F:	Documentation/filesystems/ntfs.rst
> >  F:	fs/ntfs/
> >
> > +NTFS3 FILESYSTEM
> > +M:	Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > +S:	Supported
> > +W:	http://www.paragon-software.com/
> > +F:	Documentation/filesystems/ntfs3.rst
> > +F:	fs/ntfs3/
> 
> Can you please add a git tree and mailing list entries?
Hi David, I'll add the git tree link for the sources to MAINTAINERS in the next patch. As for the mailing list,
apologies for the newbie question here, but will it possible to have the @vger.kernel.org list for the ntfs3,
or it must be external for our case?
Thanks!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
