Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BD88736B5
	for <lists+linux-ntfs-dev@lfdr.de>; Wed,  6 Mar 2024 13:39:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1rhqYR-0006az-FS;
	Wed, 06 Mar 2024 12:39:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rhqHk-0005eg-3g
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 06 Mar 2024 12:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wUdrt2veIdLubgIpffUH6xTNcOrVJbvGxnIjN06WxzU=; b=bZROgV0x+YHLB5EoLnSRQA+TlC
 G5CBF0ycQZNycSGPGsHoa55z1xOqZ6K3yTt77gTzZszELMqbHn7RiwzZ+NJAU/FFTU8n1O4fJzDuM
 W4znxeTmXO/nzZt75RD9mTZCA03qbV4RqjprcsunAe4GCJGluTmHiH5x9J7nYHrB48EU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wUdrt2veIdLubgIpffUH6xTNcOrVJbvGxnIjN06WxzU=; b=a9NWfZcvT8lTo/L4/Ls/qkAOe7
 6oTFdMrxTBxkPgRaGDrX5Fz+0+2d4rRjfqYdrfKHGyP2tgZhl3PM0WvesT/As8g8WlP+W83QElfqf
 5pOYq4MdT5GjYAGBsBM+uGGBkb56KRmTcRG21md88R/QmQWiuVTWzXJs1IGST9sW+IHM=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rhqHZ-0007As-8l for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 06 Mar 2024 12:22:11 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B95173F5D7;
 Wed,  6 Mar 2024 12:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1709727715; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wUdrt2veIdLubgIpffUH6xTNcOrVJbvGxnIjN06WxzU=;
 b=Z5+YjsTmzsb1ka+SE5O92dqDnc+F66QMOHQAuPrGOvMQdehmIabEu/YwkU7p3Rj4xZWNAS
 eqmsUhPanbbBLK4yuG7NFTtVVCLZB03SFlDYCncyU6qvv+qJXsiSGaXCOnDlp9Ko/dTUU2
 Q2dgikpgklNbEzQb/uKntUd0C9abgkY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1709727715;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wUdrt2veIdLubgIpffUH6xTNcOrVJbvGxnIjN06WxzU=;
 b=CKWaYYgO3W/0+VGFyG+OoCAMvSVEk8lwaVO/zi4eGa6+YA6MZPowMXJs3dVDlcGZAGwfqw
 lt2PS4gDzaQMHqBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1709727715; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wUdrt2veIdLubgIpffUH6xTNcOrVJbvGxnIjN06WxzU=;
 b=Z5+YjsTmzsb1ka+SE5O92dqDnc+F66QMOHQAuPrGOvMQdehmIabEu/YwkU7p3Rj4xZWNAS
 eqmsUhPanbbBLK4yuG7NFTtVVCLZB03SFlDYCncyU6qvv+qJXsiSGaXCOnDlp9Ko/dTUU2
 Q2dgikpgklNbEzQb/uKntUd0C9abgkY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1709727715;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wUdrt2veIdLubgIpffUH6xTNcOrVJbvGxnIjN06WxzU=;
 b=CKWaYYgO3W/0+VGFyG+OoCAMvSVEk8lwaVO/zi4eGa6+YA6MZPowMXJs3dVDlcGZAGwfqw
 lt2PS4gDzaQMHqBQ==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id ABD231377D;
 Wed,  6 Mar 2024 12:21:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id 243uKeNf6GXWTAAAn2gu4w
 (envelope-from <jack@suse.cz>); Wed, 06 Mar 2024 12:21:55 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 574E3A0803; Wed,  6 Mar 2024 13:21:55 +0100 (CET)
Date: Wed, 6 Mar 2024 13:21:55 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+4768a8f039aa677897d0@syzkaller.appspotmail.com>
Message-ID: <20240306122155.yr6lse3yyaduo2db@quack3>
References: <0000000000000424f205fcf9a132@google.com>
 <000000000000c5b2ae0612ef94a9@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000c5b2ae0612ef94a9@google.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spam-Level: *
X-Spam-Score: 1.58
X-Spamd-Result: default: False [1.58 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.12)[66.97%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=162cf2103e4a7453];
 TAGGED_RCPT(0.00)[4768a8f039aa677897d0];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 R_RATELIMIT(0.00)[to_ip_from(RLz5osb6fwsyu4f48yakq7oq33)];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; RCPT_COUNT_TWELVE(0.00)[19];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 FREEMAIL_CC(0.00)[paragon-software.com,tuxera.com,kernel.dk,kernel.org,gmail.com,linuxfoundation.org,suse.cz,vger.kernel.org,lists.linuxfoundation.org,lists.sourceforge.net,intel.com,lists.linux.dev,googlegroups.com];
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
 Content preview:  On Tue 05-03-24 12:21:02, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhqHZ-0007As-8l
X-Mailman-Approved-At: Wed, 06 Mar 2024 12:39:26 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] UBSAN: shift-out-of-bounds
 in ntfs_iget
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
Cc: axboe@kernel.dk, brauner@kernel.org, ghandatmanas@gmail.com, lkp@intel.com,
 linux-ntfs-dev@lists.sourceforge.net, gregkh@linuxfoundation.org,
 llvm@lists.linux.dev, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, almaz.alexandrovich@paragon-software.com,
 syzkaller@googlegroups.com, oe-kbuild-all@lists.linux.dev,
 linux-fsdevel@vger.kernel.org, jack@suse.cz, ntfs3@lists.linux.dev,
 linux-kernel-mentees@lists.linuxfoundation.org, anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue 05-03-24 12:21:02, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12be09f2180000
> start commit:   afead42fdfca Merge tag 'perf-tools-fixes-for-v6.4-2-2023-0..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=162cf2103e4a7453
> dashboard link: https://syzkaller.appspot.com/bug?extid=4768a8f039aa677897d0
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12da9bbd280000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=174e8115280000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
 
The reproducer is just mounting the fs so I'm not sure what's happening
there. But since there's no working repro and this is ntfs3:

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
