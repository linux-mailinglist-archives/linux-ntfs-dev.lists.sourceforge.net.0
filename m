Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF3828CF0
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Jan 2024 19:58:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rNHIW-0000Fz-15;
	Tue, 09 Jan 2024 18:58:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3cI6dZQkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rNGiS-00018E-Dd for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Jan 2024 18:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MhRQfuRoLIkuw/ytyqzS8UAwRWBfjYwu1CGl08N+psc=; b=WrURWsypbNu+Pa7stDkuhQMeya
 N9WGCDM1eeLUsVUqA/363zN/Aq/bBckOqvgVUBmZihHwE1G0j9+Pl+WDg/T9t5JyLIlhD5TyKJpN6
 Do9pMJOSMdCFNSigPbxAfqcnhh3ydh8pJksyTp8lnrpK5OoqiEmn/+tIdTYLF0/nZ4LQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MhRQfuRoLIkuw/ytyqzS8UAwRWBfjYwu1CGl08N+psc=; b=B
 lUlmFmQ0V5s4bFTjgKVuPiPfJsT2zjV7z+6NQ64Fwn6OIHlx7IFgl5PS4GRSV37pq7vQnl1flJw7T
 WoWaxXt1zDwIFJP7S8jXLXsTQnFfwMsoXVFnpacYMn7EvVF7u///lx4x+picYrD7oia8ny4SVQSJf
 kDfDMIo3MkaABC4E=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rNGiQ-0001yS-MA for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 09 Jan 2024 18:20:44 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-35ff7c81f4aso30344945ab.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 09 Jan 2024 10:20:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704824432; x=1705429232;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MhRQfuRoLIkuw/ytyqzS8UAwRWBfjYwu1CGl08N+psc=;
 b=Cg98p/0XnYZOx71F9P1ON/lhKAwuyIBlD28CZqC128ZRYO8XFUhO9UBv5EC0gxjuuQ
 uDYqmzHY+5gzkML4V2h4LzlCCsxTjxaOBmFEZ4xd0cHHCj6UiWqdMe/Xfr8pjCoy0NP4
 5ypDSg60e+K855HDpDEpAxSLNf+a0cgjc7xi9X/ZUw33REB5Ndm8gp94n+v/xW0bnsJU
 RIJ/OioLasw8nsqDeq+kXMkE91QwZKRcXcqaMeqZYCU1Zvqs1ZSQXiAwX+aQqAqOm1to
 CPWQo89oppFketSXXWQ4XnAqgkQra/qKszVqJ0oWFQ1Get9PD+925QOwiP/ifV20vMHp
 d5jg==
X-Gm-Message-State: AOJu0Yyn8ptN8VxRkYJBbdCZQH40TeKqY17FWobZPJhaDy6TeaU4ZkXZ
 /LO8T4zUB7c2YCFueJ7X5+g1PmaBVjar56fPsaHP5Cv1r4IO
X-Google-Smtp-Source: AGHT+IFG3oxyOsal6bz4MJsODPsV80WJ4ajFXFo5ng67mZbhECFV+neQfEYC3xYaZWMs0V+M9Ja3Rev1JRTM7jMv/W0MFFWmNsiw
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:218f:b0:35f:8652:5ce8 with SMTP id
 j15-20020a056e02218f00b0035f86525ce8mr935711ila.4.1704824432056; Tue, 09 Jan
 2024 10:20:32 -0800 (PST)
Date: Tue, 09 Jan 2024 10:20:32 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ad615e060e875e78@google.com>
From: syzbot <syzbot+list9d8c4273b58598092f07@syzkaller.appspotmail.com>
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
 issues were detected and 0 were fixed. In total, 26 issues are still open
 and 8 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rNGiQ-0001yS-MA
X-Mailman-Approved-At: Tue, 09 Jan 2024 18:57:58 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Jan 2024)
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
In total, 26 issues are still open and 8 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  5250    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  3663    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1828    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  814     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  436     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<6>  324     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<7>  112     Yes   KMSAN: uninit-value in post_read_mst_fixup (2)
                   https://syzkaller.appspot.com/bug?extid=82248056430fd49210e9
<8>  72      Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<9>  41      Yes   kernel BUG in ntfs_lookup_inode_by_name
                   https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b
<10> 19      Yes   KASAN: use-after-free Read in ntfs_attr_find (2)
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
