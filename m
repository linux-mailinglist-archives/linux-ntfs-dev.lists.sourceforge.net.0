Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C85F7812E3
	for <lists+linux-ntfs-dev@lfdr.de>; Fri, 18 Aug 2023 20:27:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qX4Bt-0000G2-UI;
	Fri, 18 Aug 2023 18:27:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ebiederm@xmission.com>) id 1qX3Dq-00009C-9p
 for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YwrCgojRND22+9e2dostIKm6hXdq5OuvpaI3PuSIVrM=; b=NnY9KyGYzbvWYuVROgQPEf+R9G
 eAmbROyLmCva7jaIH0xRYFKxIK5mbdrWHoRcOMZCSjbvd8+Xkl9B6zkescgy7Q16SDt1ct3W4Mp8X
 7jIowqsnz3JK1OVRMKwBWxh8OsvV7yK5ZJKd5hQ/k++Loe5Sf9ASkqywECPVKMXkDkyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YwrCgojRND22+9e2dostIKm6hXdq5OuvpaI3PuSIVrM=; b=D9teA/wHGtXcLewTNNCikNNa7S
 1IHHz10P+y3X8IDuP9E+x1/a60LsfUqR5BDXis8RpNXm0GLF4u7dNuO6bu+4b3R3RMnurUyxUH3/T
 DJQnf+CVnp/3oe0+1QJ4eswQo1Te0VZKOOSdLdWbbU64s9PmUppHrM2kZYltTqkkiF5M=;
Received: from out01.mta.xmission.com ([166.70.13.231])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qX3Do-008sCz-Cz for linux-ntfs-dev@lists.sourceforge.net;
 Fri, 18 Aug 2023 17:25:18 +0000
Received: from in02.mta.xmission.com ([166.70.13.52]:60576)
 by out01.mta.xmission.com with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <ebiederm@xmission.com>)
 id 1qX2Js-004b4d-8V; Fri, 18 Aug 2023 10:27:28 -0600
Received: from ip68-227-168-167.om.om.cox.net ([68.227.168.167]:33758
 helo=email.froward.int.ebiederm.org.xmission.com)
 by in02.mta.xmission.com with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <ebiederm@xmission.com>)
 id 1qX2Jp-00FQCU-OB; Fri, 18 Aug 2023 10:27:27 -0600
From: "Eric W. Biederman" <ebiederm@xmission.com>
To: syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
References: <000000000000c74d44060334d476@google.com>
Date: Fri, 18 Aug 2023 11:26:51 -0500
In-Reply-To: <000000000000c74d44060334d476@google.com> (syzbot's message of
 "Fri, 18 Aug 2023 09:15:03 -0700")
Message-ID: <87o7j471v8.fsf@email.froward.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1qX2Jp-00FQCU-OB; ; ;
 mid=<87o7j471v8.fsf@email.froward.int.ebiederm.org>; ; ;
 hst=in02.mta.xmission.com; ; ; ip=68.227.168.167; ; ;
 frm=ebiederm@xmission.com; ; ; spf=pass
X-XM-AID: U2FsdGVkX1/GWsABlNppAGMi8sMFC638Yyr5Wthjk7Q=
X-SA-Exim-Connect-IP: 68.227.168.167
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa06.xmission.com
X-Spam-Level: *******
X-Spam-Status: No, score=7.4 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,FVGT_m_MULTI_ODD,GB_FAKE_RF_SHORT,LotsOfNums_01,
 SORTED_RECIPS,T_TM2_M_HEADER_IN_MSG,XMReplyNow shortcircuit=no
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4409]
 *  2.5 SORTED_RECIPS Recipient list is sorted by address
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 *  1.2 LotsOfNums_01 BODY: Lots of long strings of numbers
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa06 1397; Body=1 Fuz1=1 Fuz2=1]
 *  1.5 XMReplyNow Urgent/immediate reply
 *  0.4 FVGT_m_MULTI_ODD Contains multiple odd letter combinations
 *  2.0 GB_FAKE_RF_SHORT Fake reply or forward with url shortener
X-Spam-DCC: XMission; sa06 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *******;syzbot
 <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 1923 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 11 (0.6%), b_tie_ro: 10 (0.5%), parse: 0.95
 (0.0%), extract_message_metadata: 29 (1.5%), get_uri_detail_list: 4.7
 (0.2%), tests_pri_-2000: 26 (1.4%), tests_pri_-1000: 2.4 (0.1%),
 tests_pri_-950: 1.26 (0.1%), tests_pri_-900: 1.06 (0.1%),
 tests_pri_-200: 0.88 (0.0%), tests_pri_-100: 21 (1.1%), tests_pri_-90:
 174 (9.0%), check_bayes: 166 (8.6%), b_tokenize: 13 (0.7%),
 b_tok_get_all: 77 (4.0%), b_comp_prob: 3.6 (0.2%), b_tok_touch_all: 68
 (3.6%), b_finish: 0.86 (0.0%), tests_pri_0: 387 (20.1%),
 check_dkim_signature: 0.59 (0.0%), check_dkim_adsp: 2.9 (0.1%),
 poll_dns_idle: 1246 (64.8%), tests_pri_10: 2.1 (0.1%), tests_pri_500:
 1262 (65.6%), rewrite_mail: 0.00 (0.0%)
