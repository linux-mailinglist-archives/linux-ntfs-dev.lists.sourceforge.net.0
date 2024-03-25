Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AB3889AB7
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 11:34:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rohej-0003J2-Ag;
	Mon, 25 Mar 2024 10:34:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <johan@kernel.org>) id 1rohGt-0007zO-Ho
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 10:09:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xfj7R5SOwGk72Oc6EtPDpcQnhZmDsOBAz420RevsGIc=; b=HL7uAIQm7ppORmPedsOqs/PS2e
 4Nw1zDoRqfBumXovDf6cZ59Xj//Bm5OSe4xAv4bmPH+3w4OGGTDHF2xshYKO7CylYE9znKDs6XChf
 sUJrRKcL8lJ3javNr0ZW6XIao6bNsKJIhs1okxR+KjRRcqv1+VBtyvJI7nJEPc12LAbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xfj7R5SOwGk72Oc6EtPDpcQnhZmDsOBAz420RevsGIc=; b=H9jgAF1kl6RFCNtBX9hX0LIq0S
 Sw0P14wBEHHYG08rAscqWSAxsYgbsvJYrPnLasLsgdPB1uMnR0Osc+3PyKUNkBor4Qnv+WslKgEyd
 udAwjFfeKNa246u9PCyaWKmo5HQteFW+qZqwnzg3OOpMu//cJOk0wwWJAtvPMHnAWQ7g=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rohGo-0003fH-Ck for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 10:09:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id E2854CE12E5;
 Mon, 25 Mar 2024 10:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29A7AC433C7;
 Mon, 25 Mar 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711361362;
 bh=+Ni54kzZZJZ8Gpflipk7sMkXhsxVvZJr72+bdfSCAWA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LAVyeJkmpxeTN6Gxe2VGtXmpfHMhTMrpn/UXUh/Wn12y57WkwEnoAekyyvWfMg2qE
 gzTc1VIB7QQqr4sWYFMAV5OKg1ncgL02/pD/vVxyLZG4KwXFeO1qkRJU2ZaIJrUZAO
 fQib1lD8r/c7xoSZ0DEFM4PgT4/uJp7k+B4Dc3NS9veJVKXT7pq/GH2anB5Mwg/8h7
 FO0nVgHeTPbD8/5ZTjwxRpL9jRk96Mle73oV3aAgXbDCJy5BkzDKGGQQT6al5CROnm
 hJ58nyT9GCFwA+rC3A87WG5riMWck4SiRU92mtZHC7nwRUccM91gzavJqONMy0zDAV
 ShVDbZD2bJMRA==
Received: from johan by xi.lan with local (Exim 4.97.1)
 (envelope-from <johan@kernel.org>) id 1rohGi-000000000z4-3YKD;
 Mon, 25 Mar 2024 11:09:28 +0100
Date: Mon, 25 Mar 2024 11:09:28 +0100
From: Johan Hovold <johan@kernel.org>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <ZgFNWPCYQC6xYOBX@hovoldconsulting.com>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-hinkriegen-zuziehen-d7e2c490427a@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325-hinkriegen-zuziehen-d7e2c490427a@brauner>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 25, 2024 at 09:34:36AM +0100, Christian Brauner
 wrote: > Johan Hovold reported that removing the legacy ntfs driver broke
 boot > for him since his fstab uses the legacy ntfs driver to acce [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rohGo-0003fH-Ck
X-Mailman-Approved-At: Mon, 25 Mar 2024 10:34:15 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH 1/2] ntfs3: serve as alias for the
 legacy ntfs driver
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
Cc: regressions@lists.linux.dev, linux-ntfs-dev@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon, Mar 25, 2024 at 09:34:36AM +0100, Christian Brauner wrote:
> Johan Hovold reported that removing the legacy ntfs driver broke boot
> for him since his fstab uses the legacy ntfs driver to access firmware
> from the original Windows partition.
> 
> Use ntfs3 as an alias for legacy ntfs if CONFIG_NTFS_FS is selected.
> This is similar to how ext3 is treated.
> 
> Fixes: 7ffa8f3d3023 ("fs: Remove NTFS classic")
> Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> Cc: Johan Hovold <johan@kernel.org>
> Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
> Signed-off-by: Christian Brauner <brauner@kernel.org>
> ---
> Hey,
> 
> This is so far compile tested. It would be great if someone could test
> this. @Johan?

This seems to do the trick. Thanks for the quick fix.

Tested-by: Johan Hovold <johan+linaro@kernel.org>

Do we want to do something about the fact that ntfs mounts may now
become writable as well?

Johan


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
