Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 514DF5A78D2
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 10:19:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTIwp-0001EY-3Y;
	Wed, 31 Aug 2022 08:19:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTDiD-0008Uu-Pi
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FRE/1ksuSSeACOgW8Zc4uX4HOs5MJlmYY/kqqHzt/Fk=; b=IHJU8QNAnqzerJSx2ZYcdhSrZT
 6ox0FkKRsdZjAa5KzcRDfqVqaAZrvR/rVS7Igs6zymwuAAodzVf/qVuxhhBP3470JgMzRw+ZKTA5a
 vmkyAX7zN5VKLn1US1r5Qr49OcIi7ynXsMk0g5ZV2E3paEBIqC1sjrTY/q/PPuBP5KvY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FRE/1ksuSSeACOgW8Zc4uX4HOs5MJlmYY/kqqHzt/Fk=; b=Q
 2XjT7rpHjgWf/tfkL6Wre0Sw6HRLyx5A3+54VFJ07nQpiA889TRthJhOrkH8CKF5GKaqmE1BeEIdl
 ZXmfXUxjSPt2eyz7948mZCWWmJ3ntTRrAwP6oTHJacydjU2BhNWbQ6nfpfls6DDuTRSqvwf9GT+tc
 aLcswDYszwfJC5RQ=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTDi4-0004RU-7B for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:44:12 +0000
Received: by mail-pl1-f178.google.com with SMTP id w2so12943804pld.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 30 Aug 2022 19:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=FRE/1ksuSSeACOgW8Zc4uX4HOs5MJlmYY/kqqHzt/Fk=;
 b=gnD04PAlmm/9p9VyMh4iQh//Y3UDpGQ+JHZj76GIO9PkV+jq+d2hsnNuLxyMlxwehK
 a00d2W8vZy7eHaD7ws6YeyLkb3ZZWBmqQ635ZRubW8KxicWRGVHt8uKeCxBDmhJfMLRN
 v0w+BR5Y7z+9nTzMchFin+u/20s+3cuQsQ31DabeDl7UkjT/iT8pJpPq98arR+u9YEuH
 Aar2XPa3My2knd3WlwQuRN5cMcZqQuFCdZpEBK2BDpPSxoVZCNEHSWnJOoFrG3cef4Ln
 mbFGUtHigNtNg+ZrgeBH8OzK1QUW6eM7sRsv7UNx3iBODSvs5vueSV7pbsNUXX7HNyWS
 HoKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=FRE/1ksuSSeACOgW8Zc4uX4HOs5MJlmYY/kqqHzt/Fk=;
 b=kU/sZnlfvv0KB+L/vp38L+e4Wmn5lqR2xtBl4nVqx23O9qFjbkR5wAXtB/IMgHeG3V
 qh0LVxUvADhrneeIsz8HPl4hJuUvHiylDaZZa1cpQiDs+KCieY8LTnLLW5xm2QhBai4i
 yNuDzqqY4ZPly7lVp/9DZKrRJfXq2wLKXeW9DhBxp1aNfWiXEbeFIoMbtGd+CwAg+G1l
 fbJ5SrHKg+3Ji/4rZ+RldwphvxscggXQKjgbPUzqPz2sDfnJl6oilcMJNxbfh1o+qUGB
 5KYtaFnowIra4ibYAl76F8M4KosaObpc/7QcQzO9SA658yaUeSu5kEQwFlMzzCj7mrFC
 DpXg==
X-Gm-Message-State: ACgBeo1/v8+KS8AQvonWMeHBu3LNFYI4nY+feL7qHYFP+MrBF1Fa/EAk
 u3vRk5GSIhSmbrUZT3/S4zE=
