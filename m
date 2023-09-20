Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 797A87A786E
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 20 Sep 2023 12:00:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qiu0s-0001Bm-Vh;
	Wed, 20 Sep 2023 10:00:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <p.raghav@samsung.com>) id 1qiu0N-0001Q1-5v
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 10:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JtBYsHN8h541EBRzlr1y0mzkDzP9gFTfHIXNRWvnYrs=; b=f/WS9CKHt99QrL9iO/lEg7Jz7b
 GeEty7gmJXAmBWbstrmOwO8qQBj/T8ic1hQOrNkONSoElKt9dYDMVnReMt/WFXgTzgRodtoFfXNsX
 C61QNGF1CifqQKTe56lBugqujWlr23iIux8bhW4JSu43WNFixel4GyN4iRqqLo1YI91o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JtBYsHN8h541EBRzlr1y0mzkDzP9gFTfHIXNRWvnYrs=; b=mEKq9FXw350Sx0+p2s0Ouux76L
 i4PpHTlZZxnFx4r7gHTHpaiobLGtnycTRrw0BL1F/hHEsavmocIYfKKoO19Ctdo/Kzk1+/4XtfH8P
 WcNiQJjeA1cotLq4ccc6FESJhA0kDdGiTQ52MAJ/ADHO1cva3Ct85KDhN0Ck2mlryUQg=;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiu0J-0002q2-J7 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 20 Sep 2023 10:00:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20230920100013euoutp014e5b9272f7b8d2154cf6c521e0a6feae~GkxGDiiVJ0274402744euoutp01w
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 20 Sep 2023 10:00:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20230920100013euoutp014e5b9272f7b8d2154cf6c521e0a6feae~GkxGDiiVJ0274402744euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1695204013;
 bh=JtBYsHN8h541EBRzlr1y0mzkDzP9gFTfHIXNRWvnYrs=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=a0rXS9PnsBLdcAai9TRqkGdfrEGllNHbHgiYLk7bd3A6pTWFBb8gx+laef0ZRAuGV
 9dbFEh1ZcT2rUKoh2c8kXxM/FJYs5OBNT1v9UmYQtDDfxaV9tmE7J0lVkL3Y67rf+L
 idzp0179QVhAN7/4t5jzIBZqyesURL/TSgQ1CM44=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20230920100012eucas1p22ae8579a8303bc7100e92ddc6f39f8de~GkxF012Cx2310123101eucas1p2m;
 Wed, 20 Sep 2023 10:00:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C3.F8.37758.CA2CA056; Wed, 20
 Sep 2023 11:00:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20230920100012eucas1p1f44530cfdd1ff8ed668bfe0c088d31ce~GkxFeABk71972619726eucas1p1Z;
 Wed, 20 Sep 2023 10:00:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20230920100012eusmtrp28e809b95a24cde10b6f8dbde3fc8ff5b~GkxFdVslq2580425804eusmtrp2A;
 Wed, 20 Sep 2023 10:00:12 +0000 (GMT)
X-AuditID: cbfec7f5-7ffff7000002937e-a7-650ac2ac9406
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E2.16.14344.CA2CA056; Wed, 20
 Sep 2023 11:00:12 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20230920100012eusmtip1237da79744bb0d19877f7844c975d504~GkxFTCBuO2867928679eusmtip1F;
 Wed, 20 Sep 2023 10:00:12 +0000 (GMT)
