Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E22523DA2E9
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Jul 2021 14:16:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1m94xL-0000lu-QG; Thu, 29 Jul 2021 12:16:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eb@emlix.com>) id 1m91km-0004aH-Mk
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 08:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BcsSXBMhqa+Huf7lfLT07r6lBcHdt1CclbTPVsyeW48=; b=mPOGAehgV14BMmVZwCdZaO6/ih
 CP+5RjgoIcruexJRfFzeSxLL/LsBa2R4TvGR7WjLQh8hgSTQ0/bH9LBFEA9tSyOt9Dm1aPXFjSgLj
 +ougA6Nvi/UHp8qYjRYGJEw3o2oJOCOuyzDbFduwMKho79HkelJbfc5DxHBJ8GIXaPe8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BcsSXBMhqa+Huf7lfLT07r6lBcHdt1CclbTPVsyeW48=; b=Q
 26/mMr6UjVbESZl4NZ9X/R1n+M5hI6f7/CIMA4oMsXZRKRNSFOnoX7JGQ9CALbLE8ZRX0f0EnhKGC
 PT6NAtEACyTfuvzzurLDkEN3cv499i2XIzWA0in5Pw041jCIDqZVWzGKru9is/pF0NqREEPt97BL1
 lZkczW2HnCnN494U=;
Received: from mx1.emlix.com ([136.243.223.33])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m91kk-0003IZ-87
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 29 Jul 2021 08:50:56 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 58CCD5F93A;
 Thu, 29 Jul 2021 10:31:50 +0200 (CEST)
From: Rolf Eike Beer <eb@emlix.com>
To: desmondcheongzx@gmail.com
Date: Thu, 29 Jul 2021 10:31:45 +0200
Message-ID: <2424055.QlFIqzKPrH@devpool47>
Organization: emlix GmbH
In-Reply-To: <20210614050540.289494-1-desmondcheongzx@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: emlix.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1m91kk-0003IZ-87
X-Mailman-Approved-At: Thu, 29 Jul 2021 12:16:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Fix validity check for file name
 attribute
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
Cc: linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: multipart/mixed; boundary="===============6628796728220235209=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============6628796728220235209==
Content-Type: multipart/signed; boundary="nextPart2416868.LEy6h3IvCX"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2416868.LEy6h3IvCX
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Rolf Eike Beer <eb@emlix.com>
To: desmondcheongzx@gmail.com
Cc: anton@tuxera.com, gregkh@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, skhan@linuxfoundation.org, syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
Subject: Re: [PATCH] ntfs: Fix validity check for file name attribute
Date: Thu, 29 Jul 2021 10:31:45 +0200
Message-ID: <2424055.QlFIqzKPrH@devpool47>
Organization: emlix GmbH
In-Reply-To: <20210614050540.289494-1-desmondcheongzx@gmail.com>

Hi,

I was just scanning through some older vulnerabilities and came across=20
CVE-2018-12929, CVE-2018-12930, and CVE-2018-12931, which are all still ope=
n=20
according to linuxkernelcves.com (originally reported against 4.15 [1]). I=
=20
looked into the commits in fs/ntfs/ from 4.15 onwards to see if they were j=
ust=20
missed, but I can't spot anything there. RedHat claims to have them fixed i=
n=20
one of their kernels [2].

Which makes me wonder if the issue fixed here is a duplicate of the any of =
the=20
above. Is there a reason I can't find any patches for the original issue in=
=20
tree, like the issue only introduced in a custom patchset that Ubuntu/RedHa=
t=20
were using? Is this thing worth it's own CVE if it's no duplicate?

Greetings,

Eike

1) https://marc.info/?t=3D152407734400002&r=3D1&w=3D2
2) https://access.redhat.com/errata/RHSA-2019:0641
=2D-=20
Rolf Eike Beer, emlix GmbH, http://www.emlix.com
=46on +49 551 30664-0, Fax +49 551 30664-11
Gothaer Platz 3, 37083 G=C3=B6ttingen, Germany
Sitz der Gesellschaft: G=C3=B6ttingen, Amtsgericht G=C3=B6ttingen HR B 3160
Gesch=C3=A4ftsf=C3=BChrung: Heike Jordan, Dr. Uwe Kracke =E2=80=93 Ust-IdNr=
=2E: DE 205 198 055

emlix - smart embedded open source

--nextPart2416868.LEy6h3IvCX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iLMEAAEIAB0WIQQ/Uctzh31xzAxFCLur5FH7Xu2t/AUCYQJncQAKCRCr5FH7Xu2t
/EknBACWisFFpJAxn+isaQff639lnnAPEn8ABLf1II4r/EFgnqoBuSrAMvVfJvjC
IxOI3aCtR9XtK6GjB5q4FI4YoE+jd7K+bwR//lInCvwnZdaPZvBGM0DFCzJ62kWl
P6HYTgnZvbNoThgf0S2GB0e/KoU7BH5hVvFSpIHBQoqSkRHRJQ==
=+ScD
-----END PGP SIGNATURE-----

--nextPart2416868.LEy6h3IvCX--





--===============6628796728220235209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6628796728220235209==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============6628796728220235209==--




