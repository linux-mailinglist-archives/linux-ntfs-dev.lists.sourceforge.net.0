Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 126D571FC6E
	for <lists+linux-ntfs-dev@lfdr.de>; Fri,  2 Jun 2023 10:46:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1q50Qe-0002E7-KL;
	Fri, 02 Jun 2023 08:46:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3EKt5ZAkbAHcntufVggZmVkkdY.bjjbgZpnZmXjioZio.Xjh@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1q50LA-0003gH-Ml for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 02 Jun 2023 08:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R21t3yxIGLscTBQIenn82agFv8hkbnPzy8Ffbly2fQc=; b=WOXPk2vgB7XUTthO4sUTkYHmYt
 I5tCGH8pDoKWDU9pOus9CfySvKs+01LNvENn+Qt/trSQZQFLsolh41PbHU3Y/knKd7ndBI4a/9wOt
 lGaEHvuIuS5iBh7LYoXQZRvhnmD3sf4Ha1Gs1b8RPKcEy8LUYwzT3eMALpy2rirnh7ls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=R21t3yxIGLscTBQIenn82agFv8hkbnPzy8Ffbly2fQc=; b=H
 ql8tIhJGtv7U9hcAbWPN3SOwl6hnC2jYdiBp5WhOOBEdROX6gVS94HvM1paZg+3D7ITOWFty3OCPj
 of/it0YeDfwafii9DZt1Y3n7te9Dw2dlIdHmO4suS8x5FFqVByHq3FwN94Uo2JNTgB9FXOr404WsQ
 JBwKuvTHsgTN6rq4=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q50L8-0005qq-53 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 02 Jun 2023 08:40:55 +0000
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-777097126abso51683739f.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 02 Jun 2023 01:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685695248; x=1688287248;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=R21t3yxIGLscTBQIenn82agFv8hkbnPzy8Ffbly2fQc=;
 b=MWYJ3T9pNkGxqsCtgt8MzMkdFEub3RwEofNgx9J2roKRNqfSszCj4o45TlRqpy7wt4
 YDiSO7Lj8n/zQp6fNjSZ0hdbDLAKvOl6Jw/40TRj9hKJvXuADla9Pq9GBwdkURIQFMu6
 OPWcjUKCtiNihg46Ba02iWBIPyEuKNM8jLU9FqkvaIimLkftw0/KVR4qVie/1n+bED6o
 4b5nJl5GnTUblnV9QGGBJ4xaXTdWGHRUtJZiCBCSkHm1h4C5gFUj+HwHyWoY3tt+kv1K
 I1Pci3RGSRtD9Cw9OGvGMoEbwOZxwjBO/f+7mFPLMA3LoTxGw0p9UGMKCphbdSLV9x/s
 9eHA==
X-Gm-Message-State: AC+VfDy/g1c+Rjs6FVC89HeJUL0ZLXdD6b6x7X64PAdQO+V0MGq8RTCF
 zXVvlMr31Zd/MxQoXY044C4V2BxrmLOUWPCO8MFJjpCkQ+h5
X-Google-Smtp-Source: ACHHUZ7tm68wj2kCbhsNKE7zQLZeoOSQO31xd4HxX+TR4+/zTR6v1hDDvUFr/P0SZaxAsbGsTZpyloM/VJpeCl7MW/lUiHMeDEDG
MIME-Version: 1.0
X-Received: by 2002:a5d:9ec5:0:b0:777:127e:6dd5 with SMTP id
 a5-20020a5d9ec5000000b00777127e6dd5mr671109ioe.2.1685695248595; Fri, 02 Jun
 2023 01:40:48 -0700 (PDT)
Date: Fri, 02 Jun 2023 01:40:48 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007e054605fd218210@google.com>
From: syzbot <syzbot+list96ce3166ad941b6ae46b@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello ntfs maintainers/developers, This is a 31-day syzbot
 report for the ntfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/ntfs During the period, 1 new
 issues were detected and 0 were fixed. In total, 25 issues are still open
 and 7 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
X-Headers-End: 1q50L8-0005qq-53
X-Mailman-Approved-At: Fri, 02 Jun 2023 08:46:35 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Jun 2023)
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

Hello ntfs maintainers/developers,

This is a 31-day syzbot report for the ntfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/ntfs

During the period, 1 new issues were detected and 0 were fixed.
In total, 25 issues are still open and 7 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  2429    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  2284    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  879     Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  392     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  285     No    KASAN: use-after-free Read in ntfs_test_inode
                   https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
<6>  30      Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<7>  9       Yes   KASAN: use-after-free Read in ntfs_attr_find (2)
                   https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2
<8>  9       Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<9>  6       No    possible deadlock in ntfs_sync_mft_mirror
                   https://syzkaller.appspot.com/bug?extid=c9340661f4a0bb3e7e65
<10> 3       Yes   KASAN: use-after-free Read in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=d3cd38158cd7c8d1432c

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

To disable reminders for individual bugs, reply with the following command:
#syz set <Ref> no-reminders

To change bug's subsystems, reply with:
#syz set <Ref> subsystems: new-subsystem

You may send multiple commands in a single email message.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
