Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 748A731F3B7
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Feb 2021 02:55:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lCv0d-0003o7-N6; Fri, 19 Feb 2021 01:55:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <anton@tuxera.com>) id 1lCv0b-0003ny-QG
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Feb 2021 01:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=39pJ/1M7WIOu3tAfOsjxEUXzlJZ+YoKLufWW3iiKhU4=; b=dW7i8H2xwqWtV6ARrJsGqEuUS8
 xqUq11UlRNUBSZX2PpHuqPSocIDzbwJ39KmQWid5n6F06EmgPYnbd9UKbqZ5gz2zL4gcXt3AmmiOO
 QJa2JGFdiRvs2AIPRQtJkjAN/TE0GwceSksq2rgw/D1XIHyOjqCsRhj0uQdIH8I8M/9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=39pJ/1M7WIOu3tAfOsjxEUXzlJZ+YoKLufWW3iiKhU4=; b=KtKB52O71163QAVMMlWooORIT6
 Ihw54GasKQpI9iVFamTt+3i+Y66dxweViHyHtFuclL+G5mXhjemaZkYcu/ikoOk4Xm/6kFMFv8mzY
 RYCJbES0VrBChyDg2J/026miODFgSDucjbiZumL0M/BeYEaNZFD6TuXTzfJsphqCwqPI=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lCv0Q-00EmRp-2L
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 19 Feb 2021 01:55:05 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.42/8.16.0.42) with SMTP id 11J1sWv7126920;
 Fri, 19 Feb 2021 03:54:32 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 36t3dpg1bw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 19 Feb 2021 03:54:32 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Feb 2021 03:54:31 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.010; Fri, 19 Feb 2021 03:54:31 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH] ntfs: check for valid standard information attribute
Thread-Index: AQHXBUX43Bx0ygm+wEC4t5YdRoTv2qpemD8A
Date: Fri, 19 Feb 2021 01:54:30 +0000
Message-ID: <42B686E5-92C1-4AD3-8CF4-E9AB39CBDB7B@tuxera.com>
References: <20210217155930.1506815-1-rkovhaev@gmail.com>
In-Reply-To: <20210217155930.1506815-1-rkovhaev@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [109.155.251.193]
Content-ID: <24CC84ECF93335439462256E65680542@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-02-18_14:2021-02-18,
 2021-02-18 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 phishscore=0
 spamscore=0 adultscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190009
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lCv0Q-00EmRp-2L
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

Can you please push this one upstream?  Thanks a lot in advance!

Best regards,

	Anton

> On 17 Feb 2021, at 15:59, Rustam Kovhaev <rkovhaev@gmail.com> wrote:
> 
> we should check for valid STANDARD_INFORMATION attribute offset and
> length before trying to access it
> 
> Reported-and-tested-by: syzbot+c584225dabdea2f71969@syzkaller.appspotmail.com
> Signed-off-by: Rustam Kovhaev <rkovhaev@gmail.com>
> Acked-by: Anton Altaparmakov <anton@tuxera.com>
> Link: https://syzkaller.appspot.com/bug?extid=c584225dabdea2f71969
> ---
> fs/ntfs/inode.c | 6 ++++++
> 1 file changed, 6 insertions(+)
> 
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index f7e4cbc26eaf..be4ff9386ec0 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -629,6 +629,12 @@ static int ntfs_read_locked_inode(struct inode *vi)
> 	}
> 	a = ctx->attr;
> 	/* Get the standard information attribute value. */
> +	if ((u8 *)a + le16_to_cpu(a->data.resident.value_offset)
> +			+ le32_to_cpu(a->data.resident.value_length) >
> +			(u8 *)ctx->mrec + vol->mft_record_size) {
> +		ntfs_error(vi->i_sb, "Corrupt standard information attribute in inode.");
> +		goto unm_err_out;
> +	}
> 	si = (STANDARD_INFORMATION*)((u8*)a +
> 			le16_to_cpu(a->data.resident.value_offset));
> 
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
