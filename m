Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C298776F3
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 10 Mar 2024 14:15:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rjJ1u-0006Mw-2N;
	Sun, 10 Mar 2024 13:15:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3UBXtZQkbAGUVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rj8Yw-000855-Q3 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 10 Mar 2024 02:05:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eAtcZ0jcmff76E8g+uUmd6ptddX0gjsk2MQCSo48DN0=; b=UNtMtYNJBzjIxZkcAl5TRt1Htn
 3JTgwT+YlatCwpBv8zz36mi2WY7cV8XySGsBEjFeFe6s5kogZSZF9KyAXhdvfIgN0CHN9UclM9uO9
 pUsdpXQNN1959CQMnUl2oMNeLBwbsObYRNk7YJZ+Ii04/eAoq+7Sjxyh9l2iphQyDKlM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eAtcZ0jcmff76E8g+uUmd6ptddX0gjsk2MQCSo48DN0=; b=E
 pe38feXjPEX8XGND7NuPVlk9KHz5T6rlf6HS+45Gu/6/3YumPelhedMlGlo1Fe0i3zTZofuQ+SJ8z
 vBPXBh333AznaiywJf9of42WpV5iPzg1S+50p1EXERTqHMMkr5LRzVyP9Ny/nXlTM9Pk5P+rXkgCo
 T9vNOUlAyPpHp6cU=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rj8Yn-0000jz-28 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 10 Mar 2024 02:05:19 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7c8ad1653f8so30612739f.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sat, 09 Mar 2024 18:05:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710036304; x=1710641104;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eAtcZ0jcmff76E8g+uUmd6ptddX0gjsk2MQCSo48DN0=;
 b=IYVQvrShW9y4A8H9zbx+/d63biBCwHh1kXlKvcdctjuDTp7FwQPQuaSYbENvg2lyvY
 g0O9XP29J3hvmsBpS26OSSLn/pXL8DrsQ0cHjZ2UrvdtFJ/3+dJVRcQiCxtxahHa/4tK
 Bg3GfNcIdjD4DP6VQ1gDVJR/e4PK58y3/E5xrl+APQOC/MsEl0VElJfB8SKwCgPY9Jwx
 vWLsr4T4xMkGjwCUBrfMELFvuHFFFh0yfDCik0rvluzvgbTV+pAU8JYocxo5XNRzbCZh
 KobxAVIaPFgKhRLjhcbZOfwexcLkWUQMCKYuaexBgQ/zqfO+EXsKCjs9pBG+0Kn4OquN
 SIyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSTc7G4r2Vg3Herw5O5kATyqO2b4CPfJRBxuRCFD69f3OiYdwJsIksJ/NCy8PiAB5HKqX4yvnUkR/PbxqJ/i8evsJ25EkSYP09Wv88n55GdmpHnMs=
X-Gm-Message-State: AOJu0YxRa2p5gjPRMO8GkOG5uPT7iC0Yw+HOspWzXnjqnLsKOzeJahQR
 TOIHuLI9NT9F5+MgUN1UemO4+NQOdb+XTYEls8fOP7PMRHVJfk9aeh2q9/yBhFeqcs0FQBmxW6t
 16L4+UDQXS05VCE1sQELCreSyn34BFDIaBJmuzrsiat0QIJe9dmuAt0s=
X-Google-Smtp-Source: AGHT+IE6e/IIewGxQAV4bqB6X0atmmjTjDjRrTeEujE/9OhtcHQe4bLNbPc1G6ogefC3EoR0pjUbedvrrFrSIyeg1cQ727HyyOZJ
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2dc5:b0:7c8:b219:4547 with SMTP id
 l5-20020a0566022dc500b007c8b2194547mr3316iow.2.1710036304535; Sat, 09 Mar
 2024 18:05:04 -0800 (PST)
Date: Sat, 09 Mar 2024 18:05:04 -0800
In-Reply-To: <0000000000002a6cba05eb5c7fbd@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007c3484061344da08@google.com>
From: syzbot <syzbot+cb1fdea540b46f0ce394@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev, 
 syzkaller-bugs@googlegroups.com
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rj8Yn-0000jz-28
X-Mailman-Approved-At: Sun, 10 Mar 2024 13:15:53 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] possible deadlock in
 map_mft_record
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b28b99180000
start commit:   e4cf7c25bae5 Merge tag 'kbuild-fixes-v6.2' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
dashboard link: https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=151db82a480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10f0e670480000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
