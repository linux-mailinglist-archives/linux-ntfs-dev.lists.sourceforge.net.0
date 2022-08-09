Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 801C158E1E2
	for <lists+linux-ntfs-dev@lfdr.de>; Tue,  9 Aug 2022 23:39:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oLWwi-0005I1-Fk; Tue, 09 Aug 2022 21:39:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chenxiaosong2@huawei.com>) id 1oLIud-0000we-DT
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 09 Aug 2022 06:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XgoeK0YdYuOD38bUahXB2RJrHEpybkxR/1WB92Vu7JM=; b=coRB/pd8nTVmS2hggILskVoQpO
 DQZcAcH+9wFupFuzCE0L0KG8hFfeQ2lUphzaollIe/mC4G8bFG3E1UX4viPakSSgaRUypjBY1lfXt
 PWZdvumIdRq6DgrF/31clkWfgdd6z9MJSJqaHbx5zhzinsHaP6Dsy+kYMVfngk8/isBo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XgoeK0YdYuOD38bUahXB2RJrHEpybkxR/1WB92Vu7JM=; b=U
 raS1TpMJwtOcOOcdrnbKdxS2BG/3hNNsLD1t2BUOp9itTnQGjol0snHHKfKpmyHoDgB0VnPuGDZu4
 L/j6pn5Xw6EU3x8AdDXugx2PmF9YfC7DwShByf0I904NIkyMdCw3d6ljC2jSn0wrQU0bRMi5mqyIc
 FQyaO6TOyfBXS2v8=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oLIuZ-00041p-5v
 for linux-ntfs-dev@lists.sourceforge.net; Tue, 09 Aug 2022 06:40:21 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.53])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4M23Jr5dkKzlVj2;
 Tue,  9 Aug 2022 14:37:16 +0800 (CST)
Received: from kwepemm600015.china.huawei.com (7.193.23.52) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 9 Aug 2022 14:40:08 +0800
Received: from huawei.com (10.175.101.6) by kwepemm600015.china.huawei.com
 (7.193.23.52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 9 Aug
 2022 14:40:07 +0800
To: <anton@tuxera.com>
Date: Tue, 9 Aug 2022 14:47:30 +0800
Message-ID: <20220809064730.2316892-1-chenxiaosong2@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
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
 Content preview:  Syzkaller reported BUG_ON as follows: [ cut here ] kernel
 BUG at fs/ntfs/dir.c:86! invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI CPU:
 3 PID: 758 Comm: a.out Not tainted 5.19.0-next-20220808 #5 Hardware name:
 QEMU [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oLIuZ-00041p-5v
X-Mailman-Approved-At: Tue, 09 Aug 2022 21:39:25 +0000
Subject: [Linux-NTFS-Dev] [PATCH] ntfs: fix BUG_ON in
 ntfs_lookup_inode_by_name()
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
Cc: linux-ntfs-dev@lists.sourceforge.net, chenxiaosong2@huawei.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Syzkaller reported BUG_ON as follows:

------------[ cut here ]------------
kernel BUG at fs/ntfs/dir.c:86!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 3 PID: 758 Comm: a.out Not tainted 5.19.0-next-20220808 #5
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.16.0-0-gd239552ce722-prebuilt.qemu.org 04/01/2014
RIP: 0010:ntfs_lookup_inode_by_name+0xd11/0x2d10
Code: ff e9 b9 01 00 00 e8 1e fe d6 fe 48 8b 7d 98 49 8d 5d 07 e8 91 85 29 ff 48 c7 45 98 00 00 00 00 e9 5a fb ff ff e8 ff fd d6 fe <0f> 0b e8 f8 fd d6 fe 0f 0b e8 f1 fd d6 fe 48 8b b5 50 ff ff ff 4c
RSP: 0018:ffff888079607978 EFLAGS: 00010293
RAX: 0000000000000000 RBX: 0000000000008000 RCX: 0000000000000000
RDX: ffff88807cf10000 RSI: ffffffff82a4a081 RDI: 0000000000000003
RBP: ffff888079607a70 R08: 0000000000000001 R09: ffff88807a6d01d7
R10: ffffed100f4da03a R11: 0000000000000000 R12: ffff88800f0fb110
R13: ffff88800f0ee000 R14: ffff88800f0fb000 R15: 0000000000000001
FS:  00007f33b63c7540(0000) GS:ffff888108580000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f33b635c090 CR3: 000000000f39e005 CR4: 0000000000770ee0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 <TASK>
 load_system_files+0x1f7f/0x3620
 ntfs_fill_super+0xa01/0x1be0
 mount_bdev+0x36a/0x440
 ntfs_mount+0x3a/0x50
 legacy_get_tree+0xfb/0x210
 vfs_get_tree+0x8f/0x2f0
 do_new_mount+0x30a/0x760
 path_mount+0x4de/0x1880
 __x64_sys_mount+0x2b3/0x340
 do_syscall_64+0x38/0x90
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f33b62ff9ea
Code: 48 8b 0d a9 f4 0b 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 76 f4 0b 00 f7 d8 64 89 01 48
RSP: 002b:00007ffd0c471aa8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f33b62ff9ea
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffd0c471be0
RBP: 00007ffd0c471c60 R08: 00007ffd0c471ae0 R09: 00007ffd0c471c24
R10: 0000000000000000 R11: 0000000000000202 R12: 000055bac5afc160
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---

Fix this by adding sanity check on extended system files' directory inode
to ensure that it is directory, just like ntfs_extend_init() when mounting
ntfs3.

Signed-off-by: ChenXiaoSong <chenxiaosong2@huawei.com>
---
 fs/ntfs/super.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 5ae8de09b271..001f4e053c85 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -2092,7 +2092,8 @@ static bool load_system_files(ntfs_volume *vol)
 	// TODO: Initialize security.
 	/* Get the extended system files' directory inode. */
 	vol->extend_ino = ntfs_iget(sb, FILE_Extend);
-	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino)) {
+	if (IS_ERR(vol->extend_ino) || is_bad_inode(vol->extend_ino) ||
+	    !S_ISDIR(vol->extend_ino->i_mode)) {
 		if (!IS_ERR(vol->extend_ino))
 			iput(vol->extend_ino);
 		ntfs_error(sb, "Failed to load $Extend.");
-- 
2.31.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
