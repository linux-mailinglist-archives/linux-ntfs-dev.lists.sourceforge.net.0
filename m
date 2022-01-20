Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C234956FF
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 21 Jan 2022 00:33:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1nAgvd-000553-BD; Thu, 20 Jan 2022 23:33:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <anton@tuxera.com>) id 1nAgvb-00054w-OL
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 Jan 2022 23:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sPCasuXJUbfX6O0q4gsVEnPoi0RIgmXDCq0/mn35rt0=; b=RzqzKXbUSqvsG54jLRRUb21TSH
 yBv/6kqTlIJtkNx5Mh9lBYlXOcZIdPAY+Lfnxsb2hNFF5e2M1ZBQyWeZTI2ixmDwl2fh6NaDuIPao
 sCKWCr4fNmRM8pqjKJYouEbXJTddg7jiL9K8HVDwcuNb5TMJuM1+NohdmdCJxYU3TfIQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sPCasuXJUbfX6O0q4gsVEnPoi0RIgmXDCq0/mn35rt0=; b=TjcZNC8B/sh/76U1dAtiX3m1XI
 vR9rHBHHjN84Kb162gyteJm9QAn5dAlJ/h3IWAgx8dAiIugtz5B3R9R10NRfD6hd8Ta4V1PPyRWNc
 ZFDTP+c50dPUuLo+fFFZ8CaZKE1dXrKeCJapmkd/p4f6KkaOg5LmepAYYbEcOLOty9Rg=;
Received: from mgw-01.mpynet.fi ([82.197.21.90])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAgvX-0006ay-O2
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 20 Jan 2022 23:33:13 +0000
Received: from pps.filterd (mgw-01.mpynet.fi [127.0.0.1])
 by mgw-01.mpynet.fi (8.16.0.43/8.16.0.43) with SMTP id 20KNIEsX129783;
 Fri, 21 Jan 2022 01:19:31 +0200
Received: from ex13.tuxera.com (ex13.tuxera.com [178.16.184.72])
 by mgw-01.mpynet.fi with ESMTP id 3dq8m4g6ua-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 21 Jan 2022 01:19:31 +0200
Received: from tuxera-exch.ad.tuxera.com (10.20.48.11) by
 tuxera-exch.ad.tuxera.com (10.20.48.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.26; Fri, 21 Jan 2022 01:19:30 +0200
Received: from tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789]) by
 tuxera-exch.ad.tuxera.com ([fe80::552a:f9f0:68c3:d789%12]) with mapi id
 15.00.1497.026; Fri, 21 Jan 2022 01:19:30 +0200
