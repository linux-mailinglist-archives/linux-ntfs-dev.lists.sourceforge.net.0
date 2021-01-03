Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F7C2E8F69
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Jan 2021 03:24:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kwFXV-0005vy-2t; Mon, 04 Jan 2021 02:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>) id 1kwBXV-0007Ih-49
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 22:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iIGt/9zpbYpG6wzXWtXdyQg2ktAIzGOKEGAmeFmpvRg=; b=YAVvJK2+2U4SNnTLoZsIguHT44
 XMzGSNylYKShKYrUlXPejGUqYbdr3mApviJTvNRcSMuSz+cNeq2ON+uxQJTvJ1d+qFinkdXzCXk3w
 yXBV52ek314wAsIanNy5putYUCbrpPN4u2cO3i/Vz88hyWRyokSqH8Bu/muD/l3cuFFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iIGt/9zpbYpG6wzXWtXdyQg2ktAIzGOKEGAmeFmpvRg=; b=dsOZUkLXGbxrBsNY4259ApxmAJ
 OrrxQAxgvPe5Mk8YczlfGciJ7pR6Z4O8n575rS4mpv7ViH8/0mG5tc6LIZUOOZwpa4We3GX6ntSN6
 hoiw966OM0UPsBgB3BYR2DmJnTLHP1DeqsjH6TP2hinzUOjQmZDcQ0YstoVHAxI+cZNo=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kwBXQ-004Swm-Vq
 for linux-ntfs-dev@lists.sourceforge.net; Sun, 03 Jan 2021 22:07:53 +0000
Received: by mail-lf1-f44.google.com with SMTP id h205so60251435lfd.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 03 Jan 2021 14:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iIGt/9zpbYpG6wzXWtXdyQg2ktAIzGOKEGAmeFmpvRg=;
 b=ZWVFggDpWHLYGN7D+phAIvoSpc716LmaO+EBAYcfKzeGscBeaZcSwYAgT10co1BLlk
 7/2WasNQI8ysauoXkvSAbPiaRQP90om287P3OZ5fDtwU6Z/q2TMnXPtKXPB5MGKJBxIG
 iGozzcRneCPnxPQrDigW3jfBjJrLEMyvUhpRlrVn4rYP1AytyvHECnv0iE4+I5wSIhNE
 vknuKXUmVUcyXK805rwU85FbepFk3n9acVh/ebKo7csKRpcV3z2nNDx9qmmjB3Na7p4A
 XLpPlFT3W/MQEW2fNi2Dpw+lXVG6BZhT6qaZj17QKibTJzw6qzlf3JH49g9OXt0h/Wip
 Fh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iIGt/9zpbYpG6wzXWtXdyQg2ktAIzGOKEGAmeFmpvRg=;
 b=Nc8DDuKL+TThYv5U21y64RM/Ad26Luj84X/gQunxNHnDX2nyblB8T01wfwdqtOEmeJ
 IWNDQvMjNsk3zRCgKVcdvEnQWSXoOUNHquDcacB1bTTBm6i1nVKvj1RzdAx1jkylavng
 lAXyR5/yqmTHE/E2G3of3wk8o3jo2n0WWzs8naqu6My+s4pgnoPDoOoDasPh9rkFXv14
 05OfxG+sQqSfouIGYFQF7RzSlHfFlr0SDSV30nkw6P1EXbwyjroG+endO43WOU9rBfi3
 oSFm7vjSd3z4IRXc4/EAJ4vGMMmubHD5kluGg8DfdiRj1G0WpxdItBFgUQ9HEkB26bXb
 ze/Q==
X-Gm-Message-State: AOAM533lgrJMMYR7I/NedDoLgbgtx/GovQgrHgIFAYao/hqMD7lvZ1J1
 +1kcyC3KODqVGVjwPAHtBog=
X-Google-Smtp-Source: ABdhPJyBOTNRTyOCBerwLXvB8C0DG5CIj1T1Ii1iriOBFi17B/jVs4BMmb8uOwbdo2W1KQUgazeDlA==
X-Received: by 2002:ac2:44ba:: with SMTP id c26mr29339438lfm.132.1609711662388; 
 Sun, 03 Jan 2021 14:07:42 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id m8sm7054382lfg.134.2021.01.03.14.07.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jan 2021 14:07:41 -0800 (PST)
