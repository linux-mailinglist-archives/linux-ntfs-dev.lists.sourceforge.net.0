Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 991AC58E1E6
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Aug 2022 23:39:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oLWwh-0005HD-UL; Tue, 09 Aug 2022 21:39:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1oIagd-0000lL-LS
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 01 Aug 2022 19:02:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diXTnhtv7kIYQzhoCMk837E1GJlDl1xHu1N4dGofgYE=; b=eq1pRTXb/XAeNvcBPDoE4Olork
 pQsyEkxBzjSNfzYr3wNeEzeP0woXlpwu3ouVqpnInSKMPX2xT1Oqi5TxxcQ+lYnNXhOxQXOS67pHw
 qBLqpFkfVUhDM/RDRhwHL9VUMo6iepPA6VX+c1XQG6RRPYG0/jdH+Ktu7f+o5t3fSoWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=diXTnhtv7kIYQzhoCMk837E1GJlDl1xHu1N4dGofgYE=; b=Zmcv1i0Hf5s7Lp3YA9QAobkOpk
 8xkkY6c6zcQyi2wa51HaECFrjoaD3HA9BZmq5r3MyoN2EOi896WbOr/rSgPQ/yjDcqhLmfkTtNfXl
 e1w7B0aGjh3ixnWxcBAosVgMRuWSElfXFojwpmIP/+AVmBWErrGz8wXMj+uCE/t3vUNk=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oIagZ-0005Fs-Az
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 01 Aug 2022 19:02:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AD3FAB81626;
 Mon,  1 Aug 2022 19:02:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 473B6C433D7;
 Mon,  1 Aug 2022 19:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659380548;
 bh=jAx86eRZefug5uzEX5ItvWoArIIrQLRAQIDYGuhfrqo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M6eqm8pIUAqAIxoXl96LRBmfsi43rz8zcCWmZFkQVpLYNZhizE9AuwDORncj6uhHr
 vZjYlB+y/LPT2zJ4R0/hO/c7NT0YZ7rbFAwMY+FKgGfR25ernXSWLuFNMootzMuBLU
 G6V6dEULymXEJ+NgKgb5rmlnc78znJm/oecyOzR1g8CB6AwYhSxIdCaijK95Ko+iRM
 zuqkMXx35rHFcapulPntciGr8iKj1JDKG1dA7/kpRVYicJp2mT5SeiMvB77eT0quvs
 Vt3SvzSo1a5S+W/tKSfWkFhO+nDxvW7/k63p0RQxVdOrawmzcvKLrXXzZLj4UXIeak
 4szV93nA0XLgg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  1 Aug 2022 15:02:15 -0400
Message-Id: <20220801190222.3818378-3-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220801190222.3818378-1-sashal@kernel.org>
References: <20220801190222.3818378-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: ChenXiaoSong <chenxiaosong2@huawei.com> [ Upstream
 commit
 38c9c22a85aeed28d0831f230136e9cf6fa2ed44 ] Syzkaller reported use-after-free
 bug as follows: 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oIagZ-0005Fs-Az
X-Mailman-Approved-At: Tue, 09 Aug 2022 21:39:25 +0000
Subject: [Linux-NTFS-Dev] [PATCH AUTOSEL 5.18 03/10] ntfs: fix
 use-after-free in ntfs_ucsncmp()
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
Cc: Sasha Levin <sashal@kernel.org>, Zhang Yi <yi.zhang@huawei.com>,
 linux-ntfs-dev@lists.sourceforge.net, ChenXiaoSong <chenxiaosong2@huawei.com>,
 Hawkins Jiawei <yin31149@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Zhang Xiaoxu <zhangxiaoxu5@huawei.com>,
 Yongqiang Liu <liuyongqiang13@huawei.com>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

From: ChenXiaoSong <chenxiaosong2@huawei.com>

[ Upstream commit 38c9c22a85aeed28d0831f230136e9cf6fa2ed44 ]

Syzkaller reported use-after-free bug as follows:

==================================================================
BUG: KASAN: use-after-free in ntfs_ucsncmp+0x123/0x130
Read of size 2 at addr ffff8880751acee8 by task a.out/879

