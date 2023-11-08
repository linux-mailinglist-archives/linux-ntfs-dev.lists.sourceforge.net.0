Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 737037E8560
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zle-0005Cb-9m;
	Fri, 10 Nov 2023 22:14:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <j.granados@samsung.com>) id 1r0dvW-0005z9-M5
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 08 Nov 2023 08:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7nTEhKxxoPR3KSL5fDC8KjdNN6ncouOX5FUB916ulg=; b=RCXrLiNtZrvhdHv6E85KTEhjMv
 xVgDI9sl1B+l/wRjjvB2omNNJCrTaIeOkpG4Sxa9mAAD7LEzmSI2yHAehuvhDzc7QRIx/OUAzjYhE
 0AOIuu5SeZFBs8UZBRG55Ait01Crz3r08THEaDvDZOkGgRiYUlRwaaSX6/EbmjqICsNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D7nTEhKxxoPR3KSL5fDC8KjdNN6ncouOX5FUB916ulg=; b=MGtUGrrIHc0vu+BoUBY01AdyKr
 3KtkHmm0S7UCBNI6PQWd/E7FE0dnyjNIDlbniGy1pxOefHZ3jdgGD2UtSYOJJy2tLUJlnNTntTdoo
 4kaxCDxHjH1Aeg/bC5DixRbz9I1QJQ4+XJzKEmwWQSvnt50ojT+X4JY/BVQyR5s+5FNY=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r0dvU-00Ed5o-Mg for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 08 Nov 2023 08:28:42 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20231108082834euoutp0189dd510b70738062471ec931c2ba57e9~VmIEOKno61176811768euoutp01g;
 Wed,  8 Nov 2023 08:28:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20231108082834euoutp0189dd510b70738062471ec931c2ba57e9~VmIEOKno61176811768euoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1699432114;
 bh=D7nTEhKxxoPR3KSL5fDC8KjdNN6ncouOX5FUB916ulg=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=MC7T4kfheCs+i0yHEuDpcTJM55ZgtaXJ7N945/Qv8xwK+v21Hhq9uOPuWHPF76Uot
 tHJcyKy0v6xfjkd2yN7EcAuTvNkrreBAv4ciat0on2seTpPTGHCkPKcZs556sTpD0O
 r9D/tPU0QSIcOrEW0PuWQDJ6lzMLZRgQsqez/Pzo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20231108082834eucas1p1f240d828ab1cfafe595054d67529e070~VmID-oXYD2116521165eucas1p1_;
 Wed,  8 Nov 2023 08:28:34 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FE.63.11320.1B64B456; Wed,  8
 Nov 2023 08:28:34 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20231108082833eucas1p1611d66cce2ef830b348b27d580ac6b55~VmIDYy0Gu2307623076eucas1p1c;
 Wed,  8 Nov 2023 08:28:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20231108082833eusmtrp2273c28d0e7e9b65047612a9e83dc87da~VmIDXa4dq0657206572eusmtrp2V;
 Wed,  8 Nov 2023 08:28:33 +0000 (GMT)
X-AuditID: cbfec7f4-97dff70000022c38-c7-654b46b1a532
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9D.9D.10549.1B64B456; Wed,  8
 Nov 2023 08:28:33 +0000 (GMT)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20231108082833eusmtip11d33afe59e3ace4e741845504db5ad63~VmIC9q2Sg1310013100eusmtip1C;
 Wed,  8 Nov 2023 08:28:33 +0000 (GMT)
