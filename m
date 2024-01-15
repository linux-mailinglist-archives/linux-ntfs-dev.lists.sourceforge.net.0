Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0E282D887
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 12:45:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPLPL-0008EJ-O3;
	Mon, 15 Jan 2024 11:45:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1rPLLr-0002Rm-QZ
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 11:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p1cZnUAHC7MSMFSVP9LhT/S4Y8GB3G7ADvGv2wxpC2A=; b=JHUw2B8YChe44HTLEVqOEaKP59
 iODBj7P5hTGX/yuBJQqO6pTBm3CzTQb6oEhpc0ktvZTsgqh36r8EevBfdUvvil0SnALjznWTKZ9Sh
 6CDW+q5HLXIoP8COVOsoF110m+xHKvcjQGo/I78oQJIoVKGLwmoFER1qByYYzA6J52So=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p1cZnUAHC7MSMFSVP9LhT/S4Y8GB3G7ADvGv2wxpC2A=; b=H8z/hJ95wns6m3ES8/nk7KKUq+
 9vnjWrbFN1D0AM7a8YWk6OfIKCgD29vXXGUXrL4IU/+F9eSUfz1NzGul6aS4h+HnOizKOhcxLfxqv
 D16goaUPs79F+EycgDF9QM1+94d+L2CMd6KZ1vFn8b19OFWGG4B/3+UxpUB5gBo8nGSE=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPLLk-0003yP-9z for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 11:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D5125CE0A16
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Jan 2024 11:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13918C433F1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Jan 2024 11:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705318904;
 bh=AF4YEywEnYTlM03/Plpih4Pbca1bnQhXFsGI2ay5Fuk=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=aMUBf7ZMLDqZof18KXDBvK0s9WPm0D3E0ghUDuhizxd/BfOFxeWWCYrFeIFLfhO07
 TyJLWgVhUOiupwm8vrR2Xa+HtKMSvvXmlamxDRmJLhaPKVyVaXbWeyJYjfafi/ryqK
 shaN3tt79fcyW+84brxDufj4SMsudH0HnrzOKd95eZ8wsEfAdgvMUwpB5Yu59HmIHJ
 pBuzWZSD9LsfsVcPA8YesVAX0SMPRu0D7rSDDVcwWJcF4QEzHnmmWmVvaj4ZlPhkQc
 S81ph6gsBqHCYVzXm/v8h0xmAZHsw5OjyB4jca4yqVQPOm3GBz5Ixa+f9oBQlsDjtR
 HnrNpN50UNy/A==
Received: by mail-ot1-f53.google.com with SMTP id
 46e09a7af769-6dc83674972so4763247a34.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Jan 2024 03:41:44 -0800 (PST)
X-Gm-Message-State: AOJu0Yz071mZIHBmjWCrMI3/oDp6sTb7e6Dm7UO1xodEl4/6kuzujOas
 4IXQUmoyU7/+dl7ZHD31UbtDkt/TC26mR5tlBzs=
X-Google-Smtp-Source: AGHT+IEiRvxaR4ohvrGlVCarDoYEKSzqvASl5lVVjyuCUD5DqyMcukKlIlo9mROvXDrjf0Cv5m4OrTNrTzpKDP/Osy8=
X-Received: by 2002:a05:6870:ef84:b0:206:aca2:efae with SMTP id
 qr4-20020a056870ef8400b00206aca2efaemr5224717oab.118.1705318903363; Mon, 15
 Jan 2024 03:41:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:668c:0:b0:513:2a06:84a8 with HTTP; Mon, 15 Jan 2024
 03:41:42 -0800 (PST)
In-Reply-To: <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
References: <20240115072025.2071931-1-willy@infradead.org>
 <8a5d4fcb-f6dc-4c7e-a26c-0b0e91430104@tuxera.com>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Mon, 15 Jan 2024 20:41:42 +0900
X-Gmail-Original-Message-ID: <CAKYAXd9VcORULpRUGpBYpZKc=GTV4vOAvv-B-rVVxfbz-y1TOQ@mail.gmail.com>
Message-ID: <CAKYAXd9VcORULpRUGpBYpZKc=GTV4vOAvv-B-rVVxfbz-y1TOQ@mail.gmail.com>
To: Anton Altaparmakov <anton@tuxera.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, 
 Christian Brauner <brauner@kernel.org>
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2024-01-15 20:00 GMT+09:00,
 Anton Altaparmakov <anton@tuxera.com>:
 > Hi Matthew, > > On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote: >>
 The replacement, NTFS3, was merged over two years ago. It is [...] 
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPLLk-0003yP-9z
X-Mailman-Approved-At: Mon, 15 Jan 2024 11:45:33 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH] fs: Remove NTFS classic
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
Cc: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

2024-01-15 20:00 GMT+09:00, Anton Altaparmakov <anton@tuxera.com>:
> Hi Matthew,
>
> On 15/01/2024 07:20, Matthew Wilcox (Oracle) wrote:
>> The replacement, NTFS3, was merged over two years ago.  It is now time to
>> remove the original from the tree as it is the last user of several APIs,
>> and it is not worth changing.
>
> It was my impression that people are complaining ntfs3 is causing a
> whole lot of problems including corrupting people's data.  Also, it
> appears the maintainer has basically disappeared after it got merged.
What can replace this is not only ntfs3 but also ntfs3g. I think
read-only ntfs is obsolete.
I am in favor of remove it.

Acked-by: Namjae Jeon <linkinjeon@kernel.org>

Thanks.
>
> Is it really such a good idea to remove the original ntfs driver which
> actually works fine and does not cause any problems when the replacement
> is so poor and unmaintained?
>
> Also, which APIs are you referring to?  I can take a look into those.
>
> Best regards,
>
> 	Anton
> --
> Anton Altaparmakov <anton at tuxera.com> (replace at with @)
> Lead in File System Development, Tuxera Inc., http://www.tuxera.com/
> Linux NTFS maintainer
>


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
