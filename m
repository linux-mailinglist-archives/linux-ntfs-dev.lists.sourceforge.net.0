Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBD087FCA9
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 19 Mar 2024 12:14:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rmXQ9-0005Wy-8T;
	Tue, 19 Mar 2024 11:14:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <353D5ZQkbAOQYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rmXFS-00039W-FO for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Mar 2024 11:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NS31IZUVISj+9f5GH0XsvKxqqRb+tl8wJ9ZGlJagits=; b=KFUTJklvUOvFe0r+9dVzlrCqRN
 B1Ukg71X7QCaLE3zGr4LPHb9wjHijAIcTotFIUNhiDenw9tjabXT6/ffdMyJ/8MkEG50IHq2HMjN7
 q4RRxAnN6ZdLlXejCMGQn1lDYlAVoZoXhdZ53g7RWMoOntKP2V22dBEOAmN9jA+TR2GQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NS31IZUVISj+9f5GH0XsvKxqqRb+tl8wJ9ZGlJagits=; b=D
 y7g69QQd5E3I0hwNBQVw3Hx2yh+OWNJ9gK8ss0H77wYop0U4MKcaeOJWaFy7C48Wo5+TX48P2Zom/
 Q2/IWImXIY34DbHeZJM8mXDz+3lEw2KzdY1+wnMkFce8K1BEy49qNlSXKhPmlcYq2BCLrjQDCk03C
 IKhyKAlI5BO4SmWY=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rmXFK-0007hS-L2 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 19 Mar 2024 11:03:14 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7cbdcfcd458so430596439f.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 19 Mar 2024 04:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710846183; x=1711450983;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NS31IZUVISj+9f5GH0XsvKxqqRb+tl8wJ9ZGlJagits=;
 b=HoKNvvFjOedlQ5S1lptZKq4k6lRK/ehUboCya/CxtJ9+2myyQIRsox5a1x7Im53y8X
 f8VpHoKefdJ1W/LeRlcjWZ9dBt0x3aNmIGxQtlK2ON4HmHx3f19QM12pqaVExUwpI4/+
 6R5wSD7sZnii8sQKm50IsmjW+u2WTPpABCUzghRUzAFtnpM/UjxrJHwL/8BVyNOJhnlO
 jEXdaydZlRPgtsLGiqzNPt6NgUINLk7Y5cNrna8HCPJcTBbJz3WfkVHOTcCO7pytB3Tz
 rM6eq1QXbFQ5MDTdLjMcFstNeKaWoZW9jCyCY6K0qkKzxhhCZLJV8YvKZGkUw/ecg3ZD
 Bv8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2ZCYOhvxjPoLj5r/pydZA6RUtUlhQXjyUAGBFaOWkQZoMRvCOuUULoVEMRs+gIewp86BJHF7ytbpQODeIMoZHXvsTGPsqk0mDIkNLosR0zgqn+ds=
X-Gm-Message-State: AOJu0Yz4MTfg57/2Kdd3HiTxoijd+xMvBJKNDJoNAvEi1nBjuUmgHnbw
 Xs8LV2CS2n3dNYISeddwbwZOYYvf2Ylm6gpiHjs3yQn5p3v7KThnaX+zGU5Y6nWn2t3NuOWRg7Z
 n6sJuDjKv9ar9VNywil7AiDh+QpCO9KgTmSwA4GCUWRMiopn9zt7E4B0=
X-Google-Smtp-Source: AGHT+IFiDK1WT/n8TCOKAH5CGiH/AJ5QTidJfxOX7D2n/lTfWZAch3GSOQ51Bj+zC4HRoLqpgpszLLuCibMY38T8UfSWzD9bvdOO
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c02:b0:366:c200:a9fa with SMTP id
 l2-20020a056e021c0200b00366c200a9famr121313ilh.1.1710846183604; Tue, 19 Mar
 2024 04:03:03 -0700 (PDT)
Date: Tue, 19 Mar 2024 04:03:03 -0700
In-Reply-To: <000000000000aefc5005f5df169b@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000000a1c180614016bc9@google.com>
From: syzbot <syzbot+ef50f8eb00b54feb7ba2@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 brauner@kernel.org, david@fromorbit.com, ghandatmanas@gmail.com, 
 linkinjeon@kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev, 
 syzkaller-bugs@googlegroups.com, syzkaller@googlegroups.com, 
 willy@infradead.org
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot suspects this issue was fixed by commit: commit
 7ffa8f3d30236e0ab897c30bdb01224ff1fe1c89
 Author: Matthew Wilcox (Oracle) <willy@infradead.org> Date: Mon Jan 15
 07:20:25 2024 +0000 fs: Remove NTFS classic 
 Content analysis details:   (3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rmXFK-0007hS-L2
X-Mailman-Approved-At: Tue, 19 Mar 2024 11:14:16 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] KASAN: use-after-free Read
 in ntfs_attr_find (2)
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

commit 7ffa8f3d30236e0ab897c30bdb01224ff1fe1c89
Author: Matthew Wilcox (Oracle) <willy@infradead.org>
Date:   Mon Jan 15 07:20:25 2024 +0000

    fs: Remove NTFS classic

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11fafac9180000
start commit:   9d64bf433c53 Merge tag 'perf-tools-for-v6.8-1-2024-01-09' ..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=7a6ff9d9d5d2dc4a
dashboard link: https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13d79fbde80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14be4a73e80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Remove NTFS classic

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
