Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7117D133728
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Jan 2020 00:16:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ioy5S-0006jB-W8; Tue, 07 Jan 2020 23:16:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali.rohar@gmail.com>) id 1iovbn-0006y9-Uv
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 20:37:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XaL6t4v2vQUuUGBKgzCS+DPAs1rbOJ+x6CyTwGXWZL0=; b=IbaMi0roPpHsoWAH1+N+/RmFBz
 7tk6GOHdVYGfd5EKyoO4lhBiS4TIcJZrUHsCmj8TeWjG8Yz3E09HrZ0Y3A/4QOWyjNd986mR26Ncz
 mS2uTXmld6nijgAMi4JqT3aKzaFWtXjCogGrFagv98eezjQ2TgcVn0FGKss/3fHepbFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XaL6t4v2vQUuUGBKgzCS+DPAs1rbOJ+x6CyTwGXWZL0=; b=cUuitlN94/bo/OIzpAsw/R5YGC
 YpRz90QbSkYh7QdiCqwNMiYwpzEkwAYTfPYMeSLfOqcA5cTO/kMb0o+b3ou8cD/4JndmTF0PQJfim
 HAiNIuabkIQ/U73Tl52VpRJtqoTDGJgX6szBN405ourrY3o8NMClHw1fBcnnENHPFkxg=;
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iovbh-00CmBk-Ht
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 20:37:47 +0000
Received: by mail-wr1-f67.google.com with SMTP id c14so999098wrn.7
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 07 Jan 2020 12:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XaL6t4v2vQUuUGBKgzCS+DPAs1rbOJ+x6CyTwGXWZL0=;
 b=C/67CYdw9EiQTFkhFOwzG+gP69UccHKLh6hfprav8IpJr0WD44mZdr9L0I3GqHUVCR
 69B49Dtk6DdGFFD96VjQpGzVRINXuzjfBYTdbu3BBIrM3Y6GOf2C8U1DOEhjyz/JV0Kw
 aDGH2skhGmNK5EHAIhCzbiSh47rqgBtqxTxf3117roTrL09CcWRlEG5PYlWMfRJlz4yh
 bLIHla0MAFoFcee11+QehjnhjA3kkAjIBzP+ykypocJCRQGmx492N0eda6mclwoZuW6u
 kMKoBXA9s8fDoVpePlCUv94RD/myDhPz/3B3aCQYFmny7I6I79rLoxU2ZSTcHHXv+M+a
 aTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XaL6t4v2vQUuUGBKgzCS+DPAs1rbOJ+x6CyTwGXWZL0=;
 b=HUFcsxfDMVKA8r7iv4e8YMGvyvsueUIi+AT+cCM2b4/G8izGlkYVSUEHzGIM0kRVOV
 AwXKyAL04oeZheTLrEsFhvivcHo0yajSDPdApSPe8VwBKdlNZ6D6ROJCTJxpkHflPP1X
 vzl4JQ8H/j2zSgYsh/ZEUmsCrINkwuzLgvJ/yL23vUBKS79epc6Z59koIGXqcDAsKgds
 1mfi/Gt2zs3WmQ4tSGJhO4+EqRdDTpduLbtHaARgwq/uay5rFPQUuiYL1BFIHv1rdWaD
 IuYrHUHwOYANYMQXmr/daoKTOqG/XW545Xvdoe57TtUnfi9yQQZMHd6Pzp09KpIuB5QC
 zypg==
X-Gm-Message-State: APjAAAUCoehFJnG/ZEPbqVcPXvddWuYY6t79JGFP1kOzVFwqWRBilL6c
 lraDiGWLgdsT3HADb8D8hAc=
X-Google-Smtp-Source: APXvYqyD0plNPIcXsFUAfF5pcRe9N7C+GGkj6Hfr9SCzoDTfpq5AQglUrgRw/V+S9kk8LgpZ51NLkw==
X-Received: by 2002:a05:6000:12c9:: with SMTP id
 l9mr969096wrx.304.1578429454861; 
 Tue, 07 Jan 2020 12:37:34 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id o129sm957337wmb.1.2020.01.07.12.37.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 12:37:33 -0800 (PST)
Date: Tue, 7 Jan 2020 21:37:32 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20200107203732.ab4jnfgsjobtt5xa@pali>
References: <20200102211855.gg62r7jshp742d6i@pali>
 <20200107133233.GC25547@quack2.suse.cz>
 <20200107173842.ciskn4ahuhiklycm@pali>
 <20200107200301.GE3619@mit.edu>
