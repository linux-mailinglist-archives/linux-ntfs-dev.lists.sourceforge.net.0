Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B4C7AD8D0
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Sep 2023 15:18:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qklTT-0001tP-RF;
	Mon, 25 Sep 2023 13:18:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qklQF-0001kh-E5
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uwGB2aehoV8pAjRIdZYu44BpH3BJtMyOs0wR8olL188=; b=aNNl0M/AKRt2t6yUeK03K80a4w
 Q6NlzujXUdWmP4u44zAjNrDGMywIivSjVLOxcZVaLxigZkFDt43OQeUTWjcLk4EQgyg6ofkzxdoQc
 9+5KMFCfwVPOkWuPRybBzn1A6luPHarUjv0WUh67E817vgJPelWBhUds9Ua+pU4K8Nxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uwGB2aehoV8pAjRIdZYu44BpH3BJtMyOs0wR8olL188=; b=QBoe3mfCMIu79pJd9zr9LLTI0/
 uiZ/dKLu3sVli0yB4C1ZCkDcBjnAajQd3odtbM6A7pePbCgmPBqxCvrmSlH2wLzqH/B2QSusgoqBt
 1QNgfZ/GiYjaCQddROCbAZbp9CgJnz8XKdf72FFItdrA1dsApgy0AirYK0LFqqQy3T2g=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qklQA-0002Cs-4T for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:14:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 84BCB61028;
 Mon, 25 Sep 2023 13:14:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D99AC433C7;
 Mon, 25 Sep 2023 13:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695647674;
 bh=BQ4g/Wj+xZ88lUHX2e0MEdWfVFrj8gWigGSQws/C+OE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iq0IBIuacuNvbGcGb9Ti0CcEvr6Sp0QYbEStx/bZp4GhzR5lIwfu7/m0Vtmu1kmtW
 TTVFo8Hq2EWgLpdbbwDFahZIQ8spoHhbXpPtfedcTP1qWsrmB6YQSKQsGemDxYzHI9
 aZq7HgQTKnlOiLT4TE0iKWHSjb4DgssAEowLF212RDgO8jhD3U/1OZPjNfVZ2DSgai
 1N6V2LVFVArDnOL1BAOBsIwZCmrDbdrxYfI7JG1FKjLRFwondlKvRVklhGw48oZ8wN
 eQVtV8dnYI21hoHd+nOzXhREe/LIyJ2xOdbvdASLEZP6xJQLOE7Ule7iO8JVspq58X
 W4OZ7tpdr+YwA==
Date: Mon, 25 Sep 2023 15:14:29 +0200
From: Christian Brauner <brauner@kernel.org>
To: syzbot <syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com>
Message-ID: <20230925-mitangeklagt-kranz-992ed028ecdf@brauner>
References: <000000000000b782b505c2847180@google.com>
 <000000000000a27dcc060624b16e@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000a27dcc060624b16e@google.com>
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Sep 24, 2023 at 06:15:29PM -0700, syzbot wrote: >
 syzbot has bisected this issue to: > > commit
 78a06688a4d40d9bb6138e2b9ad3353d7bf0157a
 > Author: Christian Brauner <brauner@kernel.org> > Date [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qklQA-0002Cs-4T
X-Mailman-Approved-At: Mon, 25 Sep 2023 13:18:04 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] KASAN: use-after-free Read in
 ntfs_test_inode
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
Cc: linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, phil@philpotter.co.uk, anton@tuxera.com,
 linux-fsdevel@vger.kernel.org, torvalds@linux-foundation.org,
 linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sun, Sep 24, 2023 at 06:15:29PM -0700, syzbot wrote:
> syzbot has bisected this issue to:
> 
> commit 78a06688a4d40d9bb6138e2b9ad3353d7bf0157a
> Author: Christian Brauner <brauner@kernel.org>
> Date:   Thu Sep 7 16:03:40 2023 +0000
> 
>     ntfs3: drop inode references in ntfs_put_super()
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1674a5c1680000
> start commit:   3aba70aed91f Merge tag 'gpio-fixes-for-v6.6-rc3' of git://..
> git tree:       upstream
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=1574a5c1680000
> console output: https://syzkaller.appspot.com/x/log.txt?x=1174a5c1680000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=e4ca82a1bedd37e4
> dashboard link: https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=136b4412680000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11aec0dc680000
> 
> Reported-by: syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com
> Fixes: 78a06688a4d4 ("ntfs3: drop inode references in ntfs_put_super()")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

#syz test: https://gitlab.com/brauner/linux.git 493c71926c20309226b6d73f6b661a9813de5f0b


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
