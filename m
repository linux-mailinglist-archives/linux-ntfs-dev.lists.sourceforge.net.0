Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 074C43B5B87
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 28 Jun 2021 11:44:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lxno1-0000pN-OE; Mon, 28 Jun 2021 09:43:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <anton@tuxera.com>) id 1lxnnZ-0000od-TM
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Jun 2021 09:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HO4OpyRaCVQBO58zeP1Mi0gTQacOfFV2MhF4A5cWLv4=; b=S1tR1CBxN16z7CoM3gktht02hb
 Or+iCG3nzt1OZx6AlYtZrKNghGUtGOWaIH/W6VtuFnLj2zmhr2SFY67nsoVHvQt/lVMeaL7PzXoeb
 dYp+G4/c6RDfH0NB3WqKtBOIBDDr08W6OXpB1sj1YWzj0P3+AQk/QUXxDYNAzux7KL1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HO4OpyRaCVQBO58zeP1Mi0gTQacOfFV2MhF4A5cWLv4=; b=Ct41qPkuUwuW/gNy8p33+Ui8Qr
 c9X1Jp9f/pk4xJBArubDYuz3NOXi4VGTRC9FCXjeF+ry5ZquJxZsZrAckiFJsrH8kAfz1ciwbXXIR
 m7Q4Md6eev+Yw8abfaACgioFcJ//IYYMnuVXAs+6T465cQVfYNSavVzBAkQDmaBkRyWs=;
Received: from mgw-02.mpynet.fi ([82.197.21.91])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lxnnP-001e15-CU
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 28 Jun 2021 09:43:28 +0000
Received: from pps.filterd (mgw-02.mpynet.fi [127.0.0.1])
 by mgw-02.mpynet.fi (8.16.0.43/8.16.0.43) with SMTP id 15S9MlX9115831;
 Mon, 28 Jun 2021 12:22:55 +0300
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-02.mpynet.fi with ESMTP id 39f9xh82u4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 28 Jun 2021 12:22:55 +0300
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.18; Mon, 28 Jun 2021 12:22:54 +0300
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.018; Mon, 28 Jun 2021 12:22:54 +0300
From: Anton Altaparmakov <anton@tuxera.com>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Thread-Topic: [PATCH] ntfs: Fix validity check for file name attribute
Thread-Index: AQHXYNr9xtdXtYfpBEGmty8mpcDGlasom2mAgABu7oA=
Date: Mon, 28 Jun 2021 09:22:53 +0000
Message-ID: <A2D2BB3D-8C89-40D7-B0CF-F1D2B5176152@tuxera.com>
References: <20210614050540.289494-1-desmondcheongzx@gmail.com>
 <ea63e5af-6ac4-08fe-4261-904d55392b10@gmail.com>
In-Reply-To: <ea63e5af-6ac4-08fe-4261-904d55392b10@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [86.134.197.70]
Content-ID: <E46CF24098D589409656063DFF65A21C@ex13.tuxera.com>
MIME-Version: 1.0
X-Proofpoint-GUID: bS1-7ry4khBlczmL-2VT3CuiwRDQWvHJ
X-Proofpoint-ORIG-GUID: bS1-7ry4khBlczmL-2VT3CuiwRDQWvHJ
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-06-28_07:2021-06-25,
 2021-06-28 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 phishscore=0
 bulkscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106280065
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lxnnP-001e15-CU
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: Fix validity check for file name
 attribute
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
 "syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com"
 <syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "linux-kernel-mentees@lists.linuxfoundation.org"
 <linux-kernel-mentees@lists.linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi,

Thanks for the patch!  Have asked Andrew to merge it.

Best regards,

	Anton

> On 28 Jun 2021, at 03:45, Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com> wrote:
> 
> On 14/6/21 1:05 pm, Desmond Cheong Zhi Xi wrote:
>> When checking the file name attribute, we want to ensure that it fits
>> within the bounds of ATTR_RECORD. To do this, we should check
>> that (attr record + file name offset + file name length) < (attr
>> record + attr record length).
>> However, the original check did not include the file name offset in
>> the calculation. This means that corrupted on-disk metadata might not
>> caught by the incorrect file name check, and lead to an invalid memory
>> access.
>> An example can be seen in the crash report of a memory corruption
>> error found by Syzbot:
>> https://syzkaller.appspot.com/bug?id=a1a1e379b225812688566745c3e2f7242bffc246
>> Adding the file name offset to the validity check fixes this error and
>> passes the Syzbot reproducer test.
>> Reported-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
>> Tested-by: syzbot+213ac8bb98f7f4420840@syzkaller.appspotmail.com
>> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
>> ---
>>  fs/ntfs/inode.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
>> index f5c058b3192c..4474adb393ca 100644
>> --- a/fs/ntfs/inode.c
>> +++ b/fs/ntfs/inode.c
>> @@ -477,7 +477,7 @@ static int ntfs_is_extended_system_file(ntfs_attr_search_ctx *ctx)
>>  		}
>>  		file_name_attr = (FILE_NAME_ATTR*)((u8*)attr +
>>  				le16_to_cpu(attr->data.resident.value_offset));
>> -		p2 = (u8*)attr + le32_to_cpu(attr->data.resident.value_length);
>> +		p2 = (u8 *)file_name_attr + le32_to_cpu(attr->data.resident.value_length);
>>  		if (p2 < (u8*)attr || p2 > p)
>>  			goto err_corrupt_attr;
>>  		/* This attribute is ok, but is it in the $Extend directory? */
> 
> Hi Anton,
> 
> Any chance to review this patch?
> 
> Best wishes,
> Desmond


-- 
Anton Altaparmakov <anton at tuxera.com> (replace at with @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