Received: from localhost (106.110.32.140) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 20 Sep 2023 11:00:11 +0100
Date: Wed, 20 Sep 2023 12:00:11 +0200
From: Pankaj Raghav <p.raghav@samsung.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20230920100011.zpzagd35gjpn5gzu@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230919045135.3635437-4-willy@infradead.org>
X-Originating-IP: [106.110.32.140]
X-ClientProxiedBy: CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHKsWRmVeSWpSXmKPExsWy7djP87prDnGlGnxpMrOYs34Nm8Xu6f9Y
 LWbOu8NmsWfvSRaLP9NNLNo75jBarHy8lcni0L2rrBazt65gtvj9Yw6bA5fH5hVaHidm/Gbx
 eLF5JqPH7gWfmTw+b5ILYI3isklJzcksSy3St0vgyljeN5e14BtLxfej7WwNjBNYuhg5OSQE
 TCT2r9nJ2MXIxSEksIJRovfjN1YI5wujxOa3K9ghnM9AmXev2GBaJrw+zgKRWM4o8XPGLWa4
 qtmf7jNBOFsYJeYvOsgM0sIioCrxZ+NBoC0cHGwCWhKNnewgYREBY4mJy/ezgdQzCxxnkth7
 7RcLSI2wgJvEkU3RIDW8AuYSE/r2MkLYghInZz4BO5xZQEdiwe5PbCDlzALSEsv/cYCEOQWs
 Je7/X8QOcaiSRMPmM1B/1krsbT4A9o2EwH8OiX1fFzNDJFwkbq45AGULS7w6vgWqWUbi/875
 TBB2tcTTG7+ZIZpbGCX6d64HWywBtK3vTA5EjaPEz3nHWCHCfBI33gpCnMknMWnbdGaIMK9E
 R5sQRLWaxOp7b1gmMCrPQvLYLCSPzUJ4bAEj8ypG8dTS4tz01GLjvNRyveLE3OLSvHS95Pzc
 TYzAJHT63/GvOxhXvPqod4iRiYPxEKMEB7OSCG+uGleqEG9KYmVValF+fFFpTmrxIUZpDhYl
 cV5t25PJQgLpiSWp2ampBalFMFkmDk6pBiaVr+dnrv3p7fnY9b7lx/Lvmpc5TnM/DYmLb5pd
 YXAy1Kwr2S1bLfLgYc77m//orDHZqPJ/c0/B2dkLqpqm8tvcFdiy97y92J+9m9csPf5hWop5
 Z2dbNNP89TdaunTSbxw3vXDXymjxi63Mvt4XU8yd9GbfCdsfNDXgnVW9qcl93Y4Hb1nD/rB/
 TptdYPH9+Ke6UIYrydFf/KzmeB+4FfnGWjmZNcd9mbPZ7GK71i96BhK2J2yMdC7eEBMuVL9p
 tn/DBM7QHIYlfHnFvYJz9Q9pvL1v3KL6Zsf+sKPqP5mCfKVN2qo2i1VZXZ+wTDvy2xTm5ReM
 +s+f3JOv8vfjxluHLjy/Wtp+Vp7ZeAXHgl4lluKMREMt5qLiRAAdQQuAsQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNIsWRmVeSWpSXmKPExsVy+t/xu7prDnGlGixaImsxZ/0aNovd0/+x
 Wsycd4fNYs/ekywWf6abWLR3zGG0WPl4K5PFoXtXWS1mb13BbPH7xxw2By6PzSu0PE7M+M3i
 8WLzTEaP3Qs+M3l83iQXwBqlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7G8by5rwTeWiu9H29kaGCewdDFyckgImEhMeH0cyObiEBJYyijRs+wn
 G0RCRmLjl6usELawxJ9rXWwQRR8ZJTZs/coM4WxhlOg8fgasikVAVeLPxoOMXYwcHGwCWhKN
 newgYREBY4mJy/eDNTMLHGeS2HvtFwtIjbCAm8SRTdEgNbwC5hIT+vYygthCAtkSEyd+YoeI
 C0qcnPkE7FJmAR2JBbs/sYG0MgtISyz/xwES5hSwlrj/fxE7xJ1KEg2bz0A9VivR+eo02wRG
 4VlIJs1CMmkWwqQFjMyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAmNx27GfW3Ywrnz1Ue8Q
 IxMH4yFGCQ5mJRHeXDWuVCHelMTKqtSi/Pii0pzU4kOMpsCAmMgsJZqcD0wGeSXxhmYGpoYm
 ZpYGppZmxkrivJ4FHYlCAumJJanZqakFqUUwfUwcnFINTNxLFBwOTnjAlHhkVmLX55vlm44W
 ypzhfMl07dHinery2/lF1NvmbArYVdFjlX4sLzr20Pa1z6SXb0zltLt37oWZ41lRycNOLXo5
 txl2f1u8TjrgfPoy68+1VuwLXpff57kV+vjMa4O3P+/fffONyf9y2J2+Ssl62/BIt2e8mRZy
 9Zt52NjfHvJY8nyqel9wbEmjZ97E8inXXkTseikr7ZTP8tTc+5XCq8ln5K9K9zWe2GNxNHuB
 6c3qhNfzAmfm656euX3ygwOnijb845oe9ULObr+PRoXLLF+b5WeiVwvNfiVSobSu5pnAZjbW
 FW5SPjMehzwqWR/luc6pjds/ZddZTj1Ltvfc3jvFxfWvXFFiKc5INNRiLipOBAAjH+TKTgMA
 AA==
X-CMS-MailID: 20230920100012eucas1p1f44530cfdd1ff8ed668bfe0c088d31ce
X-Msg-Generator: CA
X-RootMTR: 20230920100012eucas1p1f44530cfdd1ff8ed668bfe0c088d31ce
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230920100012eucas1p1f44530cfdd1ff8ed668bfe0c088d31ce
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-4-willy@infradead.org>
 <CGME20230920100012eucas1p1f44530cfdd1ff8ed668bfe0c088d31ce@eucas1p1.samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 19, 2023 at 05:51:12AM +0100,
 Matthew Wilcox (Oracle)
 wrote: > Remove an unnecessary folio->page->folio conversion and take
 advantage
 > of the new return value from folio_create_empty_buff [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
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
X-Headers-End: 1qiu0J-0002q2-J7
X-Mailman-Approved-At: Wed, 20 Sep 2023 10:00:52 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 03/26] ext4: Convert to
 folio_create_empty_buffers
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

On Tue, Sep 19, 2023 at 05:51:12AM +0100, Matthew Wilcox (Oracle) wrote:
> Remove an unnecessary folio->page->folio conversion and take advantage
> of the new return value from folio_create_empty_buffers().
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/ext4/inode.c       | 14 +++++---------
>  fs/ext4/move_extent.c | 11 +++++------
>  2 files changed, 10 insertions(+), 15 deletions(-)
> 
I had a similar cleanup that I sent a while ago:
https://lore.kernel.org/linux-ext4/20230512125243.73696-1-p.raghav@samsung.com/

Looks good,
Reviewed-by: Pankaj Raghav <p.raghav@samsung.com>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