Received: from localhost (106.110.32.133) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 8 Nov 2023 08:28:32 +0000
Date: Wed, 8 Nov 2023 09:28:31 +0100
From: Joel Granados <j.granados@samsung.com>
To: "Darrick J. Wong" <djwong@kernel.org>
Message-ID: <20231108082831.ch2nw22fk5ki66fq@localhost>
MIME-Version: 1.0
In-Reply-To: <20231107162251.GL1205143@frogsfrogsfrogs>
X-Originating-IP: [106.110.32.133]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA2VTe0xTVxzeufe2t8Cq10L0DAgkTFjGcxs6jhEBs0UvmXFGk829cI1ckA1a
 0oJTF7LKRN5LZUxGwVEmD6GArgXGowgUgfEYojKoaNkGOAkPGU8pLe2A1miy/77zPX75vj8O
 B+dVkY6cKEEcIxLwo93YtkRth77PR3ngPeYNUypA/VUKgJLqzQSqV1azUJqpmkBTbfMA3W13
 QWbdYwwtV2gx1Fj1BEMFP6vY6EmigUD3xrcgc+0FElWqjThKHTWzUV7OtxgqfpDKQvqSchJ1
 9S0TqKxkhURmuRD1psegOt04gS5dLsZR9uVEgOaKukmkbupaP9aQz0YjFWYW6m/pYaHklHyA
 Gox1JEq/lEMirfQRQE0FEgJpRv5gocQrzSzUvdqNIbM2GCVl6El0e62ThQwr60dK6g+HeNF5
 kjsELb91iH505yh9/X4Wm66X6UharoynjZpfSFp1zZMentpHK8tT2bRyPouk6//eQ0+ocgHd
 KF/A6MTedpz+cX6RfcTxY9vAcCY66jQj8gv63PbUokrGis2PO/PD2ApbApaOpwEbDqR2wfHk
 KTIN2HJ41DUAm9K1hOWxCODMULNVWQBQPnoTexa5P3YTWIRSABV96c9dycmPrYoKwAF1K74R
 IaidcEam3sRsyhvenn64iR2o1+Gt5cHNszh1ww6azA5pgMOxp/iwoNVjg+ZSAXChZwRY8DbY
 lTtOWOxnoK5fh2/YccoJlpo4G7TNut2UWUNairrBpelMlgUnwO7qYWyjGqSG7GDp1T6r8C6s
 rKy1LrOHk53V1rAzNNcXWAPfA9hs+pe0PBQAlpxfsib2wgsD49bEfvi0VIptNILUFqid2WYp
 ugVm1ebgFpoLUy7yLG4PqBiZJqTgVdkL02QvTJM9n2ahvaG8cZ79P9oLlhRO4Ra8D1ZVzRJy
 QJaDHUy8OCaSEb8lYL7yFfNjxPGCSN+TwhglWP9GPabOxTpQOjnnqwEYB2jAzvXw6A1FP3Ak
 BEIB4+bAXQumGR43nH/2HCMSnhDFRzNiDXDiEG47uO7hrgyPiuTHMV8yTCwjeqZiHBtHCRZg
 kO4eS8Lbhjq0NezaVyqyGe7W11wmUlxn5a3q4ff9/nI68GGWMbGzxceY4P3T0x7D9oqhgYO5
 L2Gr7tDAPvZB/lUfXlHogDC0t4Fs6W+/nhYY+7AqzGXNb7eiKChm0HPSpSyoxfBdRdf4hP/F
 wCS0a3g0w47652zdgm/Nfq8Hhxe28k/bvHzFY8w49RvHtj3/7e6jZv9vXD4q7NHfbXMuVKND
 0SGDi5+elORV2ueGfS3QdxT/6n0vKnRV5CmN/CziyBcNrjPv+GcUOp//88TxsE9a3SU+e5aa
 I34PmBPw9woaNbMDUn61vY/6mI1KOi0s0wWvnIvQO49k+maHqbYnhDS5EeJT/Dc9cZGY/x8Q
 3xsAwQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA2VTe0xTVxzOuff23uLAldd27MzmGt0DWKFQ4LCAmhHlDtziUHSBLdjJpTCh
 rX0wJnsQHlFeKohFK0K3CdsAebTAaIFNEOZ4ZOAmpiiQoDB1IIyHDKTQFeoyk/33ne/3fd/v
 y8k5bNyph+Sy4yVKRi4RJfDIDUTP6rXhN+p2hzFeJ5tdUH91JUCZBguBDLp6FsperSfQxNVZ
 gH7rfBFZhu9haKHKhKHm6ikMlX6tJ9FU2jKBfh/biCyNGRS63GLGUdYdC4kuFKVjqOx2Fgst
 lVdQqOvXBQJ9X75IIYtWinpzElHT8BiB8tVlOCpUpwE0c6mbQi2tXdYwYzGJRqosLNR/pYeF
 jp8oBshobqJQTn4RhUynxwFqLU0lUPvIAAulXfyJhbofd2PIYtqBMnOXKNS3co2FlhetIeWG
 d3e60xdSrxO0tmMPPX49nK4ZLCBpg2aYorU6FW1ur6No/Xdu9K2JIFpXkUXSutkCijaMBtD3
 9ecB3aydw+i03k6cPjc7T+7lRvID5VKVktkSJ1Uog3hRAuTNFwQgvrcwgC/w8f/wTW9fnuf2
 wBgmIT6JkXtuP8SPG6tqIGUaZbJ65T6VCubezwZ2bMgRwsG7P4JssIHtxCkD0FTbC2yDzbBu
 foBlw87QfDObtIlmAGw6eQ6zHfQAzjQeJ9ZUBGcrfKhpwdcwyfGAfZND69iF8zrsWLi5bsA5
 tc/AIU2F1cBmO3NEsLTtlTWNA8cfzvWMPKmhxeCtfhNuGzjCrvNj6wtwThIsSNdja16c8wL8
 dpW9RttZvat5DZStKQ8+msx70vpzOLfyBzgNnDVPJWmeStL8l2Sj3aBp9cH/aXdY/tUEbsNB
 sLp6mtACqgK4MCpFojhRIeArRIkKlUTMPyxN1AHrS278eUnfBEr+nOG3A4wN2sFWq/NObWU/
 4BISqYThuTis7KAZJ4cY0afHGLk0Wq5KYBTtwNd6i/k41/Ww1PotJMpogZ+Xr0DoF+DlG+Dn
 w3ve4W3ZCZETRyxSMkcYRsbI//VhbDtuKiYbyovdu/HloMoDGH4q3t8nxSMsIdsceaCuInnp
 722Xa3rnRwqDWRkMFeEYm/MFTzYQmfvBO1exG7vC5ETPwTPFTMLO1pdyvXerHxZsulK56Yxh
 X/Klt0qmjSmlqt6j4915/rLgjm1q7rOPM0OCUVuD8dh4YfpZzDN0f/S9vvw9n5mLPZMuhnkk
 RST9Jf9h2b5hPO5UiM+geMuD10p0o68yg3GhXre/nAo/1OEw2tZWiFztQxvH5j86mOW4YFw0
 xu4vFG+uvGFybdrXf1Ttynx899H0c9+U+gmEKxn8iChhZqe92PKLThieMilVukcFnpVo3tPU
 f+JKc4+c8AsuiqkJyQziEYo4kcANlytE/wCAMOowXgQAAA==
