Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 621C97E8557
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 10 Nov 2023 23:14:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1r1Zlb-00059q-4m;
	Fri, 10 Nov 2023 22:14:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3jpNHZQkbAAUx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qzcqi-0004Rt-VD for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 05 Nov 2023 13:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vf0m/1w91K7wqWz8i917mDYQ56Coz6Ok3jfzXrbIlps=; b=XS5JAgJF1QOR/DuJ0Cu4PCUQ0z
 GC6lPX7l6iT6Fdk4D+5n7Fh1cG030ElfwtBid3YwDbZ7f7Yl52qsOEIY/pKq9juAwmxjAmFJKTyWA
 9mVUbAdXkIeBXXP/0GFF6D4zE7eJnY6yc/Iyrrll+6X9CjVOzzFaYREUq82izT0Nx7kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Vf0m/1w91K7wqWz8i917mDYQ56Coz6Ok3jfzXrbIlps=; b=V
 5l1KJ372xlgz7nZkiPsoD9QG/DvZGE9nuplxD56QRtdrkN++00k+tfgxKu6GG5SMMTVayvx8ovfsT
 ED6oHt9ejEdDQUw1PVX9N6U99pLY8CglV8cwvasrVuwX0uGu9TlFqUqfwPNwkNieqh8w7Jz2/nmIt
 AxTHqqbhs2yvnSec=;
Received: from mail-ot1-f70.google.com ([209.85.210.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qzcqi-0006RR-AI for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 05 Nov 2023 13:07:32 +0000
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-6ce2ac3ddf8so4623086a34.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 05 Nov 2023 05:07:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699189646; x=1699794446;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Vf0m/1w91K7wqWz8i917mDYQ56Coz6Ok3jfzXrbIlps=;
 b=BtdwBwahm2nmr73m5kADWFZ2HuSM9ulVtVJqqYcooGjyuptxNHNc/x22rmrF3hiWCd
 Ne3OB58y8CCZfew14/cTJDKUy4xZrYSpj5czRIFHQkwlF3ZEa8yTSW3zwwQCwrLwnBmY
 4EUCaUdbXfz7YM4n+HnAXfs4G5Zx0cpJgc8ti3axzJEv/YiziT7tsY8nZC0NOl3DHj0c
 IvKm2gYPNbFeCk9J74LtpmVTSIQQKA/aOhMH6pJVHF9G0z+45Oj4ptuLy3o+hNJ5x2wb
 MbGs0Ixe594hXFH8Ih9ZRvNtltmKZ4y6SopFcLhhaSxoqUA0QO6ln+7nDob6m0gq2QlJ
 22hQ==
X-Gm-Message-State: AOJu0YyWxF+kk1GuD1SWoR2uT5xndjHDb9fHInMP/GA8ZUXov959nGlL
 yk+Tl8QlDVuv2HqMcqoCO74erPE0hx20Gwv9JoPweyIpH/EH
X-Google-Smtp-Source: AGHT+IHR5chTSEPM/wdeHF2mkoAGBTrl226/EeUv/UNjbvsm/v7U5f4oL/wwKyQYLKuE4X3jp2Rys9DONs95tTcLfXMW4yf/nb4q
MIME-Version: 1.0
X-Received: by 2002:a9d:6f13:0:b0:6d3:1579:bd09 with SMTP id
 n19-20020a9d6f13000000b006d31579bd09mr4012112otq.6.1699189646799; Sun, 05 Nov
 2023 05:07:26 -0800 (PST)
Date: Sun, 05 Nov 2023 05:07:26 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004db7b60609676b7d@google.com>
From: syzbot <syzbot+list49093097bc63b09eea22@syzkaller.appspotmail.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.70 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qzcqi-0006RR-AI
X-Mailman-Approved-At: Fri, 10 Nov 2023 22:14:18 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Nov 2023)
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
<1>  4415    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  3381    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1553    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  691     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  408     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<6>  311     Yes   kernel BUG at fs/inode.c:LINE! (2)
                   https://syzkaller.appspot.com/bug?extid=c92c93d1f1aaaacdb9db
<7>  253     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<8>  81      Yes   INFO: rcu detected stall in sys_mount (6)
                   https://syzkaller.appspot.com/bug?extid=ee7d095f44a683a195f8
<9>  41      Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<10> 36      Yes   kernel BUG in ntfs_lookup_inode_by_name
                   https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b

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
