Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 247FE135D6B
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  9 Jan 2020 17:03:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ipaGx-0003B4-54; Thu, 09 Jan 2020 16:02:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hirofumi@parknet.co.jp>) id 1ip5aF-0004ho-A2
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jan 2020 07:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nLnMtgNSKxDDtojfYWpdj6Yxx0AnajG0qCs0fXENfCE=; b=cy+7fNVIKuOj3+cjt6zdwYl8Z5
 ZR/LqM+zd1BDC5UJ3P/iW4HG/h86sFMnLIRt2tmhAZ8pJRWD4bN9oowVZlPjHp93yBQPKGYJ8cnHb
 X8FRTaFt1Gpm11fDp3MZ4FWjlzI+y1FjrUSmHzWqjG3iAlNA7jpsHSjwbOzhGsoWI9zQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nLnMtgNSKxDDtojfYWpdj6Yxx0AnajG0qCs0fXENfCE=; b=A5F40PmWOsFDfofUgrgxyAjXfQ
 W3qZEdEbaL1RDyASLu11Wm43yE94zusaBlAntMscp3aGeggwvSt5S4G0m14ezJaTSwEusE5GHcRo2
 3r+wolPABA4aKHdzh0EHrQ7esmXWVPnMJnR4bQRwvij1/1uTHrPZjz3lqb4R9DH1DW/A=;
Received: from mail.parknet.co.jp ([210.171.160.6])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1ip5a8-00DB3C-UW
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 08 Jan 2020 07:16:51 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id 6D12315CBE2;
 Wed,  8 Jan 2020 16:00:34 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.15.2/8.15.2/Debian-16) with ESMTPS id
 00870Xa2011512
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 8 Jan 2020 16:00:34 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.15.2/8.15.2/Debian-16) with ESMTPS id 00870Wqc046780
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 8 Jan 2020 16:00:32 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.15.2/8.15.2/Submit) id 00870HJl046772;
 Wed, 8 Jan 2020 16:00:17 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali.rohar@gmail.com>
References: <20200102211855.gg62r7jshp742d6i@pali>
 <20200107133233.GC25547@quack2.suse.cz>
 <20200107173842.ciskn4ahuhiklycm@pali>
Date: Wed, 08 Jan 2020 16:00:17 +0900
In-Reply-To: <20200107173842.ciskn4ahuhiklycm@pali> ("Pali
 =?iso-8859-1?Q?Roh=E1r=22's?= message of
 "Tue, 7 Jan 2020 18:38:42 +0100")
Message-ID: <87y2uiigam.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: parknet.co.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ip5a8-00DB3C-UW
X-Mailman-Approved-At: Thu, 09 Jan 2020 16:02:58 +0000
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
 Steve French <sfrench@samba.org>, David Sterba <dsterba@suse.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>, Salah Triki <salah.triki@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Pali Roh=E1r <pali.rohar@gmail.com> writes:

>> > 3) Add support for iocharset=3D and codepage=3D options for msdos
>> > filesystem. It shares lot of pars of code with vfat driver.
>> =

>> I guess this is for msdos filesystem maintainers to decide.
>
> Yes!

Of course, it's ok to add though. If someone really wants to use, and
someone works for it...

Thanks.
-- =

OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
