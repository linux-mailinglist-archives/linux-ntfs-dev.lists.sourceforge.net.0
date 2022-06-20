Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3F3551D71
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 20 Jun 2022 16:06:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1o3I3G-00085x-44; Mon, 20 Jun 2022 14:06:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <threeearcat@gmail.com>) id 1o3Hsr-0006lc-V2
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jun 2022 13:56:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K6FQC8omVUUJgdQeDjPAx04ITINqrAocGed+85leMdE=; b=iWQfseMKmQX7PYPt1IjhU8VgcN
 LoY1fIpDWGuDwJAYlriDpsSgIPZW6HIQZ0OOUu+ghMM0iSzde5wzf0ObLzTDR5TxTNFyQY/sZLuCG
 7SUBs+eXW3pZYViwQaOSq55jIiN7pViY0tRnQJp+ZfcEcGiVdMcgbtwLOoA2pmh9u3HE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K6FQC8omVUUJgdQeDjPAx04ITINqrAocGed+85leMdE=; b=G
 s9mZAcm+9JcKHHIX7RGeR5mCZ1Pszk7jsL3NcPb0bk8Jj1o+M4+2hsKewm6ATjk6B11ZGopTnJlx7
 0c1CsmUnacf6yWerA61RfwkMQN9d6iNCj9bfX0CoMW4VYc9S0MPE1LmYo5e2fHlQeN35/Wx8dSFiZ
 i2G9PkLs2G9hDN0M=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o3Hsq-008Lhi-Eq
 for linux-ntfs-dev@lists.sourceforge.net; Mon, 20 Jun 2022 13:56:06 +0000
Received: by mail-pf1-f169.google.com with SMTP id bo5so10296480pfb.4
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Mon, 20 Jun 2022 06:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=K6FQC8omVUUJgdQeDjPAx04ITINqrAocGed+85leMdE=;
 b=lqPL75jjn+YjeGwg+BCnw3Ea5Cg43fPUnrf1wNFV2wKGKv0WcR+THD55wwwhDjh7Lv
 0VLLQEt8jn3cEhVTqcpyKxTO/K8d3w3X4JYetk005X09AStsgXhNFja1899EOWx/5+FX
 BXiSQEtzUATaMEwjDp5C8EQ1ISFZgnhSNjes60EFkXdF4kOsB6qsVqR8+4j0eoy0B7UH
 g73B/McNr9qn+lTyC2km2cmA0SN1yZZDJyrid+pH5ZZqmf8pc79G5LPG1wWkgl9QL79Q
 PXwBxba+mPY2F9R3vq8csNAVrHtbqUjwwVEX9LFiy3bR1UxjnK8H6/pSsvDJu2KBhfYh
 noVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=K6FQC8omVUUJgdQeDjPAx04ITINqrAocGed+85leMdE=;
 b=JlislNFtRB2YuYUIwSuPTu5dkgFIHods6eEsEfg2ORRxnmIIllQ0eT7rTHkzMJPzgg
 2SPMO1SRIzBHlUydu1G9FtteviRvlLNZd2g3bhKGRa7ptdoJoQTg1jFC6gNV/gTlb5nz
 dgCYFoXPVPH714CvjQrPMx0Xnqu9skCN7T8PCV59cQnnWetN9HM7JX3i5yTd4rT51lOe
 QpAQkpwLFTNgXq+4gAwXa48o7gsMmG8IOwEMw0ZLqmd40vyrifyeqm0W0pLbx0EJAReD
 Q0EjhUmK/vzoiNIRN8zgzEJN5KQGPQSdS/ZSsJUFSuVHtI5iwQKNvW3qAa+2jq6jKKN9
 t16w==
X-Gm-Message-State: AJIora8NrGwJlhOPkhPZrtBzI/cuD4WEf5IAkRqvJy+YCRFWL+Bg2fc4
 iaQ0wQ3bulLQdf81mz+08SA=
X-Google-Smtp-Source: AGRyM1s3IVq9oe7+aWciFBLq4n0mmnwBVb5yTPk6iE5w2ojwapjCoWt+rsiKecxWlKsHk0X2mqCdoA==
X-Received: by 2002:a63:28b:0:b0:401:b84d:780f with SMTP id
 133-20020a63028b000000b00401b84d780fmr22016953pgc.187.1655733358689; 
 Mon, 20 Jun 2022 06:55:58 -0700 (PDT)
Received: from archdragon (dragonet.kaist.ac.kr. [143.248.133.220])
 by smtp.gmail.com with ESMTPSA id
 u23-20020a1709026e1700b001620960f1dfsm8761907plk.198.2022.06.20.06.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jun 2022 06:55:57 -0700 (PDT)
