Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B2E6F92BF
	for <lists+linux-ntfs-dev@lfdr.de>; Sat,  6 May 2023 17:35:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1pvJwH-0000gv-CY;
	Sat, 06 May 2023 15:35:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1pv6FW-0008AU-VM
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 00:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HtrajqP2JxNde5K79PykaYt1eyhpGlq2n0BHEF9Vpqg=; b=mFHWtCEYPyyqlh/OrZTYzMGLhE
 4hJd61qaDpMNMuqLjbBhfGo5g2HgCE17rD2jtGJdZvIJHO2CqBXyA+BUqIVKFkjXvvQoooKgPSs5j
 xoHpn0Ids/vM7FSrKmWett/Sub0Oy+4M88bF8JzBKb6UDpCtR5l4DQ0Jjy2TiWcOrAK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HtrajqP2JxNde5K79PykaYt1eyhpGlq2n0BHEF9Vpqg=; b=ehMG2OJPJQD8Jhn3ibspkHAm5t
 C+eE5ZUnmoxBqMUxWEcPISCWL/myhDuazi//MaThEXUiedzr2Augaimuh5Uq/sXrxYDEUBIoqqDAz
 yi3CdWLPhukpt3dnY6J3RmFz6XZxY9Uit5ubMtPGV1UoCT+uwHIIX0qN5DHv9EtVzOtw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pv6FW-0004W8-CS for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 06 May 2023 00:58:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C4E4D641B9
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 00:58:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E0AC433EF
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat,  6 May 2023 00:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1683334681;
 bh=wgggxoVbNtlVdcXO0Ax3pj4nhil23DvQ1A9wlVlVeQ4=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=lpLzTM8/JnMtWyQ9X4e0qXZgoErI42AtbzP27YDrsCupD0WnySjgS8JrtF/xxMPFb
 UWYx5lUvg+SsYvs8e+U0dgutu7lQdyxYUr6ZbOzqr7d39KQkOgLdZ1xlKPNzfWvJSI
 kwlTVNN56MlGRo3oYxlA4/AWgTRnKBWiItZXZOFr0NKbiACvTzzhGKbrmDS1Cyhfdg
 vKGw6Eo6o7LfDC1LVJfPFNOxxvQX7OyjRug/Y1xdFTK0ERq1+HYFaVbRq/Pxps/HAb
 VLE8PWjmrCUnnM2HimoY9IBfOg75B8QgF8C3wdavteFk8kUftu1B8427mJGSIWAmqD
 zIKPWvPquKXTg==
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-1928ec49077so2136457fac.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 05 May 2023 17:58:01 -0700 (PDT)
X-Gm-Message-State: AC+VfDzmeRznsA4JjmbtXXubnwdYbNlMf3gjUj9gcgRb54nXCtQQYvkv
 Q40AwyedFWGjG4KwORzKP38Cn7RF1fwcHKiRih8=
X-Google-Smtp-Source: ACHHUZ7zsJxfjNhg/nJ43uSvbg6FNLpbTm6V3Ns4Npc9MAawrTvPErrJDgr1LyRZ60bFZ5Ap5M8YiLUIauICA8NtBxk=
X-Received: by 2002:a05:6870:4293:b0:18b:15cd:9b45 with SMTP id
 y19-20020a056870429300b0018b15cd9b45mr1693587oah.40.1683334680405; Fri, 05
 May 2023 17:58:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a8a:981:0:b0:4d3:d9bf:b562 with HTTP; Fri, 5 May 2023
 17:57:59 -0700 (PDT)
In-Reply-To: <20230418153607.3125704-1-colin.i.king@gmail.com>
References: <20230418153607.3125704-1-colin.i.king@gmail.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Sat, 6 May 2023 09:57:59 +0900
X-Gmail-Original-Message-ID: <CAKYAXd93MfgCxX8it9OmrTBU7yS3phsu4nv++J=pRAKYzqGEYg@mail.gmail.com>
Message-ID: <CAKYAXd93MfgCxX8it9OmrTBU7yS3phsu4nv++J=pRAKYzqGEYg@mail.gmail.com>
To: Colin Ian King <colin.i.king@gmail.com>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2023-04-19 0:36 GMT+09:00,
 Colin Ian King <colin.i.king@gmail.com>:
 > The pointer cb_sb_start is being initialized with a value that is never
 > read, it is being re-assigned the same value later on wh [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pv6FW-0004W8-CS
X-Mailman-Approved-At: Sat, 06 May 2023 15:35:12 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] ntfs: remove redundant initialization
 to pointer cb_sb_start
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
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2023-04-19 0:36 GMT+09:00, Colin Ian King <colin.i.king@gmail.com>:
> The pointer cb_sb_start is being initialized with a value that is never
> read, it is being re-assigned the same value later on when it is first
> being used. The initialization is redundant and can be removed.
>
> Cleans up clang scan build warning:
> fs/ntfs/compress.c:164:6: warning: Value stored to 'cb_sb_start' during its
> initialization is never read [deadcode.DeadStores]
>         u8 *cb_sb_start = cb;   /* Beginning of the current sb in the cb.
> */
>
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
Reviewed-by: Namjae Jeon <linkinjeon@kernel.org>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