X-CMS-MailID: 20231108082833eucas1p1611d66cce2ef830b348b27d580ac6b55
X-Msg-Generator: CA
X-RootMTR: 20231107162257eucas1p15a82c78ef55c1e6864627fb213fd1522
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20231107162257eucas1p15a82c78ef55c1e6864627fb213fd1522
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
 <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
 <CGME20231107162257eucas1p15a82c78ef55c1e6864627fb213fd1522@eucas1p1.samsung.com>
 <20231107162251.GL1205143@frogsfrogsfrogs>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 07, 2023 at 08:22:51AM -0800, Darrick J. Wong
 wrote: > On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via B4 Relay
 wrote: > > From: Joel Granados <j.granados@samsung.com> > > > > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: samsung.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r0dvU-00Ed5o-Mg
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 2/4] aio: Remove the now superfluous
 sentinel elements from ctl_table array
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
Cc: linux-aio@kvack.org, Jan Kara <jack@suse.cz>, linux-cachefs@redhat.com,
 Neil Brown <neilb@suse.de>, Amir Goldstein <amir73il@gmail.com>,
 David Howells <dhowells@redhat.com>, Olga Kornievskaia <kolga@netapp.com>,
 linux-nfs@vger.kernel.org, codalist@telemann.coda.cs.cmu.edu, coda@cs.cmu.edu,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 willy@infradead.org, Eric Biggers <ebiggers@kernel.org>,
 Matthew Bobrowski <repnop@google.com>, Chuck Lever <chuck.lever@oracle.com>,
 Iurii Zaikin <yzaikin@google.com>, Kees Cook <keescook@chromium.org>,
 josh@joshtriplett.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, fsverity@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, Christian Brauner <brauner@kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 linux-fsdevel@vger.kernel.org, Chandan Babu R <chandan.babu@oracle.com>,
 linux-mm@kvack.org, Joel Becker <jlbec@evilplan.org>
