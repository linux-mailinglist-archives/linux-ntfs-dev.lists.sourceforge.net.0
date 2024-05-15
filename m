Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 645D68C6DE8
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 15 May 2024 23:44:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1s7MQL-0003fT-E1;
	Wed, 15 May 2024 21:44:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3mPxEZgkbAN0RXYJ9KKDQ9OOHC.FNNFKDTRDQBNMSDMS.BNL@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1s7JDg-0003cQ-E7 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 15 May 2024 18:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z+tpDgK2JCqXeT0yDQHOxK3Y5nf0WqVOLoMtiI3Y/bw=; b=NFQCfWIPlvoqYr5HskO92SqRDs
 IK2epYHpinjBCByRHt1YDW4r8oH4ebcJm84hdT24gluTjnBvIy374fyp4/NzezxnJTb/kr+JEki93
 yoQXIbgRHuFV8LSiG/xEcJl9X8JqfWusRbtArd3pPg9a5PaQ06T/cIS7rJ12czSlcmCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z+tpDgK2JCqXeT0yDQHOxK3Y5nf0WqVOLoMtiI3Y/bw=; b=Y
 xHapZBcAtQOYXuL6JrbrOW3VAm45C1Humev5jTmPs4NFXjcMRS6hxTCasiq1cYplADhNF7P177Xzu
 LtUBMYbIUxmkXhY/eX6pNrGl/6OJtgoTJeeyPwcd4htLcuupychVrMsHS3JSq+c+ykhQzGoyhaIcL
 +7baThqA7Q2+yFCk=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s7JDf-0002KJ-TN for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 15 May 2024 18:19:15 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-7e1ea8608afso335650639f.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 15 May 2024 11:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715797144; x=1716401944;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z+tpDgK2JCqXeT0yDQHOxK3Y5nf0WqVOLoMtiI3Y/bw=;
 b=I1T560kPR/2rQ0I9EWviECli0EOzlUaf1syO/AOn+AAjEzMvQacpBCAHitybpmMnMt
 AsKWNVgMYTtzZUz9IB+pfQe5iWoVpzmVB5VZ/heHlvr9YYuHBwLVWl1FcFruGvgrIYPQ
 w5lFr65Aioon319elG8qm6b60Ft3+kdKHvUbn0Fa67adO28JmaKzUP/HSLcZ3OCnPuej
 9ALFcCsDpKRsFj0RnVYqBnfEpILCS9i2hu2n2yzLF8STnvc+G1Vzj31d/Ir2kTlQ2VFq
 DNaN08iu3rOvTxIu9eVgQv6JxaHPDoj24Z4ikRtYWKi+gpMAhcGBLhR5fZu8smQDY5rt
 M4Kg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWNYrHdhrAQadsjyP69YgpdCPBuL3Q+dhwP9fVn+EN4o57YruWj8w+wievlGolVl0ElwQxQrF/WpvkuQj2wy+J1GUDMVwYCe3rdjxOVw1Af/l5Y1zQ=
X-Gm-Message-State: AOJu0Yzkp4Be8j4aS4Hf7/EohBIM6GIkAaOFlD6tWhpgs9GIJt8sebCK
 g5zsaapgxxlOjJeNHo0sONpyiS95Vt78SLYmKG0Q2+2IC6Imwu0f+dIbfcxkKaoPFCL4B/dc7Ii
 mkcMDb5uLyTOcdBL6+5NSrnA2Zy7+Rcxs+q43kjjH1qmInwJGakdC6T8=
X-Google-Smtp-Source: AGHT+IEjNm55R8nOlSIvYdtT/+wPoKVbHS4MXBNSquAdO95DQ/qV9dYHkp5IQ0ROpBGxD/p/1FKq4FdnI5XNMO2HYBR0ez1OuwCN
MIME-Version: 1.0
X-Received: by 2002:a05:6638:861e:b0:488:59cc:eb4e with SMTP id
 8926c6da1cb9f-4895854473cmr1136597173.1.1715797144326; Wed, 15 May 2024
 11:19:04 -0700 (PDT)
Date: Wed, 15 May 2024 11:19:04 -0700
In-Reply-To: <000000000000c4b45a056a36872f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004b67120618822707@google.com>
From: syzbot <syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, cgel.zte@gmail.com, 
 dai.shixin@zte.com.cn, ebiggers@kernel.org, gregkh@linuxfoundation.org, 
 jack@suse.cz, jiang.xuexin@zte.com.cn, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, lu.zhongjun@zte.com.cn, 
 ntfs3@lists.linux.dev, ran.maosheng1@zte.com.cn, ran.xiaokai@zte.com.cn, 
 stable@vger.kernel.org, syzkaller-bugs@googlegroups.com, xu.xin16@zte.com.cn, 
 yang.tao172@zte.com.cn, yang.yang29@zte.com.cn, zealci@zte.com.cn, 
 zhang.songyi@zte.com.cn, zhang.wenya1@zte.com.cn, zhang.yanan14@zte.com.cn
X-Spam-Score: 3.2 (+++)
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
 Content analysis details:   (3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: goo.gl]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
 0.1 PLING_QUERY            Subject has exclamation mark and question mark
X-Headers-End: 1s7JDf-0002KJ-TN
X-Mailman-Approved-At: Wed, 15 May 2024 21:44:32 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] kernel BUG at
 fs/ntfs/aops.c:LINE!
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=134d0268980000
start commit:   ceb6a6f023fd Linux 6.7-rc6
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=e5751b3a2226135d
dashboard link: https://syzkaller.appspot.com/bug?extid=6a5a7672f663cce8b156
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=172458d6e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=120d8026e80000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
