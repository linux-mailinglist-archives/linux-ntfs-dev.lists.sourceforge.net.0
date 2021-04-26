Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D8836BB16
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 26 Apr 2021 23:13:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lb8XU-000090-M5; Mon, 26 Apr 2021 21:13:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <haoxu@linux.alibaba.com>) id 1lax3h-0002YR-GB
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 26 Apr 2021 08:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mYjQldMxb1MryyyXJRzLxWPuC21Vse/VXfVrxFJkdK4=; b=M5oHgnkrhAaK+98y0Mxo2gbZ44
 DIJorMQMTfCvlNL/+nPVDWbFZVseCZyrzo6UtNp5CpDkTeAn1l5Njw0SLKWfFpt2Ti2QvY673zPwA
 Dqi3Os2O37NrhahZtVl6MvVhKVeUzFD7ACRaK8bJy7EPR5TV+McIP2N5gBia7ZSor8vQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mYjQldMxb1MryyyXJRzLxWPuC21Vse/VXfVrxFJkdK4=; b=El4JVvy9cDzn71EU1Wt7EGuIws
 YPsugrP55TCpIl9jJU20xyz0o2JN/GDFCJcnpbHFB1WGso1ImgGPShTcl67z6zp3yAMySfnnEXmp3
 0yK83VGmdVa2V7dU7dYi9kKIunhmit+mhtXRB8JWSwwHd2QWI4kcyTZhBj1V6DA1+l/g=;
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lax3c-00Aueh-AT
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 26 Apr 2021 08:57:37 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R191e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04394; MF=haoxu@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0UWnOySz_1619425013; 
Received: from e18g09479.et15sqa.tbsite.net(mailfrom:haoxu@linux.alibaba.com
 fp:SMTPD_---0UWnOySz_1619425013) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 26 Apr 2021 16:17:02 +0800
From: Hao Xu <haoxu@linux.alibaba.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Anton Altaparmakov <anton@tuxera.com>
Date: Mon, 26 Apr 2021 16:16:51 +0800
Message-Id: <1619425013-130530-1-git-send-email-haoxu@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lax3c-00Aueh-AT
X-Mailman-Approved-At: Mon, 26 Apr 2021 21:13:04 +0000
Subject: [Linux-NTFS-Dev] [PATCH 0/2] remove redundant check
 buffer_uptodate()
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 Joseph Qi <joseph.qi@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Now set_buffer_uptodate() will test first and then set, so we don't have
to check buffer_uptodate() first, remove it to simplify code.

Hao Xu (2):
  fs: remove redundant check buffer_uptodate()
  ntfs: remove redundant check buffer_uptodate()

 fs/buffer.c       | 9 +++------
 fs/ntfs/file.c    | 9 +++------
 fs/ntfs/logfile.c | 3 +--
 3 files changed, 7 insertions(+), 14 deletions(-)

-- 
1.8.3.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
