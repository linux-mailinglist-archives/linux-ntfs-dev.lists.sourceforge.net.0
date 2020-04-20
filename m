Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9881B22E1
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 21 Apr 2020 11:35:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1jQpJ6-0004yt-Bk; Tue, 21 Apr 2020 09:35:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <corbet@lwn.net>)
 id 1jQeSL-00011a-68; Mon, 20 Apr 2020 21:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I8KcxnamxdCO6pWxt1vf10ijrWjdcpVO1RbipNayNYk=; b=FxiyXBAJ97YNymMQhBVFFW2Bbn
 29/G1mc0hbkzLAyrlR6PV+6RkQZFSXjXk1T36V/KnQ7nml/ERXjHhro2Mp3aiNehO2dI7zjlVw3jn
 Mb6QWFuUZygv2VXuu2rz+01YrCPHV4rXQ7H0ikeziXqF6rqLm+yCXF55pTUEONmSCrY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I8KcxnamxdCO6pWxt1vf10ijrWjdcpVO1RbipNayNYk=; b=Kd1xY59Wszsgpgfr6GvvvZ5stu
 LhnescblgnE2E3jaJyxQCc8HZ0XfVX5H1jBmaPRBsiCgJBPpz2Wwyi3HrNYqFYC9Na/PUejh1MjcM
 taG88EwUePenQpwAflFYPhx+9dJpNdskS+0KjmZxhhZImR3BEoffiXqpolvgN0Ytvlds=;
Received: from ms.lwn.net ([45.79.88.28])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jQeSJ-004nwX-Mz; Mon, 20 Apr 2020 21:59:57 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 632E4823;
 Mon, 20 Apr 2020 21:43:17 +0000 (UTC)
Date: Mon, 20 Apr 2020 15:43:16 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20200420154316.28e42905@lwn.net>
In-Reply-To: <cover.1586881715.git.mchehab+huawei@kernel.org>
References: <cover.1586881715.git.mchehab+huawei@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jQeSJ-004nwX-Mz
X-Mailman-Approved-At: Tue, 21 Apr 2020 09:35:06 +0000
Subject: Re: [Linux-NTFS-Dev] [PATCH v2 00/33] Documentation fixes for
 Kernel 5.8
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
Cc: kvm@vger.kernel.org, Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 dri-devel@lists.freedesktop.org, linux-unionfs@vger.kernel.org,
 linux-mm@kvack.org, netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, kvmarm@lists.cs.columbia.edu,
 linux-arch@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-rdma@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, Sandeep Maheswaram <sanm@codeaurora.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 ecryptfs@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Matthias Brugger <mbrugger@suse.com>, Yuti Amonkar <yamonkar@cadence.com>,
 linux-ide@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 freedreno@lists.freedesktop.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, 14 Apr 2020 18:48:26 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> Patches 1 to 5 contain changes to the documentation toolset:
> 
> - The first 3 patches help to reduce a lot the number of reported
>   kernel-doc issues, by making the tool more smart.
> 
> - Patches 4 and 5 are meant to partially address the PDF
>   build, with now requires Sphinx version 2.4 or upper.
> 
> The remaining patches fix broken references detected by
> this tool:
> 
>         ./scripts/documentation-file-ref-check
> 
> and address other random errors due to tags being mis-interpreted
> or mis-used.
> 
> They are independent each other, but some may depend on
> the kernel-doc improvements.
> 
> PS.: Due to the large number of C/C, I opted to keep a smaller
> set of C/C at this first e-mail (only e-mails with "L:" tag from
> MAINTAINERS file).

OK, I've applied this set, minus #17 which was applied elsewhere.

Thanks,

jon


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
