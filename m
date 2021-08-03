Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC593DF7B8
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  4 Aug 2021 00:18:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1mB2jw-0004ZK-KL; Tue, 03 Aug 2021 22:18:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mAwaL-0000PT-HQ
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Aug 2021 15:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=II/VenbTUw24iLWpdlipuMpQAdm4Yh3pDdJ39f5fTfs=; b=mpxFBRjW80vOs5i37oqmjaOtC9
 qKP8y+wg03SsSYgYK6pq2RQtQm234dsRAHWKmB//cx02KitxbiCfiGnxN+57OfNaRWXDFLvGqil74
 y06VKEOxTHn2r++nOEK2IFQyHfmtQpRNZOAWafaAAx5AdciaGyG1lag5DvXqvo/rya8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=II/VenbTUw24iLWpdlipuMpQAdm4Yh3pDdJ39f5fTfs=; b=fA7Z/pvkYnf0br61NpEqmeeCxj
 LVSnRJEosWgj0HUyx1u4KdOXzwkfw+Xi+PUduiDKOLSMq2eFseJ092lpSscC5QccuWbCn0VWfkV5I
 VCBYJ40cO+Lp2Qqn5jd30lzbnfc5LfkV12rwyWXZUygm/r6u5tINNXoc0Qvxk0hhaLxk=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mAwaG-00BEVA-D2
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 03 Aug 2021 15:44:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=II/VenbTUw24iLWpdlipuMpQAdm4Yh3pDdJ39f5fTfs=; b=t+L/oQEKWQG7u56lNMjVf66Qoh
 PuEpLd7XoUvqyNSUWG4kg+YaislStlAu3rT0agQT3mKDaPTJIJ0LzNHGsJTf3uBOntKhQweGPOZ1j
 d+rhzTgI5pdfiKJ6xMRSg2DdLRsLDjtOjZCiU0bT5w7jtH1Ak6N6/BG3DLMXUMQJJwyYUc/gWInMy
 kfgPtEnWUGINhJy8dwlyDK4GN+wVnV62oiRP07RGl/KXvTt0REaGYEP4dCYSI3/EBZtCkDJv3Qb5T
 pxlB25SXe7TmG/7p57cp0sJgdiy2MAjiid0hfyxjairpZE8X3DE7+DNo/Iopzxu7ACN0hmkAlNS5H
 PLzw6iFA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mAwYF-004ppV-K7; Tue, 03 Aug 2021 15:42:03 +0000
Date: Tue, 3 Aug 2021 16:41:55 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <YQljw+wozb9vIGnU@casper.infradead.org>
References: <20210729134943.778917-1-almaz.alexandrovich@paragon-software.com>
 <20210803115709.zd3gjmxw7oe6b4zk@kari-VirtualBox>
 <20210803133833.GL25548@kadam>
 <20210803152619.hva737erzqnksfxu@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210803152619.hva737erzqnksfxu@kari-VirtualBox>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mAwaG-00BEVA-D2
X-Mailman-Approved-At: Tue, 03 Aug 2021 22:18:22 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] Restyle comments to better align with
 kernel-doc
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
Cc: ebiggers@kernel.org, anton@tuxera.com, nborisov@suse.com,
 oleksandr@natalenko.name, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 dsterba@suse.cz, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 aaptel@suse.com, andy.lavr@gmail.com, pali@kernel.org, mark@harmstone.com,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Aug 03, 2021 at 06:26:19PM +0300, Kari Argillander wrote:
> I would not even try to make these kind of changes if ntfs3 patch series
> was already merged to kernel. But probably I will try to bring kernel doc
> style funtion comments in future when ntfs3 gets merged.

There's very little value to adding kernel-doc comments to individual
filesystems.  Filesystems don't usually provide services to the rest of
the kernel.  It's a much better use of your time to write kernel-doc
comments for functions and structures in the VFS and MM that are used
by many filesystems and device drivers.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
