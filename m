Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EAF2FB5A5
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Jan 2021 12:23:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1l1p6I-0002ll-Ov; Tue, 19 Jan 2021 11:23:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1l1oZ6-0004l3-58
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 19 Jan 2021 10:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k3Dmdvh68sp1sk7X+0gAHVikUR/XG2dKfI+/GpsLTbI=; b=SbEPpDY+XpbCuf9dkgTggFfZdE
 5o3L+xsueHLrQX7ap4qo2Mxm3v4h1Xi2HW4WEGdWwRc9f+kdXv/B5b+7YNShsV3Be9HlFr4oTioyK
 BTfsppFTRSE++5KeAUafTAHF6jk8bdmnt7HEhqiWGH+XqwJuuPLNjEoRXN1y4hOXS8fs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k3Dmdvh68sp1sk7X+0gAHVikUR/XG2dKfI+/GpsLTbI=; b=BonAjTArPLkd9te5+8tu/JaowC
 h+tdHHM6lwFs0U6R4ND2hKSW7ec3KXJZHQ7hI31kD/O8XSKl+E6KZw9KfY7mIuQwkFzTX1FkHjU78
 Ls2TR3k9yPchDRsbX2K65G5XZPpRqngtTgZuavZAoSHVbd7vbmEv5iuAJzs1Yf/orNvI=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1oZ3-00EVtK-J5
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 19 Jan 2021 10:48:48 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10JAiBXR005465;
 Tue, 19 Jan 2021 10:44:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=k3Dmdvh68sp1sk7X+0gAHVikUR/XG2dKfI+/GpsLTbI=;
 b=KyhPoH6pvMukddNKhg9cIaZ6+9hdBXdTAeNS9dR+RL8prNKzVVMyjBuGp16bnryLLbvG
 UC4s/2+5oRzgaAxfa+8lHdRrwnm24ow0Dvj7FzwaU3A143ZlapvkbBdW/5PhVCjbS5Yg
 AHVlqIEre5yVRg0/HYVwriB+NvSlbKO/acaiBs+OI2JcEgSxSFlJITZ/lG/5BPKvsYGd
 O9UTyZa//2ZqQUhd2hWcIJ202XF4PX/KXrH//FJ3XJlJvzutCSshA57glXNrkhSpD9oZ
 i11dueZQw13TdUxc6yJAJ+Vyd1ibF7AbpLl55N/35UV38Y09fgsIfg6RH9SCgDBarv5O 4A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 363r3krfvp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 Jan 2021 10:44:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10JAZeaD150113;
 Tue, 19 Jan 2021 10:44:03 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 364a2wf0a4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 Jan 2021 10:44:03 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10JAhuXQ009341;
 Tue, 19 Jan 2021 10:43:56 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 19 Jan 2021 02:43:56 -0800
Date: Tue, 19 Jan 2021 13:43:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kari Argillander <kari.argillander@gmail.com>,
 Julia Lawall <Julia.Lawall@inria.fr>
Message-ID: <20210119104339.GA2674@kadam>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-2-almaz.alexandrovich@paragon-software.com>
 <20210103231755.bcmyalz3maq4ama2@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210103231755.bcmyalz3maq4ama2@kari-VirtualBox>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190065
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l1oZ3-00EVtK-J5
X-Mailman-Approved-At: Tue, 19 Jan 2021 11:23:03 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 01/10] fs/ntfs3: Add headers and
 misc files
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
Cc: ebiggers@kernel.org, nborisov@suse.com, rdunlap@infradead.org,
 dsterba@suse.cz, willy@infradead.org, linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, joe@perches.com,
 hch@lst.de, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, aaptel@suse.com, andy.lavr@gmail.com,
 pali@kernel.org, mark@harmstone.com, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Jan 04, 2021 at 01:17:55AM +0200, Kari Argillander wrote:
> On Thu, Dec 31, 2020 at 06:23:52PM +0300, Konstantin Komarov wrote:
> 
> > +int ntfs_cmp_names(const __le16 *s1, size_t l1, const __le16 *s2, size_t l2,
> > +		   const u16 *upcase)
> > +{
> > +	int diff;
> > +	size_t len = l1 < l2 ? l1 : l2;
> > +
> > +	if (upcase) {
> > +		while (len--) {
> > +			diff = upcase_unicode_char(upcase, le16_to_cpu(*s1++)) -
> > +			       upcase_unicode_char(upcase, le16_to_cpu(*s2++));
> > +			if (diff)
> > +				return diff;
> > +		}
> > +	} else {
> > +		while (len--) {
> > +			diff = le16_to_cpu(*s1++) - le16_to_cpu(*s2++);
> > +			if (diff)
> > +				return diff;
> > +		}
> > +	}
> > +
> > +	return (int)(l1 - l2);
> > +}
> 
> I notice that these functions might call both ignore case and upcase in a row.
> record.c - compare_attr()
> index.c - cmp_fnames()
> 
> So maybe we can add bool bothcases.
> 
> int ntfs_cmp_names(const __le16 *s1, size_t l1, const __le16 *s2, size_t l2,
> 		   const u16 *upcase, bool bothcase)
> {
> 	int diff1 = 0;
> 	int diff2;
> 	size_t len = l1 < l2 ? l1 : l2;

size_t len = min(l1, l2);

I wonder if this could be a Coccinelle script?

regards,
dan carpenter


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
