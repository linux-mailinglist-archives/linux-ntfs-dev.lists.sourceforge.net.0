Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F3C7AD196
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Sep 2023 09:25:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qkfyS-0003p5-P0;
	Mon, 25 Sep 2023 07:25:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Md8QZQkbAGISYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qkaCJ-0002J7-S7 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Sep 2023 01:15:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4mXWJ2scKUEqPcEEGulmmGomgjLYP4kOCRMwILx6WjM=; b=NH4zHp2vK6wBkK3c6mJJkDWAP4
 6XjjNUHygcrzAq7D8y4AEvAKDGxiD5KXSmlpz2iqAPUC6ys8AWpZtOaeW4XD5Hwr94mTOnlYwrF76
 t3xbCIoz3qhrsEs4+xz4mmatIwdbJK3+Hfq0uEYYiRtccu+FeMuIK2SDhWJPJUmvCjn4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4mXWJ2scKUEqPcEEGulmmGomgjLYP4kOCRMwILx6WjM=; b=X
 PEjnoqOp1wWBXmzi+tHfCviA8c/IuSWW1fuJVK4MZdsJOwjEQdZC7bKxnUMyDwC79WF9FZOgbmAD8
 s6lPuyv0k2UTs3s62iZr+xnLi3DMtCeuTfefKXGsWaDJJzA0Tyeii4+KxwSI+Mrs/OmWnPVQzxJnE
 wCG+mGbEcEJ3Azmc=;
Received: from mail-oa1-f70.google.com ([209.85.160.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qkaCE-0001NE-Em for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Sep 2023 01:15:38 +0000
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-1d6602ff15aso12852169fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 24 Sep 2023 18:15:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695604529; x=1696209329;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4mXWJ2scKUEqPcEEGulmmGomgjLYP4kOCRMwILx6WjM=;
 b=SXeLy96JaU6ER/5wPIOAP5GiowLOUyRNGLhjFyvqJGIBB0ssd6/n3v/5BnwcjDR/Ck
 lO0hXVAnKdQu5WQ6uCeJRIlxfOnQQf4vn164sWFQk4wEeFOMONZgGIwQahyhmeKJlkUM
 +ZG3eUCDEV7gsXdjZgZLUwX61q9UbXfaPk1riwc1azXZ4BIe7DJcSKf3K8gU1TwDeAof
 5xdZ41jiGUi1ns5FteVf85ZKo9lMCnnfEpHVdLfL8oAdBK20mjpBwSN9biDgwVjZXOeE
 2DwIs1PEf8kiqaPwJgIITc1zAomyx7RzYV4aHFbeoNqzvmoLNYIK/+Uwp1rvFb47RECe
 6SgA==
X-Gm-Message-State: AOJu0Yz1/dgqmOTOHAOe4Vg+k0XT/oemTK3juQE5BtMMiBXx2ZUwYO6y
 6PZXyLwcfl4ybHrG+REDsANfKXxdrWAoxjjdNA0mD1LTiIZ3
X-Google-Smtp-Source: AGHT+IF6nxODDAWNMD07YfAui7+hnaCMUlIRnLJLybEVpTbxyqHjKCZhNlNu46gm9+8ZaK3c7DNMoMAxqe1/vdlWNrzEyOcoatqc
MIME-Version: 1.0
X-Received: by 2002:a05:6870:64a1:b0:1dd:69a:665d with SMTP id
 cz33-20020a05687064a100b001dd069a665dmr1574583oab.3.1695604529067; Sun, 24
 Sep 2023 18:15:29 -0700 (PDT)
Date: Sun, 24 Sep 2023 18:15:29 -0700
In-Reply-To: <000000000000b782b505c2847180@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a27dcc060624b16e@google.com>
From: syzbot <syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com>
To: anton@tuxera.com, brauner@kernel.org, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, linux@roeck-us.net, 
 phil@philpotter.co.uk, syzkaller-bugs@googlegroups.com, 
 torvalds@linux-foundation.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 78a06688a4d40d9bb6138e2b9ad3353d7bf0157a
 Author: Christian Brauner <brauner@kernel.org> Date: Thu Sep 7 16:03:40 2023
 +0000 ntfs3: drop inode references in ntfs_put_super() 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.70 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.70 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qkaCE-0001NE-Em
X-Mailman-Approved-At: Mon, 25 Sep 2023 07:25:42 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

syzbot has bisected this issue to:

commit 78a06688a4d40d9bb6138e2b9ad3353d7bf0157a
Author: Christian Brauner <brauner@kernel.org>
Date:   Thu Sep 7 16:03:40 2023 +0000

    ntfs3: drop inode references in ntfs_put_super()

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1674a5c1680000
start commit:   3aba70aed91f Merge tag 'gpio-fixes-for-v6.6-rc3' of git://..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1574a5c1680000
console output: https://syzkaller.appspot.com/x/log.txt?x=1174a5c1680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e4ca82a1bedd37e4
dashboard link: https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=136b4412680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11aec0dc680000

Reported-by: syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com
Fixes: 78a06688a4d4 ("ntfs3: drop inode references in ntfs_put_super()")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