MIME-Version: 1.0
In-Reply-To: <20200107200301.GE3619@mit.edu>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (pali.rohar[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iovbh-00CmBk-Ht
X-Mailman-Approved-At: Tue, 07 Jan 2020 23:16:34 +0000
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
 Jan Kara <jack@suse.cz>, Eric Sandeen <sandeen@redhat.com>,
 Luis de Bethencourt <luisbg@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Anton Altaparmakov <anton@tuxera.com>, Steve French <sfrench@samba.org>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Pavel Machek <pavel@ucw.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>, Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: multipart/mixed; boundary="===============0127918918298073655=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--===============0127918918298073655==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="77fn7474fypyqytm"
Content-Disposition: inline


--77fn7474fypyqytm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tuesday 07 January 2020 15:03:01 Theodore Y. Ts'o wrote:
> On Tue, Jan 07, 2020 at 06:38:42PM +0100, Pali Roh=C3=A1r wrote:
> > Adding support for case-insensitivity into UTF-8 NLS encoding would mean
> > to create completely new kernel NLS API (which would support variable
> > length encodings) and rewrite all NLS filesystems to use this new API.
> > Also all existing NLS encodings would be needed to port into this new
> > API.
> >=20
> > It is really something which have a value? Just because of UTF-8?
> >=20
> > For me it looks like better option would be to remove UTF-8 NLS encoding
> > as it is broken. Some filesystems already do not use NLS API for their
> > UTF-8 support (e.g. vfat, udf or newly prepared exfat). And others could
> > be modified/extended/fixed in similar way.
>=20
> You didn't mention ext4 and f2fs, which is using the Unicode code in
> fs/unicode for its case-folding and normalization support.

Hi! I have not mentioned because I took only filesystems which use NLS.
And also I forgot that ext4 now has unicode flag which basically put
this filesystem into group where FS "enforce" encoding of on disk
structure.

> Ext4 and
> f2fs only supports utf-8, so using the NLS API would have added no
> value --- and it as you pointed out, the NLS API doesn't support
> variable length encoding anyway.

Theoretically using NLS API could have a value if userspace is
configured to work in e.g. Latin1 encoding and you want to use ext4/f2fs
with unicode flag in this userspace (NLS API in this case could convert
3byte UTF-8 to Latin1). But it is very theoretical and limited use case.

> In contrast the fs/unicode functions
> have support for full Unicode case folding and normalization, and
> currently has the latest Unicode 12.1 tables (released May 2019).

That is great!

But for example even this is not enough for exfat. exfat has stored
upcase table directly in on-disk FS, so ensure that every implementation
of exfat driver would have same rules how to convert character (code
point) to upper case or lower case (case folding). Upcase table is
stored to FS itself when formatting. And in MS decided that for exfat
would not be used any Unicode normalization. So this whole fs/unicode
code is not usable for exfat.

> What I'd suggest is to create a new API, enhancing the functions in
> fs/unicode, to support those file systems that need to deal with
> UTF-16 and UTF-32 for their on-disk directory format, and that we
> assume that for the most part, userspace *will* be using a UTF-8
> encoding for the user<->kernel interface.

I do not see a use-case for such a new API. Kernel has already API
functions:

    int utf8_to_utf32(const u8 *s, int len, unicode_t *pu);
    int utf32_to_utf8(unicode_t u, u8 *s, int maxlen);
    int utf8s_to_utf16s(const u8 *s, int len, enum utf16_endian endian, wch=
ar_t *pwcs, int maxlen);
    int utf16s_to_utf8s(const wchar_t *pwcs, int len, enum utf16_endian end=
ian, u8 *s, int maxlen);

which are basically enough for all mentioned filesystems. Maybe in for
some cases would be useful function utf16 to utf32 (and vice-versa), but
that is all. fs/unicode does not bring a new value or simplification.

Mentioned filesystems are in most cases either case-sensitive (UDF),
having own case-folding (exfat), using own special normalization
incompatible with anything (hfsplus) or do not enforce any normalization
(cifs, vfat, ntfs, isofs+joliet). So result is that simple UTF-8 to
UTF-16LE/BE conversion function is enough and then filesystem module
implements own specific rules (special upcase table, incompatible
normalization).

And I do not thing that it make sense to extending fs/unicode for every
one stupid functionality which those filesystems have and needs to
handle. I see this as a unique filesystem specific code.

> We can keep the existing
> NLS interface and mount options for legacy support, but in my opinion
> it's not worth the effort to try to do anything else.

NLS interface is crucial part of VFAT. Reason is that in VFAT can be
filenames stored either as UTF-16LE or as 8bit in some CP encoding.
Linux kernel stores new non-7-bit-ASCII filenames as UTF-16LE, but it
has to able to read 8-bit filenames which were not stored as UTF-16LE,
but rather as 8bit in CP encoding. And therefore mount option codepage=3D
which specify it is required needs to be implemented. It says how
vfat.ko should handle on-disk structure, not which encoding is exported
to userspace (those are two different things).

And current vfat implementation uses NLS API for it. Via CONFIG_* is
specified default codepage=3D mount option (CP473 or what it is -- if you
do not specify one explicitly at mount time). And because FAT is
required part of UEFI, Linux kernel would have to support this stuff
forever (or at least until it support UEFI). I think this cannot be
marked as "legacy". It is pity, but truth.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--77fn7474fypyqytm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXhTsCgAKCRCL8Mk9A+RD
UtPtAKCm4SOQXuN/Oeg6lDHCG/Gp5bqLKgCfTCeg9MXar+6v7z2MH87xYH2CpYo=
=utpq
-----END PGP SIGNATURE-----

--77fn7474fypyqytm--


--===============0127918918298073655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0127918918298073655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============0127918918298073655==--

