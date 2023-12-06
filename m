Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB76806B9F
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  6 Dec 2023 11:14:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rAovR-0002jf-9q;
	Wed, 06 Dec 2023 10:14:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3YkdwZQkbAOMXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rAouK-0002hX-33 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 06 Dec 2023 10:13:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gBFRPreUwMTljyUE1zzowalqFoa0Lex9TFFc13yJQwo=; b=CsAaMCLG9t6S2h2hRRmh9Px2zX
 TuwBtvnVfJ5g45pY0akVQ4dHQKHCXnluq9F7Jwe++S3Dmin8lgjsUwjv0BNLio2zkuIBLhf9iUM0/
 xy4pMcGJ2gSgrzFYi8eanOYX5SRA069+nlFy2YikmuNdr88i1eVljXxSTA/A4xUzXZ4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gBFRPreUwMTljyUE1zzowalqFoa0Lex9TFFc13yJQwo=; b=e
 /P3AmZaj7AmVipYePjQ9dINMtT8AQxaOFzxvENC0kkmaqa0SeREY9nxtOz6DTTk8wd0KgYS/idl9L
 +spLYmHJB9mA3/PcwxPoPEOb0Cw4q6BsHyia4OvNtsdmZpqXmTlzJUzYaHf6dt5lJx+imCMYXge5b
 tpnfvsGqVP0cCrQc=;
Received: from mail-ot1-f69.google.com ([209.85.210.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rAouF-0003kh-Rz for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 06 Dec 2023 10:13:32 +0000
Received: by mail-ot1-f69.google.com with SMTP id
 46e09a7af769-6d88143b45bso5877753a34.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 06 Dec 2023 02:13:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701857596; x=1702462396;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gBFRPreUwMTljyUE1zzowalqFoa0Lex9TFFc13yJQwo=;
 b=O9fki7hFoDsf0Ua2YVGiT2Rf9MK7TgIHpGOJOk1cWsCG78RhJbtR8HEJ/qlTLYTukK
 JAJjA37co54oNh3cpPt6EG/Y+C7htC+KlNEBDj085ES9eJEPmMy1engTPunliHqU2fhY
 QA0dCSNVbzXOYOzCxU3cpJAvaD+ALAD9cw08il1lBho+q7MjJB/rlG9cVzI4/k25rH/W
 AhLvtR4ZyLJYHZKtvikqODGQtKLu+10avkwb5pkgs9589kUsuSUNei7lxoAMd0c2tgHI
 Iq+KVnWGg/VWNuWad/boxOBYkuWF7Euy+5c5m7l9lOObul2L2+1ZkBpI1JCPZl46btZY
 SZDw==
X-Gm-Message-State: AOJu0Yx4Ll8YFMRJz5fZmNrogog1biejiESjwCoH9VCsmk0JNaOcT2kJ
 mI70Dx0lcV3RRxPsAP2Mi1dJSmgLNWd8rk7arTiZQr/s8wME
X-Google-Smtp-Source: AGHT+IGSWLFljIvDvOEMbKsUJgYM/g5+b6ijwkBwucrAIBsfqIfwMDBh/3kYSUtW9n1PAeDZFnbLK7qCfSBEQM7Lu0b0A52zv96w
MIME-Version: 1.0
X-Received: by 2002:a05:6870:158f:b0:1fa:f20e:4c0 with SMTP id
 j15-20020a056870158f00b001faf20e04c0mr778975oab.6.1701857122962; Wed, 06 Dec
 2023 02:05:22 -0800 (PST)
Date: Wed, 06 Dec 2023 02:05:22 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000045d4c4060bd47dc6@google.com>
From: syzbot <syzbot+list46ee6100e7a589a627ec@syzkaller.appspotmail.com>
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
 issues were detected and 0 were fixed. In total, 25 issues are still open
 and 8 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.69 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.69 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rAouF-0003kh-Rz
X-Mailman-Approved-At: Wed, 06 Dec 2023 10:14:40 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (Dec 2023)
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
In total, 25 issues are still open and 8 have been fixed so far.

Some of the still happening issues:

Ref  Crashes Repro Title
<1>  4839    Yes   possible deadlock in ntfs_read_folio
                   https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<2>  3503    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                   https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<3>  1691    Yes   kernel BUG in __ntfs_grab_cache_pages
                   https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4>  763     Yes   possible deadlock in map_mft_record
                   https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<5>  416     Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                   https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<6>  312     Yes   kernel BUG at fs/inode.c:LINE! (2)
                   https://syzkaller.appspot.com/bug?extid=c92c93d1f1aaaacdb9db
<7>  290     No    possible deadlock in __ntfs_clear_inode
                   https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<8>  55      Yes   kernel BUG in ntfs_iget
                   https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
<9>  39      Yes   kernel BUG in ntfs_lookup_inode_by_name
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
