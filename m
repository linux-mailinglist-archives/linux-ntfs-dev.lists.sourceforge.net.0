Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD46343028
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 20 Mar 2021 23:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v+EwdR5N1tISgSbwcNoOud7SUFfWbzA8o790nC96tWg=; b=me2LYr22O08pj5gTNdf4lhn6K
	QN4+s2ILKztawizGKpdKGzGZxC8RjOSST4Dv35q7N7WC644AO2l3iMsKUGackt+GFuYALaDT8fRub
	C19hRRpAB23OTU2jywgbBMK86NxJn9dFFpCK66lCT7KUj85aZcK9AdVnqSpFYyJP0CbcI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lNkQE-0000jh-G3; Sat, 20 Mar 2021 22:50:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oleksandr@natalenko.name>) id 1lNk3v-0004HD-LD
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 20 Mar 2021 22:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UsXNI5haAYV6BEKBj6L7LHu9P+RpP6CzmUdNITyPG0o=; b=KabKt9Jany4g2xUIqY0I/oB4+x
 25xTHlMmnU16dTRyCfJAzO5siKyIMB/qAF1XGDwkUTngZVcYUkSV+KPUm67Ygc+jM/oHtcvKN4u83
 1I1FFoZdiMqMfDLBfEYAkuxfje00GlNjFsDLh8V4Tj5EVWmsTWfTI+F6J4ITIm0M1JE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UsXNI5haAYV6BEKBj6L7LHu9P+RpP6CzmUdNITyPG0o=; b=ADxOhvy287RCaokx6Ass6+qPyc
 qqsb3vn63CYninvpV+a33+a2GBM6vjJmYF9twVRkr3sf6TUqq7ybCxb1FxAZpUzSvQ62JVvgsGrRD
 7Is9TpJ5t1ueTjlJPLWiY7bvh4Y7HscoFAnFGDBK6i3acpVX6VANArMUOSmi7cPcTO0E=;
Received: from vulcan.natalenko.name ([104.207.131.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lNk3o-007Rmy-Aa
 for linux-ntfs-dev@lists.sourceforge.net; Sat, 20 Mar 2021 22:27:15 +0000
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id D43B19EC611;
 Sat, 20 Mar 2021 23:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1616279208;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UsXNI5haAYV6BEKBj6L7LHu9P+RpP6CzmUdNITyPG0o=;
 b=sI6BioZLtNV835zQxrGbErLi+I0OXODLYz6UKZCHe4t4NMX2FhUxEesRWp6M5kKu7kG8F1
 aM5SZh79zgODYJna0gAv/BoFU2bUQDjp2jNCGL42DfiFUTYqP02+PlJOjYkNh/SWYZW1DD
 ZIrjsA+NhqIVNea2gi3kbDdk6G3NN7I=
Date: Sat, 20 Mar 2021 23:26:48 +0100
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210320222648.qgqkqpdxzfejrfbt@spock.localdomain>
References: <20210319185210.1703925-1-almaz.alexandrovich@paragon-software.com>
 <20210319185210.1703925-10-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319185210.1703925-10-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: paragon-software.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lNk3o-007Rmy-Aa
X-Mailman-Approved-At: Sat, 20 Mar 2021 22:50:13 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v24 09/10] fs/ntfs3: Add NTFS3 in
 fs/Kconfig and fs/Makefile
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
From: Oleksandr Natalenko via Linux-NTFS-Dev
 <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Mar 19, 2021 at 09:52:09PM +0300, Konstantin Komarov wrote:
> This adds NTFS3 in fs/Kconfig and fs/Makefile
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  fs/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index a55bda4233bb..f61330e4efc0 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -145,6 +145,7 @@ menu "DOS/FAT/EXFAT/NT Filesystems"
>  source "fs/fat/Kconfig"
>  source "fs/exfat/Kconfig"
>  source "fs/ntfs/Kconfig"
> +source "fs/ntfs3/Kconfig"
>  
>  endmenu
>  endif # BLOCK
> -- 
> 2.25.4
> 

It seems fs/Makefile modification has been dropped from this patch for
some reason. Mistake?

-- 
  Oleksandr Natalenko (post-factum)


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
