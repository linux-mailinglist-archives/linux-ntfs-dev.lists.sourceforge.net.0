Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A2312F1F6
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  3 Jan 2020 01:01:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1inAPE-0006lC-Qi; Fri, 03 Jan 2020 00:01:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali.rohar@gmail.com>) id 1in7sD-0007KH-Gg
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 02 Jan 2020 21:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q7ILQ6vE+vwpRyA2bKiM3+nO07Ltd687WzjuuO8GNN0=; b=HioxhejSIcain0x2S1B9iI8g09
 xzIXCDy+Xmg6bjtHJ0hk/KgBfVFs7EkMsOtqS+JKXOcl7gf3O8je6z3X4pG8AhOY0Pg+nCTp2E7k6
 AWrsPViWMvs6qSry83STPpWzdJSyyaxle0qzuYml0qzgmn99KqNhu7wikt9/gzkPdgxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q7ILQ6vE+vwpRyA2bKiM3+nO07Ltd687WzjuuO8GNN0=; b=k
 IH0dmDCm1zCNHcqUi16zpYigUYWNiM/+CK/mU2D5nGwAOj0pGWy+j4HBOdLqWm75sKzMEQIzX7ttq
 t0HtDM72R0sNlmRZY832QtVPPxJ8bPehmMuljttb9ZU/pz23ySP9HgI71jemQ9VfvMYhMnGcu+tgm
 Tmp1vKn7E1Hg0eAo=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1in7s0-007Tby-Ax
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 02 Jan 2020 21:19:17 +0000
Received: by mail-wr1-f65.google.com with SMTP id y11so40600796wrt.6
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 02 Jan 2020 13:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Q7ILQ6vE+vwpRyA2bKiM3+nO07Ltd687WzjuuO8GNN0=;
 b=ppGZNFVayH2pDy0fY9yk4nY8GKytJUuZIp3fKFfCVW1xRiYW60rKO1ulce/XD+XFcF
 vKPUNYdoIB3qp2EZBgnWdW9ZOCAM2yMoGR4KpX7E8NgR9FhKlhQJl3NioHJ4nqqRpakc
 52kynZvAMUTX2gqxzc/ZqVxflW5YURkiSA3nuPIe0NP81QWDQwyca/wH6Bt3HlzW9iJE
 rp440YEzd77UYFRDcBybosTAFlTCQDdLcOGbrkKyzJssjn67/VIY7W5eHBwY3v7MjA3x
 bU9mVfz8xZ8pYJNGY2zN+e3946p1aM3r6VFDgGB6M9rD+yWo0lcFTDOWtcxZcAXJlgNK
 Cnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Q7ILQ6vE+vwpRyA2bKiM3+nO07Ltd687WzjuuO8GNN0=;
 b=jsz7MVHsC23ARajAjUSwduc3HfNEWq0pgI3cheKZo1TCwqstkDqe3uOa4GYqSp+qIU
 xpNDVO81umKvuzCLUmcLSYCwUCvJpGSMniX+EXMwRG37yUe0ulMtPKGNqpFjq73QYU8b
 u7MszJGyD0Wml/EQno6srkVjw2eGEpxzHpga5gbc411iNWt1ZxjW8lq8PriKwthelJKo
 Aw+W3X+w36HubyQ5Wy4PBY9Ia+L6yR0uEIDmroqWxook4U6wkiuUD9Xuck4UhKNoOqt1
 syYHN+x7GOn22VWGifN8mtlfwzHBPkfzvrTq8WXemy3m3zdSDUvSdQmOEeZAKu9+RcVc
 H38Q==
X-Gm-Message-State: APjAAAWgzo40lSq4pMn5bwuWAVChHVj07f9Lkx6/Mmrz2V6FHj0CuhV4
 c7YCZ+jF1noBaFO0OCKEqscYBWChusM=
X-Google-Smtp-Source: APXvYqwEUdeL8z2rIw9tFIjYESsxWr3A8E/lAIAoIkXSadr8DwfuLip02FMQem52XKT8Y4GoK4ATvg==
X-Received: by 2002:a05:6000:367:: with SMTP id
 f7mr81873888wrf.174.1577999937679; 
 Thu, 02 Jan 2020 13:18:57 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id p15sm9618677wma.40.2020.01.02.13.18.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 13:18:56 -0800 (PST)
