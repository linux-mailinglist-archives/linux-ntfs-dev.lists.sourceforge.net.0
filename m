Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A62858FFC
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 17 Feb 2024 15:13:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rbLRV-0000mo-34;
	Sat, 17 Feb 2024 14:13:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3_q7QZQkbANMHNO9zAA3GzEE72.5DD5A3JH3G1DCI3CI.1DB@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rbKNW-0008At-HG for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 17 Feb 2024 13:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FThBQXYga9w1cWMyp/yRXDDAEE94fJrZ4ihdn0r8aIQ=; b=IYpkAE5y1/jRwd/Y3TWvLrvk+c
 4C3DjS8A3nbpXW/dXocZDqIvJa3MSTYu+eb/A6ijbG+3Cfei0YG0frFdyiPApJKI7hnjWEgsuGm9F
 mYfJHRAvNnfeVqtgstpM/Dpd1A2aWz96uMym8qf81ZVOO2vIZXrFX08ieK90jhBWuG+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FThBQXYga9w1cWMyp/yRXDDAEE94fJrZ4ihdn0r8aIQ=; b=Z
 fFgsgcOHSgdcKalgP+XZePjqv4IuLY8jIn/3lb4TwGacC6mTjLK+ljfnBxVZpzUeDwEXkQ6Yaodg/
 70mHA4Gey2BanotBqQNz8ldgbahnP15t0dehVaOUn7bT/PZ+pTOpTCvJCWbF+aFutXrflY8YsCeJP
 8WzqaRAhwWAqTKz4=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rbKNT-0005wZ-Rr for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 17 Feb 2024 13:05:13 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-365116383bdso8191995ab.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 17 Feb 2024 05:05:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708175102; x=1708779902;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FThBQXYga9w1cWMyp/yRXDDAEE94fJrZ4ihdn0r8aIQ=;
 b=HR9gF+lOE/ItwiKNxRUi4PT3sXt2tLuW3ABZToH7qghJHSDxck9uTRAiRqt6gMHPNq
 aytEVEUxdgUWf6+4htNE7MjzLs7yN4MoJAsaMeF2cNFg6dbEGPuqWmHqYtrbsk1BuSM9
 Sg9O55IeKzivgyVVPgTb/ai2lX73F6mwzaBuDqQxn3Ec1W42ypztBUtiR0SsisI1CtGB
 Tz50CMV4HPhWSJ53HtcVtQCKKCndVHerzxzaM+YFXbP1Pe92XRHkKGY4VdLMe5+Ve86N
 9RlWYesu55tU5gZBdKvA4YsLHy+8OTJnD9gbAH0OGk1LjX9qh2IUisNN0+xOdqleNzF3
 ppPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU11dNHnd5bfKopxyHF3CEaaa8QK8gaqLiiCjVtxc503UBcttlW8x2bIueIa4824dDc//k41sTRduyvbWa4Z5ihPLnIQBLfAUy/Xu8KKkskZY6je/U=
X-Gm-Message-State: AOJu0Yw60wCFC2Z3OY/FP8GYBYnfMzBdutctvo94p2t3BVBqMyvxJVr8
 zLBB1TKJ7tZeJLaB9wfxOFsPkwOQcT+4wcpGd8q0DhOAJltGivWNgB62mqVT/iUg1x2TjQSqPFH
 IlmtK2vuVLQaUYKIkc1lLFjiXq/qc+wfwVnExButwm3RzbQvBYKySkII=
X-Google-Smtp-Source: AGHT+IEX9WITVv4GtTYdnW4Gcm9u1rwfgoZb080R3rLYEmMo/IgaR6FjIYJegvp5dLVSAfB3thDnrcKX+MYpjj+ledVz59058AXK
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:388c:b0:363:a059:670b with SMTP id
 cn12-20020a056e02388c00b00363a059670bmr436688ilb.4.1708175102569; Sat, 17 Feb
 2024 05:05:02 -0800 (PST)
Date: Sat, 17 Feb 2024 05:05:02 -0800
In-Reply-To: <00000000000046238c05f69776ab@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000033f84e06119382d7@google.com>
From: syzbot <syzbot+72ba5fe5556d82ad118b@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 6f861765464f43a71462d52026fbddfc858239a5
 Author: Jan Kara <jack@suse.cz> Date: Wed Nov 1 17:43:10 2023 +0000 fs: Block
 writes to mounted block devices 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rbKNT-0005wZ-Rr
X-Mailman-Approved-At: Sat, 17 Feb 2024 14:13:23 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] kernel BUG in
 ntfs_end_buffer_async_read
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

syzbot suspects this issue was fixed by commit:

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14016cf8180000
start commit:   dfab92f27c60 Merge tag 'nfs-for-6.5-1' of git://git.linux-..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=71a52faf60231bc7
dashboard link: https://syzkaller.appspot.com/bug?extid=72ba5fe5556d82ad118b
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c987eca80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=144a738f280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
