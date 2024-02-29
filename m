Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB47086C7F1
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 29 Feb 2024 12:22:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rfeUc-0003AG-HE;
	Thu, 29 Feb 2024 11:22:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3b1zgZQkbAN4SYZKALLERAPPID.GOOGLEUSERCONTENT.COM@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rfdf5-0004oh-AM for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 29 Feb 2024 10:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=due3BSO2Q9QQy1tfU+DhYvgI9lxf7h7yLmfxg2bj9yE=; b=OjeCJPL4ECko3Es60mL6FgYpi7
 h2719u7FH0uQaCSXYq9VT1qhb9uI5ygdYswwt5lGbvmhJk4JqdzHKrYjq00G5mfdcadsIjt+DUzCX
 6HDKNyeuudhXXJCNtGGEb3LIFxD2iYqEA3Hy7Gai2JvueEmEU0TvuE8UutR9nM7mvBdg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=due3BSO2Q9QQy1tfU+DhYvgI9lxf7h7yLmfxg2bj9yE=; b=I
 ztcyVyDRhrudmtYrbSwVneNcbJ1SN/TsMnwkr/lQDzBFRTINCLEP54EobgAE4lHS+7X37Jz7b9Vt4
 HLubJel2znhjGedP+lFLXaxJ9o1/UaNBdEsvED4JFYmJu0OhI9prHVtpFmm1v7l+GQZTeZgYJypOu
 13WqZhCiSblxVQHw=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rfdf3-0001bw-9F for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 29 Feb 2024 10:29:09 +0000
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7c75dee76c0so55189139f.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Thu, 29 Feb 2024 02:29:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709202543; x=1709807343;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=due3BSO2Q9QQy1tfU+DhYvgI9lxf7h7yLmfxg2bj9yE=;
 b=wLoUCDUEXd/jSKeqdRt/XdXdzlOe65bVxUbO08WpdpS1lAamTqlvuIv59ABVOgGbQP
 WrIesr1LntI5tc+pUYfFIWnlbbpdueIKnxSIwNsR714/fVZ432xhCNkwFdynz9d+x0f2
 9nCR2gWwAm1aw18aZ4efASr32k2gWQutbNeluteAMSYSu8fumAhZ4e5lMBQ8hV63FhGm
 0XhqxanQgd2liZHwyzJaDxOadzs6UHkPXPn8KM26+ygn2vr1GWZf9okNgReoM/Z7Q3sS
 aACcxdRMTAR23u73Z4GMa8OjXEnDmMAURkYUZsm6m/SYBiQzCYfVpmf9eeSDyhXXisw3
 /gqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUtR0vj43K84Q8ry8+RC5YBlBS+KziRQ0Apgo6WuVTexv4GIXvCxos5ap27et74kdVmlJJtnONGoP8DuVXA+Kw/a8MDzjH4qQl0VycIIo6G1lteLp4=
X-Gm-Message-State: AOJu0YyfZuh4OpBfkz5uCY4Cx8HndpNHlzv6LwcNUGxBvG4CA+9XyNRx
 /FcExVT1VUwuSSuyV/jkvnUqOwqTvGQ7fv/7i5ISj0ZbH62WeVf1pPFPus7dyxIfUggHw1SDHgh
 +3wqc8t8wCyzm7XYJrwk00omJfKWymJFRhsWE10ofdq0wIFT/NaM/7Jw=
X-Google-Smtp-Source: AGHT+IG2pzGB/bSL5lyIW4of4SnG2AETh2eVcWNY2PjmAky9W70Ne3ilD1c0bgJEXD2NQSMBqAVmrCjpUxXXw1IVIbbE8VsD2goT
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3c45:b0:474:ba84:8ded with SMTP id
 bg5-20020a0566383c4500b00474ba848dedmr69269jab.0.1709202543676; Thu, 29 Feb
 2024 02:29:03 -0800 (PST)
Date: Thu, 29 Feb 2024 02:29:03 -0800
In-Reply-To: <000000000000602c0e05f55d793c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007717e5061282baa0@google.com>
From: syzbot <syzbot+d62e6bd2a2d05103d105@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org, 
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
 no trust [209.85.166.71 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rfdf3-0001bw-9F
X-Mailman-Approved-At: Thu, 29 Feb 2024 11:22:25 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] kernel BUG in ntfs_iget
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=105d5a6a180000
start commit:   2639772a11c8 get_maintainer: remove stray punctuation when..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=f8e72bae38c079e4
dashboard link: https://syzkaller.appspot.com/bug?extid=d62e6bd2a2d05103d105
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1358d65ee80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10dbbe45e80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
