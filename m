Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E215575A9
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 23 Jun 2022 10:39:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o4IND-0003M3-Fp; Thu, 23 Jun 2022 08:39:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1o4HgN-0001gl-DP
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 07:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o3uNa9wiil69JGieYSlZKjcUguaCgZBp4t3/fWwnFmY=; b=fxtz6FK+N1Bowz397OFYt0MoaB
 ImhyUXmGWmHM1AXo9KJNwvVVyRZp9dWU1d1K6nUlcrqdKY6U1j9qRkigrI+y27GAy7OBwNadu9aRS
 vBunEut7ZEbgHiA/+FQ0/GOOW4mjfz/5GTjQWbOYCWGFZmZ16mSZY3rYhUgMi3Ndu9No=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o3uNa9wiil69JGieYSlZKjcUguaCgZBp4t3/fWwnFmY=; b=LLvfDDaYeMN8UINajiw+pCVtfQ
 VbZZHGZwpA31ekm17Dnj1pKTFcbaSt9ZuQ9sFuo6R6N3+RYoiJLX9w948u5McOtdejHROMhnMrRib
 ZoLyllDLlFGfjLK3hPqXfvoVFeIEbcdsfK2Jn8Jkmm81Bu/bdJrALabykuOtbbA9mhcA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o4HgN-00AyRe-GG
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 23 Jun 2022 07:55:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2383D61B66;
 Thu, 23 Jun 2022 07:55:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17098C3411B;
 Thu, 23 Jun 2022 07:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1655970913;
 bh=fPqGc0qej9i/SABjSJ2TQXIOK2RVumdkJZyalDrgWKM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OgQGfNAJAOEXzVEnmeHeyarQXal8i0fWYk1GGoQVXJiQTvyUYRl68bDNBUeaPuv/1
 Xa25yZ0lXuxMDg+Ax2hIJnoDxhnewmMVCMWisK/y4Vb5JWiI8xIHvzCcKdCskFwG3Z
 mw261Uo253JkkQNH+1ayttRqAlxSac6O2UZXlxP0=
Date: Thu, 23 Jun 2022 09:55:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: xu xin <cgel.zte@gmail.com>
Message-ID: <YrQcXg89eO0Y/pgZ@kroah.com>
References: <20220623033635.973929-1-xu.xin16@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623033635.973929-1-xu.xin16@zte.com.cn>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 23, 2022 at 03:36:35AM +0000, xu xin wrote: >
 >From Zeal Robot <zealci@zte.com.cn> > > Hi! Zeal Robot found a potential
 risky bug about NTFS under the help of syzkaller. > This will cause [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o4HgN-00AyRe-GG
X-Mailman-Approved-At: Thu, 23 Jun 2022 08:39:33 +0000
Subject: Re: [Linux-NTFS-Dev] Bug report: ntfs_read_block may crash system
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
 stable@vger.kernel.org, xu.xin16@zte.com.cn, linux-fsdevel@vger.kernel.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Thu, Jun 23, 2022 at 03:36:35AM +0000, xu xin wrote:
> >From Zeal Robot <zealci@zte.com.cn>
> 
> Hi! Zeal Robot found a potential risky bug about NTFS under the help of syzkaller.
> This will cause OS crash when CONFIG_NTFS_FS is set and panic_on_oops is on.

Do you have a proposed fix for this as you can easily reproduce this?

And it looks like you need root permisions for this, right?

thanks,

greg k-h


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
