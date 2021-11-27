Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F79B46023E
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 27 Nov 2021 23:56:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mr6c6-0000ZB-53; Sat, 27 Nov 2021 22:56:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <anton@tuxera.com>) id 1mr6S0-0005QK-HA
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 22:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bvxO2HbSvdsdvv4RC/IvQsrlQQEkcJie1rkVyf4lmYY=; b=lAcQujAH/UP1bMq06VPOSC8l0i
 9ighF2rWftxjZ/4Dkp5U/VPXUypzdougnxTpq+ADWQEj8SHzbq6u52lJkQ5Xz/OQCWvP9/zgTNAZ3
 QIouUT+1U4TcBkFJlnByr0fx4DewSaaYUWa5pswjuQ1enQ9gGkecBMQydYev5RyUz3CQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bvxO2HbSvdsdvv4RC/IvQsrlQQEkcJie1rkVyf4lmYY=; b=f5ll/5t5qf+SpkRyO3uDrNJ9/v
 sRtxhAIO8hlRpNLOLyIv0QyflryLM8dmXBbRpTErZ7QpzzKL0J0va6oZYOiuAljEpwTi3SOI1mEKR
 keSyZo5ADrzjNRBf9S8Svy21Il7fTR+90kiIel2b1fBUhEubRpHirN87whrp9lO/N8DY=;
Received: from mgw-02.mpynet.fi ([82.197.21.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mr6Rw-0003Cn-Sw
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 27 Nov 2021 22:45:45 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.43/8.16.0.43) with SMTP id 1ARMiqPM035292;
 Sun, 28 Nov 2021 00:44:52 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 3ck98j8gh0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sun, 28 Nov 2021 00:44:52 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.26; Sun, 28 Nov 2021 00:44:52 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.026; Sun, 28 Nov 2021 00:44:52 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Thread-Topic: [PATCH v3 0/3] Limit NTFS_RW to page sizes smaller than 64k
Thread-Index: AQHX46W2dvlin3Ey2EOJlJkpsU4ChqwXhYiAgABNKgCAAAGjAIAAA5+A
Date: Sat, 27 Nov 2021 22:44:51 +0000
Message-ID: <6175371C-AA85-470A-B7E6-5BE8F2D471E6@tuxera.com>
References: <20211127154442.3676290-1-linux@roeck-us.net>
 <CAHk-=wh9g5Mu9V=dsQLkfmCZ-O7zjvhE6F=-42BbQuis2qWEpg@mail.gmail.com>
 <228a72fd-82db-6bfe-0df6-37f57cecb31a@roeck-us.net>
 <CAHk-=wjaVwrf1OQbDSbk1FxqzbtAYQLx16D74TeagXQyb5oEEA@mail.gmail.com>
In-Reply-To: <CAHk-=wjaVwrf1OQbDSbk1FxqzbtAYQLx16D74TeagXQyb5oEEA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [81.154.174.177]
Content-ID: <D2931A9066944C4BB32AAE9301A50167@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-GUID: TFeZmLzu2G1b3r3x_II5jkZNKw0heigq
X-Proofpoint-ORIG-GUID: TFeZmLzu2G1b3r3x_II5jkZNKw0heigq
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-11-27_06:2021-11-25,
 2021-11-27 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 spamscore=0
 malwarescore=0
 mlxlogscore=640 bulkscore=0 adultscore=0 suspectscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111270133
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Guenter, > On 27 Nov 2021, at 22:31, Linus Torvalds
 <torvalds@linux-foundation.org> wrote: > On Sat, Nov 27, 2021 at 2:26 PM
 Guenter Roeck <linux@roeck-us.net> wrote: >> >> Either way is fine with me.
 Either a [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [82.197.21.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mr6Rw-0003Cn-Sw
X-Mailman-Approved-At: Sat, 27 Nov 2021 22:56:07 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v3 0/3] Limit NTFS_RW to page sizes
 smaller than 64k
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>, Netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, Michael
 Ellerman <mpe@ellerman.id.au>, "David S . Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Linus, Guenter,

> On 27 Nov 2021, at 22:31, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> On Sat, Nov 27, 2021 at 2:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
>> 
>> Either way is fine with me. Either apply it now and have it fixed in -rc3,
>> or we can wait for a few days and I'll send you a pull request if there
>> are no objections by, say, Wednesday.
> 
> I'll just take the patches as-is and we can leave this issue behind us
> (knock wood).

That sounds good, thank you!

Best regards,

	Anton

> Thanks,
> 
>           Linus

-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
