Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 941E287859D
	for <lists+linux-ntfs-dev@lfdr.de>; Mon, 11 Mar 2024 17:41:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rjiiL-0006wO-Pb;
	Mon, 11 Mar 2024 16:41:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rjiXc-0006a6-Ha
 for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 16:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xlY58PQIEZEdZ0oT4/HKEiEUKCBshfHvCO+3mj9Nk2Q=; b=lqq2FZJ42/JrnNoxduQUluAvbQ
 x+Y8nkbIX7Yi7QX+BXVbXd0SVZ3ALH4I3bUUuRJD9ZWYkgeNl5xoy6vsKP6pyrvTS7uPfvGeCMQ+j
 +30hufk0UkBkQfFSTjOxWnl52ELGmYBVAim5qEP3ONj/Zk3vF/2JiF+KMfr9j8Gvjo84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xlY58PQIEZEdZ0oT4/HKEiEUKCBshfHvCO+3mj9Nk2Q=; b=XpyLTOalhBq368xSsJTE8uhy4X
 HBosw1xGow/5ehJBar+iRayhr3iNGVKleNzC7cQ68uAOi/SaQDeNOWlm3GFuYQTwV2FBmZeFhS8q2
 xpJmSfzDsNDYWJpZG7Aaq1tDafljykSn+GkTGKhL3+tWulObi6Uql8KSk2xFgvbh1LD0=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rjiXR-0000N1-CL for linux-ntfs-dev@lists.sourceforge.net;
 Mon, 11 Mar 2024 16:30:20 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id F363A5C935;
 Mon, 11 Mar 2024 16:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710174604; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xlY58PQIEZEdZ0oT4/HKEiEUKCBshfHvCO+3mj9Nk2Q=;
 b=EaSN6TUOiHhqpFiAXRpmZQ3LmmgBHPh6R0gFlvGGE5Ydh4I9/cPxviDw34MD4T7qLvqXDv
 grF3ISrVcjt7h2CewPTLQ9lvNSHGIFc3tVC2hcjOF4oCRlqO9+fpL4T2sgKaEztRHB8Mi+
 eRGcjHmH99rpY79tXU4nxgfsMkJGD5o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710174604;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xlY58PQIEZEdZ0oT4/HKEiEUKCBshfHvCO+3mj9Nk2Q=;
 b=OlQ0bu9/b27YVVIWO0yK5y8hKCXGIpxbeAeirruUZb3P9z88zL7ShirGK+QPGThV86pxC8
 v3CsSXLqkZXV1uDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710174604; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xlY58PQIEZEdZ0oT4/HKEiEUKCBshfHvCO+3mj9Nk2Q=;
 b=EaSN6TUOiHhqpFiAXRpmZQ3LmmgBHPh6R0gFlvGGE5Ydh4I9/cPxviDw34MD4T7qLvqXDv
 grF3ISrVcjt7h2CewPTLQ9lvNSHGIFc3tVC2hcjOF4oCRlqO9+fpL4T2sgKaEztRHB8Mi+
 eRGcjHmH99rpY79tXU4nxgfsMkJGD5o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710174604;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xlY58PQIEZEdZ0oT4/HKEiEUKCBshfHvCO+3mj9Nk2Q=;
 b=OlQ0bu9/b27YVVIWO0yK5y8hKCXGIpxbeAeirruUZb3P9z88zL7ShirGK+QPGThV86pxC8
 v3CsSXLqkZXV1uDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E8B2E136BA;
 Mon, 11 Mar 2024 16:30:03 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id PBvJOIsx72VNFwAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 11 Mar 2024 16:30:03 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id A7776A0807; Mon, 11 Mar 2024 17:29:59 +0100 (CET)
Date: Mon, 11 Mar 2024 17:29:59 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+cb1fdea540b46f0ce394@syzkaller.appspotmail.com>
Message-ID: <20240311162959.odjj34j2vvypax6n@quack3>
References: <0000000000002a6cba05eb5c7fbd@google.com>
 <0000000000007c3484061344da08@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000007c3484061344da08@google.com>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spam-Level: *
X-Spam-Score: 1.67
X-Spamd-Result: default: False [1.67 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.03)[56.45%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4];
 TAGGED_RCPT(0.00)[cb1fdea540b46f0ce394];
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
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat 09-03-24 18:05:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rjiXR-0000N1-CL
X-Mailman-Approved-At: Mon, 11 Mar 2024 16:41:24 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] possible deadlock in
 map_mft_record
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

On Sat 09-03-24 18:05:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b28b99180000
> start commit:   e4cf7c25bae5 Merge tag 'kbuild-fixes-v6.2' of git://git.ke..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
> dashboard link: https://syzkaller.appspot.com/bug?extid=cb1fdea540b46f0ce394
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=151db82a480000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10f0e670480000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
 
Looks good.

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
