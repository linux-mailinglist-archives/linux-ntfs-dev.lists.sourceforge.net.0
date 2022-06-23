Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F07B5576EB
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 11:44:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4JOM-00041p-98; Thu, 23 Jun 2022 09:44:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1o4IgT-0002yZ-Bu
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 08:59:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PZqL3nImpxdufaOwqet7SR9Z+NkTikarvBkFeRnT+2I=; b=g4gORRCe0nj6DfDmBWcMhosOUI
 jSL2EkOJ4gOgKX2NypJuoodogCoQKofGWUitFPMdsZ/wdS654RDxJ9xe94fDSH5HUsG8DzxqOtXds
 y1FZJqCjCemMVpuLDfgodHOi/5qGVJCiCfqtkcNGSCqvtMgY60dIdDor2evVeYJ2iCbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PZqL3nImpxdufaOwqet7SR9Z+NkTikarvBkFeRnT+2I=; b=H9+GgBhpz+aDILFChuvbtbVlqM
 wQ+2E+LyjOjP1wyqd09+BoAVws622mpoUYtC6pZZnG3/YD1slHfmqedRyz35Y3bKWHQ7hyx0UXxxK
 C4GTSCJgj70x3RxxT3i7n4Rw4AxHWlOjhAcU+YTBakzDd9y0TFMC6UEjbCh/24ODYlfo=;
