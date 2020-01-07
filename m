Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FCF133726
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Jan 2020 00:16:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ioy5S-0006iu-Rc; Tue, 07 Jan 2020 23:16:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali.rohar@gmail.com>) id 1iosoo-0007ob-07
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 17:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UDJ8iFEh0aT3XRBjDUtj+5yED1IZ3Xq7M2iH1ATPT9k=; b=BCE+GXxs9ERorKoJFXsj0M9QOe
 LRSTbDo7I8CjSJ51UipmHJrXOyhehyw7jnoKQ0KXDyDIogHdN6BAuDTOyBlFfuqz+JglZ/vKuJgvQ
 9NOt6HSDbgY7RDGvg8oMR1h2ZWqwMwq0iejpLblfTQexh0gN/wpSJKk5VbdU1nHOQlxI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UDJ8iFEh0aT3XRBjDUtj+5yED1IZ3Xq7M2iH1ATPT9k=; b=JGVqXhyJXfKbpnFOYmAyrox9Yj
 JqHUxS181Te+ibAhkZKtXQFWWwojtQ2/iQJoo8ZqEfLxf8Fur0BIOM91zPW2Ii3zPkCZxcTM0D0Du
 8GbOwQ6CtAnaIOpqcGaRAVexYGXdJwDVjauGsHk1xWy8nuQkmhyf952rdf1oBlI610UM=;
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iosoc-00CW9Y-LB
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 17:39:01 +0000
Received: by mail-wm1-f65.google.com with SMTP id b19so404730wmj.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 07 Jan 2020 09:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UDJ8iFEh0aT3XRBjDUtj+5yED1IZ3Xq7M2iH1ATPT9k=;
 b=Meu8tDGf+9Oi621KmTxxNn/4M8q5vRm1K5UNhLCERDDplY19yg2I6Lcwf4dvqYUvrS
 n9yIMB0++fEra3BC7w4hMJnmhgjv/0LZM9jGRnISJnjttfZGzP9xXMst1DgfYN24gIVk
 +Ki5j71eXXhAJVV7Jpnvv/URIIy40S4UaqMcOs0ETquYskWTWpD1lttPwQ9d2xn3Tqtg
 HAKuYddqhUnBF605CrcQ3dnGLIQUmRuGOob3w8mmrPALZaFZCZHGgBSRUN5a0dZiNlHe
 J3pvwSPRPIw3ngd/v07NOKFKtMM0Ph4a56oVRN3+XtVwXG10FibOlBw+1T7slZSjEpFk
 icdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UDJ8iFEh0aT3XRBjDUtj+5yED1IZ3Xq7M2iH1ATPT9k=;
 b=RCGOQ/8UjviIqRNJEkxp2ZoFEvos9pbwmBB0aO9BkVjXi45UnEhKPUzKdGUCeU5egU
 AbtO1+6QG/hjJlSdoynCNySD/mU1Va9cVKBbw4tx7ddEnaYWAAOXBtCyy0Qz6IeJXoq7
 rUwCD5iwvfbS3L/Af0cxaj3cFel6gm4YfuvJFxEv3cyK3IP5k1DQ1dyZCeAcbD45YEBW
 XpAN4W2LV2UiD8rI1wXGyMidcJcDr/lM6X5CwkaESb4P4HLrf1xYEaEQJIRd8wiU85OC
 B5FEiovZhPXuZtdW8K2BbhtRVhKIwYIIGzLSY/n3NAt49aP30Q+0jfaGV54p0gMdyWH6
 ujzA==
X-Gm-Message-State: APjAAAUIxzVCTktc8/wkIvi4n9u2IbKYLTr/Pd2im2JaD0jEOs05AzPI
 50oEIKbkr6W3Vuyi/igzCKc=
X-Google-Smtp-Source: APXvYqzwLRulzQbtxC/ILXD1jYjGPIVShe805pZOTDvpMu4Plb8/5UsUdltQgFOzbeaaErb+AbS2kg==
X-Received: by 2002:a1c:4454:: with SMTP id r81mr146049wma.117.1578418724124; 
 Tue, 07 Jan 2020 09:38:44 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id m21sm374927wmi.27.2020.01.07.09.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 09:38:43 -0800 (PST)
Date: Tue, 7 Jan 2020 18:38:42 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Jan Kara <jack@suse.cz>
Message-ID: <20200107173842.ciskn4ahuhiklycm@pali>
References: <20200102211855.gg62r7jshp742d6i@pali>
 <20200107133233.GC25547@quack2.suse.cz>
