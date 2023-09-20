Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA887A77C1
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 11:41:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiti4-0000QV-Jf;
	Wed, 20 Sep 2023 09:41:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <p.raghav@samsung.com>) id 1qitgm-0001Ew-MA
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 09:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8FReEKvP2/9isPLe8nU44iPC4r0J6E6Ai2YqflXjyCw=; b=XGZS1ze53iHW0vfbGyPg7Y3Pzk
 IxdkwTihVN//G6w88pOB4fP42C5IMTYSyUpdJgh9HbL6pcDweYZ5Cf+14x+R0b5NFF5pgxybA3Fm4
 KdE/tB4900W9knqxxf6EObNhLpgYTBjejZOdR7J+cjJbTP2uJgXybGArVDQi/inqfW3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8FReEKvP2/9isPLe8nU44iPC4r0J6E6Ai2YqflXjyCw=; b=KXrCk/m6NuvULpNJc8eyWNfE05
 Ynp14+TVgG0Kdlxi6XprKvXREOptxccJ3fox7OA/g9c4sz1RK5sg+AsVQ9h5vwW+xQdNE9oIcCVC+
 OJaCHkZ5eUYojHe57koPmK/lCwqi/BQyWNu2nbrH1WHzKAM0sYe2NtmoXBf0K42ZHLmE=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qitgf-0001nX-RK for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 09:40:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20230920093953euoutp01d67b80fb794bb6dad5560ba2de88e603~GkfWTdx-b1215012150euoutp01C
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 09:39:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20230920093953euoutp01d67b80fb794bb6dad5560ba2de88e603~GkfWTdx-b1215012150euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1695202793;
 bh=8FReEKvP2/9isPLe8nU44iPC4r0J6E6Ai2YqflXjyCw=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=uaT+CpPyHBwpdMTbYTG9qjqIoJ4UjIlkSvhYzSUimcVVo9AJql9kekFLgl5327hHh
 ygOlYrCF+RHeFYZ6AABShpEMUEqTaJanfheZ26NoUsEe7TmmlqriAXfYygmxVFdmXA
 HaefDCueGx1VstS842F9y1awIj3Ars2LP4C4JJyk=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20230920093953eucas1p2e4ddd2dff879f9e82eb8f372d4047ebe~GkfV6bAqd1033110331eucas1p29;
 Wed, 20 Sep 2023 09:39:53 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DE.F3.42423.9EDBA056; Wed, 20
 Sep 2023 10:39:53 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20230920093952eucas1p1f37c688dc553d6a85882cae29861a870~GkfVfnlkC1425614256eucas1p1o;
 Wed, 20 Sep 2023 09:39:52 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20230920093952eusmtrp19fb74615e090c3af0b84edd4126d7846~GkfVe4grm3119431194eusmtrp1F;
 Wed, 20 Sep 2023 09:39:52 +0000 (GMT)
X-AuditID: cbfec7f2-a3bff7000002a5b7-f9-650abde910e3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 80.32.14344.8EDBA056; Wed, 20
 Sep 2023 10:39:52 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20230920093952eusmtip20633d16fabb312d639378e5ebaaa4d6a~GkfVNjSlQ3193531935eusmtip2V;
 Wed, 20 Sep 2023 09:39:52 +0000 (GMT)
Received: from localhost (106.110.32.140) by CAMSVWEXC02.scsc.local
 (106.1.227.72) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 20 Sep
 2023 10:39:51 +0100
