Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB367A7836
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 11:57:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qitxY-0001Rt-Pl;
	Wed, 20 Sep 2023 09:57:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <p.raghav@samsung.com>) id 1qitvA-0001I7-7Q
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 09:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FdSyQmvYuBWOq4bw3GT24G1UfEtiREjPwKS1idfELH8=; b=Hz7P0Ejq2HyFvFD/8W1gBkYBOL
 TkHUGPbYzgnnw4LY/clC/1k5oBc3EltEqVr1TUiCeuCLt3GMOPHKoBYSBAYTlSckjoCRg2YHGoTje
 2h2TUI9DrlWJpGr5tJWvOuwe+lNPW9pqowKn/20qfRKKg1ZEvK0gjaRD0RXQ8PJcAWzE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FdSyQmvYuBWOq4bw3GT24G1UfEtiREjPwKS1idfELH8=; b=PyWWCZanj1sk0eZnZ5oMA2zpfx
 tewdo7c84UEABaW9Vcxb/xVcD17BGSO/AHDXQE6Ow8Fy4aW2bWOsmjWDysgI4HJCHGRdgMT05emii
 M9+p40kGbKVPN1aNmM0SVQs1m79ekR0VjsXtj9mBQ/VploFQGoz5GuYfBbhm+AcsF0/Y=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qitv8-00GTTh-U8 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 09:55:00 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20230920095448euoutp01622031beb27b7f62b547f4a03924c7c0~GksXWXmLL2752527525euoutp01X
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 09:54:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20230920095448euoutp01622031beb27b7f62b547f4a03924c7c0~GksXWXmLL2752527525euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1695203688;
 bh=FdSyQmvYuBWOq4bw3GT24G1UfEtiREjPwKS1idfELH8=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=Ec8Eu9Iotlyy+vzC6ecrgZzOSbmNawykSDCZ2cEBLkYqnG552ZivaqgvQmFroqojZ
 0apmrP10brCQuzJWbLuDqQ/m/OCs03Y9oTFH+rTTz7yeywA47UT5brzZRjGEVW2c2j
 kJ2e6On5KmXgwTHbwVh+Jh+mUcosu6Z+XJ+n2OoA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20230920095447eucas1p2d07e0c21866187f0fb17c2566f12038b~GksW6VjCX0152901529eucas1p27;
 Wed, 20 Sep 2023 09:54:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D8.14.11320.761CA056; Wed, 20
 Sep 2023 10:54:47 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20230920095447eucas1p2fee0541ad835331ff6b4c5143122c341~GksWaVgbe1485014850eucas1p2P;
 Wed, 20 Sep 2023 09:54:47 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20230920095447eusmtrp2dd75109d9e2e8aefd7e741d6c783b243~GksWYuar-2278922789eusmtrp2k;
 Wed, 20 Sep 2023 09:54:47 +0000 (GMT)
X-AuditID: cbfec7f4-993ff70000022c38-c3-650ac1672e0f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 30.89.10549.761CA056; Wed, 20
 Sep 2023 10:54:47 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20230920095446eusmtip1058762671c78d44496b0673bff114cfd~GksWO0MFl2214322143eusmtip10;
 Wed, 20 Sep 2023 09:54:46 +0000 (GMT)
