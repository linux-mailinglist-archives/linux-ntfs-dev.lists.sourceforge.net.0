Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E77BF6129F0
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 30 Oct 2022 11:09:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1op5FV-0008Pq-PN;
	Sun, 30 Oct 2022 10:09:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <harperchen1110@gmail.com>) id 1op4Ro-0006I2-4G
 for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 30 Oct 2022 09:17:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uOrrrL9iaGZGXaKvd8Lhm004vUztik9GWjG18KWc30Y=; b=FE3qlO/njqOZYMcnK7l107p3Kt
 1u0ncX/WyR5HMqRitKlkv4D39GYIvMlgISxHtLk2ZFWIR/XEKLZRc2GvFXiTI7fzrL4PsCefMoIyD
 4BUkTVn0Gvy7NHXeqa/7vCgs78Ke6IjMeheCWo25Qiy31jOQ6NWhs3vFdpF/juymoSV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uOrrrL9iaGZGXaKvd8Lhm004vUztik9GWjG18KWc30Y=; b=H
 ZUeUEcqQCTHxuSO6LOs8G63S4O+SQWSGgLssnWwGWIMTeFygls8ale+zjBBxGD+UjEN5Vro3fzL55
 2ibTSm9u3yVg4UEGtzqvcwxCNYr2J2SijxeLM9U5Ezkvum3raOQ2mTGeuBxU9sh46zgZKOaLc52tF
 u4Tpp6H2OjjLo3fM=;
