Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9589F85466E
	for <lists+linux-ntfs-dev@lfdr.de>; Wed, 14 Feb 2024 10:49:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1raBtV-0005GX-If;
	Wed, 14 Feb 2024 09:49:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1raBqK-0007uK-5V
 for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 14 Feb 2024 09:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=haymRKrSqrh0B+mONyIe7Y9TYIPAd2zJDwlRYXl1K3Q=; b=dxZ0bw+P2OMsevcROMGZZp7Tsl
 tBVM/RXFlcquIon3cVUAPoeeSosGlFRnTwAtkz5A5T8J1VSOM2JtDA/G4UMmwXgHL409m/VhQW7J4
 cIrLeBEksaz8cNCyg5Kqe74mE3jem8fpZ8fuV1iY40LjvrXCdtqKvrVdVFCxwRueSqsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=haymRKrSqrh0B+mONyIe7Y9TYIPAd2zJDwlRYXl1K3Q=; b=ArPnkednqAO1tcCSUeziD/ecZR
 X6QEMnIH4wu//2Ol2ryiD5k0VZ8JrRjFKjcBWiFzn79ndjA87s/b9Q3R4s/Uslo+5dSctGVwvkTPi
 THOKqkC83ZKx26fpVLbmzxwSPYk8rR5DNm9bwGh47tkrktg2A4fu0SMZ3SKHnkmkAmcc=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1raBqF-0002Y2-Ez for linux-ntfs-dev@lists.sourceforge.net;
 Wed, 14 Feb 2024 09:46:16 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 7F6DC1F7EC;
 Wed, 14 Feb 2024 09:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707903960; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=haymRKrSqrh0B+mONyIe7Y9TYIPAd2zJDwlRYXl1K3Q=;
 b=AH16laAdxZnW5KymEtVjIRAzfVvWMH53LGnj7DpN8IGYdUAaAPaznfG2hOXHIA3G3AO0Ne
 Vt6IO8OXbF4dhk45gwpM8UFE2TjehAsIFW+EeZsEMcYaB5ONQA6I759+6Dl1eFoRzhVZ+Q
 Md04SF5TjDF5T68Y72M4ElHQ5CmEcBQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707903960;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=haymRKrSqrh0B+mONyIe7Y9TYIPAd2zJDwlRYXl1K3Q=;
 b=ecTqLGVym8CdwcwvXg19yD7mUCjt91wC1lffTGDNdE6JiXwkNDqGUImHCElVvCtfS0vYRc
 gvzKs5pFIWZ8SfBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707903960; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=haymRKrSqrh0B+mONyIe7Y9TYIPAd2zJDwlRYXl1K3Q=;
 b=AH16laAdxZnW5KymEtVjIRAzfVvWMH53LGnj7DpN8IGYdUAaAPaznfG2hOXHIA3G3AO0Ne
 Vt6IO8OXbF4dhk45gwpM8UFE2TjehAsIFW+EeZsEMcYaB5ONQA6I759+6Dl1eFoRzhVZ+Q
 Md04SF5TjDF5T68Y72M4ElHQ5CmEcBQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707903960;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=haymRKrSqrh0B+mONyIe7Y9TYIPAd2zJDwlRYXl1K3Q=;
 b=ecTqLGVym8CdwcwvXg19yD7mUCjt91wC1lffTGDNdE6JiXwkNDqGUImHCElVvCtfS0vYRc
 gvzKs5pFIWZ8SfBQ==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 6F5FB13A1A;
 Wed, 14 Feb 2024 09:46:00 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id q+gmG9iLzGWASwAAn2gu4w
 (envelope-from <jack@suse.cz>); Wed, 14 Feb 2024 09:46:00 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 09067A0809; Wed, 14 Feb 2024 10:45:56 +0100 (CET)
Date: Wed, 14 Feb 2024 10:45:55 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+0994679b6f098bb3da6d@syzkaller.appspotmail.com>
Message-ID: <20240214094555.bcmnrnae3jndqjez@quack3>
References: <00000000000042f98c05f16c0792@google.com>
 <0000000000001c3739061147c07d@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000001c3739061147c07d@google.com>
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=AH16laAd;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=ecTqLGVy
X-Spamd-Result: default: False [2.67 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 BAYES_HAM(-0.02)[51.86%]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4];
 TAGGED_RCPT(0.00)[0994679b6f098bb3da6d];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 RCPT_COUNT_TWELVE(0.00)[12];
 DBL_BLOCKED_OPENRESOLVER(0.00)[syzkaller.appspot.com:url,suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Score: 2.67
X-Rspamd-Queue-Id: 7F6DC1F7EC
X-Spam-Level: **
X-Spam-Flag: NO
X-Spamd-Bar: ++
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 13-02-24 10:42:03, syzbot wrote: > syzbot suspects
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1raBqF-0002Y2-Ez
X-Mailman-Approved-At: Wed, 14 Feb 2024 09:49:30 +0000
Subject: Re: [Linux-ntfs-dev] [syzbot] [ntfs3?] BUG: unable to handle kernel
 paging request in step_into
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
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 anton@tuxera.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Tue 13-02-24 10:42:03, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=10656c42180000
> start commit:   bff687b3dad6 Merge tag 'block-6.2-2022-12-29' of git://git..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
> dashboard link: https://syzkaller.appspot.com/bug?extid=0994679b6f098bb3da6d
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11307974480000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15c567f2480000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
> 
> #syz fix: fs: Block writes to mounted block devices

There seem to be other reproducers which keep working and they don't seem
to be doing anything with the device. So I don't think this is really
fixing it.

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
