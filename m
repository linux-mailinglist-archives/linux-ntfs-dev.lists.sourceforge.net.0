Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 359EB6FDC6B
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 10 May 2023 13:15:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pwhn5-0002L3-Ff;
	Wed, 10 May 2023 11:15:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pwYrB-0003s8-Q9
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 May 2023 01:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f/rcaaI0vOxfs1ijETmOM15ICYB5wdv1jc5B+TEIPJ4=; b=CjNXq8ULdibGkrqqWVPV6PmF+w
 4GICRyuKoxuerU3rRTiAZtaNxFc4DFKaWLKuhbisVa6TUGzXJRqtZMhm5CTb9+8+upISNbTcKw3iD
 lyG1fg2zr7ejlmmuNlaaUWYS2Wj8ryD4Li6tENn+hku5y08NfbOm6YUIQCL0zre6NlJc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f/rcaaI0vOxfs1ijETmOM15ICYB5wdv1jc5B+TEIPJ4=; b=IAJ6iy8U5Tg7mcOX3lsqfktWdy
 KjIRFhdpULxHinWZmpLfwvT3n3Ftq5Ljuz5gFAVwaHQI1HyV1IEVZKEpLGbuEZ1pc+GWxkR5qq/aO
 yM0fJZDX2lueMi4PXI4gPaiig6ZNAAVI7zW/l/ksgXEPQTRuWy5++ESp0dhZrekXkmPM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pwYr7-001hFe-Hs for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 10 May 2023 01:43:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id ADA496389D
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 May 2023 01:42:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEA57C4339C
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 10 May 2023 01:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683682972;
 bh=f/rcaaI0vOxfs1ijETmOM15ICYB5wdv1jc5B+TEIPJ4=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=W4RjvBr2p+u/Q4LGfwnGvSjdWOgdtFDInkNQ8PfaZz0iNLHiyQxq5nxmlA5jktPPM
 ww6WOsu2GkXXn6exT7sHrV2bRvaHkXxv05JZvra4aR093Hkn4ZQNpUTlRNHemRVP6E
 k9kGgNC0Y2k/XXdDQqGhPPWOPy9ERoIVoYkbZ6kfY25od9U6NleE4UpPo+HDJoMgvH
 kKfx4AHOLI1W0czyptASUScCtXBwaKq7mKngpC/c7UMJyyWlRNjgF4bpl8fS5GonFM
 fmP62JH1RCz9ICG9GGKYve3+3tdAltooNjYaT/2hf1mWrHlU/H8PMsxvX4y4Ui41Fi
 z4PWqloKcABcg==
Received: by mail-oo1-f49.google.com with SMTP id
 006d021491bc7-54f2ae4b825so2555040eaf.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 09 May 2023 18:42:52 -0700 (PDT)
X-Gm-Message-State: AC+VfDw/4VVuieTVCUeg4HOYHlppzuSTslnR+ocKD1Cl9D4ubxUq2LSX
 5I3g1bCuzxVgZCH0lvTz/pZH6Lb/WWD5r84QwNw=
X-Google-Smtp-Source: ACHHUZ439VAAMegvsPiMPVTxgTWk+w3QZywrOAPF38lmCJ+XBlvQi+He+rwyYvcEi0Uku8fNESdEAa1o0B5E1Rw2EJ8=
X-Received: by 2002:a05:6820:291:b0:54f:51f3:48b0 with SMTP id
 q17-20020a056820029100b0054f51f348b0mr2313500ood.7.1683682972035; Tue, 09 May
 2023 18:42:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:290:0:b0:4da:311c:525d with HTTP; Tue, 9 May 2023
 18:42:51 -0700 (PDT)
In-Reply-To: <20221017213303.862794-1-colin.i.king@gmail.com>
References: <20221017213303.862794-1-colin.i.king@gmail.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Wed, 10 May 2023 10:42:51 +0900
X-Gmail-Original-Message-ID: <CAKYAXd_ReyuZWQp6uMkaz6+fmWjtN0yrdfbEsF=fJTn84+5dpw@mail.gmail.com>
Message-ID: <CAKYAXd_ReyuZWQp6uMkaz6+fmWjtN0yrdfbEsF=fJTn84+5dpw@mail.gmail.com>
To: Colin Ian King <colin.i.king@gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-10-18 6:33 GMT+09:00,
 Colin Ian King <colin.i.king@gmail.com>:
 > The pointer m is being assigned a value that is never read, it > is being
 re-assigned to a NULL later on. The assignment is > redu [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pwYr7-001hFe-Hs
X-Mailman-Approved-At: Wed, 10 May 2023 11:15:11 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] fs/ntfs: remove redundant assignment
 to pointer m
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
Cc: linux-ntfs-dev@lists.sourceforge.net,
 Christian Brauner <brauner@kernel.org>, kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2022-10-18 6:33 GMT+09:00, Colin Ian King <colin.i.king@gmail.com>:
> The pointer m is being assigned a value that is never read, it
> is being re-assigned to a NULL later on. The assignment is
> redundant and can be removed.
>
> Cleans up clang scan build warning:
> fs/ntfs/file.c:194:3: warning: Value stored to 'm' is never
> read [deadcode.DeadStores]
>
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
