Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BDD82D5D7
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 10:26:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPJEI-0000Ke-5Q;
	Mon, 15 Jan 2024 09:26:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3QPWkZQkbAPElrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rPIuF-0007dS-1t for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 09:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LVx/TRY5+aM3lFW0CEf4g6+AvX+H1vWHWxhHpajIqc4=; b=THitWKXE+/OitDkg9uMsCESIh/
 MP095g5vKgZQWtFOdbKCn+M6vtqAxqdgW8u7DuzuNOVlHQWMFpPibYR5gqVshyMjSo0uDJsHugMpi
 e+nu95U+4Dhek5Xk1L0Q5G6QcvNsS58IcxIG+ZUUl3xFJtLGcGwpEMLGIihRU1Bpq4pI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LVx/TRY5+aM3lFW0CEf4g6+AvX+H1vWHWxhHpajIqc4=; b=O
 7EGy5U6XJbfhjqLvPf5lKOscSlbdeiBKRXH1UGfCEVtMOBt/OvJbgo1/soWr4zm3ykIxwoS+3uLnF
 wE/a/M+Y3Krh47OAftEsX+dC+RQ20SZ76iv7G47ndVbc4zhxBiidhM08E1cP7B+3XbJJSLdXOtAiK
 ksgpysINBusJHoXU=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rPIuA-0003xZ-B9 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 09:05:18 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7b7f98e777cso798361239f.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 15 Jan 2024 01:05:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705309504; x=1705914304;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LVx/TRY5+aM3lFW0CEf4g6+AvX+H1vWHWxhHpajIqc4=;
 b=cbaw2jQR/lWUQWGjU1emRZGoHIle6QGlxFACnuo3Nks1iA6lORwGJpJeVhQjYKHvGg
 2+i8cUmXoLWiX8KAYjt2B0snIiwcScGGKHxe64GeB1dyNaEHKZCGskOTl0xRrNC6Nq++
 CkkL1/7M40EU+uznSDYLoj8OFApubrobAmD3xfxz9ozO6QWDV7h1XJQiEVipJ5424X7b
 Fhnwk+6HkI62bJA/VwhiefA1qs8HxO7upbNPw1QdCINOljfBrwE5PahrMIhc9Hxbn+gL
 A9DOO3eogbFRwOJqNH8AwB3N7Xz6yzSFEkNhyuC3YY2dtbVs89rDqe/dSXhyFNJLiczj
 zbFQ==
X-Gm-Message-State: AOJu0Yxc7VLr2aCGApuEiFEdxbQLDhzxLmLAbaC8t+1T/CvT7EjhhSL2
 pc7JTWwJZGr8djMhOwOggOcfpGUIMZrWhj1SguJ0gPKAIxWv
X-Google-Smtp-Source: AGHT+IFAHtwXsKwRc2tGaNFSUZ/qG8YpZXq3pp2yPUkA8Lw9Fb6OwGxvac+9eyj/z3Ljf8TR9XhcSxHYsB9JfXyjfMYncGkXFaPd
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1515:b0:46e:6732:763f with SMTP id
 b21-20020a056638151500b0046e6732763fmr221883jat.0.1705309504269; Mon, 15 Jan
 2024 01:05:04 -0800 (PST)
Date: Mon, 15 Jan 2024 01:05:04 -0800
In-Reply-To: <0000000000002562100600ed9473@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003bf67c060ef84f04@google.com>
From: syzbot <syzbot+84b5465f68c3eb82c161@syzkaller.appspotmail.com>
To: anton@tuxera.com, axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com, 
 viro@zeniv.linux.org.uk
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPIuA-0003xZ-B9
X-Mailman-Approved-At: Mon, 15 Jan 2024 09:26:00 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] BUG: unable to handle kernel
 paging request in lookup_open
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11feec2be80000
start commit:   831fe284d827 Merge tag 'spi-fix-v6.5-rc1' of git://git.ker..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ae56ea581f8fd3f3
dashboard link: https://syzkaller.appspot.com/bug?extid=84b5465f68c3eb82c161
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13a52a24a80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=156f908aa80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
