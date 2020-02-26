Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 782E61700D5
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 26 Feb 2020 15:12:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1j6xQ0-00073X-UI; Wed, 26 Feb 2020 14:12:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <idryomov@gmail.com>) id 1j6xBD-0006ai-Sj
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 26 Feb 2020 13:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QGW8A6NvrrWP1yUYNzkuM9Y6DPoFVb9Z8KwBG+QV5Lo=; b=ivWMO8cfwxlROhskd8HUTCgsAb
 B3a0BfZTAnfCY3vs8/BiWph/+BewImPru0rEr0Fik2NqJspM0dcMiLxYMQOz21O/4qtDDi9BM7E6C
 V+8BJbQ60HUhTwmgQfMxwI//lraqZ3d08r63bJsgZ+yQiTrP7KT7k2S04sIRMCWNbWt0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QGW8A6NvrrWP1yUYNzkuM9Y6DPoFVb9Z8KwBG+QV5Lo=; b=QsQDqvnMWtskPWvWEOE2l9sNYv
 e4c7A4r4xJRpjiTCtNsaUZGCqPb7RLsR3npOiPpJ3P0ey9kT4R5JkJIGZpryW3jV2pUsEdNDDINeI
 3FJ9T46P9HxhJBNA9hq38wX6t0hMCdysmLr4XsMJ8tKdsWmPe7+nSoEmMtFkpx+yNUtY=;
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j6xBA-00AIcN-GY
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 26 Feb 2020 13:56:51 +0000
Received: by mail-io1-f68.google.com with SMTP id z8so3459855ioh.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 26 Feb 2020 05:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QGW8A6NvrrWP1yUYNzkuM9Y6DPoFVb9Z8KwBG+QV5Lo=;
 b=Vk6w/5mZAyodQkBHzCqY//wn5JgAJqdcOqxWE9FGbVPOxKDaMY3/jEssR4cW31l0kZ
 xnSN3PAOStFfPDzSdOz52NHgqlKbdpw6BQpfgi6JeNU6q+vZzJ9Tkr3nMUTOnPY+/1dR
 SDqZyhx4MtnDSJCwCK4wjBlwI3mj9X5Irm0grREPAE/kYvgtr7NQS4zRSu/B3vUB+wmc
 L4AIsB6ZODPjVNKF22GGbz7urvzlxneuNfVLJ3Fwy1LZq7kBc5la7CvkLe15B77Zp6OV
 Y3oi37jhW7MaO1mVwTS3F7Qk3yPKqwfhnYExvZ33NuK5eMZN/W8k8E6K/iSRrtjJOrOG
 2qpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QGW8A6NvrrWP1yUYNzkuM9Y6DPoFVb9Z8KwBG+QV5Lo=;
 b=aFh5LeF1MN+/SK0xt2RcklZwSkK7v9SU498oWYvyPl7PqGYN7656VxXOwE0twa2sFg
 OKDScN8U6jP0GGFzkII5RuaQDaVLU50APhkKlOIt90Q/1b2hsDKMz0fttb+flO6mP3po
 kdpnWT3V1Yt1mefaIzjF+9hFydwGTvuvxnKvtRfVT6KXizgWNb1SmWMZ4YGb0ojmib31
 LmwTRu9nsrTmZv1ZN2iSTSvnn+OoH8K7VPw4RnqT+Sk63B/QXIOIT3v+fh+9O6xtNBFR
 v15470ob0TB0xZ6oz/0vX2SovWar1nJndjqMJfaE5BCrOcJiX0dPcdWloTonyhwMomF3
 BGMg==
X-Gm-Message-State: APjAAAV+iZxdxsXGH2QJNGg1B9OjyAtuMD2ScTeZ00ssWdJQLd4g2ZJx
 /ntC8ABdbVSAJajXTiAlmkPsdzh51KWrZZjDMddZ0bdlXu4=
X-Google-Smtp-Source: APXvYqxl/5VcAXUhdrkabxgQPYn31aLYDntHGf7KR5UdfdynKmNGYN/1+c2QyFktCrtJTpnXFdx12LFcqWkv43QtPYE=
X-Received: by 2002:a5d:9707:: with SMTP id h7mr4749293iol.112.1582725402510; 
 Wed, 26 Feb 2020 05:56:42 -0800 (PST)
MIME-Version: 1.0
References: <20200225234836.GA31741@embeddedor>
In-Reply-To: <20200225234836.GA31741@embeddedor>
From: Ilya Dryomov <idryomov@gmail.com>
Date: Wed, 26 Feb 2020 14:56:34 +0100
Message-ID: <CAOi1vP_2+G+0=-a0uqLMYisp+EtHhiVrkWFLFch5JygYVNWvdA@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (idryomov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.68 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1j6xBA-00AIcN-GY
X-Mailman-Approved-At: Wed, 26 Feb 2020 14:12:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH][next] block: Replace zero-length array
 with flexible-array member
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
Cc: Jens Axboe <axboe@kernel.dk>, Sage Weil <sage@redhat.com>,
 linux-ntfs-dev@lists.sourceforge.net,
 "Richard Russon \(FlatCap\)" <ldm@flatcap.org>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Dongsheng Yang <dongsheng.yang@easystack.cn>,
 LKML <linux-kernel@vger.kernel.org>, linux-block <linux-block@vger.kernel.org>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 Ceph Development <ceph-devel@vger.kernel.org>,
 Lars Ellenberg <drbd-dev@lists.linbit.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Wed, Feb 26, 2020 at 12:45 AM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
>
> struct foo {
>         int stuff;
>         struct boo array[];
> };
>
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on.
>
> Also, notice that, dynamic memory allocations won't be affected by
> this change:
>
> "Flexible array members have incomplete type, and so the sizeof operator
> may not be applied. As a quirk of the original implementation of
> zero-length arrays, sizeof evaluates to zero."[1]
>
> This issue was found with the help of Coccinelle.
>
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  block/partitions/ldm.h             | 2 +-
>  drivers/block/drbd/drbd_int.h      | 2 +-
>  drivers/block/drbd/drbd_protocol.h | 8 ++++----

For rbd

>  drivers/block/rbd_types.h          | 2 +-

Acked-by: Ilya Dryomov <idryomov@gmail.com>

Thanks,

                Ilya


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