Date: Mon, 4 Jan 2021 00:07:39 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Message-ID: <20210103220739.2gkh6gy3iatv4fog@kari-VirtualBox>
References: <20201231152401.3162425-1-almaz.alexandrovich@paragon-software.com>
 <20201231152401.3162425-9-almaz.alexandrovich@paragon-software.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231152401.3162425-9-almaz.alexandrovich@paragon-software.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kwBXQ-004Swm-Vq
X-Mailman-Approved-At: Mon, 04 Jan 2021 02:24:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v17 08/10] fs/ntfs3: Add Kconfig,
 Makefile and doc
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
Cc: andy.lavr@gmail.com, nborisov@suse.com, linux-kernel@vger.kernel.org,
 rdunlap@infradead.org, aaptel@suse.com, willy@infradead.org, dsterba@suse.cz,
 ebiggers@kernel.org, joe@perches.com, hch@lst.de, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 dan.carpenter@oracle.com, pali@kernel.org, mark@harmstone.com,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Dec 31, 2020 at 06:23:59PM +0300, Konstantin Komarov wrote:
> This adds Kconfig, Makefile and doc
> 
> Signed-off-by: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> ---
>  Documentation/filesystems/ntfs3.rst | 107 ++++++++++++++++++++++++++++
>  fs/ntfs3/Kconfig                    |  41 +++++++++++
>  fs/ntfs3/Makefile                   |  31 ++++++++

Also Documentation/filesystems/index.rst should contain ntfs3.

>  3 files changed, 179 insertions(+)
>  create mode 100644 Documentation/filesystems/ntfs3.rst
>  create mode 100644 fs/ntfs3/Kconfig
>  create mode 100644 fs/ntfs3/Makefile
> 

> diff --git a/fs/ntfs3/Kconfig b/fs/ntfs3/Kconfig
> new file mode 100644
> index 000000000000..f9b732f4a5a0
> --- /dev/null
> +++ b/fs/ntfs3/Kconfig
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +config NTFS3_FS
> +	tristate "NTFS Read-Write file system support"
> +	select NLS
> +	help
> +	  Windows OS native file system (NTFS) support up to NTFS version 3.1.
> +
> +	  Y or M enables the NTFS3 driver with full features enabled (read,
> +	  write, journal replaying, sparse/compressed files support).
> +	  File system type to use on mount is "ntfs3". Module name (M option)
> +	  is also "ntfs3".
> +
> +	  Documentation: <file:Documentation/filesystems/ntfs3.rst>
> +
> +config NTFS3_64BIT_CLUSTER
> +	bool "64 bits per NTFS clusters"
> +	depends on NTFS3_FS && 64BIT
> +	help
> +	  Windows implementation of ntfs.sys uses 32 bits per clusters.
> +	  If activated 64 bits per clusters you will be able to use 4k cluster
> +	  for 16T+ volumes. Windows will not be able to mount such volumes.
> +
> +	  It is recommended to say N here.
> +
> +config NTFS3_LZX_XPRESS
> +	bool "activate support of external compressions lzx/xpress"
> +	depends on NTFS3_FS
> +	help
> +	  In Windows 10 one can use command "compact" to compress any files.
> +	  4 possible variants of compression are: xpress4k, xpress8k, xpress16 and lzx.
> +	  To read such "compacted" files say Y here.

It would be nice that we tell what is recommend. I think that this is recommend.
Of course if this use lot's of resource that is different story but I do not
think that is the case.

> +
> +config NTFS3_POSIX_ACL
> +	bool "NTFS POSIX Access Control Lists"
> +	depends on NTFS3_FS
> +	select FS_POSIX_ACL
> +	help
> +	  POSIX Access Control Lists (ACLs) support additional access rights
> +	  for users and groups beyond the standard owner/group/world scheme,
> +	  and this option selects support for ACLs specifically for ntfs
> +	  filesystems.

Same here. Let's suggest what user should do. Is this recommend if we wan't 
to use volume also in Windows?


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