Received: from mail-ed1-f52.google.com ([209.85.208.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1op4Rm-005Ril-FV for linux-ntfs-dev@lists.sourceforge.net;
 Sun, 30 Oct 2022 09:17:40 +0000
Received: by mail-ed1-f52.google.com with SMTP id x2so13654274edd.2
 for <linux-ntfs-dev@lists.sourceforge.net>;
 Sun, 30 Oct 2022 02:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=uOrrrL9iaGZGXaKvd8Lhm004vUztik9GWjG18KWc30Y=;
 b=b9eWadV7ln2eu8Zx3f85v8faBuxoB5BMznJMI9LhPh4gjnGbuhVfQs+tqp3TqffQoh
 3PPKIDRCj3Tav+jR2VTgB+UZ8zS4VbXgUJtN+TZ33ZBBrfXBE7Al4ZPrHz1JZ21UT9DR
 QGW4ZF2MHTAoGkKKggxWISqaniTkkH7Dq6sptYK2JkC0iSnx1SAJJzpVZeB6rePSBme2
 Mn8dR53wnB39DG0TU7rJqOSOcEI7LgjNulRY0r+ONLecT8AeCtyMPWO3iZz5h6aOn7gU
 kS3tJwk8dSF9IC1sc4odmdb+HWzpgvFbNLbVTrapyboEmQRgkdnksUJ3pcA0aEMXx9xs
 q+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uOrrrL9iaGZGXaKvd8Lhm004vUztik9GWjG18KWc30Y=;
 b=yw1wAncMAayUqOMhnSHRQrNgMTjX/M6jNvNhmkeDKuB502V25C8IwQpb8F1UtvwLiH
 t3SZVj98gITu8pEicvFd6x+pzHAaRHQv+OCgKugL8zlOufaEpjNLGgpeugpKtR59b8QT
 1akSJzukFqP4Tvd3xStgHhB1t8vvo/jm5D7vDmZNKJAdUYl4wMLtuCW0A0nOUkbM2cco
 PtSXBEeRgL3eQxCUwLHG6j1XDINvRc9wjCCjAYnDgzQTyFa+qHjp+91oT8hECQewtXjo
 OELTqCmDDOo+VUDepW7XCCXPPujZErGJJ6VERrf0byH//W0dsr6DotdXzFyJAfQZXEoe
 dO/w==
X-Gm-Message-State: ACrzQf16cOdSb7F0rqVeQ5RD1NMwpsMzIlXdT7F9cwly/ij30nUinnx2
 6lWcWNBrFGSsZ+9FlooBXOvX91ipua+OIYHHkCg=
X-Google-Smtp-Source: AMsMyM5wTQwn11rlZ4XbqYAg3irU/LovUE2D+MkXs59wnzXLua4k4dGb0uymA2UD+YnUIUQgAN3EuoA/FvMmJxPLjMg=
X-Received: by 2002:a05:6402:1690:b0:45f:d702:9919 with SMTP id
 a16-20020a056402169000b0045fd7029919mr7931154edv.127.1667121451874; Sun, 30
 Oct 2022 02:17:31 -0700 (PDT)
MIME-Version: 1.0
From: Wei Chen <harperchen1110@gmail.com>
Date: Sun, 30 Oct 2022 17:16:55 +0800
Message-ID: <CAO4mrfc5zN_QJ_92+SJTmLYhAyS2qLeYp8Ru7J5Wgf3sp-LSRQ@mail.gmail.com>
To: anton@tuxera.com
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Linux Developer, Recently when using our tool to fuzz
 kernel, the following crash was triggered: HEAD commit: 64570fbc14f8 Linux
 5.15-rc5 git tree: upstream compiler: gcc 8.0.1 console output:
 https://drive.google.com/file/d/1Vgv6uKdZ3XXWzqYUatGc_ca7xD5nHFbz/view?usp=share_link
 kernel config: htt [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [harperchen1110[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harperchen1110[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1op4Rm-005Ril-FV
X-Mailman-Approved-At: Sun, 30 Oct 2022 10:09:00 +0000
Subject: [Linux-NTFS-Dev] kernel BUG in ntfs_readpage
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
Cc: linux-ntfs-dev@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

Dear Linux Developer,

Recently when using our tool to fuzz kernel, the following crash was triggered:

HEAD commit: 64570fbc14f8 Linux 5.15-rc5
git tree: upstream
compiler: gcc 8.0.1
console output:
https://drive.google.com/file/d/1Vgv6uKdZ3XXWzqYUatGc_ca7xD5nHFbz/view?usp=share_link
kernel config: https://drive.google.com/file/d/1uDOeEYgJDcLiSOrx9W8v2bqZ6uOA_55t/view?usp=share_link

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: Wei Chen <harperchen1110@gmail.com>

loop0: detected capacity change from 0 to 67
------------[ cut here ]------------
kernel BUG at fs/ntfs/aops.c:186!
invalid opcode: 0000 [#1] PREEMPT SMP
CPU: 1 PID: 22515 Comm: syz-executor.0 Not tainted 5.15.0-rc5 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
rel-1.13.0-48-gd9c812dda519-prebuilt.qemu.org 04/01/2014
RIP: 0010:ntfs_readpage+0x1468/0x1860
Code: 0e 2c 7d ff 49 8b 9f 30 fd ff ff 31 ff 48 c1 eb 03 83 e3 01 48
89 de e8 16 2d 7d ff 48 85 db 0f 85 61 f5 ff ff e8 e8 2b 7d ff <0f> 0b
e8 e1 2b 7d ff f0 41 80 0c 24 10 e9 d9 f8 ff ff e8 d1 2b 7d
RSP: 0018:ffffc900022bfaf0 EFLAGS: 00010206
RAX: 0000000000009cb0 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc90001311000 RSI: ffff8881095cb700 RDI: 0000000000000002
RBP: 0000000000000020 R08: ffffffff81c04778 R09: 0000000000000000
R10: 0000000000000007 R11: 0000000000000000 R12: 0000000000000000
R13: ffffea00044bf8c0 R14: ffff88810fea4d80 R15: ffff88810fea50a0
FS:  00007fc3f28c3700(0000) GS:ffff88813dc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000525b40 CR3: 0000000110e31000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 do_read_cache_page+0x521/0x7a0
 map_mft_record+0xcb/0x600
 ntfs_read_locked_inode+0x69/0x1d20
 ntfs_read_inode_mount+0x517/0xfb0
 ntfs_fill_super+0x8e9/0x1710
 mount_bdev+0x23d/0x280
 legacy_get_tree+0x2e/0x90
 vfs_get_tree+0x29/0x100
 path_mount+0x58e/0x10a0
 do_mount+0x9b/0xb0
 __x64_sys_mount+0x13a/0x150
 do_syscall_64+0x34/0xb0
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x46abda
Code: 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f
84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 bc ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fc3f28c2a48 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fc3f28c2af0 RCX: 000000000046abda
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fc3f28c2ab0
RBP: 0000000020000000 R08: 00007fc3f28c2af0 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000020000100
R13: 00007fc3f28c2ab0 R14: 0000000000000001 R15: 000000002007dd00
Modules linked in:
---[ end trace 55d1771117b77cd9 ]---
RIP: 0010:ntfs_readpage+0x1468/0x1860
Code: 0e 2c 7d ff 49 8b 9f 30 fd ff ff 31 ff 48 c1 eb 03 83 e3 01 48
89 de e8 16 2d 7d ff 48 85 db 0f 85 61 f5 ff ff e8 e8 2b 7d ff <0f> 0b
e8 e1 2b 7d ff f0 41 80 0c 24 10 e9 d9 f8 ff ff e8 d1 2b 7d
RSP: 0018:ffffc900022bfaf0 EFLAGS: 00010206
RAX: 0000000000009cb0 RBX: 0000000000000000 RCX: 0000000000040000
RDX: ffffc90001311000 RSI: ffff8881095cb700 RDI: 0000000000000002
RBP: 0000000000000020 R08: ffffffff81c04778 R09: 0000000000000000
R10: 0000000000000007 R11: 0000000000000000 R12: 0000000000000000
R13: ffffea00044bf8c0 R14: ffff88810fea4d80 R15: ffff88810fea50a0
FS:  00007fc3f28c3700(0000) GS:ffff88813dc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f8c8c03e188 CR3: 0000000110e31000 CR4: 00000000003506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

Best,
Wei


_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
