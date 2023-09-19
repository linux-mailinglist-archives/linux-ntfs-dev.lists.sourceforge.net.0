Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 886357A673E
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Sep 2023 16:49:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qic2E-0004X3-4R;
	Tue, 19 Sep 2023 14:49:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qiaRU-0003BH-SD
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 13:07:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vG4Tzf8kO0LcYLw+cZi1qYlZspJjy+O6YTZUkpkEyuI=; b=a5yRoBLggZ77RPfmFj4kiqshXM
 W936irqFosAk+MgEkgKFeQVMkmsJH+1S+AxekmCvR6HwCjftnm/0MDVC6rllgYIrHlp+/pGZdHfLV
 VeYNBETXOY993YNSLbpTKlrFl3lfPVfsSQLf6LWingxoXH9zvmXS6hD4VQUf9Nbwaksw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vG4Tzf8kO0LcYLw+cZi1qYlZspJjy+O6YTZUkpkEyuI=; b=FkSCEFgVYa/PEOma2R1AfGGAfC
 0VjIZ33Yz9pE/vBcZ2Pqf0aKHonb1HPCIppbu/DcaK+EapcQsAmuaelcsCfhqxabOhIr5Nsn/OyyO
 xzwxMFJKRLexoAEZ+GZ0tuccqlktgeoXl3nWvbCKdZFXVuZLghCEXs2+TIElr64CGosU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiaRN-0003e1-Ib for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Sep 2023 13:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vG4Tzf8kO0LcYLw+cZi1qYlZspJjy+O6YTZUkpkEyuI=; b=CIE0ya6ucqYQAvryNkDuSTAm9k
 NPgkr3zmhN8Hban2XWHPThsg9/nlIp/ZAtOQIz4Fvp5UOCY8y8q3jv0twkC/5m8C3icPQZxCaFhuw
 aYuHM8P8bwzXylhGBHqoh48NXEt3+0zyDlDxbZq4vJTH1AWpS+0PiivpHN5lyNtpkL1ib7zU/Q6kj
 khYJAPWBVNSzhlkoZlqQwpyBYZwRtybWua479pBO6mACsk43W5DcjN1kPcpusDM956b0LAMqnQYc9
 nm3C4rann0EzGNbm9waRDU9NV/S7jfcHa1zapYylXuZQ5YxiU3iI23KOQowBjNVLjVQFKhaVCPTjj
 oXJZFWfA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qiaR3-00HMAE-Fa; Tue, 19 Sep 2023 13:06:37 +0000
Date: Tue, 19 Sep 2023 14:06:37 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Ryusuke Konishi <konishi.ryusuke@gmail.com>
Message-ID: <ZQmc3VHOIh3jOG8Z@casper.infradead.org>
References: <20230919045135.3635437-1-willy@infradead.org>
 <20230919045135.3635437-12-willy@infradead.org>
 <CAKFNMonjfsWBageg6vfWok9vvNEzjhXiqCCb+=cDFuwnTER95A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKFNMonjfsWBageg6vfWok9vvNEzjhXiqCCb+=cDFuwnTER95A@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 19, 2023 at 10:01:27PM +0900, Ryusuke Konishi
 wrote: > When I tried to test the patchset against 6.6-rc2, I encountered
 the > following error during the build: > > ERROR: modpost: "folio_c [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qiaRN-0003e1-Ib
X-Mailman-Approved-At: Tue, 19 Sep 2023 14:49:03 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 11/26] nilfs2: Convert
 nilfs_copy_page() to nilfs_copy_folio()
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
Cc: Pankaj Raghav <p.raghav@samsung.com>, linux-nilfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, gfs2@lists.linux.dev,
 ocfs2-devel@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Sep 19, 2023 at 10:01:27PM +0900, Ryusuke Konishi wrote:
> When I tried to test the patchset against 6.6-rc2, I encountered the
> following error during the build:
> 
>  ERROR: modpost: "folio_copy" [fs/nilfs2/nilfs2.ko] undefined!
> 
> It looks like "folio_copy" is not exported to modules.
> 
> I'll correct this manually for now and proceed with the review and
> testing, but could you please fix this build issue in some way ?

Thanks!  I'll export the symbol.  I did build nilfs2 as a module, but I
just did it with "make fs/" which doesn't run modpost.  Appreciate the
testing.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
