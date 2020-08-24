Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C11E324F144
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 24 Aug 2020 04:46:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kA2Ux-00045o-Pd; Mon, 24 Aug 2020 02:46:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1kA2Uw-00045c-Da
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Huax/WyJSOBv6WqIkrNIUCXAD6eNqjiy5K7YJ810WYg=; b=Gzp/H009lgE+do1IqHxCta+6Bz
 43/PZ1+211KrifQYuJle5OXgFxNPZWRDhDZ4Y87uRVCwOp9xVV0ufgWdJdpkPqOmySqfzMAXv+WLK
 pNqluS8oaKY1CoY5bQsZTTvy6rbFZ5qrhcF5rAXOLHc7Un8c2fru/cEc/JYyIwHnkLf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Huax/WyJSOBv6WqIkrNIUCXAD6eNqjiy5K7YJ810WYg=; b=V6ZLEB2gA1qswND9kKQTcpwcyw
 00jMJudLHwWIoh5el7R+nun5rR3w7+DHZURNWSiH3oaEaQ7UhTXC0OxxGvIw1Zj5xxs9RqkA5WtwS
 fvGQXWHIthr6qNhIaqU8ar1w7z9gvIGHbA5sWYF8XjtwKKaXdBNDFbF3pFnIcI5gALDs=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kA2Uu-00291F-CL
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:46:14 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 07O2jdsq114953;
 Mon, 24 Aug 2020 05:46:01 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 3342qur1pd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 24 Aug 2020 05:46:01 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 24 Aug 2020 05:46:00 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Mon, 24 Aug 2020 05:46:00 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH] ntfs: add check for mft record size in superblock
Thread-Index: AQHWeb4qTTgnzi6Afk6ibcYrpfnrp6lGW56A
Date: Mon, 24 Aug 2020 02:46:00 +0000
Message-ID: <E72182A7-D6F9-4AE3-95B3-B732B2F0D7BD@tuxera.com>
References: <20200824022804.226242-1-rkovhaev@gmail.com>
In-Reply-To: <20200824022804.226242-1-rkovhaev@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.145.212.211]
Content-ID: <CCAA8F4232D2714792B297CED56AEC38@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-24_01:2020-08-21,
 2020-08-24 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 mlxlogscore=999
 adultscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 spamscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008240011
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kA2Uu-00291F-CL
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: add check for mft record size in
 superblock
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
 <linux-ntfs-dev@lists.sourceforge.net>, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Rustam Kovhaev <rkovhaev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Andrew,

Can you please merge this patch?  Thanks a lot in advance!

Rustam, thank you for the updated patch!

Best regards,

	Anton

> On 24 Aug 2020, at 03:28, Rustam Kovhaev <rkovhaev@gmail.com> wrote:
> 
> number of bytes allocated for mft record should be equal to the mft
> record size stored in ntfs superblock
> as reported by syzbot, userspace might trigger out-of-bounds read by
> dereferencing ctx->attr in ntfs_attr_find()
> 
> Reported-and-tested-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?extid=aed06913f36eff9b544e
> Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>
> ---
> fs/ntfs/inode.c | 6 ++++++
> 1 file changed, 6 insertions(+)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index 9bb9f0952b18..caf563981532 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -1810,6 +1810,12 @@ int ntfs_read_inode_mount(struct inode *vi)
> 		brelse(bh);
> 	}
> 
> +	if (le32_to_cpu(m->bytes_allocated) != vol->mft_record_size) {
> +		ntfs_error(sb, "Incorrect mft record size %u in superblock, should be %u.",
> +				le32_to_cpu(m->bytes_allocated), vol->mft_record_size);
> +		goto err_out;
> +	}
> +
> 	/* Apply the mst fixups. */
> 	if (post_read_mst_fixup((NTFS_RECORD*)m, vol->mft_record_size)) {
> 		/* FIXME: Try to use the $MFTMirr now. */
> -- 
> 2.28.0
> 


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