Received: from localhost (106.110.32.140) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 20 Sep 2023 10:54:46 +0100
Date: Wed, 20 Sep 2023 11:54:45 +0200
From: Pankaj Raghav <p.raghav@samsung.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20230920095428.kxlv7gplxyy7wqpb@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230919045135.3635437-3-willy@infradead.org>
X-Originating-IP: [106.110.32.140]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRmVeSWpSXmKPExsWy7djP87rpB7lSDc7NVLKYs34Nm8Xu6f9Y
 LWbOu8NmsWfvSRaLP9NNLNo75jBarHy8lcni0L2rrBazt65gtvj9Yw6bA5fH5hVaHidm/Gbx
 eLF5JqPH7gWfmTw+b5ILYI3isklJzcksSy3St0vgyuj5c5Wp4CRTxezZs5kbGCcwdTFyckgI
 mEjsmNfJ1sXIxSEksIJRYu2hg+wQzhdGiX/LpjFBOJ8ZJfau+csM03Li2itWiMRyRom2Y/fB
 EmBV/15nQiS2MErcObuCDSTBIqAq0bP0CVAHBwebgJZEYyc7SFhEwFhi4vL9YLuZBY4zSey9
 9osFJCEskChx8d1CMJtXwFzif8tFNghbUOLkzCdgcWYBHYkFuz+xgcxkFpCWWP6PAyTMKWAt
 sb1lFjvEoUoSDZvPsEDYtRKnttyC+vkHh8Tlz1EQtovEyUOPGCFsYYlXx7dA9cpI/N85H6q+
 WuLpjd/MIHdKCLQwSvTvXA+2VwJoWd+ZHAjTUeLY9GoIk0/ixltBiCP5JCZtm84MEeaV6GgT
 ghioJrH63huWCYzKs5C8NQvJW7MQ3lrAyLyKUTy1tDg3PbXYKC+1XK84Mbe4NC9dLzk/dxMj
 MAGd/nf8yw7G5a8+6h1iZOJgPMQowcGsJMKbq8aVKsSbklhZlVqUH19UmpNafIhRmoNFSZxX
 2/ZkspBAemJJanZqakFqEUyWiYNTqoFpVW7s4i0nIt8XSn8+VGMk65rTv/vJ/70/I9sn/wv3
 jzKc18t+cPfsGS+l1DbNZzVsLu6wSRBOmTKt6dWlW7bb1wkfMv0UNf1OvL/eoopQw+YdF171
 auwT/nF0ud7U4/Mzf5lcPtZyf7JYa72r/r1dM6efu8aq/eqfT3TKKs1Pv6sdkvOd5Od27bI5
 tuR6r784zyVFgaJ+QX7PV+HMjgx+q/9pl5xfZmOZ92xioPjnIs/oHxOuK75otmJeln1B8lLi
 t0+hew0Kje03/2pK3Oy7cWLLV5E3jGyWDFssY79umfB3wro5z9OdP6odcpsZ7LUgq7cvof1W
 26ZJG5nD50x7qcYuYVVY+WG20J1y5W1ySizFGYmGWsxFxYkAfDcpZK8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDIsWRmVeSWpSXmKPExsVy+t/xu7rpB7lSDQ7eZLGYs34Nm8Xu6f9Y
 LWbOu8NmsWfvSRaLP9NNLNo75jBarHy8lcni0L2rrBazt65gtvj9Yw6bA5fH5hVaHidm/Gbx
 eLF5JqPH7gWfmTw+b5ILYI3SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy+j5c5Wp4CRTxezZs5kbGCcwdTFyckgImEicuPaKtYuRi0NIYCmjxIqF
 X6ESMhIbv1xlhbCFJf5c62KDKPrIKPH4WQMLhLOFUWLuqc0sIFUsAqoSPUufAHVwcLAJaEk0
 drKDhEUEjCUmLt8P1swscJxJYu+1X2D1wgKJEhffLQSzeQXMJf63XGQDsYUEsiXuLV0DFReU
 ODnzCZjNLKAjsWD3JzaQ+cwC0hLL/3GAhDkFrCW2t8xihzhUSaJh8xkWCLtW4vPfZ4wTGIVn
 IZk0C8mkWQiTFjAyr2IUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMxm3Hfm7ewTjv1Ue9Q4xM
 HIyHGCU4mJVEeHPVuFKFeFMSK6tSi/Lji0pzUosPMZoCQ2Iis5Rocj4wHeSVxBuaGZgamphZ
 GphamhkrifN6FnQkCgmkJ5akZqemFqQWwfQxcXBKNTBZmOjwBKh/dLxzIJGzs+eBYcppHcHK
 F+xCh79FFH1xkea6KL/YU8f1yytpr8vzf+Re52TbtbVv7umt96J/iTJejt8mIltdOO9O1KYX
 L3pTklQsFv1qaGduCLDSYd8//Zvbpu8cTjPF0p5M6i8pCVA6uE08alLyyQ7+F1teh9xz/eT7
 qWJVhEauw2LuqumrnhxOYF3oIfjjyFehX1WrT3PMv7MyT//eOsmLPNm3Uu7fb2TfJdx5uqlp
 lWZv2jOGV55qVyXsJoqfdBGx2rTRR39T4LftIs9jbkQ8z/oiY5x9xMEs7Rd79mxZjgvMq43F
 pl24pHNNc+K3tx1y7X1vNnK7PLARTwqXP7jst3Tzn9dKLMUZiYZazEXFiQDprdM9TwMAAA==
X-CMS-MailID: 20230920095447eucas1p2fee0541ad835331ff6b4c5143122c341
X-Msg-Generator: CA
X-RootMTR: 20230920095447eucas1p2fee0541ad835331ff6b4c5143122c341
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230920095447eucas1p2fee0541ad835331ff6b4c5143122c341
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-3-willy@infradead.org>
 <CGME20230920095447eucas1p2fee0541ad835331ff6b4c5143122c341@eucas1p2.samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 19, 2023 at 05:51:11AM +0100,
 Matthew Wilcox (Oracle)
 wrote: > Saves a folio->page->folio conversion. > > Signed-off-by: Matthew
 Wilcox (Oracle) <willy@infradead.org> > --- > fs/mpage.c | [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qitv8-00GTTh-U8
X-Mailman-Approved-At: Wed, 20 Sep 2023 09:57:28 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 02/26] mpage: Convert
 map_buffer_to_folio() to folio_create_empty_buffers()
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
Cc: p.raghav@samsung.com, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Sep 19, 2023 at 05:51:11AM +0100, Matthew Wilcox (Oracle) wrote:
> Saves a folio->page->folio conversion.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/mpage.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
Looks good,
Reviewed-by: Pankaj Raghav <p.raghav@samsung.com>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
