Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 990C35A2E16
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 26 Aug 2022 20:15:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRdrL-0004wm-Q6;
	Fri, 26 Aug 2022 18:15:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oRbfG-0002Mf-E9
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 15:54:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K3Xwfjtqcy08Dh4Uowyc7RheG//QPqDKPMV3mjxAE+A=; b=g43h543EPcWIzOgTh7RnXL97Vx
 s1nJ9jnUA4dlAwgfUWPB1qV4RJRY6v0i8DeahSAgoUSL1q71xARAm9cUCif9MJSOhj4eWnUl3llMF
 M154TKyzKn7+Rdks94I009wxvj0UwDooPm2TuDQJrnYAsc7g4Abimyn+sBZNbTqvUlzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K3Xwfjtqcy08Dh4Uowyc7RheG//QPqDKPMV3mjxAE+A=; b=g1uahIIUx5EPYAv5SuJ3BcQQKf
 ckISrzodMPqxr+zNjBTik6EiK1w8PDMLmg5cV+LxSqyVKKBvolyT4cnh22udGFEf2NrlU+vdIvw98
 7sq5OOb9/kXpxpyqs/khebiz14n608BRRN4AdgIk8iwHPDxcmo5upYHRugxxZEnX2FBs=;
Received: from mail-pg1-f176.google.com ([209.85.215.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRbfF-001f0L-LH for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 15:54:34 +0000
Received: by mail-pg1-f176.google.com with SMTP id s206so1751517pgs.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 26 Aug 2022 08:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=K3Xwfjtqcy08Dh4Uowyc7RheG//QPqDKPMV3mjxAE+A=;
 b=eJpog3UOd1kK1ruRtiGy9VSitgjWRSf/ss3vCIDaJmaVA5Ncev2d30+JIg7f65OjpD
 WALY4zVMYTBt4XMWuBijgrXn/lRdUbeH0spbUeZXrpzrH54F/r6ECXrEEYXYfCfKbrDv
 MfwWpWGRMvbr4Y9QuJe7E1awB12ssyxRf9M8bSsTTKYan0phk3lhhIgMjXdV7T1cREnn
 +ZMMx74LpVrbuo8KxsQKqRo8CjDILzaKZZopufGeapzQtVIWPEZ9y333UQo95XxgP8uT
 Y+4Gk0PtoIdbGuExq90ZmwTbUZ1TtDbA4WI2cl66rZTRZylHkez2VZ90M7flX4IzY3Lx
 Xw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=K3Xwfjtqcy08Dh4Uowyc7RheG//QPqDKPMV3mjxAE+A=;
 b=qfG9bQmQktLtu0Bj8yIibfF1TlWFwC9YawQY3SKrRq40mLBkxLpbFm9fbrYm1zgYiV
 pgKdMeG76Sgdg7F4Vj7NX5KPAQy64k71hMfcGdL9eQnbXFBgQov1VLfABKLrGO2+SNaZ
 yYbgOkkrpXbnHkZC/6PUmh6lUXG8g8I5kN0SAoSYcNBoBukw3/UkfMolG54EJ7PsjTIJ
 38h12ZtpUw2gnkxveR/knvCK7bRcD8TzQBjZraAh+hTZf/PhmlZN4svvnL3xIJDUbJds
 dX//I6K9TawHDsmlx9l2GwXHPo8M6Lm3LqXfyX7RxPh3OTkeYu0K7Xll1wMhd5okDmsm
 SA3Q==
X-Gm-Message-State: ACgBeo3cYCIdZuZK3g2RSQ91eg9etobgSFe8HBnXco2TN+GOJ3z4Xxka
 NjvmaJcfyb7c+rmK3KKjWM0=
X-Google-Smtp-Source: AA6agR5hFRNNmooUkl8v4ORBlsY6PUV3mY8lhREwZSxyQddlRDCXYJvn1Qo2MkKBnHIbIo8ziEpxqg==
X-Received: by 2002:a63:6ac3:0:b0:41d:17dc:eb66 with SMTP id
 f186-20020a636ac3000000b0041d17dceb66mr3658382pgc.384.1661529268056; 
 Fri, 26 Aug 2022 08:54:28 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 x14-20020a170902ec8e00b0016be527753bsm1772906plg.264.2022.08.26.08.54.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 08:54:27 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: yin31149@gmail.com
Date: Fri, 26 Aug 2022 23:54:05 +0800
Message-Id: <20220826155405.7506-1-yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826154231.6634-1-yin31149@gmail.com>
References: <20220826154231.6634-1-yin31149@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 26 Aug 2022 at 23:49, Hawkins Jiawei wrote: > > >
 > > Btw, this was in the original code, but those casts are ugly. Ideally
 > > there would be some way to get rid of them. But otherwise at l [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.176 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oRbfF-001f0L-LH
X-Mailman-Approved-At: Fri, 26 Aug 2022 18:15:10 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: change check order in
 ntfs_attr_find
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com, anton@tuxera.com,
 akpm@linux-foundation.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, 26 Aug 2022 at 23:49, Hawkins Jiawei <yin31149@gmail.com> wrote:
>
> >
> > Btw, this was in the original code, but those casts are ugly.  Ideally
> > there would be some way to get rid of them.  But otherwise at least
> > put a space after the u8.  "(u8 *)a < (u8 *)ctx->mrec".
> >
> > >               u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
> > >                              a->name_length * sizeof(ntfschar);
> > > -             if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
> > > -                 name_end > mrec_end)
> > > +             if (name_end > mrec_end)
> > >                       break;
> >
> > regards,
> > dan carpenter
> So maybe I can try to refactor these codes. But I wonder if this can be
> done in a seperate bug
Sorry for the typing error. I mean refactoring these code
in another seperate patch seems better.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
