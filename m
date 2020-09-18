Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 106F326FF20
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Sep 2020 15:50:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kJGmn-0003zY-MP; Fri, 18 Sep 2020 13:50:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1kJGml-0003z5-NI
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 13:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OfMPlgUV0FCZ3jiTkAlLnltR0+5x1dEawHAsPebwaDg=; b=UBMpuXVJXCTu3Da0E80+LA2MXN
 PuNYchLqih8SL+8UEORZmjOpS0sEkpYY8I7K+yU7TN66RqEW6Be3Q3hEUQkGrUzE/dz8gu9qtRxoq
 o22kIBwPzzruGRhXqC5lsZnu6W4QZjSIivIprWdM96BaZx1oMcbGpPwA/sphqkNoIYwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OfMPlgUV0FCZ3jiTkAlLnltR0+5x1dEawHAsPebwaDg=; b=Cv5LBdOlxGNDgfVtbKoE2vnzYG
 3FdBx6HVDKdvecq/liXSL7oYzJosVfFpF5N0E7Z0QO7de0d5PWr4QsdA1NPyHrFU38BtNUFs59bDC
 XU3Z9zkRgdRWgt08ibG5s+E642VSS+2s7OLnLqBHRGowp7Jr0HXA+pZlh5u4i65vWp+M=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJGma-00FZrk-Hb
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 18 Sep 2020 13:50:47 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 08IDjwQW105193;
 Fri, 18 Sep 2020 16:50:17 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 33mx0hr06y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 18 Sep 2020 16:50:17 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 18 Sep 2020 16:50:15 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Fri, 18 Sep 2020 16:50:15 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [PATCH RESEND] ntfs: layout.h: delete duplicated words
Thread-Index: AQHWjVno/QViatPVMke4USkB+fdGRKluOEeA
Date: Fri, 18 Sep 2020 13:50:15 +0000
Message-ID: <7CF99C49-7EB0-455C-808A-72EA117E113B@tuxera.com>
References: <20200918012021.6255-1-rdunlap@infradead.org>
In-Reply-To: <20200918012021.6255-1-rdunlap@infradead.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [86.162.107.15]
Content-ID: <7D7B7EA98255504CB75B25F78D5A4EAA@ex13.tuxera.com>
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
X-Headers-End: 1kJGma-00FZrk-Hb
Subject: Re: [Linux-NTFS-Dev] [PATCH RESEND] ntfs: layout.h: delete
 duplicated words
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

Andrew, please could you add this to your tree for merging with Linus?

Please feel free to add: Acked-by: Anton Altaparmakov <anton@tuxera.com>

Thanks a lot!

Best regards,

	Anton

> On 18 Sep 2020, at 02:20, Randy Dunlap <rdunlap@infradead.org> wrote:
> 
> Drop the repeated words "the" and "in" in comments.
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Anton Altaparmakov <anton@tuxera.com>
> Cc: linux-ntfs-dev@lists.sourceforge.net
> Cc: Andrew Morton <akpm@linux-foundation.org>
> ---
> Adding Andrew to recipients, otherwise this patch is lost/ignored.
> 
> fs/ntfs/layout.h |    4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
> 
> --- linux-next-20200917.orig/fs/ntfs/layout.h
> +++ linux-next-20200917/fs/ntfs/layout.h
> @@ -703,7 +703,7 @@ typedef struct {
> /* 14*/	le16 instance;		/* The instance of this attribute record. This
> 				   number is unique within this mft record (see
> 				   MFT_RECORD/next_attribute_instance notes in
> -				   in mft.h for more details). */
> +				   mft.h for more details). */
> /* 16*/	union {
> 		/* Resident attributes. */
> 		struct {
> @@ -1838,7 +1838,7 @@ typedef struct {
>  * Also, each security descriptor is stored twice in the $SDS stream with a
>  * fixed offset of 0x40000 bytes (256kib, the Windows cache manager's max size)
>  * between them; i.e. if a SDS_ENTRY specifies an offset of 0x51d0, then the
> - * the first copy of the security descriptor will be at offset 0x51d0 in the
> + * first copy of the security descriptor will be at offset 0x51d0 in the
>  * $SDS data stream and the second copy will be at offset 0x451d0.
>  */
> typedef struct {


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
