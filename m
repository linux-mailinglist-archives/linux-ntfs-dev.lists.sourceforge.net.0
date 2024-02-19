Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C74B685AE99
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 19 Feb 2024 23:36:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rcCFo-00033a-S3;
	Mon, 19 Feb 2024 22:36:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3mtPTZQkbAMU39Avlwwp2l00to.rzzrwp53p2nzy4py4.nzx@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rcBxo-0002lv-DR for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 19 Feb 2024 22:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4t2paFm5bNQPj52rT++RcxCOeC7mO3UVObeCBKBufjo=; b=NxofVx3KL+uXJCXhh291bMVmOE
 kW4rHokD6THFdM3gUgFIpW5XuG7UREPRlICQzU6ZYFcflbQovaIaITMjjDygNn9rFjBXFDMaUnCXC
 /mLxzcBwWFg5OReS0mRec0ueSxxUtu/Ml0EqgZ7kztfqlu8PQM9bl+x5ijth2cjs4tIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4t2paFm5bNQPj52rT++RcxCOeC7mO3UVObeCBKBufjo=; b=H
 /voLVLhaclXfQTVPUcl4452f5e4iI6zammUPf09RNw0yF7llCiJro9tVINQ6Zt1oVp+0V4ED4Lp1f
 /G5AbjDWcUxvo1L9Tde024OEufmi1Pbg1Elxx3rIlbVxT9z7WemNmzclyD6ob/9Ct31LeFfMi9jtX
 EkmgxOaKdn3ZDUiA=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcBxj-0003Sw-TO for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 19 Feb 2024 22:18:16 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-36516d55c5fso21333015ab.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 19 Feb 2024 14:18:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708381082; x=1708985882;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4t2paFm5bNQPj52rT++RcxCOeC7mO3UVObeCBKBufjo=;
 b=j2xVmpTHYf9jmmwbhFTnuLW9p0e/4VcACYaXQYWwQYdqj9W0PDrQbGKyUP8R15AKLN
 D3IasSoNrMlvs92mx4xOgvaok6Zsf5vU43+apCql01Rl2Ps45nr/NwGVV2msog11nNen
 sYUrpjGbIPel6DKZU6X1N5/O7rPUAi+ejDpAfQ4uoVR7o6N1ZW/7vwzcHMpzgOH5rm8y
 u7+NmzELo/QDFt9rezC3dfnLvZQO5ERsonCzFXUJS4Te4veEUf8UwoQajzdS5etuGe6/
 hfdWUmGpk8QFI59K9w9mkWlD4USzeegBzpVBwqVqz5p0B1Ywt6Oafe7/d15edDOEFmrt
 jRYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFKAZUVtjF0uuZ8xBg8XalDsxCKAky0sQ3sVA3DuoUXfCaUIvf1r+/j6VyJYHijxUZP1+6LiQxvIS+ME73IKb/7TuQ8TAjeJpGYeMTRfXUN7EJONs=
X-Gm-Message-State: AOJu0YyH2pAxqx1/vRRPuMPHgNLi0EwXS0wxIC94aIE3XRgx2Qq/yX8M
 9z6E+5X5qRqGMWpT+fh+AtXxjRuzLaysyGdLtnwahZHr2ipUBjg9nUyEcsFRp4msCaLVeMAGdrY
 zmZwPaY5rkeH8DGq2/gWdgG+v0GgEl3jFOjK7q/aHYR5Mue8SHWpGLv0=
X-Google-Smtp-Source: AGHT+IHNZ6BqQ00QXj4UQF0JzF8saHr7WBqtNu9rPtVFrdB+5HO6tIDSXWfK6Rsne2Np8ab/YzyIPk0B0OVZ7io32bkJWQ3CGOpF
MIME-Version: 1.0
X-Received: by 2002:a92:c26a:0:b0:365:1957:551a with SMTP id
 h10-20020a92c26a000000b003651957551amr646218ild.4.1708381082710; Mon, 19 Feb
 2024 14:18:02 -0800 (PST)
Date: Mon, 19 Feb 2024 14:18:02 -0800
In-Reply-To: <0000000000002f18b905f6026455@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000937d8c0611c377f3@google.com>
From: syzbot <syzbot+c601e38d15ce8253186a@syzkaller.appspotmail.com>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcBxj-0003Sw-TO
X-Mailman-Approved-At: Mon, 19 Feb 2024 22:36:51 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] UBSAN: shift-out-of-bounds
 in ntfs_read_inode_mount
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11390158180000
start commit:   022ce8862dff Merge tag 'i2c-for-6.4-rc6' of git://git.kern..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=7474de833c217bf4
dashboard link: https://syzkaller.appspot.com/bug?extid=c601e38d15ce8253186a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11bd01dd280000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13678475280000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
