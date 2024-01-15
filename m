Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B2A82DC01
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 15 Jan 2024 16:02:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rPOTZ-0004ah-Qt;
	Mon, 15 Jan 2024 15:02:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rPO6p-0003eC-Qy
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 14:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ijZfYFHSKVHJRzGZBOWDbHvnwNJnJ+2TfD5KBYD4yrQ=; b=UbLB/rGljdrE0F0m8kVqYFfG0R
 1YqakGsfoL9PI1ecJLFK/oNbLBjVMz7rldvppM/zPxcHhi7+F5E+6PfrlTcF8yD7bfpQxZkX455nG
 NKSUkhh4dCg/+2tpna7PZuanDIm2vIGpzFrB4/ieoBdoh82qWnOAsDRjCWv3f4xAbnqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ijZfYFHSKVHJRzGZBOWDbHvnwNJnJ+2TfD5KBYD4yrQ=; b=Dd4rU/OVU5smLSzfpQuwye9ojk
 Fx8957B/aA/vQLDYDQ00uTLbeewiOOz9qIUZWvK0WvE5UqoiDq3mPdZ8IUy4u2D17E4ktrLFwxN29
 XQLhs5nJ6shfZ5dXybzwgwRadcBawBkQFkShD9nH7Ey7To6bAzr3HEXkjKtJlTv4zfzM=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rPO6l-0005J2-Fc for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 15 Jan 2024 14:38:39 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 175CC1F8AE;
 Mon, 15 Jan 2024 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705329502; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ijZfYFHSKVHJRzGZBOWDbHvnwNJnJ+2TfD5KBYD4yrQ=;
 b=lGpl1b5f0xbFZrP9087vPnpLgqSpY5mszCFZIGVn8NQp6fMV4w0HtbRDFhxEqDOC3s1qHb
 0ZUpwS8iIpZ26Fl+R4oGrRrUT3EGnl0VG//EUAqsKNrG5bzS+62gSWJ6K1rikqk79hRBbi
 5t91eu3wSKmN3INICROOLjN871MOMYs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705329502;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ijZfYFHSKVHJRzGZBOWDbHvnwNJnJ+2TfD5KBYD4yrQ=;
 b=qxbu2KL4ljeVjjloj0Ol38e1Xd5jJJE/J1dJ9S3cFvPcIBonePlcYsghB7qUYuMDLFg6Pu
 qK1eEE7DF0nxQcCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705329502; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ijZfYFHSKVHJRzGZBOWDbHvnwNJnJ+2TfD5KBYD4yrQ=;
 b=lGpl1b5f0xbFZrP9087vPnpLgqSpY5mszCFZIGVn8NQp6fMV4w0HtbRDFhxEqDOC3s1qHb
 0ZUpwS8iIpZ26Fl+R4oGrRrUT3EGnl0VG//EUAqsKNrG5bzS+62gSWJ6K1rikqk79hRBbi
 5t91eu3wSKmN3INICROOLjN871MOMYs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705329502;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ijZfYFHSKVHJRzGZBOWDbHvnwNJnJ+2TfD5KBYD4yrQ=;
 b=qxbu2KL4ljeVjjloj0Ol38e1Xd5jJJE/J1dJ9S3cFvPcIBonePlcYsghB7qUYuMDLFg6Pu
 qK1eEE7DF0nxQcCg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 0B535132FA;
 Mon, 15 Jan 2024 14:38:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id A/y+Al5DpWXQdgAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 15 Jan 2024 14:38:22 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id AB4E8A07EA; Mon, 15 Jan 2024 15:38:17 +0100 (CET)
Date: Mon, 15 Jan 2024 15:38:17 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+84b5465f68c3eb82c161@syzkaller.appspotmail.com>
Message-ID: <20240115143817.bihmmw4uhuch4vp7@quack3>
References: <0000000000002562100600ed9473@google.com>
 <0000000000003bf67c060ef84f04@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000003bf67c060ef84f04@google.com>
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=lGpl1b5f;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=qxbu2KL4
X-Spamd-Result: default: False [2.14 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=ae56ea581f8fd3f3];
 TAGGED_RCPT(0.00)[84b5465f68c3eb82c161];
 MIME_GOOD(-0.10)[text/plain]; BAYES_HAM(-0.55)[80.97%];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 RCPT_COUNT_SEVEN(0.00)[10];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.cz:dkim,suse.cz:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Score: 2.14
X-Rspamd-Queue-Id: 175CC1F8AE
X-Spam-Level: **
X-Spam-Flag: NO
X-Spamd-Bar: ++
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 15-01-24 01:05:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPO6l-0005J2-Fc
X-Mailman-Approved-At: Mon, 15 Jan 2024 15:02:08 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] BUG: unable to handle kernel
 paging request in lookup_open
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
Cc: axboe@kernel.dk, brauner@kernel.org, jack@suse.cz,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon 15-01-24 01:05:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=11feec2be80000
> start commit:   831fe284d827 Merge tag 'spi-fix-v6.5-rc1' of git://git.ker..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=ae56ea581f8fd3f3
> dashboard link: https://syzkaller.appspot.com/bug?extid=84b5465f68c3eb82c161
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13a52a24a80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=156f908aa80000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Looks sensible:

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