From: Anton Altaparmakov <anton@tuxera.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [PATCH] ntfs: add sanity check on allocation size
Thread-Index: AQHYDeMxXM40tbgvckafVktBQwfMraxsawwA
Date: Thu, 20 Jan 2022 23:19:30 +0000
Message-ID: <8C2E63FA-6DB4-44E2-A8E5-1C22ADED2178@tuxera.com>
References: <20220120094914.47736-1-dzm91@hust.edu.cn>
In-Reply-To: <20220120094914.47736-1-dzm91@hust.edu.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [86.166.43.168]
MIME-Version: 1.0
X-Proofpoint-GUID: EsB2RyDJPkl4R7oQIcFmc7zBUjmn6MBu
X-Proofpoint-ORIG-GUID: EsB2RyDJPkl4R7oQIcFmc7zBUjmn6MBu
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.816
 definitions=2022-01-20_10:2022-01-20,
 2022-01-20 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 mlxlogscore=999
 spamscore=0
 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201200118
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andrew,
 Please could you merge this? Thanks a lot in advance!
 Dongliang, that looks good, thanks! 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [82.197.21.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1nAgvX-0006ay-O2
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: add sanity check on allocation
 size
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dongliang Mu <dzm91@hust.edu.cn>, Dongliang Mu <mudongliangabcd@gmail.com>,
 "syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com"
 <syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com>
Content-Type: multipart/mixed; boundary="===============1347330107938130043=="
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

--===============1347330107938130043==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8C2E63FA6DB444E2A8E51C22ADED2178tuxeracom_"

--_000_8C2E63FA6DB444E2A8E51C22ADED2178tuxeracom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Please could you merge this?  Thanks a lot in advance!

Dongliang, that looks good, thanks!

Best regards,

Anton

On 20 Jan 2022, at 09:49, Dongliang Mu <dzm91@hust.edu.cn<mailto:dzm91@hust=
.edu.cn>> wrote:

From: Dongliang Mu <mudongliangabcd@gmail.com<mailto:mudongliangabcd@gmail.=
com>>

ntfs_read_inode_mount invokes ntfs_malloc_nofs with zero allocation size. I=
t triggers one BUG in the __ntfs_malloc function.

Fix this by adding sanity check on ni->attr_list_size.

Reported-by: syzbot+3c765c5248797356edaa@syzkaller.appspotmail.com<mailto:s=
yzbot+3c765c5248797356edaa@syzkaller.appspotmail.com>
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com<mailto:mudongliangab=
cd@gmail.com>>
Acked-by: Anton Altaparmakov <anton@tuxera.com<mailto:anton@tuxera.com>>
---
fs/ntfs/inode.c | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index 4474adb393ca..517b71c73aa9 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1881,6 +1881,10 @@ int ntfs_read_inode_mount(struct inode *vi)
}
/* Now allocate memory for the attribute list. */
ni->attr_list_size =3D (u32)ntfs_attr_size(a);
+ if (!ni->attr_list_size) {
+ ntfs_error(sb, "Attr_list_size is zero");
+ goto put_err_out;
+ }
ni->attr_list =3D ntfs_malloc_nofs(ni->attr_list_size);
if (!ni->attr_list) {
ntfs_error(sb, "Not enough memory to allocate buffer "
--
2.25.1


--
Anton Altaparmakov <anton at tuxera.com<http://tuxera.com>> (replace at wit=
h @)
Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
Linux NTFS maintainer


--_000_8C2E63FA6DB444E2A8E51C22ADED2178tuxeracom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <53A4D209185FFF4CBAC91766A468C4AD@ex13.tuxera.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
Hi Andrew,
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Please could you merge this? &nbsp;Thanks a lot in advance!=
</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Dongliang, that looks good, thanks!
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Best regards,</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre"></=
span>Anton<br class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On 20 Jan 2022, at 09:49, Dongliang Mu &lt;<a href=3D"mailt=
o:dzm91@hust.edu.cn" class=3D"">dzm91@hust.edu.cn</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div class=3D"">From: Dongliang Mu &lt;<a href=3D"mailto:mudongliangabcd@gm=
ail.com" class=3D"">mudongliangabcd@gmail.com</a>&gt;<br class=3D"">
<br class=3D"">
ntfs_read_inode_mount invokes ntfs_malloc_nofs with zero allocation size. I=
t triggers one BUG in the __ntfs_malloc function.<br class=3D"">
<br class=3D"">
Fix this by adding sanity check on ni-&gt;attr_list_size.<br class=3D"">
<br class=3D"">
Reported-by: <a href=3D"mailto:syzbot&#43;3c765c5248797356edaa@syzkaller.ap=
pspotmail.com" class=3D"">
syzbot&#43;3c765c5248797356edaa@syzkaller.appspotmail.com</a><br class=3D""=
>
Signed-off-by: Dongliang Mu &lt;<a href=3D"mailto:mudongliangabcd@gmail.com=
" class=3D"">mudongliangabcd@gmail.com</a>&gt;<br class=3D"">
</div>
</div>
</blockquote>
Acked-by: Anton Altaparmakov &lt;<a href=3D"mailto:anton@tuxera.com" class=
=3D"">anton@tuxera.com</a>&gt;<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div class=3D"">---<br class=3D"">
fs/ntfs/inode.c | 4 &#43;&#43;&#43;&#43;<br class=3D"">
1 file changed, 4 insertions(&#43;)<br class=3D"">
<br class=3D"">
diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c<br class=3D"">
index 4474adb393ca..517b71c73aa9 100644<br class=3D"">
--- a/fs/ntfs/inode.c<br class=3D"">
&#43;&#43;&#43; b/fs/ntfs/inode.c<br class=3D"">
@@ -1881,6 &#43;1881,10 @@ int ntfs_read_inode_mount(struct inode *vi)<br c=
lass=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br class=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>/* Now allocate memory=
 for the attribute list. */<br class=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>ni-&gt;attr_list_size =
=3D (u32)ntfs_attr_size(a);<br class=3D"">
&#43;<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (!ni-&gt;attr=
_list_size) {<br class=3D"">
&#43;<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"A=
pple-tab-span" style=3D"white-space:pre"></span>ntfs_error(sb, &quot;Attr_l=
ist_size is zero&quot;);<br class=3D"">
&#43;<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"A=
pple-tab-span" style=3D"white-space:pre"></span>goto put_err_out;<br class=
=3D"">
&#43;<span class=3D"Apple-tab-span" style=3D"white-space:pre"> </span><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre"></span>}<br class=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>ni-&gt;attr_list =3D n=
tfs_malloc_nofs(ni-&gt;attr_list_size);<br class=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span>if (!ni-&gt;attr_list)=
 {<br class=3D"">
<span class=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre"></span><span class=3D"Apple-t=
ab-span" style=3D"white-space:pre"></span>ntfs_error(sb, &quot;Not enough m=
emory to allocate buffer &quot;<br class=3D"">
-- <br class=3D"">
2.25.1<br class=3D"">
<br class=3D"">
</div>
</div>
</blockquote>
</div>
<br class=3D"">
<div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-w=
rap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-=
space;" class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-w=
rap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-=
space;" class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-w=
rap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-=
space;" class=3D"">
--&nbsp;<br class=3D"">
Anton Altaparmakov &lt;anton at <a href=3D"http://tuxera.com" class=3D"">tu=
xera.com</a>&gt; (replace at with @)<br class=3D"">
Lead in File System Development, Tuxera Inc.,&nbsp;<a href=3D"http://www.tu=
xera.com/" class=3D"">http://www.tuxera.com/</a><br class=3D"">
Linux NTFS maintainer</div>
</div>
</div>
</div>
<br class=3D"">
</div>
</div>
</body>
</html>

--_000_8C2E63FA6DB444E2A8E51C22ADED2178tuxeracom_--


--===============1347330107938130043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1347330107938130043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev

--===============1347330107938130043==--