Date: Wed, 20 Sep 2023 11:39:50 +0200
From: Pankaj Raghav <p.raghav@samsung.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20230920093950.b6lyvcs2tz22po3y@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230919045135.3635437-2-willy@infradead.org>
X-Originating-IP: [106.110.32.140]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (106.1.227.71) To
 CAMSVWEXC02.scsc.local (106.1.227.72)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNKsWRmVeSWpSXmKPExsWy7djPc7ov93KlGkx5xG4xZ/0aNovd0/+x
 Wsycd4fNYs/ekywWf6abWLR3zGG0WPl4K5PFoXtXWS1mb13BbPH7xxw2By6PzSu0PE7M+M3i
 8WLzTEaP3Qs+M3l83iQXwBrFZZOSmpNZllqkb5fAlXHt72mWgp/MFQ8W3WFuYOxn7mLk4JAQ
 MJGYuJKti5GLQ0hgBaPEi9mXGSGcL4wSu57dYIFwPjNKfF20hr2LkROso3dzOztEYjmjxKGL
 V9jgqrbvf84Il9lzegorSAuLgKrE+3dXWUAWsgloSTR2gk0SETCWmLh8P1gzs8BxJom9136B
 1QgLREss3xgDUsMrYC7Re7aFBcIWlDg58wmYzSygI7Fg9yc2kHJmAWmJ5f84QMKcAtYSuz4f
 ZoQ4VEmiYfMZFgg7WaLlz18mkFUSAj84JHace8AG8b+LxPtrgRA1whKvjm+BelJG4vTkHqje
 aomnN34zQ/S2MEr071wP1Wst0XcmB8J0lLj0rQ7C5JO48VYQ4kg+iUnbpkMDmleio00IYqCa
 xOp7b1gmMCrPQvLWLCRvzUJ4awEj8ypG8dTS4tz01GLDvNRyveLE3OLSvHS95PzcTYzA9HP6
 3/FPOxjnvvqod4iRiYPxEKMEB7OSCG+uGleqEG9KYmVValF+fFFpTmrxIUZpDhYlcV5t25PJ
 QgLpiSWp2ampBalFMFkmDk6pBiZXq5Lv23ZMjZnY6O1/9jp//bvkwgtv440aVRkXL+1K2+au
 tE8ywrJz4TwBlqqLfDKP3sQ07TiyYsNbUQZ3m4ATi+KLvcPkDtRn2oeo3Yv97XFSx2hnwqT7
 qlaTxYuKpWdrTNl34dn0F5ss/i2beF2R/xfrZyWj9DNm5ZWvbtaL5+9+/OH3Mpa7jMY7Xk/5
 Hvl307UQkWD3uXyZWqf5OK9r7buivHHOp8sTlLUyy+OrLY6Ysfg3HHBcZiykZOnOPudioVhM
 U/arDQ/6lp5fHCLM+vidlMyk0v6vv3bX2ITd231D/f9+7T1HXiToX7n4/ObkLIMX2cXrI3a3
 Jc/oZzrJsrWAd1spO7ev+3S718FKLMUZiYZazEXFiQAyel5drgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDIsWRmVeSWpSXmKPExsVy+t/xe7ov9nKlGry6oGExZ/0aNovd0/+x
 Wsycd4fNYs/ekywWf6abWLR3zGG0WPl4K5PFoXtXWS1mb13BbPH7xxw2By6PzSu0PE7M+M3i
 8WLzTEaP3Qs+M3l83iQXwBqlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3Ht72mWgp/MFQ8W3WFuYOxn7mLk5JAQMJHo3dzO3sXIxSEksJRR4kHf
 ciaIhIzExi9XWSFsYYk/17rYIIo+Mkqc2rQXylnOKLGyfQYbSBWLgKrE+3dXWboYOTjYBLQk
 GjvZQcIiAsYSE5fvB6tnFjjOJLH32i8WkISwQLTE/5UbwIp4Bcwles+2gMWFBLIljh/bwgQR
 F5Q4OfMJWJxZQEdiwe5PbCDzmQWkJZb/4wAJcwpYS+z6fJgR4lAliYbNZ1gg7GSJSXt+MU5g
 FJ6FZNIsJJNmIUxawMi8ilEktbQ4Nz232EivODG3uDQvXS85P3cTIzAatx37uWUH48pXH/UO
 MTJxMB5ilOBgVhLhzVXjShXiTUmsrEotyo8vKs1JLT7EaAoMiYnMUqLJ+cB0kFcSb2hmYGpo
 YmZpYGppZqwkzutZ0JEoJJCeWJKanZpakFoE08fEwSnVwKTesrBXPXed+WtuKX7TQtsjacuN
 g1KXLwvVaWD6pfg3883fGB2D7aoZx6f/q/SJDtvv8OmtosZyQ86vUfVO5wQ+55y68/U8C9+U
 7Xff9eiVKEy8WcnYcra2w20ny4Za2ykKDxcWrr0TsOmdXegbXQ676sn9y0yyfnAvrD87x+SZ
 sBB3SOajW1vNErT83//kW7OQ5VB8+/GWK4fWMq2S2Kdxekei2rpvSZbXpn1YuF6+KKSTye70
 7ov8+t1F3eE3ZjyXOyvpyPzmdE/hmriit6/0/YV0JJKeafVc/nNgYfZZ650pLleWbG2V4Mj9
 XyrlUHE5+H3jBxuFmzsWienF3DWZEu/oMn+9IE/5mdK2g0osxRmJhlrMRcWJAGnrtghPAwAA
X-CMS-MailID: 20230920093952eucas1p1f37c688dc553d6a85882cae29861a870
X-Msg-Generator: CA
X-RootMTR: 20230920093952eucas1p1f37c688dc553d6a85882cae29861a870
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230920093952eucas1p1f37c688dc553d6a85882cae29861a870
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-2-willy@infradead.org>
 <CGME20230920093952eucas1p1f37c688dc553d6a85882cae29861a870@eucas1p1.samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 19, 2023 at 05:51:10AM +0100,
 Matthew Wilcox (Oracle)
 wrote: > Almost all callers want to know the first BH that was allocated
 > for this folio. We already have that handy, so return it. > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qitgf-0001nX-RK
X-Mailman-Approved-At: Wed, 20 Sep 2023 09:41:27 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 01/26] buffer: Make
 folio_create_empty_buffers() return a buffer_head
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

On Tue, Sep 19, 2023 at 05:51:10AM +0100, Matthew Wilcox (Oracle) wrote:
> Almost all callers want to know the first BH that was allocated
> for this folio.  We already have that handy, so return it.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/buffer.c                 | 24 +++++++++++++-----------
>  include/linux/buffer_head.h |  4 ++--
>  2 files changed, 15 insertions(+), 13 deletions(-)
> 
Looks good,
Reviewed-by: Pankaj Raghav <p.raghav@samsung.com>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
