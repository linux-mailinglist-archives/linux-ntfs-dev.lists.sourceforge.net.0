Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EF97E8562
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zle-0005DS-TW;
	Fri, 10 Nov 2023 22:14:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <j.granados@samsung.com>) id 1r17Sf-000093-MN
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 09 Nov 2023 16:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pa+bEWDjIl0GN9JmokWdsk4Q7Gcs1efzNkFal1HDZTc=; b=RILoJknOQdy2VShnGj0ivm2jNd
 Z5UCrwEHAYEvuSTOygZm52OLDKF6GJ+4alpub3ElqKbZOGSo3fE/VwxvYcQYMPWg2Y28ZMsd76tS6
 lI+5Nrbc3vBp+HuEnRp7235JUKaIjGAB14jT3pPx8tgvNROd+ePOzWsijw7gOf5+l3z0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pa+bEWDjIl0GN9JmokWdsk4Q7Gcs1efzNkFal1HDZTc=; b=AaWixp1V1+5YxazlXakNLIIbdM
 oLaiarIjHWmqi/wPp4ewAHof6bmz0wXG5n18eE7ZORD667I7099dlmATJTZgo7S74+V1/879yVnBw
 Hhq1z8/l+mFchM0iedyFdLa77OgXFcVQ4NQ0NczOU4bfS953pAqJg2q4B6ba+3I07B98=;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r17Sd-0000CJ-Tw for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 09 Nov 2023 16:00:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20231109160043euoutp02b19c5109a8f1c47c44ad0f5a4f7de09a~V-8IZmgC53069030690euoutp02k;
 Thu,  9 Nov 2023 16:00:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20231109160043euoutp02b19c5109a8f1c47c44ad0f5a4f7de09a~V-8IZmgC53069030690euoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1699545643;
 bh=pa+bEWDjIl0GN9JmokWdsk4Q7Gcs1efzNkFal1HDZTc=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=ra0/TNGjJ+Y2pndDRS6b2Vt2aHroEen4QKszrw7BGp1sf6O41F6YGLZgB0Q8iUlsa
 pDmQPV5PoG6lo/3tFp4jQ1ZEU45QFWk96kxc5gnx2TnVtRliL0R2sbX0jCXuE74txt
 Occ9f7vltx0BrriT5gXeKPwTiUudqSIHbR7kHwzk=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20231109160043eucas1p296ace87297fe35b2e35e618a3f216a7a~V-8ILuzLy2854228542eucas1p21;
 Thu,  9 Nov 2023 16:00:43 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 28.C3.11320.B220D456; Thu,  9
 Nov 2023 16:00:43 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20231109160042eucas1p2b119336f287d1d59325a03009cce1e84~V-8HvkAUf2327723277eucas1p2n;
 Thu,  9 Nov 2023 16:00:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20231109160042eusmtrp1e151f7a0d35f6031c55f46a4929927ba~V-8HuPi7e0589505895eusmtrp1X;
 Thu,  9 Nov 2023 16:00:42 +0000 (GMT)
X-AuditID: cbfec7f4-993ff70000022c38-c2-654d022ba255
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 11.A8.10549.A220D456; Thu,  9
 Nov 2023 16:00:42 +0000 (GMT)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20231109160042eusmtip2313c1dffb58902dbd51aa957b98bf10e~V-8HcdEM70179101791eusmtip2k;
 Thu,  9 Nov 2023 16:00:42 +0000 (GMT)
