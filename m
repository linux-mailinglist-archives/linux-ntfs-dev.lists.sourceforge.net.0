Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D3D31CE0F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 16 Feb 2021 17:31:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1lC3Fp-0002Vo-8U; Tue, 16 Feb 2021 16:31:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rkovhaev@gmail.com>) id 1lC39Q-0004IY-Hr
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 16 Feb 2021 16:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JT99kJbdPlhIu/0TowIURKsvoVzFDyN/pQVtyCtqv1A=; b=KvY7uYlqcfTRvdkRs7St9pccWu
 vXznrUFCiY04QBB2z1Iy1vD/8RTa4UuLWVbEiBYUGfMZ37QWAV29aWA+UR3WXlUQhsMW/2xYcjwZv
 VdM9T0Mwi1PPkecUpOTwUeasYDPBqCxgMPGEJ29PEl58oqEkUn+Qvs+K4/fzCYSZ7gQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JT99kJbdPlhIu/0TowIURKsvoVzFDyN/pQVtyCtqv1A=; b=gtXpZYDpNH7v/8DXSxS+JCCjaT
 p9XT4LoBEIPxsairJryFEHKZtRV6O2PmRoQaP77/agEipfcYYjDZ0KR5YaQ3SZOotvyAY/c1snMw7
 Edu+HqhV5AmeUGNWU6Y5ZqfcVtNFja2OcYNS7OzB8o3KEJlMYWkszNOG+8eodIlsJTmI=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lC39L-00068I-Ln
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 16 Feb 2021 16:24:34 +0000
Received: by mail-pj1-f51.google.com with SMTP id l18so6254779pji.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 16 Feb 2021 08:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JT99kJbdPlhIu/0TowIURKsvoVzFDyN/pQVtyCtqv1A=;
 b=mGtOjvRdKBKLndMLC58MjliqHoj61eZp6LR6snXXa2lhUVw5TJJ6NUx3VJ7pvfhCq8
 0GUbZ0dQqLSbl8KAHXkJd1P2I1g8UnSg85+kgYSdEJsLnXZMM3poJt8qE8jd1hirkX5N
 Us7oP5m5er5ImPMXAY6gPK2/00HrbjhXgt8JeiZjRzYzYqDcjk/7HdXpTS+dEwEKZ+5D
 1Orp4ecwCTLm7RUQrXxkyLrtEAjYngOEogWZ7iNmHatsfopLWE1GGcLdd15vcOVrigee
 YslFWrIZz+1p7Mc+rGMIBPnHUMwxtRYyGmkCoEQTsi3TWxQicivOAFqGM1SKNViZCZUa
 RI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JT99kJbdPlhIu/0TowIURKsvoVzFDyN/pQVtyCtqv1A=;
 b=lbScEj3MeDj0CZvXmxBY053LMXOi1uQA5qOAJ6Bi1yBZayLEnKRJqHPJoKt78s91oo
 n2xTri57OIsB71ecoJd5hQLWdKijTRyzGXsh3RV52bBGuwju3eN7M4o2LAUpyV02ZGkT
 8U/xUjbibrtjZZHjXXeWqIi1jBh15m80DsktYJcg4si+OZt7s1BOOmZg9u5/E3gV75Ab
 9ScdmV22E4v5M+AOWavFct3r2SId2Kz3Wq78WvpMlaJolISXTXIuEolQ54r+N2GIu05H
 0JCQlhJpe1V68VSQRlin7KXQ2FazcJR6JxSfCbZqQlsbTZxZOkMrx5h1DcxE9NesCsDW
 ue3A==
X-Gm-Message-State: AOAM530JsPxaus04NGO+bxiIfpZ2O5lZhHSZ1u5WqCyh2Wn9WnFpI9o+
 8SEMk5JkIPgbZ4xF2KWZIIY=
X-Google-Smtp-Source: ABdhPJw9uY5E0tuQjCz2+2HB8BHQeX/rAtdev8nofs6lEJ6ENJkXmcykk3SniQ2JnQpRuyOCEXaNDQ==
X-Received: by 2002:a17:90a:12c5:: with SMTP id
 b5mr4309128pjg.89.1613492666031; 
 Tue, 16 Feb 2021 08:24:26 -0800 (PST)
Received: from nuc10 (104.36.148.139.aurocloud.com. [104.36.148.139])
 by smtp.gmail.com with ESMTPSA id q22sm22111838pgi.66.2021.02.16.08.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 08:24:25 -0800 (PST)
Date: Tue, 16 Feb 2021 08:24:20 -0800
From: Rustam Kovhaev <rkovhaev@gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <YCvxtL5WYeO3ofKW@nuc10>
References: <20210214221247.621431-1-rkovhaev@gmail.com>
 <2727F0B7-4992-4B24-963F-CC3C4D94CFD2@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2727F0B7-4992-4B24-963F-CC3C4D94CFD2@tuxera.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rkovhaev[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lC39L-00068I-Ln
X-Mailman-Approved-At: Tue, 16 Feb 2021 16:31:11 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH] ntfs: move check for valid resident
 attribute offset and length
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
Cc: "linux-ntfs-dev@lists.sourceforge.net"
 <linux-ntfs-dev@lists.sourceforge.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Feb 16, 2021 at 02:40:37AM +0000, Anton Altaparmakov wrote:
> Hi Rustam,
> 
> Thank you for the patch but it is not quite correct:
> 
> 1) The first delta: yes that is a good idea to add this check but the error message is incorrect.  It should say "Corrupt standard information attribute in inode." instead.
> 
> 2) The second delta: The check of the attribute list attribute needs to remain, i.e. your second delta needs to be deleted.
> 
> Please could you address both of the above comments and then resend?  Please then also add: "Acked-by: Anton Altaparmakov <anton@tuxera.com>" to the patch.
> 
> Thanks a lot in advance!
> 
> Best regards,
> 
> 	Anton
> 
hi Anton, thank you for the review! I'll resend the patch!


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