Date: Thu, 2 Jan 2020 22:18:55 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-cifs@vger.kernel.org
Message-ID: <20200102211855.gg62r7jshp742d6i@pali>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (pali.rohar[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1in7s0-007Tby-Ax
X-Mailman-Approved-At: Fri, 03 Jan 2020 00:01:31 +0000
Subject: [Linux-NTFS-Dev] Unification of filesystem encoding options
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Namjae Jeon <linkinjeon@gmail.com>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Eric Sandeen <sandeen@redhat.com>,
 Luis de Bethencourt <luisbg@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@infradead.org>, Steve French <sfrench@samba.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Jan Kara <jack@suse.com>, David Sterba <dsterba@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: multipart/mixed; boundary="===============6641390389825224800=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net


--===============6641390389825224800==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yemvk4r42345xvlb"
Content-Disposition: inline


--yemvk4r42345xvlb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello!

While I was reading a new patch series for exfat filesystem driver I
saw how is proposed implementation for converting exfat's UTF-16LE
filenames to userspace and so I decided to investigate what filesystems
which are already part of Linux kernel are doing.

I looked at filesystems supported by Linux kernel which do not store
filenames as sequence of octets, but rather expect that on-disk format
of filenames is according to some encoding.

Below is list of these filesystems with its native encoding:

befs     UTF-8
cifs     UTF-16LE
msdos    unspecified OEM codepage
vfat     unspecified OEM codepage or UTF-16LE
hfs      octets
hfsplus  UTF-16BE-NFD-Apple
isofs    octets or UTF-16BE
jfs      UTF-16LE
ntfs     UTF-16LE
udf      Latin1 or UTF-16BE

Filesystems msdos, vfat, hfs and isofs are bogus as their filesystem
structure does not say in which encoding is filename stored. For vfat
and isofs there is information if it is UTF-16LE or some unspecified
encoding. User who access such filesystem must know under which encoding
he stored data on it. For this purpose there is for vfat and hfs mount
option codepage=3D<codepage>.

All other filesystems stores in their structures encoding of filenames.
Either implicitly (hfsplus is always in UTF-16BE with modified Apple's
NFD normalization) or explicitly (in UDF is byte which says if filename
is in Latin1 or in UTF-16BE).


As passing UTF-16(LE|BE) buffers is not possible via null term strings
for any VFS sycall, Linux kernel translates these Unicode filenames to
some charset. It is done by various mount options. I looked which mount
options are understood by our Linux filesystems implementations. In all
next paragraphs by filesystem I would mean Linux driver implementation
(and not structure on disk), so do not be confused.

Below is table:

befs     iocharset=3D<charset>
cifs     iocharset=3D<charset>
msdos    (unsupported)
vfat     utf8=3D0|no|false|1|yes|true OR utf8 OR iocharset=3D<charset>
hfs      iocharset=3D<charset>
hfsplus  nls=3D<charset>
isofs    iocharset=3D<charset> OR utf8
jfs      iocharset=3D<charset>
ntfs     nls=3D<charset> OR iochrset=3D<charset> OR utf8
udf      utf8 OR iocharset=3D<charset>

Filesystem msdos does not support specifying OEM codepage encoding. It
passthrough 8bit buffer to userspace and expects that userspace
understand correct OEM codepage. There is no support for reencoding it
to UTF-8 (or any other charset). Same applies for isofs when Joliet
structure is not stored on filesystem.

Filesystem vfat has the most obscure way how to specifying charset.
Details are in mount(8) manual page. What is important: option
iocharset=3Dutf8 is buggy and may break filesystem consistency (it allows
to create two directory entries which would differ only in case
sensitivity which is not allowed by FAT specification). Due to this
problem there is a fix, mount option utf8=3D1 (or utf8=3Dyes or utf8=3Dtrue=
 or
just utf8) which do what you have would expect from iocharset=3Dutf8 if it
was not buggy.

Filesystem ntfs has option iocharset=3D<charset> which is just alias for
nls=3D<charset> and says that iocharset=3D is deprecated. Same applies for
option utf8 which is just alias for nls=3Dutf8.

Filesystems isofs and udf have two ways how to specify UTF-8 encoding.
First way is via utf8 mount option and second one via iocharset=3Dutf8
option. Looks like that difference is only one, iocharset=3Dutf8 supports
only Uncicode code points up to the U+FFFF (limited to 3 byte long UTF-8
sequences, like utf8/utf8mb3 encoding in MySQL/MariaDB) and utf8 option
supports also code points above U+FFFF, so full Unicode and not just
limited subset.

Filesystem cifs in UTF-8 mode (via iocharset=3Dutf8) always supports code
points above U+FFFF. But remaining filesystems befs, hfs, hfsplus, jfs
and ntfs seems to supports only Unicode code points up to the U+FFFF. So
effectively they do not support UTF-16, but effectively just UCS-2. This
limitation comes from Kernel NLS table framework/API which is limited to
16bit integers and therefore maximal Unicode code point is U+FFFF.
Filesystems cifs, isofs, udf and vfat has own special code to work with
surrogate pairs and do not use limited NLS table functions. There are
also functions utf8s_to_utf16s() and utf16s_to_utf8s() for this purpose.


And here I see these improvements for all above filesystems:


1) Unify mount options for specifying charset.

Currently all filesystems except msdos and hfsplus have mount option
iocharset=3D<charset>. hfsplus has nls=3D<charset> and msdos does not
implement re-encoding support. Plus vfat, udf and isofs have broken
iocharset=3Dutf8 option (but working utf8 option) And ntfs has deprecated
iocharset=3D<charset> option.

I would suggest following changes for unification:

* Add a new alias iocharset=3D for hfsplus which would do same as nls=3D
* Make iocharset=3Dutf8 option for vfat, udf and isofs to do same as utf8
* Un-deprecate iocharset=3D<charset> option for ntfs

This would cause that all filesystems would have iocharset=3D<charset>
option which would work for any charset, including iocharset=3Dutf8.
And it would fix also broken iocharset=3Dutf8 for vfat, udf and isofs.


2) Add support for Unicode code points above U+FFFF for filesystems
befs, hfs, hfsplus, jfs and ntfs, so iocharset=3Dutf8 option would work
also with filenames in userspace which would be 4 bytes long UTF-8.


3) Add support for iocharset=3D and codepage=3D options for msdos
filesystem. It shares lot of pars of code with vfat driver.


What do you think about these improvements? First improvement should be
relatively simple and if we agree that this unification of mount option
iocharset=3D make sense, I could do it.

--=20
Pali Roh=C3=A1r
pali.rohar@gmail.com

--yemvk4r42345xvlb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQS4VrIQdKium2krgIWL8Mk9A+RDUgUCXg5eNQAKCRCL8Mk9A+RD
UiLNAJoDSF9XHS0h4NVhiAJxSkMkLyvosQCcCOV2ieT4teXX72Iv7nd4IsdCVuU=
=e0M9
-----END PGP SIGNATURE-----

--yemvk4r42345xvlb--


--===============6641390389825224800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6641390389825224800==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============6641390389825224800==--

