Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F3F7C968D
	for <lists+linux-ntfs-dev@lfdr.de>; Sat, 14 Oct 2023 23:49:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qrmVb-0003M3-DR;
	Sat, 14 Oct 2023 21:49:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3EmUdZQkbAIEx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qo1hY-0007fN-Tb for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 04 Oct 2023 13:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WnT9mm81EGurra3sbmIkgyRkR1mbNMjC0mH42Ehxctc=; b=GiuXsYlUpZFY9bwVmibyT2oc4E
 kLaQiuJVtmkTFhD8uzAKnRlL1picN0ZxEHjeYEkeJ/XjCITeUmNH8dYerM0tw02K9Ljh/xFdvW7Z5
 b2Z36b6Fron+O4RoH/Y0hMQeRKOo2OtdopWvAqkamHYkhv46ZTs7wAIP8CrvEbTyrEXs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WnT9mm81EGurra3sbmIkgyRkR1mbNMjC0mH42Ehxctc=; b=h
 x8fI9h07zt1B9PvM0orpcLKnu6TKB99bE/2a6YHIue7eKPfsd3k5s2KecaM6qFJZnUCvJwaYgiBqw
 zKZABOQKH8gX3GtSQzBc+/b5eny96B+Ke0XUUGD6dzBX56pLSMjNzDoTEXtr1WAIk5nTr13yDOOpg
 irPcyN9NNVs41I38=;
Received: from mail-ot1-f70.google.com ([209.85.210.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qo1hP-0003iU-JZ for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 04 Oct 2023 13:14:06 +0000
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-6c7a9cd75caso1650763a34.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 04 Oct 2023 06:13:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696425234; x=1697030034;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WnT9mm81EGurra3sbmIkgyRkR1mbNMjC0mH42Ehxctc=;
 b=cCVv/QPkUhDSXxkoXywh5mFd1sp57BMTmxiqjfjfb9UPbfEIcqY6U3GoCTxTc/FrdD
 bfRAwYuUBaSsmP3M/Py08KSWw6Yy0DET9D4waS/+me/An5qHi6UIS3GQXqA+v2YZZuaT
 rZF+eFK515Vm5J8MwlxLmeags3GBRQXiaFDfmXjFtHVwywJFyLgnuT26RRrjV7h15qVn
 Yc5lBXQvpj1If1So1czx3i2r/uMBuTV/dOUB+mFqh3U+dtORZuMjc7ffyKiTZxSemc73
 TzmjMfHaVwr90xrQr5JCBRwYXFberQCqNCLjSNPyzrkzN+dWabZTqXx5MNNyGbTmyeUk
 +eIA==
X-Gm-Message-State: AOJu0Yw8wkQUlOnq2JRfedt/KRJiDk5INCxT8Rfi3QBWSa3228iVEYS9
 Y+SdndGSD88fSKUMuTYKUFOhS1BEX9u/8lN2oXAV14xZ2UfU
X-Google-Smtp-Source: AGHT+IGUAofh+8r+Oh0/Def6ijScSV5T+rXKZ1byN0sspuCtt3jKMjaAac5Opyu0n9CfSLMyLrKcuanu0px3GQjZ5OBYLrh7g3u7
MIME-Version: 1.0
X-Received: by 2002:a05:6870:3a18:b0:1dd:39ce:e252 with SMTP id
 du24-20020a0568703a1800b001dd39cee252mr1011367oab.0.1696425234278; Wed, 04
 Oct 2023 06:13:54 -0700 (PDT)
Date: Wed, 04 Oct 2023 06:13:54 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007a31ca0606e3c7b4@google.com>
From: syzbot <syzbot+list840e3c8e5a11b542fa0b@syzkaller.appspotmail.com>
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
 issues were detected and 1 were fixed. In total, 24 issues are still open
 and 8 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.70 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.70 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qo1hP-0003iU-JZ
X-Mailman-Approved-At: Sat, 14 Oct 2023 21:49:17 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Oct 2023)
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

During the period, 1 new issues were detected and 1 were fixed.
In total, 24 issues are still open and 8 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  4008    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  3219    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1420    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  638     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  396     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<6>  232     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<7>  37      Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<8>  36      Yes   kernel BUG in ntfs_lookup_inode_by_name
                   https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b
<9>  15      Yes   KASAN: use-after-free Read in ntfs_attr_find (2)
                   https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2
<10> 13      Yes   KASAN: use-after-free Read in ntfs_lookup_inode_by_name
                   https://syzkaller.appspot.com/bug?extid=3625b78845a725e80f61

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