CPU: 7 PID: 879 Comm: a.out Not tainted 5.19.0-rc4-next-20220630-00001-gcc5218c8bd2c-dirty #7
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.16.0-0-gd239552ce722-prebuilt.qemu.org 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0x1c0/0x2b0
 print_address_description.constprop.0.cold+0xd4/0x484
 print_report.cold+0x55/0x232
 kasan_report+0xbf/0xf0
 ntfs_ucsncmp+0x123/0x130
 ntfs_are_names_equal.cold+0x2b/0x41
 ntfs_attr_find+0x43b/0xb90
 ntfs_attr_lookup+0x16d/0x1e0
 ntfs_read_locked_attr_inode+0x4aa/0x2360
 ntfs_attr_iget+0x1af/0x220
 ntfs_read_locked_inode+0x246c/0x5120
 ntfs_iget+0x132/0x180
 load_system_files+0x1cc6/0x3480
 ntfs_fill_super+0xa66/0x1cf0
 mount_bdev+0x38d/0x460
 legacy_get_tree+0x10d/0x220
 vfs_get_tree+0x93/0x300
 do_new_mount+0x2da/0x6d0
 path_mount+0x496/0x19d0
 __x64_sys_mount+0x284/0x300
 do_syscall_64+0x3b/0xc0
 entry_SYSCALL_64_after_hwframe+0x46/0xb0
RIP: 0033:0x7f3f2118d9ea
Code: 48 8b 0d a9 f4 0b 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 76 f4 0b 00 f7 d8 64 89 01 48
RSP: 002b:00007ffc269deac8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f3f2118d9ea
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffc269dec00
RBP: 00007ffc269dec80 R08: 00007ffc269deb00 R09: 00007ffc269dec44
R10: 0000000000000000 R11: 0000000000000202 R12: 000055f81ab1d220
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>

The buggy address belongs to the physical page:
page:0000000085430378 refcount:1 mapcount:1 mapping:0000000000000000 index:0x555c6a81d pfn:0x751ac
memcg:ffff888101f7e180
anon flags: 0xfffffc00a0014(uptodate|lru|mappedtodisk|swapbacked|node=0|zone=1|lastcpupid=0x1fffff)
raw: 000fffffc00a0014 ffffea0001bf2988 ffffea0001de2448 ffff88801712e201
raw: 0000000555c6a81d 0000000000000000 0000000100000000 ffff888101f7e180
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff8880751acd80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8880751ace00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff8880751ace80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                                                          ^
 ffff8880751acf00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8880751acf80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
==================================================================

The reason is that struct ATTR_RECORD->name_offset is 6485, end address of
name string is out of bounds.

Fix this by adding sanity check on end address of attribute name string.

[akpm@linux-foundation.org: coding-style cleanups]
[chenxiaosong2@huawei.com: cleanup suggested by Hawkins Jiawei]
  Link: https://lkml.kernel.org/r/20220709064511.3304299-1-chenxiaosong2@huawei.com
Link: https://lkml.kernel.org/r/20220707105329.4020708-1-chenxiaosong2@huawei.com
Signed-off-by: ChenXiaoSong <chenxiaosong2@huawei.com>
Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
Cc: Anton Altaparmakov <anton@tuxera.com>
Cc: ChenXiaoSong <chenxiaosong2@huawei.com>
Cc: Yongqiang Liu <liuyongqiang13@huawei.com>
Cc: Zhang Yi <yi.zhang@huawei.com>
Cc: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/ntfs/attrib.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 2911c04a33e0..080333bda45e 100644
--- a/fs/ntfs/attrib.c
+++ b/fs/ntfs/attrib.c
@@ -592,8 +592,12 @@ static int ntfs_attr_find(const ATTR_TYPE type, const ntfschar *name,
 		a = (ATTR_RECORD*)((u8*)ctx->attr +
 				le32_to_cpu(ctx->attr->length));
 	for (;;	a = (ATTR_RECORD*)((u8*)a + le32_to_cpu(a->length))) {
-		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > (u8*)ctx->mrec +
-				le32_to_cpu(ctx->mrec->bytes_allocated))
+		u8 *mrec_end = (u8 *)ctx->mrec +
+		               le32_to_cpu(ctx->mrec->bytes_allocated);
+		u8 *name_end = (u8 *)a + le16_to_cpu(a->name_offset) +
+			       a->name_length * sizeof(ntfschar);
+		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
+		    name_end > mrec_end)
 			break;
 		ctx->attr = a;
 		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
-- 
2.35.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
