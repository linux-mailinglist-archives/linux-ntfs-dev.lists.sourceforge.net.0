Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1EF5A8337
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 18:29:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTQal-0002aF-Vc;
	Wed, 31 Aug 2022 16:29:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTQHr-0002Gg-FQ
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 16:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tXwXRwt6PYJ+GZj5FMhmTN+Ui5iZgOEL1ZWov+LGMtM=; b=To+IGcU0b/c9KAuHpaPxRikOLk
 G47gf9avr+gVdOGwCK6d57yhFjBJ04Umd1UhE5IaIudkIu369Fg+/Nb6yZ79Ri4UZY6MAa4USU9Eo
 R6WQJzx5WzlDIzhZHY7p6scSMJspi/MRbOTvcxqVkY6eBKN8jXS+Y9NuA1+Rlug+V+80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tXwXRwt6PYJ+GZj5FMhmTN+Ui5iZgOEL1ZWov+LGMtM=; b=V
 vEaHdwNfBrzjvB6jgY//fFxzVcHp7VhNqk0tLyOTzUlfKkmZMebg1msPfc5QkXKSvSI6IN2KPHKkU
 s0w0pxfV8xO92MWR74Th+2JrjhTtyB39s3ofhYjVKEzMwVp+VCqW3YsGtRq5fE39pckM0nfSeoueb
 5iY7a954pQ92t9z8=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTQHk-008xzv-1d for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 16:09:51 +0000
Received: by mail-pg1-f178.google.com with SMTP id x80so10309763pgx.0
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Wed, 31 Aug 2022 09:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=tXwXRwt6PYJ+GZj5FMhmTN+Ui5iZgOEL1ZWov+LGMtM=;
 b=KJmUf5BXSPpg7KvB3wzjzdvm30RxANauiOvOfioDF4dWwZXgD1w6ty9qbgxsbkuiSV
 ioDrN971uusnz/IzGHkRw0j9+d2xJG/S5xlFqNN+fzlpnlNNf+/LDaCh3E7InWHpmIfM
 sPj73+XkyCuEOrrfw+LXRoVT1XfXIRtgzLIQQ3Gc/2PGwJ8u8hZpU0TJLYOYjMMvx/dC
 9PssJRATf+ni9dctqXVT8PlZ+9ee+TWEXokZ3rlEKiRM3HghbMsX1HTJq33D/0kolG6u
 mFiXnzGjyMJvFizMZhb28lI1/s/D1Sq2tXT5hOVYG0DgLLHnilfHHeiw0sRXa4xW3ypu
 h1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=tXwXRwt6PYJ+GZj5FMhmTN+Ui5iZgOEL1ZWov+LGMtM=;
 b=yze7DUenijSbUGLbeEgdzP0wGEcjMVU5k6G1ACEFSoxtN1EdP7h0FOLnuY3cO1uTb7
 Xo1xRDM+mbtGpSg3UPpGLrNNuwrlmqlUrDMClS49N7JQdxK33awedsbcjdROXJthcNFs
 pUVYrl77cyTNdtPxl6iAHh2Za/+hqxWrh6i2QBksAdpR9GzY0GIvRhxULpOGI3wprV+4
 jLbZl+JQoXHRtQhgnxgZulYYSuC4Vet5+tXB2u4j2Ie0KF2apVEwsYGzFBj+dIqgLh9w
 ibKZfIX181tHhBuhDH0gujy7lAhHOw0A+9NhFpCtfWkOmsC98Xth83wrelmv8OhapUWW
 jvPg==
X-Gm-Message-State: ACgBeo2oCTF9eFTN56FfotJJh9YDMHIk2UzdyCaL+seA66KgzbYr7g1H
 yIwvxSpf2ONjxlHKOEIDmAk=
X-Google-Smtp-Source: AA6agR4XllLlN3Pr/3tNp6mbc3+6FTe5x6+FEl5hhaZl7XkbH2mxdfYcpirfFSpbvtm0cJyA5XkEGw==
X-Received: by 2002:a63:8948:0:b0:430:3da6:7d45 with SMTP id
 v69-20020a638948000000b004303da67d45mr2055087pgd.109.1661962182401; 
 Wed, 31 Aug 2022 09:09:42 -0700 (PDT)
Received: from localhost ([36.112.195.70]) by smtp.gmail.com with ESMTPSA id
 u71-20020a62794a000000b005368341381fsm11566083pfc.106.2022.08.31.09.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Aug 2022 09:09:42 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
Date: Thu,  1 Sep 2022 00:09:32 +0800
Message-Id: <20220831160935.3409-1-yin31149@gmail.com>
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.178 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oTQHk-008xzv-1d
X-Mailman-Approved-At: Wed, 31 Aug 2022 16:29:26 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2 0/3] ntfs: fix bugs about Attribute
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

v1->v2:
 * Refactor check on Attribute Record Header
suggested by Dan Carpenter.
 * Add check bounds on ATTR_RECORD's length suggested
by Dan Carpenter.

Hawkins Jiawei (3):
  ntfs: fix use-after-free in ntfs_attr_find()
  ntfs: fix out-of-bounds read in ntfs_attr_find()
  ntfs: check overflow when iterates ATTR_RECORDs

 fs/ntfs/attrib.c | 28 ++++++++++++++++++++++++----
 fs/ntfs/inode.c  |  7 +++++++
 2 files changed, 31 insertions(+), 4 deletions(-)

-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
