Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9EE76E3E0
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  3 Aug 2023 11:02:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qRUDw-0000bt-Ji;
	Thu, 03 Aug 2023 09:02:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3G1HLZAkbABgGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qRSMK-0005i2-TG for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 03 Aug 2023 07:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ub/xbfPlZpojg8/OoN0aL5GP8HdKwgPpTd7mwazWUX8=; b=jowqtHHtuLQR0H7I9r6+iPO9Bm
 dM89mS6Xwlfe7LD0I3cHRgm+BbRLEFiueKTRXZQUZuFzHm1B5OKCcc9CUKK7OQV9PBnRS0UT+aQwQ
 flgeVqo4hRLNpHhvLcd/kXsxmMU5jecIheKbUX3DKqKcI1sfCSdDgbn1wAKs9I47792k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ub/xbfPlZpojg8/OoN0aL5GP8HdKwgPpTd7mwazWUX8=; b=j
 3UFdcXQHSZ9X/HYTeeMnxi4rnmOXnaTntQ++L7vKV44yWqaXV17Wd+4FEGagi7eN4YHcHSjj+qtfk
 EVg1tdu4c2YQg++anvR0DSHHmcYlbKdgDT1gwWHbpjYZQS7Utf7TJ7uL4HTtk50O1IItw5BhePgAF
 /M2eL9nFjBezdT4A=;
Received: from mail-oa1-f69.google.com ([209.85.160.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qRSMK-00039g-JE for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 03 Aug 2023 07:02:57 +0000
Received: by mail-oa1-f69.google.com with SMTP id
 586e51a60fabf-1bb72ad88f8so782777fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 03 Aug 2023 00:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691046171; x=1691650971;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ub/xbfPlZpojg8/OoN0aL5GP8HdKwgPpTd7mwazWUX8=;
 b=K5VrT+4I7y9qXw+Hzcy5Gh3lRJV8VNmXmjFscYa1cuC5wFnBk8xwOjyrvlr03Z89jW
 HiET7dX9Oht8wknDYFVqI2ELxYNaZsBGfImzg8TlhewJHFVA2xyZjI3N3+cEwQ+i+q3R
 o2Sg4GubcNrD0sL54dII9JqWX/Xe7/QMYd4SudRxLrUzRact9hZ1SFi6YZeeFkgiLJBh
 iBjITHh/bZQakgMVBKz0uGg8tH6ud9//u8ldOaNgmjhyLx9DQhOoVnb0KJm3ajZsnzIa
 U/qT5OZlhQNkWK7vFjSOKALmScaHkYgiNUD6JH1aMNie69xLWURkIhe0qDQYMubT7Ppv
 nrbQ==
X-Gm-Message-State: ABy/qLabYWZKJr4wZomKiFHdZutiaFCDENoR7Ll5BcdiIUpNzetXnkt1
 d/9eTTLzuhulFcf5njdBJ2FmV3jaNSBMATtywbvedQtABZa2
X-Google-Smtp-Source: APBJJlHC+53K0z0PJNrt9FGKz8CCrzg+6kRSqTZAuXgL9WmfuW8+o8NjzldBQLmzKrgdJWqmCKM9XIOCbsv0tsMZkMNm9yf2tSH7
MIME-Version: 1.0
X-Received: by 2002:a05:6870:d899:b0:1a6:d518:f72c with SMTP id
 dv25-20020a056870d89900b001a6d518f72cmr18423230oab.11.1691046171028; Thu, 03
 Aug 2023 00:02:51 -0700 (PDT)
Date: Thu, 03 Aug 2023 00:02:50 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000052b50a0601ff5eb3@google.com>
From: syzbot <syzbot+listc96f9b68a1099993c28c@syzkaller.appspotmail.com>
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
 no trust [209.85.160.69 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.69 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qRSMK-00039g-JE
X-Mailman-Approved-At: Thu, 03 Aug 2023 09:02:23 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Aug 2023)
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
<1>  3467    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  2820    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1153    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  548     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  348     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<6>  294     No    KASAN: use-after-free Read in ntfs_test_inode
                   https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
<7>  184     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<8>  24      Yes   kernel BUG in ntfs_lookup_inode_by_name
                   https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b
<9>  17      Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<10> 13      Yes   KASAN: use-after-free Read in ntfs_attr_find (2)
                   https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2

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