Received: from localhost (106.210.248.176) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 9 Nov 2023 16:00:41 +0000
Date: Thu, 9 Nov 2023 17:00:40 +0100
From: Joel Granados <j.granados@samsung.com>
To: Eric Biggers <ebiggers@kernel.org>
Message-ID: <20231109160040.bahkcsp44t5xu7qo@localhost>
MIME-Version: 1.0
In-Reply-To: <20231108034231.GB2482@sol.localdomain>
X-Originating-IP: [106.210.248.176]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA2VTe1BUZRztu/fuvcsy0GWl+AIEZyUyUMpH40el0kwz3RxMsGYq/wB34g5i
 PHfdBGZQWlTYlZGHIfKSRXkJgrogjwXiDfIwHlYur51Yl4mAjPeI0G4sF8uZ/jvnfOf85pw/
 Pj4uLKPs+UGhp1lJqDhYRAqIqo6Vvl3u2BH23aFUAeovLwXoQq2JQLXqSh5SGisJNN06D9Bg
 uxMyjf2OoeXbWgzVlT/FUO6NChI9la8S6JHBGpmqzlOorH4NRwq9iURZ6XEYKhhR8NBKYQmF
 un5aJtCtwmcUMqnCUO+lEFQzZiBQytUCHP1wVQ7QXH43heobutaPabJJpLtt4qH+ph4eik/I
 BkizVkOhSynpFNImTwDUkBtLoBbdLzwkz2nkoe7n3RgyaQ+hC4krFOr7u5OHVp+tHyms/czL
 ncmKHSAYVZs3MzFwjLkzlEoytZljFKNSy5i1lnsUU1HsxgxPH2DUJQqSUc+nUkztuCczWZEB
 mDrVAsbIe9tx5tr8Iuljf1zwYQAbHPQdK3nn4AnByVu6Q+EFosiatItULGhzVAILPqT3wZUk
 NaYEAr6QLgZQmzGEc2QRwPvNDSRHFgC8UaLBX0QKWos2XUUALuZf5v3rGtDUEhypBFCviyfM
 EYJ2gZe11zfiJL0T9s2MrmM+35Z2hR0FR81+nK6whEp9M2bWt9BimNvsarZb0fvhSHE7wWEb
 2JVh2MA4HQkzqrI3zuC0Aywy8s2yxXq54fy7gCu6HcZVN1EcjoHdlcMbOyH9yBKuTnZsmj6G
 WSnGTbwFTnVWbgYcYc+VRIILXAGw0ThLcaQUwMLvlzDO9QE8/7NhM/ERTFEmEeZGkLaG2j9t
 uKLWMLUqHedkK5hwUci5XWGpboZIBtszX5qW+dK0zP+mcfJOqKqbJ/8nu8PCvGmcwwdgeflf
 hApQJcCOlUlDAlnpnlD2jIdUHCKVhQZ6fBMWogbrv6jH2LlYA4qm5jxaAMYHLcBlPay/W9oP
 7InQsFBWZGvVv8+bFVoFiKOiWUmYv0QWzEpbgAOfENlZvRngzArpQPFp9luWDWclL14xvoV9
 LPaK99Co59mFL/psvDpLwr2RQvGwTdcxcTDa3pYvl1klkXumIo79ei+lscfR1jpPnaxx/tTT
 L26vz243i/vjmXeWJpu6ys4d9X8S4bg1J5EneCIveHtmdCS+32/4+vGbQVrl+9VtMxazST8+
 zntP5D0wR/5WOrQcCc/aSlt6nb6y6FhJ+PwTr5w5rx79jpAEp72VdHWjwH/wzHhcRJ6lUPS6
 LC/KoT2CH67R+xjEgzVlh0XWRr/qa4Tv1l3nto3HvPrGCdfZI3ZzGueY+SXf5zfTmh5SljtS
 R2ODKtJmHjg0tp6y9I122f/HW4r6r/u+3Ba1qD/1Wpig87B/nNvjIMyQtmZ4ICKkJ8W73XCJ
 VPwPDUSbhsAEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA2WTbVBUVRjHOfdl74KhN6C6IDjOili8rCyvZxlRP1BzS+kFPqSG4hVuwMju
 4r6gNCPRIiMshUCksqisxgIuRLJLxCqOsgYEUqKFbCCrEVhEYbswKoG77brT5Ezf/uf//J/f
 PM+Zc7iozyAngJsjlrNSMZPL43hh1+39lohQJJmNtB7ZAIfbWgAsMTowaNR34FBl78Dg7DUb
 gLd610DHxK8IfNhqRuCltjkE1p8zcOCccgmDP0ythI7OIwT8onsZhWWTDg6sO1GMQO14GQ4X
 G3UEHPj+IQbPNz4moEMjgUPlItg1MYXBquNaFNYcVwJobRgkYPflASfs4ikOtLQ6cDh89ToO
 j5aeAvDichcBy6tOENBcOQ3g5foiDJosIzhUnr6Cw8G/BxHoMG+BJR8vEvDGk34cLj12QhqN
 b24No+uKbmK05pvt9PTNFPrLn6o5tFE9QdAavYJeNrUTtKE5lB6bTaT1ujIOrbdVE7TxZyH9
 m6EW0Jc08witHOpF6ZO2Bc7bAbv4m6QShZxdmy2RyRN57wlgFF8ghPyoGCFfEB2/OyEqlrdx
 86ZMNjcnn5Vu3LyXnz0w/gDP+5x3qHboNqcImAJVwJNLkTGU9loTqgJeXB9SC6jWY92YuxBI
 tS+M4G7tSy3fVnHcISugxsdu4e5DB6DKrJWIK4WRwVSF+Qzq0hwynLrxxx2n5nL9yBCqT/uW
 K4+ShhVUzV3jU9+XZKj6nhBX3JuMp8abezE38zRCdRaP4u7C89RA7dTTiVAynxrtmiFcvSi5
 mmqyc122p3ODsYYLwD3oOqr466uEWx+m5p/cB5XAV/0MSf0MSf0fyW2HUmb7DPI/O4xqPDuL
 unUi1db2ANMAQgf8WIVMlCWSCfgyRiRTiLP4GRKRHjgfcmffoqELnPndyjcBhAtMINjZOXmh
 ZRgEYGKJmOX5eQ/HbGd9vDOZgg9YqSRdqshlZSYQ67zEKjTghQyJ81eI5emCuMhYQUycMDJW
 GBfNe8n79bxSxofMYuTsfpbNY6X/9iFcz4AiZE/I+vZXbckf2e9WktOCbS+qnuMzujlLXrhA
 kqNcFxx5NEjYQjXds/fnK0fjd/L2rjk8s5QW1I3UFbyS1JKqO0m+xkwes3zWHKhvTU2yjwA/
 8ZXSmpdRGKFCpwvKIw5oa3mFHaJDurXnetDUwvAej+CEd3/cZ/mOuQdI7yS5vxTbv4Pc8otP
 WuCnmQJ/jdXr/QzbDrXc/EZF9Z2/tq1/J6jYEJfStHpiHtV6+ld/MltWIdj3aGtYS+GeD3cv
 pInSV3oEJf+5yHwbpUrZyRJp0dYDDZ4btOdb+w4iPfdTdykCGxODEszDq+jOZr3o4Aqth9z4
 VXsSnrHK+qjk7IhNzsNk2YwgFJXKmH8Ajnig1V0EAAA=
