Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ED583F243
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 28 Jan 2024 00:41:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rTsIW-0001Na-TS;
	Sat, 27 Jan 2024 23:41:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3Uyu1ZQkbALIkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rTlHt-0005nL-10 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Jan 2024 16:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CobbQsqvBTFHX4fAZc4WxCoKNf7Qym9tUoc5Rg1pYJo=; b=Gk0mpPRPry1FH/GCnM9DuTSMg5
 ucVJkvWYkJaIemwK3RCTASYb+tLx0tpUv7cD8gF0girocS+CUidcP7qIj0A2QnCVusHkOxm050VxX
 unTiwVQWLc9FJSMuooB3zUITogRMD/ox7lz29ekiAJNlaxmdTEBwmLNELTxijllVanFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CobbQsqvBTFHX4fAZc4WxCoKNf7Qym9tUoc5Rg1pYJo=; b=I
 jMYRdbvwIFDTqVlo4+0bdsWXJKT9aqaBDwOWbZJykzxBOzus1pcliOqKYbywkgoU/pa9GUI64uzh5
 trhBrnjPHJpNY/EZIMi2+cpKDg3Yzp6Uwie8DELgJUp1ivVYp0BII5xIS7HUVPH8JhS0V6Cqxb4b9
 JTvRXVEAkm10kQDw=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rTlHs-0001dJ-7N for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 27 Jan 2024 16:12:09 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-361a954c3e6so6981435ab.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 27 Jan 2024 08:12:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706371923; x=1706976723;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CobbQsqvBTFHX4fAZc4WxCoKNf7Qym9tUoc5Rg1pYJo=;
 b=wCxutdHzQE0Pm0H/iFhdJmA9QFmMuUw1kL445xQtUMcKGQ+kwRZqX8LJxRJL4Qyf92
 VPxJZgiqcI12EiDNs/nSJ745Ld1wydzm8aScYBlIFDjxCHHBoVC27MYnb46Xapy2Pxf7
 zlPBh8CABiA1C5WXhxrJPmOv2tQabWnFTeTBe76q3S38LEfEl2sk7xz5Mj4lD8y3xjIb
 YhM2j+a9qRaQDIaXSxkO4VQFnw9UIPpSlxe3i1YETHoBOAdWSDxvoh65JDx7Ld8AhczL
 KGIUoXIG2a5q3E1N2vzjZjFCwUwHfRsEiVbKQF6JC7ESk2ei5gLmdnQAeMWnbidwDONq
 wf7A==
X-Gm-Message-State: AOJu0YyTtUuAK+L4LsOb3uMxcYL3Iw/v7GR6rNNvT3n3Y+T20xfVzENx
 /Wx5BdoW+M7OS3Xw/0TSTzANmZF+4w3xOYMCYQ43DrDOR0uwpW+z5X6TLx0urp3gzf+rtNUiq35
 QlYVQmeO9BMENIkpKVYxCi00cHciU3/H01a41kklIsoZvD/wU2GR/9UI=
X-Google-Smtp-Source: AGHT+IH20cR57PeOLe4lJa5m7Tyz2Wi4IuB5L9esa9+3ULbsHM3Ko4jBOeX9JWSudWdn9mqm9O9++1mU2FyboUkmpzO4cHV3jntD
MIME-Version: 1.0
X-Received: by 2002:a92:cda4:0:b0:362:910b:2345 with SMTP id
 g4-20020a92cda4000000b00362910b2345mr189662ild.4.1706371923321; Sat, 27 Jan
 2024 08:12:03 -0800 (PST)
Date: Sat, 27 Jan 2024 08:12:03 -0800
In-Reply-To: <000000000000a213d505f1472cbe@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000582e37060fefac1a@google.com>
From: syzbot <syzbot+22e381af27f7921a2642@syzkaller.appspotmail.com>
To: anton@tuxera.com, axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rTlHs-0001dJ-7N
X-Mailman-Approved-At: Sat, 27 Jan 2024 23:41:11 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in ntfs_truncate
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=179a855fe80000
start commit:   bff687b3dad6 Merge tag 'block-6.2-2022-12-29' of git://git..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=22e381af27f7921a2642
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=175a9dbc480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1542c884480000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
