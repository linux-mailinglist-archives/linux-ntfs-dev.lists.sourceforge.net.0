Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3CB774567
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  8 Aug 2023 20:42:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qTRfC-000193-El;
	Tue, 08 Aug 2023 18:42:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qTPhV-0003x1-P6
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 16:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pd5jXSI9EnbfXT2ccz3JBYz8TkePm+Vn2DwMSHbH+0k=; b=EDCX/YkkFpIRGwD+6MvirIbT19
 86gcpjFo2++/g0UQhYKNijSTG8TSLZX7M9TnVUOUC2h1todO/xiSYkOnE/XCsFzQMv/UOfgXnrN73
 LK/+KMFouV96xaIMg6z5zOew4HY/1t9BtW2NE4QzawcwoExFGePEdH7G/0Tg8H+gaDXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pd5jXSI9EnbfXT2ccz3JBYz8TkePm+Vn2DwMSHbH+0k=; b=N4p1jNH4Silgs24OyhyN+qkNXB
 /m6Y0fXcHLsPGbU+jRbKOTuftCY2ZHKG9k4yyywPASRvaMTODKTjYzpmJJFUb9XTUt66sbmE2g3EL
 vlykFyq+XqJvpaJZyJUIMN7rVFqi8WoV6R7/fY4LvoYdSbpSq4KgGZgsiSzKuH8Q3JzQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qTPhO-00H7C4-Na for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 08 Aug 2023 16:36:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 22474624E6;
 Tue,  8 Aug 2023 16:36:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F417C433C8;
 Tue,  8 Aug 2023 16:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1691512600;
 bh=s2rPxOfy1Y0fjPSjnYAH7dGDP+SH3CfSccoZNpyTO+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y+qJvfVesc1nYGZoi+Lsb5+ELO7xkN0t4o6lfG5rhCYoXYVw1mXVn7lmCpIeG/2w4
 8yvsHlP5NZwsDZpf6kXdzggArbTh8fFgIplFSYwX2q3CZwKYR6QqfgQn79qhMN4S9O
 FncaicQUOicY7U210nvS+eRi/er10vurr5W9h7DI=
Date: Tue, 8 Aug 2023 18:36:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Manas Ghandat <ghandatmanas@gmail.com>
Message-ID: <2023080811-populace-raven-96d2@gregkh>
References: <2023080821-blandness-survival-44af@gregkh>
 <20230808102958.8161-1-ghandatmanas@gmail.com>
 <2023080833-pedicure-flavorful-921c@gregkh>
 <CAEt2hJ5icep5dF_OhuZwe0zig4VKCTKuQ0=iYfpOek7Ebp12Lw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEt2hJ5icep5dF_OhuZwe0zig4VKCTKuQ0=iYfpOek7Ebp12Lw@mail.gmail.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 08, 2023 at 08:45:02PM +0530,
 Manas Ghandat wrote:
 > In the above patch I have mentioned what are the changes from the version
 > 1. Also since most of the lines of the patch were a change [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qTPhO-00H7C4-Na
X-Mailman-Approved-At: Tue, 08 Aug 2023 18:42:34 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v2] ntfs : fix shift-out-of-bounds in
 ntfs_iget
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
 syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com,
 linux-fsdevel@vger.kernel.org, Linux-kernel-mentees@lists.linuxfoundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue, Aug 08, 2023 at 08:45:02PM +0530, Manas Ghandat wrote:
> In the above patch I have mentioned what are the changes from the version
> 1. Also since most of the lines of the patch were a change due to some
> indentation error, the whole patch appears as the diff.

As my bot said:

> > - This looks like a new version of a previously submitted patch, but you
> >   did not list below the --- line any changes from the previous version.
> >   Please read the section entitled "The canonical patch format" in the
> >   kernel file, Documentation/process/submitting-patches.rst for what
> >   needs to be done here to properly describe this.

Please read that and submit a new patch based on the requirements there.

thanks,

greg k-h


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