X-CMS-MailID: 20231109160042eucas1p2b119336f287d1d59325a03009cce1e84
X-Msg-Generator: CA
X-RootMTR: 20231108034239eucas1p2e5dacae548e47694184df217ee168da9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20231108034239eucas1p2e5dacae548e47694184df217ee168da9
References: <20231107-jag-sysctl_remove_empty_elem_fs-v1-0-7176632fea9f@samsung.com>
 <20231107-jag-sysctl_remove_empty_elem_fs-v1-2-7176632fea9f@samsung.com>
 <CGME20231108034239eucas1p2e5dacae548e47694184df217ee168da9@eucas1p2.samsung.com>
 <20231108034231.GB2482@sol.localdomain>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 07, 2023 at 07:42:31PM -0800, Eric Biggers wrote:
 > On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via B4 Relay wrote:
 > > [PATCH 2/4] aio: Remove the now superfluous sentinel ele [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: samsung.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1r17Sd-0000CJ-Tw
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
 Neil Brown <neilb@suse.de>, "Darrick
 J. Wong" <djwong@kernel.org>, Amir Goldstein <amir73il@gmail.com>,
 David Howells <dhowells@redhat.com>, Olga Kornievskaia <kolga@netapp.com>,
 linux-nfs@vger.kernel.org, codalist@telemann.coda.cs.cmu.edu, coda@cs.cmu.edu,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 willy@infradead.org, Matthew Bobrowski <repnop@google.com>,
 Chuck Lever <chuck.lever@oracle.com>, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, josh@joshtriplett.org,
 Tom Talpey <tom@talpey.com>, ocfs2-devel@lists.linux.dev,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anton Altaparmakov <anton@tuxera.com>, fsverity@lists.linux.dev,
 Jan Harkes <jaharkes@cs.cmu.edu>, Christian Brauner <brauner@kernel.org>,
 "Theodore
 Y. Ts'o" <tytso@mit.edu>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 linux-ntfs-dev@lists.sourceforge.net, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 Eric Biederman <ebiederm@xmission.com>, Anna Schumaker <anna@kernel.org>,
 linux-fsdevel@vger.kernel.org, Chandan Babu R <chandan.babu@oracle.com>,
 linux-mm@kvack.org, Joel Becker <jlbec@evilplan.org>
Content-Type: multipart/mixed; boundary="===============6781171759811492152=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============6781171759811492152==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="l4g2lsqapwic34ka"
Content-Disposition: inline

--l4g2lsqapwic34ka
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 07, 2023 at 07:42:31PM -0800, Eric Biggers wrote:
> On Tue, Nov 07, 2023 at 02:44:21PM +0100, Joel Granados via B4 Relay wrot=
e:
> > [PATCH 2/4] aio: Remove the now superfluous sentinel elements from ctl_=
table array
>=20
> The commit prefix should be "fs:".
>=20
> > Remove sentinel elements ctl_table struct. Special attention was placed=
 in
> > making sure that an empty directory for fs/verity was created when
> > CONFIG_FS_VERITY_BUILTIN_SIGNATURES is not defined. In this case we use=
 the
> > register sysctl call that expects a size.
> [...]
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
>=20
> This does not make sense, and it causes a build error when CONFIG_FS_VERI=
TY=3Dy
> and CONFIG_FS_VERITY_BUILTIN_SIGNATURES=3Dn.
>=20
> I think all you need to do is delete the sentinel element, the same as
> everywhere else.  I just tested it, and it works fine.
I found the reason why I added the CONFIG_FS_VERITY_BUILTIN_SIGNATURES
here: it is related to
https://lore.kernel.org/all/20230705212743.42180-3-ebiggers@kernel.org/
where the directory is registered with an element only if
CONFIG_FS_VERITY_BUILTIN_SIGNATURES is defined. I had forgotten, but I
even asked for a clarification on the patch :).

