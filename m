Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3175D893551
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 31 Mar 2024 20:08:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rqzbX-0005PB-Md;
	Sun, 31 Mar 2024 18:08:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3D4QJZgkbAHQkqrcSddWjShhaV.YggYdWmkWjUgflWfl.Uge@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1rqxJ7-0001Gm-Dg for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 31 Mar 2024 15:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RMPIvofFZ0pzeDlA+dJFHUiRuMTw5ZBBa6f9TDeB6IA=; b=VW3LS+Q0g3eEEk3b/gofMExTrp
 nxQgwd3f48xdPRC/sEhkJu8Z5nRZ00a8cEgoYhKb5BN8CW9TG7oOlhE5PWQN2/G9DWpeB+qXmggOf
 iibfrYtBSQkW1QU20ydDGy60NWJ+BMV4DC7fQWBUqbyLHwNgs8axjl+NhVkHmnsBBOnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RMPIvofFZ0pzeDlA+dJFHUiRuMTw5ZBBa6f9TDeB6IA=; b=X
 GvHLCj8tkLnrY8Wpqk6e2Z4Annes8/qAUCKv1kKIJ5ImBcQY5CkzUuvG9DbKua5MP6dOshwh80Ip2
 DWd/vvi9xbKstPhYNWiMHYxS2xxONYbgpo4UF9J/i8Upvs6I4LTRgPRBgnfnBon+/Mt47bELues8/
 j5I4wvHrBhJDODqU=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rqxJ3-0001rh-H2 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 31 Mar 2024 15:41:17 +0000
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-7c88a694b46so298216839f.1
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 31 Mar 2024 08:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711899663; x=1712504463;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RMPIvofFZ0pzeDlA+dJFHUiRuMTw5ZBBa6f9TDeB6IA=;
 b=nw1+TZhIZTUw5KCTPGMcxkzAam+WWtecCWiFn0vBM0O3FTljruRAobM/NKuzOEJU/g
 t80IMno6q0nxhI6yYdK2BOEL97Id2ZTV25HiCUkzztWY2BHK9vql2xRONTTWnhUT/vuS
 vfn3Mf1uS2IgZsBajCfUtYtMmXSTMwlHyyQhr5BUZz4Z/2RT26j7T+hJMehPo9zsQM6+
 xCYoiNnKSGCNgAFOGbkmtsDTLlBeMBGV5rzQTrv3ChuHCtmQ2sQTgLc9xVb/U60PELwt
 CdjPI3Q5ipFifJVv6PBIYBNQZhP9vzkEou9cxawCFx7dDqXL5KsmRYgq+5d6jg9MaDf1
 bm9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUwicTCRrMm+0QXMxOqozsqcr+Rd6zmDM7KxY2cNHruOItDLW+yl65sW9rtc6ZixpnP95zUgYIMr6wLL1tzPbHbEEoD9fxJrnWCBN18Q+L8Rz3sdKg=
X-Gm-Message-State: AOJu0YySEsD9ZnzZ01lzhfqjh02wW4DT0HclkTpgvQNdvWEYk0bUT3cR
 XT/nUyZ70nDb8cCoh+W1RehP8KJEa+myAq0Tiq8FszmwqorHKi3DOFqfvMOCrlHn7l/6q4EdT9d
 aYqDeqL+nztsP5W41gJPmgaH/w2qv7/ym/zkVEGwRMtYvN30X1+1wg+Q=
X-Google-Smtp-Source: AGHT+IEs3YkKutFNOonb15d5RKFj0anpMUEzpVWKAAfIa29yd9R+rbNaHMJtBfq5H3RMplyKrtWIE7u7ls65Czyj4h0zrEBkTqeb
MIME-Version: 1.0
X-Received: by 2002:a05:6638:140c:b0:47e:b7a7:f4fe with SMTP id
 k12-20020a056638140c00b0047eb7a7f4femr286348jad.1.1711899663146; Sun, 31 Mar
 2024 08:41:03 -0700 (PDT)
Date: Sun, 31 Mar 2024 08:41:03 -0700
In-Reply-To: <000000000000e05bc805e99789e1@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000504d0d0614f6b3dd@google.com>
From: syzbot <syzbot+01b3ade7c86f7dd584d7@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, anton@tuxera.com, 
 axboe@kernel.dk, brauner@kernel.org, jack@suse.cz, linkinjeon@kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-ntfs-dev@lists.sourceforge.net, ntfs3@lists.linux.dev, 
 syzkaller-bugs@googlegroups.com
X-Spam-Score: 3.1 (+++)
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
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1rqxJ3-0001rh-H2
X-Mailman-Approved-At: Sun, 31 Mar 2024 18:08:26 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] kernel BUG in
 __ntfs_grab_cache_pages
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

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1636d11d180000
start commit:   42dc814987c1 Merge tag 'media/v6.6-2' of git://git.kernel...
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=e4ca82a1bedd37e4
dashboard link: https://syzkaller.appspot.com/bug?extid=01b3ade7c86f7dd584d7
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=118cd46c680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=136d04a6680000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: fs: Block writes to mounted block devices

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
