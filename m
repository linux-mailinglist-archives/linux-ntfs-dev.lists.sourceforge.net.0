Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 694FF252C18
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 26 Aug 2020 13:05:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1kAtEq-0003sn-Bx; Wed, 26 Aug 2020 11:05:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3UjtGXwkbAOEVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1kAsns-00028D-8u
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 26 Aug 2020 10:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s+S1ybGzUd8iygNXODv3AXT+lmQWjeR11J2cV5mYm3w=; b=SInZH/4xSgCZ4IGivnqXJLzlne
 9rdwcXr8RHqI6Sa5LJgZreuntw8lsgqH8ks2fBD3A17uBe9NALgQodpw6jqsQFFBipu6WYQxZeEIA
 pUyKtsxuy/ngFFiz4sTEPaPWbmL5apR7qAuy8p/I62qdZEk8VhFYI84+O9LLAE5+qA0E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s+S1ybGzUd8iygNXODv3AXT+lmQWjeR11J2cV5mYm3w=; b=C
 0r3FXM7kVapE0+HnnFiWr6+3xTiXB/ZVFKN/3aNiy337Z9t/LTJxNsXCT96KSXFBHnmUAxXvCGigf
 TVBDJ3+xYuwAJszMBeX00aIdTSOcaapJnLWgFioBq5xyESuMolzMmf7WFUljdPmqaCJQLlAbDG+IF
 wampNc7LV0RQO5/Y=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kAsnq-001CbV-TJ
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 26 Aug 2020 10:37:16 +0000
Received: by mail-il1-f200.google.com with SMTP id k8so1191219ili.21
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 26 Aug 2020 03:37:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=s+S1ybGzUd8iygNXODv3AXT+lmQWjeR11J2cV5mYm3w=;
 b=TKQhWyhMdN8imIDdAgY1XjDbkDUPfxt9GceA/JDu/eREPpPV9flX8B5KCABtBjzEZG
 /9ghOvua53Klx332072N6XYQfsZ0rpgutmsdirunlm68TdAwAFinlq/K7pTre16j/Qg5
 SjaYaCriy1k4sNbXZesCjxW7k9Cwmttsm1jjle+POv9wKsUhhg2CLFlAIhLRzyhaV0o6
 e+hbH2JQzbJ30KLBz8Z6rySj+S1ybmCS2SNhrsg0KPZdH3GaRU5gpD9tK+9SUKN9LAKR
 /Ma1nv/wuNDkuj9tMZXj60w/C2GUekl5vqFdMWoP6DJIB/Ef1Cfau8ajJZ5p9lKC+yMU
 k5/Q==
X-Gm-Message-State: AOAM5314GYv3CIqItybXyh79oHgT0qWC49hUAKhITdVJ3Xx81PB9LoL2
 BKuFeje8HF5DdHjBOLppmFYJgQW8RVu4e2Up73PKSZKyWbPz
X-Google-Smtp-Source: ABdhPJwFOkEQiQlcbrLBZrdR500P0BvYg8EmtIBu12QCrRopxNO8xUNUEPw9NT9y4coEXoVv2cQ5uxkxQoYT8AjUb6itEQrOVS2C
MIME-Version: 1.0
X-Received: by 2002:a92:9181:: with SMTP id e1mr12178268ill.274.1598438226931; 
 Wed, 26 Aug 2020 03:37:06 -0700 (PDT)
Date: Wed, 26 Aug 2020 03:37:06 -0700
In-Reply-To: <001a11441b6c6cb96c0569120042@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b636f005adc56621@google.com>
From: syzbot <syzbot+19b469021157c136116a@syzkaller.appspotmail.com>
To: anton@tuxera.com, daniel@iogearbox.net, deller@gmx.de, dvyukov@google.com, 
 jejb@parisc-linux.org, keescook@chromium.org, linux-kernel@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, linux-parisc@vger.kernel.org, 
 luto@amacapital.net, sdf@google.com, songliubraving@fb.com, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk, wad@chromium.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1kAsnq-001CbV-TJ
X-Mailman-Approved-At: Wed, 26 Aug 2020 11:05:07 +0000
Subject: Re: [Linux-NTFS-Dev] KASAN: use-after-free Read in
 ntfs_read_locked_inode
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

commit f7c6cb1d9728dea9d9f131ef57303d6821afb0f8
Author: Stanislav Fomichev <sdf@google.com>
Date:   Wed Jul 29 00:31:03 2020 +0000

    bpf: Expose socket storage to BPF_PROG_TYPE_CGROUP_SOCK

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16480fa9900000
start commit:   3e968c9f Merge tag 'ext4_for_linus' of git://git.kernel.or..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=7e8c053ac965e0dd
dashboard link: https://syzkaller.appspot.com/bug?extid=19b469021157c136116a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=142d219b800000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=143029db800000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: bpf: Expose socket storage to BPF_PROG_TYPE_CGROUP_SOCK

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