Date: Mon, 20 Jun 2022 22:55:53 +0900
From: "Dae R. Jeong" <threeearcat@gmail.com>
To: anton@tuxera.com, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Message-ID: <YrB8aSIPHUyapYw2@archdragon>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 We observed a crash "kernel BUG in ntfs_read_block" during
 fuzzing. Unfortunately, we have not found a reproducer for it yet. We will
 inform you if we have any update on this crash. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [threeearcat[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o3Hsq-008Lhi-Eq
X-Mailman-Approved-At: Mon, 20 Jun 2022 14:06:49 +0000
Subject: [Linux-NTFS-Dev] kernel BUG in ntfs_read_block
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

Hi,

We observed a crash "kernel BUG in ntfs_read_block" during fuzzing.

Unfortunately, we have not found a reproducer for it yet.  We will
inform you if we have any update on this crash.

Detailed crash information is as follows:
-----------------------------------------

- Kernel commit:
b13baccc3850ca

- Crash report:

loop0: detected capacity change from 0 to 67
------------[ cut here ]------------
kernel BUG at fs/ntfs/aops.c:186!
invalid opcode: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 24003 Comm: syz-executor.0 Not tainted 5.19.0-rc2-31838-gef9c98f9637f #14
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.14.0-0-g155821a1990b-prebuilt.qemu.org 04/01/2014
RIP: 0010:ntfs_read_block+0x23d2/0x2760 fs/ntfs/aops.c:186
Code: 01 00 00 e8 30 60 59 fe e9 f8 02 00 00 e8 26 60 59 fe 48 8b 7c 24 08 48 c7 c6 00 c0 4e 8e e8 75 a3 9d fe 0f 0b e8 0e 60 59 fe <0f> 0b e8 07 60 59 fe 48 8b 5c 24 08 48 89 df be 08 00 00 00 e8 85
RSP: 0018:ffffc90007787560 EFLAGS: 00010283
RAX: ffffffff832c0142 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc900033c1000 RSI: 00000000000024d9 RDI: 00000000000024da
RBP: ffffc90007787708 R08: ffffffff832bdf85 R09: ffffed102bde463b
R10: ffffed102bde463b R11: 0000000000000000 R12: dffffc0000000000
R13: ffffffff953b7bf0 R14: ffff88815ef234a0 R15: ffff888145505000
FS:  00007fbf10dd4700(0000) GS:ffff88823bc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f827b3b5000 CR3: 0000000020368000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 do_read_cache_folio+0x420/0x8e0 mm/filemap.c:3515
 do_read_cache_page mm/filemap.c:3593 [inline]
 read_cache_page+0x6b/0x370 mm/filemap.c:3602
 read_mapping_page include/linux/pagemap.h:759 [inline]
 ntfs_map_page+0x24/0x460 fs/ntfs3/ntfs_fs.h:897
 map_mft_record_page fs/ntfs/mft.c:73 [inline]
 map_mft_record+0x230/0x8f0 fs/ntfs/mft.c:156
 ntfs_read_locked_inode+0x1f5/0x75b0 fs/ntfs/inode.c:550
 ntfs_read_inode_mount+0x133e/0x33d0 fs/ntfs/inode.c:2091
 ntfs_fill_super+0x2c59/0xc540 fs/ntfs/super.c:2854
 mount_bdev+0x32a/0x520 fs/super.c:1367
 legacy_get_tree+0x136/0x270 fs/fs_context.c:610
 vfs_get_tree+0xc2/0x430 fs/super.c:1497
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x2217/0x3e50 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount+0x359/0x430 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:51 [inline]
 do_syscall_64+0x4e/0xa0 arch/x86/entry/common.c:82
 entry_SYSCALL_64_after_hwframe+0x46/0xb0
RIP: 0033:0x47a6da
Code: 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fbf10dd3a08 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000200 RCX: 000000000047a6da
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fbf10dd3a60
RBP: 00007fbf10dd3aa0 R08: 00007fbf10dd3aa0 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000202 R12: 0000000020000000
R13: 0000000020000100 R14: 00007fbf10dd3a60 R15: 0000000020000040
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:ntfs_read_block+0x23d2/0x2760 fs/ntfs/aops.c:186
Code: 01 00 00 e8 30 60 59 fe e9 f8 02 00 00 e8 26 60 59 fe 48 8b 7c 24 08 48 c7 c6 00 c0 4e 8e e8 75 a3 9d fe 0f 0b e8 0e 60 59 fe <0f> 0b e8 07 60 59 fe 48 8b 5c 24 08 48 89 df be 08 00 00 00 e8 85
RSP: 0018:ffffc90007787560 EFLAGS: 00010283
RAX: ffffffff832c0142 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc900033c1000 RSI: 00000000000024d9 RDI: 00000000000024da
RBP: ffffc90007787708 R08: ffffffff832bdf85 R09: ffffed102bde463b
R10: ffffed102bde463b R11: 0000000000000000 R12: dffffc0000000000
R13: ffffffff953b7bf0 R14: ffff88815ef234a0 R15: ffff888145505000
FS:  00007fbf10dd4700(0000) GS:ffff88823bc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f827b3b5000 CR3: 0000000020368000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