X-SA-Exim-Version: 4.2.1 (built Sat, 08 Feb 2020 21:53:50 +0000)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot
 <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
 writes: > Hello, > > syzbot found the following issue on: Not an issue. Nothing
 to do with ntfs. 
 Content analysis details:   (3.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 2.0 GB_FAKE_RF_SHORT       Fake reply or forward with url shortener
X-Headers-End: 1qX3Do-008sCz-Cz
X-Mailman-Approved-At: Fri, 18 Aug 2023 18:27:18 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] WARNING in do_open_execat
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
Cc: brauner@kernel.org, keescook@chromium.org,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com> writes:

> Hello,
>
> syzbot found the following issue on:

Not an issue.
Nothing to do with ntfs.

The code is working as designed and intended.

syzbot generated a malformed exec and the kernel made it
well formed and warned about it.

Human beings who run syzbot please mark this as not an issue in your
system.  The directions don't have a way to say that the code is working
as expected and designed.

Eric

> HEAD commit:    16931859a650 Merge tag 'nfsd-6.5-4' of git://git.kernel.or..
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=13e2673da80000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=aa796b6080b04102
> dashboard link: https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
> compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17cdbc65a80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1262d8cfa80000
>
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/eecc010800b4/disk-16931859.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/f45ae06377a7/vmlinux-16931859.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/68891896edba/bzImage-16931859.xz
> mounted in repro: https://storage.googleapis.com/syzbot-assets/4b6ab78b223a/mount_0.gz
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com
>
> ntfs: volume version 3.1.
> process 'syz-executor300' launched './file1' with NULL argv: empty string added
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 5020 at fs/exec.c:933 do_open_execat+0x18f/0x3f0 fs/exec.c:933
> Modules linked in:
> CPU: 0 PID: 5020 Comm: syz-executor300 Not tainted 6.5.0-rc6-syzkaller-00038-g16931859a650 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/26/2023
> RIP: 0010:do_open_execat+0x18f/0x3f0 fs/exec.c:933
> Code: 8e 46 02 00 00 41 0f b7 1e bf 00 80 ff ff 66 81 e3 00 f0 89 de e8 b1 67 9b ff 66 81 fb 00 80 0f 84 8b 00 00 00 e8 51 6c 9b ff <0f> 0b 48 c7 c3 f3 ff ff ff e8 43 6c 9b ff 4c 89 e7 e8 4b c9 fe ff
> RSP: 0018:ffffc90003b0fd10 EFLAGS: 00010293
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> RDX: ffff888028401dc0 RSI: ffffffff81ea9c4f RDI: 0000000000000003
> RBP: 1ffff92000761fa2 R08: 0000000000000003 R09: 0000000000008000
> R10: 0000000000000000 R11: 0000000000000000 R12: ffff88802bf18780
> R13: ffff888075d70000 R14: ffff8880742776a0 R15: 0000000000000001
> FS:  000055555706b380(0000) GS:ffff8880b9800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007ffe0f1d3ff8 CR3: 0000000015f97000 CR4: 0000000000350ef0
> Call Trace:
>  <TASK>
>  bprm_execve fs/exec.c:1830 [inline]
>  bprm_execve+0x49d/0x1a50 fs/exec.c:1811
>  do_execveat_common.isra.0+0x5d3/0x740 fs/exec.c:1963
>  do_execve fs/exec.c:2037 [inline]
>  __do_sys_execve fs/exec.c:2113 [inline]
>  __se_sys_execve fs/exec.c:2108 [inline]
>  __x64_sys_execve+0x8c/0xb0 fs/exec.c:2108
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x38/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7fee7ec27b39
> Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffe6c369d28 EFLAGS: 00000246 ORIG_RAX: 000000000000003b
> RAX: ffffffffffffffda RBX: 0031656c69662f2e RCX: 00007fee7ec27b39
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000480
> RBP: 00007fee7ec7004b R08: 000000000001ee3b R09: 0000000000000000
> R10: 00007ffe6c369bf0 R11: 0000000000000246 R12: 00007fee7ec70055
> R13: 00007ffe6c369f08 R14: 0000000000000001 R15: 0000000000000001
>  </TASK>
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> If the bug is already fixed, let syzbot know by replying with:
> #syz fix: exact-commit-title
>
> If you want syzbot to run the reproducer, reply with:
> #syz test: git://repo/address.git branch-or-commit-hash
> If you attach or paste a git patch, syzbot will apply it before testing.
>
> If you want to overwrite bug's subsystems, reply with:
> #syz set subsystems: new-subsystem
> (See the list of subsystem names on the web dashboard)
>
> If the bug is a duplicate of another bug, reply with:
> #syz dup: exact-subject-of-another-report
>
> If you want to undo deduplication, reply with:
> #syz undup


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
