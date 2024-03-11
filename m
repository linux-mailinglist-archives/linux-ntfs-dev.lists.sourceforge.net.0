Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A53F58789AB
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 11 Mar 2024 21:46:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rjmXe-00019l-5S;
	Mon, 11 Mar 2024 20:46:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rjkhD-0007j2-Sj
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 18:48:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZB0gBvy/L4auocycyQAq42K+/ZipH3RzMsqZu8eZW+o=; b=fLclZReqDn57jQ8oedcI1zsMX3
 xoM+0r262id/UW8xZ5WEoG5ZZiGkuKwlf3tygn3RqIeC+0SwKmetUA9g8HIEzxYxlN7h4YKw8Hdvw
 JDA/Fqh2MWraKU0EVjo55atWPuoUv0zZbsCBnOBBexcu9DV6j3UaAdzQc7ShU/oRhbDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZB0gBvy/L4auocycyQAq42K+/ZipH3RzMsqZu8eZW+o=; b=YvZzdetuxUuxkw+mwq7uLwN+i5
 B9JGsdGHqLtmsyBERgX3FEAbs0NPldsxBKX8B/6qBZMWsXNLtlaYHlDEOLiQiqzFYP2IcI1n9zkvc
 SHXuWdK1IUKHp9GTM5leBZfYjCh3ntkum5OMVrdIN8J+p36bEUGqfllOa47vRQIFrCdU=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rjkh0-0008Li-Nr for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 18:48:24 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 6CF8B5CA53;
 Mon, 11 Mar 2024 18:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710182885; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZB0gBvy/L4auocycyQAq42K+/ZipH3RzMsqZu8eZW+o=;
 b=rjRJLpdADGapW+bLtHloCCk4PmeYcq0jiS7wTjt515EnHOKrohoW48hQ3RwEe0k39J7E/g
 hQIJaqjuEXk6+ODkWk+LiUchTXMWYLk2RY54NlLaMKmu6dtXc6tZyXCPlFA5Zc95hoZPy/
 gzFgoLH2WRIGGfn47Uw4khSrmn8IMtQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710182885;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZB0gBvy/L4auocycyQAq42K+/ZipH3RzMsqZu8eZW+o=;
 b=oUKhupSnzt45jAJgpSvY5GsowEJi0NYIT4eHexWP1E02MkUFJZN0jmBVZX4w1t1BStFFMS
 NnDcn69ix0l0qmBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710182884; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZB0gBvy/L4auocycyQAq42K+/ZipH3RzMsqZu8eZW+o=;
 b=ELHSdRsANKie5iUgl7dXE3yszldSlyrKlHtEqk4/6NHf5Dy7sCAe8r4CgXlwIksAQEZh+p
 CpPBUp0GaJ7V+7yDcJJ/KrP+zn+3czJag018U4VYdZSY0GD9tb8qizhXauQPE+gpG85zlO
 emZJ1ZilKI9fn1PlhV/KpVCbmUsJFJA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710182884;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZB0gBvy/L4auocycyQAq42K+/ZipH3RzMsqZu8eZW+o=;
 b=eNLSWRaWklb2CNS5F0nbYwuAha+vBN6q+kz6gUgwvUmHb3xNQTnjJnGvN30wN9XTrovp39
 3ddbFK1A++IvqSAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5D1D613695;
 Mon, 11 Mar 2024 18:48:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id ZiqvFuRR72VWQgAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 11 Mar 2024 18:48:04 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 08AA1A080A; Mon, 11 Mar 2024 19:48:00 +0100 (CET)
Date: Mon, 11 Mar 2024 19:48:00 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>
Message-ID: <20240311184800.d7nuzahhz36rlxpg@quack3>
References: <000000000000c74d44060334d476@google.com>
 <000000000000f67b790613665d7a@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000f67b790613665d7a@google.com>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spam-Level: *
X-Spam-Score: 1.68
X-Spamd-Result: default: False [1.68 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.02)[53.82%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0];
 TAGGED_RCPT(0.00)[6ec38f7a8db3b3fb1002];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 R_RATELIMIT(0.00)[to_ip_from(RLn6wwtsxnyhk5uph3gjrme911)];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-0.979]; RCPT_COUNT_TWELVE(0.00)[18];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.cz:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 FREEMAIL_CC(0.00)[paragon-software.com,tuxera.com,kernel.dk,kernel.org,xmission.com,suse.cz,chromium.org,vger.kernel.org,kvack.org,lists.sourceforge.net,gmail.com,lists.linux.dev,googlegroups.com,mit.edu,zeniv.linux.org.uk,infradead.org];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 11-03-24 11:04:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rjkh0-0008Li-Nr
X-Mailman-Approved-At: Mon, 11 Mar 2024 20:46:37 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] WARNING in do_open_execat
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
Cc: axboe@kernel.dk, brauner@kernel.org, mjguzik@gmail.com, jack@suse.cz,
 keescook@chromium.org, linux-ntfs-dev@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, almaz.alexandrovich@paragon-software.com,
 linux-mm@kvack.org, ebiederm@xmission.com, linux-fsdevel@vger.kernel.org,
 tytso@mit.edu, ntfs3@lists.linux.dev, anton@tuxera.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon 11-03-24 11:04:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17e3f58e180000
> start commit:   eb3479bc23fa Merge tag 'kbuild-fixes-v6.7' of git://git.ke..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0
> dashboard link: https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15073fd4e80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17b20b8f680000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
 
#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
