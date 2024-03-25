Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD60A889E1C
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Mar 2024 13:02:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1roj1s-0003dX-Bz;
	Mon, 25 Mar 2024 12:02:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1roj1p-0003dP-Hn
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 12:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x1kZCs1hZFKtXjA1JlMyIlvVPLO0PDSYy3Uc8odFcC8=; b=LhyqnRq5+0z+2lI6x7ckZTYqw1
 qtxodKd5fLrkQ1Y4dFa+kOKY/ewqWzL41F1nrMAxxAKrKlahvMH0VOYagPgkcSxlFaj3WMF+n/jrl
 YEaTnO58Afs/6KWEmTORc6j0L0Dv4QklhoemGEZ5+K58utOaLV9u81hJUv0LfvjReSls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x1kZCs1hZFKtXjA1JlMyIlvVPLO0PDSYy3Uc8odFcC8=; b=aaodEjxo5KE4skI4XU4q4cglZs
 qXjmDb1491H5msKPb6Kvc71j6SaA+x9GNrSZEL7qBJtd+a/Il3C7+vUzc7QTI1DyhhYZuRlLlYaUK
 6p/21OPwtOfl7nFjBxOkXRL1b8ACimxJBCaNbM4CWL5vUhfSENFhu+ag1hpQ83rkjQvs=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roj1l-0001XF-0t for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Mar 2024 12:02:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8C46DCE10D3;
 Mon, 25 Mar 2024 12:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8313DC433F1;
 Mon, 25 Mar 2024 12:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1711368116;
 bh=PmwG4shIcnf5UENuE2G+mp68iq1yKL/zXf5/0+E+IVA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qN3DFbFlPN49+7vVl+5PdlFU+NMHb7Rt+8v6HAb/Jk6z0zETG3vXmFcsmHVyP18wT
 p/40KI77w1WlmBT47JTjOKPG3RRP8odhvRHi3li0fwtkxpv/xN7v32QDkYoJgI3HwR
 I9WDbt48jPoIoc4sL37j4ioaQgydJTZLRdJ0SuBY76iqarvCZZiEn8etMPK7zV11z/
 ut40aALYDsUPC73CXonaoLhCZsSEyus9dp6JsVAxqVqs4HMH1TkAdCOwqmJBKeTZMh
 NYN5/L7YfnQ4/maq94Uhn9icVik/ww+Egz/b10FjEqkYS4BTRVG6sR33IGHJfr5yAx
 rR2QDtRIM1xiw==
Date: Mon, 25 Mar 2024 13:01:51 +0100
From: Christian Brauner <brauner@kernel.org>
To: Johan Hovold <johan@kernel.org>
Message-ID: <20240325-waldhaus-fegten-59746baa161d@brauner>
References: <Zf2zPf5TO5oYt3I3@hovoldconsulting.com>
 <20240325-hinkriegen-zuziehen-d7e2c490427a@brauner>
 <ZgFNWPCYQC6xYOBX@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZgFNWPCYQC6xYOBX@hovoldconsulting.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 25, 2024 at 11:09:28AM +0100, Johan Hovold wrote:
 > On Mon, Mar 25, 2024 at 09:34:36AM +0100, Christian Brauner wrote: > >
 Johan Hovold reported that removing the legacy ntfs driver broke [...] 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1roj1l-0001XF-0t
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

On Mon, Mar 25, 2024 at 11:09:28AM +0100, Johan Hovold wrote:
> On Mon, Mar 25, 2024 at 09:34:36AM +0100, Christian Brauner wrote:
> > Johan Hovold reported that removing the legacy ntfs driver broke boot
> > for him since his fstab uses the legacy ntfs driver to access firmware
> > from the original Windows partition.
> > 
> > Use ntfs3 as an alias for legacy ntfs if CONFIG_NTFS_FS is selected.
> > This is similar to how ext3 is treated.
> > 
> > Fixes: 7ffa8f3d3023 ("fs: Remove NTFS classic")
> > Cc: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> > Cc: Johan Hovold <johan@kernel.org>
> > Link: https://lore.kernel.org/r/Zf2zPf5TO5oYt3I3@hovoldconsulting.com
> > Signed-off-by: Christian Brauner <brauner@kernel.org>
> > ---
> > Hey,
> > 
> > This is so far compile tested. It would be great if someone could test
> > this. @Johan?
> 
> This seems to do the trick. Thanks for the quick fix.
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Do we want to do something about the fact that ntfs mounts may now
> become writable as well?

We can enforce that mounting as ntfs means that it's read-only unless rw
support is compiled in most likely. @Anton or other maintainers?


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
