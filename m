Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC435A2936
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 26 Aug 2022 16:18:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oRaAJ-0005jp-8n;
	Fri, 26 Aug 2022 14:18:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3rdUIYwkbAJoMSTE4FF8L4JJC7.AIIAF8OM8L6IHN8HN.6IG@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oRa8K-0005i6-2C for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 14:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ksxSogszh3RDfpZCg9v7flKQN91BMpsdsn/LVGg+pEc=; b=kyFNa2IBI8yeJA226YI/X7NgaJ
 sGzIh/7gn7Pm9XRBvlqVwjMvJG32CY4abPR9QnhnyKIwaoto+sxdpLc5mNio9UfiqLVLexwytFH5D
 9D+i/oWWIxT8MlOrWTJzALGkmmoFNVVYRCNNik6n8xcnpudF5fducM5xk7hDa7D263D4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ksxSogszh3RDfpZCg9v7flKQN91BMpsdsn/LVGg+pEc=; b=X
 gZkgZ7QcvBI4JdaQSlkt7lwBB6YP4SaW/fBjEdXpwD0J4FYRgMVdSz4Q+Ioye5GzCG4/c9iesYuzn
 zbaMRcAqnRMLTqXUZBfemkO/3WU0l6rRORuk65TQmR7aRDmn84HnBZZO30JvnEcOthWUovUccUwa6
 1qZMdhXQQ7xbUpLY=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oRa8B-001Z51-DJ for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 26 Aug 2022 14:16:23 +0000
Received: by mail-il1-f197.google.com with SMTP id
 e2-20020a056e020b2200b002e1a5b67e29so1232982ilu.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 26 Aug 2022 07:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc;
 bh=ksxSogszh3RDfpZCg9v7flKQN91BMpsdsn/LVGg+pEc=;
 b=qtZFQYWmUZrFOfY/4/feGlBrrFCdHTVCcbgoFK725DiqO2OlHUbXT4a4ITPRTGVU45
 gn1NcLJp1SH2A2rPfRVNXcVGaFDO7YMOUStyHu7o9bKoCAWIAtGjj6b7uSjYn7pj50se
 B/27q1CfJLM1zgBFjFY5cmqShp6BuluNV4i5iYBsHOnrfb9emmHaZGgUvzGKmZdn9ST3
 TkBvKflVso+q1LT+uJWsYTOPFMKEGoKy5AoahyOyuY2DK67UwLLWCSw7d7e2JIVEa5No
 i1Q6XScWErDzsxRaogqF5KXsGw8gETIMbYGP15XMdSwt6lfBqegK1ByjdIyff/H7JBWz
 //8Q==
X-Gm-Message-State: ACgBeo2QitdQTgc51wN+m/LbjbSPHtjN4B0/FzgtefWql1LSPAN4qFWk
 g9913faFLS6ctjmbZxM6H8ittz8AhDCFLdpABJSAlxPx8Sv7
X-Google-Smtp-Source: AA6agR4kOv8X5Fo/JMEEbnriaPqg+0280F0wRgLdITBf5g5ZFAiep3fzMdgJY3v0D6mt/0f1BkwWTqJbnzIWt3sbRgtQb1vFB2x0
MIME-Version: 1.0
X-Received: by 2002:a92:cd8e:0:b0:2df:3572:5b0 with SMTP id
 r14-20020a92cd8e000000b002df357205b0mr4165921ilb.226.1661523373901; Fri, 26
 Aug 2022 07:16:13 -0700 (PDT)
Date: Fri, 26 Aug 2022 07:16:13 -0700
In-Reply-To: <20220826123257.3826-1-yin31149@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000007ccfed05e7258e51@google.com>
From: syzbot <syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, anton@tuxera.com, chenxiaosong2@huawei.com, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com, yin31149@gmail.com
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
 syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
X-Headers-End: 1oRa8B-001Z51-DJ
X-Mailman-Approved-At: Fri, 26 Aug 2022 14:18:30 +0000
Subject: Re: [Linux-NTFS-Dev] [syzbot] KASAN: use-after-free Read in
 ntfs_attr_find
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

Reported-and-tested-by: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com

Tested on:

commit:         4c612826 Merge tag 'net-6.0-rc3' of git://git.kernel.o..
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=115a8b13080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=911efaff115942bb
dashboard link: https://syzkaller.appspot.com/bug?extid=5f8dcabe4a3b2c51c607
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1229de4d080000

Note: testing is done by a robot and is best-effort only.


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
