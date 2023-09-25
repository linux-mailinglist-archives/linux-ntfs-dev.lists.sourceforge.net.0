Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CC77AE02E
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 25 Sep 2023 22:01:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qkrlu-0006pq-EZ;
	Mon, 25 Sep 2023 20:01:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3dI4RZQkbAAcz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1qklrz-0005VM-27 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VF68zkfKFnG1LgMixZRaqdDmbqccd5ovmXesnmna+Hw=; b=OsT6dJk/uaoSCSKhRjpql2JuZa
 ysuebHPEoxuBFwad7Rl4gBAwdXsu3Ic1V8EJT6Da8lTugYz7NC5AQ0FB1ZvuGKwnLdzNsO7xPqBmH
 Ck/5QN+QFI/RBsAqMFsVufGm+ExmVUiKwMpEzliin/Uw7R+YNLwHFvIluwmmwQE625bw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VF68zkfKFnG1LgMixZRaqdDmbqccd5ovmXesnmna+Hw=; b=J
 JF0upNcAMW5ttRzN3tQDZ3i7F6RaL/bXr9kJ+4Xc59umru/r8AKo/TlFXp3MHgFj1pJVTA06+yRQx
 Qbxalp/hcfBQEIpG1oJbiWBm5MQj5UPUOKj/un4g1qUwOqnja256shc0xGUxe/m/QzSjB1d3Jg2KA
 oUOlIYpS8nhczZLY=;
Received: from mail-oa1-f70.google.com ([209.85.160.70])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qklrt-005uYo-NB for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 25 Sep 2023 13:43:25 +0000
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-1dcf9fda747so8664879fac.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 25 Sep 2023 06:43:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695649396; x=1696254196;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VF68zkfKFnG1LgMixZRaqdDmbqccd5ovmXesnmna+Hw=;
 b=v6ZWJM5K/9ww1CbWIqwvl10VqgszVN/CW5gxQNH/U7buj+/xpIUUlnlyPPfxekUxJx
 kK4GXC8d50mrSnMa2ERCDGltFFKqGr/1dbBWBmt1Rk9mUVKlh3a7el3klhZm2U/xu9TP
 tOJd14QaGIWWzfiVhTsS8gVImYzjrIHTzsgv0wWKNmXpq8OzMXhe6fkcFsG+mOgZVNWp
 ZyypQpu+S3FMkEKUXBIjfhqxb4JcQmJ7aP+tWcfGbr+dLxY8paSHiYfQ4xpFDwtpMW32
 Sbg+E5qd0i7r4wXFkYuKxbCz5V173VucIGvZUhe0n9hu8/eroaB6KVSh+m3uMfiIvbeq
 X53Q==
X-Gm-Message-State: AOJu0YydmMEbtOFST9wMNSbl1KUa97c/ZsHqjZmC2UxgHXHfLYg4FUUK
 gU1zTPZW1s3hq4djx0AWGLnFg62dOeuC6zGenJyLDeF7UPEF
X-Google-Smtp-Source: AGHT+IH0gZAmpaZ1qZbrt0tpkkEfhIsEo+C5auJfqutx56kdHSyN7W98CPA4+w0Qa8eUCvdlIErilRyMMEjPale+9HIQijRDA5sl
MIME-Version: 1.0
X-Received: by 2002:a05:6870:a89d:b0:1c0:350a:92d5 with SMTP id
 eb29-20020a056870a89d00b001c0350a92d5mr3078159oab.4.1695649396125; Mon, 25
 Sep 2023 06:43:16 -0700 (PDT)
Date: Mon, 25 Sep 2023 06:43:16 -0700
In-Reply-To: <20230925-mitangeklagt-kranz-992ed028ecdf@brauner>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000eb76ea06062f23aa@google.com>
From: syzbot <syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com>
To: anton@tuxera.com, brauner@kernel.org, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, linux@roeck-us.net, 
 phil@philpotter.co.uk, syzkaller-bugs@googlegroups.com, 
 torvalds@linux-foundation.org
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot has tested the proposed patch and the reproducer
 did not trigger any issue: Reported-and-tested-by:
 syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.70 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qklrt-005uYo-NB
X-Mailman-Approved-At: Mon, 25 Sep 2023 20:01:31 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] KASAN: use-after-free Read in
 ntfs_test_inode
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

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+2751da923b5eb8307b0b@syzkaller.appspotmail.com

Tested on:

commit:         493c7192 ntfs3: put resources during ntfs_fill_super()
git tree:       https://gitlab.com/brauner/linux.git
console output: https://syzkaller.appspot.com/x/log.txt?x=121d3e1e680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=df91a3034fe3f122
dashboard link: https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40

Note: no patches were applied.
Note: testing is done by a robot and is best-effort only.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
