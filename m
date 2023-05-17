Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC06870649E
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 17 May 2023 11:52:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pzDq4-00052g-Tj;
	Wed, 17 May 2023 09:52:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pzCke-0007MH-W4
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 08:43:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wnaChFEIZQ4EXgag0PUblISYHetxnlM1Z/8IjcWmHpw=; b=H0+KOsTJ1MrHIcMkFji+lc22bI
 hpV98sSKISvvYnZAhoYgw0j4yg+9K5ZnnyB/sGh9KS5z663KCnRM109bYCMwODDJC3xxOEr+PKh2Q
 E+dpjtPDY6Bryw6loUrqR3iI6c1jBxRd5cdp1c1D6fV7G6MlQX1PALBgVR9TEmHXZR8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wnaChFEIZQ4EXgag0PUblISYHetxnlM1Z/8IjcWmHpw=; b=GbDjqus+bLb4jA7NMx7qBs1B6G
 v+nwezkn2eQI2InPMKESWYZF7wH0B1CAYpqrnEwa0Y9ckmWafWSrN+b1GpCeR927Nz2qWOWCnwoeC
 W1TBWDhV20nMrmZGr8Hygee60+m+3OP2bDVliAypDDvefYPs3ZvUCTcSYZJgdS0Mi9BU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzCkf-0002EQ-2D for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 17 May 2023 08:43:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AC2C461716;
 Wed, 17 May 2023 08:43:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C38C433D2;
 Wed, 17 May 2023 08:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684312991;
 bh=FrnAsONyc+Le8DGkA8Xm+odhQ87aaSFTQsnOsAprNns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EcjPgRPJ9y2TMcoMBIjgPfMVCGjktyrY1r4/MabiKVb2/H5jHNS9upaRIh2oLmJqq
 NAZ1Z5mAIl05WUjG2o72TGSPJ8EcTQlv2+btFmdr8RhMZczr0bHzSPocxLKxJakae4
 vU1DJ4OJNgG1jm/xQdydjICS8KE9dx0TMpEs81KOWo/DTpUvl+ALAqBmnOm4LF1QQC
 fFC2Se6XYf0d0pKR57OPsJq4RSyIdutYY01M0dLnIGb5rClNOPAki1/BACAf9hKAtq
 xKp+v4B8legptTidynw5Ib8GlrVIGK5/EW3uK7X1gdjqDoFXINH8/fqPyd3rF05bNY
 0FyihkP1jaI5g==
Date: Wed, 17 May 2023 10:43:06 +0200
From: Christian Brauner <brauner@kernel.org>
To: Namjae Jeon <linkinjeon@kernel.org>
Message-ID: <20230517-keimen-teesieb-d606296295ba@brauner>
References: <20230517070739.6505-1-linkinjeon@kernel.org>
 <4125c148-a4f4-edd2-3009-0283246f8a95@gmail.com>
 <CAKYAXd_=kXjKnmfiSEuTLG0fd6Ezj+7_R_ZSWntbvUgQ9Hyx0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKYAXd_=kXjKnmfiSEuTLG0fd6Ezj+7_R_ZSWntbvUgQ9Hyx0w@mail.gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 17, 2023 at 05:26:59PM +0900, Namjae Jeon wrote:
 > 2023-05-17 16:37 GMT+09:00, Bagas Sanjaya <bagasdotme@gmail.com>: > > On
 5/17/23 14:07, Namjae Jeon wrote: > >> I'm volunteering to help [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pzCkf-0002EQ-2D
X-Mailman-Approved-At: Wed, 17 May 2023 09:52:54 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs: Add myself as a reviewer
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>, akpm@linux-foundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, May 17, 2023 at 05:26:59PM +0900, Namjae Jeon wrote:
> 2023-05-17 16:37 GMT+09:00, Bagas Sanjaya <bagasdotme@gmail.com>:
> > On 5/17/23 14:07, Namjae Jeon wrote:
> >> I'm volunteering to help review patches for current unmaintained
> >> ntfs filesytem.
> >>
> >> Signed-off-by: Namjae Jeon <linkinjeon@kernel.org>
> >> ---
> >>  MAINTAINERS | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index e2fd64c2ebdc..c2cecb2059d7 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -14928,6 +14928,7 @@ F:	drivers/ntb/hw/intel/
> >>
> >>  NTFS FILESYSTEM
> >>  M:	Anton Altaparmakov <anton@tuxera.com>
> >> +R:	Namjae Jeon <linkinjeon@kernel.org>
> >>  L:	linux-ntfs-dev@lists.sourceforge.net
> >>  S:	Supported
> >>  W:	http://www.tuxera.com/
> >
> > Acked-by: Bagas Sanjaya <bagasdotme@gmail.com>
> Thanks for your ack!
> >
> > Anyway, what about also adding linux-mm list so that akpm can
> > pick patches?
> Hm.. I think that MM folks probably don't like to see fs patches on mm list...
> And as far as I know, Christian is going to picks up the ntfs patches.
> Christian, right?

I've picked up your patch already. A notification should be sent
shortly.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
