Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C691840221
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 29 Jan 2024 10:50:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rUOHm-0000kT-Oa;
	Mon, 29 Jan 2024 09:50:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rUOHk-0000kN-NA
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 29 Jan 2024 09:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QXgjna/jwVDjAWCN2RHebYLXvndhQa9XD3OSaauQ8OE=; b=iCvO9kqzeyxqMBDOpfZ5iKl2cx
 bHIf+6GR3Ixh1gxID/6WTPhKakn0gSlGfJehRmOQderHy8OHOAYW1STnFS45hHwzLWywXU5/Rxg5x
 /dVPwh7WIe7EdzI6vO3wbF9LwQg8oUT6ePAXc2LkzESn0GmYJCssgRv+aSfK9d2j7tMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QXgjna/jwVDjAWCN2RHebYLXvndhQa9XD3OSaauQ8OE=; b=mIM1wqU4SO/wOi2ZBXDycuIKLP
 CRGh5S6sQs/eUjA61Dab3Dmb7VJ7koDgc+ZvDHGYFcSzZvLr5KIypiVfQitZKTxKaUX96pUQmtA9B
 p87MRcJVIxk+ITv6XI+WnL+saC5nIoBDdv09GIbD8lIwRuv+UAcU3oTkH1JHhbsgttfU=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rUOHg-0003X5-0v for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 29 Jan 2024 09:50:36 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 4724621D0A;
 Mon, 29 Jan 2024 09:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1706521821; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QXgjna/jwVDjAWCN2RHebYLXvndhQa9XD3OSaauQ8OE=;
 b=j/VFXs98b3YMFfLwPl7nmsQ7fTKfc4M7vI/D5RlpSMLmBHHoxLsAdUZPAaWcF1+t8IL9tZ
 nRE4U+RBn9EkK4MYSZU5ta4MnsJxQK89Hp4ILppw3MmeID/Wf+LqvvB/npv3qY8i3dZZA2
 EyFJtxSlqUVdKXfyAZsdsOAZgdb2orc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1706521821;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QXgjna/jwVDjAWCN2RHebYLXvndhQa9XD3OSaauQ8OE=;
 b=bY/0bByWMHLtUT2v77fz1263z0d7hJ+eRDS4V3+Q//pBLpwOHjto12+O4jEFXWiJnkq/ph
 pS+N3XpanoKF+9AA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1706521819; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QXgjna/jwVDjAWCN2RHebYLXvndhQa9XD3OSaauQ8OE=;
 b=ExOiFmRNRWF+xBf6a8rw31jZTqaeKNMf7J7K1gTmxHt+cK2yIcy9J3VQ/eNiHM01ny25YL
 LjCMqS6mTdneCfDIlxMZ7+dzmBUtTCY2TG9AraGT4jMDCFjEIKLOUvNM//Gt9xxFOCrPLK
 SKzVJ28/sV6LNn6BxgWDwmRawR50ukc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1706521819;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QXgjna/jwVDjAWCN2RHebYLXvndhQa9XD3OSaauQ8OE=;
 b=1PViUZ3fHAEwY71oIjQ6JnkMdsg21PS8L04yKateieJmlP2yY6AzB9wz80ccRNEud6nDym
 OBDmKn+4xQJe6gCQ==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 3B2F0132FA;
 Mon, 29 Jan 2024 09:50:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id zl5vDtt0t2WtSAAAn2gu4w
 (envelope-from <jack@suse.cz>); Mon, 29 Jan 2024 09:50:19 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id F2171A0807; Mon, 29 Jan 2024 10:50:18 +0100 (CET)
Date: Mon, 29 Jan 2024 10:50:18 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+22e381af27f7921a2642@syzkaller.appspotmail.com>
Message-ID: <20240129095018.2epmpxstumyhzrc7@quack3>
References: <000000000000a213d505f1472cbe@google.com>
 <000000000000582e37060fefac1a@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000582e37060fefac1a@google.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spamd-Result: default: False [0.98 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-1.92)[94.57%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4];
 TAGGED_RCPT(0.00)[22e381af27f7921a2642];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_SEVEN(0.00)[9]; FUZZY_BLOCKED(0.00)[rspamd.com];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_NOT_FQDN(0.50)[]; RCVD_TLS_ALL(0.00)[];
 SUSPICIOUS_RECIPS(1.50)[]; SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: 0.98
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat 27-01-24 08:12:03, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUOHg-0003X5-0v
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs?] kernel BUG in ntfs_truncate
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
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Sat 27-01-24 08:12:03, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=179a855fe80000
> start commit:   bff687b3dad6 Merge tag 'block-6.2-2022-12-29' of git://git..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
> dashboard link: https://syzkaller.appspot.com/bug?extid=22e381af27f7921a2642
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=175a9dbc480000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1542c884480000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Makes sense:
 
#syz fix: fs: Block writes to mounted block devices

									Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
