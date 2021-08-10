Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C27AD3E7CB1
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 10 Aug 2021 17:47:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mDTyF-0006AE-IP; Tue, 10 Aug 2021 15:47:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+52179d7ae0ad25a87438+6561+infradead.org+hch@casper.srs.infradead.org>)
 id 1mDTyD-0006A2-7g
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8qYzDOt1JxpJ/7Vxl0cI48aTbAQ1I19+tYVtQ/5njAI=; b=TEQUgZJ/wrUpq7vs0pm7s0Srrb
 sjgS9Vz4jzErtZTAllRCL8G9whF00GIEF3shGTGhER42Y+yTPjaNNFTw76+k8NKo3VLDXhLXyRjOM
 qGlVIQIVuQyksdtCgfZ9CCTHv4cuPjvVISb6MGKASi8vydRVFFYqT/fbqOCG3LVpQAGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8qYzDOt1JxpJ/7Vxl0cI48aTbAQ1I19+tYVtQ/5njAI=; b=J
 feYgeClD27Jc/dY8/rb8IYpKj7lHLBDi4XeINeso/AMXJ8iJ7peND/LqX8oTIzOYkXnPSVG6SNUFH
 svlOW0jsxLJ2C6Qs18ynX0+VWwrq1MbBWaZtKexnmYL+Kt6GRlMgBsZnu1skKL1MwE75obsm4BfIe
 yIDc94m0lvB4XAF0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mDTy7-0020wr-Pb
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 10 Aug 2021 15:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=8qYzDOt1JxpJ/7Vxl0cI48aTbAQ1I19+tYVtQ/5njAI=; b=SWlWS+kKKV+UYcEf64AiWOybxt
 o1/PsAH3YzMVUXR3T5HQKj7SlrCIvNYZhEb9xIcRm0t9yP4RCHZm7yX8TCUa46o7fKp7g1PNgE5Tu
 V0hNkaW5BNLLf59+YibRiGVa55hWQZHE10sbPDk3509Y/gMM13jDo/kPnQpZ5nQ8chLLi2dWSGRAx
 v1dhQcz829jNYsyedEX525mR0R+BayL+8qydSzjdvVYgX32o510xvYB2xJx/y2LLclwalZwQ7ViLD
 ebzKx/wsf68ss89PFynmLakvXXBeW24tyOpi1yHQMRiSF083zFJsCHe82Karldqo2hVpa4HVkuUSi
 88olwXXA==;
Received: from 089144200071.atnat0009.highway.a1.net ([89.144.200.71]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDTwI-00CIZe-7n; Tue, 10 Aug 2021 15:45:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 10 Aug 2021 17:45:08 +0200
Message-Id: <20210810154512.1809898-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDTy7-0020wr-Pb
Subject: [Linux-NTFS-Dev] pass a gendisk instead of block_device in the
 partitioning code
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
 linux-efi@vger.kernel.org, Stefan Haberland <sth@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Hi Jens,

this series passes the gendisk instead of the block_device when operating
on the whole device in the partition code.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
