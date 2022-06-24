Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A345596F2
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 24 Jun 2022 11:45:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4fs7-0003c2-VG; Fri, 24 Jun 2022 09:45:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1o4bUC-0003G1-6P
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 05:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aLjJG3wTDdhEgtq1ZKtCCF6LdFjXWGOjNdpJprykOdA=; b=EjImt/NvYeAh6IxKO8vRCN3sc6
 PIRg4ZDbGvGEoJZ/MyPgWZTdqOhHMxDxMHjEK5OxHPmrrJ6glmVzhdSKalwVb7SGXsPgCXstJjN0k
 +Eji5GIY5bbJQioVFj3V7xC/JcdlNXyG29orZ6GcNHvZpQfYAULUTVd0wh+A+4Km0DeM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aLjJG3wTDdhEgtq1ZKtCCF6LdFjXWGOjNdpJprykOdA=; b=j/bqVqvEF+1h8fq0BWFwtwYSFh
 HWA8hvG/fE1ib9MZybxv7jhHe2CsUmbWxyfWQI0NOntmt9zHOlXf3dSyncnnQ0hrUYL9AFiAGt/Yr
 yAC8yYKW4qrBhyET21HLIosGygGgpSvxlKZPFZcuBVHtcAW0oLm42boQMj5zlol7bQ10=;
