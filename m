Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2DE87BC13
	for <lists+linux-ntfs-dev@lfdr.de>; Thu, 14 Mar 2024 12:42:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rkjTK-0002D2-I0;
	Thu, 14 Mar 2024 11:42:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rkh1O-0003PE-Ka
 for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 14 Mar 2024 09:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kjUToQBvuK37roPXQ8xxYeAqajyioZAA+CA1GnboRG8=; b=PcMe7jSFV/RwmXV0pRNM9CLWvC
 xvmDHC4vAD6e3D/gBv+HrrJGljhAzXfdZLvOmNbX/Tzy/6qcCYJ4XrGc23qSUgxqM90bqZQqhAkKU
 HRgx+OHxbPUq5EIUZppFrG08e5WojczqiTT1/bdNy2aM5lxDFajuqJ5+OCCAQrons3Qg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kjUToQBvuK37roPXQ8xxYeAqajyioZAA+CA1GnboRG8=; b=mwZxwJig1XUk2ujNObTQK/S8A2
 ktgUK4h3dB2nWLUAmGY6/I1XYJPpSa+5BZDCUQiGPmtqZOTLexMMHWryn3N2TEnPpPQmsjCHF5BjE
 X7cG+DmZWrQX8kwFZLRjql+3/74xg2KnTKfj8KXkVETg4PcWXyP1A+lxEfO64mqXgZBw=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rkh1D-0003Dx-Ih for linux-ntfs-dev@lists.sourceforge.net;
 Thu, 14 Mar 2024 09:05:06 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id EDDF51F820;
 Thu, 14 Mar 2024 09:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710407090; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kjUToQBvuK37roPXQ8xxYeAqajyioZAA+CA1GnboRG8=;
 b=O3V3KCeivhETaQOXbqUmqsu2uDrPvqh4PTsn/KMwlWE7j0FitFW7y+YC9VvIID9fS/Y+Mr
 hO2H1a1rQNkPwU0ZW+O0GurU5S9vTBlm1gwt4ELh1Lh86StAvG16wVZoweJE+ldplICQrY
 LqUywyszXI4Q3hV4Q5fbDFy6LcdpQD4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710407090;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kjUToQBvuK37roPXQ8xxYeAqajyioZAA+CA1GnboRG8=;
 b=Zo9nTbrci6+EtOtcrSbU3fqHQG2XWk2P/Zq99pUongjK04UtJWqhWdN9yoGYezPZ9Fc+31
 3Xt1wdOzCiQEZCDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710407089; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kjUToQBvuK37roPXQ8xxYeAqajyioZAA+CA1GnboRG8=;
 b=CcYRAtiaI2wcZPOb5EfFhNjPTme7h+F5B6f9/bsTXTND2FcPPjLLFNuJg/JfEB100WMP2a
 W6UQ2vyi8nZOgX1Q2rXYFy0Xb6xLqpM6LHtyElF6GPgqX5VZsLQzHIc1TVz8L8i9pbGCwL
 0Qh+U7Uj2q1jfrUAiRRNXL2wZTBBqJI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710407089;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kjUToQBvuK37roPXQ8xxYeAqajyioZAA+CA1GnboRG8=;
 b=UGfAoFwKWx6kJqIZ9WB+PBHWYkL2whETnx9fnx6yMYmPtR+ILOvcmVAKg7sQV0+oLdyPkm
 6TzRkc22z8NEPGBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E27C41386E;
 Thu, 14 Mar 2024 09:04:49 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id WtlDN7G98mV0MQAAD6G6ig
 (envelope-from <jack@suse.cz>); Thu, 14 Mar 2024 09:04:49 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id A545CA07D9; Thu, 14 Mar 2024 10:04:49 +0100 (CET)
Date: Thu, 14 Mar 2024 10:04:49 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+3625b78845a725e80f61@syzkaller.appspotmail.com>
Message-ID: <20240314090449.rsuwfxtszjbadypc@quack3>
References: <000000000000cc261105f10682eb@google.com>
 <000000000000fea5b1061252ab7d@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000fea5b1061252ab7d@google.com>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spam-Level: *
X-Spam-Score: 1.64
X-Spamd-Result: default: False [1.64 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.06)[61.59%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=38526bf24c8d961b];
 TAGGED_RCPT(0.00)[3625b78845a725e80f61];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; RCPT_COUNT_SEVEN(0.00)[11];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 26-02-24 17:09:02, syzbot wrote: > syzbot suspects
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rkh1D-0003Dx-Ih
X-Mailman-Approved-At: Thu, 14 Mar 2024 11:42:05 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] KASAN: use-after-free Read
 in ntfs_lookup_inode_by_name
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
 linux-kernel@vger.kernel.org, almaz.alexandrovich@paragon-software.com,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Mon 26-02-24 17:09:02, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16ae7a30180000
> start commit:   cc3c44c9fda2 Merge tag 'drm-fixes-2023-05-12' of git://ano..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=38526bf24c8d961b
> dashboard link: https://syzkaller.appspot.com/bug?extid=3625b78845a725e80f61
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16eae776280000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11d273ea280000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

No reproducer anymore.

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
