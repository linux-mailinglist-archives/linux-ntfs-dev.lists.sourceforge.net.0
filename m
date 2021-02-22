Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F42E321A0A
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 22 Feb 2021 15:19:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lEC3M-0003ZV-Kk; Mon, 22 Feb 2021 14:19:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1lEC3L-0003ZO-DJ
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Feb 2021 14:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QNtT6dbEWvadNqojy6QF3Yii5xgzsa74OlwxmdPYlbI=; b=j+P1ItCVGA1WdyUXyIQvo99Xqe
 cKU2hK5hwBdiFZcECys+Ye+HeGGsuKBUKQwfmPMO7ikLH/ybarD5pGqQp6N+rOWzk14UJMBrsgzet
 KsqXuaHC5SMyGrnB5se3QA4bUFnA6pCJdNhb0KuJtxbJijF6EYE0TRQ+BzjuQw1UpIHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QNtT6dbEWvadNqojy6QF3Yii5xgzsa74OlwxmdPYlbI=; b=HRe+Ba6aCjEswe8edkvCRs4rmj
 q0TxsIKYZZApEGQwPwIrNjl5/dFyVO49kHJ0vffNgidEV7db7zJ5Qdvx0moxJhwxOOPTQ/y7PEiPi
 EtrD1z2K7HsJZ5f+WFv4LGmcCzBX28m5sZFDh4nEN+pADvLFm7w8DpknOeAowQSeOLrc=;
Received: from mgw-02.mpynet.fi ([82.197.21.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lEC3E-0008FM-Ca
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 22 Feb 2021 14:19:11 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 11MEH0wD032555;
 Mon, 22 Feb 2021 16:18:51 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 36tq071dhd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 22 Feb 2021 16:18:51 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 22 Feb 2021 16:18:50 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.010; Mon, 22 Feb 2021 16:18:50 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH] ntfs: check for valid standard information attribute
Thread-Index: AQHXBUX43Bx0ygm+wEC4t5YdRoTv2qpemD8AgAEbtgCABGs/AA==
Date: Mon, 22 Feb 2021 14:18:50 +0000
Message-ID: <A4498E63-33DC-4DAA-837D-D97B8F29F70C@tuxera.com>
References: <20210217155930.1506815-1-rkovhaev@gmail.com>
 <42B686E5-92C1-4AD3-8CF4-E9AB39CBDB7B@tuxera.com>
 <20210219104956.09e869c36f065a78d1901725@linux-foundation.org>
In-Reply-To: <20210219104956.09e869c36f065a78d1901725@linux-foundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.155.251.193]
Content-ID: <E0CA92CF3C57764CBAD62349D499E051@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-02-22_02:2021-02-22,
 2021-02-22 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 phishscore=0
 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220132
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lEC3E-0008FM-Ca
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: check for valid standard
 information attribute
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Andrew,

Sorry for the delay in replying.

> On 19 Feb 2021, at 18:49, Andrew Morton <akpm@linux-foundation.org> wrote:
> 
> On Fri, 19 Feb 2021 01:54:30 +0000 Anton Altaparmakov <anton@tuxera.com> wrote:
> 
>> Hi Andrew,
>> 
>> Can you please push this one upstream?  Thanks a lot in advance!
> 
> The changelog is a bit brief...

Yes you are right it is a bit brief.  I guess I thought the syzkaller link was sufficient...  Rustam would you like to resubmit with an improved/extended description?

>>> On 17 Feb 2021, at 15:59, Rustam Kovhaev <rkovhaev@gmail.com> wrote:
>>> 
>>> we should check for valid STANDARD_INFORMATION attribute offset and
>>> length before trying to access it
> 
> It's a kernel a crash and I assume it results from mounting a corrupted
> filesystem?
> 
> I think it's worth a cc:stable, yes?

The problem is an invalid memory access due to corrupt on-disk metadata.

The issue with NTFS is that it is effectively a relational database so it is full of "struct X, field A" contains offset to "struct Y" so you get: "&struct Y = &struct X + X->A" and if the value of A is corrupt on-disk then your Y pointer is now pointing to random memory.

The patch fixes one such place by validating that Y pointer is within bounds of the structure/buffer it is in.

So I guess this could be worth a cc:stable?  I guess we can add it and Greg / others can decide whether to put it into stable or not...  Rustam when resubmitting with better description, please also add the "Cc: stable@vger.kernel.org" line together with the "Signed-off-by", etc lines (note no need to actually put this in CC: field of the email iteslf).

Best regards,

	Anton
-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
