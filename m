Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 265A9853BB6
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 13 Feb 2024 20:57:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rZyuC-0001fS-QN;
	Tue, 13 Feb 2024 19:57:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-7fLZQkbAM4CIJ4u55yBu992x.08805yECyBw87Dy7D.w86@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rZxjW-0003Nl-1O for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 13 Feb 2024 18:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aiiASvbc7a26H8Bub12QdvoOFsqbdc7cNoE+2hwgvwk=; b=bodYgE51nkBYZzaGZqqQjvAYEC
 anOdbC06N/YI4YJE2s57kss97fWWbeg/6e+s6iXRN9GkAjVqJRneca9U/cDI4UBgriDoP1UYng0L3
 R0i6lx/cpBZWJuOhVt9+FZBlw4a7+5pXNhZQylWiq9MDWn4kaIkOSYgBCeXsNWpao6tg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aiiASvbc7a26H8Bub12QdvoOFsqbdc7cNoE+2hwgvwk=; b=R
 b2PrBcmW71ObpE/T6m/XdVwGNJliAsxO18SosGpTu53U9TR0nqNF06xf4GxYBdRevLaB7QVzfW8CH
 vroJXz+Z/WZ1B+rt+LY2pQkHZ1Ydg1yiXF8qL4z/YpYA55HYTs4rpt+wrZAo1kmnsCpEnUN2rTIKH
 WyTyoqjSy9i3kVlY=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rZxjR-0007OL-KM for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 13 Feb 2024 18:42:18 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-36381f0e0a6so30647505ab.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 13 Feb 2024 10:42:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707849723; x=1708454523;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aiiASvbc7a26H8Bub12QdvoOFsqbdc7cNoE+2hwgvwk=;
 b=gn67sRKnSi7TlvUnpnRjJjq6IG0IUEgoZiiXliS7fxPTavqQ7aPQPm6857fytzQyqU
 HEKmhsSRA1JUgbeg42abOe9RZrb4dv1tQ3MRL0Sj7wL9TXfdmFvxN2mn80DTM9v+NG4s
 8sRzd6GsuCok87uAAS3L+85CYgieuAi3vV4VRZwpcHednWgiulFYWZmpwJJtIUAxYC5s
 i75tZCJgpkMd0JTdkOdBgmTYrJI1+5MWERHjArsyIkoSsfzrvr4z+6JmAlEWdFLLpawh
 p7G6PbCC0L+SQi38hH13w4VLBGKLVToyIid0BxhIwd74bmIe4aW1zPTkvBQc1iTuN4Fq
 Epig==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDgPJjOciH7j83id3/gVyDhC5cz1HFYIERra/5Mqy3jaN0pQk2oXQo9H83cjhKeUgRG6Xv6LD4G1pHR+mECLY94kvx3H5pyM5iUy8EBIGUH6+w6Kk=
X-Gm-Message-State: AOJu0Yztd997oGwdYPpC12I3osC1cVIorTsK+I/J78ddDttTrLUgPp4H
 YspPyLWvB7r3FYX0H/2aRDO4qPfwX5FdiZ9TU8Fkd7Its4wPL68L1R17uwy61FHr6cuSvjzwAVn
 O0FOn4lyY9fNuzi2Krt3FQdrVZDNJGaIuNtXDkMy2VmLh/mN2ZcHodyM=
X-Google-Smtp-Source: AGHT+IENo1xPvITOHRQQJ+M5KbsV17Ysd+dOGuZAlsgGB+yI15qx8x+sXPoucnIA7sf0wLWSQPaLwLfwWQ3yIBkYN186lvWoDH8J
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a03:b0:363:ba7e:ddc0 with SMTP id
 s3-20020a056e021a0300b00363ba7eddc0mr30763ild.0.1707849723685; Tue, 13 Feb
 2024 10:42:03 -0800 (PST)
Date: Tue, 13 Feb 2024 10:42:03 -0800
In-Reply-To: <00000000000042f98c05f16c0792@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001c3739061147c07d@google.com>
From: syzbot <syzbot+0994679b6f098bb3da6d@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev, 
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 6f861765464f43a71462d52026fbddfc858239a5
 Author: Jan Kara <jack@suse.cz> Date: Wed Nov 1 17:43:10 2023 +0000 fs: Block
 writes to mounted block devices 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rZxjR-0007OL-KM
X-Mailman-Approved-At: Tue, 13 Feb 2024 19:57:24 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] BUG: unable to handle kernel
 paging request in step_into
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

commit 6f861765464f43a71462d52026fbddfc858239a5
Author: Jan Kara <jack@suse.cz>
Date:   Wed Nov 1 17:43:10 2023 +0000

    fs: Block writes to mounted block devices

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10656c42180000
start commit:   bff687b3dad6 Merge tag 'block-6.2-2022-12-29' of git://git..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=0994679b6f098bb3da6d
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11307974480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15c567f2480000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
