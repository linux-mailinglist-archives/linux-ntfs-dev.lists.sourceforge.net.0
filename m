Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1F187959C
	for <lists+linux-ntfs-dev@lfdr.de>; Tue, 12 Mar 2024 15:05:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rk2kh-0002mp-FA;
	Tue, 12 Mar 2024 14:05:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rk0uU-0001bP-Rz
 for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 12 Mar 2024 12:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WJfjWeNXVPT/qepjRfaCmAM72afs7cwXQz/2lur6DYY=; b=T8V0Magj5GsoZaYUfhRTD0y30a
 G2qXLwnMWjhGX3/IVJ3JbIZ79vuzMk+6ptplRK93/J+FU8w3Ht0e0mQkEqXCv/eq6i2bbz0F5pj1j
 InJqJGgDXhOttW+AQGJLo6cjvDVR5mz9iDkMaqzgyiM3abpkrdLUtbWuWI7q+V0bRAsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WJfjWeNXVPT/qepjRfaCmAM72afs7cwXQz/2lur6DYY=; b=mlBFHNF+Smh1UKLEttisYG/Grk
 SKVXxzjHd7sADU+QsTjTc9TXyzR7zCHzYbaycoBMRl9EsLIRykVXPJM1Dvxd5n2GHGLJCDYATX+2A
 omOL7YBfLq16GfWhhDv0J/jcFFTPE2mjoL5kBCPRio+u2KGXyazJIP5qsaTHL8/AYRSs=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rk0uJ-0002HX-Sl for linux-ntfs-dev@lists.sourceforge.net;
 Tue, 12 Mar 2024 12:07:11 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 602D73764C;
 Tue, 12 Mar 2024 12:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710245219; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WJfjWeNXVPT/qepjRfaCmAM72afs7cwXQz/2lur6DYY=;
 b=BlDW88C6qDW8qPI/qYyjqlBqqSLuNnkovQpSqeHwBysb3v9cWTufR5lsAqU1AevnBVz65A
 Kek+OEtJyldQ+vbMju6DtoAv4uNM1YlqIIzPkrywRkkF1ULVUPCmnl0aWCIBb0VXO2ksMw
 tkrM9B2htN768A16b6mz5jsieoLHrlE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710245219;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WJfjWeNXVPT/qepjRfaCmAM72afs7cwXQz/2lur6DYY=;
 b=a5Ox/BbzrR2BrYKPI19Ym7yP6y8MmBpiRq2brGEBZZqZprkD4SWnzBYLUix1ZBNMC2Thmw
 B94217bIe5ZIEUCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710245219; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WJfjWeNXVPT/qepjRfaCmAM72afs7cwXQz/2lur6DYY=;
 b=BlDW88C6qDW8qPI/qYyjqlBqqSLuNnkovQpSqeHwBysb3v9cWTufR5lsAqU1AevnBVz65A
 Kek+OEtJyldQ+vbMju6DtoAv4uNM1YlqIIzPkrywRkkF1ULVUPCmnl0aWCIBb0VXO2ksMw
 tkrM9B2htN768A16b6mz5jsieoLHrlE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710245219;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WJfjWeNXVPT/qepjRfaCmAM72afs7cwXQz/2lur6DYY=;
 b=a5Ox/BbzrR2BrYKPI19Ym7yP6y8MmBpiRq2brGEBZZqZprkD4SWnzBYLUix1ZBNMC2Thmw
 B94217bIe5ZIEUCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5357B1379A;
 Tue, 12 Mar 2024 12:06:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id dJ5UFGNF8GVzbQAAD6G6ig
 (envelope-from <jack@suse.cz>); Tue, 12 Mar 2024 12:06:59 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 05BFDA07D9; Tue, 12 Mar 2024 13:06:58 +0100 (CET)
Date: Tue, 12 Mar 2024 13:06:58 +0100
From: Jan Kara <jack@suse.cz>
To: Mateusz Guzik <mjguzik@gmail.com>
Message-ID: <20240312120658.os72hvnk5jedwbaw@quack3>
References: <000000000000c74d44060334d476@google.com>
 <000000000000f67b790613665d7a@google.com>
 <20240311184800.d7nuzahhz36rlxpg@quack3>
 <CAGudoHGAzNkbgUsJwvTnmO2X5crtLfO47aaVmEMwZ=G2wWTQqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGudoHGAzNkbgUsJwvTnmO2X5crtLfO47aaVmEMwZ=G2wWTQqA@mail.gmail.com>
