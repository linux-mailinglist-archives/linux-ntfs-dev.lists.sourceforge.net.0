Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A998789AA
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 11 Mar 2024 21:46:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rjmXd-00019U-IJ;
	Mon, 11 Mar 2024 20:46:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3lEfvZQkbABcFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rjk0d-00007k-3V for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 18:04:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8yBy19hDFo05+4w9V/H4BdQk6U8Ks9EV7patLY/+FNk=; b=SJ4qrGY+VE10wXKphPDYgp109v
 EnR2pb1+LLAgfAJ1A1dWgXggFKnn2FlXt0QpWx8D++9gVTEVCij8HWMI2KGCOHmF5UhewRat//bvn
 +DzkIB7iWJhRPpZxwMLePcLXqcPGkjFcW+ouFuGptO4nRpWZdbmTJ8PxNTVZT9BW51pA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8yBy19hDFo05+4w9V/H4BdQk6U8Ks9EV7patLY/+FNk=; b=Y
 kQ3hKOJfW1UbXWac1V9jDaiktVIQaB4eqPi6UDqQXIqXlAeOi896tejqKRTTtf90tmIdPmIbWRCms
 WlXnfLVKXPePN0mbI3xJCsbBt946ZgYTTQcA+8s3BtyLgTil+9GZLOqbtAum0JstBi+X4r2ptE/is
 CTitCjr6auKXsFaM=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rjk0Q-0005e4-3N for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 18:04:22 +0000
Received: by mail-il1-f200.google.com with SMTP id
 e9e14a558f8ab-3657bb7b9d2so51862235ab.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 11 Mar 2024 11:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710180244; x=1710785044;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8yBy19hDFo05+4w9V/H4BdQk6U8Ks9EV7patLY/+FNk=;
 b=ZUdzI+Xu3g8Y3y6Rtkzpzue3R8g9meKn+A9pjXg775SPsS8IWGLgNT1ioZ1pc2C8ZT
 fmIIiIKdG9YYbsk26a7uawf/Le2mFe6H11Mo2OWsv5vGCtKUCB2pv2MHo1H/ZoTYwCJl
 CwKHO4JfOnwpTUb7dGTSI3vgR2c6B+KVdla8HvP15H5xw0j52GZVnIQyJnCIzDjqTk1Q
 x/iYG4b+UEa3uzzkKF8zYoPrCQm5Bjtj5IW80bGNigS0XwJa2UiILNmW3/MOLTS8+03x
 Qga9DYdmoffkH1FceScOcwkkDcrm9ZutIMchtq5oQNW2bxAZb0DF/tf5D5gactg/v/0N
 +kBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWDg719uFNvaxsiSR2kmFI5apBOJqM7eRw8Xqpecu+9/E+QSlOv5YdGam0UCjBG259JcOUQpxH8AAwhriDR9z8aYdIsXl9dxVhgjH0KjAM3HYrhLkc=
X-Gm-Message-State: AOJu0Yxnmu2VE71scUlhYBK919Z3RDZPcv9J1HYlFmviAxYfSlZLVxJ4
 s2pEPJNWfa/kNyiHgp2pZXz3j02PYMk5xyJo34yC7q5QhXXg+CF2m1U1FQmOraXsSJuF8p1qXtr
 AxsCu84akdzcHilHsOVHCvx6qkFNWC3ddy2AGR2R4ygSgSNNUeDCfOf0=
X-Google-Smtp-Source: AGHT+IFyHCAwyzCLLw803UDlvdKw+MneFpO5vafv/T0V4RaM5JPBn4wRkpQnv93PEtYdiY0Aek+1NUNcIsTPZ8QtrD0ZK4dpeY4p
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:ca8:b0:366:3766:6c2d with SMTP id
 8-20020a056e020ca800b0036637666c2dmr215892ilg.1.1710180244286; Mon, 11 Mar
 2024 11:04:04 -0700 (PDT)
Date: Mon, 11 Mar 2024 11:04:04 -0700
In-Reply-To: <000000000000c74d44060334d476@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000f67b790613665d7a@google.com>
From: syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, ebiederm@xmission.com, jack@suse.cz, 
 keescook@chromium.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
 linux-ntfs-dev@lists.sourceforge.net, mjguzik@gmail.com, 
 ntfs3@lists.linux.dev, syzkaller-bugs@googlegroups.com, tytso@mit.edu, 
 viro@zeniv.linux.org.uk, willy@infradead.org
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rjk0Q-0005e4-3N
X-Mailman-Approved-At: Mon, 11 Mar 2024 20:46:36 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] WARNING in do_open_execat
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17e3f58e180000
start commit:   eb3479bc23fa Merge tag 'kbuild-fixes-v6.7' of git://git.ke..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0
dashboard link: https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15073fd4e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17b20b8f680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
