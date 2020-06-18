Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4B51FFF67
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 19 Jun 2020 02:42:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jm57I-0008Ag-70; Fri, 19 Jun 2020 00:42:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jlsF6-0003xC-Fq
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Jun 2020 10:58:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QV6cbGEvTmg4EP5mCMecs6lSs4tu/y7CU5MY1AxKCy0=; b=VKdhQZ9s5TH5N0E0ZJk/z7QOoW
 1QVfJmD7MqO218xbd8hWh/ZHrlq+auao+Ibcq+OYRoI3ZY5N2uwwoRlKSJ6C4FfaU/Dkv6OCRgVz+
 H/SzAGrZtH9kO+o0B9PmK7gwMsS6Md4bam2FVEZY4Q6DQ2YIby82QxNcGiOVuCEv2ERI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QV6cbGEvTmg4EP5mCMecs6lSs4tu/y7CU5MY1AxKCy0=; b=NVIR3mpiHcwx8hK1pw2Gi0fFy/
 YmZ73u4nWBuBm9wxu/HzbTYKajTf/y2GiHyMZRcr/OE99uD6KfMxVDUxkxfOlDDn0ZXdmq2eqQjHy
 Hg5QGr9N3dcxn8bKrrg7xG83X4DXUJSX+SqQR6/JljsVer0PExHjiHZZu+acz43I0V8s=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlsEp-008ILC-Mi
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 18 Jun 2020 10:57:59 +0000
IronPort-SDR: oBmobDcXZ0bVAwXIQWgfWIs4yJIO+iBJzGLhAXcAiGHJ7apICZyqFykJRLWePhO3L2VIroySDO
 oIThjff3E1QQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="144041061"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="144041061"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:57:37 -0700
IronPort-SDR: KQ0bRVV6HMcoWi2oVOho9W59xLvJCUtlMWa9SSzfZ+ITr8bmhv6m0O4wBNRwxQjb5qkoFSOWK5
 nMwo/yjuT+lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="263568748"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2020 03:57:36 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jlsEl-00EFae-68; Thu, 18 Jun 2020 13:57:39 +0300
Date: Thu, 18 Jun 2020 13:57:39 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Richard Russon (FlatCap)" <ldm@flatcap.org>,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net
Message-ID: <20200618105739.GQ2428291@smile.fi.intel.com>
References: <20200422130317.38683-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422130317.38683-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1jlsEp-008ILC-Mi
X-Mailman-Approved-At: Fri, 19 Jun 2020 00:42:47 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v1] partitions/ldm: Replace uuid_copy()
 with import_uuid() where it makes sense
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Apr 22, 2020 at 04:03:17PM +0300, Andy Shevchenko wrote:
> There is a specific API to treat raw data as UUID, i.e. import_uuid().
> Use it instead of uuid_copy() with explicit casting.

Any comment on this?

> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  block/partitions/ldm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/block/partitions/ldm.c b/block/partitions/ldm.c
> index 6fdfcb40c537b..d333786b5c7eb 100644
> --- a/block/partitions/ldm.c
> +++ b/block/partitions/ldm.c
> @@ -910,7 +910,7 @@ static bool ldm_parse_dsk4 (const u8 *buffer, int buflen, struct vblk *vb)
>  		return false;
>  
>  	disk = &vb->vblk.disk;
> -	uuid_copy(&disk->disk_id, (uuid_t *)(buffer + 0x18 + r_name));
> +	import_uuid(&disk->disk_id, buffer + 0x18 + r_name);
>  	return true;
>  }
>  
> -- 
> 2.26.1
> 

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
