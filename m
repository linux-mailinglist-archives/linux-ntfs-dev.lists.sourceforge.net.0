Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93636468543
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  4 Dec 2021 15:10:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mtVjp-00046n-88; Sat, 04 Dec 2021 14:10:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pavel@denx.de>) id 1mtUOK-0001xw-6t
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 04 Dec 2021 12:43:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4D5zHJ/BBfMQgst/6bkLmE6f90gDvP9Wyi2KdS+H52w=; b=J2UCpX2PMmyKHcMGzDUG5zc+1u
 BIRLhgBKoVGdb/EBY02SUcFqMcMFPUlDy1DnaPf/tA7J1J3Xx6wtj6Sxj7pZr8V48Q//36qUYHt2M
 UWHQjAZqfiKkbB61JIFQz8nSgDsDxK+f7WzTVzItlaQtxKe1ojJBxMw2DYLzrsGQxgoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4D5zHJ/BBfMQgst/6bkLmE6f90gDvP9Wyi2KdS+H52w=; b=esl469XmGbAiAvecUbSc5lqvn0
 pPpvrMvntZuSCKglF3fCj2p6jY6tIoBp7owcjWDWc8gGY+WxdnV8hWdFF4x5XJZ8BDpsbpv43cVES
 lTPbFzkWwg0gWYWw7fJnhi/Lj24wCHJ+CxxvenbGK+KVPKKtV5ZsETRAzGmcEcua4FGw=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mtUO5-00074i-L7
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 04 Dec 2021 12:43:48 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id D73541C0BA4; Sat,  4 Dec 2021 13:23:43 +0100 (CET)
Date: Sat, 4 Dec 2021 13:23:42 +0100
From: Pavel Machek <pavel@denx.de>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20211204122342.GB15934@duo.ucw.cz>
References: <20211130145402.947049-1-sashal@kernel.org>
 <20211130145402.947049-9-sashal@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20211130145402.947049-9-sashal@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi! > [ Upstream commit
 4eec7faf6775263d9e450ae7ee5bc4101d4a0bc9
 ] > > NTFS_RW code allocates page size dependent arrays on the stack. This
 > results in build failures if the page size is 64k or larger. > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mtUO5-00074i-L7
X-Mailman-Approved-At: Sat, 04 Dec 2021 14:10:02 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH AUTOSEL 4.4 9/9] fs: ntfs: Limit
 NTFS_RW to page sizes smaller than 64k
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============8913032312380437184=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--===============8913032312380437184==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PmA2V3Z32TCmWXqI"
Content-Disposition: inline


--PmA2V3Z32TCmWXqI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> [ Upstream commit 4eec7faf6775263d9e450ae7ee5bc4101d4a0bc9 ]
>=20
> NTFS_RW code allocates page size dependent arrays on the stack. This
> results in build failures if the page size is 64k or larger.
>=20
>   fs/ntfs/aops.c: In function 'ntfs_write_mst_block':
>   fs/ntfs/aops.c:1311:1: error:
> 	the frame size of 2240 bytes is larger than 2048 bytes
>=20
> Since commit f22969a66041 ("powerpc/64s: Default to 64K pages for 64 bit
> book3s") this affects ppc:allmodconfig builds, but other architectures
> supporting page sizes of 64k or larger are also affected.

NAK, this will disable NTFS_RW support in 4.4 entirely.

> +++ b/fs/ntfs/Kconfig
> @@ -51,6 +51,7 @@ config NTFS_DEBUG
>  config NTFS_RW
>  	bool "NTFS write support"
>  	depends on NTFS_FS
> +	depends on PAGE_SIZE_LESS_THAN_64KB
>  	help
>  	  This enables the partial, but safe, write support in the NTFS driver.
> =20

AFAICT CONFIG_PAGE_SIZE_LESS_THAN_64KB is not present in 4.4 (and
probably other) -stable kernels, nor it is queued to be added there.

Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--PmA2V3Z32TCmWXqI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCYatdzgAKCRAw5/Bqldv6
8u0ZAJ4pY50kOKbOi8W8JLzZ2EpJR7kD5QCcCnnonpNpUUFQklXrQYadva0TRK0=
=pEaq
-----END PGP SIGNATURE-----

--PmA2V3Z32TCmWXqI--


--===============8913032312380437184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8913032312380437184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============8913032312380437184==--

