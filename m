Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8B4745AA6
	for <lists+linux-ntfs-dev@lfdr.de>; Mon,  3 Jul 2023 12:56:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qGHEf-0007Kw-39;
	Mon, 03 Jul 2023 10:56:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-I6iZAkbAMs9FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qGHDY-00007n-SE for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 03 Jul 2023 10:55:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RE8LSychG4k/uRGiRu7xh8BUIXkRlq01gkyPncQ19GI=; b=HEYc73LgJGcWhXhDFcpm+TKOEl
 VJqB9w7APY+BHDycqiBSZX6PDoNh/9QK7itxcrkVckAQEozeR7+FmpraB5ByFz4uUQbhQQNri0wGD
 0DH/rMyvxsW8+wUxyq6Q14PIPW7mmQ4j5n/vr2gFF0JAqHCgd7ARlS8SRjdoscRUabBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RE8LSychG4k/uRGiRu7xh8BUIXkRlq01gkyPncQ19GI=; b=J
 SLOaA03HM73NV4+w6s4MbAiKpirLsl7R8YQ2I38E0zHbwCQ/IetJDSS8RPdm5eC/E3dCxWC5rEZf1
 caO5TonhvGPlUCxu5gVMyfFRTIedzMKW9jG0vO+cnJbDjiLZptIAW03FwBas+lIqI+MrTE+osNasN
 MVxGqPPYkYHdVSRU=;
Received: from mail-oi1-f198.google.com ([209.85.167.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qGHDW-004ihg-F0 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 03 Jul 2023 10:55:41 +0000
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-39ec7630322so3933311b6e.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 03 Jul 2023 03:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688381733; x=1690973733;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=RE8LSychG4k/uRGiRu7xh8BUIXkRlq01gkyPncQ19GI=;
 b=TtNMqlsxOjU9//hCFC8bp5Tmat6l58jnnHmrkVa0swRP766I0I2kT9xiaO259vxJfK
 Gjx9AEtOQuccEaw+cXRXJ9lrPWln2rdMBl3V2IYaTWoUc3Gmn8lZ3oC0MQutTnpgZyDr
 q6JFyDcFbqZoCda9khJ/Zb9s4IDtzS8wtBsIytkusVqcNi7daR/kaYfKT1dVVjQ5D47s
 zpEIOBmAfOk5exCjaU8EStSkyyQWYrWcCTnLmdzpV2af5JgS1v4mAfCPT7TweoVqVrl6
 1n6iRw8aolOdDrzhQbLRbxngiTViKFWwI2egwSmNvuZ0ixK1smPPRJChgtlBfd23EVe7
 bfpw==
X-Gm-Message-State: ABy/qLaKia0mzfUIV68nw9K6Md/z9jSocjeyltX+ldgQA37oK2fbgdkz
 GJ571rZi6Uloy+PDWBsGxphrw9Nta6awiu7lFYSbxJb9yq/N
X-Google-Smtp-Source: APBJJlGgiSo7l8Xu2RlauE3GVDBEzAPKvzzZBhSGghuhfclcyczoWXKXtBcxWNc3wYwNrMIGADO75h6BHTlwLi9bv+Z940+0zzSb
MIME-Version: 1.0
X-Received: by 2002:a17:902:e5c5:b0:1b3:e4f1:1b3f with SMTP id
 u5-20020a170902e5c500b001b3e4f11b3fmr8323989plf.2.1688375032438; Mon, 03 Jul
 2023 02:03:52 -0700 (PDT)
Date: Mon, 03 Jul 2023 02:03:52 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000e649505ff917257@google.com>
From: syzbot <syzbot+listbbc971fb2ba71e0cdf0c@syzkaller.appspotmail.com>
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
 at: https://syzkaller.appspot.com/upstream/s/ntfs During the period, 0 new
 issues were detected and 0 were fixed. In total, 24 issues are still open
 and 7 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.198 listed in list.dnswl.org]
X-Headers-End: 1qGHDW-004ihg-F0
X-Mailman-Approved-At: Mon, 03 Jul 2023 10:56:47 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Jul 2023)
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

During the period, 0 new issues were detected and 0 were fixed.
In total, 24 issues are still open and 7 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  3110    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  2554    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1043    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  488     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  289     No    KASAN: use-after-free Read in ntfs_test_inode
                   https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
<6>  157     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<7>  156     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<8>  78      Yes   INFO: rcu detected stall in sys_mount (6)
                   https://syzkaller.appspot.com/bug?extid=ee7d095f44a683a195f8
<9>  15      Yes   kernel BUG in ntfs_iget
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
