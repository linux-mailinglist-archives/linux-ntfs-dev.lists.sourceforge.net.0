Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C4D77E982
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 16 Aug 2023 21:18:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qWM2H-0004SO-3E;
	Wed, 16 Aug 2023 19:18:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qWM00-00030X-SW
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 16 Aug 2023 19:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BQ6hnk5E+0BGaeyptlG1D2exx0gfW+lgoRpy8d+HBM4=; b=OLHmLmiK2tWczVTUUKDRQD9wza
 juVGT/x9gzF81mD1wcdbqdVpBp8G5Pv4lGOw6ZcJsX5uh4Up+yy0AvIZoO6j61sJ1qfrk/rAyykMu
 kw9fuGUAFv9df+z4qztf9OB9uqjeCZeHYAX4oZXRBr7zOaiH6en2bVCsqYwiFYtV5UDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BQ6hnk5E+0BGaeyptlG1D2exx0gfW+lgoRpy8d+HBM4=; b=Egk2/Uf5wfh/42WKYvDityfFHu
 ouFzIwERUUneUfyVkz1l/WMG6HOG16mwrwGDH5+eUC+5lTrF9iod7m8cpkMMYdSjHbW9BufjQOc9s
 w3sifi7BN+UvZo94ZOdEstvhx8W3SQSCA3QkHzgCtqoXXzbMM9+D/ehnAWM9QW31ojG0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qWLzt-0005AY-S6 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 16 Aug 2023 19:16:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 26A4161FED;
 Wed, 16 Aug 2023 19:15:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1380DC433C7;
 Wed, 16 Aug 2023 19:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1692213355;
 bh=72YlqPhkOdrbhyCp3YFbVRU56Qy6DgtXMIcnpb3LfUs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jmUg4WZvE56CBBpixX0YhC43+TGzHWtj8Ly1JmOeeef/GO/dl9RPsvAZOIT9anLlT
 Xuo/FYNFQMw/6UmVgLhevpIIVmaUzLxnF8YTTw0NMDvSSfjVTjWHGHIZbRoUnhaHXu
 dvGmt8QFVClqfUHcGS/ifXY+JgPBgDq6OOOlBP+U=
Date: Wed, 16 Aug 2023 21:15:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Manas Ghandat <ghandatmanas@gmail.com>
Message-ID: <2023081621-mosaic-untwist-a786@gregkh>
References: <20230813055948.12513-1-ghandatmanas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230813055948.12513-1-ghandatmanas@gmail.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Aug 13, 2023 at 11:29:49AM +0530,
 Manas Ghandat wrote:
 > Currently there is not check for ni->itype.compressed.block_size when >
 a->data.non_resident.compression_unit is present and NInoSparse [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qWLzt-0005AY-S6
X-Mailman-Approved-At: Wed, 16 Aug 2023 19:18:25 +0000
Subject: Re: [Linux-ntfs-dev] [PATCH v4] ntfs : fix shift-out-of-bounds in
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

On Sun, Aug 13, 2023 at 11:29:49AM +0530, Manas Ghandat wrote:
> Currently there is not check for ni->itype.compressed.block_size when
> a->data.non_resident.compression_unit is present and NInoSparse(ni) is
> true. Added the required check to calculation of block size.
> 
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> Reported-by: syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
> Fix-commit-ID: upstream f40ddce88593482919761f74910f42f4b84c004b

What is this last tag for?  That's a kernel release version, what can be
done with that?

confused,

greg k-h


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
