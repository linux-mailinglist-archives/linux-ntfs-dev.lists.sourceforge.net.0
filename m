Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4219756A0C1
	for <lists+linux-ntfs-dev@lfdr.de>; Thu,  7 Jul 2022 13:03:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o9PI4-0008DX-Ar; Thu, 07 Jul 2022 11:03:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chenxiaosong2@huawei.com>) id 1o9Owk-0008QE-I8
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 07 Jul 2022 10:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FqQhAKTv5WxkkbLLgaGPbZxxqac9TBH+HEKLGJYIyFQ=; b=Q8a/sdR8hbWicdMDXmO5kNCGSF
 QQWkiP+lI1/fR3ekNSVYDNXG/+hoPfmgVVSkgaa16uy3LQKRk/a8mC8ycvtHVdPK3sLSXv38hGCAo
 joaJTzmomomDKhOTxlRyxLC+fcctAPLnQVaEsmLru4xfnShU+Jtn7J68D6Wr5oYogEDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FqQhAKTv5WxkkbLLgaGPbZxxqac9TBH+HEKLGJYIyFQ=; b=L
 ksJvz4xm/M5r55Ltw8QWOs0EzQOlP352ckZBnIrxaZwoycI1rWA3ooiDtXaWFDJ06fYVanQyvHw/6
 U/KlISHT2s3czJE6Wx2NrFEib60uXrsjrpexwyFdnjJ78YVPtkNuZq4GYg3XnDTf9Yer+UJzX6ldG
 I7X+xf2Qk+Jb4l/E=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9Owh-009kG9-Mq
 for linux-ntfs-dev@lists.sourceforge.net; Thu, 07 Jul 2022 10:41:23 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4LdtFn0QyMzkWvL;
 Thu,  7 Jul 2022 18:39:41 +0800 (CST)
Received: from kwepemm600015.china.huawei.com (7.193.23.52) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Thu, 7 Jul 2022 18:41:09 +0800
Received: from huawei.com (10.175.127.227) by kwepemm600015.china.huawei.com
 (7.193.23.52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Thu, 7 Jul
 2022 18:41:08 +0800
To: <anton@tuxera.com>, <akpm@linux-foundation.org>
Date: Thu, 7 Jul 2022 18:53:29 +0800
Message-ID: <20220707105329.4020708-1-chenxiaosong2@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemm600015.china.huawei.com (7.193.23.52)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported use-after-free bug as follows:
 ==================================================================
 BUG: KASAN: use-after-free in ntfs_ucsncmp+0x123/0x130 Read of size 2 at
 addr ffff8880751acee8 by task a.out/879 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o9Owh-009kG9-Mq
X-Mailman-Approved-At: Thu, 07 Jul 2022 11:03:22 +0000
Subject: [Linux-NTFS-Dev] [PATCH v2] ntfs: fix use-after-free in
 ntfs_ucsncmp()
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
From: ChenXiaoSong via Linux-NTFS-Dev <linux-ntfs-dev@lists.sourceforge.net>
Reply-To: ChenXiaoSong <chenxiaosong2@huawei.com>
Cc: yi.zhang@huawei.com, linux-ntfs-dev@lists.sourceforge.net,
 chenxiaosong2@huawei.com, linux-kernel@vger.kernel.org,
 zhangxiaoxu5@huawei.com, liuyongqiang13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

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

Fix this by adding sanity check on end address of attibute name string.

Signed-off-by: ChenXiaoSong <chenxiaosong2@huawei.com>
---
v1 -> v2: remove redundant statement

 fs/ntfs/attrib.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/ntfs/attrib.c b/fs/ntfs/attrib.c
index 4de597a83b88..9ab8766872d2 100644
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
+		               a->name_length;
+		if ((u8*)a < (u8*)ctx->mrec || (u8*)a > mrec_end ||
+		    name_end > mrec_end)
 			break;
 		ctx->attr = a;
 		if (unlikely(le32_to_cpu(a->type) > le32_to_cpu(type) ||
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
