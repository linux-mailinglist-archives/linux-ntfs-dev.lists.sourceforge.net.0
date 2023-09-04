Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 956937913A3
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  4 Sep 2023 10:39:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qd57K-0001xu-4P;
	Mon, 04 Sep 2023 08:39:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <39pX1ZAkbACcVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qd503-0001Bu-U9 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 04 Sep 2023 08:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u2OmTOCFNK30sKwAH23PKfFifyHLUed/0eso+ICjivA=; b=mnmMmEC6kgo+HsMAQ3sBw7w8mk
 +fF4fdRScYXULfhhJ9R6YmR0gDGX5KyP0mRoh/wExrmbEf9LZe+B9t74Cb7CYwoWibmvdBN5N38gn
 Nn8NIm9YgA8jgga2+DpPkTUmW8dDUkn7Y8r/LSm9PQWLtxSpPg0rhK/dV7hL09MrBMlU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u2OmTOCFNK30sKwAH23PKfFifyHLUed/0eso+ICjivA=; b=T
 maXbbYOcKF/rWCF89HZcMptAoemgr1MnAq5FiXcdnudUnMYZKR+hf5i7Mrwwe9omWMR9J1BZOFR/c
 JPRSIeL4arzw6LmX+DpATMG9i03rpn8LdnFHTn6dgx02CaTtzvZJ95ywE7jcMo3mXerHYPV29kR8k
 MF1yC42cTTaZADok=;
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qd500-008sTB-7L for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 04 Sep 2023 08:31:57 +0000
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-1c0d58f127fso18035185ad.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 04 Sep 2023 01:31:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693816310; x=1694421110;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=u2OmTOCFNK30sKwAH23PKfFifyHLUed/0eso+ICjivA=;
 b=QizdM0dnVcWyW1rEwXD5hLmUBwqYp8TCPnDeuSR1vp8WHCiQgPmpxTCCNsY73/tEHH
 gueF9ttwVGfiiAGf1WxxSzN6+CS+jFPGuhHmHgHdFx9bll0uRIVN5L0nDsBtk+E2eMXx
 gtruL9Spd+xJk3FMY09ivRMa2qF2YdxzSAONMLeBkQPo8AOrXtBVHT4Idaf91BdiBugh
 H9PjIGrBLxCxgav69/KvV6zMJA0RvBwQQLuy9jSLUdTUSQi+Htu8lK1uY2NSqp66s3y7
 wWq4M2lHWNi8og+RgetmGFUTi1vT+gdnXEn9iOkg3f4LMsM/JAs6rhrRoAk65ZNG/HhB
 jA0w==
X-Gm-Message-State: AOJu0YyDlGxTYeOLkX5U8pRvTaCMkvMYaGnIR0jDATcgu60iZ0DpsIwF
 EDUvYuixHFalQE0GyrMutRHajfzt+8oSnTF3ko7nQ5+aG2LY
X-Google-Smtp-Source: AGHT+IGpt2ftf95l/L/nnDQ6ee2mdYHv2fp0o/2P7wmxTTVnU3kxj0nn6GNWriZkj427vEzU0WNk8O3FJ074X+K9J6bLpneNwz1b
MIME-Version: 1.0
X-Received: by 2002:a17:902:da86:b0:1c3:2af5:19e5 with SMTP id
 j6-20020a170902da8600b001c32af519e5mr1985746plx.4.1693816310722; Mon, 04 Sep
 2023 01:31:50 -0700 (PDT)
Date: Mon, 04 Sep 2023 01:31:50 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000083fba206048457b2@google.com>
From: syzbot <syzbot+liste99d2b62937cf3368a1d@syzkaller.appspotmail.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.197 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qd500-008sTB-7L
X-Mailman-Approved-At: Mon, 04 Sep 2023 08:39:30 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Sep 2023)
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
<1>  3784    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  3075    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1303    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  604     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  388     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<6>  297     No    KASAN: use-after-free Read in ntfs_test_inode
                   https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
<7>  211     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<8>  33      Yes   kernel BUG in ntfs_lookup_inode_by_name
                   https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b
<9>  28      Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<10> 12      Yes   KASAN: use-after-free Read in ntfs_lookup_inode_by_name
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