X-Google-Smtp-Source: AA6agR5sFi9yFt0P4zW1TS5NqH5+dEPmWaLX3IT8sXZwgYuCMT28UyAikwbOBFg/4VIq5hoDUrP2Xw==
X-Received: by 2002:a17:90b:2bca:b0:1fd:a06b:ef4f with SMTP id
 ru10-20020a17090b2bca00b001fda06bef4fmr1018294pjb.201.1661913842674; 
 Tue, 30 Aug 2022 19:44:02 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 f13-20020a170902f38d00b0016d1b70872asm10307294ple.134.2022.08.30.19.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Aug 2022 19:44:02 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
Date: Wed, 31 Aug 2022 10:43:32 +0800
Message-Id: <cover.1661875711.git.yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patchset fixes three bugs relative to Attribute in
 record:
 Patch 1 adds a sanity check to ensure that, attrs_offset field in first mft
 record loading from disk is within bounds. Patch 2 moves the ATTR_RECORD's
 bounds checking earlier, to avoid dereferencing ATTR_RECORD before checking
 this ATTR_RECORD is within bounds. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.178 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oTDi4-0004RU-7B
X-Mailman-Approved-At: Wed, 31 Aug 2022 08:19:41 +0000
Subject: [Linux-NTFS-Dev] [PATCH 0/3] ntfs: fix bugs about Attribute
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 18801353760@163.com, yin31149@gmail.com, akpm@linux-foundation.org,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

This patchset fixes three bugs relative to Attribute in record:

Patch 1 adds a sanity check to ensure that, attrs_offset field in
first mft record loading from disk is within bounds.

Patch 2 moves the ATTR_RECORD's bounds checking earlier, to avoid
dereferencing ATTR_RECORD before checking this ATTR_RECORD is within
bounds.

Patch 3 adds an overflow checking to avoid possible forever loop in
ntfs_attr_find().

Without patch 1 and patch 2, kernel may trigger following problem
reported by Syzkaller:
==================================================================
BUG: KASAN: use-after-free in ntfs_attr_find+0xc02/0xce0 fs/ntfs/attrib.c:597
Read of size 2 at addr ffff88807e352009 by task syz-executor153/3607

[...]
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:317 [inline]
 print_report.cold+0x2ba/0x719 mm/kasan/report.c:433
 kasan_report+0xb1/0x1e0 mm/kasan/report.c:495
 ntfs_attr_find+0xc02/0xce0 fs/ntfs/attrib.c:597
 ntfs_attr_lookup+0x1056/0x2070 fs/ntfs/attrib.c:1193
 ntfs_read_inode_mount+0x89a/0x2580 fs/ntfs/inode.c:1845
 ntfs_fill_super+0x1799/0x9320 fs/ntfs/super.c:2854
 mount_bdev+0x34d/0x410 fs/super.c:1400
 legacy_get_tree+0x105/0x220 fs/fs_context.c:610
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
 [...]
 </TASK>

The buggy address belongs to the physical page:
page:ffffea0001f8d400 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x7e350
head:ffffea0001f8d400 order:3 compound_mapcount:0 compound_pincount:0
flags: 0xfff00000010200(slab|head|node=0|zone=1|lastcpupid=0x7ff)
raw: 00fff00000010200 0000000000000000 dead000000000122 ffff888011842140
raw: 0000000000000000 0000000000040004 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
Memory state around the buggy address:
 ffff88807e351f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88807e351f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff88807e352000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                      ^
 ffff88807e352080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88807e352100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================

Although one of patch 1 or patch 2 can fix above bug,  we still
need both of them. Because patch 1 fixes the root cause, and
patch 2 not only fixes the direct cause, but also fixes the
potential out-of-bounds bug.

Hawkins Jiawei (3):
  ntfs: fix use-after-free in ntfs_attr_find()
  ntfs: fix out-of-bounds read in ntfs_attr_find()
  ntfs: check overflow when iterates ATTR_RECORDs

 fs/ntfs/attrib.c | 23 +++++++++++++++++++----
 fs/ntfs/inode.c  |  7 +++++++
 2 files changed, 26 insertions(+), 4 deletions(-)

-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
