Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F80A6F5774
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  3 May 2023 13:54:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1puB3t-0003iu-AG;
	Wed, 03 May 2023 11:54:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bagasdotme@gmail.com>) id 1pu3ub-00063l-TL
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 03 May 2023 04:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eHAjxhDB+7YUwNzRjQk8xRtJh2f350ZLzD0K4i9gzr0=; b=LgNN3d4mUmXdouL7IPtZAZtBVn
 MP8BsvTFIyRVfJPIUpfM5fnQMURh53bvrC3XB/Vj7txXpR961UHe6L02G4NTLRB+1MbUv3JISxJiN
 ao3Qz+GBxRxm+eTI8mSRUSvUq6XlXTaXe3GZ1GRYj8pcxOENMnMdpy59IUWfKmnoCWnc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eHAjxhDB+7YUwNzRjQk8xRtJh2f350ZLzD0K4i9gzr0=; b=OR+eNvaCL2JLckLkQzxBOem4zU
 pkx5YxluhAh8sFWWFWat9gSkaI5/mwVp1g2iUtqox8xxogQLpY9qa4YFS+GIuK2hg2KUumbmcdMnB
 XvxQIo0636L0sAAxzVn0yPWLybjCG7CKfCqsFCSqnDvDtEfU2SYv5PJmrsVYBBHVp7AE=;
Received: from mail-pf1-f175.google.com ([209.85.210.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pu3uV-00CTBQ-UY for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 03 May 2023 04:16:16 +0000
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-63b35789313so3393945b3a.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 02 May 2023 21:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683087366; x=1685679366;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=eHAjxhDB+7YUwNzRjQk8xRtJh2f350ZLzD0K4i9gzr0=;
 b=KkClDPe57Wo/TeP9myhaZO29QM3BPXYvuEjKyq+v3urZgQXrnnZpJGMXT22xmdJ9DU
 cn2y+hmxUbcGwAnNxmZiD/bnkkQh8pLiAqpNmJExV48L7HIsC3Y8Ug7Maw4VT2BYZ8yZ
 9tdPTFD7vK1q3CRILj93Z8q2ufqy90dXchaXPA9w5wnsWQq3QPbnZEiO7qnzmmci2bhL
 qQ6IVmZriRpZB9ldgQFovgGMiYoAY+PVmtFfwFN/QXWQnh/OtnLHltQvvCWKdK4zPk/9
 ZV1gAJnGMBJUgu1MXsKj2NH49ykNyPApTrTVVXMGf9jswI/rPkAzb85l3sDEGa9Iv/TC
 VMJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683087366; x=1685679366;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eHAjxhDB+7YUwNzRjQk8xRtJh2f350ZLzD0K4i9gzr0=;
 b=j+Je653BEMGdp3AO4cp2R2pWvckQkdPYmlJwjpUZeLljszoJE+tzCu2qJnvFgxS0/I
 at9yaCVUNyFh/SbemO+y6g9aBMjR9//mKq5SnBE3Z9bIZrtxGR5G8qidlLQTrb+4zSCd
 kB2kyQwnXiuiiWpuLrUx7Epdby18rAlhISsYBm/2K73T0p5ZbU8CTIK+nUnNECYhwSs1
 OuGmKZklLvaracT0zx9wrFNj2OLz6n/tz68saOa49qp4TsQYtdHwSGNcv0ggRy3oHozR
 +nJ22+FUL4uaZaXM+cBNdWCJdXTyWgHWh4IOMuqA0RRwip9JnxWEO3hDhue+hPdZHoij
 H3+w==
X-Gm-Message-State: AC+VfDyDIcJqSye4UmbAk5M68qaPzZsVIEKeljMckVLNDjjEWeAdcOXu
 8VdScfvHYQSdbRobwik2FDw=
X-Google-Smtp-Source: ACHHUZ4+a/FZEiXy9raFBaye3F3S0+u66KMW3lrMrw6BNtxaNnBV9YsKaAVS8Mljw7POGxY5SKPoGw==
X-Received: by 2002:a05:6a00:198c:b0:63d:260d:f9dd with SMTP id
 d12-20020a056a00198c00b0063d260df9ddmr27392269pfl.33.1683087366253; 
 Tue, 02 May 2023 21:16:06 -0700 (PDT)
Received: from debian.me (subs32-116-206-28-39.three.co.id. [116.206.28.39])
 by smtp.gmail.com with ESMTPSA id
 a10-20020aa780ca000000b00642ea56f06dsm4058035pfn.26.2023.05.02.21.16.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 May 2023 21:16:05 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
 id 89350106247; Wed,  3 May 2023 11:16:02 +0700 (WIB)
Date: Wed, 3 May 2023 11:16:02 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Danila Chernetsov <listdansp@mail.ru>,
 Anton Altaparmakov <anton@tuxera.com>
Message-ID: <ZFHgAhisxjKQxhLx@debian.me>
References: <20230407194433.25659-1-listdansp@mail.ru>
MIME-Version: 1.0
In-Reply-To: <20230407194433.25659-1-listdansp@mail.ru>
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov
 wrote: > In ntfs_mft_data_extend_allocation_nolock(), if an error condition
 occurs > prior to 'ctx' being set to a non-NULL value, avoid der [...] 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bagasdotme[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.175 listed in wl.mailspike.net]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [116.206.28.39 listed in dnsbl.sorbs.net]
X-Headers-End: 1pu3uV-00CTBQ-UY
X-Mailman-Approved-At: Wed, 03 May 2023 11:54:19 +0000
Subject: [Linux-ntfs-dev] ntfs orphan? (was Re: [PATCH] ntfs: do not
 dereference a null ctx on error)
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
Cc: lvc-project@linuxtesting.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Linux Memory Management <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============1387253848789026174=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--===============1387253848789026174==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jVeXjOp7rLo2/O3G"
Content-Disposition: inline


--jVeXjOp7rLo2/O3G
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 07, 2023 at 07:44:33PM +0000, Danila Chernetsov wrote:
> In ntfs_mft_data_extend_allocation_nolock(), if an error condition occurs
> prior to 'ctx' being set to a non-NULL value, avoid dereferencing the NULL
> 'ctx' pointer in error handling.
>=20
> Found by Linux Verification Center (linuxtesting.org) with SVACE.

Duplicate of 10-years-old outstanding patch at [1].

I'm not speaking of the patch itself but rather on unfortunate state
of ntfs subsystem. It seems like the maintainer is MIA (has not
responding to patch submissions for a long time). Some trivial
patches, however, are merged through mm tree.

Konstantin (from newer ntfs3 subsystem), Andrew, would you like to take a
look on this orphaned subsystem (and help reviewing)? I'd like to send
MAINTAINERS update if it turns out to be the case.

Thanks.

[1]: https://lore.kernel.org/all/1358389709-20561-1-git-send-email-nickolai=
@csail.mit.edu/

--=20
An old man doll... just what I always wanted! - Clara

--jVeXjOp7rLo2/O3G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZFHf/gAKCRD2uYlJVVFO
o1n+APwKJYtr0b5BjIagktsmVL9SCph4PReoxPYXxgPt3fmPdAEAtdAvPwKv5oG8
Nqh5SWWZKXeVDdLmhwpR1GVqB4M0xAY=
=pf3a
-----END PGP SIGNATURE-----

--jVeXjOp7rLo2/O3G--


--===============1387253848789026174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1387253848789026174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============1387253848789026174==--

