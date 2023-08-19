Return-Path: <linux-ntfs-dev-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-ntfs-dev@lfdr.de
Delivered-To: lists+linux-ntfs-dev@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4B2781D04
	for <lists+linux-ntfs-dev@lfdr.de>; Sun, 20 Aug 2023 10:46:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux-ntfs-dev-bounces@lists.sourceforge.net>)
	id 1qXe5B-0001UO-3n;
	Sun, 20 Aug 2023 08:46:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tytso@mit.edu>) id 1qXRRg-0007ld-7M
 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 19 Aug 2023 19:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6N9EMQdf0dg3QG8w35gHzeeRG5O6PiKxY5DKUYynzzw=; b=jUU3D/EgtqLs91k3Xx9bAoqQ3p
 NjBl4LIwcctvoPtxcjFwqR/5te+zs5wq9nqF31BD2g4OwhZu5Hn3whTxslkS++x7vXwSUyTOAd+a5
 DuyxLEhhWSFC1t9tL8utE1EYl8wrsANfTf9yMHsLau67jOR7yxFrqS2mpD5iqoN/2tSU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6N9EMQdf0dg3QG8w35gHzeeRG5O6PiKxY5DKUYynzzw=; b=J8Fm0btTExfSYy9UEHwxwYO/RT
 6o9fXKSCVAQosZXrzpX0mtAzRM7pG2Ux9CsoQZg15fSvru4rGDh69acFjLAFvahKy8iUPa+plaIDu
 uJiTsRIksGsWQxj0DlGlQQoVDT7PNqSbEhhV7PAeVyYtmLb9LTilttWWF3Qz0DEAhdGY=;
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qXRRa-0004mG-76 for linux-ntfs-dev@lists.sourceforge.net;
 Sat, 19 Aug 2023 19:17:12 +0000
Received: from cwcc.thunk.org (pool-173-48-121-162.bstnma.fios.verizon.net
 [173.48.121.162]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 37JJGcCr017522
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 19 Aug 2023 15:16:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
 t=1692472605; bh=6N9EMQdf0dg3QG8w35gHzeeRG5O6PiKxY5DKUYynzzw=;
 h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
 b=Atxp7UFw7l/+ynDLo45X7aYFou+u6wFBCEsfhVVnm6OKRuP0uyYyQPPRclCZsptk6
 Uo2Ex0I4P4e85RQ56V6hxZ8xXHNMoQKrzby43drHZHyQED1WxgDAMPaprvKIDFTZxt
 qtxhJ1TI/0gz3qP655QzThWln9g9002vhBgBmgm9hbeAb5OuLLLMlLls+bR3jmu8xL
 8vWJziOlUgCrrHnCvwTqyjbFEVue5jbKrge+JN4nv9hekFBIvNRazZeNcHGXkE52QE
 L2nNHprUAHFeGB8QLrW4c96SnWN8yaAsosZ5KSMPfYQK+5etVT63CHfCajI0c1477I
 PcC6DSCHnArzA==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id BCAAD15C0292; Sat, 19 Aug 2023 15:16:38 -0400 (EDT)
Date: Sat, 19 Aug 2023 15:16:38 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Mateusz Guzik <mjguzik@gmail.com>
Message-ID: <20230819191638.GJ3464136@mit.edu>
References: <000000000000c74d44060334d476@google.com>
 <87o7j471v8.fsf@email.froward.int.ebiederm.org>
 <202308181030.0DA3FD14@keescook>
 <20230818191239.3cprv2wncyyy5yxj@f>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230818191239.3cprv2wncyyy5yxj@f>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 18, 2023 at 09:12:39PM +0200,
 Mateusz Guzik wrote:
 > > The ntfs image used here is intentionally corrupted and the inode at
 > hand has a mode of 777 (as in type not specified). > > Then th [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1qXRRa-0004mG-76
X-Mailman-Approved-At: Sun, 20 Aug 2023 08:46:48 +0000
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
Cc: brauner@kernel.org,
 syzbot <syzbot+6ec38f7a8db3b3fb1002@syzkaller.appspotmail.com>,
 Kees Cook <keescook@chromium.org>, linux-ntfs-dev@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, "Eric W. Biederman" <ebiederm@xmission.com>,
 linux-fsdevel@vger.kernel.org, anton@tuxera.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-ntfs-dev-bounces@lists.sourceforge.net

On Fri, Aug 18, 2023 at 09:12:39PM +0200, Mateusz Guzik wrote:
> 
> The ntfs image used here is intentionally corrupted and the inode at
> hand has a mode of 777 (as in type not specified).
> 
> Then the type check in may_open():
>         switch (inode->i_mode & S_IFMT) {
> 
> fails to match anything.
> ...
> 
> Do other filesystems have provisions to prevent inodes like this from
> getting here?

Well, what ext4 does is that we do a bunch of basic validity checks in
ext4_iget(), and if the inode is bad (for example the type is not
specified), the following gets executed:

	} else {
		ret = -EFSCORRUPTED;
		ext4_error_inode(inode, function, line, 0,
				 "iget: bogus i_mode (%o)", inode->i_mode);
		goto bad_inode;
       ...

bad_inode:
	brelse(iloc.bh);
	iget_failed(inode);
	return ERR_PTR(ret);
       
iget_failed() takes the inode under construction (returned by
iget_locked), and marks it as a bad/"dead" inode.  So subsequent
attempts to do anything with the inode, including opening it, will
fail at the VFS level, and you never get to the file system's open
function.

The ext4_error_inode() function is reponsible for logging the error,
and if userspace is using fsnotify and are subscribed FS_ERROR,
notifying user space that the file system is corrupted.  Depending on
the file system settings, we may also remount the file system
read-only, or force a panic to reboot the system (so that a failover
backup server can take over), or just log the message and continuing.

       	      	       	      	      	      - Ted


_______________________________________________
Linux-ntfs-dev mailing list
Linux-ntfs-dev@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-ntfs-dev
