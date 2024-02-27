Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4490A869FA8
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 27 Feb 2024 19:56:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rf2d7-0007DQ-NC;
	Tue, 27 Feb 2024 18:56:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3bMzdZQkbALEjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1revyT-000632-Ca for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 27 Feb 2024 11:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tH203RrzLyAOiwyFP5B31fo86XWdWzsP+OL8gKwsz6A=; b=O3ukus1h2DZay8upp3ctWzWpfa
 IkRCXMGNZXAHdmap+7YR9mQRcp7ezZEHRwqBN7B3HmVU/SiF/g9YdtBAwF04MkrvLXJ8k4LAlRGPw
 rWjCqCULgj3qS73LcJ4tRTij0sZ1zKWMRxpa7fjOM7uJqVPJnscZkJsrw/LZQkQFW8qc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tH203RrzLyAOiwyFP5B31fo86XWdWzsP+OL8gKwsz6A=; b=D
 BqYMdDweE1DrjGkO9x4DJ9Xmu5tbzatZ2M7pC2PmN3rEwelLE/mhXP4GblXDuhO85Thh/2pRZVHg5
 dW7BZIil1atvgr+zviC92bs/uSKnTPjeuAi5wNZrmkoP/e2/Rq7dHas4Pc+vjk/lAyAkjT798hEgN
 bsgCka+SlqRXH6uI=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1revyR-0006H5-5O for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 27 Feb 2024 11:50:17 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-3651a261194so24930655ab.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 27 Feb 2024 03:50:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709034604; x=1709639404;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tH203RrzLyAOiwyFP5B31fo86XWdWzsP+OL8gKwsz6A=;
 b=pBV9pAyKexHUkk4ZtpjbJWFlraDWHo3HGIOP6D2EHo0WT0woGoLyiD9i+VZn5YeSEX
 V5K8wA2GcJ+UZIOw4u+84G0GyBoIse3U9QHaJuz3zfkQ4W67BoBOuDDn/qXX22OUBk8v
 213PRdnejknIaYLbDK6wVT7L09Au+fddZStgJhaFN2YNwvh1mt9zqitZKakmEfh2T6dj
 ALprBzEuC9ytnVa7flaVsV/ULsG+pKz52a73GTkFU476+1nrgRO4yvbFYwKqdGKJ4Dvi
 e/w511JEU7UyiqnDzmDKJIq7eJdO/GFLht0mmblswYJQn4xzInL6qD6KzFtiSzGuwwF1
 7VHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxMLnnXAM1OWFLLonsMulWX4qmcB/oigHGsOB9PX+h77QRBKdICXEPK/V7VR+VWlCW0l0wb+xbjf+9TKULR2is01lch/yyxDrn+YMI+T0/8HTToCA=
X-Gm-Message-State: AOJu0Ywr9jyzB6Ugx4L7P6sg8M2eGoR+wNxhQvq3yNLHdGvmtzWmBAW7
 TvUgtx2hMyzn+05wnzCW1I4x5z5Ux9AlLxjvxSWEui3Nk4swT5tWy09HrlP5Ra5KOHyHYKWEddm
 tdXi4ISXsxZboiIgqH2rnd3c5rzsGL7abhHdb9xgrINNJ6yLQc2HR0fE=
X-Google-Smtp-Source: AGHT+IErUXetTcqvT7hKSEl4qfD4Oi1EaI+bTCZF6SZx92+OOHC9FGESt/LzHWLlFekaHASkBANwL4udJotYzCs33lO7v8FCTsQL
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1808:b0:365:21f4:7030 with SMTP id
 a8-20020a056e02180800b0036521f47030mr743713ilv.4.1709034604595; Tue, 27 Feb
 2024 03:50:04 -0800 (PST)
Date: Tue, 27 Feb 2024 03:50:04 -0800
In-Reply-To: <0000000000009146bb05f71b03a0@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008414ba06125ba07f@google.com>
From: syzbot <syzbot+d3cd38158cd7c8d1432c@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1revyR-0006H5-5O
X-Mailman-Approved-At: Tue, 27 Feb 2024 18:56:40 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] KASAN: use-after-free Read
 in ntfs_read_folio
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15a70f4a180000
start commit:   ac865f00af29 Merge tag 'pci-v6.7-fixes-2' of git://git.ker..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=655f8abe9fe69b3b
dashboard link: https://syzkaller.appspot.com/bug?extid=d3cd38158cd7c8d1432c
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12769ba5e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10c2b97ee80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
