Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB0F26FF22
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Sep 2020 15:51:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kJGnZ-0008Ao-Rk; Fri, 18 Sep 2020 13:51:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1kJGnY-0008Ag-Mj
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 13:51:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MG3o+wzvhkdPG7T3anJqR4vl6XgLBDwgHpVM1D+N1TQ=; b=Oa6nhhJuww4W+zWYjPE0geFSIy
 o7tfFGBY6rETdfjB3Smp3li13w9Juj8Xz3ssHkmwRY4Y/o2tUJARBElxLIkYjRhlEQp/k82UPBGwu
 z1XnoL1A4KaNRITjtmQMTwTFpOY255uUf7lnB37KOsxO5TaGTX0y0ose9olfGQH5G99c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MG3o+wzvhkdPG7T3anJqR4vl6XgLBDwgHpVM1D+N1TQ=; b=Bo8irhPRendX+wwUzG9jHSuad1
 yKFz2C8EqfvCxo/LNWaM5VZtQlXuLFd86GfE0X7uBl688jomMg451A2RafdvejV3gBoeAdne9L2p0
 p5OKYRZZ3AT5r+iRXLdmnutOzjuJ4g3eXyi4cQjPnh8OHkxnMguJ8NCvvnhDPURnBsAU=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJGnO-00FZvn-T8
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 13:51:36 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 08IDjvx1105182;
 Fri, 18 Sep 2020 16:51:17 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 33mx0hr07u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 18 Sep 2020 16:51:16 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 18 Sep 2020 16:51:15 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Fri, 18 Sep 2020 16:51:15 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [PATCH RESEND] ntfs: drop unneeded semi-colons
Thread-Index: AQHWjVnswLx9rgGqKE+C2Won5QI6nqluOI0A
Date: Fri, 18 Sep 2020 13:51:14 +0000
Message-ID: <D97E170A-13E7-4263-B590-32D7F85B9AC6@tuxera.com>
References: <20200918012034.6305-1-rdunlap@infradead.org>
In-Reply-To: <20200918012034.6305-1-rdunlap@infradead.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [86.162.107.15]
Content-ID: <6F51FD6D1C4537498A1ABF9928B4181B@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-18_14:2020-09-16,
 2020-09-18 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 mlxlogscore=999
 adultscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009180113
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kJGnO-00FZvn-T8
Subject: Re: [Linux-NTFS-Dev] [PATCH RESEND] ntfs: drop unneeded semi-colons
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
 Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Randy,

Sorry, I don't know how I missed those originally.

Andrew, please could you add this to your tree for merging with Linus as well?

And again, please feel free to add: Acked-by: Anton Altaparmakov <anton@tuxera.com>

Thanks a lot!

Best regards,

	Anton

> On 18 Sep 2020, at 02:20, Randy Dunlap <rdunlap@infradead.org> wrote:
> 
> Coccinelle scripts report:
> 
> fs/ntfs/lcnalloc.c:902:2-3: Unneeded semicolon
> fs/ntfs/super.c:1615:2-3: Unneeded semicolon
> fs/ntfs/super.c:1684:2-3: Unneeded semicolon
> 
> so remove the extraneous semicolons.
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Anton Altaparmakov <anton@tuxera.com>
> Cc: linux-ntfs-dev@lists.sourceforge.net
> Cc: Andrew Morton <akpm@linux-foundation.org>
> ---
> Adding Andrew to recipients, otherwise this patch is lost/ignored.
> 
> fs/ntfs/lcnalloc.c |    2 +-
> fs/ntfs/super.c    |    4 ++--
> 2 files changed, 3 insertions(+), 3 deletions(-)
> 
> --- linux-next-20200917.orig/fs/ntfs/lcnalloc.c
> +++ linux-next-20200917/fs/ntfs/lcnalloc.c
> @@ -899,7 +899,7 @@ s64 __ntfs_cluster_free(ntfs_inode *ni,
> 		}
> 		/* We have freed @to_free real clusters. */
> 		real_freed = to_free;
> -	};
> +	}
> 	/* Go to the next run and adjust the number of clusters left to free. */
> 	++rl;
> 	if (count >= 0)
> --- linux-next-20200917.orig/fs/ntfs/super.c
> +++ linux-next-20200917/fs/ntfs/super.c
> @@ -1612,7 +1612,7 @@ read_partial_attrdef_page:
> 		memcpy((u8*)vol->attrdef + (index++ << PAGE_SHIFT),
> 				page_address(page), size);
> 		ntfs_unmap_page(page);
> -	};
> +	}
> 	if (size == PAGE_SIZE) {
> 		size = i_size & ~PAGE_MASK;
> 		if (size)
> @@ -1681,7 +1681,7 @@ read_partial_upcase_page:
> 		memcpy((char*)vol->upcase + (index++ << PAGE_SHIFT),
> 				page_address(page), size);
> 		ntfs_unmap_page(page);
> -	};
> +	}
> 	if (size == PAGE_SIZE) {
> 		size = i_size & ~PAGE_MASK;
> 		if (size)


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
