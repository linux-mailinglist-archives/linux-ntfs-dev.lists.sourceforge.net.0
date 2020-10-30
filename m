Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CE22A1B67
	for <lists+linux-ntfs-dev@lfdr.de>; Sun,  1 Nov 2020 01:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kZ1EC-0001v2-Le; Sun, 01 Nov 2020 00:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <almaz.alexandrovich@paragon-software.com>)
 id 1kYWgf-0001Wi-Ad
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 15:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9GP4n1/3kUo9xtQjP38LQz9IULvQeP9/jTJo14gQVIU=; b=CMmz8CCEXNy2Qnbxe1bXx6tHUU
 n+0rx/AXh1zScKOWCk//DZ4IDIKvAbWp1l82PvGjH4+NWmwvK05nIwbABXfaywdVwpsEGcJgKMcWQ
 Ug32hQTBoUrd8ppk4OWydymkoeGyMP7aqqnxSf1kqY/4wbX6S1YvRkvq4YZaMSC8OaIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9GP4n1/3kUo9xtQjP38LQz9IULvQeP9/jTJo14gQVIU=; b=IuvvlVkCKyJ/eA7CCLGhBoj4RM
 4g4bzn8E4cHLO9eIvQGE4fR1lVun5h9rc6y/uNePEVZSKTXNsj5gFR8vBKb9qtbL7Oa6Leomj6aSn
 8j6lMP5Xf3dIPn2j1q8FI7EWmCXnHCVYY+4Wu6Sg8AadhqMP+jVm81Rh7w/td9R5GaWE=;
Received: from relayfre-01.paragon-software.com ([176.12.100.13])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kYWgT-00D8SH-HA
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 30 Oct 2020 15:51:33 +0000
Received: from dlg2.mail.paragon-software.com
 (vdlg-exch-02.paragon-software.com [172.30.1.105])
 by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 1C9191D21;
 Fri, 30 Oct 2020 18:51:11 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paragon-software.com; s=mail; t=1604073071;
 bh=9GP4n1/3kUo9xtQjP38LQz9IULvQeP9/jTJo14gQVIU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=iacMwHHlvIIUyCEHKGv4IcE/D3MNb2nLkwRNPRFuXK+cJjiw+BBzbQDgzsLjTgYEE
 duerL025mODm9V5wP66qPliXOGqgeIlCYzJPiiyggwIdgvagFJpq2AyQvqT6MA+OPo
 1wDc2QtYP4jJ8smeGOsyYO9ssHQL96IXkmz4uZCQ=
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 30 Oct 2020 18:51:10 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%6])
 with mapi id 15.01.1847.003; Fri, 30 Oct 2020 18:51:10 +0300
From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
To: =?iso-8859-1?Q?Pali_Roh=E1r?= <pali@kernel.org>
Thread-Topic: [PATCH v11 00/10] NTFS read-write driver GPL implementation by
 Paragon Software
Thread-Index: AQHWrs4AbuX6Qk1kykuA/KYohSTSz6mwEbcAgAA1JlA=
Date: Fri, 30 Oct 2020 15:51:10 +0000
Message-ID: <5313baaad14c40d09738bf63e4659ac9@paragon-software.com>
References: <20201030150239.3957156-1-almaz.alexandrovich@paragon-software.com>
 <20201030152450.77mtzkxjove36qfd@pali>
In-Reply-To: <20201030152450.77mtzkxjove36qfd@pali>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.8.36]
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [176.12.100.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kYWgT-00D8SH-HA
X-Mailman-Approved-At: Sun, 01 Nov 2020 00:28:08 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v11 00/10] NTFS read-write driver GPL
 implementation by Paragon Software
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
Cc: "nborisov@suse.com" <nborisov@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "aaptel@suse.com" <aaptel@suse.com>,
 "willy@infradead.org" <willy@infradead.org>,
 "dsterba@suse.cz" <dsterba@suse.cz>, "joe@perches.com" <joe@perches.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 "mark@harmstone.com" <mark@harmstone.com>,
 "anton@tuxera.com" <anton@tuxera.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: Pali Roh=E1r <pali@kernel.org>
Sent: Friday, October 30, 2020 6:25 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: linux-fsdevel@vger.kernel.org; viro@zeniv.linux.org.uk; linux-kernel@=
vger.kernel.org; dsterba@suse.cz; aaptel@suse.com;
> willy@infradead.org; rdunlap@infradead.org; joe@perches.com; mark@harmsto=
ne.com; nborisov@suse.com; linux-ntfs-
> dev@lists.sourceforge.net; anton@tuxera.com
> Subject: Re: [PATCH v11 00/10] NTFS read-write driver GPL implementation =
by Paragon Software
> =

> Hello and thanks for update!
> =

> I have just two comments for the last v11 version.
> =

> I really do not like nls_alt mount option and I do not think we should
> merge this mount option into ntfs kernel driver. Details I described in:
> https://lore.kernel.org/linux-fsdevel/20201009154734.andv4es3azkkskm5@pal=
i/
> =

> tl;dr it is not systematic solution and is incompatible with existing
> in-kernel ntfs driver, also incompatible with in-kernel vfat, udf and
> ext4 (with UNICODE support) drivers. In my opinion, all kernel fs
> drivers which deals with UNICODE should handle it in similar way.
> =


Hello Pali! First of all, apologies for not providing a feedback on your pr=
evious
message regarding the 'nls_alt'. We had internal discussions on the topic a=
nd
overall conclusion is that: we do not want to compromise Kernel standards w=
ith
our submission. So we will remove the 'nls_alt' option in the next version.

However, there are still few points we have on the topic, please read below.

> It would be really bad if userspace application need to behave
> differently for this new ntfs driver and differently for all other
> UNICODE drivers.
> =


The option does not anyhow affect userspace applications. For the "default"=
 example
of unzip/tar:
1 - if this option is not applied (e.g. "vfat case"), trying to unzip an ar=
chive with, e.g. CP-1251,
names inside to the target fs volume, will return error, and issued file(s)=
 won't be unzipped;
2 - if this option is applied and "nls_alt" is set, the above case will res=
ult in unzipping all the files;

Also, this issue in general only applies to "non-native" filesystems. I.e. =
ext4 is not affected by it
in any case, as it just stores the name as bytes, no matter what those byte=
s are. The above case
won't give an unzip error on ext4. The only symptom of this would be, maybe=
, "incorrect encoding"
marking within the listing of such files (in File Manager or Terminal, e.g.=
 in Ubuntu), but there won't
be an unzip process termination with incomplete unarchived fileset, unlike =
it is for vfat/exfat/ntfs
without "nls_alt".

> Second comment is simplification of usage nls_load() with UTF-8 parameter
> which I described in older email:
> https://lore.kernel.org/linux-fsdevel/948ac894450d494ea15496c2e5b8c906@pa=
ragon-software.com/
> =

> You wrote that you have applied it, but seems it was lost (maybe during
> rebase?) as it is not present in the last v11 version.
> =

> I suggested to not use nls_load() with UTF-8 at all. Your version of
> ntfs driver does not use kernel's nls utf8 module for UTF-8 support, so
> trying to load it should be avoided. Also kernel can be compiled without
> utf8 nls module (which is moreover broken) and with my above suggestion,
> ntfs driver would work correctly. Without that suggestion, mounting
> would fail.

Thanks for pointing that out. It is likely the "nls_load()" fixes were lost=
 during rebase.
Will recheck it and return them to the v12.

Best regards!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
