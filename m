Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A5F6F4086
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  2 May 2023 11:57:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1ptmlG-0000Ft-8B;
	Tue, 02 May 2023 09:57:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3KrlQZAkbAAk178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1ptkH1-0004Co-SE for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 02 May 2023 07:18:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bGDIlkDxxFqSuivhjP+N46X1p0czCiK1PSmGIY0DZuY=; b=EoyXEVMICGQes0csvpgGDEaWFs
 7qyKfkJGfMviB9pmrmpX+86tL7hW/VlnDjfvOb9e+JFFyuV7plmHknc4vKlCcJ45+LvnJ7jYkg6y4
 Hda9pqC9Hf2MnDw7jUGOwYvJArJZkkmynn/syKZyNME6hyhY2Mk+L3xlKy/s0UMRHKcQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bGDIlkDxxFqSuivhjP+N46X1p0czCiK1PSmGIY0DZuY=; b=j
 5nvmxHEkEbv4L2mRz9Ln9kXdbj80aZmkrqFKHFsV0v3JrF/rbmLhtmmNrL25V6Fm3gin117Yvc3fr
 e+AmEoKKA8NhFTk9w5HtGpRmdVaiC2Y4areLp0Vk+owoY+kPY1O6hnyCjziS/7sEkiiZzHXmkV0G8
 InnCopYGrs+7Kprk=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ptkH2-0003Nf-43 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 02 May 2023 07:18:08 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-32b42b751bcso21212155ab.3
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 02 May 2023 00:18:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683011882; x=1685603882;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bGDIlkDxxFqSuivhjP+N46X1p0czCiK1PSmGIY0DZuY=;
 b=ELlI90ACs/peKA2e2PrpcEcDdpNBPETrZETCHVsyNYV3Nd22nJf80z4iTJldFhEAU2
 Siq+JXRI3A7Vv1n2Whvc0W81cvcbazKkgnrZrbsloSGY8MNuNwIu+LTkUCjHzupE5zh2
 +bam6p/ZuHWh8audykWoyInDDs6LLn9l01JT1FmYU8DB3QqA4lheH7WS1/05oJi/sVH3
 umN0RK4SMtMGWwju95XUeJGHO3NSsnr8r7MwIyaDyPOyH4BLfQEhtGTMW51xOn9uK4tu
 VHxhuFUKQf8cLgxp8kr4ZkBYmnaDmUam2/tLkSlrWYVm8jFU4yqSDRnM5uzM5CLBj2pH
 mzlQ==
X-Gm-Message-State: AC+VfDyWv+P27RR1SjviuK9pVT8MeC4gekp3Kwf+h3VxQ+RKEHUL0NUK
 AidaFN0OXHolJDMyHe5ny7BzdBIfNA6uHV6EK1dY9fuW012q
X-Google-Smtp-Source: ACHHUZ5WdXTPrltbDa9DEpV9Woa+A1fHqQv3s/WzHfp08bhmG4pdlcoMjcCRsUqw1JKwjYmAajbeaffbFalVoe4jQFBYU2fsAq4h
MIME-Version: 1.0
X-Received: by 2002:a92:d983:0:b0:331:339b:c3e1 with SMTP id
 r3-20020a92d983000000b00331339bc3e1mr185576iln.3.1683011882590; Tue, 02 May
 2023 00:18:02 -0700 (PDT)
Date: Tue, 02 May 2023 00:18:02 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006a2b9a05fab0bdfa@google.com>
From: syzbot <syzbot+listf90b51a0db1f57e4ab2b@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptkH2-0003Nf-43
X-Mailman-Approved-At: Tue, 02 May 2023 09:57:29 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report (May 2023)
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

Ref Crashes Repro Title
<1> 1983    Yes   kernel BUG at fs/ntfs/aops.c:LINE!
                  https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
<2> 1317    Yes   possible deadlock in ntfs_read_folio
                  https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
<3> 763     Yes   kernel BUG in __ntfs_grab_cache_pages
                  https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
<4> 281     No    KASAN: use-after-free Read in ntfs_test_inode
                  https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
<5> 238     Yes   possible deadlock in map_mft_record
                  https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
<6> 134     No    possible deadlock in __ntfs_clear_inode
                  https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
<7> 24      Yes   KASAN: slab-out-of-bounds Read in ntfs_readdir
                  https://syzkaller.appspot.com/bug?extid=d36761079ac1b585a6df
<8> 6       Yes   KASAN: use-after-free Read in ntfs_attr_find (2)
                  https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2
<9> 4       Yes   KASAN: use-after-free Read in ntfs_lookup_inode_by_name
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
