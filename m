Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0D85A78D1
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 31 Aug 2022 10:19:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1oTIwp-0001Eg-CK;
	Wed, 31 Aug 2022 08:19:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yin31149@gmail.com>) id 1oTDio-0004P4-3M
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fiOKZnNdxmLYNBXMmqi3GFFdRwsFMJMRCNCo8og41hE=; b=M+greZba3HqSO+EzKCEpMBH/lO
 5Bdf2Q0ITN2JJPV2rwrIFUlY1jcyJfJTzUq083xQAGy3/EV3CXpC4qIrM9E6El61kAlzhr+gecs5C
 3PuqKWaS9uwFp3KWErcpm7GubFFbioYCcNHl1dZWZp/WR+HISk72kdDRlFFug7xUWUfM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fiOKZnNdxmLYNBXMmqi3GFFdRwsFMJMRCNCo8og41hE=; b=aLBM8W2qulpp84VoWlJq6waSjK
 kibJH1bnmHVdzhzB7z/vH+nCZ+8tZbVIQ1UAkLDJvsNj+l0HMW446VpdSCahj3jYv/OBDP22wbCCB
 WW9uvA4Sx0YMZuAnkxcwIocrj0cD1A2w5NLDp+1rn9U0gkcieqDPL9t28Gi85qvWW774=;
Received: from mail-pg1-f170.google.com ([209.85.215.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oTDil-008H7q-FF for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 31 Aug 2022 02:44:53 +0000
Received: by mail-pg1-f170.google.com with SMTP id 202so12343677pgc.8
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Tue, 30 Aug 2022 19:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc;
 bh=fiOKZnNdxmLYNBXMmqi3GFFdRwsFMJMRCNCo8og41hE=;
 b=E5sLVuRg4Ke/M/hekHh6NqNyJoXPQnXvAE9dm9Xl+Tp72T4sV2Fq0HVFKUzlJRRmwe
 6nxBecHlXvyNVbcGal2R33DWmh7Z2usuupIFftXcPjvQtqIvWRH/0ZTqWF7NryJOaBvs
 zMmpyWa2GCI7qvVqNtYwueh4zIz6HzleTiSD0Q30O/aV7WmNyQ+JJnpUlc9IybGycBC3
 EleuV082Hr32YeAju4zzyFgcsGrGlvl2zFr1csLdOc+l0euoxmIoNH+C0FFBGkB3CNOX
 XPDzWse6gM0S9L6dt+Z6UAq4Pe/fEP/Zynan0zAps7SfbnFaoTqsVww7tbvw2xl2njzD
 HY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
 bh=fiOKZnNdxmLYNBXMmqi3GFFdRwsFMJMRCNCo8og41hE=;
 b=LcQhqqJ9KilvQwm1AkVGKaqhQlINOwP1dlHC4QkLYA2vHumZc3PM5CN/a4wwQFSlRC
 ckqBFWuJv/3hPu4M9i6r5UgZjwamUNb+HoWB8J3mbJpKZbAEbCwY2Vwzc1YEokVbPJul
 a/8E+R+oyvOkPOwBcOvQ8F/2MmLg7VyNk+jU9RbFhHcGtvEjB6Ve4vn096yyrFROlCN2
 RqNYonwEs+FzdmRPLUqpluzyW2nSlb5S1N/ej4w2QE3XXxLlyRVKlQ+8+t0j/MAkvn7U
 xpCIgOcq0qSMu2KjLuhFyGaThoQ0wXjAp3QINNXbA/0PKHMxnJBZB1okelJheD6LnsVS
 VzNg==
X-Gm-Message-State: ACgBeo2eocU5TcIRkWvuUtJzBRz6lR4R3HCCmYQz2nR7kTWw37iSkROR
 0fW38TpV+p5LzUc9PlO1IXu3akD1W2ZCOEcc
X-Google-Smtp-Source: AA6agR6uw20aC5DxdaKyiK6ooFu7KbSn4emVYsN+t7F4FHXZDhXDAmVmzBwHDJQ8haxCTDGes/aTGg==
X-Received: by 2002:a05:6a00:804:b0:52f:43f9:b634 with SMTP id
 m4-20020a056a00080400b0052f43f9b634mr24307126pfk.62.1661913885905; 
 Tue, 30 Aug 2022 19:44:45 -0700 (PDT)
Received: from localhost ([36.112.86.8]) by smtp.gmail.com with ESMTPSA id
 c73-20020a621c4c000000b00536779d43e7sm9997205pfc.201.2022.08.30.19.44.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Aug 2022 19:44:45 -0700 (PDT)
From: Hawkins Jiawei <yin31149@gmail.com>
To: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com,
 Anton Altaparmakov <anton@tuxera.com>
Date: Wed, 31 Aug 2022 10:43:34 +0800
Message-Id: <44b15fb54dbc5b5d8c8726e957d494d38538789e.1661875711.git.yin31149@gmail.com>
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
 Content preview: Syzkaller reported use-after-free read as follows:
 ==================================================================
 BUG: KASAN: use-after-free in ntfs_attr_find+0xc02/0xce0 fs/ntfs/attrib.c:597
 Read [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [yin31149[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yin31149[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTDil-008H7q-FF
X-Mailman-Approved-At: Wed, 31 Aug 2022 08:19:41 +0000
Subject: [Linux-NTFS-Dev] [PATCH 1/3] ntfs: fix use-after-free in
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
 18801353760@163.com, yin31149@gmail.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Syzkaller reported use-after-free read as follows:
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

Kernel will loads $MFT/$DATA's first mft record in
ntfs_read_inode_mount().

Yet the problem is that after loading, kernel doesn't check whether
attrs_offset field is a valid value.

To be more specific, if attrs_offset field is larger
than bytes_allocated field, then it may trigger the out-of-bounds read
bug(reported as use-after-free bug) in ntfs_attr_find(), when kernel
tries to access the corresponding mft record's attribute.

This patch solves it by adding the sanity check between attrs_offset
field and bytes_allocated field, after loading the first mft record.

Reported-and-tested-by: syzbot+5f8dcabe4a3b2c51c607@syzkaller.appspotmail.com
Signed-off-by: Hawkins Jiawei <yin31149@gmail.com>
---
 fs/ntfs/inode.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/ntfs/inode.c b/fs/ntfs/inode.c
index db0f1995aedd..08c659332e26 100644
--- a/fs/ntfs/inode.c
+++ b/fs/ntfs/inode.c
@@ -1829,6 +1829,13 @@ int ntfs_read_inode_mount(struct inode *vi)
 		goto err_out;
 	}
 
+	/* Sanity check offset to the first attribute */
+	if (le16_to_cpu(m->attrs_offset) >= le32_to_cpu(m->bytes_allocated)) {
+		ntfs_error(sb, "Incorrect mft offset to the first attribute %u in superblock.",
+			       le16_to_cpu(m->attrs_offset));
+		goto err_out;
+	}
+
 	/* Need this to sanity check attribute list references to $MFT. */
 	vi->i_generation = ni->seq_no = le16_to_cpu(m->sequence_number);
 
-- 
2.25.1



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
