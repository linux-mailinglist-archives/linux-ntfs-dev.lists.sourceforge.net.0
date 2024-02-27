Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6930B868B8F
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 27 Feb 2024 10:04:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1retNZ-00076I-H0;
	Tue, 27 Feb 2024 09:04:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3LjbdZQkbAEUz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rely3-0005Xn-PH for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 27 Feb 2024 01:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Aktuv2KRKCqLRwq94WSyQgX3rAr6mzRgiYzRkrGsztc=; b=M959yFae6HBNxElLstKPi82iEN
 z84TCg7LESJmtOvJayKYI/IPXadRlo9WjAwpzQ3oFhYlGtmHP2xUhd+piw9/QaI28j7KkxKUL4zAq
 3271CQycuCYgq1/V/tGLg0TUFKaFbSe/A2Ia4SgLl7X60C6vzSIvMiuLpyUV5bRnGY8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Aktuv2KRKCqLRwq94WSyQgX3rAr6mzRgiYzRkrGsztc=; b=c
 8dRIsJNpHbWZNQwsZY4dCPD4+0kTUTK+9qMSlUCNVVGPBJ0dxgh8oKyLO+U2Vku0zWvdj6lLZWhes
 Eva7GBzs4y2rqAfQZj8YXYjNJpPi0aAZeObjGWJw4ZtGHFavZrXuBQ6KTu6XCRuA7qOTLLdiePsvM
 qGWCG5UGog09Z7RU=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rely0-0000LC-1i for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 27 Feb 2024 01:09:11 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3657dff68d6so41141625ab.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 26 Feb 2024 17:09:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708996142; x=1709600942;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Aktuv2KRKCqLRwq94WSyQgX3rAr6mzRgiYzRkrGsztc=;
 b=Ko7hUYecXWY8o7bKHiLU0OvG0M/pfQW58ooEBOqf/7KbUTvnsWhpRjVIewmPd37BdM
 H90C6e3k5iQ1I3BfI+W9Il2nsDbUbYA6Ns2I0wDsX8s4x6chgE8gmhjUmwN6pC5GczWs
 OUt7LQkfqRUfslJVRdaMUjPLzx1evs+8vxyZuUHG6bOnCCtYWQ5hC7BpViXgq93lxzKh
 lsZMzcyEHC7bdXacW3tk96qIlw+62qiRKR0UPUxMdsj1A5o+p5xVSx+TdXIxbgjALWM4
 SVP81cVH9BEATpiuqUACo68xIXYW33nZAslPcDwqNQ9oFqmThsZEzVmw8CL7IKniVscV
 1+uw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXc/6DKDsvvNcox2xIgPos5iIJGSvDiRyapZRSqwTmrUdSf332P09dJ4oCMkYpuMdCS+htGGhixt3+6tR2Htq6m1S1QRNgEHm5MjgiDhR78ylA1Zjg=
X-Gm-Message-State: AOJu0YzixNLxNlAw3v/jKefNV8FmwnMmKn/SHykDPgwmVXSeCSz3olQ7
 p+4iM1LKQidFJhKZEiDnB3c3JqDpdgBvqlA8TvXQ3tbUmEJwfxjNBIXHdL5H81wHLrAYBVU7xty
 LLczUTjqCFl45V/HK4bjXnUi0NN5j33yygqqPMj7pPCTWZnvx6sdnDfs=
X-Google-Smtp-Source: AGHT+IE1wkVsYou1Utkg829CH1m2uRacrTIEQTXsrl5dubL6Fav7LdHQpDU/SJebyUC6BahX5BA+F53OQcjQF6i4WPT/D5AWRTlZ
MIME-Version: 1.0
X-Received: by 2002:a05:6638:358a:b0:474:96f7:a3a1 with SMTP id
 v10-20020a056638358a00b0047496f7a3a1mr45049jal.0.1708996142473; Mon, 26 Feb
 2024 17:09:02 -0800 (PST)
Date: Mon, 26 Feb 2024 17:09:02 -0800
In-Reply-To: <000000000000cc261105f10682eb@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000fea5b1061252ab7d@google.com>
From: syzbot <syzbot+3625b78845a725e80f61@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
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
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rely0-0000LC-1i
X-Mailman-Approved-At: Tue, 27 Feb 2024 09:03:58 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] KASAN: use-after-free Read
 in ntfs_lookup_inode_by_name
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16ae7a30180000
start commit:   cc3c44c9fda2 Merge tag 'drm-fixes-2023-05-12' of git://ano..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=38526bf24c8d961b
dashboard link: https://syzkaller.appspot.com/bug?extid=3625b78845a725e80f61
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16eae776280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11d273ea280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
