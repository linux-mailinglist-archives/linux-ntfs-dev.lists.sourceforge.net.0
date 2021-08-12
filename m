Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E83EA68F
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 12 Aug 2021 16:28:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mEBhM-0004Wi-3U; Thu, 12 Aug 2021 14:28:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sth@linux.ibm.com>) id 1mEBaK-0005MS-Kc
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Aug 2021 14:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4rFKLwpJOQMMqGRC+zW+jrbs8nb5tBinDGArMD5AuCw=; b=GS4a/7gPdHqL3AX9p6quhJrCPa
 bIfYRmuD9iHk7jayLehriuEZv88ABPbhF+6Cg0apnJOc5tFLgTTw6/gDwHgbjnv5zCXJIUlGHok1V
 p8/NzVV4HK3iRZCuvqXyPKKlrin8pyw1PuIg9A2YbXpr6jGA7TJS2DSQXjx5j7xbiX8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4rFKLwpJOQMMqGRC+zW+jrbs8nb5tBinDGArMD5AuCw=; b=CtIS5KDLIXPtqiVvYD80xp09gx
 hyIAdIFmoHKexjEoAe0e8jnuGQtkk4PCufGw6M8Tkh7wFdNIjRNI3Jps8jC5Y88lZG8PWsNnybq9v
 5WqRhihOCGb4JwYtaSx3YtTdjQZxODUeVJrPgvR3bbr1m/h7Tfr2VA7VP/tVb1qBZ3u4=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mEBaI-0002HV-HT
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 12 Aug 2021 14:21:28 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 17CE4fYR035638; Thu, 12 Aug 2021 10:21:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=4rFKLwpJOQMMqGRC+zW+jrbs8nb5tBinDGArMD5AuCw=;
 b=DDXo3ijmM5GI1auEmnXHEpeqylNP3bObxI7sALFa3XRH2C+ofdrsIcEI2plk0LSc8crG
 RCN0wNGobu+OFiMBCnkmKfOMpwjYNXALaPuD2zgMt71o5UtG4i1lD89Mrly7kUdZDM2Y
 sF2xhej/iyVpAmxn7AKQMOff5orbqP+ZJcTATeF0xILVyFhoeMSHt0mLm9IuO6n41wly
 FU0GtQr60AJ94fNDU5c+UJrQKFlbNp5HoEmJGf/BD7NGSQZmcZqQ/ZA6dVJ3MRQO8pkz
 SI0w/TrAC7BdCZON7Mn16bzunmWcZ0MS1wfy4JE/59avd8rs+O2HnR80XlkiyaMjFy8L 4Q== 
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.102])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3ad0qy1vjt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Aug 2021 10:21:17 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
 by ppma06ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 17CEIsOw014713;
 Thu, 12 Aug 2021 14:21:15 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma06ams.nl.ibm.com with ESMTP id 3acf0ktjyh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Aug 2021 14:21:15 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 17CEHxxE30540192
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Aug 2021 14:17:59 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AAC4D52057;
 Thu, 12 Aug 2021 14:21:12 +0000 (GMT)
Received: from localhost.localdomain (unknown [9.145.92.71])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 5803052069;
 Thu, 12 Aug 2021 14:21:12 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20210810154512.1809898-1-hch@lst.de>
 <20210810154512.1809898-2-hch@lst.de>
From: Stefan Haberland <sth@linux.ibm.com>
Message-ID: <15ddb7b3-8b43-2e36-652c-c6ccb06c7f88@linux.ibm.com>
Date: Thu, 12 Aug 2021 16:21:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210810154512.1809898-2-hch@lst.de>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: GZUZdAv0WiWL02u5O1Ht1A2vEmREStlc
X-Proofpoint-ORIG-GUID: GZUZdAv0WiWL02u5O1Ht1A2vEmREStlc
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-08-12_04:2021-08-12,
 2021-08-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 spamscore=0 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 clxscore=1011 phishscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2108120087
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mEBaI-0002HV-HT
X-Mailman-Approved-At: Thu, 12 Aug 2021 14:28:42 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH 1/4] block: store a gendisk in struct
 parsed_partitions
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
Cc: linux-s390@vger.kernel.org, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Davidlohr Bueso <dave@stgolabs.net>, linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>, linux-block@vger.kernel.org,
 linux-efi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Am 10.08.21 um 17:45 schrieb Christoph Hellwig:
> Partition scanning only happens on the whole device, so pass a
> struct gendisk instead of the whole device block_device to the scanners.
> This allows to simplify printing the device name in various places as the
> disk name is available in disk->name.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  block/partitions/acorn.c   |  4 ++--
>  block/partitions/aix.c     | 20 ++------------------
>  block/partitions/amiga.c   |  7 +++----
>  block/partitions/atari.c   |  4 ++--
>  block/partitions/check.h   |  2 +-
>  block/partitions/cmdline.c |  6 ++----
>  block/partitions/core.c    |  6 +++---
>  block/partitions/efi.c     | 36 +++++++++++++++++-------------------
>  block/partitions/ibm.c     |  4 ++--

for the DASD part:

Looks good.

Reviewed-by: Stefan Haberland <sth@linux.ibm.com>




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
