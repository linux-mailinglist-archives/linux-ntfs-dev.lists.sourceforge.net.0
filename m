Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0924777B448
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 14 Aug 2023 10:37:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qVT5B-0005f6-Dx;
	Mon, 14 Aug 2023 08:37:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1qVLyd-0005K8-OK
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 14 Aug 2023 01:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WjW0MOP1LOzB+5KcE5lB+X1+5Ft6jIbkgD6APugUYy0=; b=jZPSqax9NRArcP+F6iUWstqMhv
 wUNNqF53jdDn5bSyZsIhs+/KFVZ9BZ1E0AlHnpL5lOYKMG79Cu68KYo/x4OsOAsXGQDyoR6epBpHU
 Z/G5vYmb1Q0WV9FSoyii3vHM02J7JoAoAISt9nYL2aU99z+dnGPesXIstdR1C83jYxAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WjW0MOP1LOzB+5KcE5lB+X1+5Ft6jIbkgD6APugUYy0=; b=KT9aRjXfFHAv4DOmrVbmb7zhV8
 t5Bvjf9vAgG3igPgmGR0bEDVHS7BFwpzFjFQDgfAliqC7JGC1ZWg9qopOto6nQHLmCzg7tQ3i4ojw
 chv6a21vjg7VzLun6K1uOCHYjaus2o1lYJZgC7cBfxsYK5oKe8YP6NHZx0DzCYGM1Vn8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qVLyd-0002wt-D2 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 14 Aug 2023 01:02:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8AA7C60281
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 14 Aug 2023 01:02:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED769C433C8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 14 Aug 2023 01:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1691974946;
 bh=JEEY10hBYz8RwhXPPVD6zF4+YQYQsXCRSg8FIpcrlVY=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=FOB/qY/PpdgHCtif2jsnF7NTFxHEmFbrI3NnLit3qzbbEwG0sHPOCAfEhTpS58s2i
 7zrZcLz9cA8dfipUEWmWoJb6euJQ4aIjWtG1Sof3Ho+0SREVOR0PINgxS/mhpwuPQI
 rE5ggXMCOD/e6KwTLUByfD0d6tLgZ+JNkip6wF1jenLYVMO7zXpSYFKgeqZ2z8nFEg
 2wKesPUUbsPrtaP76RRB4nZrB5W+FPUgMAWNBgl6zoeZ8fWe9NnL5aLs0q6auiTwEL
 IbWzHcbEyKtJXyDyigng30ra7xZpMpckRBQtSebqarla6TJdx/pJrXvn2S1g7kRRbn
 0Y9UEJMKiA5dg==
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-56d62a80727so2986018eaf.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 13 Aug 2023 18:02:25 -0700 (PDT)
X-Gm-Message-State: AOJu0YwIg2DxrO1e7rG1sHRqXwBWRvO6MMl7SjAt73828U/8xgGwLIv2
 BWKKQMuPF+y+1eP46PlF173MdC8+MP+T0Ob+p30=
X-Google-Smtp-Source: AGHT+IEZBAOsoH5R9sMuTJ0tT6LAbfT4e8g0Coz08nyYUPTnQN4yEKjF5zsRrsRYGnMLm7X+87vqmfeDUsDdJWyaSG8=
X-Received: by 2002:a05:6870:e985:b0:19f:e5a8:7525 with SMTP id
 r5-20020a056870e98500b0019fe5a87525mr7150030oao.12.1691974945110; Sun, 13 Aug
 2023 18:02:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:14c:0:b0:4e8:f6ff:2aab with HTTP; Sun, 13 Aug 2023
 18:02:24 -0700 (PDT)
In-Reply-To: <20230813055948.12513-1-ghandatmanas@gmail.com>
References: <20230813055948.12513-1-ghandatmanas@gmail.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Mon, 14 Aug 2023 10:02:24 +0900
X-Gmail-Original-Message-ID: <CAKYAXd8A9+Zcg=8wLV0h4fdcvybp=BB-a0yRKSTHmk0sQi26_A@mail.gmail.com>
Message-ID: <CAKYAXd8A9+Zcg=8wLV0h4fdcvybp=BB-a0yRKSTHmk0sQi26_A@mail.gmail.com>
To: Manas Ghandat <ghandatmanas@gmail.com>, anton@tuxera.com
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-08-13 14:59 GMT+09:00,
 Manas Ghandat <ghandatmanas@gmail.com>:
 Hi, > Currently there is not check for ni->itype.compressed.block_size when
 > a->data.non_resident.compression_unit is present and N [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qVLyd-0002wt-D2
X-Mailman-Approved-At: Mon, 14 Aug 2023 08:37:48 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v4] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
Cc: linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-08-13 14:59 GMT+09:00, Manas Ghandat <ghandatmanas@gmail.com>:
Hi,
> Currently there is not check for ni->itype.compressed.block_size when
> a->data.non_resident.compression_unit is present and NInoSparse(ni) is
> true. Added the required check to calculation of block size.
>
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
> Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b
> ---
> V3 -> V4: Fix description
> V2 -> V3: Fix patching issue.
> V1 -> V2: Cleaned up coding style.
>
>  fs/ntfs/inode.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
> index 6c3f38d66579..a657322874ed 100644
> --- a/fs/ntfs/inode.c
> +++ b/fs/ntfs/inode.c
> @@ -1077,6 +1077,15 @@ static int ntfs_read_locked_inode(struct inode *vi)
>  					goto unm_err_out;
>  				}
>  				if (a->data.non_resident.compression_unit) {
> +					if (a->data.non_resident.compression_unit +
> +					vol->cluster_size_bits > 32) {
> +						ntfs_error(vi->i_sb,
> +						"Found non-standard compression unit (%u).   Cannot handle this.",
> +						a->data.non_resident.compression_unit
> +						);
> +						err = -EOPNOTSUPP;
> +						goto unm_err_out;
> +					}
compression_unit seems to be used when the ntfs inode is compressed.
And it should be either 0 or 4 value. So, I think we can set related
compression block variables of ntfs inode only when ni is
NInoCompressed like this... Anton, Am I missing something ?

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index efe0602b4e51..e5a7d81d575b 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1076,7 +1076,8 @@ static int ntfs_read_locked_inode(struct inode *vi)
                                        err = -EOPNOTSUPP;
                                        goto unm_err_out;
                                }
-                               if (a->data.non_resident.compression_unit) {
+                               if (NInoCompressed(ni) &&
+                                   a->data.non_resident.compression_unit) {
                                        ni->itype.compressed.block_size = 1U <<
                                                        (a->data.non_resident.
                                                        compression_unit +

>  					ni->itype.compressed.block_size = 1U <<
>  							(a->data.non_resident.
>  							compression_unit +
> --
> 2.37.2
>
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