MIME-Version: 1.0
In-Reply-To: <20200107133233.GC25547@quack2.suse.cz>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (pali.rohar[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iosoc-00CW9Y-LB
X-Mailman-Approved-At: Tue, 07 Jan 2020 23:16:33 +0000
Subject: Re: [Linux-NTFS-Dev] Unification of filesystem encoding options
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
Cc: linux-cifs@vger.kernel.org, Namjae Jeon <linkinjeon@gmail.com>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Eric Sandeen <sandeen@redhat.com>,
 Luis de Bethencourt <luisbg@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>, Steve French <sfrench@samba.org>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Pavel Machek <pavel@ucw.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>, Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: multipart/mixed; boundary="===============8335064420308533962=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--===============8335064420308533962==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uelhbz7cmchbh2fr"
Content-Disposition: inline


--uelhbz7cmchbh2fr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tuesday 07 January 2020 14:32:33 Jan Kara wrote:
> On Thu 02-01-20 22:18:55, Pali Roh=C3=A1r wrote:
> > 1) Unify mount options for specifying charset.
> >=20
> > Currently all filesystems except msdos and hfsplus have mount option
> > iocharset=3D<charset>. hfsplus has nls=3D<charset> and msdos does not
> > implement re-encoding support. Plus vfat, udf and isofs have broken
> > iocharset=3Dutf8 option (but working utf8 option) And ntfs has deprecat=
ed
> > iocharset=3D<charset> option.
> >=20
> > I would suggest following changes for unification:
> >=20
> > * Add a new alias iocharset=3D for hfsplus which would do same as nls=3D
> > * Make iocharset=3Dutf8 option for vfat, udf and isofs to do same as ut=
f8
> > * Un-deprecate iocharset=3D<charset> option for ntfs
> >=20
> > This would cause that all filesystems would have iocharset=3D<charset>
> > option which would work for any charset, including iocharset=3Dutf8.
> > And it would fix also broken iocharset=3Dutf8 for vfat, udf and isofs.
>=20
> Makes sense to me.

Ok!

> > 2) Add support for Unicode code points above U+FFFF for filesystems
> > befs, hfs, hfsplus, jfs and ntfs, so iocharset=3Dutf8 option would work
> > also with filenames in userspace which would be 4 bytes long UTF-8.
>=20
> Also looks good but when doing this, I'd suggest we extend NLS to support
> full UTF-8 rather than implementing it by hand like e.g. we did for UDF.

Current kernel NLS framework API supports upper-case / lower-case
conversion only for single byte encodings. So no case-insensitive
support for UTF-8 encoding. And for Unicode conversion it supports only
UCS-2, therefore code points up to the U+FFFF, so for UTF-8 maximally
3byte long sequences.

This really is not possible to fix without rewriting existing
filesystems which uses NLS API.

One hacky option would be to extend NLS API from UCS-2 to UTF-16 and fix
all users of NLS API to expects UTF-16 surrogate pairs.

But I dislike UTF-16 and rather would use usage of unicode_t (UTF-32)
which is already present in kernel. But because existing filesystems
drivers pass their UCS-2/UTF-16 buffers from FS to NLS API it is not
easy to change whole NLS API from UCS-2 to UTF-32.

And still this change does not add support for case-insensitivity, so
is useless for all MS filesystems (msdos, vfat, ntfs), which is
majority.

Kernel already provides functions for converting between UTF-8 and
UTF-16, so this seems to be the easiest way how to provide full UTF-8
support for filesystems which internally uses UTF-16. Similarly like it
is implemented in UDF.

Moreover all NLS encodings except UTF-8 are single byte encodings and
maps into Plane-0, so can be represented by currently used UCS-2
encoding. Therefore conversion to Unicode works correctly and also their
case-insensitivity functions (or rather tables).

Adding support for case-insensitivity into UTF-8 NLS encoding would mean
to create completely new kernel NLS API (which would support variable
length encodings) and rewrite all NLS filesystems to use this new API.
Also all existing NLS encodings would be needed to port into this new
API.

It is really something which have a value? Just because of UTF-8?

For me it looks like better option would be to remove UTF-8 NLS encoding
as it is broken. Some filesystems already do not use NLS API for their
UTF-8 support (e.g. vfat, udf or newly prepared exfat). And others could
be modified/extended/fixed in similar way.

> > 3) Add support for iocharset=3D and codepage=3D options for msdos
> > filesystem. It shares lot of pars of code with vfat driver.
>=20
> I guess this is for msdos filesystem maintainers to decide.

Yes!

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--uelhbz7cmchbh2fr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXhTCIAAKCRCL8Mk9A+RD
UsF7AJ9F2SRZ9iGtWdPUOIf/F7cGh/vSfQCgnZEHYTrE7RxwVOhGPebC7+Gdz1g=
=zjaq
-----END PGP SIGNATURE-----

--uelhbz7cmchbh2fr--


--===============8335064420308533962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8335064420308533962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============8335064420308533962==--