X-Spamd-Bar: /
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=BlDW88C6;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b="a5Ox/Bbz"
X-Spamd-Result: default: False [-0.31 / 50.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 TO_DN_SOME(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 FREEMAIL_TO(0.00)[gmail.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; BAYES_HAM(-3.00)[100.00%];
 SUBJECT_HAS_QUESTION(0.00)[]; ARC_NA(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 URIBL_BLOCKED(0.00)[suse.com:email,suse.cz:email,suse.cz:dkim,syzkaller.appspot.com:url];
 FROM_HAS_DN(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0];
 TAGGED_RCPT(0.00)[6ec38f7a8db3b3fb1002];
 MIME_GOOD(-0.10)[text/plain]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[18];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]
X-Spam-Level: 
X-Spam-Score: -0.31
X-Rspamd-Queue-Id: 602D73764C
X-Spam-Flag: NO
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 11-03-24 20:01:14, Mateusz Guzik wrote: > On 3/11/24, 
 Jan Kara <jack@suse.cz> wrote: > > On Mon 11-03-24 11:04:04, syzbot wrote:
 > >> syzbot suspects this issue was fixed by commit: > >> > >> c [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rk0uJ-0002HX-Sl
X-Mailman-Approved-At: Tue, 12 Mar 2024 14:05:10 +0000
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
Cc: axboe@kernel.dk, brauner@kernel.org,
 syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>,
 Jan Kara <jack@suse.cz>, keescook@chromium.org,
 linux-ntfs-dev@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, willy@infradead.org,
 almaz.alexandrovich@paragon-software.com, linux-mm@kvack.org,
 ebiederm@xmission.com, linux-fsdevel@vger.kernel.org, tytso@mit.edu,
 ntfs3@lists.linux.dev, anton@tuxera.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon 11-03-24 20:01:14, Mateusz Guzik wrote:
> On 3/11/24, Jan Kara <jack@suse.cz> wrote:
> > On Mon 11-03-24 11:04:04, syzbot wrote:
> >> syzbot suspects this issue was fixed by commit:
> >>
> >> commit 6f861765464f43a71462d52026fbddfc858239a5
> >> Author: Jan Kara <jack@suse.cz>
> >> Date:   Wed Nov 1 17:43:10 2023 +0000
> >>
> >>     fs: Block writes to mounted block devices
> >>
> >> bisection log:
> >> https://syzkaller.appspot.com/x/bisect.txt?x=17e3f58e180000
> >> start commit:   eb3479bc23fa Merge tag 'kbuild-fixes-v6.7' of
> >> git://git.ke..
> >> git tree:       upstream
> >> kernel config:
> >> https://syzkaller.appspot.com/x/.config?x=bdf178b2f20f99b0
> >> dashboard link:
> >> https://syzkaller.appspot.com/bug?extid=6ec38f7a8db3b3fb1002
> >> syz repro:
> >> https://syzkaller.appspot.com/x/repro.syz?x=15073fd4e80000
> >> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17b20b8f680000
> >>
> >> If the result looks correct, please mark the issue as fixed by replying
> >> with:
> >
> > #syz fix: fs: Block writes to mounted block devices
> >
> 
> I don't think that's correct.
> 
> The bug is ntfs instantiating an inode with bogus type (based on an
> intentionally corrupted filesystem), violating the api contract with
> vfs, which in turn results in the warning way later.
> 
> It may be someone sorted out ntfs doing this in the meantime, I have
> not checked.
> 
> With this in mind I don't believe your patch fixed it, at best it
> happened to neuter the reproducer.

OK, I didn't dig deep into the bug. I've just seen there are no working
reproducers and given this is ntfs3 which doesn't really have great
maintenance effort put into it, I've opted for closing the bug. If there's
a way to tickle the bug without writing to mounted block device, syzbot
should eventually find it and create a new issue... But if you want to look
into this feel free to :) Thanks for sharing the info.

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