I see that that patch made it to v6.6. So the solution is not to remove
the CONFIG_FS_VERITY_BUILTIN_SIGNATURES, but for me to rebase on top of
a more up to date base.

@Eric: Please get back to me if the patch in
https://lore.kernel.org/all/20230705212743.42180-3-ebiggers@kernel.org/
is no longer relevant.

Best.

>=20
> BTW, the comments for register_sysctl_sz() and __register_sysctl_table() =
are
> outdated, as they still say "A completely 0 filled entry terminates the t=
able."
>=20
> - Eric

--=20

Joel Granados

--l4g2lsqapwic34ka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmVNAicACgkQupfNUreW
QU/GDgv/RABlWS8CUHeazT6R6sZRrWYGzO5BFRViRaIJEt9DGxPeVdxGY5fggAJB
noHXVpWD4pdS23h/JVKSgpbTgLL6Cf7ZpIz0dx/AaPEA6GaYaZQu0V+MlDeDJtAv
NxOvKTvaCgiCkWS/VYVSs2lSfGhSdHLUuZYLAdeAym0Iw0xwxbBneYjoCTDAxVh/
QE8RNvzM8YP6UJmUjOLYqGmb9CQS1tFtq92ISERe+sMogfc0EECLD0vzOM+CXT/Q
Ps87qwdFoDxwCoQzGRmdYLkpwEJZ9pIZ1cHUI29/VBh5F6utWGZvefDz8vSVcbNc
x8R5Pi4IMIax7MSUrASAljHq5hpaKDJGOIzMxBnCe/1im78XVYg70RwBPL7tyfdm
FyHNyDDQJuy6B74bEqGsolKqY8peghoOmAOF047JXbMnWUgtqLVtoj6R7blYdQAh
5OX13eCmTHSlYS+F62ayufBClYx3Sv2Lm1tyrr2Jt8R/nqjn49MLyfPAFZ96yeLH
5C8y/YbF
=rsQZ
-----END PGP SIGNATURE-----

--l4g2lsqapwic34ka--


--===============6781171759811492152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6781171759811492152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============6781171759811492152==--

