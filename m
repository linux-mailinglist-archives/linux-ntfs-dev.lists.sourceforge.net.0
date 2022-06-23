Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF46C5576EC
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 11:44:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4JOM-00041k-75; Thu, 23 Jun 2022 09:44:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cgel.zte@gmail.com>) id 1o4Iec-0002ui-T3
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 08:57:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XuNmdMIPTwgFRn+KXfNoshLUyGzQ84uByLpqYdBwMbo=; b=U3rJugiOg8LA1Qcp9ClXEhM1fs
 WguybxQb7fj+iILkfJa/6lFX7a7+vRG/5aqGLj9+Y8DkHclzhzaqLmoy9U/nakwXy1SZvUZ5HwscP
 yp7ajUoxhbAHLFLHVZGHmsMCmqTKozlglUZoXb0QuHqrpGIEFxNvalA9y2P3dt6L7YKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XuNmdMIPTwgFRn+KXfNoshLUyGzQ84uByLpqYdBwMbo=; b=JTu4uO1ARgPrrS0HD4h4xwKJFb
 3v30fyyX8EKoqC5O10B9mvM3yXhJ2EfMXXwh+x46N71FMKD72ALm4SB26F7fNQrYVVks72/6KUaPo
 eKjTiJrMMCjRWwRd9Eq1okRsH/QH37Ej+uEX1F8FhE6nesByNRDHufxNHZ78B/pYLa9s=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o4IeW-00B2Cp-LB
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 08:57:33 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 h9-20020a17090a648900b001ecb8596e43so1926093pjj.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 23 Jun 2022 01:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:from:to:cc:subject:references:mime-version
 :content-disposition:in-reply-to;
 bh=XuNmdMIPTwgFRn+KXfNoshLUyGzQ84uByLpqYdBwMbo=;
 b=U/ubG/f6T+EUydId86UG4ca9OLcoHD5k4QQ+3eWunYtB5/55nD7030zV+fXBywy/N8
 rnIgSdfB+mbLoTBsYX+LF0KMiQc/tCvdbiOPBmGHEWYljqJ7+Ytp6ICBpcUlIxLwFszu
 Bd75dGeE3PfTsG7RxUMO+p9USOiA8uuUGemciMWT3XztxTLJfkA1W/KrDSzoBc3nKrUL
 Cwcfd75z6z36xyZzdLGXmsmBmNz77+sTdpo257ezhnuJkv+JyQ+dg5OeZZwzveFMgHSf
 WybOMRUVwz2uedWXTuGnCWlCv3haS3eK3HoXG8O+YXEigs7NNQE0yfgkxZHHJTzcQ1mN
 h3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=XuNmdMIPTwgFRn+KXfNoshLUyGzQ84uByLpqYdBwMbo=;
 b=gaYd0/XRmWAz1rxa8eVZd+1uzvplX1boXavMT0VxXke7El+DhYZM4sbjOEn+rrv3dm
 D3+VAXNHbbVU8sgTx9TPh6VRtR2+2Qo5B/9NpxwxpVnqgxSeuJYE0I4ctUeZM1/kXlQL
 GLDqMV9ZlQF/U5eFYCP49Z/SoUO1dK7TV40FaXKb2aAlZsGRfay0CXf0ovwhTHYFBDSu
 VcpE0mRMI+aMaKihECNvP8rpYYDnsroglhl7lCb7gXCNzEA3XQOj7uC3CkwV9JCU7R7g
 jaIqCUvd0uPHXnowoeSxOZ0I1gKknOyAomJYZ6cgl5bC2PZu+pVHuCAyxMcCiJQNZCE/
 pvDg==
X-Gm-Message-State: AJIora9hrJA2ideiuYAtdwkfOxXYIfwr5IeTkObc3g7G/DrlcI8lksLY
 xAz02Cbs7tzuuLeVWqzdilMYJKasKbk=
X-Google-Smtp-Source: AGRyM1tmqcpLbADtd2gc4SGwWOE/T7MnAN+wXT6gAvIivgKm0kg/9B7WObW+jCA563pNquyOh73RBw==
X-Received: by 2002:a17:90b:3c0c:b0:1ec:c5b1:ce56 with SMTP id
 pb12-20020a17090b3c0c00b001ecc5b1ce56mr3017768pjb.102.1655974643009; 
 Thu, 23 Jun 2022 01:57:23 -0700 (PDT)
Received: from localhost ([193.203.214.57]) by smtp.gmail.com with ESMTPSA id
 o12-20020a62f90c000000b0051be16492basm15178139pfh.195.2022.06.23.01.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jun 2022 01:57:22 -0700 (PDT)
Message-ID: <62b42af2.1c69fb81.6e00c.63b1@mx.google.com>
X-Google-Original-Message-ID: <20220623085721.GA976022@cgel.zte@gmail.com>
Date: Thu, 23 Jun 2022 08:57:21 +0000
From: CGEL <cgel.zte@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
 <20220623035131.974098-1-xu.xin16@zte.com.cn>
 <YrQc4ZOBGhmpvfaP@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrQc4ZOBGhmpvfaP@kroah.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 23, 2022 at 09:57:21AM +0200, Greg KH wrote: >
 On Thu, Jun 23, 2022 at 03:51:31AM +0000, > > From: xu xin > > > > As the
 bug description, attckers can use this bug to crash the system [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.46 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o4IeW-00B2Cp-LB
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

On Thu, Jun 23, 2022 at 09:57:21AM +0200, Greg KH wrote:
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
> > diff --git a/fs/ntfs/aops.c b/fs/ntfs/aops.c
> > index 5f4fb6ca6f2e..b6fd7e711420 100644
> > --- a/fs/ntfs/aops.c
> > +++ b/fs/ntfs/aops.c
> > @@ -183,7 +183,11 @@ static int ntfs_read_block(struct page *page)
> >  	vol = ni->vol;
> >  
> >  	/* $MFT/$DATA must have its complete runlist in memory at all times. */
> > -	BUG_ON(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni));
> > +	if (unlikely(!ni->runlist.rl && !ni->mft_no && !NInoAttr(ni))) {
> > +		WARN(1, "NTFS: ni->runlist.rl, ni->mft_no, and NInoAttr(ni) is null!\n");
> 
> So for systems with panic-on-warn, you are still crashing?  Why is this
> WARN() line still needed here?
>

Sorry, I forgot about panic-on-warn. Use pr_warn() may be better.
I'll send a patch-v2 .

> thanks,
> 
> greg k-h


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
