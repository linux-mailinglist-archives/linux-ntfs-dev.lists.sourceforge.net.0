Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3215B8729E6
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  5 Mar 2024 23:01:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rhcr7-0003zD-UD;
	Tue, 05 Mar 2024 22:01:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rn7nZQkbAH8v12ndoohudsslg.jrrjohxvhufrqwhqw.frp@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rhbHm-0001em-Qo for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 05 Mar 2024 20:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yUtUYHZsCEOa7X6Z+H+o0TaVUl7jsvxTuXTfFKtx4Og=; b=idp69KCZJEF147kgIQbDbfB89N
 Ss6TJPijBfR1gHE+0QVSlBpZAGWAESKYhJD8KblXSZw/RgE9ipK0gWeDWPsSsw/rDJeowg3xdao6f
 fBVkKb2ycqWvrQhUfu+rKMGxNRRPAIC20D99pMhKJvNnrIHlAY9tldw7q/T57U8gwou4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yUtUYHZsCEOa7X6Z+H+o0TaVUl7jsvxTuXTfFKtx4Og=; b=N
 lXSF8QoRvXK3qRh/5Lu+ydPc/SOkqrOFvP6hCdchD/hb+XSVxeAmC5ZkTSDvC8nn1gPimUEmlXp8j
 ADhF2hNdGiVKIKlRi4PyeFrV4YfbDiGjPQDwcbh9vPdqAw4IrGmNYM5+7crNfghyUphEgWw74p1XE
 lIm0qrB3C9AeNh2M=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rhbHf-0001We-7k for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 05 Mar 2024 20:21:15 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-36516d55c5fso70132645ab.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 05 Mar 2024 12:21:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709670062; x=1710274862;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yUtUYHZsCEOa7X6Z+H+o0TaVUl7jsvxTuXTfFKtx4Og=;
 b=pzw+FN0q2XLU2nM2wIrqSdGx+CLx6tk+1on8Q2ZCSvlfLTiD7aWzl2BQ2bMOpMEKFM
 O0pUe3J9drqqAgtUqi9uxnjqC1DyEwdVIp+Mv+aQpPZN3l6+bR4YPlY0B15wrxzib+zY
 XBbX8KESejoHDZj57ynZ8rAjRDW9LmmUCATjuWDnlTYf30wWM+jOO4t4YMRA1DjziAdP
 n1Jz0M/cO1sWTeo0OiIGspXxFme0ObGLakl8ott1zlZApmdVaHV25jO+cCxwtjhz5ngg
 T8VCpXWGO4UM4H9pd63RqkmxMjsEqpGxszPXZsxfvJc7Hm/xMPP/n5ziH6O1+gs2wM/5
 bNCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXK1hYgBKI6miE5bVSP0lwdStd2zwpt6AnMsWAarDxro4N4rHejvwtpuWtAljTcm6PUFqsL6Nuy6UqcK56lbLIyyELd8iMlPfAE6w8W3yQWHBOBcj8=
X-Gm-Message-State: AOJu0Yzi8FZVXckhBqOqlrJOUWfCEXLdVBTxUd99PcYIoi6ioZ8PGzsX
 8ruYKxb7RrMXTDACMqPiM7roKZUC4ga/8NatewwviWoOs+18VIW1G8eQ170NCO1l+cy6LaATou1
 1+EW37BTtA1CAEWfj9wNd9Z9/Z4pmAuVnZ1DyeoaMEAMh3mR/m5OrBy0=
X-Google-Smtp-Source: AGHT+IG0HrTjf9tSzpW5mhEYahI6I+CdKvynp0WSCF6pQbzs6aTIrDo95uQZixM6D1ufLCf+gnTifAlBvx8apq0D07TCgFJ6wpLj
MIME-Version: 1.0
X-Received: by 2002:a92:6f0b:0:b0:365:fe09:6450 with SMTP id
 k11-20020a926f0b000000b00365fe096450mr104480ilc.4.1709670062725; Tue, 05 Mar
 2024 12:21:02 -0800 (PST)
Date: Tue, 05 Mar 2024 12:21:02 -0800
In-Reply-To: <0000000000000424f205fcf9a132@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000c5b2ae0612ef94a9@google.com>
From: syzbot <syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, ghandatmanas@gmail.com, 
 gregkh@linuxfoundation.org, jack@suse.cz, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 lkp@intel.com, llvm@lists.linux.dev, ntfs3@lists.linux.dev, 
 oe-kbuild-all@lists.linux.dev, syzkaller-bugs@googlegroups.com, 
 syzkaller@googlegroups.com
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhbHf-0001We-7k
X-Mailman-Approved-At: Tue, 05 Mar 2024 22:01:48 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] UBSAN: shift-out-of-bounds
 in ntfs_iget
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12be09f2180000
start commit:   afead42fdfca Merge tag 'perf-tools-fixes-for-v6.4-2-2023-0..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=162cf2103e4a7453
dashboard link: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12da9bbd280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=174e8115280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
