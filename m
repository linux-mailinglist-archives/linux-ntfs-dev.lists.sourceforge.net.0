Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA86E42F794
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 15 Oct 2021 18:01:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mbPdu-0007xB-1H; Fri, 15 Oct 2021 16:01:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <anton@tuxera.com>)
 id 1mbOLS-00047q-VV; Fri, 15 Oct 2021 14:38:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VvXlpb5CGB7unM79tnn2MeEFde+3sYstl/aq6e+qLDA=; b=bhQ7j1m9En/B4rr/KuKzUiq9Wv
 r2dnxxnJ2ejMwR1wqH84ZUzj6fVQFCblwvggelX6/YxBCVXY0lJ9tHZkjf3krY85uIU3E9upR3Akh
 feNXvdkPTSx+IixTgtOPC+ZT93fNd+UEA3nNawid69SIUIB1ozEJFA2ZW/+ILURsZXtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VvXlpb5CGB7unM79tnn2MeEFde+3sYstl/aq6e+qLDA=; b=bi5ms9lycNslUUD36XbkY5Ea2l
 eds1JKExgNvyx9eWDRCBfy280tuGBNL1xD3ddZYt22Mg5dE42Y/9QG9R6KH9uN+9+DbBJzDc9GxZl
 UfqGEU7w1Y0DOiOa1Ot4H0woQGDCDM4GRedoddAl1RO52WgewjdelIV3V0LFRCy33qZA=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbOLS-0000DS-19; Fri, 15 Oct 2021 14:38:02 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.43/8.16.0.43) with SMTP id 19FEWINI065735;
 Fri, 15 Oct 2021 17:37:43 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 3bqa6fr1nj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 15 Oct 2021 17:37:42 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Fri, 15 Oct 2021 17:37:42 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.023; Fri, 15 Oct 2021 17:37:42 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Christoph Hellwig <hch@lst.de>
Thread-Topic: [PATCH 02/30] block: add a bdev_nr_bytes helper
Thread-Index: AQHXwchZP9onky8YCUWD+iMtrLLvTavT7o+A
Date: Fri, 15 Oct 2021 14:37:41 +0000
Message-ID: <7C4AC4BD-B62D-41B3-AAF7-46125D1A1146@tuxera.com>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-3-hch@lst.de>
In-Reply-To: <20211015132643.1621913-3-hch@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.154.241.177]
Content-ID: <CA141EBD26CA2142955225C1A7459553@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: H-3YelUF38QeF4AeejuL002U0EzCkK0i
X-Proofpoint-GUID: H-3YelUF38QeF4AeejuL002U0EzCkK0i
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-15_04:2021-10-14,
 2021-10-15 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 phishscore=0
 mlxlogscore=984
 bulkscore=0 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110150089
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Christoph, > On 15 Oct 2021, at 14:26, Christoph Hellwig
 <hch@lst.de> wrote: > > Add a helpe to query the size of a block device in
 bytes. This > will be used to remove open coded access to ->bd_inode. 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [82.197.21.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mbOLS-0000DS-19
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:01:07 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 02/30] block: add a bdev_nr_bytes helper
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
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Mike Snitzer <snitzer@redhat.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, Konstantin
 Komarov <almaz.alexandrovich@paragon-software.com>, Song Liu <song@kernel.org>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "reiserfs-devel@vger.kernel.org" <reiserfs-devel@vger.kernel.org>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-nilfs@vger.kernel.org" <linux-nilfs@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "linux-bcache@vger.kernel.org" <linux-bcache@vger.kernel.org>,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 Theodore Ts'o <tytso@mit.edu>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Jan Kara <jack@suse.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Christoph,

> On 15 Oct 2021, at 14:26, Christoph Hellwig <hch@lst.de> wrote:
> 
> Add a helpe to query the size of a block device in bytes.  This
> will be used to remove open coded access to ->bd_inode.

Matthew already pointed out the return type for bdev_nr_bytes() but also your commit message has a typo: "Add a helpe" -> "Add a helper".

Best regards,

	Anton

> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
> include/linux/genhd.h | 7 ++++++-
> 1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/genhd.h b/include/linux/genhd.h
> index 082a3e5fd8fa1..f67db3c5a04b3 100644
> --- a/include/linux/genhd.h
> +++ b/include/linux/genhd.h
> @@ -235,9 +235,14 @@ static inline sector_t get_start_sect(struct block_device *bdev)
> 	return bdev->bd_start_sect;
> }
> 
> +static inline sector_t bdev_nr_bytes(struct block_device *bdev)
> +{
> +	return i_size_read(bdev->bd_inode);
> +}
> +
> static inline sector_t bdev_nr_sectors(struct block_device *bdev)
> {
> -	return i_size_read(bdev->bd_inode) >> 9;
> +	return bdev_nr_bytes(bdev) >> SECTOR_SHIFT;
> }
> 
> static inline sector_t get_capacity(struct gendisk *disk)
> -- 
> 2.30.2
> 



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
