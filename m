Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 606755A78D4
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 10:19:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTIwp-0001Eq-LD;
	Wed, 31 Aug 2022 08:19:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTDjC-0008Vy-M2
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CXM0BCPgoVC12DmYCojWwdFvUytvEBCLNePtQadj2oc=; b=ZS+8BUk4LB7zexuCZXZD8wXC4l
 3pCbgGPUmE/reLNFk3/4z9D3Wat9eyi/qQddy/CSiYbMTYK9syfvVFPn9a/udGP7XzG5PIsUrXGj9
 +jm/1Cw75OH5FSUB0pNi8BaTyFfzTfdN2wAy8SXIa9asVA+tHS82rSGN/ZZJyMWTcK+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CXM0BCPgoVC12DmYCojWwdFvUytvEBCLNePtQadj2oc=; b=f4aay4ElBOy9T5XP6MuIy5FJxF
 6+2IONWuMlXSbhTPgDil/cv25+slqELu6a6UiyJ5b9/EVi6g4XzsX05/GHFFOHg/VU2Td60LwD0qv
 wtWDcpyOOlHrIncalOTHefPlErBpd34xz4n3/owANzYIiwQ6HbwwlVp/mnSGqtSvzy4I=;
Received: from mail-pg1-f176.google.com ([209.85.215.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTDjB-0004U5-Vk for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:45:18 +0000
Received: by mail-pg1-f176.google.com with SMTP id r22so12352103pgm.5
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 30 Aug 2022 19:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=CXM0BCPgoVC12DmYCojWwdFvUytvEBCLNePtQadj2oc=;
 b=RVrp23ebjjGVegEPHJqgy0ff2qLxN53Gg1HWF5r/YiVv77Kgq4GIhwO9kVn2Wm/P0u
 avkIr1rT9ecWhiSnp0wCBNBj9pvXAeyRloR3sz7I35GpBGLXoxWRbvoQbgsES1wfgW0L
 hJD3ddwoHspu4Fls+KGySLdVid65hq0HsIPmOsE2NIAnaSOvdxbPO4n9VA70UT4VocfU
 gW+rmTe6jK5+DhaXHRtclDYpNfuYu6MdL/KjDmH+Tp+FnTgxFm5ipbECtqTTb9KwURKb
 zO8x3wsUyfA0CyAh84GYnl/5j5WggZZHMHR3ATmuT4MkyXoyPptGhT/E3MbyWloeBH7b
 4AZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=CXM0BCPgoVC12DmYCojWwdFvUytvEBCLNePtQadj2oc=;
 b=hQJ5903Q7BuX5hVbom2WtRNxwY3+R7iiM8RsAGmkEuEsapL7nk8/y2B+uOPILshKu0
 s11qCtWkchbieCJxmtWpM3Es/rakCxUwZWmwkvzs8rxgTpi9sEznQGyVAG0sYx7F5AFD
 HREYaCr6eT439rjsAj4uJZP2sWBAdnZgp/fQsgAvR5PgG8pIUf7i8P1LxEYja3Hzp6AP
 k5bWMdHK02g14RwVW2uL84tDdBZx+TfeMUiEUMXWazqFXnQHwseWWL/NYp2NJb9bNDPC
 w0UbPVghrgqClr7aEvUqCa7NtvvQgDtSDmlahebvgs/MM2HDPvRjXFUvsEhMXwkcdnke
 Wo8A==
X-Gm-Message-State: ACgBeo1ycgk2yDKDbrxtRajRm0YVbfZKAgIF0Pt6DHZ9t7Kw4nmRjWDC
 E8wRsNk8IZfL73DlRUEhAnI=
X-Google-Smtp-Source: AA6agR6x/Yx9xBLRaRcgkEuApEi/oYC26IR8aGl/VlV9rHwPX9GFwlqYUbc+Eywr/HgKCZGRAEdjMw==
X-Received: by 2002:a05:6a00:1827:b0:538:3d5f:fd3 with SMTP id
 y39-20020a056a00182700b005383d5f0fd3mr12463402pfa.28.1661913912405; 
 Tue, 30 Aug 2022 19:45:12 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 b5-20020a1709027e0500b0016c1b178628sm10310035plm.269.2022.08.30.19.45.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Aug 2022 19:45:12 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 Anton Altaparmakov <anton@tuxera.com>
Date: Wed, 31 Aug 2022 10:43:36 +0800
Message-Id: <8a43c95b068e4ca404e864d64a2a44d357754e5c.1661875711.git.yin31149@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1661875711.git.yin31149@gmail.com>
References: <cover.1661875711.git.yin31149@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Kernel will iterates over ATTR_RECORDs in mft record in
 ntfs_attr_find().
 To ensure access on these ATTR_RECORDs are within bounds, kernel will do
 some checking during iteration. The problem is that during checking whether
 ATTR_RECORD's name is within bounds, kernel will dereferences the ATTR_RECORD
 name_offset field, before checking this ATTR_RECORD strcture is within bounds.
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.176 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTDjB-0004U5-Vk
X-Mailman-Approved-At: Wed, 31 Aug 2022 08:19:41 +0000
Subject: [Linux-NTFS-Dev] [PATCH 2/3] ntfs: fix out-of-bounds read in
 ntfs_attr_find()
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Kernel will iterates over ATTR_RECORDs in mft record in ntfs_attr_find().
To ensure access on these ATTR_RECORDs are within bounds, kernel will
do some checking during iteration.

The problem is that during checking whether ATTR_RECORD's name is within
bounds, kernel will dereferences the ATTR_RECORD name_offset field,
before checking this ATTR_RECORD strcture is within bounds. This problem
may result out-of-bounds read in ntfs_attr_find(), reported by
Syzkaller:

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

This patch solves it by moving the ATTR_RECORD strcture's bounds
checking earlier, then checking whether ATTR_RECORD's name
is within bounds. What's more, this patch also add some comments
to improve its maintainability.

Reported-and-tested-by: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
Signed-off-by: chenxiaosong (A) <chenxiaosong2@huawei.com> 
Link: https://lore.kernel.org/all/1636796c-c85e-7f47-e96f-e074fee3c7d3@huawei.com/
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com> 
Link: https://groups.google.com/g/syzkaller-bugs/c/t_XdeKPGTR4/m/LECAuIGcBgAJ
Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
---
 fs/ntfs/attrib.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 52615e6090e1..904734e34507 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -594,11 +594,23 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 	for (;;	a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
 		u8 *mrec_end = (u8 *)ctx->mrec +
 		               le32_to_cpu(ctx->mrec->bytes_allocated);
-		u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
-			       a->name_length * sizeof(ntfschar);
-		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
-		    name_end > mrec_end)
+		u8 *name_end, *arec_head_end;
+
+		/* check for wrap around */
+		if ((u8 *)a < (u8 *)ctx->mrec)
+			break;
+
+		/* check whether Attribute Record Header is within bounds */
+		arec_head_end = (u8 *)a + sizeof(ATTR_RECORD);
+		if (arec_head_end < (u8 *)a || arec_head_end > mrec_end)
 			break;
+
+		/* check whether ATTR_RECORD's name is within bounds */
+		name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
+			   a->name_length * sizeof(ntfschar);
+		if (name_end > mrec_end)
+			break;
+
 		ctx->attr = a;
 		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
 				a->type == AT_END))
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
