Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6426D23B4
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 31 Mar 2023 17:12:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1piGQu-00076l-11;
	Fri, 31 Mar 2023 15:12:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3nfUmZAkbAEw6CDyozzs5o33wr.u22uzs86s5q217s17.q20@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1piGFJ-0006ib-6w for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 31 Mar 2023 15:00:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xXJeCN66PsTRTpcJxolDc689G/RLppmQwQj5w4uhgxs=; b=GhmX0125kpsNAjBsRUg4Z4ZYex
 WcajwIPcOe4d8SjUGLshBSIzYXQ7CMkyQNutHEDQGVRFmEsMuJNI8OKqbzzcJYb+85x4BP8AdN6E5
 ev7BIFy1JY9il8niqtr4CO8Fp7YHy/e/mTPcWkwpMtcoBcHncgPoQeXiTjCeAmKjWt7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xXJeCN66PsTRTpcJxolDc689G/RLppmQwQj5w4uhgxs=; b=C
 lyIW9P9CVlCTCCoR7W5YJyBna4yVqdoyuBeoUqCPiSe97GmI5komtBFHa8Ft0//f5Gzd0DZ4yKxJN
 SfWGCom/OTzD0/N64CQ7hwiLHKpwdIHQXjj+rzoBBP0E5dmH6Pbn5elhYDR6GHO642jzo/lgjTBh7
 YPdPS9epFkNOP5Go=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1piGFG-00024E-NI for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 31 Mar 2023 15:00:52 +0000
Received: by mail-il1-f198.google.com with SMTP id
 c6-20020a056e020bc600b00325da077351so14363206ilu.11
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Fri, 31 Mar 2023 08:00:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680274845; x=1682866845;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xXJeCN66PsTRTpcJxolDc689G/RLppmQwQj5w4uhgxs=;
 b=4ITDq0OxTiOQdIf+vDAdJoJyvCRmGFgRevAT3W42QXtbQc7Qct17JdG38mPpAyG7cD
 vzxr41EMInta8tlWgB1JnsicAJeiXdwrTk8aOavkeSDE+LgqssndXPqikAL/mxU00FPn
 f/Mh0cn+wiKgQn4x3FXDBJuEv7cexpz0wth1Hy6kVmVtiEePVaS9LFjq6gycqAFxLwvr
 Hjj4sBdppyNlq5RLXM9BHE/K4xqOajqISXvsyXGslRVY24JvY4+vbDpsc63Nip3NP1Qw
 Rxe+tmjD65SYtIOkgJJQKr2HvMV/xwVPYWBgb+tGG1GY91ioIzwKatnr/Kpy0repIhsD
 IjMg==
X-Gm-Message-State: AAQBX9drcUboNy5CNmJELBtp1Hb4LpYlfQd/led0ywMwOuFcdM0enwwd
 L8eSpHZ0IEc2UhDOdIGOdoZju/yLgrDODFMJNVaUrUtBm28+
X-Google-Smtp-Source: AKy350ZX/pvMQTmLXUtbAKlExwmzb2czsedhAzyocEligNmGlu56sU1PUdvDN7qEP3HNKw6brs1mPomqbsL0ucNreL8RaX2VMmoG
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c47:b0:326:2900:f494 with SMTP id
 d7-20020a056e021c4700b003262900f494mr5214354ilg.4.1680274845143; Fri, 31 Mar
 2023 08:00:45 -0700 (PDT)
Date: Fri, 31 Mar 2023 08:00:45 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000045192105f8337955@google.com>
From: syzbot <syzbot+list699b83da9318c0cd04e4@syzkaller.appspotmail.com>
To: anton@tuxera.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello ntfs maintainers/developers, This is a 30-day syzbot
 report for the ntfs subsystem. All related reports/information can be found
 at: https://syzkaller.appspot.com/upstream/s/ntfs During the period, 4 new
 issues were detected and 0 were fixed. In total, 22 issues are still open
 and 6 have been fixed so far. 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1piGFG-00024E-NI
X-Mailman-Approved-At: Fri, 31 Mar 2023 15:12:50 +0000
Subject: [Linux-ntfs-dev] [syzbot] Monthly ntfs report
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

Hello ntfs maintainers/developers,

This is a 30-day syzbot report for the ntfs subsystem.
All related reports/information can be found at:
https://syzkaller.appspot.com/upstream/s/ntfs

During the period, 4 new issues were detected and 0 were fixed.
In total, 22 issues are still open and 6 have been fixed so far.

Some of the still happening issues:

Crashes Repro Title
935     Yes   possible deadlock in ntfs_read_folio
              https://syzkaller.appspot.com/bug?extid=8ef76b0b1f86c382ad37
581     Yes   kernel BUG in __ntfs_grab_cache_pages
              https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
261     No    KASAN: use-after-free Read in ntfs_test_inode
              https://syzkaller.appspot.com/bug?extid=2751da923b5eb8307b0b
171     Yes   possible deadlock in map_mft_record
              https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
112     No    possible deadlock in __ntfs_clear_inode
              https://syzkaller.appspot.com/bug?extid=5ebb8d0e9b8c47867596
77      Yes   INFO: rcu detected stall in sys_mount (6)
              https://syzkaller.appspot.com/bug?extid=ee7d095f44a683a195f8
4       Yes   KASAN: use-after-free Read in ntfs_attr_find (2)
              https://syzkaller.appspot.com/bug?extid=ef50f8eb00b54feb7ba2
4       Yes   kernel BUG in ntfs_lookup_inode_by_name
              https://syzkaller.appspot.com/bug?extid=d532380eef771ac0034b
2       Yes   KASAN: use-after-free Read in ntfs_lookup_inode_by_name
              https://syzkaller.appspot.com/bug?extid=3625b78845a725e80f61

---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
