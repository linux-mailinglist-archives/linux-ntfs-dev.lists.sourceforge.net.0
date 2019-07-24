Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2B47298C
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 24 Jul 2019 10:09:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1hqCLO-0005Us-Io; Wed, 24 Jul 2019 08:09:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ebiggers@kernel.org>) id 1hq73U-0000ry-9q
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 24 Jul 2019 02:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hS5uD1zNz1M3XRgjxbqn7QhojILA7K7xoE0dPoyK9NQ=; b=N5+mrhwJIs/pdUysNA4DsmLxRu
 nx4wTahUQimQl7dGpUfivsAPRngCD42D8/ELMReileNw6YWiPDFNmz4/CExucHokVH0YAWx43t0qm
 ZVnNk4uG7j2aZUqeXCMBJ8zsNOkTEq/hvv/7NDplTpolUCJ1gMqpprWwrjFUb2C/KwVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hS5uD1zNz1M3XRgjxbqn7QhojILA7K7xoE0dPoyK9NQ=; b=c
 tDXul1fiXv8U7jiScM/zBZ5BH9tNsAZrcyPDZvLnc3Vn8c0fs6sqXNAIrcSn8iQNki/ViZvUU957J
 AHQuoMpQ1TunRRWBvq21C0kS9KHk2N8xdDLYdfF1MF1mHsy0+XVDcBDQ6XQ1Ql7MDk1Cvcng8Zkr9
 GIvaBYE1Q2n5Ztbw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hq73R-00DVc9-6V
 for linux-ntfs-dev@lists.sourceforge.net; Wed, 24 Jul 2019 02:31:00 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAB5820665;
 Wed, 24 Jul 2019 02:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563935450;
 bh=AvFDvRbEqQ6kVr1F3yE0oyIcq6MoknP0WTni6CBefdw=;
 h=Date:From:To:Cc:Subject:From;
 b=jpzT5y8fC7JrQROjChZq1Tn6Be54ygFdq+d1SM5qPgRQxvD7mLnIjV8VEeGj9p8E3
 VrgceaAsS9qS/4mZiTUdtgJkk4lWEppskeSOad1vJbhFsGgiHiBydu/iQP2Zr45TjH
 r1spgYbvzYMrrU8mMcs9uVzG+6WyxreLMzLM4nN4=
Date: Tue, 23 Jul 2019 19:30:48 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: linux-ntfs-dev@lists.sourceforge.net, Anton Altaparmakov <anton@tuxera.com>
Message-ID: <20190724023048.GT643@sol.localdomain>
Mail-Followup-To: linux-ntfs-dev@lists.sourceforge.net,
 Anton Altaparmakov <anton@tuxera.com>, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hq73R-00DVc9-6V
X-Mailman-Approved-At: Wed, 24 Jul 2019 08:09:48 +0000
Subject: [Linux-NTFS-Dev] Reminder: 5 open syzbot bugs in "fs/ntfs" subsystem
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
Cc: syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

[This email was generated by a script.  Let me know if you have any suggestions
to make it better, or if you want it re-generated with the latest status.]

Of the currently open syzbot reports against the upstream kernel, I've manually
marked 5 of them as possibly being bugs in the "fs/ntfs" subsystem.  I've listed
these reports below, sorted by an algorithm that tries to list first the reports
most likely to be still valid, important, and actionable.

Of these 5 bugs, 2 were seen in mainline in the last week.

If you believe a bug is no longer valid, please close the syzbot report by
sending a '#syz fix', '#syz dup', or '#syz invalid' command in reply to the
original thread, as explained at https://goo.gl/tpsmEJ#status

If you believe I misattributed a bug to the "fs/ntfs" subsystem, please let me
know, and if possible forward the report to the correct people or mailing list.

Here are the bugs:

--------------------------------------------------------------------------------
Title:              WARNING: bad unlock balance in rcu_core
Last occurred:      0 days ago
Reported:           100 days ago
Branches:           Mainline and others
Dashboard link:     https://syzkaller.appspot.com/bug?id=0d5bdaf028e4283ad7404609d17e5077f48ff26d
Original thread:    https://lkml.kernel.org/lkml/000000000000c0bffa0586795098@google.com/T/#u

Unfortunately, this bug does not have a reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+36baa6c2180e959e19b1@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000c0bffa0586795098@google.com

--------------------------------------------------------------------------------
Title:              WARNING: bad unlock balance in rcu_lock_release
Last occurred:      0 days ago
Reported:           30 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=a939746456c0350d6a368a9d30a4dcfcafa800be
Original thread:    https://lkml.kernel.org/lkml/000000000000fdd3f3058bfcf369@google.com/T/#u

Unfortunately, this bug does not have a reproducer.

No one has replied to the original thread for this bug yet.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+f9545ab3e9f85cd43a3a@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000fdd3f3058bfcf369@google.com

--------------------------------------------------------------------------------
Title:              KASAN: use-after-free Read in ntfs_read_locked_inode
Last occurred:      474 days ago
Reported:           474 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=5c5466347d4969ec80f5000c5e049056f48e3e2e
Original thread:    https://lkml.kernel.org/lkml/001a11441b6c6cb96c0569120042@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+19b469021157c136116a@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/001a11441b6c6cb96c0569120042@google.com

--------------------------------------------------------------------------------
Title:              KASAN: slab-out-of-bounds Read in ntfs_attr_find
Last occurred:      477 days ago
Reported:           477 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=731ba1daa85050266cef2836e917da1cc785f50a
Original thread:    https://lkml.kernel.org/lkml/001a11447acae6b4560568e08829@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+aed06913f36eff9b544e@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/001a11447acae6b4560568e08829@google.com

--------------------------------------------------------------------------------
Title:              kernel BUG at fs/ntfs/aops.c:LINE!
Last occurred:      460 days ago
Reported:           460 days ago
Branches:           Mainline
Dashboard link:     https://syzkaller.appspot.com/bug?id=86d590f642a6d325d2f9dc9571e6702bed1a77ee
Original thread:    https://lkml.kernel.org/lkml/000000000000c4b45a056a36872f@google.com/T/#u

This bug has a C reproducer.

No one replied to the original thread for this bug.

If you fix this bug, please add the following tag to the commit:
    Reported-by: syzbot+6a5a7672f663cce8b156@syzkaller.appspotmail.com

If you send any email or patch for this bug, please consider replying to the
original thread.  For the git send-email command to use, or tips on how to reply
if the thread isn't in your mailbox, see the "Reply instructions" at
https://lkml.kernel.org/r/000000000000c4b45a056a36872f@google.com



_______________________________________________
Linux-NTFS-Dev mailing list
Linux-NTFS-Dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