Content-Type: multipart/mixed; boundary="===============8108814385650138736=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============8108814385650138736==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="tnwrscd4kofkwoer"
Content-Disposition: inline

--tnwrscd4kofkwoer
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 07, 2023 at 08:22:51AM -0800, Darrick J. Wong wrote:
> On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via B4 Relay wrot=
e:
> > From: Joel Granados <j.granados@samsung.com>
> >=20
> > This commit comes at the tail end of a greater effort to remove the
> > empty elements at the end of the ctl_table arrays (sentinels) which
> > will reduce the overall build time size of the kernel and run time
> > memory bloat by ~64 bytes per sentinel (further information Link :
> > https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
> >=20
> > Remove sentinel elements ctl_table struct. Special attention was placed=
 in
> > making sure that an empty directory for fs/verity was created when
> > CONFIG_FS_VERITY_BUILTIN_SIGNATURES is not defined. In this case we use=
 the
> > register sysctl call that expects a size.
> >=20
> > Signed-off-by: Joel Granados <j.granados@samsung.com>
> > ---
> >  fs/aio.c                           | 1 -
> >  fs/coredump.c                      | 1 -
> >  fs/dcache.c                        | 1 -
> >  fs/devpts/inode.c                  | 1 -
> >  fs/eventpoll.c                     | 1 -
> >  fs/exec.c                          | 1 -
> >  fs/file_table.c                    | 1 -
> >  fs/inode.c                         | 1 -
> >  fs/lockd/svc.c                     | 1 -
> >  fs/locks.c                         | 1 -
> >  fs/namei.c                         | 1 -
> >  fs/namespace.c                     | 1 -
> >  fs/nfs/nfs4sysctl.c                | 1 -
> >  fs/nfs/sysctl.c                    | 1 -
> >  fs/notify/dnotify/dnotify.c        | 1 -
> >  fs/notify/fanotify/fanotify_user.c | 1 -
> >  fs/notify/inotify/inotify_user.c   | 1 -
> >  fs/ntfs/sysctl.c                   | 1 -
> >  fs/ocfs2/stackglue.c               | 1 -
> >  fs/pipe.c                          | 1 -
> >  fs/proc/proc_sysctl.c              | 1 -
> >  fs/quota/dquot.c                   | 1 -
> >  fs/sysctls.c                       | 1 -
> >  fs/userfaultfd.c                   | 1 -
> >  fs/verity/fsverity_private.h       | 2 +-
> >  fs/verity/init.c                   | 8 +++++---
> >  fs/xfs/xfs_sysctl.c                | 2 --
>=20
> Not sure why an xfs change came in on a patch tagged "aio:"; I would
> have expected "fs:" or "vfs:" or something.  For the XFS part:
This was the same comment as Eric. will address it in my V2 and add your
reviewed tag.

Thx

>=20
> Reviewed-by: Darrick J. Wong <djwong@kernel.org>
>=20
> --D
>=20
> >  27 files changed, 6 insertions(+), 30 deletions(-)
> >=20
> > diff --git a/fs/aio.c b/fs/aio.c
> > index a4c2a6bac72c..da069d6b6c66 100644
> > --- a/fs/aio.c
> > +++ b/fs/aio.c
> > @@ -239,7 +239,6 @@ static struct ctl_table aio_sysctls[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_doulongvec_minmax,
> >  	},
> > -	{}
> >  };
> > =20
> >  static void __init aio_sysctl_init(void)
> > diff --git a/fs/coredump.c b/fs/coredump.c
> > index 9d235fa14ab9..f258c17c1841 100644
> > --- a/fs/coredump.c
> > +++ b/fs/coredump.c
> > @@ -981,7 +981,6 @@ static struct ctl_table coredump_sysctls[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_coredump_sysctls(void)
> > diff --git a/fs/dcache.c b/fs/dcache.c
> > index 25ac74d30bff..bafdd455b0fe 100644
> > --- a/fs/dcache.c
> > +++ b/fs/dcache.c
> > @@ -191,7 +191,6 @@ static struct ctl_table fs_dcache_sysctls[] =3D {
> >  		.mode		=3D 0444,
> >  		.proc_handler	=3D proc_nr_dentry,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_dcache_sysctls(void)
> > diff --git a/fs/devpts/inode.c b/fs/devpts/inode.c
> > index 299c295a27a0..a4de1612b1db 100644
> > --- a/fs/devpts/inode.c
> > +++ b/fs/devpts/inode.c
> > @@ -69,7 +69,6 @@ static struct ctl_table pty_table[] =3D {
> >  		.data		=3D &pty_count,
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> > -	{}
> >  };
> > =20
> >  struct pts_mount_opts {
> > diff --git a/fs/eventpoll.c b/fs/eventpoll.c
> > index 1d9a71a0c4c1..975fc5623102 100644
> > --- a/fs/eventpoll.c
> > +++ b/fs/eventpoll.c
> > @@ -322,7 +322,6 @@ static struct ctl_table epoll_table[] =3D {
> >  		.extra1		=3D &long_zero,
> >  		.extra2		=3D &long_max,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static void __init epoll_sysctls_init(void)
> > diff --git a/fs/exec.c b/fs/exec.c
> > index 6518e33ea813..7a18bde22f25 100644
> > --- a/fs/exec.c
> > +++ b/fs/exec.c
> > @@ -2167,7 +2167,6 @@ static struct ctl_table fs_exec_sysctls[] =3D {
> >  		.extra1		=3D SYSCTL_ZERO,
> >  		.extra2		=3D SYSCTL_TWO,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_exec_sysctls(void)
> > diff --git a/fs/file_table.c b/fs/file_table.c
> > index ee21b3da9d08..544f7d4f166f 100644
> > --- a/fs/file_table.c
> > +++ b/fs/file_table.c
> > @@ -137,7 +137,6 @@ static struct ctl_table fs_stat_sysctls[] =3D {
> >  		.extra1		=3D &sysctl_nr_open_min,
> >  		.extra2		=3D &sysctl_nr_open_max,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_stat_sysctls(void)
> > diff --git a/fs/inode.c b/fs/inode.c
> > index 35fd688168c5..ce16e3cda7bf 100644
> > --- a/fs/inode.c
> > +++ b/fs/inode.c
> > @@ -129,7 +129,6 @@ static struct ctl_table inodes_sysctls[] =3D {
> >  		.mode		=3D 0444,
> >  		.proc_handler	=3D proc_nr_inodes,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_inode_sysctls(void)
> > diff --git a/fs/lockd/svc.c b/fs/lockd/svc.c
> > index 6579948070a4..f784ff58bfd3 100644
> > --- a/fs/lockd/svc.c
> > +++ b/fs/lockd/svc.c
> > @@ -474,7 +474,6 @@ static struct ctl_table nlm_sysctls[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> > -	{ }
> >  };
> > =20
> >  #endif	/* CONFIG_SYSCTL */
> > diff --git a/fs/locks.c b/fs/locks.c
> > index 76ad05f8070a..6ecfc422fb37 100644
> > --- a/fs/locks.c
> > +++ b/fs/locks.c
> > @@ -111,7 +111,6 @@ static struct ctl_table locks_sysctls[] =3D {
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> >  #endif /* CONFIG_MMU */
> > -	{}
> >  };
> > =20
> >  static int __init init_fs_locks_sysctls(void)
> > diff --git a/fs/namei.c b/fs/namei.c
> > index 567ee547492b..fb552161c981 100644
> > --- a/fs/namei.c
> > +++ b/fs/namei.c
> > @@ -1070,7 +1070,6 @@ static struct ctl_table namei_sysctls[] =3D {
> >  		.extra1		=3D SYSCTL_ZERO,
> >  		.extra2		=3D SYSCTL_TWO,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_namei_sysctls(void)
> > diff --git a/fs/namespace.c b/fs/namespace.c
> > index e157efc54023..e95d4328539d 100644
> > --- a/fs/namespace.c
> > +++ b/fs/namespace.c
> > @@ -5008,7 +5008,6 @@ static struct ctl_table fs_namespace_sysctls[] =
=3D {
> >  		.proc_handler	=3D proc_dointvec_minmax,
> >  		.extra1		=3D SYSCTL_ONE,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_namespace_sysctls(void)
> > diff --git a/fs/nfs/nfs4sysctl.c b/fs/nfs/nfs4sysctl.c
> > index e776200e9a11..886a7c4c60b3 100644
> > --- a/fs/nfs/nfs4sysctl.c
> > +++ b/fs/nfs/nfs4sysctl.c
> > @@ -34,7 +34,6 @@ static struct ctl_table nfs4_cb_sysctls[] =3D {
> >  		.mode =3D 0644,
> >  		.proc_handler =3D proc_dointvec,
> >  	},
> > -	{ }
> >  };
> > =20
> >  int nfs4_register_sysctl(void)
> > diff --git a/fs/nfs/sysctl.c b/fs/nfs/sysctl.c
> > index f39e2089bc4c..e645be1a3381 100644
> > --- a/fs/nfs/sysctl.c
> > +++ b/fs/nfs/sysctl.c
> > @@ -29,7 +29,6 @@ static struct ctl_table nfs_cb_sysctls[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> > -	{ }
> >  };
> > =20
> >  int nfs_register_sysctl(void)
> > diff --git a/fs/notify/dnotify/dnotify.c b/fs/notify/dnotify/dnotify.c
> > index ebdcc25df0f7..8151ed5ddefc 100644
> > --- a/fs/notify/dnotify/dnotify.c
> > +++ b/fs/notify/dnotify/dnotify.c
> > @@ -29,7 +29,6 @@ static struct ctl_table dnotify_sysctls[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> > -	{}
> >  };
> >  static void __init dnotify_sysctl_init(void)
> >  {
> > diff --git a/fs/notify/fanotify/fanotify_user.c b/fs/notify/fanotify/fa=
notify_user.c
> > index f69c451018e3..80539839af0c 100644
> > --- a/fs/notify/fanotify/fanotify_user.c
> > +++ b/fs/notify/fanotify/fanotify_user.c
> > @@ -86,7 +86,6 @@ static struct ctl_table fanotify_table[] =3D {
> >  		.proc_handler	=3D proc_dointvec_minmax,
> >  		.extra1		=3D SYSCTL_ZERO
> >  	},
> > -	{ }
> >  };
> > =20
> >  static void __init fanotify_sysctls_init(void)
> > diff --git a/fs/notify/inotify/inotify_user.c b/fs/notify/inotify/inoti=
fy_user.c
> > index 1c4bfdab008d..3e222a271da6 100644
> > --- a/fs/notify/inotify/inotify_user.c
> > +++ b/fs/notify/inotify/inotify_user.c
> > @@ -85,7 +85,6 @@ static struct ctl_table inotify_table[] =3D {
> >  		.proc_handler	=3D proc_dointvec_minmax,
> >  		.extra1		=3D SYSCTL_ZERO
> >  	},
> > -	{ }
> >  };
> > =20
> >  static void __init inotify_sysctls_init(void)
> > diff --git a/fs/ntfs/sysctl.c b/fs/ntfs/sysctl.c
> > index 174fe536a1c0..4e980170d86a 100644
> > --- a/fs/ntfs/sysctl.c
> > +++ b/fs/ntfs/sysctl.c
> > @@ -28,7 +28,6 @@ static struct ctl_table ntfs_sysctls[] =3D {
> >  		.mode		=3D 0644,			/* Mode, proc handler. */
> >  		.proc_handler	=3D proc_dointvec
> >  	},
> > -	{}
> >  };
> > =20
> >  /* Storage for the sysctls header. */
> > diff --git a/fs/ocfs2/stackglue.c b/fs/ocfs2/stackglue.c
> > index a8d5ca98fa57..20aa37b67cfb 100644
> > --- a/fs/ocfs2/stackglue.c
> > +++ b/fs/ocfs2/stackglue.c
> > @@ -658,7 +658,6 @@ static struct ctl_table ocfs2_nm_table[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_dostring,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static struct ctl_table_header *ocfs2_table_header;
> > diff --git a/fs/pipe.c b/fs/pipe.c
> > index 6c1a9b1db907..6bc1c4ae81d5 100644
> > --- a/fs/pipe.c
> > +++ b/fs/pipe.c
> > @@ -1492,7 +1492,6 @@ static struct ctl_table fs_pipe_sysctls[] =3D {
> >  		.mode		=3D 0644,
> >  		.proc_handler	=3D proc_doulongvec_minmax,
> >  	},
> > -	{ }
> >  };
> >  #endif
> > =20
> > diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
> > index de484195f49f..4e06c4d69906 100644
> > --- a/fs/proc/proc_sysctl.c
> > +++ b/fs/proc/proc_sysctl.c
> > @@ -71,7 +71,6 @@ static struct ctl_table root_table[] =3D {
> >  		.procname =3D "",
> >  		.mode =3D S_IFDIR|S_IRUGO|S_IXUGO,
> >  	},
> > -	{ }
> >  };
> >  static struct ctl_table_root sysctl_table_root =3D {
> >  	.default_set.dir.header =3D {
> > diff --git a/fs/quota/dquot.c b/fs/quota/dquot.c
> > index 9e72bfe8bbad..69b03e13e6f2 100644
> > --- a/fs/quota/dquot.c
> > +++ b/fs/quota/dquot.c
> > @@ -2949,7 +2949,6 @@ static struct ctl_table fs_dqstats_table[] =3D {
> >  		.proc_handler	=3D proc_dointvec,
> >  	},
> >  #endif
> > -	{ },
> >  };
> > =20
> >  static int __init dquot_init(void)
> > diff --git a/fs/sysctls.c b/fs/sysctls.c
> > index 76a0aee8c229..8dbde9a802fa 100644
> > --- a/fs/sysctls.c
> > +++ b/fs/sysctls.c
> > @@ -26,7 +26,6 @@ static struct ctl_table fs_shared_sysctls[] =3D {
> >  		.extra1		=3D SYSCTL_ZERO,
> >  		.extra2		=3D SYSCTL_MAXOLDUID,
> >  	},
> > -	{ }
> >  };
> > =20
> >  static int __init init_fs_sysctls(void)
> > diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
> > index 56eaae9dac1a..7668285779c1 100644
> > --- a/fs/userfaultfd.c
> > +++ b/fs/userfaultfd.c
> > @@ -45,7 +45,6 @@ static struct ctl_table vm_userfaultfd_table[] =3D {
> >  		.extra1		=3D SYSCTL_ZERO,
> >  		.extra2		=3D SYSCTL_ONE,
> >  	},
> > -	{ }
> >  };
> >  #endif
> > =20
> > diff --git a/fs/verity/fsverity_private.h b/fs/verity/fsverity_private.h
> > index d071a6e32581..8191bf7ad706 100644
> > --- a/fs/verity/fsverity_private.h
> > +++ b/fs/verity/fsverity_private.h
> > @@ -122,8 +122,8 @@ void __init fsverity_init_info_cache(void);
> > =20
> >  /* signature.c */
> > =20
> > -#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
> >  extern int fsverity_require_signatures;
> > +#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
> >  int fsverity_verify_signature(const struct fsverity_info *vi,
> >  			      const u8 *signature, size_t sig_size);
> > =20
> > diff --git a/fs/verity/init.c b/fs/verity/init.c
> > index a29f062f6047..e31045dd4f6c 100644
> > --- a/fs/verity/init.c
> > +++ b/fs/verity/init.c
> > @@ -13,7 +13,6 @@
> >  static struct ctl_table_header *fsverity_sysctl_header;
> > =20
> >  static struct ctl_table fsverity_sysctl_table[] =3D {
> > -#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
> >  	{
> >  		.procname       =3D "require_signatures",
> >  		.data           =3D &fsverity_require_signatures,
> > @@ -23,14 +22,17 @@ static struct ctl_table fsverity_sysctl_table[] =3D=
 {
> >  		.extra1         =3D SYSCTL_ZERO,
> >  		.extra2         =3D SYSCTL_ONE,
> >  	},
> > -#endif
> > -	{ }
> >  };
> > =20
> >  static void __init fsverity_init_sysctl(void)
> >  {
> > +#ifdef CONFIG_FS_VERITY_BUILTIN_SIGNATURES
> >  	fsverity_sysctl_header =3D register_sysctl("fs/verity",
> >  						 fsverity_sysctl_table);
> > +#else
> > +	fsverity_sysctl_header =3D register_sysctl_sz("fs/verity",
> > +						 fsverity_sysctl_table, 0);
> > +#endif
> >  	if (!fsverity_sysctl_header)
> >  		panic("fsverity sysctl registration failed");
> >  }
> > diff --git a/fs/xfs/xfs_sysctl.c b/fs/xfs/xfs_sysctl.c
> > index fade33735393..a191f6560f98 100644
> > --- a/fs/xfs/xfs_sysctl.c
> > +++ b/fs/xfs/xfs_sysctl.c
> > @@ -206,8 +206,6 @@ static struct ctl_table xfs_table[] =3D {
> >  		.extra2		=3D &xfs_params.stats_clear.max
> >  	},
> >  #endif /* CONFIG_PROC_FS */
> > -
> > -	{}
> >  };
> > =20
> >  int
> >=20
> > --=20
> > 2.30.2
> >=20

--=20

Joel Granados

--tnwrscd4kofkwoer
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmVLRq8ACgkQupfNUreW
QU/Jqwv+K1w0FpZcv0HBnAeHLCtveM9mAFkL+qQUZS2GWzB569sbdbxsz2+0lZWo
ljmdA0ou2wA6i4MrM8gYJD7PjhOEeN6VNQU1K9bHbQGyTeS1CelsRNgeyXzGXaC6
KOc1zigE06aC3K+QYZ2lfHpp/Q+qNWi6tapj7Wu0Vc4e/tZdK0FVlrNxrVQRe2vY
ISD+PsJ6QoykDDU0KMah+RmwSX8KS0mowyGrpuCIqz2OswophDo3TXT0/vQbefL8
B29eRO/wWCon08adSAkpY4wAsEQOHyjFb8ScfCUn57AokDe8QBi89HHjjl5WPE0v
P/NN3SFcFBN4LgKAi6cmyj//P453KLzvFPonnwQy7LymWqKTbHvG9+cIgZToRZfW
JPdRfF3tjVVxFs6US+wAFd9DHsESz1jbNCkOm8V+0/FUow86JiCV6vCSupagYgxk
TfcFQpQkhy8SnaetutCFAC0GtFz+GI24CKMdNAqpLj3hTY3x0IMd90g8YuCkUU4G
+Ti8Dg9U
=/8dn
-----END PGP SIGNATURE-----

--tnwrscd4kofkwoer--


--===============8108814385650138736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8108814385650138736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============8108814385650138736==--