Received: from mail-io1-f50.google.com ([209.85.166.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o4bU7-00BszT-P5
 for linux-ntfs-dev@lists.sourceforge.net; Fri, 24 Jun 2022 05:04:03 +0000
Received: by mail-io1-f50.google.com with SMTP id a10so1598884ioe.9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Jun 2022 22:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:from:to:cc:subject:references:mime-version
 :content-disposition:in-reply-to;
 bh=aLjJG3wTDdhEgtq1ZKtCCF6LdFjXWGOjNdpJprykOdA=;
 b=ZM1bUECxFa2yoUSkcaJn1sj2GOOIwzyJ9lQP4IWIXeIoHFS2b1SqfE9M0yGKlL0S29
 FZWBnuXVNmCAgHYU7zhV7rd3panA+a5OVzPpNAwhg6qmRFnPYljgtZ/KcEEHyc3mQmwr
 bApTxzi2uUxj0+6etZ+FqXsmJso/hZhfYKJMaJ5Opp2ZiiPUAcmbbp8uGKgyNF+et1xS
 9bhDpUvdglGyneVlAraINvOaasl9nYYnEfaRiaME2q6iwm+/pRek09a+BjO5vEh6UcIx
 4KJCjaArPcGNAKrJ4eKCz17Eh2bsTSsgzdhfX4b66F/I9kPsCf1tQoy00DckBGTth7PY
 o5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=aLjJG3wTDdhEgtq1ZKtCCF6LdFjXWGOjNdpJprykOdA=;
 b=cypPA9mfLL1xQJndbRpCFB4iQWWdtVOvAjEz4K571UDHn9OWGaobKakVAnYqmk3QdG
 nSUkNtfFlh3jhkaxnD1idrVdvTg4RDJyM7XEJ0t3awCenvSzW9/v/RCJ3l9J0PJjm/E4
 E00WqCqHvzhfv0US0+6iB0yi83IbeN0JDnRvNVIDU0rQLz7ca+9yoHRPFrfa9+H4yss6
 D8Lz6dbW40CiRRHB2PRQlUmjZkCqdrkLFwoZuYnhaYtglPsktxsdFbV/sipevqllIAj2
 H0v9sIVo0cmIWzn+EOm5DyXmyy4UgFMpWOVRkMr7iaJ8Z58mLFRfFhywBS+IiD6WwJ/s
 qSsg==
X-Gm-Message-State: AJIora8TazBVpYwGecIw6OGCxW14aWQs1sKr2mOZaN8LSPwnVHnsodt4
 fnRJ14bqZ7/McVyWJun9INcx34TTtFU=
X-Google-Smtp-Source: AGRyM1tlRVFPuMu7yVFH++RQkdtWXolPU+PEGhyLqYRxXv0PonINvxdj8vPhSlV7RbbqORyIgKCG2w==
X-Received: by 2002:a63:3c12:0:b0:40d:66f:8241 with SMTP id
 j18-20020a633c12000000b0040d066f8241mr10181476pga.612.1656042955417; 
 Thu, 23 Jun 2022 20:55:55 -0700 (PDT)
Received: from localhost ([193.203.214.57]) by smtp.gmail.com with ESMTPSA id
 a4-20020a170902710400b0016a1c61c603sm588280pll.154.2022.06.23.20.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jun 2022 20:55:54 -0700 (PDT)
Message-ID: <62b535ca.1c69fb81.b0647.1529@mx.google.com>
X-Google-Original-Message-ID: <20220624035553.GA980944@cgel.zte@gmail.com>
Date: Fri, 24 Jun 2022 03:55:53 +0000
From: CGEL <cgel.zte@gmail.com>
To: Namjae Jeon <linkinjeon@kernel.org>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623094956.977053-1-xu.xin16@zte.com.cn>
 <YrSeAGmk4GZndtdn@sol.localdomain>
 <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKYAXd8qoLKbWGX7omYUfarSugRnose8X8o3Zhb1XctiUtamQg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 24, 2022 at 11:33:28AM +0900, Namjae Jeon wrote:
 > 2022-06-24 2:08 GMT+09:00, Eric Biggers : > > On Thu, Jun 23,
 2022 at 09:49:56AM
 +0000, > >> From: xu xin > >> > >> As the bug descr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o4bU7-00BszT-P5
X-Mailman-Approved-At: Fri, 24 Jun 2022 09:45:03 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2] fs/ntfs: fix BUG_ON of
 ntfs_read_block()
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
Cc: Yang Yang <yang.yang29@zte.com.cn>, linux-ntfs-dev@lists.sourceforge.net,
 Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Eric Biggers <ebiggers@kernel.org>,
 xu.xin16@zte.com.cn, Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Zhang wenya <zhang.wenya1@zte.com.cn>,
 anton@tuxera.com, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Jun 24, 2022 at 11:33:28AM +0900, Namjae Jeon wrote:
> 2022-06-24 2:08 GMT+09:00, Eric Biggers <ebiggers@kernel.org>:
> > On Thu, Jun 23, 2022 at 09:49:56AM +0000, cgel.zte@gmail.com wrote:
> >> From: xu xin <xu.xin16@zte.com.cn>
> >>
> >> As the bug description at
> >> https://lore.kernel.org/lkml/20220623033635.973929-1-xu.xin16@zte.com.cn/
> >> attckers can use this bug to crash the system.
> >>
> >> So to avoid panic, remove the BUG_ON, and use ntfs_warning to output a
> >> warning to the syslog and return instead until someone really solve
> >> the problem.
> >>
> >> Cc: stable@vger.kernel.org
> >> Reported-by: Zeal Robot <zealci@zte.com.cn>
> >> Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
> >> Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
> >> Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
> >> Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
> >> Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
> >> Signed-off-by: xu xin <xu.xin16@zte.com.cn>
> >> ---
> >>
> >> Change for v2:
> >>  - Use ntfs_warning instead of WARN().
> >>  - Add the tag Cc: stable@vger.kernel.org.
> >> ---
> >>  fs/ntfs/aops.c | 7 ++++++-
> >>  1 file changed, 6 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
> >> index 5f4fb6ca6f2e..84d68efb4ace 100644
> >> --- a/fs/ntfs/aops.c
> >> +++ b/fs/ntfs/aops.c
> >> @@ -183,7 +183,12 @@ static int ntfs_read_block(struct page *page)
> >>  	vol = ni->vol;
> >>
> >>  	/* $MFT/$DATA must have its complete runlist in memory at all times. */
> >> -	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
> >> +	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
> >> +		ntfs_warning(vi->i_sb, "Error because ni->runlist.rl, ni->mft_no, "
> >> +				"and NInoAttr(ni) is null.");
> >> +		unlock_page(page);
> >> +		return -EINVAL;
> >> +	}
> >
> > A better warning message that doesn't rely on implementation details
> > (struct
> > field and macro names) would be "Runlist of $MFT/$DATA is not cached".
> > Also,
> > why does this situation happen in the first place?  Is there a way to
> > prevent
> > this situation in the first place?
> 
> ntfs_mapping_pairs_decompress() should return error pointer instead of NULL.
> Callers is checking error value using IS_ERR(). and the mapping pairs
> array of @MFT entry is empty, I think it's corrupted, it should cause
> mount failure.
> 
> I haven't checked if this patch fix the problem. Xu, Can you check it ?
> 

I have test it and it fixes the problem.

Thanks.

> diff --git a/fs/ntfs/runlist.c b/fs/ntfs/runlist.c
> index 97932fb5179c..31263fe0772f 100644
> --- a/fs/ntfs/runlist.c
> +++ b/fs/ntfs/runlist.c
> @@ -766,8 +766,11 @@ runlist_element
> *ntfs_mapping_pairs_decompress(const ntfs_volume *vol,
>                 return ERR_PTR(-EIO);
>         }
>         /* If the mapping pairs array is valid but empty, nothing to do. */
> -       if (!vcn && !*buf)
> +       if (!vcn && !*buf) {
> +               if (!old_rl)
> +                       return ERR_PTR(-EIO);
>                 return old_rl;
> +       }
>         /* Current position in runlist array. */
>         rlpos = 0;
>         /* Allocate first page and set current runlist size to one page. */
> 
> >
> > - Eric
> >


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
