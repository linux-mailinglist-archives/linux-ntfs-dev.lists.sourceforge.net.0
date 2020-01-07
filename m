Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAFF133727
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  8 Jan 2020 00:16:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ioy5S-0006j3-Tb; Tue, 07 Jan 2020 23:16:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tytso@mit.edu>) id 1iov5D-00035e-QT
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 20:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=grZr5b4wV5NZBVwxf2jKMlLXCfNDzFgnSkenTlSGzQs=; b=flbl6Led5rBjoV28O9orhLx3s9
 GmkiNDQz9p6CFMBjsQUBamWNczk/+FpsNXd7Fdxd+eIgODdLlcRIX9wyIo13VNVECsVlw1sTulKmQ
 13HMM9errdsixyopWRTlP+w4ZpHFQt96KuZBcras04c3Ww+MbdCLbjGbriIg2NJA0KjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=grZr5b4wV5NZBVwxf2jKMlLXCfNDzFgnSkenTlSGzQs=; b=gath/GKRZNVKhzcu7VZFMVhAtH
 tyfh8FFHh1HJD9WwNBow31/1lPw4mwh358RGEyTOFSI0ylRibQm0zDcSI3X4RjlywC1yB3BsmKJRo
 6ZlR9IrcCua2FSaIhdIMLji1cphI65ZQX7X+JPOWcUHrzJabbBoLY+qW3J1WufY+HwgU=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iov51-00Cks1-Cd
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 20:04:07 +0000
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
 [104.133.0.111] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 007K31WJ002663
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 7 Jan 2020 15:03:02 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id B2F684207DF; Tue,  7 Jan 2020 15:03:01 -0500 (EST)
Date: Tue, 7 Jan 2020 15:03:01 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
Message-ID: <20200107200301.GE3619@mit.edu>
References: <20200102211855.gg62r7jshp742d6i@pali>
 <20200107133233.GC25547@quack2.suse.cz>
 <20200107173842.ciskn4ahuhiklycm@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107173842.ciskn4ahuhiklycm@pali>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MAY_BE_FORGED          Relay IP's reverse DNS does not resolve to IP
X-Headers-End: 1iov51-00Cks1-Cd
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Jan 07, 2020 at 06:38:42PM +0100, Pali Roh=E1r wrote:
> Adding support for case-insensitivity into UTF-8 NLS encoding would mean
> to create completely new kernel NLS API (which would support variable
> length encodings) and rewrite all NLS filesystems to use this new API.
> Also all existing NLS encodings would be needed to port into this new
> API.
> =

> It is really something which have a value? Just because of UTF-8?
> =

> For me it looks like better option would be to remove UTF-8 NLS encoding
> as it is broken. Some filesystems already do not use NLS API for their
> UTF-8 support (e.g. vfat, udf or newly prepared exfat). And others could
> be modified/extended/fixed in similar way.

You didn't mention ext4 and f2fs, which is using the Unicode code in
fs/unicode for its case-folding and normalization support.  Ext4 and
f2fs only supports utf-8, so using the NLS API would have added no
value --- and it as you pointed out, the NLS API doesn't support
variable length encoding anyway.  In contrast the fs/unicode functions
have support for full Unicode case folding and normalization, and
currently has the latest Unicode 12.1 tables (released May 2019).

What I'd suggest is to create a new API, enhancing the functions in
fs/unicode, to support those file systems that need to deal with
UTF-16 and UTF-32 for their on-disk directory format, and that we
assume that for the most part, userspace *will* be using a UTF-8
encoding for the user<->kernel interface.  We can keep the existing
NLS interface and mount options for legacy support, but in my opinion
it's not worth the effort to try to do anything else.

					- Ted


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
