Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61968132D35
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  7 Jan 2020 18:38:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1iosoA-0007kW-Gi; Tue, 07 Jan 2020 17:38:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jack@suse.cz>) id 1iooyW-0004uI-EP
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 13:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s9C9iT2IMxEesmzxHQrRVK7dB+nej87MRUBixjhctNk=; b=DMPzq34Ygev5zKoF3BcZyHX6M9
 r2n4Hwk+LQg4fCC7C7hmquVfS7lqcOAoduuZU8OEr9Xd/Ka/++PhgivDghGmIUY/5U5NHUPjYWte/
 FmzvTyHXVvbWBeP2ftNKqGwjpDeS2wrrqDIJTYBTCAEgyw8t5FSgYwTJi+KKnD3HWnTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s9C9iT2IMxEesmzxHQrRVK7dB+nej87MRUBixjhctNk=; b=BYKQMzL/5qeI3a2kBWfs/yxGwd
 H3LeMsZOLxCPD+CUhs1n4LMeQltdS0K5Fn+CrTGEYOPA26Qra1wsLFvDfOelOUJsCcVBtWHVt7Li9
 LUSanj8oTsVUoH1CIJ+SA26wOz4+JEtazHpOmVcnUUyFoZTQ1VLJVPySTHROt2B0NrsU=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iooyP-00DNYf-L4
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 07 Jan 2020 13:32:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 83530AF05;
 Tue,  7 Jan 2020 13:32:34 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 7E02D1E0B47; Tue,  7 Jan 2020 14:32:33 +0100 (CET)
Date: Tue, 7 Jan 2020 14:32:33 +0100
From: Jan Kara <jack@suse.cz>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
Message-ID: <20200107133233.GC25547@quack2.suse.cz>
References: <20200102211855.gg62r7jshp742d6i@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102211855.gg62r7jshp742d6i@pali>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iooyP-00DNYf-L4
X-Mailman-Approved-At: Tue, 07 Jan 2020 17:38:20 +0000
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu 02-01-20 22:18:55, Pali Roh=E1r wrote:
> 1) Unify mount options for specifying charset.
> =

> Currently all filesystems except msdos and hfsplus have mount option
> iocharset=3D<charset>. hfsplus has nls=3D<charset> and msdos does not
> implement re-encoding support. Plus vfat, udf and isofs have broken
> iocharset=3Dutf8 option (but working utf8 option) And ntfs has deprecated
> iocharset=3D<charset> option.
> =

> I would suggest following changes for unification:
> =

> * Add a new alias iocharset=3D for hfsplus which would do same as nls=3D
> * Make iocharset=3Dutf8 option for vfat, udf and isofs to do same as utf8
> * Un-deprecate iocharset=3D<charset> option for ntfs
> =

> This would cause that all filesystems would have iocharset=3D<charset>
> option which would work for any charset, including iocharset=3Dutf8.
> And it would fix also broken iocharset=3Dutf8 for vfat, udf and isofs.

Makes sense to me.

> 2) Add support for Unicode code points above U+FFFF for filesystems
> befs, hfs, hfsplus, jfs and ntfs, so iocharset=3Dutf8 option would work
> also with filenames in userspace which would be 4 bytes long UTF-8.

Also looks good but when doing this, I'd suggest we extend NLS to support
full UTF-8 rather than implementing it by hand like e.g. we did for UDF.
 =

> 3) Add support for iocharset=3D and codepage=3D options for msdos
> filesystem. It shares lot of pars of code with vfat driver.

I guess this is for msdos filesystem maintainers to decide.

								Honza
-- =

Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
