Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 141AE10B09B
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 27 Nov 2019 14:51:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1iZxiv-0005CO-BW; Wed, 27 Nov 2019 13:51:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3AHjeXQkbAF8PVWH7IIBO7MMFA.DLLDIBRPBO9LKQBKQ.9LJ@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1iZxEm-0001eX-Bq
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 27 Nov 2019 13:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dieb0lQvqlt6xFxUKoKJqEpe6Eum8R1EEaj/3uLPMYk=; b=UHsKpNr0R2zJ9GxLJt0eUGEvAy
 s3ka55gCbgDtHvg5CQSKfEKjNQd/PriaNIkuq3zdxgjp/bEozfRz5ILapQ5bdR3NWsKuF6kUt6QcM
 RHImlfe0rJLmB7B0pkWUcf7DrRuEZAZljufIa9rvdUlXbhlGqHzp01jF416WYA6/Wwm8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Dieb0lQvqlt6xFxUKoKJqEpe6Eum8R1EEaj/3uLPMYk=; b=M
 8HARG617kgzmx7Z9Y5iGnj+aejCdnn7/w79OdYU8/K78ZS6tPhoHerhvEY2zUTObEkctsixGW5dxn
 +X3A+rGF8uYjpaDKxQwdnbja2zA7/0JNzZDICpBQhTgNjqTBdJqWOQJjfeqd41pwI0Yh2Ebm25H2B
 Y0MwJptWN1+Feb/o=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iZxEk-007rP0-7c
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 27 Nov 2019 13:20:07 +0000
Received: by mail-il1-f198.google.com with SMTP id d11so19375435ild.10
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 27 Nov 2019 05:20:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=Dieb0lQvqlt6xFxUKoKJqEpe6Eum8R1EEaj/3uLPMYk=;
 b=T5KfGIZCzvsAvBi6DChu5XhlGik1m3eiQRr9HqIAPdHrP+K7fvrcYBFepsGlwWDarv
 cO1AoH7nVGbMnfk7upXXmRLYTWUHF1yu9QJxMVmyBcOwMcWy2/xCof0Gk9TDATqtuoyX
 8epz1qQXgUMv4bSu72EmJSKmfjSMvUGHEFgfFjMoTOs4cCSF/hbTpLbp1bj5ZKCqJ8xf
 caJ32romaZwSCQYeluTEVZRCXGgEUg2XBB5jaLNte1IDnWnj9IoEOO3w+3M0O5BCy5iN
 j9xcTnLxI+rveU2qvuNsLtmVThBv82tCXLAU6IX60k0pqXz2mQA0afvv7UCltOb3g+it
 Gx1g==
X-Gm-Message-State: APjAAAUjdqkWomeb/T28Opx5yIBAhXFjM6wHZYmOCYhCevFdeNjvKGkG
 jU3vKNncFmcQo5uEU+OHblnRtfsDDgvORA2vYsZFk79C1AYT
X-Google-Smtp-Source: APXvYqyLYMnPvrXLLHZp8gVP46nF3bGzrcXU111CNvKZooaehsGZ3tFx1Dz3uSdNW9AoXotiFgnLwnoRKF4IoeWFZEIVBi2ovtIo
MIME-Version: 1.0
X-Received: by 2002:a6b:c0c2:: with SMTP id q185mr2514112iof.280.1574860800376; 
 Wed, 27 Nov 2019 05:20:00 -0800 (PST)
Date: Wed, 27 Nov 2019 05:20:00 -0800
In-Reply-To: <001a11441b6c6cb96c0569120042@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000093ca84059853da04@google.com>
From: syzbot <syzbot+19b469021157c136116a@syzkaller.appspotmail.com>
To: anton@tuxera.com, deller@gmx.de, jejb@parisc-linux.org, 
 keescook@chromium.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, linux-parisc@vger.kernel.org, 
 luto@amacapital.net, syzkaller-bugs@googlegroups.com, wad@chromium.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gmx.de]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1iZxEk-007rP0-7c
X-Mailman-Approved-At: Wed, 27 Nov 2019 13:51:15 +0000
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

syzbot has bisected this bug to:

commit 910cd32e552ea09caa89cdbe328e468979b030dd
Author: Helge Deller <deller@gmx.de>
Date:   Wed Mar 30 12:14:31 2016 +0000

     parisc: Fix and enable seccomp filter support

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=143090dee00000
start commit:   3e968c9f Merge tag 'ext4_for_linus' of git://git.kernel.or..
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=163090dee00000
console output: https://syzkaller.appspot.com/x/log.txt?x=123090dee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7e8c053ac965e0dd
dashboard link: https://syzkaller.appspot.com/bug?extid=19b469021157c136116a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=142d219b800000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=143029db800000

Reported-by: syzbot+19b469021157c136116a@syzkaller.appspotmail.com
Fixes: 910cd32e552e ("parisc: Fix and enable seccomp filter support")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