Received: from mail-pf1-f176.google.com ([209.85.210.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o4IgQ-00B2JM-A7
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 08:59:27 +0000
Received: by mail-pf1-f176.google.com with SMTP id n12so11555517pfq.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Jun 2022 01:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:from:to:cc:subject:references:mime-version
 :content-disposition:in-reply-to;
 bh=PZqL3nImpxdufaOwqet7SR9Z+NkTikarvBkFeRnT+2I=;
 b=Y5KS4zXn7ur6b4E8fuA3TbU8g8dxuW/AgKiB7Wj8gs9cEyR+arGeu9skqOEq16L9OS
 Bitan0gbgM1UuggXMCi2yTlk1ljFQOqucEoOj8Jty4kInZF8cW39DeCjsZ6RNhdK2iqV
 1vy8tH9bTqKQorqbo26I7sTxYl56mPICRNWVkZHmoLUF8SwybYUWScE0npABVn/wc+vH
 ugvpoCTHZWlcEXNucd4OHk3VEHeUpfFUp/H1mz5AAyhLJbbnRdvqstD8EmtbeS0cbySx
 GCDM3okbT3ATnTIoVI5GF9Ahm3eNecFY6UG5OMGXBJ+seVIZy5WVQsxkBRjCdK75m9EK
 Czsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=PZqL3nImpxdufaOwqet7SR9Z+NkTikarvBkFeRnT+2I=;
 b=GROrGQ/2ugItfX3qnyMC95STQvAafxlTNPIcwVNiLbKW725x/oGRtnhwKaHBCNRidb
 RudxVAtF4vE834cwNUw+wIkRudHR7uy506s5irZCv143+w1S4q+GZGTjKD6NA6es9niU
 ywVOQJdHlzqOHYFw6k+2QEj9/fu6B/0RmmPuccvSMhScCRm/nEbPAJ0aPbOKQnkhBreC
 I22RA7mYca3Jgvv2BVJ6B/CF/ktKjJh2TD6HFOjO38oyf8l7cBJpmgLK6gAlCpfh1oWe
 trqElBasuqgvx7hksTZDxB+hv9w96NFwP1ZDF1e2tRb8wTwNSeGTgb6VsgUWFnz5FAQE
 GIoQ==
X-Gm-Message-State: AJIora9mJ08Aq7VjlVbj5IUg0c+ZtKoYCUNajvnDn6sj6T7MTa4Iiq+p
 OL1fDWngcvlKl9Cg7FJsj9k=
X-Google-Smtp-Source: AGRyM1vKmXk/uLI5dSeZfcXv16Z9wUccj2R6DJyUdHx7ZMvSxDwPoZabxYlZN0NUpy61Zt7pnNEW8Q==
X-Received: by 2002:a63:4c:0:b0:408:c003:a45c with SMTP id
 73-20020a63004c000000b00408c003a45cmr6692392pga.252.1655974760833; 
 Thu, 23 Jun 2022 01:59:20 -0700 (PDT)
Received: from localhost ([193.203.214.57]) by smtp.gmail.com with ESMTPSA id
 d6-20020a170902654600b0016357fd0fd1sm14182078pln.69.2022.06.23.01.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jun 2022 01:59:20 -0700 (PDT)
Message-ID: <62b42b68.1c69fb81.9dc0f.49bb@mx.google.com>
X-Google-Original-Message-ID: <20220623085918.GB976022@cgel.zte@gmail.com>
Date: Thu, 23 Jun 2022 08:59:18 +0000
From: CGEL <cgel.zte@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623035131.974098-1-xu.xin16@zte.com.cn>
 <YrQc8xq+QezRcLi7@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrQc8xq+QezRcLi7@kroah.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 23, 2022 at 09:57:39AM +0200, Greg KH wrote: >
 On Thu, Jun 23, 2022 at 03:51:31AM +0000, > > From: xu xin > > > > As the
 bug description, attckers can use this bug to crash the system [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o4IgQ-00B2JM-A7
X-Mailman-Approved-At: Thu, 23 Jun 2022 09:44:48 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] fs/ntfs: fix BUG_ON of
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
Cc: linux-ntfs-dev@lists.sourceforge.net, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Yang Yang <yang.yang29@zte.com.cn>, xu.xin16@zte.com.cn,
 Jiang Xuexin <jiang.xuexin@zte.com.cn>,
 syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Zhang wenya <zhang.wenya1@zte.com.cn>,
 anton@tuxera.com, Songyi Zhang <zhang.songyi@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jun 23, 2022 at 09:57:39AM +0200, Greg KH wrote:
> On Thu, Jun 23, 2022 at 03:51:31AM +0000, cgel.zte@gmail.com wrote:
> > From: xu xin <xu.xin16@zte.com.cn>
> > 
> > As the bug description, attckers can use this bug to crash the system
> > When CONFIG_NTFS_FS is set.
> > 
> > So remove the BUG_ON, and use WARN and return instead until someone
> > really solve the bug.
> > 
> > Reported-by: Zeal Robot <zealci@zte.com.cn>
> > Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com
> > Reviewed-by: Songyi Zhang <zhang.songyi@zte.com.cn>
> > Reviewed-by: Yang Yang <yang.yang29@zte.com.cn>
> > Reviewed-by: Jiang Xuexin<jiang.xuexin@zte.com.cn>
> > Reviewed-by: Zhang wenya<zhang.wenya1@zte.com.cn>
> > Signed-off-by: xu xin <xu.xin16@zte.com.cn>
> > ---
> >  fs/ntfs/aops.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > --- a/fs/ntfs/aops.c
> > +++ b/fs/ntfs/aops.c
> > @@ -183,7 +183,11 @@ static int ntfs_read_block(struct page *page)
> >  	vol = ni->vol;
> >  
> >  	/* $MFT/$DATA must have its complete runlist in memory at all times. */
> > -	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
> > +	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
> > +		WARN(1, "NTFS: ni->runlist.rl, ni->mft_no, and NInoAttr(ni) is null!\n");
> > +		unlock_page(page);
> > +		return -EINVAL;
> > +	}
> >  
> >  	blocksize = vol->sb->s_blocksize;
> >  	blocksize_bits = vol->sb->s_blocksize_bits;
> > -- 
> > 2.25.1
> > 
> 
> <formletter>
> 
> This is not the correct way to submit patches for inclusion in the
> stable kernel tree.  Please read:
>     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> for how to do this properly.
>

Sorry. I'll rewrite a patch to fix it. 

Thanks.

> </formletter>


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
