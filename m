Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2737924F0F8
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 24 Aug 2020 04:01:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kA1nr-0002Of-Qy; Mon, 24 Aug 2020 02:01:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1kA1no-0002OW-M4
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dIutawNJR+f8s10kR7L2x6wwvNVf0GvMUjP4In3Zi/s=; b=QfIFoSYND9agIdnd8uJMcadAE/
 2lGagh3PBnmKreF7pO0bZmfvtxmYziC9zt6zorSaRttblAbC7WghY0QEuj1aBU2cCVbREhAENNMhV
 eAqmu20LX58i751FYrQUQ9mRhhlZqZqUSz3BHEjmHLdkCirt67q+vZaw4RUhQMoDFJZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dIutawNJR+f8s10kR7L2x6wwvNVf0GvMUjP4In3Zi/s=; b=NZd5gQ+rEp57KUs83rSYHMLzWL
 80YpNkmYn+kOsr5irmMVz6iVCjgxQA7qAJmQJ7Xf5UwpLYMASw7wUo7BdusOj30tf3Yh1cSiDjPzP
 rVQBUoZj3cNrgvt596iUvl1wYRNs19CwimZMgOxOPdUDIWhlpY+n5v00w/s0opfHuJMw=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kA1nl-0027ka-Gd
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 24 Aug 2020 02:01:40 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 07O1Y27U013400;
 Mon, 24 Aug 2020 04:44:08 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 3342qur0yw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 24 Aug 2020 04:44:08 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 24 Aug 2020 04:44:07 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.006; Mon, 24 Aug 2020 04:44:07 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Rustam Kovhaev <rkovhaev@gmail.com>
Thread-Topic: [PATCH] ntfs: add check for mft record size in superblock
Thread-Index: AQHWeWEcxiS4EJ2kEU6+ZB9zUJco96lGSw4A
Date: Mon, 24 Aug 2020 01:44:06 +0000
Message-ID: <F206DE99-102C-475D-9129-5B9ACBAED8E6@tuxera.com>
References: <20200823152147.55766-1-rkovhaev@gmail.com>
In-Reply-To: <20200823152147.55766-1-rkovhaev@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.145.212.211]
Content-ID: <B6F2F1A9B99CD045AD3A609E096CD389@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-24_01:2020-08-21,
 2020-08-24 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 mlxlogscore=999
 adultscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 spamscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008240003
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kA1nl-0027ka-Gd
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
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Rustam,

Thank you for the patch but it introduces an endianness bug - you have to us le32_to_cpu(m->bytes_allocated) both when doing the comparison and then printing the message.

Also, please drop the square brackets.  Wherever the driver prints such things it never uses brackets around the numbers and it would be better to have this consistent throughout.

Can you please resend with the above issues addressed?  You can then also add to the commit message:

	Acked-by: Anton Altaparmakov <anton@tuxera.com>

Thanks!

Best regards,

	Anton

> On 23 Aug 2020, at 16:21, Rustam Kovhaev <rkovhaev@gmail.com> wrote:
> 
> number of bytes allocated for mft record should be equal to the mft
> record size stored in ntfs superblock
> as reported by syzbot, userspace might trigger out-of-bounds read by
> dereferencing ctx->attr in ntfs_attr_find()
> 
> Reported-and-tested-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?extid=aed06913f36eff9b544e
> Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
> ---
> fs/ntfs/inode.c | 6 ++++++
> 1 file changed, 6 insertions(+)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index 9bb9f0952b18..6407af7c2e4f 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -1810,6 +1810,12 @@ int ntfs_read_inode_mount(struct inode *vi)
> 		brelse(bh);
> 	}
> 
> +	if (m->bytes_allocated != vol->mft_record_size) {
> +		ntfs_error(sb, "Incorrect mft record size [%u] in superblock, should be [%u].",
> +				m->bytes_allocated, vol->mft_record_size);
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
