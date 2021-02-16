Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D90BA31C5B2
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Feb 2021 04:01:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lBqcB-00041o-I6; Tue, 16 Feb 2021 03:01:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1lBqcA-00041e-To
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 16 Feb 2021 03:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cJUHte4gT7r5K+bTXkOx9jbyzpzYNNvfk8RMAU9a5NM=; b=MvQ+SUjIM0iOtuCTu0CcZzZVbE
 riEtu6n2IxlYvF7aMr8G1R4QUwrjaH+hEyjANsTn5Ahw1F05rjdan5iQRgGo9iuqU4VYclrodDgaY
 WIxDMdeJ84u1sNOcDft13Vd5HriAjeBwU0MZLhYBbmeDSmsSDFQJ6bANi7JPUtxYLmRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cJUHte4gT7r5K+bTXkOx9jbyzpzYNNvfk8RMAU9a5NM=; b=I318HR6fCkhjjaS7H/Xa28d+bb
 qU4EdoSBiWPtdxAOOTNJWbukAHK7hO+d1zlHam9LoRxOGNBaq6Npegdnjgo8QWAObKbHZZJ7yiMjM
 7oP6rJvHzBtWd4wVsoe/NUm/83Ajv4BKWOw5CJfjGDoX7mm/dO2C2En227INFpisgssc=;
Received: from mgw-02.mpynet.fi ([82.197.21.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBqc4-0005WH-UW
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 16 Feb 2021 03:01:26 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 11G2c4K5025249;
 Tue, 16 Feb 2021 04:40:39 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 36p3b99csk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 16 Feb 2021 04:40:39 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Feb 2021 04:40:38 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.010; Tue, 16 Feb 2021 04:40:38 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Rustam Kovhaev <rkovhaev@gmail.com>
Thread-Topic: [PATCH] ntfs: move check for valid resident attribute offset and
 length
Thread-Index: AQHXAx6ulE0VKfu7TUyB68x/V5vzsapZ8nKA
Date: Tue, 16 Feb 2021 02:40:37 +0000
Message-ID: <2727F0B7-4992-4B24-963F-CC3C4D94CFD2@tuxera.com>
References: <20210214221247.621431-1-rkovhaev@gmail.com>
In-Reply-To: <20210214221247.621431-1-rkovhaev@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.155.251.193]
Content-ID: <282F6835C1C3B048817C8EB2AD57F61B@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-02-15_16:2021-02-12,
 2021-02-15 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 bulkscore=0
 mlxlogscore=999 spamscore=0
 malwarescore=0 suspectscore=0 phishscore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102160024
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lBqc4-0005WH-UW
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: move check for valid resident
 attribute offset and length
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
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Rustam,

Thank you for the patch but it is not quite correct:

1) The first delta: yes that is a good idea to add this check but the error message is incorrect.  It should say "Corrupt standard information attribute in inode." instead.

2) The second delta: The check of the attribute list attribute needs to remain, i.e. your second delta needs to be deleted.

Please could you address both of the above comments and then resend?  Please then also add: "Acked-by: Anton Altaparmakov <anton@tuxera.com>" to the patch.

Thanks a lot in advance!

Best regards,

	Anton

> On 14 Feb 2021, at 22:12, Rustam Kovhaev <rkovhaev@gmail.com> wrote:
> 
> we should check for valid resident atribute offset and length before
> loading STANDARD_INFORMATION attribute in ntfs_read_locked_inode()
> let's make that check a bit earlier in the same function to avoid
> use-after-free bug
> 
> Reported-and-tested-by: syzbot+c584225dabdea2f71969@syzkaller.appspotmail.com
> Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
> Link: https://syzkaller.appspot.com/bug?extid=c584225dabdea2f71969
> ---
> fs/ntfs/inode.c | 15 +++++++--------
> 1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index f7e4cbc26eaf..70745aea5106 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -629,6 +629,13 @@ static int ntfs_read_locked_inode(struct inode *vi)
> 	}
> 	a = ctx->attr;
> 	/* Get the standard information attribute value. */
> +	if ((u8 *)a + le16_to_cpu(a->data.resident.value_offset)
> +			+ le32_to_cpu(
> +			a->data.resident.value_length) >
> +			(u8 *)ctx->mrec + vol->mft_record_size) {
> +		ntfs_error(vi->i_sb, "Corrupt attribute list in inode.");
> +		goto unm_err_out;
> +	}
> 	si = (STANDARD_INFORMATION*)((u8*)a +
> 			le16_to_cpu(a->data.resident.value_offset));
> 
> @@ -731,14 +738,6 @@ static int ntfs_read_locked_inode(struct inode *vi)
> 				goto unm_err_out;
> 			}
> 		} else /* if (!a->non_resident) */ {
> -			if ((u8*)a + le16_to_cpu(a->data.resident.value_offset)
> -					+ le32_to_cpu(
> -					a->data.resident.value_length) >
> -					(u8*)ctx->mrec + vol->mft_record_size) {
> -				ntfs_error(vi->i_sb, "Corrupt attribute list "
> -						"in inode.");
> -				goto unm_err_out;
> -			}
> 			/* Now copy the attribute list. */
> 			memcpy(ni->attr_list, (u8*)a + le16_to_cpu(
> 					a->data.resident.value_offset),
> -- 
> 2.30.0
> 


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
