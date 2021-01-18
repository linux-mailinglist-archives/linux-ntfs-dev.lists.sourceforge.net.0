Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDA82F9EE2
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 18 Jan 2021 12:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yoc+ntooNYCyhiij/fNhYNMBqOfRHA/TbJT541NhdXk=; b=kp4Fxuwq4qJ+aAPDewqEPKaLg
	N/TskGgbAzd2KeJOcHSup4ki/A0mZIPwi7uEt+BOoqVK1OOVvImvtX7VEavhfLkMHpKtDgrQ6pa34
	SwWxgsYl1z5/WMd9OUeQP4ki7yL3pbBrhrL8zEoUFCM6bVAB/sUK/pcjIMoN7YiGepTAM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1TAw-0005KC-EX; Mon, 18 Jan 2021 11:58:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1l1Swy-0007md-Ft
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 11:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jVpgbGpExsWnTkYnhLYwh/dz9H4Di6dMiBWqL70OqOc=; b=BsT1FHR5KXci5OFqLPEWcMze2p
 YdQdZsiTwweT8IzzOg+MZOWntXU4FlBIkqFBJWQWhYs56FF6Wf4wjxSs70tQUV/k5sHefYdT7PVeW
 Zr2R8kgbAmE+R+25cXufDxOuJ1BZ2pmMcM/GhEt25dU8nwXiNMV7ll0SuH262KzBxtiw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jVpgbGpExsWnTkYnhLYwh/dz9H4Di6dMiBWqL70OqOc=; b=jGp6j4XqdpiRX6y4iLVLxsXlVU
 JbpxObyoUEnHdqyj3VKm02leAtGpxyVuBcpPCiEoGJleD3ghAVCo3kLreYnCLGZeV5unKTs3kKxoG
 Eu5XQ7UEPKrB4TfTv8VpVfoTpqNy5KUXsjYjC3o7SnHvkdJCG7W2+RDt5hqm/EEx88No=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1Swo-005ETw-A1
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 18 Jan 2021 11:44:00 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id A9C243AA;
 Mon, 18 Jan 2021 14:43:32 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1610970212;
 bh=jVpgbGpExsWnTkYnhLYwh/dz9H4Di6dMiBWqL70OqOc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=rnzHic1VAOP86/lYsApG23Y3CiDxizwVG1kUxLYZwtwGwPfiOUHEPAA32f465vdvq
 EElfy9ox0E16HUsLnDmqBtwMEaE9LeOBDXgl1aI/YBYxgqMrFbzRM0FZNZycYW1Er5
 MK6wy28ERA7Y9dwEhcc8m0nJjBQ8uBn4DBAhLVr0=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Mon, 18 Jan 2021 14:43:32 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Mon, 18 Jan 2021 14:43:32 +0300
To: Kari Argillander <kari.argillander@gmail.com>
Thread-Topic: [PATCH v17 08/10] fs/ntfs3: Add Kconfig, Makefile and doc
Thread-Index: AQHW34lEkxIP5Qb5rEarjEX9L/0H2qoWSFWAgBcWrZA=
Date: Mon, 18 Jan 2021 11:43:31 +0000
Message-ID: <baa71c9fa715473e87172c3afa3cc7d2@paragon-software.com>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-9-almaz.alexandrovich@paragon-software.com>
 <20210103220739.2gkh6gy3iatv4fog@kari-VirtualBox>
In-Reply-To: <20210103220739.2gkh6gy3iatv4fog@kari-VirtualBox>
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
X-Headers-End: 1l1Swo-005ETw-A1
X-Mailman-Approved-At: Mon, 18 Jan 2021 11:58:25 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 08/10] fs/ntfs3: Add Kconfig,
 Makefile and doc
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
Sent: Monday, January 4, 2021 1:08 AM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@vger.kernel.org; pali@kernel.org; dsterba@suse.cz;
> aaptel@suse.com; willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmstone.com; nborisov@suse.com;
> linux-ntfs-dev@lists.sourceforge.net; anton@tuxera.com; dan.carpenter@oracle.com; hch@lst.de; ebiggers@kernel.org;
> andy.lavr@gmail.com
> Subject: Re: [PATCH v17 08/10] fs/ntfs3: Add Kconfig, Makefile and doc
> 
> On Thu, Dec 31, 2020 at 06:23:59PM +0300, Konstantin Komarov wrote:
> > This adds Kconfig, Makefile and doc
> >
> > Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> > ---
> >  Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++++
> >  fs/ntfs3/Kconfig                    |  41 +++++++++++
> >  fs/ntfs3/Makefile                   |  31 ++++++++
> 
> Also Documentation/filesystems/index.rst should contain ntfs3.
> 
> >  3 files changed, 179 insertions(+)
> >  create mode 100644 Documentation/filesystems/ntfs3.rst
> >  create mode 100644 fs/ntfs3/Kconfig
> >  create mode 100644 fs/ntfs3/Makefile
> >
> 
> > diff --git a/fs/ntfs3/Kconfig b/fs/ntfs3/Kconfig
> > new file mode 100644
> > index 000000000000..f9b732f4a5a0
> > --- /dev/null
> > +++ b/fs/ntfs3/Kconfig
> > @@ -0,0 +1,41 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +config NTFS3_FS
> > +	tristate "NTFS Read-Write file system support"
> > +	select NLS
> > +	help
> > +	  Windows OS native file system (NTFS) support up to NTFS version 3.1.
> > +
> > +	  Y or M enables the NTFS3 driver with full features enabled (read,
> > +	  write, journal replaying, sparse/compressed files support).
> > +	  File system type to use on mount is "ntfs3". Module name (M option)
> > +	  is also "ntfs3".
> > +
> > +	  Documentation: <file:Documentation/filesystems/ntfs3.rst>
> > +
> > +config NTFS3_64BIT_CLUSTER
> > +	bool "64 bits per NTFS clusters"
> > +	depends on NTFS3_FS && 64BIT
> > +	help
> > +	  Windows implementation of ntfs.sys uses 32 bits per clusters.
> > +	  If activated 64 bits per clusters you will be able to use 4k cluster
> > +	  for 16T+ volumes. Windows will not be able to mount such volumes.
> > +
> > +	  It is recommended to say N here.
> > +
> > +config NTFS3_LZX_XPRESS
> > +	bool "activate support of external compressions lzx/xpress"
> > +	depends on NTFS3_FS
> > +	help
> > +	  In Windows 10 one can use command "compact" to compress any files.
> > +	  4 possible variants of compression are: xpress4k, xpress8k, xpress16 and lzx.
> > +	  To read such "compacted" files say Y here.
> 
> It would be nice that we tell what is recommend. I think that this is recommend.
> Of course if this use lot's of resource that is different story but I do not
> think that is the case.
> 
> > +
> > +config NTFS3_POSIX_ACL
> > +	bool "NTFS POSIX Access Control Lists"
> > +	depends on NTFS3_FS
> > +	select FS_POSIX_ACL
> > +	help
> > +	  POSIX Access Control Lists (ACLs) support additional access rights
> > +	  for users and groups beyond the standard owner/group/world scheme,
> > +	  and this option selects support for ACLs specifically for ntfs
> > +	  filesystems.
> 
> Same here. Let's suggest what user should do. Is this recommend if we wan't
> to use volume also in Windows?

Hi! All done, thanks for pointing these out.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
